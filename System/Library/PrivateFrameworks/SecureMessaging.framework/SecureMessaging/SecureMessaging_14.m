void *MLS.InMemoryPersister.GroupMessageStoreID.init(clientID:groupID:messageID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = result[1];
  *a6 = *result;
  a6[1] = v6;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.InMemoryPersister.GroupMessageStoreID()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MLS.InMemoryPersister.IncomingEventEntry.event.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return outlined init with copy of MLS.OutgoingEventState?(v10, v9, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
}

__n128 MLS.InMemoryPersister.IncomingEventEntry.init(event:id:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v3;
  *(a3 + 96) = *(a1 + 96);
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 104) = a2;
  return result;
}

uint64_t MLS.InMemoryPersister.OutgoingEventEntry.event.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 176);
  *(a1 + 176) = *(v1 + 176);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return outlined init with copy of MLS.OutgoingEventState?(v18, v17, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgMR);
}

uint64_t MLS.InMemoryPersister.OutgoingEventEntry.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v9 = *(v1 + 216);
  v10 = v3;
  v11 = *(v1 + 248);
  v4 = v11;
  v8[0] = *(v1 + 184);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return outlined init with copy of MLS.OutgoingEventState?(v8, v7, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
}

__n128 MLS.InMemoryPersister.OutgoingEventEntry.version.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[17].n128_u64[0];
  v3 = v1[17].n128_u8[8];
  result = v1[16];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 MLS.InMemoryPersister.OutgoingEventEntry.init(event:state:version:id:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 144);
  *(a5 + 128) = *(a1 + 128);
  *(a5 + 144) = v5;
  *(a5 + 160) = *(a1 + 160);
  v6 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v6;
  v7 = *(a1 + 112);
  *(a5 + 96) = *(a1 + 96);
  *(a5 + 112) = v7;
  v8 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v8;
  v9 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v9;
  v10 = *a2;
  *(a5 + 200) = a2[1];
  v11 = a2[3];
  *(a5 + 216) = a2[2];
  *(a5 + 232) = v11;
  v12 = a3[1].n128_u64[0];
  v13 = a3[1].n128_u8[8];
  *(a5 + 176) = *(a1 + 176);
  *(a5 + 248) = *(a2 + 8);
  *(a5 + 184) = v10;
  result = *a3;
  *(a5 + 256) = *a3;
  *(a5 + 272) = v12;
  *(a5 + 280) = v13;
  *(a5 + 288) = a4;
  return result;
}

uint64_t MLS.InMemoryPersister.SwiftMLSGroupStoreID.groupID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t static MLS.InMemoryPersister.SwiftMLSGroupStoreID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t MLS.InMemoryPersister.GroupStoreID.hash(into:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);

  return a2(a1, v6, v7);
}

Swift::Int MLS.InMemoryPersister.GroupStoreID.hashValue.getter(void (*a1)(_BYTE *, uint64_t, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  a1(v8, v5, v6);
  return Hasher._finalize()();
}

void *MLS.InMemoryPersister.SwiftMLSGroupStoreID.init(clientID:groupID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.InMemoryPersister.GroupStoreID(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  a3(v10, v7, v8);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.InMemoryPersister.GroupStoreID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);

  return a4(a1, v8, v9);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.InMemoryPersister.GroupStoreID(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  a4(v11, v8, v9);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MLS.InMemoryPersister.SwiftMLSGroupStoreID(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t MLS.InMemoryPersister.SwiftMLSEpochStoreID.groupID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.InMemoryPersister.SwiftMLSEpochStoreID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v5);
  return MEMORY[0x266754E10](v6);
}

Swift::Int MLS.InMemoryPersister.SwiftMLSEpochStoreID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v5);
  MEMORY[0x266754E10](v6);
  return Hasher._finalize()();
}

void *MLS.InMemoryPersister.SwiftMLSEpochStoreID.init(clientID:groupID:era:epoch:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = result[1];
  *a6 = *result;
  a6[1] = v6;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v5);
  MEMORY[0x266754E10](v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v5);
  return MEMORY[0x266754E10](v6);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v5);
  MEMORY[0x266754E10](v6);
  return Hasher._finalize()();
}

uint64_t MLS.InMemoryPersister.State.clientIDToSwiftMLSClientID.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToSwiftMLSGroup.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.swiftMLSGroupToGroup.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToGroupClientContextBlob.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToMembers.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToPending.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToPendingDelete.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupMessagesToRetryCount.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToEventsSinceLastKeyUpdate.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToIncomingEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToOutgoingEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.swiftMLSClientData.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.swiftMLSGroupState.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.swiftMLSEpochState.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

double MLS.InMemoryPersister.State.init()@<D0>(uint64_t a1@<X8>)
{
  specialized MLS.InMemoryPersister.State.init()(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

__n128 MLS.InMemoryPersister.State.init(clientIDToSwiftMLSClientID:groupToSwiftMLSGroup:swiftMLSGroupToGroup:groupToGroupClientContextBlob:groupToMembers:groupToPending:groupToPendingDelete:groupMessagesToRetryCount:groupToEventsSinceLastKeyUpdate:nextEventID:groupToIncomingEvents:groupToOutgoingEvents:swiftMLSClientData:swiftMLSGroupState:swiftMLSEpochState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  return result;
}

double MLS.InMemoryPersister.committedState.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v15 = *(v1 + 88);
  v16 = v3;
  v17 = *(v1 + 120);
  v18 = *(v1 + 136);
  v4 = *(v1 + 40);
  v11 = *(v1 + 24);
  v12 = v4;
  v5 = *(v1 + 72);
  v13 = *(v1 + 56);
  v14 = v5;
  outlined init with copy of MLS.InMemoryPersister.State(&v11, &v10);
  v6 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v6;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  v7 = v12;
  *a1 = v11;
  *(a1 + 16) = v7;
  result = *&v13;
  v9 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v9;
  return result;
}

uint64_t MLS.InMemoryPersister.committedState.setter(uint64_t a1)
{
  swift_beginAccess();
  v19 = v1[4];
  v20 = v1[3];
  v17 = v1[6];
  v18 = v1[5];
  v3 = v1[8];
  v16 = v1[7];
  v4 = v1[10];
  v5 = v1[11];
  v7 = v1[13];
  v6 = v1[14];
  v9 = v1[15];
  v8 = v1[16];
  v10 = *(a1 + 80);
  *(v1 + 11) = *(a1 + 64);
  *(v1 + 13) = v10;
  *(v1 + 15) = *(a1 + 96);
  v11 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 5) = v11;
  v12 = *(a1 + 48);
  *(v1 + 7) = *(a1 + 32);
  v13 = v1[9];
  v14 = v1[17];
  v1[17] = *(a1 + 112);
  *(v1 + 9) = v12;
}

double MLS.InMemoryPersister.transactionState.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v15 = *(v1 + 208);
  v16 = v3;
  v17 = *(v1 + 240);
  v18 = *(v1 + 256);
  v4 = *(v1 + 160);
  v11 = *(v1 + 144);
  v12 = v4;
  v5 = *(v1 + 192);
  v13 = *(v1 + 176);
  v14 = v5;
  outlined init with copy of MLS.OutgoingEventState?(&v11, &v10, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  v6 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v6;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  v7 = v12;
  *a1 = v11;
  *(a1 + 16) = v7;
  result = *&v13;
  v9 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v9;
  return result;
}

uint64_t MLS.InMemoryPersister.transactionState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  v8 = *(v1 + 184);
  v9 = *(v1 + 192);
  v10 = *(v1 + 200);
  v11 = *(v1 + 208);
  v12 = *(v1 + 224);
  v13 = *(v1 + 240);
  v14 = *(v1 + 256);
  v15 = *(a1 + 80);
  *(v1 + 208) = *(a1 + 64);
  *(v1 + 224) = v15;
  *(v1 + 240) = *(a1 + 96);
  *(v1 + 256) = *(a1 + 112);
  v16 = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = v16;
  v17 = *(a1 + 48);
  *(v1 + 176) = *(a1 + 32);
  *(v1 + 192) = v17;
  return outlined consume of MLS.InMemoryPersister.State?(v3);
}

uint64_t MLS.InMemoryPersister.persisterQueue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  if (*(v0 + 264))
  {
    v5 = *(v0 + 264);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = type metadata accessor for MLS.PersistenceQueue(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v5 = swift_allocObject();

    Logger.init(subsystem:category:)();
    *(v5 + 16) = MEMORY[0x277D84F90];
    outlined init with take of AsyncStream<String>.Continuation?(v4, v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher);
    v13 = (v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock);
    *v13 = &async function pointer to partial apply for closure #1 in MLS.InMemoryPersister.persisterQueue.getter;
    v13[1] = v7;
    v14 = (v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock);
    *v14 = &async function pointer to partial apply for closure #2 in MLS.InMemoryPersister.persisterQueue.getter;
    v14[1] = v8;
    v15 = (v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);
    *v15 = &async function pointer to partial apply for closure #3 in MLS.InMemoryPersister.persisterQueue.getter;
    v15[1] = v9;

    v16 = *(v0 + 264);
    *(v0 + 264) = v5;
  }

  return v5;
}

uint64_t closure #1 in MLS.InMemoryPersister.persisterQueue.getter(uint64_t a1)
{
  *(v1 + 304) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.InMemoryPersister.persisterQueue.getter, v2, 0);
}

uint64_t closure #1 in MLS.InMemoryPersister.persisterQueue.getter()
{
  v1 = *(v0 + 304);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 304);
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      (*(*v5 + 136))(v5);
      v21 = *(v0 + 152);
      v22 = *(v0 + 136);
      v19 = *(v0 + 184);
      v20 = *(v0 + 168);
      v17 = *(v0 + 216);
      v18 = *(v0 + 200);
      v16 = *(v0 + 232);
      v6 = *(v0 + 248);

      v8 = v16;
      v7 = v17;
      v10 = v18;
      v9 = v19;
      v11 = v20;
      v13 = v21;
      v12 = v22;
    }

    else
    {
      v6 = 0;
      v12 = 0uLL;
      v13 = 0uLL;
      v11 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
    }

    *(v0 + 16) = v12;
    *(v0 + 32) = v13;
    *(v0 + 48) = v11;
    *(v0 + 64) = v9;
    *(v0 + 80) = v10;
    *(v0 + 96) = v7;
    *(v0 + 112) = v8;
    *(v0 + 128) = v6;
    (*(*v3 + 168))(v0 + 16);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #2 in MLS.InMemoryPersister.persisterQueue.getter(uint64_t a1)
{
  *(v1 + 448) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #2 in MLS.InMemoryPersister.persisterQueue.getter, v2, 0);
}

uint64_t closure #2 in MLS.InMemoryPersister.persisterQueue.getter()
{
  v1 = *(v0 + 448);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 160))(Strong);

    v3 = *(v0 + 256);
    if (v3)
    {
      v4 = *(v0 + 448);
      *(v0 + 136) = v3;
      v5 = *(v0 + 344);
      *(v0 + 208) = *(v0 + 328);
      *(v0 + 224) = v5;
      *(v0 + 240) = *(v0 + 360);
      v6 = *(v0 + 280);
      *(v0 + 144) = *(v0 + 264);
      *(v0 + 160) = v6;
      v7 = *(v0 + 312);
      *(v0 + 176) = *(v0 + 296);
      *(v0 + 192) = v7;
      swift_beginAccess();
      v8 = swift_weakLoadStrong();
      if (v8)
      {
        (*(*v8 + 144))(v0 + 136);
      }

      else
      {
        outlined destroy of NSObject?(v0 + 256, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      }

      v9 = *(v0 + 448);
      swift_beginAccess();
      v10 = swift_weakLoadStrong();
      if (v10)
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        *(v0 + 64) = 0u;
        *(v0 + 80) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0u;
        *(v0 + 16) = 0u;
        (*(*v10 + 168))(v0 + 16);
      }
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #3 in MLS.InMemoryPersister.persisterQueue.getter(uint64_t a1)
{
  *(v1 + 160) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #3 in MLS.InMemoryPersister.persisterQueue.getter, v2, 0);
}

uint64_t closure #3 in MLS.InMemoryPersister.persisterQueue.getter()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    (*(*Strong + 168))(v0 + 16);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t MLS.InMemoryPersister.persisterQueue.setter(uint64_t a1)
{
  v2 = *(v1 + 264);
  *(v1 + 264) = a1;
}

uint64_t (*MLS.InMemoryPersister.persisterQueue.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = MLS.InMemoryPersister.persisterQueue.getter();
  return MLS.InMemoryPersister.persisterQueue.modify;
}

uint64_t MLS.InMemoryPersister.persisterQueue.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 264);
  *(v1 + 264) = v2;
}

uint64_t MLS.InMemoryPersister.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE25SwiftMLSPersisterProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  specialized MLS.InMemoryPersister.State.init()(v5);
  v1 = v5[5];
  *(v0 + 88) = v5[4];
  *(v0 + 104) = v1;
  *(v0 + 120) = v5[6];
  v2 = v5[1];
  *(v0 + 24) = v5[0];
  *(v0 + 40) = v2;
  v3 = v5[3];
  *(v0 + 56) = v5[2];
  *(v0 + 136) = v6;
  *(v0 + 72) = v3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return v0;
}

uint64_t MLS.InMemoryPersister.init()()
{
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE25SwiftMLSPersisterProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  specialized MLS.InMemoryPersister.State.init()(v5);
  v1 = v5[5];
  *(v0 + 88) = v5[4];
  *(v0 + 104) = v1;
  *(v0 + 120) = v5[6];
  v2 = v5[1];
  *(v0 + 24) = v5[0];
  *(v0 + 40) = v2;
  v3 = v5[3];
  *(v0 + 56) = v5[2];
  *(v0 + 136) = v6;
  *(v0 + 72) = v3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return v0;
}

uint64_t MLS.InMemoryPersister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v9[11] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.atomically<A>(with:do:rollback:), v10, 0);
}

uint64_t MLS.InMemoryPersister.atomically<A>(with:do:rollback:)()
{
  v1 = (*(**(v0 + 80) + 184))();
  *(v0 + 96) = v1;
  v2 = *(*v1 + 160);
  v14 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = MLS.InMemoryPersister.atomically<A>(with:do:rollback:);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);

  return v14(v11, v12, v9, v10, v7, v8, v5, v6);
}

{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](MLS.InMemoryPersister.atomically<A>(with:do:rollback:), v4, 0);
  }

  else
  {
    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t MLS.InMemoryPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  *(v5 + 416) = a3;
  *(v5 + 376) = a1;
  *(v5 + 384) = a2;
  v6 = *a4;
  v7 = a4[1];
  *(v5 + 392) = v4;
  *(v5 + 400) = v6;
  *(v5 + 408) = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:), v8, 0);
}

uint64_t MLS.InMemoryPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)()
{
  v1 = (*(**(v0 + 392) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 392) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  v31 = *(v0 + 408);
  v32 = *(v0 + 384);
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  v50 = MEMORY[0x277D84F90];
  v33 = *(v27 + 16);

  if (v33)
  {
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 400), v31, *(v0 + 376), v32);
    if (v35)
    {
      v50 = *(*(v27 + 56) + 8 * v34);
    }
  }

  if (*(v26 + 16))
  {
    v36 = *(v0 + 416);
    v37 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 400), *(v0 + 408), *(v0 + 376), *(v0 + 384));
    if (v38)
    {
      if (v36)
      {
        v39 = *(*(v26 + 56) + 8 * v37);

        specialized Array.append<A>(contentsOf:)(v40);
      }
    }
  }

  v41 = *(v0 + 408);
  if (!*(v25 + 16))
  {
    v47 = *(v0 + 384);
    outlined destroy of MLS.InMemoryPersister.State(v0 + 256);

LABEL_16:

    goto LABEL_19;
  }

  v42 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 400), *(v0 + 408), *(v0 + 376), *(v0 + 384));
  v44 = v43;

  if (v44)
  {
    v45 = *(v0 + 416);
    v46 = *(*(v25 + 56) + 8 * v42);

    outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
    if (v45)
    {
      goto LABEL_16;
    }

    specialized Array.append<A>(contentsOf:)(v46);
  }

  else
  {
    outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  }

LABEL_19:
  v48 = *(v0 + 8);

  return v48(v50);
}

uint64_t MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6[85] = v5;
  v6[84] = a4;
  v6[83] = a3;
  v6[82] = a2;
  v6[81] = a1;
  v7 = a5[1];
  v6[86] = *a5;
  v6[87] = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v6[88] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:), v8, 0);
}

uint64_t MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)()
{
  v224 = v0;
  v201 = *(**(v0 + 680) + 160);
  v201();
  if (*(v0 + 376))
  {
    v1 = v0;
    v2 = *(v0 + 696);
    v3 = *(v0 + 664);
    v4 = v1[82];
    outlined destroy of NSObject?((v1 + 47), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v5 = *(v3 + 16);

    v207 = v1;
    if (v5)
    {
      v7 = 0;
      v8 = v1[83] + 57;
      v198 = MEMORY[0x277D84F90];
      v202 = v8;
      do
      {
        v9 = (v8 + 32 * v7);
        v10 = v7;
        while (1)
        {
          if (v10 >= v5)
          {
            __break(1u);
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          v7 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_128;
          }

          v11 = *(v9 - 25);
          v12 = *(v9 - 17);
          v13 = *(v9 - 9);
          v14 = *(v9 - 1);
          v15 = *v9;
          v16 = v207[88];
          outlined copy of MLS.AllMember();
          v17 = v207;
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            v18 = v207[88];
            swift_task_reportUnexpectedExecutor();
          }

          if (!v15)
          {
            break;
          }

          result = outlined consume of MLS.AllMember();
          ++v10;
          v9 += 32;
          if (v7 == v5)
          {
            goto LABEL_17;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v198;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v198 + 16) + 1, 1);
          v17 = v207;
          v19 = v198;
        }

        v8 = v202;
        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        if (v21 >= v20 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v17 = v207;
          v19 = v198;
        }

        *(v19 + 16) = v21 + 1;
        v198 = v19;
        v22 = v19 + 32 * v21;
        *(v22 + 32) = v11;
        *(v22 + 40) = v12;
        *(v22 + 48) = v13;
        *(v22 + 56) = v14;
        *(v22 + 57) = 0;
      }

      while (v7 != v5);
LABEL_17:
      v23 = 0;
      v24 = v17[83] + 57;
      v197 = MEMORY[0x277D84F90];
      v203 = v24;
LABEL_18:
      v25 = (v24 + 32 * v23);
      v26 = v23;
      while (v26 < v5)
      {
        v23 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_130;
        }

        v27 = *(v25 - 25);
        v28 = *(v25 - 17);
        v29 = *(v25 - 9);
        v30 = *(v25 - 1);
        v31 = *v25;
        v32 = v207[88];
        outlined copy of MLS.AllMember();
        v33 = v207;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          v34 = v207[88];
          swift_task_reportUnexpectedExecutor();
        }

        if (v31 == 1)
        {
          v35 = v197;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v197 + 16) + 1, 1);
            v33 = v207;
            v35 = v197;
          }

          v37 = *(v35 + 16);
          v36 = *(v35 + 24);
          if (v37 >= v36 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
            v33 = v207;
            v35 = v197;
          }

          *(v35 + 16) = v37 + 1;
          v197 = v35;
          v38 = v35 + 32 * v37;
          *(v38 + 32) = v27;
          *(v38 + 40) = v28;
          *(v38 + 48) = v29;
          *(v38 + 56) = v30;
          *(v38 + 57) = 1;
          v24 = v203;
          if (v23 != v5)
          {
            goto LABEL_18;
          }

          goto LABEL_34;
        }

        result = outlined consume of MLS.AllMember();
        ++v26;
        v25 += 32;
        if (v23 == v5)
        {
          goto LABEL_34;
        }
      }

LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v197 = MEMORY[0x277D84F90];
    v198 = MEMORY[0x277D84F90];
    v33 = v1;
LABEL_34:
    v40 = v33[84];
    v41 = *(v40 + 16);
    if (v41)
    {
      v42 = 0;
      v43 = v40 + 57;
      v196 = MEMORY[0x277D84F90];
      v204 = v40 + 57;
LABEL_36:
      v44 = (v43 + 32 * v42);
      v45 = v42;
      while (v45 < v41)
      {
        v42 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_132;
        }

        v46 = *(v44 - 25);
        v47 = *(v44 - 17);
        v48 = *(v44 - 9);
        v49 = *(v44 - 1);
        v50 = *v44;
        v51 = v207[88];
        outlined copy of MLS.AllMember();
        v52 = v207;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          v53 = v207[88];
          swift_task_reportUnexpectedExecutor();
        }

        if (v50 == 2)
        {
          v54 = v196;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v196 + 16) + 1, 1);
            v52 = v207;
            v54 = v196;
          }

          v43 = v204;
          v56 = *(v54 + 16);
          v55 = *(v54 + 24);
          v57 = v54;
          if (v56 >= v55 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
            v52 = v207;
            v57 = v196;
          }

          *(v57 + 16) = v56 + 1;
          v196 = v57;
          v58 = v57 + 32 * v56;
          *(v58 + 32) = v46;
          *(v58 + 40) = v47;
          *(v58 + 48) = v48;
          *(v58 + 56) = v49;
          *(v58 + 57) = 2;
          if (v42 != v41)
          {
            goto LABEL_36;
          }

LABEL_49:
          v59 = 0;
          v60 = v52[84] + 57;
          v61 = MEMORY[0x277D84F90];
          v205 = v60;
LABEL_50:
          v199 = v61;
          v62 = (v60 + 32 * v59);
          v63 = v59;
          while (v63 < v41)
          {
            v59 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              goto LABEL_134;
            }

            v64 = *(v62 - 25);
            v65 = *(v62 - 17);
            v66 = *(v62 - 9);
            v67 = *(v62 - 1);
            v68 = *v62;
            v69 = v207[88];
            outlined copy of MLS.AllMember();
            v33 = v207;
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              v70 = v207[88];
              swift_task_reportUnexpectedExecutor();
            }

            if (!v68)
            {
              v61 = v199;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v199 + 16) + 1, 1);
                v33 = v207;
                v61 = v199;
              }

              v72 = *(v61 + 16);
              v71 = *(v61 + 24);
              if (v72 >= v71 >> 1)
              {
                result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
                v33 = v207;
                v61 = v199;
              }

              *(v61 + 16) = v72 + 1;
              v73 = v61 + 32 * v72;
              *(v73 + 32) = v64;
              *(v73 + 40) = v65;
              *(v73 + 48) = v66;
              *(v73 + 56) = v67;
              *(v73 + 57) = 0;
              v60 = v205;
              if (v59 != v41)
              {
                goto LABEL_50;
              }

              goto LABEL_65;
            }

            result = outlined consume of MLS.AllMember();
            ++v63;
            v62 += 32;
            if (v59 == v41)
            {
              v61 = v199;
              goto LABEL_65;
            }
          }

          goto LABEL_133;
        }

        result = outlined consume of MLS.AllMember();
        ++v45;
        v44 += 32;
        if (v42 == v41)
        {
          goto LABEL_49;
        }
      }

LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v61 = MEMORY[0x277D84F90];
    v196 = MEMORY[0x277D84F90];
LABEL_65:
    v206 = v33 + 77;
    v74 = v33;
    v75 = v33[85];
    (v201)(result);
    v76 = v74[32];
    v77 = v74 + 33;
    v78 = v74[36];
    v79 = v74 + 37;
    v200 = v61;
    if (v76 && *(v78 + 16) && (v80 = specialized __RawDictionaryStorage.find<A>(_:)(v74[86], v74[87], v74[81], v74[82]), (v81 & 1) != 0))
    {
      v82 = v74[84];
      v83 = *(*(v78 + 56) + 8 * v80);
      v74[62] = v76;
      *(v74 + 63) = *v77;
      v74[65] = v74[35];
      v74[66] = v78;
      v84 = *(v74 + 43);
      *(v74 + 71) = *(v74 + 41);
      *(v74 + 73) = v84;
      *(v74 + 75) = *(v74 + 45);
      v85 = *(v74 + 39);
      *(v74 + 67) = *v79;
      *(v74 + 69) = v85;

      outlined destroy of NSObject?((v74 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      *&v220 = v83;

      specialized Array.append<A>(contentsOf:)(v86);

      result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v220, v82, 125, 126);
      v87 = v220;
      v88 = *(v220 + 16);
      if (result > v88)
      {
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      v89 = result;
      if (result < 0)
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v90 = result;
      if (__OFADD__(v88, result - v88))
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v90 > *(v87 + 3) >> 1)
      {
        if (v88 <= v90)
        {
          v92 = v90;
        }

        else
        {
          v92 = v88;
        }

        v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v92, 1, v87);
        *&v220 = v87;
      }

      v93 = v207[85];
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v89, v88, 0);
      v95 = (*(*v93 + 176))(v206);
      if (*v94)
      {
        v96 = v94;
        v97 = v207[87];
        v98 = v207[86];
        v99 = v207[82];
        v100 = v207[81];

        v101 = v96[4];
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v208 = v96[4];
        v96[4] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v87, v98, v97, v100, v99, v102);

        v96[4] = v208;
      }

      else
      {
      }

      v115 = v95();
      v74 = v207;
    }

    else
    {
      v103 = v74[85];
      v74[62] = v76;
      *(v74 + 63) = *v77;
      v74[65] = v74[35];
      v74[66] = v78;
      v104 = *(v74 + 43);
      *(v74 + 71) = *(v74 + 41);
      *(v74 + 73) = v104;
      *(v74 + 75) = *(v74 + 45);
      v105 = *(v74 + 39);
      *(v74 + 67) = *v79;
      *(v74 + 69) = v105;
      outlined destroy of NSObject?((v74 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v107 = (*(*v103 + 176))(v206);
      if (*v106)
      {
        v108 = v106;
        v109 = v74[87];
        v110 = v74[86];
        v111 = v74[82];
        v112 = v74[81];

        v113 = v108[4];
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v209 = v108[4];
        v108[4] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v198, v110, v109, v112, v111, v114);

        v108[4] = v209;
      }

      v115 = v107();
    }

    v116 = v74[85];
    (v201)(v115);
    v117 = v74[17];
    v118 = *(v74 + 10);
    v220 = *(v74 + 9);
    v221 = v118;
    v119 = v74[22];
    v214 = *(v74 + 27);
    v216 = *(v74 + 29);
    v218 = v74[31];
    v210 = *(v74 + 23);
    v212 = *(v74 + 25);
    if (v117 && *(v119 + 16) && (v120 = specialized __RawDictionaryStorage.find<A>(_:)(v74[86], v74[87], v74[81], v74[82]), (v121 & 1) != 0))
    {
      v122 = *(*(v119 + 56) + 8 * v120);
      v123 = v74[84];
      v74[62] = v117;
      v124 = *(v74 + 10);
      *(v74 + 63) = *(v74 + 9);
      *(v74 + 65) = v124;
      v74[67] = v119;
      v125 = *(v74 + 25);
      v126 = *(v74 + 29);
      *(v74 + 36) = *(v74 + 27);
      *(v74 + 37) = v126;
      v74[76] = v74[31];
      *(v74 + 34) = *(v74 + 23);
      *(v74 + 35) = v125;

      outlined destroy of NSObject?((v74 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v219 = v122;
      specialized Array.append<A>(contentsOf:)(v197);

      result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v219, v123, v198);
      v127 = v219;
      v128 = *(v219 + 16);
      if (result > v128)
      {
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      v129 = result;
      if (result < 0)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      v130 = result;
      if (__OFADD__(v128, result - v128))
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v131 = swift_isUniquelyReferenced_nonNull_native();
      if (!v131 || v130 > *(v127 + 3) >> 1)
      {
        if (v128 <= v130)
        {
          v132 = v130;
        }

        else
        {
          v132 = v128;
        }

        v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v131, v132, 1, v127);
        v219 = v127;
      }

      v133 = v207[85];
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v129, v128, 0);

      v135 = (*(*v133 + 176))(v206);
      if (*v134)
      {
        v136 = v134;
        v137 = v207[87];
        v138 = v207[86];
        v139 = v207[82];
        v140 = v207[81];

        v141 = v136[5];
        v142 = swift_isUniquelyReferenced_nonNull_native();
        v223 = v136[5];
        v136[5] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, v138, v137, v140, v139, v142);

        v136[5] = v223;
      }

      else
      {
      }

      v154 = v135();
      v74 = v207;
    }

    else
    {
      v143 = v74[85];

      v74[62] = v117;
      v144 = v221;
      *(v74 + 63) = v220;
      *(v74 + 65) = v144;
      v74[67] = v119;
      *(v74 + 36) = v214;
      *(v74 + 37) = v216;
      v74[76] = v218;
      *(v74 + 34) = v210;
      *(v74 + 35) = v212;
      outlined destroy of NSObject?((v74 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v146 = (*(*v143 + 176))(v206);
      if (*v145)
      {
        v147 = v145;
        v148 = v74[87];
        v149 = v74[86];
        v150 = v74[82];
        v151 = v74[81];

        v152 = v147[5];
        v153 = swift_isUniquelyReferenced_nonNull_native();
        v223 = v147[5];
        v147[5] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v197, v149, v148, v151, v150, v153);

        v147[5] = v223;
        v154 = (v146)(v206, 0);
      }

      else
      {

        v154 = v146();
      }
    }

    v155 = v74[85];
    (v201)(v154);
    v156 = v74[8];
    v222 = v74[7];
    v157 = v74[2];
    v158 = *(v74 + 5);
    v220 = *(v74 + 3);
    v221 = v158;
    v211 = *(v74 + 9);
    v213 = *(v74 + 11);
    v215 = *(v74 + 13);
    v217 = *(v74 + 15);
    if (v157 && *(v156 + 16) && (v159 = specialized __RawDictionaryStorage.find<A>(_:)(v74[86], v74[87], v74[81], v74[82]), (v160 & 1) != 0))
    {
      v161 = *(*(v156 + 56) + 8 * v159);
      v74[62] = v157;
      v162 = *(v74 + 5);
      *(v74 + 63) = *(v74 + 3);
      *(v74 + 65) = v162;
      v74[67] = v74[7];
      v74[68] = v156;
      v163 = *(v74 + 11);
      *(v74 + 69) = *(v74 + 9);
      *(v74 + 71) = v163;
      v164 = *(v74 + 15);
      *(v74 + 73) = *(v74 + 13);
      *(v74 + 75) = v164;

      outlined destroy of NSObject?((v74 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v219 = v161;
      specialized Array.append<A>(contentsOf:)(v196);

      result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v219, v200, 143, 144);
      v165 = v219;
      v166 = *(v219 + 16);
      if (result > v166)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v167 = result;
      if (result < 0)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v168 = result;
      if (__OFADD__(v166, result - v166))
      {
LABEL_143:
        __break(1u);
        return result;
      }

      v169 = swift_isUniquelyReferenced_nonNull_native();
      if (!v169 || v168 > *(v165 + 3) >> 1)
      {
        if (v166 <= v168)
        {
          v170 = v168;
        }

        else
        {
          v170 = v166;
        }

        v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v169, v170, 1, v165);
        v219 = v165;
      }

      v171 = v207[85];
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v167, v166, 0);

      v173 = (*(*v171 + 176))(v206);
      v174 = v207[87];
      if (*v172)
      {
        v175 = v207[86];
        v176 = v207[82];
        v177 = v207[81];
        v178 = v172[6];
        v179 = v172;
        v180 = swift_isUniquelyReferenced_nonNull_native();
        v223 = v179[6];
        v179[6] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v165, v175, v174, v177, v176, v180);

        v179[6] = v223;
      }

      else
      {
        v194 = v207[82];
        v195 = v207[87];
      }

      v173();
      v74 = v207;
    }

    else
    {
      v181 = v74[85];

      v74[62] = v157;
      v182 = v221;
      *(v74 + 63) = v220;
      *(v74 + 65) = v182;
      v74[67] = v222;
      v74[68] = v156;
      *(v74 + 69) = v211;
      *(v74 + 71) = v213;
      *(v74 + 73) = v215;
      *(v74 + 75) = v217;
      outlined destroy of NSObject?((v74 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v184 = (*(*v181 + 176))(v206);
      v185 = v74[87];
      if (*v183)
      {
        v186 = v74[86];
        v187 = v74[82];
        v188 = v74[81];
        v189 = v183[6];
        v190 = v183;
        v191 = swift_isUniquelyReferenced_nonNull_native();
        v223 = v190[6];
        v190[6] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v196, v186, v185, v188, v187, v191);

        v190[6] = v223;
      }

      else
      {
        v192 = v74[82];
        v193 = v74[87];
      }

      v184();
    }

    v39 = v74[1];
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v39 = *(v0 + 8);
  }

  return v39();
}

uint64_t closure #6 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a2 + 56);
  v7 = *(a2 + 16) + 1;
  while (--v7)
  {
    v9 = *(v6 - 3);
    v8 = *(v6 - 2);
    v10 = *(v6 - 1);
    v11 = *v6;
    outlined copy of MLS.AllMember();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v9 == v5 && v8 == v4)
    {
LABEL_25:
      outlined consume of MLS.AllMember();
      return 1;
    }

    v6 += 32;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of MLS.AllMember();
    if (v13)
    {
      return 1;
    }
  }

  v25 = v4;
  v14 = (a3 + 56);
  v15 = *(a3 + 16) + 1;
  do
  {
    v16 = --v15 != 0;
    if (!v15)
    {
      break;
    }

    v17 = *(v14 - 3);
    v18 = *(v14 - 2);
    v19 = *(v14 - 1);
    v20 = *v14;
    outlined copy of MLS.AllMember();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v17 == v5 && v18 == v25)
    {
      goto LABEL_25;
    }

    v14 += 32;
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of MLS.AllMember();
  }

  while ((v22 & 1) == 0);
  return v16;
}

BOOL closure #5 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (a2 + 56);
  v6 = *(a2 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v8 = *(v5 - 3);
    v7 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = *v5;
    outlined copy of MLS.AllMember();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v8 == v3 && v7 == v4)
    {
      outlined consume of MLS.AllMember();
      return v6 != 0;
    }

    v5 += 32;
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of MLS.AllMember();
  }

  while ((v12 & 1) == 0);
  return v6 != 0;
}

uint64_t MLS.InMemoryPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[23] = a3;
  v5[24] = v4;
  v5[21] = a1;
  v5[22] = a2;
  v6 = a4[1];
  v5[25] = *a4;
  v5[26] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v5[27] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)()
{
  (*(*v0[24] + 160))();
  if (!v0[2])
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v29 = v0[1];
LABEL_62:

    return v29();
  }

  v1 = v0 + 17;
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  v5 = *(*v3 + 176);

  result = v5(v0 + 17);
  v7 = result;
  v97 = v8;
  v107 = v0;
  v103 = v5;
  v105 = v0 + 17;
  if (*v8)
  {
    v9 = v0[23];
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v9 + 57;
      v100 = MEMORY[0x277D84F90];
      v93 = v9 + 57;
      v95 = result;
      do
      {
        v13 = (v12 + 32 * v11);
        v14 = v11;
        while (1)
        {
          if (v14 >= v10)
          {
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v11 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_66;
          }

          v15 = v10;
          v16 = *(v13 - 25);
          v17 = *(v13 - 17);
          v18 = *(v13 - 9);
          v19 = *(v13 - 1);
          v20 = *v13;
          v21 = v107[27];
          outlined copy of MLS.AllMember();
          v22 = v107;
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            v23 = v107[27];
            swift_task_reportUnexpectedExecutor();
          }

          if (!v20)
          {
            break;
          }

          result = outlined consume of MLS.AllMember();
          ++v14;
          v13 += 32;
          v10 = v15;
          if (v11 == v15)
          {
            v7 = v95;
            goto LABEL_21;
          }
        }

        v24 = v100;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 16) + 1, 1);
          v22 = v107;
          v24 = v100;
        }

        v7 = v95;
        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v27 = v26 + 1;
          v22 = v107;
          v24 = v100;
        }

        *(v24 + 16) = v27;
        v100 = v24;
        v28 = v24 + 32 * v26;
        *(v28 + 32) = v16;
        *(v28 + 40) = v17;
        *(v28 + 48) = v18;
        *(v28 + 56) = v19;
        *(v28 + 57) = 0;
        v10 = v15;
        v12 = v93;
      }

      while (v11 != v15);
    }

    else
    {
      v22 = v0;
      v100 = MEMORY[0x277D84F90];
    }

LABEL_21:
    v31 = v22[25];
    v30 = v22[26];
    v33 = v22[21];
    v32 = v22[22];

    v34 = v97[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v97[4];
    v97[4] = 0x8000000000000000;
    v0 = v22;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, v31, v30, v33, v32, isUniquelyReferenced_nonNull_native);

    v97[4] = v108;
    v5 = v103;
    v1 = v105;
  }

  v7(v1, 0);
  v36 = v0[24];
  result = v5(v1);
  v38 = result;
  if (*v37)
  {
    v96 = v37;
    v98 = result;
    v39 = v0[23];
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = 0;
      v42 = v39 + 57;
      v101 = MEMORY[0x277D84F90];
      v94 = v39 + 57;
LABEL_25:
      v43 = (v42 + 32 * v41);
      v44 = v41;
      while (v44 < v40)
      {
        v41 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_68;
        }

        v45 = *(v43 - 25);
        v46 = *(v43 - 17);
        v47 = *(v43 - 9);
        v48 = *(v43 - 1);
        v49 = *v43;
        v50 = v107[27];
        outlined copy of MLS.AllMember();
        v51 = v107;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          v52 = v107[27];
          swift_task_reportUnexpectedExecutor();
        }

        if (v49 == 1)
        {
          v53 = v101;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 16) + 1, 1);
            v51 = v107;
            v53 = v101;
          }

          v42 = v94;
          v55 = *(v53 + 16);
          v54 = *(v53 + 24);
          v56 = v55 + 1;
          if (v55 >= v54 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
            v56 = v55 + 1;
            v51 = v107;
            v53 = v101;
          }

          *(v53 + 16) = v56;
          v101 = v53;
          v57 = v53 + 32 * v55;
          *(v57 + 32) = v45;
          *(v57 + 40) = v46;
          *(v57 + 48) = v47;
          *(v57 + 56) = v48;
          *(v57 + 57) = 1;
          if (v41 != v40)
          {
            goto LABEL_25;
          }

          goto LABEL_40;
        }

        result = outlined consume of MLS.AllMember();
        ++v44;
        v43 += 32;
        if (v41 == v40)
        {
          goto LABEL_40;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v51 = v0;
    v101 = MEMORY[0x277D84F90];
LABEL_40:
    v59 = v51[25];
    v58 = v51[26];
    v61 = v51[21];
    v60 = v51[22];

    v62 = v96[5];
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v96[5];
    v96[5] = 0x8000000000000000;
    v0 = v51;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v101, v59, v58, v61, v60, v63);

    v96[5] = v109;
    v5 = v103;
    v1 = v105;
    v38 = v98;
  }

  v38(v1, 0);
  v64 = v0[24];
  result = v5(v1);
  v66 = result;
  if (!*v65)
  {
    v85 = v0[26];
    v86 = v0[22];

LABEL_61:
    v66(v1, 0);
    v29 = v0[1];
    goto LABEL_62;
  }

  v102 = v65;
  v104 = result;
  v67 = v0[23];
  v68 = *(v67 + 16);
  if (!v68)
  {
    v79 = v0;
    v106 = MEMORY[0x277D84F90];
LABEL_60:
    v88 = v79[25];
    v87 = v79[26];
    v90 = v79[21];
    v89 = v79[22];
    v91 = v102[6];
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v110 = v102[6];
    v102[6] = 0x8000000000000000;
    v0 = v79;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v106, v88, v87, v90, v89, v92);

    v102[6] = v110;
    v66 = v104;
    v1 = v105;
    goto LABEL_61;
  }

  v69 = 0;
  v70 = v67 + 57;
  v106 = MEMORY[0x277D84F90];
  v99 = v67 + 57;
LABEL_44:
  v71 = (v70 + 32 * v69);
  v72 = v69;
  while (v72 < v68)
  {
    v69 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_70;
    }

    v73 = *(v71 - 25);
    v74 = *(v71 - 17);
    v75 = *(v71 - 9);
    v76 = *(v71 - 1);
    v77 = *v71;
    v78 = v107[27];
    outlined copy of MLS.AllMember();
    v79 = v107;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      v80 = v107[27];
      swift_task_reportUnexpectedExecutor();
    }

    if (v77 == 2)
    {
      v81 = v106;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 16) + 1, 1);
        v79 = v107;
        v81 = v106;
      }

      v83 = *(v81 + 16);
      v82 = *(v81 + 24);
      if (v83 >= v82 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1);
        v79 = v107;
        v81 = v106;
      }

      *(v81 + 16) = v83 + 1;
      v106 = v81;
      v84 = v81 + 32 * v83;
      *(v84 + 32) = v73;
      *(v84 + 40) = v74;
      *(v84 + 48) = v75;
      *(v84 + 56) = v76;
      *(v84 + 57) = 2;
      v70 = v99;
      if (v69 != v68)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

    result = outlined consume of MLS.AllMember();
    ++v72;
    v71 += 32;
    if (v69 == v68)
    {
      goto LABEL_60;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t MLS.InMemoryPersister.deleteGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[21] = a1;
  v4[22] = a2;
  v5 = *a3;
  v6 = a3[1];
  v4[23] = v3;
  v4[24] = v5;
  v4[25] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.deleteGroup(identifier:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.deleteGroup(identifier:clientIdentifier:)()
{
  v41 = v0;
  (*(**(v0 + 184) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 200);
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v4 = *(*v2 + 176);

    v5 = v4(v0 + 136);
    if (*v6)
    {
      v8 = *(v0 + 192);
      v7 = *(v0 + 200);
      v10 = *(v0 + 168);
      v9 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v8, v7, v10, v9);
    }

    v5(v0 + 136, 0);
    v11 = *(v0 + 184);
    v12 = v4(v0 + 136);
    if (*v13)
    {
      v15 = *(v0 + 192);
      v14 = *(v0 + 200);
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v15, v14, v17, v16);
    }

    v12(v0 + 136, 0);
    v18 = *(v0 + 184);
    v19 = v4(v0 + 136);
    if (*v20)
    {
      v22 = *(v0 + 192);
      v21 = *(v0 + 200);
      v24 = *(v0 + 168);
      v23 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v22, v21, v24, v23);
    }

    v19(v0 + 136, 0);
    v25 = *(v0 + 184);
    v26 = v4(v0 + 136);
    if (*v27)
    {
      v29 = *(v0 + 192);
      v28 = *(v0 + 200);
      v31 = *(v0 + 168);
      v30 = *(v0 + 176);

      specialized Dictionary._Variant.removeValue(forKey:)(v29, v28, v31, v30, &v40);

      outlined consume of Data?(v40, *(&v40 + 1));
    }

    v26(v0 + 136, 0);
    v32 = *(v0 + 184);
    v33 = v4(v0 + 136);
    v35 = *(v0 + 200);
    if (*v34)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(*(v0 + 192), *(v0 + 200), *(v0 + 168), *(v0 + 176), &v40);

      outlined consume of Data?(v40, *(&v40 + 1));
    }

    else
    {
      v37 = *(v0 + 176);
      v38 = *(v0 + 200);
    }

    v33(v0 + 136, 0);
    v36 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v36 = *(v0 + 8);
  }

  return v36();
}

uint64_t MLS.InMemoryPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[21] = a1;
  v4[22] = a2;
  v5 = *a3;
  v6 = a3[1];
  v4[23] = v3;
  v4[24] = v5;
  v4[25] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)()
{
  v34 = v0;
  (*(**(v0 + 184) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 200);
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v4 = *(*v2 + 176);

    v5 = v4(v0 + 136);
    if (*v6)
    {
      v8 = *(v0 + 192);
      v7 = *(v0 + 200);
      v10 = *(v0 + 168);
      v9 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v8, v7, v10, v9);
    }

    v5(v0 + 136, 0);
    v11 = *(v0 + 184);
    v12 = v4(v0 + 136);
    if (*v13)
    {
      v15 = *(v0 + 192);
      v14 = *(v0 + 200);
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v15, v14, v17, v16);
    }

    v12(v0 + 136, 0);
    v18 = *(v0 + 184);
    v19 = v4(v0 + 136);
    if (*v20)
    {
      v22 = *(v0 + 192);
      v21 = *(v0 + 200);
      v24 = *(v0 + 168);
      v23 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v22, v21, v24, v23);
    }

    v19(v0 + 136, 0);
    v25 = *(v0 + 184);
    v26 = v4(v0 + 136);
    v28 = *(v0 + 200);
    if (*v27)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(*(v0 + 192), *(v0 + 200), *(v0 + 168), *(v0 + 176), &v33);

      outlined consume of Data?(v33, *(&v33 + 1));
    }

    else
    {
      v30 = *(v0 + 176);
      v31 = *(v0 + 200);
    }

    v26(v0 + 136, 0);
    v29 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t MLS.InMemoryPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v7 = *a5;
  v8 = a5[1];
  v6[25] = v5;
  v6[26] = v7;
  v6[27] = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:), v9, 0);
}

uint64_t MLS.InMemoryPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)()
{
  (*(**(v0 + 200) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 216);
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v4 = *(*v2 + 176);

    v6 = v4(v0 + 136);
    if (*v5)
    {
      v7 = v5;
      v8 = *(v0 + 216);
      v9 = *(v0 + 192);
      v33 = *(v0 + 184);
      v34 = *(v0 + 208);
      v35 = v4;
      v10 = *(v0 + 168);
      v11 = *(v0 + 176);

      outlined copy of Data._Representation(v10, v11);
      v12 = v7[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v7[1];
      v7[1] = 0x8000000000000000;
      v14 = v10;
      v4 = v35;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v11, v34, v8, v33, v9, isUniquelyReferenced_nonNull_native);

      v7[1] = v37;
    }

    v6(v0 + 136, 0);
    v15 = *(v0 + 200);
    v16 = v4(v0 + 136);
    v18 = v16;
    v19 = *(v0 + 216);
    if (*v17)
    {
      v20 = v17;
      v21 = *(v0 + 208);
      v23 = *(v0 + 184);
      v22 = *(v0 + 192);
      v36 = v16;
      v24 = *(v0 + 168);
      v25 = *(v0 + 176);
      outlined copy of Data._Representation(v24, v25);
      v26 = v20[2];
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v38 = v20[2];
      v20[2] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v19, v23, v22, v24, v25, v27);
      v28 = v24;
      v18 = v36;
      outlined consume of Data._Representation(v28, v25);
      v20[2] = v38;
    }

    else
    {
      v30 = *(v0 + 192);
      v31 = *(v0 + 216);
    }

    v18(v0 + 136, 0);
    v29 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t MLS.InMemoryPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[47] = a1;
  v4[48] = a2;
  v5 = *a3;
  v6 = a3[1];
  v4[49] = v3;
  v4[50] = v5;
  v4[51] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)()
{
  v1 = (*(**(v0 + 392) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 392) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  if (!*(v30 + 16))
  {
    goto LABEL_7;
  }

  v31 = *(v0 + 400);
  v32 = *(v0 + 408);
  v34 = *(v0 + 376);
  v33 = *(v0 + 384);

  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32, v34, v33);
  LOBYTE(v34) = v36;

  if (v34)
  {
    v37 = (*(v30 + 56) + 16 * v35);
    v39 = *v37;
    v38 = v37[1];
    outlined copy of Data._Representation(*v37, v38);
  }

  else
  {
LABEL_7:
    v39 = 0;
    v38 = 0xF000000000000000;
  }

  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v40 = *(v0 + 8);

  return v40(v39, v38);
}

uint64_t MLS.InMemoryPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:), v4, 0);
}

uint64_t MLS.InMemoryPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)()
{
  v1 = (*(**(v0 + 392) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 392) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  if (*(v29 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 376), *(v0 + 384)), (v32 & 1) != 0))
  {
    v33 = *(v29 + 56) + 32 * v31;
    v35 = *(v33 + 16);
    v34 = *(v33 + 24);
  }

  else
  {
    v35 = 0;
    v34 = 0;
  }

  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v36 = *(v0 + 8);

  return v36(v35, v34);
}

uint64_t MLS.InMemoryPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v7 = *a5;
  v8 = a5[1];
  v6[25] = v5;
  v6[26] = v7;
  v6[27] = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:), v9, 0);
}

uint64_t MLS.InMemoryPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)()
{
  (*(**(v0 + 200) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 216);
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v4 = *(*v2 + 176);

    v6 = v4(v0 + 136);
    if (*v5)
    {
      v7 = v5;
      v8 = *(v0 + 216);
      v19 = *(v0 + 208);
      v10 = *(v0 + 184);
      v9 = *(v0 + 192);
      v11 = *(v0 + 168);
      v12 = *(v0 + 176);
      outlined copy of Data._Representation(v11, v12);
      v13 = v7[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v7[3];
      v7[3] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v12, v19, v8, v10, v9, isUniquelyReferenced_nonNull_native);

      v7[3] = v20;
    }

    else
    {
      v16 = *(v0 + 216);
      v17 = *(v0 + 192);
    }

    v6(v0 + 136, 0);
    v15 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t MLS.InMemoryPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[47] = a1;
  v4[48] = a2;
  v5 = *a3;
  v6 = a3[1];
  v4[49] = v3;
  v4[50] = v5;
  v4[51] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadGroupClientContextBlob(identifier:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)()
{
  v1 = (*(**(v0 + 392) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 392) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  if (!*(v28 + 16))
  {
    goto LABEL_7;
  }

  v31 = *(v0 + 400);
  v32 = *(v0 + 408);
  v34 = *(v0 + 376);
  v33 = *(v0 + 384);

  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32, v34, v33);
  LOBYTE(v34) = v36;

  if (v34)
  {
    v37 = (*(v28 + 56) + 16 * v35);
    v39 = *v37;
    v38 = v37[1];
    outlined copy of Data._Representation(*v37, v38);
  }

  else
  {
LABEL_7:
    v39 = 0;
    v38 = 0xF000000000000000;
  }

  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v40 = *(v0 + 8);

  return v40(v39, v38);
}

uint64_t MLS.InMemoryPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)(void *__src, uint64_t a2, uint64_t a3, void *a4)
{
  v5[369] = v4;
  v5[368] = a3;
  v5[367] = a2;
  memcpy(v5 + 150, __src, 0x118uLL);
  v7 = a4[1];
  v5[370] = *a4;
  v5[371] = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:), v8, 0);
}

void (*MLS.InMemoryPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)())(void *, void)
{
  v121 = v0;
  v1 = *(*v0[369] + 160);
  v1();
  if (v0[288])
  {
    v2 = v0[369];
    v3 = outlined destroy of NSObject?((v0 + 288), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    (v1)(v3);
    v4 = v0[303];
    v5 = v0 + 304;
    v6 = v0[312];
    v7 = v0 + 313;
    if (v4)
    {
      v114 = v0 + 2;
      v0[273] = v4;
      v110 = (v0 + 243);
      v111 = v0 + 39;
      v8 = *(v0 + 153);
      *(v0 + 137) = *v5;
      *(v0 + 138) = v8;
      v9 = *(v0 + 155);
      *(v0 + 139) = *(v0 + 154);
      *(v0 + 140) = v9;
      v0[282] = v6;
      v10 = *(v0 + 315);
      *(v0 + 283) = *v7;
      *(v0 + 285) = v10;
      v0[287] = v0[317];
      outlined destroy of NSObject?((v0 + 273), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      memcpy(v0 + 185, v0 + 150, 0x118uLL);
      updated = _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOg((v0 + 185));
      v12 = v0[371];
      v13 = v0[370];
      v14 = v0[368];
      v112 = v0[367];
      v113 = v0[369];
      v15 = destructiveProjectEnumData for MLS.OutgoingEventUpdate((v0 + 185));
      v16 = v15;
      if (!updated)
      {
        v26 = v6;
        v27 = *v15;
        v28 = *(v15 + 16);
        v29 = *(v15 + 48);
        *(v0 + 112) = *(v15 + 32);
        *(v0 + 113) = v29;
        *(v0 + 110) = v27;
        *(v0 + 111) = v28;
        v30 = *(v15 + 64);
        v31 = *(v15 + 80);
        v32 = *(v15 + 112);
        *(v0 + 116) = *(v15 + 96);
        *(v0 + 117) = v32;
        *(v0 + 114) = v30;
        *(v0 + 115) = v31;
        v33 = *(v15 + 128);
        v34 = *(v15 + 144);
        v35 = *(v15 + 160);
        *(v0 + 1936) = *(v15 + 176);
        *(v0 + 119) = v34;
        *(v0 + 120) = v35;
        *(v0 + 118) = v33;
        v108 = *(v15 + 256);
        v109 = *(v15 + 264);
        v107 = *(v15 + 272);
        v36 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
        v0[351] = v13;
        v0[352] = v12;
        v0[353] = v112;
        v0[354] = v14;
        v0[355] = v36;
        v0[356] = v37;
        v38 = *(*v113 + 176);

        v39 = v38;
        v41 = v38(v110);
        if (*v40)
        {
          v42 = v40;
          v43 = *v16;
          v44 = *(v16 + 16);
          v45 = *(v16 + 48);
          *(v0 + 43) = *(v16 + 32);
          *(v0 + 45) = v45;
          *v111 = v43;
          *(v0 + 41) = v44;
          v46 = *(v16 + 64);
          v47 = *(v16 + 80);
          v48 = *(v16 + 112);
          *(v0 + 51) = *(v16 + 96);
          *(v0 + 53) = v48;
          *(v0 + 47) = v46;
          *(v0 + 49) = v47;
          v49 = *(v16 + 128);
          v50 = *(v16 + 144);
          v51 = *(v16 + 160);
          *(v0 + 488) = *(v16 + 176);
          *(v0 + 57) = v50;
          *(v0 + 59) = v51;
          *(v0 + 55) = v49;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v111, v40);
          v52 = *(v0 + 57);
          __src[8] = *(v0 + 55);
          __src[9] = v52;
          __src[10] = *(v0 + 59);
          LOBYTE(__src[11]) = *(v0 + 488);
          v53 = *(v0 + 49);
          __src[4] = *(v0 + 47);
          __src[5] = v53;
          v54 = *(v0 + 53);
          __src[6] = *(v0 + 51);
          __src[7] = v54;
          v55 = *(v0 + 41);
          __src[0] = *v111;
          __src[1] = v55;
          v56 = *(v0 + 45);
          __src[2] = *(v0 + 43);
          __src[3] = v56;
          *(&__src[11] + 8) = *(v16 + 184);
          *(&__src[12] + 8) = *(v16 + 200);
          *(&__src[13] + 8) = *(v16 + 216);
          *(&__src[14] + 8) = *(v16 + 232);
          *(&__src[15] + 1) = *(v16 + 248);
          v57 = __src[9];
          *(v0 + 46) = __src[8];
          *(v0 + 47) = v57;
          v58 = __src[5];
          *(v0 + 42) = __src[4];
          *(v0 + 43) = v58;
          v59 = __src[7];
          *(v0 + 44) = __src[6];
          *(v0 + 45) = v59;
          v60 = __src[1];
          *(v0 + 38) = __src[0];
          *(v0 + 39) = v60;
          v61 = __src[3];
          *(v0 + 40) = __src[2];
          *(v0 + 41) = v61;
          v62 = __src[13];
          *(v0 + 50) = __src[12];
          *(v0 + 51) = v62;
          v63 = __src[15];
          *(v0 + 52) = __src[14];
          *(v0 + 53) = v63;
          v64 = __src[11];
          *(v0 + 48) = __src[10];
          *(v0 + 49) = v64;
          v0[108] = v108;
          v0[109] = v109;
          v0[110] = v107;
          *(v0 + 888) = 0;
          v0[112] = v6;
          v65 = v0 + 2;
          outlined init with copy of MLS.OutgoingEventState?(v16, v114, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v16 + 184, v114, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
          v66 = v42[11];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v115 = v42[11];
          v42[11] = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v0 + 76, (v0 + 351), isUniquelyReferenced_nonNull_native);
          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 351));
          v42[11] = v115;
          v41(v110, 0);
        }

        else
        {
          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 351));
          v41(v110, 0);
          v65 = v0 + 2;
        }

        v101 = v0[369];
        result = v39(v65);
        if (*v103)
        {
          if (__OFADD__(v26, 1))
          {
            __break(1u);
            return result;
          }

          v103[9] = v26 + 1;
        }

        result(v65, 0);
        goto LABEL_27;
      }

      if (updated == 1)
      {
        v17 = *v15;
        v18 = *(v15 + 8);
        v0[345] = v13;
        v0[346] = v12;
        v0[347] = v112;
        v0[348] = v14;
        v0[349] = v17;
        v0[350] = v18;
        v19 = *(*v113 + 176);

        outlined init with copy of MLS.OutgoingEventUpdate((v0 + 150), v114);

        v20 = v19(v111);
        if (*v21)
        {
          specialized Dictionary._Variant.removeValue(forKey:)((v0 + 345), __src);
          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 345));
          memcpy(v114, __src, 0x128uLL);
          outlined destroy of NSObject?(v114, &_s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgMR);
        }

        else
        {
          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 345));
        }

        v20(v111, 0);
      }

      else
      {
        v68 = *v15;
        v69 = *(v15 + 8);
        v0[357] = v13;
        v0[358] = v12;
        v0[359] = v112;
        v0[360] = v14;
        v0[361] = v68;
        v0[362] = v69;

        outlined init with copy of MLS.OutgoingEventUpdate((v0 + 150), v114);

        (v1)(v70);
        v71 = v0[258];
        v72 = (v0 + 259);
        v73 = v0[269];
        v74 = v0 + 270;
        if (v71)
        {
          if (*(v73 + 16))
          {
            v75 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + 357);
            if (v76)
            {
              memcpy(v114, (*(v73 + 56) + 296 * v75), 0x128uLL);
              v77 = *v72;
              *(v0 + 123) = *(v0 + 261);
              v78 = *(v0 + 265);
              *(v0 + 124) = *(v0 + 263);
              *(v0 + 125) = v78;
              *(v0 + 126) = *(v0 + 267);
              v0[243] = v71;
              *(v0 + 122) = v77;
              v0[254] = v73;
              *(v0 + 255) = *v74;
              v0[257] = v0[272];
              outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v114, v111);
              outlined destroy of NSObject?(v110, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
              v79 = v0[25];
              v81 = v0[26];
              v80 = v0 + 25;
              v116 = *(v0 + 27);
              v117 = *(v0 + 29);
              v118 = *(v0 + 31);
              v119 = v0[33];
              v82 = v0[369];
              if (v81)
              {
                v83 = *(v0 + 31);
                *(v0 + 161) = *(v0 + 29);
                *(v0 + 162) = v83;
                v0[326] = v0[33];
                v84 = *(v0 + 27);
                *(v0 + 159) = *v80;
                *(v0 + 160) = v84;
                v85 = *(*v82 + 176);
                outlined init with copy of MLS.OutgoingEventState((v0 + 318), v111);
                v87 = v85(v0 + 363);
                if (*v86)
                {
                  v88 = v86;
                  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOi0_(v111);
                  *(v0 + 69) = v116;
                  *(v0 + 70) = v117;
                  *(v0 + 71) = v118;
                  v0[144] = v119;
                  v89 = v0[38];
                  v90 = *(v0 + 57);
                  *(v0 + 129) = *(v0 + 55);
                  *(v0 + 131) = v90;
                  *(v0 + 133) = *(v0 + 59);
                  *(v0 + 1080) = *(v0 + 488);
                  v91 = *(v0 + 49);
                  *(v0 + 121) = *(v0 + 47);
                  *(v0 + 123) = v91;
                  v92 = *(v0 + 53);
                  *(v0 + 125) = *(v0 + 51);
                  *(v0 + 127) = v92;
                  v93 = *(v0 + 41);
                  *(v0 + 113) = *v111;
                  *(v0 + 115) = v93;
                  v94 = *(v0 + 45);
                  *(v0 + 117) = *(v0 + 43);
                  *(v0 + 119) = v94;
                  v0[136] = v79;
                  v0[137] = v81;
                  v0[145] = 0;
                  v0[147] = 0;
                  v0[146] = 0;
                  *(v0 + 1184) = 1;
                  v0[149] = v89;
                  v95 = *(v0 + 31);
                  *(v0 + 331) = *(v0 + 29);
                  *(v0 + 333) = v95;
                  v0[335] = v0[33];
                  v96 = *(v0 + 27);
                  *(v0 + 327) = *v80;
                  *(v0 + 329) = v96;
                  outlined init with copy of MLS.OutgoingEventState((v0 + 327), (v0 + 336));
                  v97 = v88[11];
                  v98 = swift_isUniquelyReferenced_nonNull_native();
                  *&__src[0] = v88[11];
                  v88[11] = 0x8000000000000000;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v0 + 113, (v0 + 357), v98);
                  outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
                  v88[11] = *&__src[0];
                }

                else
                {
                  outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
                }

                v87(v0 + 363, 0);
                outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
              }

              else
              {
                v105 = (*(*v82 + 176))(v0 + 318);
                if (*v106)
                {
                  specialized Dictionary._Variant.removeValue(forKey:)((v0 + 357), __src);
                  outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
                  memcpy(v111, __src, 0x128uLL);
                  outlined destroy of NSObject?(v111, &_s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgMR);
                }

                else
                {
                  outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
                }

                v105(v0 + 318, 0);
              }

              outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v114);
              goto LABEL_27;
            }
          }

          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
          v99 = *v72;
          *(v0 + 5) = *(v0 + 261);
          v100 = *(v0 + 265);
          *(v0 + 7) = *(v0 + 263);
          *(v0 + 9) = v100;
          *(v0 + 11) = *(v0 + 267);
          v0[2] = v71;
        }

        else
        {
          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
          v99 = *v72;
          *(v0 + 5) = *(v0 + 261);
          v104 = *(v0 + 265);
          *(v0 + 7) = *(v0 + 263);
          *(v0 + 9) = v104;
          *(v0 + 11) = *(v0 + 267);
          v0[2] = 0;
        }

        *(v0 + 3) = v99;
        v0[13] = v73;
        *(v0 + 7) = *v74;
        v0[16] = v0[272];
        outlined destroy of NSObject?(v114, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      }

LABEL_27:
      v25 = v0[1];
      goto LABEL_28;
    }

    v0[2] = 0;
    v22 = *(v0 + 153);
    *(v0 + 3) = *v5;
    *(v0 + 5) = v22;
    v23 = *(v0 + 155);
    *(v0 + 7) = *(v0 + 154);
    *(v0 + 9) = v23;
    v0[11] = v6;
    v24 = *(v0 + 315);
    *(v0 + 6) = *v7;
    *(v0 + 7) = v24;
    v0[16] = v0[317];
    outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  }

  lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
  swift_allocError();
  swift_willThrow();
  v25 = v0[1];
LABEL_28:

  return v25();
}

uint64_t MLS.InMemoryPersister.save(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v5 + 792) = v4;
  *(v5 + 784) = a3;
  *(v5 + 776) = a2;
  v6 = *(a1 + 80);
  *(v5 + 552) = *(a1 + 64);
  *(v5 + 568) = v6;
  *(v5 + 584) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v5 + 488) = *a1;
  *(v5 + 504) = v7;
  v8 = *(a1 + 48);
  *(v5 + 520) = *(a1 + 32);
  *(v5 + 536) = v8;
  v9 = a4[1];
  *(v5 + 800) = *a4;
  *(v5 + 808) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(incomingEvent:forGroup:clientIdentifier:), v10, 0);
}

void (*MLS.InMemoryPersister.save(incomingEvent:forGroup:clientIdentifier:)())(uint64_t, void)
{
  v1 = *(**(v0 + 792) + 160);
  v1();
  if (!*(v0 + 136))
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 792);
  v3 = outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  (v1)(v3);
  v4 = *(v0 + 16);
  v5 = *(v0 + 88);
  if (!v4)
  {
    *(v0 + 256) = 0;
    v26 = *(v0 + 40);
    *(v0 + 264) = *(v0 + 24);
    *(v0 + 280) = v26;
    v27 = *(v0 + 72);
    *(v0 + 296) = *(v0 + 56);
    *(v0 + 312) = v27;
    *(v0 + 328) = v5;
    v28 = *(v0 + 112);
    *(v0 + 336) = *(v0 + 96);
    *(v0 + 352) = v28;
    *(v0 + 368) = *(v0 + 128);
    outlined destroy of NSObject?(v0 + 256, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
LABEL_6:
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v29 = *(v0 + 8);
    goto LABEL_12;
  }

  v6 = *(v0 + 808);
  v7 = *(v0 + 800);
  v8 = *(v0 + 792);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  *(v0 + 256) = v4;
  v11 = *(v0 + 40);
  *(v0 + 264) = *(v0 + 24);
  *(v0 + 280) = v11;
  v12 = *(v0 + 72);
  *(v0 + 296) = *(v0 + 56);
  *(v0 + 312) = v12;
  *(v0 + 328) = v5;
  v13 = *(v0 + 96);
  v14 = *(v0 + 112);
  *(v0 + 368) = *(v0 + 128);
  *(v0 + 336) = v13;
  *(v0 + 352) = v14;
  outlined destroy of NSObject?(v0 + 256, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  v16 = *(v0 + 488);
  v15 = *(v0 + 496);
  *(v0 + 696) = v7;
  *(v0 + 704) = v6;
  *(v0 + 712) = v10;
  *(v0 + 720) = v9;
  *(v0 + 728) = v16;
  *(v0 + 736) = v15;
  v17 = *(*v8 + 176);

  v19 = v17(v0 + 744);
  if (*v18)
  {
    v20 = v18;
    v21 = *(v0 + 568);
    *(v0 + 440) = *(v0 + 552);
    *(v0 + 456) = v21;
    *(v0 + 472) = *(v0 + 584);
    v22 = *(v0 + 504);
    *(v0 + 376) = *(v0 + 488);
    *(v0 + 392) = v22;
    v23 = *(v0 + 536);
    *(v0 + 408) = *(v0 + 520);
    *(v0 + 424) = v23;
    *(v0 + 480) = v5;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 488, v0 + 592, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v24 = v20[10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v20[10];
    v20[10] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 376), (v0 + 696), isUniquelyReferenced_nonNull_native);
    outlined destroy of MLS.InMemoryPersister.GroupEventStoreID(v0 + 696);
    v20[10] = v33;
  }

  else
  {
    outlined destroy of MLS.InMemoryPersister.GroupEventStoreID(v0 + 696);
  }

  v19(v0 + 744, 0);
  v30 = *(v0 + 792);
  result = v17(v0 + 592);
  if (*v32)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    v32[9] = v5 + 1;
  }

  result(v0 + 592, 0);
  v29 = *(v0 + 8);
LABEL_12:

  return v29();
}

uint64_t MLS.InMemoryPersister.delete(incomingEvent:forGroup:clientIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5[41] = a2;
  v5[42] = a3;
  v6 = *a1;
  v7 = a1[1];
  v5[43] = v4;
  v5[44] = v6;
  v8 = *a4;
  v9 = a4[1];
  v5[45] = v7;
  v5[46] = v8;
  v5[47] = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.delete(incomingEvent:forGroup:clientIdentifier:), v10, 0);
}

uint64_t MLS.InMemoryPersister.delete(incomingEvent:forGroup:clientIdentifier:)()
{
  v17 = v0;
  (*(**(v0 + 344) + 160))();
  if (*(v0 + 16))
  {
    v2 = *(v0 + 368);
    v1 = *(v0 + 376);
    v4 = *(v0 + 352);
    v3 = *(v0 + 360);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    *(v0 + 248) = v2;
    *(v0 + 256) = v1;
    *(v0 + 264) = v7;
    *(v0 + 272) = v6;
    *(v0 + 280) = v4;
    *(v0 + 288) = v3;
    v8 = *(*v5 + 176);

    v9 = v8(v0 + 296);
    if (*v10)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v0 + 248, v16);
      outlined destroy of MLS.InMemoryPersister.GroupEventStoreID(v0 + 248);
      v11 = v16[2];
      *(v0 + 184) = v16[3];
      v12 = v16[5];
      *(v0 + 200) = v16[4];
      *(v0 + 216) = v12;
      *(v0 + 232) = v16[6];
      v13 = v16[1];
      *(v0 + 136) = v16[0];
      *(v0 + 152) = v13;
      *(v0 + 168) = v11;
      outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVSgMR);
    }

    else
    {
      outlined destroy of MLS.InMemoryPersister.GroupEventStoreID(v0 + 248);
    }

    v9(v0 + 296, 0);
    v14 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t MLS.InMemoryPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v5 + 168) = a2;
  *(v5 + 176) = a3;
  v6 = *a1;
  *(v5 + 184) = v4;
  *(v5 + 192) = v6;
  *(v5 + 200) = a1[1];
  *(v5 + 224) = *(a1 + 16);
  v7 = a4[1];
  *(v5 + 208) = *a4;
  *(v5 + 216) = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:), v8, 0);
}

uint64_t MLS.InMemoryPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)()
{
  (*(**(v0 + 184) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 216);
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v4 = *(*v2 + 176);

    v6 = v4(v0 + 136);
    if (*v5)
    {
      v8 = *(v0 + 208);
      v7 = *(v0 + 216);
      v9 = *(v0 + 224);
      v10 = *(v0 + 200);
      v11 = *(v0 + 192);
      v13 = *(v0 + 168);
      v12 = *(v0 + 176);
      v14 = v5[8];
      v22 = v6;
      v15 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v15[8];
      v15[8] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v9, v8, v7, v13, v12, isUniquelyReferenced_nonNull_native, v10);

      v17 = v15[8];
      v15[8] = v23;
      v6 = v22;
    }

    else
    {
      v19 = *(v0 + 216);
      v20 = *(v0 + 176);
    }

    v6(v0 + 136, 0);
    v18 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t MLS.InMemoryPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[49] = a3;
  v5[50] = v4;
  v5[47] = a1;
  v5[48] = a2;
  v6 = a4[1];
  v5[51] = *a4;
  v5[52] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)()
{
  v1 = (*(**(v0 + 400) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 400) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  v32 = *(v0 + 408);
  v31 = *(v0 + 416);
  v34 = *(v0 + 384);
  v33 = *(v0 + 392);
  v35 = *(v0 + 376);
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;

  specialized Dictionary.subscript.getter(v32, v31, v34, v33, v23, v35);
  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t MLS.InMemoryPersister.loadClientIdentifiersWithEvents()()
{
  *(v1 + 376) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadClientIdentifiersWithEvents(), v2, 0);
}

{
  v45 = v0;
  v1 = (*(**(v0 + 376) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 376) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;

  v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAL08IncomingL5EntryV_G_AJ22UniqueClientIdentifierVs5NeverOTg504_s15e16Messaging3MLSO17hij7C31loadr28IdentifiersWithEventsSayAC06q3H10s12VGyYaKFAhE17klM8IDVXEfU_Tf1cn_nTm(v31);

  v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAHGTt0g5Tf4g_n(v32);

  v35 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAL08IncomingL5EntryV_G_AJ22UniqueClientIdentifierVs5NeverOTg504_s15e16Messaging3MLSO17hij7C31loadr28IdentifiersWithEventsSayAC06q3H10s12VGyYaKFAhE17klM8IDVXEfU_Tf1cn_nTm(v34);
  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);

  v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAHGTt0g5Tf4g_n(v35);

  v37 = specialized Set.union<A>(_:)(v36, v33);
  v38 = v37;
  v39 = *(v37 + 16);
  if (v39)
  {
    v40 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_Tt1g5(*(v37 + 16), 0);
    v41 = specialized Sequence._copySequenceContents(initializing:)(&v44, v40 + 4, v39, v38);
    outlined consume of Set<MLS.UniqueClientIdentifier>.Iterator._Variant();
    if (v41 == v39)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v40 = MEMORY[0x277D84F90];
LABEL_8:
  v42 = *(v0 + 8);

  return v42(v40);
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Set._Variant.insert(_:)(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t MLS.InMemoryPersister.loadEvents(clientIdentifier:)(uint64_t a1, void *a2)
{
  v3[145] = v2;
  v3[144] = a1;
  v4 = a2[1];
  v3[146] = *a2;
  v3[147] = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v3[148] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadEvents(clientIdentifier:), v5, 0);
}

uint64_t MLS.InMemoryPersister.loadEvents(clientIdentifier:)()
{
  v278 = v0;
  v1 = (*(**(v0 + 1160) + 160))();
  v2 = *(v0 + 912);
  if (v2)
  {
    v3 = (v0 + 1024);
    v4 = (v0 + 1016);
    v5 = (v0 + 1008);
    v6 = (v0 + 1000);
    v7 = (v0 + 992);
    v8 = (v0 + 984);
    v9 = (v0 + 976);
    v10 = (v0 + 968);
    v11 = (v0 + 960);
    v12 = (v0 + 952);
    v13 = (v0 + 944);
    v14 = (v0 + 936);
    v15 = (v0 + 928);
    v16 = (v0 + 920);
  }

  else
  {
    (*(**(v0 + 1160) + 136))(v1);
    v3 = (v0 + 904);
    v4 = (v0 + 896);
    v5 = (v0 + 888);
    v6 = (v0 + 880);
    v7 = (v0 + 872);
    v8 = (v0 + 864);
    v9 = (v0 + 856);
    v10 = (v0 + 848);
    v11 = (v0 + 840);
    v12 = (v0 + 832);
    v13 = (v0 + 824);
    v14 = (v0 + 816);
    v15 = (v0 + 808);
    v2 = *(v0 + 792);
    v16 = (v0 + 800);
  }

  v17 = *v3;
  v248 = (v0 + 312);
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 1032) = v2;
  *(v0 + 1040) = v30;
  *(v0 + 1048) = v29;
  *(v0 + 1056) = v28;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = v26;
  *(v0 + 1080) = v25;
  *(v0 + 1088) = v24;
  *(v0 + 1096) = v23;
  *(v0 + 1104) = v22;
  *(v0 + 1112) = v21;
  *(v0 + 1120) = v20;
  *(v0 + 1128) = v19;
  *(v0 + 1136) = v18;
  *(v0 + 1144) = v17;
  v31 = -1 << *(v21 + 32);
  if (-v31 < 64)
  {
    v32 = ~(-1 << -v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v21 + 64);
  v34 = (63 - v31) >> 6;

  v226 = 0;
  v36 = 0;
  v234 = MEMORY[0x277D84F98];
  v230 = v20;
  while (v33)
  {
    v37 = v36;
LABEL_13:
    v38 = *(v0 + 1176);
    v39 = *(v0 + 1168);
    v40 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v41 = v40 | (v37 << 6);
    v42 = (*(v21 + 48) + 48 * v41);
    v43 = *v42;
    v44 = v42[1];
    v45 = v42[3];
    v244 = v42[2];
    v46 = (*(v21 + 56) + 112 * v41);
    v48 = v46[1];
    v47 = v46[2];
    *v248 = *v46;
    *(v0 + 328) = v48;
    *(v0 + 344) = v47;
    v49 = v46[6];
    v51 = v46[3];
    v50 = v46[4];
    *(v0 + 392) = v46[5];
    *(v0 + 408) = v49;
    *(v0 + 360) = v51;
    *(v0 + 376) = v50;
    v52 = v43 == v39 && v44 == v38;
    if (v52 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {

      outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(v248, v0 + 16);
      outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v226);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v262 = v234;
      v240 = specialized __RawDictionaryStorage.find<A>(_:)(v244, v45);
      v53 = *(v234 + 16);
      v238 = v54;
      v55 = (v54 & 1) == 0;
      result = v53 + v55;
      if (__OFADD__(v53, v55))
      {
        goto LABEL_140;
      }

      if (*(v234 + 24) >= result)
      {

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          result = specialized _NativeDictionary.copy()();
          v234 = v262;
        }

        if (v238)
        {
          goto LABEL_28;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, isUniquelyReferenced_nonNull_native);
        v234 = v262;
        v240 = specialized __RawDictionaryStorage.find<A>(_:)(v244, v45);
        if ((v238 & 1) != (v56 & 1))
        {
LABEL_128:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        if (v238)
        {
LABEL_28:

          v57 = v234;
          v62 = v240;
          goto LABEL_29;
        }
      }

      v57 = v234;
      *(v234 + 8 * (v240 >> 6) + 64) |= 1 << v240;
      v58 = (*(v234 + 48) + 16 * v240);
      *v58 = v244;
      v58[1] = v45;
      *(*(v234 + 56) + 8 * v240) = MEMORY[0x277D84F90];
      v59 = *(v234 + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_141;
      }

      v62 = v240;
      *(v234 + 16) = v61;
LABEL_29:
      v63 = *(v57 + 56);
      v64 = *(v63 + 8 * v62);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v63 + 8 * v62) = v64;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 16) + 1, 1, v64);
        v64 = result;
        *(v63 + 8 * v62) = result;
      }

      v66 = *(v64 + 16);
      v65 = *(v64 + 24);
      if (v66 >= v65 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v64);
        v64 = result;
        *(v63 + 8 * v62) = result;
      }

      *(v64 + 16) = v66 + 1;
      v67 = (v64 + 112 * v66);
      v68 = *v248;
      v69 = *(v0 + 344);
      v67[3] = *(v0 + 328);
      v67[4] = v69;
      v67[2] = v68;
      v70 = *(v0 + 360);
      v71 = *(v0 + 376);
      v72 = *(v0 + 408);
      v67[7] = *(v0 + 392);
      v67[8] = v72;
      v67[5] = v70;
      v67[6] = v71;
      v226 = specialized thunk for @callee_guaranteed () -> (@owned [MLS.InMemoryPersister.OutgoingEventEntry]);
      v36 = v37;
      v20 = v230;
    }

    else
    {
      v36 = v37;
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    if (v37 >= v34)
    {
      break;
    }

    v33 = *(v21 + 64 + 8 * v37);
    ++v36;
    if (v33)
    {
      goto LABEL_13;
    }
  }

  v73 = v234;
  v74 = v234 + 64;
  v75 = -1;
  v76 = -1 << *(v234 + 32);
  if (-v76 < 64)
  {
    v75 = ~(-1 << -v76);
  }

  v77 = v75 & *(v234 + 64);
  v78 = (63 - v76) >> 6;

  v79 = 0;
  v80 = MEMORY[0x277D84F98];
  for (i = v78; ; v78 = i)
  {
    v239 = v80;
    if (!v77)
    {
      break;
    }

    v86 = v79;
LABEL_44:
    v87 = __clz(__rbit64(v77)) | (v86 << 6);
    v88 = (*(v73 + 48) + 16 * v87);
    v89 = v88[1];
    v241 = v77;
    v245 = *v88;
    *&v262 = *(*(v73 + 56) + 8 * v87);
    swift_bridgeObjectRetain_n();

    specialized MutableCollection<>.sort(by:)(&v262);

    v90 = v262;
    v91 = *(v262 + 16);
    if (v91)
    {
      *&v262 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91, 0);
      v92 = v262;
      v93 = v91 - 1;
      for (j = 32; ; j += 112)
      {
        v95 = *(v0 + 1184);
        v97 = *(v90 + j + 16);
        v96 = *(v90 + j + 32);
        *(v0 + 16) = *(v90 + j);
        *(v0 + 32) = v97;
        *(v0 + 48) = v96;
        v98 = *(v90 + j + 96);
        v100 = *(v90 + j + 48);
        v99 = *(v90 + j + 64);
        *(v0 + 96) = *(v90 + j + 80);
        *(v0 + 112) = v98;
        *(v0 + 64) = v100;
        *(v0 + 80) = v99;
        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(v0 + 16, v248);
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          v101 = *(v0 + 1184);
          swift_task_reportUnexpectedExecutor();
        }

        *&v262 = v92;
        v103 = *(v92 + 16);
        v102 = *(v92 + 24);
        if (v103 >= v102 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1);
          v92 = v262;
        }

        *(v92 + 16) = v103 + 1;
        v104 = v92 + 104 * v103;
        v105 = *(v0 + 16);
        v106 = *(v0 + 48);
        *(v104 + 48) = *(v0 + 32);
        *(v104 + 64) = v106;
        *(v104 + 32) = v105;
        v107 = *(v0 + 64);
        v108 = *(v0 + 80);
        v109 = *(v0 + 96);
        *(v104 + 128) = *(v0 + 112);
        *(v104 + 96) = v108;
        *(v104 + 112) = v109;
        *(v104 + 80) = v107;
        if (!v93)
        {
          break;
        }

        --v93;
      }

      v73 = v234;
      v20 = v230;
    }

    else
    {

      v92 = MEMORY[0x277D84F90];
    }

    v110 = swift_isUniquelyReferenced_nonNull_native();
    *&v262 = v239;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v245, v89);
    v112 = v239[2];
    v113 = (v111 & 1) == 0;
    v60 = __OFADD__(v112, v113);
    v114 = v112 + v113;
    if (v60)
    {
      goto LABEL_136;
    }

    v115 = v111;
    if (v239[3] >= v114)
    {
      v117 = v241;
      if ((v110 & 1) == 0)
      {
        v121 = result;
        specialized _NativeDictionary.copy()();
        v117 = v241;
        result = v121;
        v73 = v234;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, v110);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v245, v89);
      if ((v115 & 1) != (v116 & 1))
      {
        goto LABEL_128;
      }

      v117 = v241;
    }

    v77 = (v117 - 1) & v117;
    if (v115)
    {
      v81 = v77;
      v82 = result;

      v83 = v262;
      v84 = *(v262 + 56);
      v85 = *(v84 + 8 * v82);
      *(v84 + 8 * v82) = v92;
      v77 = v81;

      v80 = v83;
    }

    else
    {
      v80 = v262;
      *(v262 + 8 * (result >> 6) + 64) |= 1 << result;
      v118 = (v80[6] + 16 * result);
      *v118 = v245;
      v118[1] = v89;
      *(v80[7] + 8 * result) = v92;
      v119 = v80[2];
      v60 = __OFADD__(v119, 1);
      v120 = v119 + 1;
      if (v60)
      {
        goto LABEL_138;
      }

      v80[2] = v120;
    }

    v79 = v86;
    v74 = v234 + 64;
  }

  while (1)
  {
    v86 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      goto LABEL_133;
    }

    if (v86 >= v78)
    {
      break;
    }

    v77 = *(v74 + 8 * v86);
    ++v79;
    if (v77)
    {
      goto LABEL_44;
    }
  }

  result = outlined destroy of MLS.InMemoryPersister.State(v0 + 1032);
  v225 = 0;
  v122 = 0;
  v123 = v20 + 64;
  v124 = -1;
  v125 = -1 << *(v20 + 32);
  if (-v125 < 64)
  {
    v124 = ~(-1 << -v125);
  }

  v126 = v124 & *(v20 + 64);
  v127 = (63 - v125) >> 6;
  v228 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v126)
    {
LABEL_71:
      v129 = __clz(__rbit64(v126));
      v126 &= v126 - 1;
      v130 = v129 | (v122 << 6);
      v131 = (*(v20 + 48) + 48 * v130);
      v132 = *v131;
      v133 = v131[1];
      v134 = v131[3];
      v246 = v131[2];
      v135 = (*(v20 + 56) + 296 * v130);
      memcpy((v0 + 16), v135, 0x128uLL);
      v136 = v135[3];
      v138 = *v135;
      v137 = v135[1];
      *(v0 + 640) = v135[2];
      *(v0 + 656) = v136;
      *(v0 + 608) = v138;
      *(v0 + 624) = v137;
      v139 = v135[7];
      v141 = v135[4];
      v140 = v135[5];
      *(v0 + 704) = v135[6];
      *(v0 + 720) = v139;
      *(v0 + 672) = v141;
      *(v0 + 688) = v140;
      v143 = v135[9];
      v142 = v135[10];
      v144 = v135[8];
      *(v0 + 784) = *(v135 + 176);
      *(v0 + 752) = v143;
      *(v0 + 768) = v142;
      *(v0 + 736) = v144;
      result = _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOg(v0 + 608);
      if (result == 1 || (*(v0 + 296) & 1) != 0)
      {
        continue;
      }

      if (v132 != *(v0 + 1168) || v133 != *(v0 + 1176))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16, v248);
      outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v225);
      v145 = swift_isUniquelyReferenced_nonNull_native();
      *&v262 = v228;
      v242 = specialized __RawDictionaryStorage.find<A>(_:)(v246, v134);
      v146 = *(v228 + 16);
      v236 = v147;
      v148 = (v147 & 1) == 0;
      result = v146 + v148;
      if (__OFADD__(v146, v148))
      {
        goto LABEL_144;
      }

      if (*(v228 + 24) >= result)
      {

        if ((v145 & 1) == 0)
        {
          result = specialized _NativeDictionary.copy()();
          v228 = v262;
        }

        if ((v236 & 1) == 0)
        {
LABEL_80:
          v150 = v228;
          *(v228 + 8 * (v242 >> 6) + 64) |= 1 << v242;
          v151 = (*(v228 + 48) + 16 * v242);
          *v151 = v246;
          v151[1] = v134;
          *(*(v228 + 56) + 8 * v242) = MEMORY[0x277D84F90];
          v152 = *(v228 + 16);
          v60 = __OFADD__(v152, 1);
          v153 = v152 + 1;
          if (v60)
          {
            goto LABEL_145;
          }

          v154 = v242;
          *(v228 + 16) = v153;
          goto LABEL_86;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, v145);
        v228 = v262;
        v242 = specialized __RawDictionaryStorage.find<A>(_:)(v246, v134);
        if ((v236 & 1) != (v149 & 1))
        {
          goto LABEL_128;
        }

        if ((v236 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      v150 = v228;
      v154 = v242;
LABEL_86:
      v155 = *(v150 + 56);
      v156 = *(v155 + 8 * v154);
      v157 = swift_isUniquelyReferenced_nonNull_native();
      *(v155 + 8 * v154) = v156;
      if ((v157 & 1) == 0)
      {
        v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v156 + 2) + 1, 1, v156);
        *(v155 + 8 * v154) = v156;
      }

      v159 = *(v156 + 2);
      v158 = *(v156 + 3);
      if (v159 >= v158 >> 1)
      {
        v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v156);
        *(v155 + 8 * v154) = v156;
      }

      *(v156 + 2) = v159 + 1;
      result = memcpy(&v156[296 * v159 + 32], (v0 + 16), 0x128uLL);
      v225 = specialized thunk for @callee_guaranteed () -> (@owned [MLS.InMemoryPersister.OutgoingEventEntry]);
      v20 = v230;
      continue;
    }

    break;
  }

  while (1)
  {
    v128 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      break;
    }

    if (v128 >= v127)
    {

      v160 = v228;
      v161 = v228 + 64;
      v162 = -1;
      v163 = -1 << *(v228 + 32);
      if (-v163 < 64)
      {
        v162 = ~(-1 << -v163);
      }

      v164 = v162 & *(v228 + 64);
      v165 = (63 - v163) >> 6;

      v166 = 0;
      v167 = MEMORY[0x277D84F98];
      v227 = v165;
      v168 = v0 + 312;
      if (v164)
      {
        goto LABEL_96;
      }

LABEL_97:
      while (1)
      {
        v174 = v166 + 1;
        if (__OFADD__(v166, 1))
        {
          goto LABEL_135;
        }

        if (v174 >= v165)
        {
          v222 = *(v0 + 1152);
          v223 = v167;

          outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v226);
          outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v225);
          *v222 = v223;
          v222[1] = v239;
          v224 = *(v0 + 8);

          return v224();
        }

        v164 = *(v161 + 8 * v174);
        ++v166;
        if (v164)
        {
          v233 = v167;
          while (1)
          {
            v229 = v174;
            v231 = v164;
            v175 = __clz(__rbit64(v164)) | (v174 << 6);
            v176 = (*(v160 + 48) + 16 * v175);
            v177 = v176[1];
            v237 = *v176;
            *&v262 = *(*(v160 + 56) + 8 * v175);
            swift_bridgeObjectRetain_n();
            v243 = v177;

            specialized MutableCollection<>.sort(by:)(&v262);

            v178 = v262;
            v179 = *(v262 + 16);
            if (v179)
            {
              break;
            }

            v209 = MEMORY[0x277D84F90];
LABEL_115:
            v210 = swift_isUniquelyReferenced_nonNull_native();
            *&v262 = v233;
            result = specialized __RawDictionaryStorage.find<A>(_:)(v237, v243);
            v212 = v233[2];
            v213 = (v211 & 1) == 0;
            v60 = __OFADD__(v212, v213);
            v214 = v212 + v213;
            if (v60)
            {
              goto LABEL_137;
            }

            v215 = v211;
            if (v233[3] >= v214)
            {
              v217 = v231;
              if ((v210 & 1) == 0)
              {
                v221 = result;
                specialized _NativeDictionary.copy()();
                v217 = v231;
                result = v221;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v214, v210);
              result = specialized __RawDictionaryStorage.find<A>(_:)(v237, v243);
              if ((v215 & 1) != (v216 & 1))
              {
                goto LABEL_128;
              }

              v217 = v231;
            }

            v164 = (v217 - 1) & v217;
            v165 = v227;
            v160 = v228;
            if (v215)
            {
              v169 = v164;
              v170 = result;

              v171 = v262;
              v172 = *(v262 + 56);
              v173 = *(v172 + 8 * v170);
              *(v172 + 8 * v170) = v209;
              v164 = v169;

              v167 = v171;
              v166 = v229;
              v168 = v0 + 312;
              if (!v169)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v167 = v262;
              *(v262 + 8 * (result >> 6) + 64) |= 1 << result;
              v218 = (v167[6] + 16 * result);
              *v218 = v237;
              v218[1] = v243;
              *(v167[7] + 8 * result) = v209;
              v219 = v167[2];
              v60 = __OFADD__(v219, 1);
              v220 = v219 + 1;
              if (v60)
              {
                goto LABEL_139;
              }

              v167[2] = v220;
              v166 = v229;
              v168 = v0 + 312;
              if (!v164)
              {
                goto LABEL_97;
              }
            }

LABEL_96:
            v233 = v167;
            v174 = v166;
          }

          v249 = MEMORY[0x277D84F90];
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v179, 0);
          if (!*(v178 + 16))
          {
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          v180 = 0;
          v181 = v249;
          v247 = v179 - 1;
          v182 = 32;
          while (1)
          {
            v183 = v181;
            v184 = *(v0 + 1184);
            memcpy((v0 + 16), (v178 + v182), 0x128uLL);
            outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16, v168);
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              v185 = *(v0 + 1184);
              swift_task_reportUnexpectedExecutor();
            }

            v186 = *(v0 + 160);
            *(v168 + 128) = *(v0 + 144);
            *(v168 + 144) = v186;
            *(v168 + 160) = *(v0 + 176);
            *(v168 + 176) = *(v0 + 192);
            v187 = *(v0 + 96);
            *(v168 + 64) = *(v0 + 80);
            *(v168 + 80) = v187;
            v188 = *(v0 + 128);
            *(v168 + 96) = *(v0 + 112);
            *(v168 + 112) = v188;
            v189 = *(v0 + 32);
            *v168 = *(v0 + 16);
            *(v168 + 16) = v189;
            v190 = *(v0 + 64);
            *(v168 + 32) = *(v0 + 48);
            *(v168 + 48) = v190;
            result = _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOg(v168);
            if (result == 1)
            {
              goto LABEL_143;
            }

            v192 = *(v0 + 280);
            v191 = *(v0 + 288);
            v258 = *(v168 + 128);
            v259 = *(v168 + 144);
            v260 = *(v168 + 160);
            v261[0] = *(v168 + 176);
            v254 = *(v168 + 64);
            v255 = *(v168 + 80);
            v256 = *(v168 + 96);
            v257 = *(v168 + 112);
            v250 = *v168;
            v251 = *(v168 + 16);
            v252 = *(v168 + 32);
            v253 = *(v168 + 48);
            *&v261[24] = *(v0 + 216);
            *&v261[40] = *(v0 + 232);
            *&v261[56] = *(v0 + 248);
            v193 = *(v0 + 272);
            *&v261[72] = *(v0 + 264);
            *&v261[8] = *(v0 + 200);
            if (*(v0 + 296))
            {
              goto LABEL_142;
            }

            outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 608, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgMR);
            outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 608, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
            result = outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16);
            v264 = v252;
            v265 = v253;
            v263 = v251;
            v268 = v256;
            v269 = v257;
            v266 = v254;
            v267 = v255;
            v272 = v260;
            v273 = *v261;
            v270 = v258;
            v271 = v259;
            v276 = *&v261[48];
            v277 = *&v261[64];
            v274 = *&v261[16];
            v275 = *&v261[32];
            v181 = v183;
            v195 = *(v183 + 16);
            v194 = *(v183 + 24);
            v262 = v250;
            if (v195 >= v194 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v194 > 1), v195 + 1, 1);
              v181 = v183;
            }

            *(v181 + 16) = v195 + 1;
            v196 = v181 + 280 * v195;
            v197 = v262;
            v198 = v263;
            v199 = v265;
            *(v196 + 64) = v264;
            *(v196 + 80) = v199;
            *(v196 + 32) = v197;
            *(v196 + 48) = v198;
            v200 = v266;
            v201 = v267;
            v202 = v269;
            *(v196 + 128) = v268;
            *(v196 + 144) = v202;
            *(v196 + 96) = v200;
            *(v196 + 112) = v201;
            v203 = v270;
            v204 = v271;
            v205 = v273;
            *(v196 + 192) = v272;
            *(v196 + 208) = v205;
            *(v196 + 160) = v203;
            *(v196 + 176) = v204;
            v206 = v274;
            v207 = v275;
            v208 = v277;
            *(v196 + 256) = v276;
            *(v196 + 272) = v208;
            *(v196 + 224) = v206;
            *(v196 + 240) = v207;
            *(v196 + 288) = v193;
            *(v196 + 296) = v192;
            *(v196 + 304) = v191;
            if (v247 == v180)
            {
              v209 = v181;

              v161 = v228 + 64;
              goto LABEL_115;
            }

            v182 += 296;
            ++v180;
            v168 = v0 + 312;
            if (v180 >= *(v178 + 16))
            {
              goto LABEL_131;
            }
          }
        }
      }
    }

    v126 = *(v123 + 8 * v128);
    ++v122;
    if (v126)
    {
      v122 = v128;
      goto LABEL_71;
    }
  }

LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

uint64_t MLS.InMemoryPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1, void *a2)
{
  v3[145] = v2;
  v3[144] = a1;
  v4 = a2[1];
  v3[146] = *a2;
  v3[147] = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v3[148] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadRetriableEventStates(clientIdentifier:), v5, 0);
}

uint64_t MLS.InMemoryPersister.loadRetriableEventStates(clientIdentifier:)()
{
  v138 = v0;
  v1 = (*(**(v0 + 1160) + 160))();
  v2 = *(v0 + 912);
  if (v2)
  {
    v3 = (v0 + 1024);
    v4 = (v0 + 1016);
    v5 = (v0 + 1008);
    v6 = (v0 + 1000);
    v7 = (v0 + 992);
    v8 = (v0 + 984);
    v9 = (v0 + 976);
    v10 = (v0 + 968);
    v11 = (v0 + 960);
    v12 = (v0 + 952);
    v13 = (v0 + 944);
    v14 = (v0 + 936);
    v15 = (v0 + 928);
    v16 = (v0 + 920);
  }

  else
  {
    (*(**(v0 + 1160) + 136))(v1);
    v3 = (v0 + 904);
    v4 = (v0 + 896);
    v5 = (v0 + 888);
    v6 = (v0 + 880);
    v7 = (v0 + 872);
    v8 = (v0 + 864);
    v9 = (v0 + 856);
    v10 = (v0 + 848);
    v11 = (v0 + 840);
    v12 = (v0 + 832);
    v13 = (v0 + 824);
    v14 = (v0 + 816);
    v15 = (v0 + 808);
    v2 = *(v0 + 792);
    v16 = (v0 + 800);
  }

  v17 = v0 + 312;
  v18 = *v3;
  v19 = *v4;
  v20 = *v5;
  v21 = *v6;
  v22 = *v7;
  v23 = *v8;
  v24 = *v9;
  v25 = *v10;
  v26 = *v11;
  v27 = *v12;
  v28 = *v13;
  v29 = *v14;
  v30 = *v15;
  v31 = *v16;
  *(v0 + 1032) = v2;
  *(v0 + 1040) = v31;
  *(v0 + 1048) = v30;
  *(v0 + 1056) = v29;
  *(v0 + 1064) = v28;
  *(v0 + 1072) = v27;
  *(v0 + 1080) = v26;
  *(v0 + 1088) = v25;
  *(v0 + 1096) = v24;
  *(v0 + 1104) = v23;
  *(v0 + 1112) = v22;
  *(v0 + 1120) = v21;
  *(v0 + 1128) = v20;
  *(v0 + 1136) = v19;
  *(v0 + 1144) = v18;

  result = outlined destroy of MLS.InMemoryPersister.State(v0 + 1032);
  v120 = 0;
  v33 = 0;
  v34 = -1;
  v35 = -1 << *(v21 + 32);
  if (-v35 < 64)
  {
    v34 = ~(-1 << -v35);
  }

  v36 = v34 & *(v21 + 64);
  v122 = MEMORY[0x277D84F98];
  v37 = (63 - v35) >> 6;
  while (1)
  {
    while (1)
    {
      if (!v36)
      {
        while (1)
        {
          v38 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          if (v38 >= v37)
          {
            break;
          }

          v36 = *(v21 + 64 + 8 * v38);
          ++v33;
          if (v36)
          {
            v33 = v38;
            goto LABEL_12;
          }
        }

        v71 = v122;
        v72 = v122 + 64;
        v73 = -1;
        v74 = -1 << *(v122 + 32);
        if (-v74 < 64)
        {
          v73 = ~(-1 << -v74);
        }

        v75 = v73 & *(v122 + 64);
        v76 = (63 - v74) >> 6;

        v77 = 0;
        v125 = MEMORY[0x277D84F98];
        v121 = v76;
        if (v75)
        {
          goto LABEL_37;
        }

LABEL_38:
        while (1)
        {
          v81 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            break;
          }

          if (v81 >= v76)
          {
            v117 = *(v0 + 1152);

            outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v120);
            *v117 = v125;
            v118 = *(v0 + 8);

            return v118();
          }

          v75 = *(v72 + 8 * v81);
          ++v77;
          if (v75)
          {
            while (1)
            {
              v82 = __clz(__rbit64(v75)) | (v81 << 6);
              v83 = (*(v71 + 48) + 16 * v82);
              v84 = v83[1];
              v127 = *v83;
              *&v134 = *(*(v71 + 56) + 8 * v82);
              swift_bridgeObjectRetain_n();
              v129 = v84;

              specialized MutableCollection<>.sort(by:)(&v134);
              v123 = v81;
              v124 = v75;

              v85 = v134;
              v86 = *(v134 + 16);
              if (v86)
              {
                break;
              }

              v88 = MEMORY[0x277D84F90];
LABEL_54:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v134 = v125;
              result = specialized __RawDictionaryStorage.find<A>(_:)(v127, v129);
              v106 = v125[2];
              v107 = (v105 & 1) == 0;
              v64 = __OFADD__(v106, v107);
              v108 = v106 + v107;
              if (v64)
              {
                goto LABEL_73;
              }

              v109 = v105;
              if (v125[3] >= v108)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v115 = v17;
                  v116 = result;
                  specialized _NativeDictionary.copy()();
                  result = v116;
                  v17 = v115;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v108, isUniquelyReferenced_nonNull_native);
                result = specialized __RawDictionaryStorage.find<A>(_:)(v127, v129);
                if ((v109 & 1) != (v110 & 1))
                {
                  goto LABEL_67;
                }
              }

              v75 = (v124 - 1) & v124;
              if (v109)
              {
                v78 = result;

                v125 = v134;
                v79 = *(v134 + 56);
                v80 = *(v79 + 8 * v78);
                *(v79 + 8 * v78) = v88;

                v77 = v123;
                if (!v75)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v111 = v134;
                *(v134 + 8 * (result >> 6) + 64) |= 1 << result;
                v112 = (v111[6] + 16 * result);
                *v112 = v127;
                v112[1] = v129;
                *(v111[7] + 8 * result) = v88;
                v113 = v111[2];
                v64 = __OFADD__(v113, 1);
                v114 = v113 + 1;
                if (v64)
                {
                  goto LABEL_74;
                }

                v125 = v111;
                v111[2] = v114;
                v77 = v123;
                if (!v75)
                {
                  goto LABEL_38;
                }
              }

LABEL_37:
              v81 = v77;
            }

            v133 = MEMORY[0x277D84F90];
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86, 0);
            if (!*(v85 + 16))
            {
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

            v87 = 0;
            v88 = v133;
            v132 = v85;
            v89 = 32;
            while (1)
            {
              v90 = *(v0 + 1184);
              memcpy((v0 + 16), (v85 + v89), 0x128uLL);
              outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16, v17);
              result = swift_task_isCurrentExecutor();
              if ((result & 1) == 0)
              {
                v91 = *(v0 + 1184);
                result = swift_task_reportUnexpectedExecutor();
              }

              v93 = *(v0 + 200);
              v92 = *(v0 + 208);
              v94 = *(v0 + 232);
              v134 = *(v0 + 216);
              v135 = v94;
              v136 = *(v0 + 248);
              v137 = *(v0 + 264);
              if (!v92)
              {
                goto LABEL_75;
              }

              v95 = *(v0 + 216);
              v96 = *(v0 + 248);
              *(v17 + 32) = *(v0 + 232);
              *(v17 + 48) = v96;
              *(v17 + 64) = *(v0 + 264);
              *v17 = *(v0 + 200);
              *(v17 + 16) = v95;
              v97 = v17;
              outlined init with copy of MLS.OutgoingEventState(v17, v0 + 608);
              result = outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16);
              v99 = *(v133 + 16);
              v98 = *(v133 + 24);
              if (v99 >= v98 >> 1)
              {
                result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
              }

              *(v133 + 16) = v99 + 1;
              v100 = v133 + 72 * v99;
              *(v100 + 32) = v93;
              *(v100 + 40) = v92;
              v101 = v134;
              v102 = v135;
              v103 = v136;
              *(v100 + 96) = v137;
              *(v100 + 64) = v102;
              *(v100 + 80) = v103;
              *(v100 + 48) = v101;
              if (v86 - 1 == v87)
              {

                v17 = v97;
                v72 = v122 + 64;
                v71 = v122;
                v76 = v121;
                goto LABEL_54;
              }

              v85 = v132;
              v89 += 296;
              ++v87;
              v17 = v97;
              if (v87 >= *(v132 + 16))
              {
                goto LABEL_70;
              }
            }
          }
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        return result;
      }

LABEL_12:
      v39 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v40 = v39 | (v33 << 6);
      v41 = (*(v21 + 48) + 48 * v40);
      v42 = *v41;
      v43 = v41[1];
      v130 = v41[2];
      v131 = v41[3];
      v44 = (*(v21 + 56) + 296 * v40);
      memcpy((v0 + 16), v44, 0x128uLL);
      v45 = v44[3];
      v47 = *v44;
      v46 = v44[1];
      *(v0 + 640) = v44[2];
      *(v0 + 656) = v45;
      *(v0 + 608) = v47;
      *(v0 + 624) = v46;
      v48 = v44[7];
      v50 = v44[4];
      v49 = v44[5];
      *(v0 + 704) = v44[6];
      *(v0 + 720) = v48;
      *(v0 + 672) = v50;
      *(v0 + 688) = v49;
      v52 = v44[9];
      v51 = v44[10];
      v53 = v44[8];
      *(v0 + 784) = *(v44 + 176);
      *(v0 + 752) = v52;
      *(v0 + 768) = v51;
      *(v0 + 736) = v53;
      result = _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOg(v0 + 608);
      if (result == 1 && *(v0 + 208))
      {
        if (v42 == *(v0 + 1168) && v43 == *(v0 + 1176))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }
      }
    }

    outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16, v17);
    outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v120);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *&v134 = v122;
    v128 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v131);
    v55 = *(v122 + 16);
    v126 = v56;
    v57 = (v56 & 1) == 0;
    result = v55 + v57;
    if (__OFADD__(v55, v57))
    {
      goto LABEL_76;
    }

    if (*(v122 + 24) < result)
    {
      break;
    }

    if ((v54 & 1) == 0)
    {
      result = specialized _NativeDictionary.copy()();
      v122 = v134;
    }

    v60 = v128;
    if (v126)
    {
LABEL_26:

      v61 = v122;
      goto LABEL_27;
    }

LABEL_21:
    v61 = v122;
    *(v122 + 8 * (v60 >> 6) + 64) |= 1 << v60;
    v62 = (*(v122 + 48) + 16 * v60);
    *v62 = v130;
    v62[1] = v131;
    *(*(v122 + 56) + 8 * v60) = MEMORY[0x277D84F90];
    v63 = *(v122 + 16);
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_77;
    }

    *(v122 + 16) = v65;
LABEL_27:
    v66 = *(v61 + 56);
    v67 = *(v66 + 8 * v60);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *(v66 + 8 * v60) = v67;
    v119 = v17;
    if ((v68 & 1) == 0)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 2) + 1, 1, v67);
      *(v66 + 8 * v60) = v67;
    }

    v70 = *(v67 + 2);
    v69 = *(v67 + 3);
    if (v70 >= v69 >> 1)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v67);
      *(v66 + 8 * v60) = v67;
    }

    *(v67 + 2) = v70 + 1;
    result = memcpy(&v67[296 * v70 + 32], (v0 + 16), 0x128uLL);
    v120 = specialized thunk for @callee_guaranteed () -> (@owned [MLS.InMemoryPersister.OutgoingEventEntry]);
    v17 = v119;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, v54);
  v122 = v134;
  v58 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v131);
  if ((v126 & 1) == (v59 & 1))
  {
    v60 = v58;

    if (v126)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

LABEL_67:

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t MLS.InMemoryPersister.save(swiftMLSClientID:forIdentifier:)(uint64_t a1, uint64_t *a2)
{
  v3[21] = a1;
  v3[22] = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  v3[23] = v6;
  v3[24] = v7;
  v3[25] = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(swiftMLSClientID:forIdentifier:), v9, 0);
}

uint64_t MLS.InMemoryPersister.save(swiftMLSClientID:forIdentifier:)()
{
  (*(**(v0 + 176) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 176);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v2 = (*(*v1 + 176))(v0 + 136);
    if (*v3)
    {
      v5 = *(v0 + 192);
      v4 = *(v0 + 200);
      v6 = *(v0 + 184);
      v7 = *(v0 + 168);
      v8 = type metadata accessor for UUID();
      v9 = *(v8 - 8);
      (*(v9 + 16))(v6, v7, v8);
      (*(v9 + 56))(v6, 0, 1, v8);

      specialized Dictionary.subscript.setter(v6, v5, v4);
    }

    v2(v0 + 136, 0);
    v10 = *(v0 + 184);

    v11 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 184);
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t MLS.InMemoryPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1, void *a2)
{
  v3[47] = a1;
  v3[48] = v2;
  v4 = a2[1];
  v3[49] = *a2;
  v3[50] = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadSwiftMLSClientID(identifier:), v5, 0);
}

uint64_t MLS.InMemoryPersister.loadSwiftMLSClientID(identifier:)()
{
  v1 = (*(**(v0 + 384) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 384) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  if (*(v2 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 392), *(v0 + 400)), (v32 & 1) != 0))
  {
    v33 = v31;
    v34 = *(v0 + 376);
    v35 = *(v2 + 56);
    v36 = type metadata accessor for UUID();
    v37 = *(v36 - 8);
    (*(v37 + 16))(v34, v35 + *(v37 + 72) * v33, v36);
    outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
    v38 = 0;
  }

  else
  {
    outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
    v36 = type metadata accessor for UUID();
    v37 = *(v36 - 8);
    v38 = 1;
  }

  (*(v37 + 56))(*(v0 + 376), v38, 1, v36);
  v39 = *(v0 + 8);

  return v39();
}

uint64_t MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6[55] = a3;
  v6[56] = a4;
  v6[53] = a1;
  v6[54] = a2;
  v7 = *a5;
  v8 = a5[1];
  v6[57] = v5;
  v6[58] = v7;
  v6[59] = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:), v9, 0);
}

uint64_t MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)()
{
  v1 = v0[59];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v5 = v0[55];
  v6 = v0[53];
  v0[47] = v0[58];
  v0[48] = v1;
  v0[49] = v6;
  v0[50] = v4;
  v0[51] = v5;
  v0[52] = v3;
  v7 = *(*v2 + 160);

  v9 = v7(v8);
  v10 = v0[17];
  if (v10)
  {
    v11 = v0 + 31;
    v12 = v0 + 30;
    v13 = v0 + 29;
    v14 = v0 + 28;
    v15 = v0 + 27;
    v16 = v0 + 26;
    v17 = v0 + 25;
    v18 = v0 + 24;
    v19 = v0 + 23;
    v20 = v0 + 22;
    v21 = v0 + 21;
    v22 = v0 + 20;
    v23 = v0 + 19;
    v24 = v0 + 18;
  }

  else
  {
    (*(*v0[57] + 136))(v9);
    v11 = v0 + 16;
    v12 = v0 + 15;
    v13 = v0 + 14;
    v14 = v0 + 13;
    v15 = v0 + 12;
    v16 = v0 + 11;
    v17 = v0 + 10;
    v18 = v0 + 9;
    v19 = v0 + 8;
    v20 = v0 + 7;
    v21 = v0 + 6;
    v22 = v0 + 5;
    v23 = v0 + 4;
    v10 = v0[2];
    v24 = v0 + 3;
  }

  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  v31 = *v17;
  v32 = *v18;
  v33 = *v19;
  v34 = *v20;
  v35 = *v21;
  v36 = *v22;
  v37 = *v23;
  v38 = *v24;
  v0[32] = v10;
  v0[33] = v38;
  v0[34] = v37;
  v0[35] = v36;
  v0[36] = v35;
  v0[37] = v34;
  v0[38] = v33;
  v0[39] = v32;
  v0[40] = v31;
  v0[41] = v30;
  v0[42] = v29;
  v0[43] = v28;
  v0[44] = v27;
  v0[45] = v26;
  v0[46] = v25;
  if (*(v32 + 16))
  {
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + 47);
    v41 = v40;
    outlined destroy of MLS.InMemoryPersister.GroupMessageStoreID((v0 + 47));
    if (v41)
    {
      v42 = 0;
      v43 = *(*(v32 + 56) + 8 * v39);
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of MLS.InMemoryPersister.GroupMessageStoreID((v0 + 47));
  }

  v43 = 0;
  v42 = 1;
LABEL_9:
  outlined destroy of MLS.InMemoryPersister.State((v0 + 32));
  v44 = v0[1];

  return v44(v43, v42);
}

uint64_t MLS.InMemoryPersister.save(retryCount:forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7[31] = a5;
  v7[32] = v6;
  v7[29] = a3;
  v7[30] = a4;
  v7[27] = a1;
  v7[28] = a2;
  v8 = a6[1];
  v7[33] = *a6;
  v7[34] = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(retryCount:forGroup:messageID:clientIdentifier:), v9, 0);
}

uint64_t MLS.InMemoryPersister.save(retryCount:forGroup:messageID:clientIdentifier:)()
{
  (*(**(v0 + 256) + 160))();
  if (*(v0 + 16))
  {
    v2 = *(v0 + 264);
    v1 = *(v0 + 272);
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    v7 = *(v0 + 224);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    *(v0 + 136) = v2;
    *(v0 + 144) = v1;
    *(v0 + 152) = v7;
    *(v0 + 160) = v5;
    *(v0 + 168) = v6;
    *(v0 + 176) = v4;
    v8 = *(*v3 + 176);

    v10 = v8(v0 + 184);
    if (*v9)
    {
      v11 = *(v0 + 216);
      v12 = v9[7];
      v13 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v13[7];
      v13[7] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, (v0 + 136), isUniquelyReferenced_nonNull_native);
      outlined destroy of MLS.InMemoryPersister.GroupMessageStoreID(v0 + 136);
      v15 = v13[7];
      v13[7] = v18;
    }

    else
    {
      outlined destroy of MLS.InMemoryPersister.GroupMessageStoreID(v0 + 136);
    }

    v10(v0 + 184, 0);
    v16 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t MLS.InMemoryPersister.read(clientUUID:)(uint64_t a1)
{
  *(v2 + 376) = a1;
  *(v2 + 384) = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.read(clientUUID:), v3, 0);
}

uint64_t MLS.InMemoryPersister.read(clientUUID:)()
{
  v1 = (*(**(v0 + 384) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 384) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  if (*(v19 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 376)), (v32 & 1) != 0))
  {
    v33 = (*(v19 + 56) + 16 * v31);
    v35 = *v33;
    v34 = v33[1];
    outlined copy of Data._Representation(*v33, v34);
  }

  else
  {
    v35 = 0;
    v34 = 0xF000000000000000;
  }

  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v36 = *(v0 + 8);

  return v36(v35, v34);
}

uint64_t MLS.InMemoryPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.write(clientUUID:clientState:), v5, 0);
}

uint64_t MLS.InMemoryPersister.write(clientUUID:clientState:)()
{
  (*(**(v0 + 192) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 192);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v3 = (*(*v1 + 176))(v0 + 136);
    if (*v2)
    {
      v4 = v2;
      v6 = *(v0 + 176);
      v5 = *(v0 + 184);
      v7 = *(v0 + 168);
      outlined copy of Data._Representation(v6, v5);
      v8 = v4[12];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v4[12];
      v4[12] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v5, v7, isUniquelyReferenced_nonNull_native);
      v4[12] = v12;
    }

    v3(v0 + 136, 0);
    v10 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t MLS.InMemoryPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(_OWORD *a1, void *a2)
{
  *(v3 + 376) = v2;
  *(v3 + 384) = *a1;
  v4 = a2[1];
  *(v3 + 400) = *a2;
  *(v3 + 408) = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:), v5, 0);
}

uint64_t MLS.InMemoryPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)()
{
  v1 = (*(**(v0 + 376) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 376) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  v31 = *(v0 + 408);
  v33 = *(v0 + 384);
  v32 = *(v0 + 392);
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  v34 = *(v18 + 16);

  outlined copy of Data._Representation(v33, v32);
  if (v34 && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 400), *(v0 + 408), *(v0 + 384), *(v0 + 392)), (v36 & 1) != 0))
  {
    v37 = (*(v18 + 56) + 16 * v35);
    v39 = *v37;
    v38 = v37[1];
    outlined copy of Data._Representation(*v37, v38);
  }

  else
  {
    v39 = 0;
    v38 = 0xF000000000000000;
  }

  v40 = *(v0 + 408);
  v42 = *(v0 + 384);
  v41 = *(v0 + 392);

  outlined consume of Data._Representation(v42, v41);
  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v43 = *(v0 + 8);

  return v43(v39, v38);
}

uint64_t MLS.InMemoryPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(_OWORD *a1, void *a2)
{
  *(v3 + 424) = v2;
  v4 = a1[1];
  *(v3 + 432) = *a1;
  *(v3 + 448) = v4;
  v5 = a2[1];
  *(v3 + 464) = *a2;
  *(v3 + 472) = v5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:), v6, 0);
}

uint64_t MLS.InMemoryPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)()
{
  v1 = (*(**(v0 + 424) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 424) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  v32 = *(v0 + 464);
  v31 = *(v0 + 472);
  v33 = *(v0 + 456);
  v34 = *(v0 + 432);
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  *(v0 + 376) = v32;
  *(v0 + 384) = v31;
  *(v0 + 392) = v34;
  v43 = *(v0 + 440);
  *(v0 + 400) = v43;
  *(v0 + 416) = v33;
  v35 = *(v17 + 16);

  outlined copy of Data._Representation(v34, v43);
  if (v35 && (v36 = specialized __RawDictionaryStorage.find<A>(_:)((v0 + 376)), (v37 & 1) != 0))
  {
    v38 = (*(v17 + 56) + 16 * v36);
    v40 = *v38;
    v39 = v38[1];
    outlined copy of Data._Representation(*v38, v39);
  }

  else
  {
    v40 = 0;
    v39 = 0xF000000000000000;
  }

  outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v0 + 376);
  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v41 = *(v0 + 8);

  return v41(v40, v39);
}

uint64_t MLS.InMemoryPersister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1, void *a2)
{
  *(v3 + 696) = v2;
  v4 = *(a1 + 16);
  *(v3 + 376) = *a1;
  *(v3 + 392) = v4;
  *(v3 + 408) = *(a1 + 32);
  *(v3 + 424) = *(a1 + 48);
  v5 = a2[1];
  *(v3 + 704) = *a2;
  *(v3 + 712) = v5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.write(swiftMLSGroupWrite:clientIdentifier:), v6, 0);
}

uint64_t MLS.InMemoryPersister.write(swiftMLSGroupWrite:clientIdentifier:)()
{
  v153 = v0;
  v1 = *(**(v0 + 696) + 160);
  v1();
  if (!*(v0 + 256))
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v21 = *(v0 + 8);
LABEL_60:

    return v21();
  }

  v148 = v0 + 432;
  v149 = v1;
  v2 = *(v0 + 712);
  v3 = *(v0 + 696);
  outlined destroy of NSObject?(v0 + 256, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  v145 = (v0 + 376);
  *(v0 + 680) = *(v0 + 376);
  v132 = *(v0 + 680);
  v133 = *(v0 + 688);
  *(v0 + 664) = *(v0 + 392);
  v139 = *(v0 + 664);
  v4 = *(v0 + 672);
  v5 = *(*v3 + 176);

  v144 = v0;
  v6 = *(v0 + 696);
  v151 = (v0 + 680);
  outlined init with copy of Data(v0 + 680, v0 + 136);
  v142 = v0 + 136;
  v143 = v5;
  if (v4 >> 60 == 15)
  {
    v7 = v5(v0 + 136);
    v9 = v132;
    if (*v8)
    {
      v10 = *(v0 + 712);
      v11 = *(v0 + 704);

      outlined copy of Data._Representation(v132, v133);
      specialized Dictionary._Variant.removeValue(forKey:)(v11, v10, v132, v133, &v152);

      outlined consume of Data._Representation(v132, v133);
      outlined consume of Data?(v152, *(&v152 + 1));
    }

    v12 = v7(v142, 0);
    v13 = *(v0 + 696);
    (v149)(v12);
    v14 = *(v0 + 16);
    v15 = *(v0 + 128);
    if (v14)
    {
      *(v0 + 136) = v14;
      v16 = *(v0 + 72);
      v17 = *(v0 + 104);
      *(v0 + 208) = *(v0 + 88);
      *(v0 + 224) = v17;
      v18 = *(v0 + 120);
      v19 = *(v0 + 40);
      *(v0 + 144) = *(v0 + 24);
      *(v0 + 160) = v19;
      *(v0 + 176) = *(v0 + 56);
      *(v0 + 192) = v16;
      *(v0 + 240) = v18;
      *(v0 + 248) = v15;

      outlined destroy of NSObject?(v142, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      outlined init with copy of MLS.WriteGroupData(v145, v148);
      v20 = specialized _NativeDictionary.filter(_:)(v15, v145);
      outlined destroy of MLS.WriteGroupData(v145);
    }

    else
    {
      *(v0 + 136) = 0;
      v122 = *(v0 + 72);
      v123 = *(v0 + 104);
      *(v0 + 208) = *(v0 + 88);
      *(v0 + 224) = v123;
      v124 = *(v0 + 120);
      v125 = *(v0 + 40);
      *(v0 + 144) = *(v0 + 24);
      *(v0 + 160) = v125;
      *(v0 + 176) = *(v0 + 56);
      *(v0 + 192) = v122;
      *(v0 + 240) = v124;
      *(v0 + 248) = v15;
      outlined destroy of NSObject?(v142, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v126 = *(v0 + 696);
    v128 = v5(v142);
    if (*v127)
    {
      v129 = v127[14];
      v127[14] = v20;
    }

    v128(v142, 0);
LABEL_59:
    v130 = *(v0 + 712);

    outlined consume of Data._Representation(v9, v133);
    v21 = *(v0 + 8);
    goto LABEL_60;
  }

  outlined init with copy of MLS.OutgoingEventState?(v0 + 664, v0 + 136, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v23 = v5(v0 + 136);
  if (*v22)
  {
    v24 = v22;
    v25 = *(v0 + 712);
    v26 = *(v0 + 704);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 664, v148, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined copy of Data._Representation(v132, v133);
    v27 = v24[13];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v152 = v24[13];
    v24[13] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v139, v4, v26, v25, v132, v133, isUniquelyReferenced_nonNull_native);

    outlined consume of Data._Representation(v132, v133);
    v24[13] = v152;
  }

  v131 = v0 + 664;
  v150 = (v0 + 520);
  v29 = v0 + 136;
  result = v23(v142, 0);
  v140 = *(v0 + 408);
  v31 = v0 + 432;
  v137 = *(v140 + 16);
  if (!v137)
  {
LABEL_27:
    v136 = *(v0 + 416);
    v67 = v143;
    v135 = *(v136 + 16);
    if (!v135)
    {
LABEL_45:
      v99 = *(v0 + 424);
      v100 = *(v99 + 16);
      if (v100)
      {
        v101 = (v99 + 32);
        v102 = (v0 + 504);
        do
        {
          v103 = *(v0 + 712);
          v104 = *(v0 + 704);
          v105 = *(v0 + 696);
          v106 = *v101;
          *v102 = *v151;
          *(v0 + 488) = v104;
          *(v0 + 496) = v103;
          *v150 = v106;

          outlined init with copy of Data(v151, v29);
          v108 = v67(v31);
          if (*v107)
          {
            v109 = v107;
            v110 = v107[14];
            outlined init with copy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v0 + 488, v29);
            v111 = specialized __RawDictionaryStorage.find<A>(_:)((v0 + 488));
            if (v112)
            {
              v113 = v111;
              v114 = v109[14];
              v115 = swift_isUniquelyReferenced_nonNull_native();
              v116 = v109[14];
              *&v152 = v116;
              v109[14] = 0x8000000000000000;
              if (!v115)
              {
                specialized _NativeDictionary.copy()();
                v116 = v152;
              }

              v117 = (*(v116 + 48) + 48 * v113);
              v118 = v117[1];
              v119 = v117[2];
              v120 = v117[3];

              outlined consume of Data._Representation(v119, v120);
              outlined consume of Data._Representation(*(*(v116 + 56) + 16 * v113), *(*(v116 + 56) + 16 * v113 + 8));
              specialized _NativeDictionary._delete(at:)(v113, v116);
              v0 = v144;
              outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v144 + 488);
              v121 = v109[14];
              v109[14] = v116;

              v29 = v142;
              v67 = v143;
              v31 = v148;
            }

            else
            {
              outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v0 + 488);
              v29 = v142;
            }
          }

          v108(v31, 0);
          outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v0 + 488);
          ++v101;
          --v100;
        }

        while (v100);
      }

      outlined destroy of NSObject?(v131, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v9 = v132;
      goto LABEL_59;
    }

    v68 = 0;
    v141 = v0 + 632;
    v147 = v0 + 536;
    v134 = (v0 + 552);
    v69 = (v136 + 56);
    while (1)
    {
      if (v68 >= *(v136 + 16))
      {
        goto LABEL_67;
      }

      v75 = *(v0 + 712);
      v76 = *(v0 + 704);
      v77 = *(v0 + 696);
      v78 = *(v69 - 1);
      v79 = *v69;
      v80 = *(v69 - 3);
      *v134 = *v151;
      *(v0 + 536) = v76;
      *(v0 + 544) = v75;
      *(v144 + 568) = v80;

      outlined init with copy of Data(v151, v29);
      outlined copy of Data._Representation(v78, v79);
      v81 = v67(v141);
      v74 = v81;
      if (*v82)
      {
        break;
      }

LABEL_31:
      ++v68;
      v74();
      outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v147);
      result = outlined consume of Data._Representation(v78, v79);
      v69 += 4;
      v31 = v148;
      if (v135 == v68)
      {
        goto LABEL_45;
      }
    }

    v83 = v82;
    v138 = v81;
    outlined copy of Data._Representation(v78, v79);
    outlined init with copy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v147, v29);
    v84 = v83[14];
    v85 = swift_isUniquelyReferenced_nonNull_native();
    *&v152 = v83[14];
    v86 = v152;
    v83[14] = 0x8000000000000000;
    v88 = specialized __RawDictionaryStorage.find<A>(_:)(v147);
    v89 = v86[2];
    v90 = (v87 & 1) == 0;
    result = v89 + v90;
    if (__OFADD__(v89, v90))
    {
      goto LABEL_69;
    }

    v91 = v87;
    if (v86[3] < result)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, v85);
      v86 = v152;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v147);
      if ((v91 & 1) != (v92 & 1))
      {
        goto LABEL_63;
      }

      v88 = result;
      v67 = v143;
      if ((v91 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_29:
      v70 = (v86[7] + 16 * v88);
      v71 = *v70;
      v72 = v70[1];
      *v70 = v78;
      v70[1] = v79;
      outlined consume of Data._Representation(v71, v72);
      outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v147);
LABEL_30:
      v73 = v83[14];
      v83[14] = v86;

      v29 = v142;
      v0 = v144;
      v74 = v138;
      goto LABEL_31;
    }

    if (v85)
    {
      v67 = v143;
      if (v87)
      {
        goto LABEL_29;
      }
    }

    else
    {
      result = specialized _NativeDictionary.copy()();
      v86 = v152;
      v67 = v143;
      if (v91)
      {
        goto LABEL_29;
      }
    }

LABEL_41:
    v86[(v88 >> 6) + 8] |= 1 << v88;
    v93 = (v86[6] + 48 * v88);
    v94 = *v147;
    v95 = *(v147 + 32);
    v93[1] = *(v147 + 16);
    v93[2] = v95;
    *v93 = v94;
    v96 = (v86[7] + 16 * v88);
    *v96 = v78;
    v96[1] = v79;
    v97 = v86[2];
    v56 = __OFADD__(v97, 1);
    v98 = v97 + 1;
    if (v56)
    {
      goto LABEL_71;
    }

    v86[2] = v98;
    goto LABEL_30;
  }

  v32 = 0;
  v33 = (v0 + 584);
  v34 = (v140 + 56);
  while (v32 < *(v140 + 16))
  {
    v146 = v32;
    v39 = *(v0 + 712);
    v40 = *(v0 + 704);
    v41 = *(v0 + 696);
    v42 = v29;
    v43 = *(v34 - 1);
    v44 = *v34;
    v45 = *(v34 - 3);
    *(v144 + 600) = *v151;
    *(v0 + 584) = v40;
    *(v0 + 592) = v39;
    *(v144 + 616) = v45;

    v46 = v43;
    v29 = v42;
    outlined init with copy of Data(v151, v42);
    outlined copy of Data._Representation(v46, v44);
    v48 = v143(v31);
    if (!*v47)
    {
      goto LABEL_14;
    }

    v49 = v47;
    outlined copy of Data._Representation(v46, v44);
    outlined init with copy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v33, v42);
    v50 = v49[14];
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *&v152 = v49[14];
    v52 = v152;
    v49[14] = 0x8000000000000000;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v33);
    v54 = v52[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      goto LABEL_68;
    }

    v58 = v53;
    if (v52[3] < v57)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, v51);
      v52 = v152;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v33);
      if ((v58 & 1) != (v59 & 1))
      {
LABEL_63:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_22:
      if ((v58 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v51)
    {
      goto LABEL_22;
    }

    v66 = result;
    specialized _NativeDictionary.copy()();
    result = v66;
    v52 = v152;
    if ((v58 & 1) == 0)
    {
LABEL_23:
      v52[(result >> 6) + 8] |= 1 << result;
      v60 = (v52[6] + 48 * result);
      v61 = *v33;
      v62 = *(v144 + 616);
      v60[1] = *(v144 + 600);
      v60[2] = v62;
      *v60 = v61;
      v63 = (v52[7] + 16 * result);
      *v63 = v46;
      v63[1] = v44;
      v64 = v52[2];
      v56 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v56)
      {
        goto LABEL_70;
      }

      v52[2] = v65;
      goto LABEL_13;
    }

LABEL_12:
    v35 = (v52[7] + 16 * result);
    v36 = *v35;
    v37 = v35[1];
    *v35 = v46;
    v35[1] = v44;
    outlined consume of Data._Representation(v36, v37);
    outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v33);
LABEL_13:
    v38 = v49[14];
    v49[14] = v52;

    v29 = v142;
LABEL_14:
    v32 = v146 + 1;
    v31 = v148;
    v48(v148, 0);
    outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v33);
    result = outlined consume of Data._Representation(v46, v44);
    v34 += 4;
    v0 = v144;
    if (v137 == v146 + 1)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t MLS.InMemoryPersister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1, void *a2)
{
  v3[12] = a1;
  v3[13] = v2;
  v4 = a2[1];
  v3[14] = *a2;
  v3[15] = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.getSwiftMLSPersister(forClientIdentifier:), v5, 0);
}

uint64_t MLS.InMemoryPersister.getSwiftMLSPersister(forClientIdentifier:)()
{
  v17 = v0;
  v1 = (*(**(v0 + 104) + 112))();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 112), *(v0 + 120)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 96);
    outlined init with copy of ServerBag.MLS(*(v1 + 56) + 40 * v2, v0 + 56);

    outlined init with take of MLS.KeyUpdatePolicy((v0 + 56), v0 + 16);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v4);
  }

  else
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);

    v9 = type metadata accessor for MLS.SwiftMLSPersister();
    v10 = swift_allocObject();
    v10[5] = 0;
    swift_unknownObjectWeakInit();
    v10[2] = v6;
    v10[3] = v5;
    swift_beginAccess();
    v10[5] = &protocol witness table for MLS.InMemoryPersister;
    swift_unknownObjectWeakAssign();
    v16[3] = v9;
    v11 = lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister();
    v16[4] = v11;
    v16[0] = v10;
    v12 = *(*v7 + 128);
    swift_bridgeObjectRetain_n();

    v13 = v12(v0 + 16);
    specialized Dictionary.subscript.setter(v16, v6, v5);
    v13(v0 + 16, 0);
    v8[3] = v9;
    v8[4] = v11;
    *v8 = v10;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t MLS.InMemoryPersister.deinit()
{
  v1 = *(v0 + 16);

  v27 = *(v0 + 32);
  v28 = *(v0 + 24);
  v25 = *(v0 + 48);
  v26 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);

  v12 = *(v0 + 152);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  v15 = *(v0 + 176);
  v16 = *(v0 + 184);
  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v24 = *(v0 + 256);
  v22 = *(v0 + 224);
  v23 = *(v0 + 240);
  v21 = *(v0 + 208);
  outlined consume of MLS.InMemoryPersister.State?(*(v0 + 144));
  v19 = *(v0 + 264);

  return v0;
}

uint64_t MLS.InMemoryPersister.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v27 = *(v0 + 32);
  v28 = *(v0 + 24);
  v25 = *(v0 + 48);
  v26 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);

  v12 = *(v0 + 152);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  v15 = *(v0 + 176);
  v16 = *(v0 + 184);
  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v24 = *(v0 + 256);
  v22 = *(v0 + 224);
  v23 = *(v0 + 240);
  v21 = *(v0 + 208);
  outlined consume of MLS.InMemoryPersister.State?(*(v0 + 144));
  v19 = *(v0 + 264);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.Persister.atomically<A>(with:do:rollback:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 216);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for MLS.Persister.save(swiftMLSClientID:forIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 368);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.loadSwiftMLSClientID(identifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 376);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 264);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 272);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 280);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Storage.GroupStateStorage.readGroupState(groupID:) in conformance MLS.SwiftMLSPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.save(groupClientContextBlob:forIdentifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 288);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadGroupClientContextBlob(identifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 296);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 224);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 232);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.replaceGroupMembers(identifier:newMembers:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 240);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.deleteGroup(identifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t protocol witness for MLS.Persister.deleteSecureMessagingGroup(identifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t protocol witness for MLS.Persister.save(outgoingEventUpdate:forGroup:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 304);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.save(incomingEvent:forGroup:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 312);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.delete(incomingEvent:forGroup:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 320);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 328);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 336);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister()
{
  v2 = *(*v0 + 344);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v6();
}

uint64_t protocol witness for MLS.Persister.loadEvents(clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 352);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.loadRetriableEventStates(clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 360);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.readGroupState(swiftMLSGroupRead:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 416);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.readEpochData(swiftMLSEpochRead:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 424);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.write(swiftMLSGroupWrite:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 432);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.read(clientUUID:) in conformance MLS.InMemoryPersister(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1);
}

uint64_t protocol witness for MLS.Persister.write(clientUUID:clientState:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 408);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 384);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance MLS.InMemoryPersister;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, char a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(a1, a2 & 1);
  }
}

uint64_t protocol witness for MLS.Persister.save(retryCount:forGroup:messageID:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 392);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.Persister.getSwiftMLSPersister(forClientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 440);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
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
      result = MEMORY[0x2667538A0]();
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
      v19 = *MEMORY[0x277D85DE8];
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
  result = MEMORY[0x2667538A0]();
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
  v14[2] = *MEMORY[0x277D85DE8];
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
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for MetricCollector.Event();
    v22 = *(v15 - 8);
    outlined init with take of MetricCollector.Event(v14 + *(v22 + 72) * v9, a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for MetricCollector.Event();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for UUID();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for UUID();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v9;
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    v19 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v14 = v19;
    }

    v15 = *(v14 + 48) + 32 * v11;
    v16 = *(v15 + 8);
    v17 = *(v15 + 24);

    *a5 = *(*(v14 + 56) + 16 * v11);
    specialized _NativeDictionary._delete(at:)(v11, v14);
    *v6 = v14;
  }

  else
  {
    result = 0.0;
    *a5 = xmmword_2651B5F50;
  }

  return result;
}

{
  v6 = v5;
  v8 = *v5;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v9;
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    v20 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v14 = v20;
    }

    v15 = (*(v14 + 48) + 32 * v11);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];

    outlined consume of Data._Representation(v17, v18);
    *a5 = *(*(v14 + 56) + 16 * v11);
    specialized _NativeDictionary._delete(at:)(v11, v14);
    *v6 = v14;
  }

  else
  {
    result = 0.0;
    *a5 = xmmword_2651B5F50;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of MLS.KeyUpdatePolicy((*(v12 + 56) + 40 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of MLS.KeyUpdatePolicy((*(v12 + 56) + 40 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void *specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    __src[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = __src[0];
    }

    v12 = (*(v11 + 48) + 48 * v8);
    v13 = v12[1];
    v14 = v12[3];
    v15 = v12[5];

    memmove(a2, (*(v11 + 56) + 296 * v8), 0x128uLL);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    return destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(a2, v16);
  }

  else
  {
    _s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgWOi0_(__src);
    return memcpy(a2, __src, 0x128uLL);
  }
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v21;
    }

    v12 = (*(v11 + 48) + 48 * v8);
    v13 = v12[1];
    v14 = v12[3];
    v15 = v12[5];

    v16 = (*(v11 + 56) + 112 * v8);
    v17 = v16[5];
    a2[4] = v16[4];
    a2[5] = v17;
    a2[6] = v16[6];
    v18 = v16[1];
    *a2 = *v16;
    a2[1] = v18;
    v19 = v16[3];
    a2[2] = v16[2];
    a2[3] = v19;
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    *&result = 255;
    a2[6] = xmmword_2651D3E10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x266754DC0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v20 = v19[1];
          *v18 = *v19;
          v18[1] = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 16 * v3);
        v23 = (v21 + 16 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v20 = v19[1];
          *v18 = *v19;
          v18[1] = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = MEMORY[0x266754DC0](*(a2 + 40), *v12);
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v32 = v2;
    v33 = v4;
    do
    {
      v9 = *(v2 + 40);
      v10 = (*(v2 + 48) + 48 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      v15 = v7;
      v16 = v10[4];
      v17 = v10[5];
      Hasher.init(_seed:)();

      outlined copy of Data._Representation(v13, v14);
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      Data.hash(into:)();
      v18 = v16;
      v7 = v15;
      MEMORY[0x266754E10](v18);
      MEMORY[0x266754E10](v17);
      v19 = Hasher._finalize()();

      result = outlined consume of Data._Representation(v13, v14);
      v20 = v19 & v15;
      if (v3 >= v8)
      {
        if (v20 < v8)
        {
          v2 = v32;
          v4 = v33;
        }

        else
        {
          v2 = v32;
          v4 = v33;
          if (v3 >= v20)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v32;
        v4 = v33;
        if (v20 >= v8 || v3 >= v20)
        {
LABEL_11:
          v21 = *(v2 + 48);
          v22 = (v21 + 48 * v3);
          v23 = (v21 + 48 * v6);
          if (v3 != v6 || v22 >= v23 + 3)
          {
            v24 = *v23;
            v25 = v23[2];
            v22[1] = v23[1];
            v22[2] = v25;
            *v22 = v24;
          }

          v26 = *(v2 + 56);
          v27 = (v26 + 16 * v3);
          v28 = (v26 + 16 * v6);
          if (v3 != v6 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(v2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v31;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      Hasher.init(_seed:)();

      outlined copy of Data._Representation(v13, v14);
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      Data.hash(into:)();
      v15 = Hasher._finalize()();

      result = outlined consume of Data._Representation(v13, v14);
      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v20 = v19[1];
          *v18 = *v19;
          v18[1] = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 16 * v3);
        v23 = (v21 + 16 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for MetricCollector.Event() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x266754DC0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for XPCUtils.XPCInterfaceRequest() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for UUID() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v2;
    v31 = v4;
    do
    {
      v9 = *(v2 + 40);
      v10 = (*(v2 + 48) + 48 * v6);
      v11 = *v10;
      v12 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = v7;
      v16 = v10[4];
      v17 = v10[5];
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      v7 = v15;
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = v18 & v15;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          v2 = v30;
          v4 = v31;
        }

        else
        {
          v2 = v30;
          v4 = v31;
          if (v3 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v30;
        v4 = v31;
        if (v19 >= v8 || v3 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = (v20 + 48 * v3);
          v22 = (v20 + 48 * v6);
          if (v3 != v6 || v21 >= v22 + 3)
          {
            v23 = *v22;
            v24 = v22[2];
            v21[1] = v22[1];
            v21[2] = v24;
            *v21 = v23;
          }

          v25 = *(v2 + 56);
          result = (v25 + 296 * v3);
          v26 = (v25 + 296 * v6);
          if (v3 != v6 || result >= v26 + 296)
          {
            result = memmove(result, v26, 0x128uLL);
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v2;
    v31 = v4;
    do
    {
      v9 = *(v2 + 40);
      v10 = (*(v2 + 48) + 48 * v6);
      v11 = *v10;
      v12 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = v7;
      v16 = v10[4];
      v17 = v10[5];
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      v7 = v15;
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = v18 & v15;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          v2 = v30;
          v4 = v31;
        }

        else
        {
          v2 = v30;
          v4 = v31;
          if (v3 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v30;
        v4 = v31;
        if (v19 >= v8 || v3 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = (v20 + 48 * v3);
          v22 = (v20 + 48 * v6);
          if (v3 != v6 || v21 >= v22 + 3)
          {
            v23 = *v22;
            v24 = v22[2];
            v21[1] = v22[1];
            v21[2] = v24;
            *v21 = v23;
          }

          v25 = *(v2 + 56);
          result = (v25 + 112 * v3);
          v26 = (v25 + 112 * v6);
          if (v3 != v6 || result >= v26 + 112)
          {
            result = memmove(result, v26, 0x70uLL);
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for MLS.EventQueue.Event(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return outlined destroy of NSObject?(a4, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  }

  if (v17 < 1)
  {
    return outlined destroy of NSObject?(a4, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  }

  result = outlined init with copy of MLS.EventQueue.Event(a4, v15);
  if (v12 >= v17)
  {
    return outlined destroy of NSObject?(a4, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v117 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_101:
    v9 = *v117;
    if (!*v117)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_133:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v146 = v7;
    v112 = *(v7 + 2);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *&v7[16 * v112];
        v114 = *&v7[16 * v112 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 112 * v113), (*a3 + 112 * *&v7[16 * v112 + 16]), (*a3 + 112 * v114), v9);
        if (v4)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v112 - 2 >= *(v7 + 2))
        {
          goto LABEL_127;
        }

        v115 = &v7[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v146 = v7;
        result = specialized Array.remove(at:)(v112 - 1);
        v7 = v146;
        v112 = *(v146 + 2);
        if (v112 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      ++v6;
      goto LABEL_30;
    }

    v10 = *a3;
    v11 = (*a3 + 112 * v9);
    v12 = *v11;
    v13 = v11[2];
    v133 = v11[1];
    v134 = v13;
    v132 = v12;
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[6];
    v137 = v11[5];
    v138 = v16;
    v135 = v14;
    v136 = v15;
    v17 = (v10 + 112 * v8);
    v18 = v17[6];
    v20 = v17[3];
    v19 = v17[4];
    v144 = v17[5];
    v145 = v18;
    v142 = v20;
    v143 = v19;
    v21 = *v17;
    v22 = v17[2];
    v140 = v17[1];
    v141 = v22;
    v139 = v21;
    outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v132, &v125);
    outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v139, &v125);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v118 = v8;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v139);
    result = outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v132);
    v23 = *(&v138 + 1);
    v24 = *(&v145 + 1);
    v25 = v118 + 2;
    if (v118 + 2 < v5)
    {
      v26 = (v10 + 112 * v118 + 224);
      while (1)
      {
        v6 = v25;
        v27 = *v26;
        v28 = v26[2];
        v123[1] = v26[1];
        v123[2] = v28;
        v123[0] = v27;
        v29 = v26[3];
        v30 = v26[4];
        v31 = v26[6];
        v123[5] = v26[5];
        v124 = v31;
        v123[3] = v29;
        v123[4] = v30;
        v32 = *(v26 - 1);
        v34 = *(v26 - 4);
        v33 = *(v26 - 3);
        v130 = *(v26 - 2);
        v131 = v32;
        v128 = v34;
        v129 = v33;
        v35 = *(v26 - 7);
        v36 = *(v26 - 5);
        v126 = *(v26 - 6);
        v127 = v36;
        v125 = v35;
        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(v123, v122);
        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v125, v122);
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v125);
        result = outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(v123);
        if (v23 < v24 == *(&v124 + 1) >= *(&v131 + 1))
        {
          break;
        }

        v25 = v6 + 1;
        v26 += 7;
        if (v5 == v6 + 1)
        {
          v9 = v6;
          v6 = v5;
          if (v23 < v24)
          {
            goto LABEL_21;
          }

          goto LABEL_29;
        }
      }

      v9 = v6 - 1;
      if (v23 >= v24)
      {
        goto LABEL_29;
      }

LABEL_21:
      v8 = v118;
      if (v6 < v118)
      {
        goto LABEL_130;
      }

      if (v118 > v9)
      {
        goto LABEL_30;
      }

      v9 = 112 * v6 - 112;
      v37 = 112 * v118;
      v38 = v118;
      v39 = v6;
      do
      {
        if (v38 != --v39)
        {
          v41 = *a3;
          if (!*a3)
          {
            goto LABEL_136;
          }

          v40 = (v41 + v9);
          v128 = *(v41 + v37 + 48);
          v129 = *(v41 + v37 + 64);
          v130 = *(v41 + v37 + 80);
          v131 = *(v41 + v37 + 96);
          v125 = *(v41 + v37);
          v126 = *(v41 + v37 + 16);
          v127 = *(v41 + v37 + 32);
          result = memmove((v41 + v37), (v41 + v9), 0x70uLL);
          v40[3] = v128;
          v40[4] = v129;
          v40[5] = v130;
          v40[6] = v131;
          *v40 = v125;
          v40[1] = v126;
          v40[2] = v127;
        }

        ++v38;
        v9 -= 112;
        v37 += 112;
      }

      while (v38 < v39);
      goto LABEL_29;
    }

    v6 = v118 + 2;
    if (*(&v138 + 1) < *(&v145 + 1))
    {
      goto LABEL_21;
    }

LABEL_29:
    v8 = v118;
LABEL_30:
    v42 = a3[1];
    if (v6 < v42)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_129;
      }

      if (v6 - v8 < a4)
      {
        v43 = v8 + a4;
        if (__OFADD__(v8, a4))
        {
          goto LABEL_131;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v8)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v6 != v43)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v6 < v8)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v9 = *(v7 + 2);
    v67 = *(v7 + 3);
    v68 = v9 + 1;
    if (v9 >= v67 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v9 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v68;
    v69 = &v7[16 * v9];
    *(v69 + 4) = v8;
    *(v69 + 5) = v6;
    v70 = *v117;
    if (!*v117)
    {
      goto LABEL_138;
    }

    if (v9)
    {
      while (1)
      {
        v71 = v68 - 1;
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v72 = *(v7 + 4);
          v73 = *(v7 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_70:
          if (v75)
          {
            goto LABEL_117;
          }

          v88 = &v7[16 * v68];
          v90 = *v88;
          v89 = *(v88 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_120;
          }

          v94 = &v7[16 * v71 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_124;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = v68 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v98 = &v7[16 * v68];
        v100 = *v98;
        v99 = *(v98 + 1);
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_84:
        if (v93)
        {
          goto LABEL_119;
        }

        v101 = &v7[16 * v71];
        v103 = *(v101 + 4);
        v102 = *(v101 + 5);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_122;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_91:
        v9 = v71 - 1;
        if (v71 - 1 >= v68)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v109 = *&v7[16 * v9 + 32];
        v110 = *&v7[16 * v71 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 112 * v109), (*a3 + 112 * *&v7[16 * v71 + 32]), (*a3 + 112 * v110), v70);
        if (v4)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v9 >= *(v7 + 2))
        {
          goto LABEL_114;
        }

        v111 = &v7[16 * v9];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v146 = v7;
        result = specialized Array.remove(at:)(v71);
        v7 = v146;
        v68 = *(v146 + 2);
        if (v68 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = &v7[16 * v68 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_115;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_116;
      }

      v83 = &v7[16 * v68];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_118;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_121;
      }

      if (v87 >= v79)
      {
        v105 = &v7[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_125;
        }

        if (v74 < v108)
        {
          v71 = v68 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_101;
    }
  }

  v44 = *a3;
  v45 = *a3 + 112 * v6;
  v119 = v8;
  v120 = v43;
  v9 = v8 - v6 + 1;
LABEL_40:
  v46 = v9;
  for (i = v45; ; i -= 7)
  {
    v48 = *i;
    v49 = i[2];
    v133 = i[1];
    v134 = v49;
    v132 = v48;
    v50 = i[3];
    v51 = i[4];
    v52 = i[6];
    v137 = i[5];
    v138 = v52;
    v135 = v50;
    v136 = v51;
    v53 = *(i - 1);
    v55 = *(i - 4);
    v54 = *(i - 3);
    v144 = *(i - 2);
    v145 = v53;
    v142 = v55;
    v143 = v54;
    v56 = *(i - 7);
    v57 = *(i - 5);
    v140 = *(i - 6);
    v141 = v57;
    v139 = v56;
    outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v132, &v125);
    outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v139, &v125);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v139);
    result = outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v132);
    if (*(&v138 + 1) >= *(&v145 + 1))
    {
LABEL_39:
      ++v6;
      v45 += 112;
      --v9;
      if (v6 != v120)
      {
        goto LABEL_40;
      }

      v6 = v120;
      v8 = v119;
      goto LABEL_50;
    }

    if (!v44)
    {
      break;
    }

    v58 = i - 7;
    v128 = i[3];
    v129 = i[4];
    v130 = i[5];
    v131 = i[6];
    v125 = *i;
    v126 = i[1];
    v127 = i[2];
    v59 = *(i - 6);
    *i = *(i - 7);
    i[1] = v59;
    v60 = *(i - 1);
    i[5] = *(i - 2);
    i[6] = v60;
    v61 = *(i - 3);
    i[3] = *(i - 4);
    i[4] = v61;
    i[2] = *(i - 5);
    v62 = v125;
    v63 = v127;
    v58[1] = v126;
    v58[2] = v63;
    *v58 = v62;
    v64 = v128;
    v65 = v129;
    v66 = v131;
    v58[5] = v130;
    v58[6] = v66;
    v58[3] = v64;
    v58[4] = v65;
    if (!v46)
    {
      goto LABEL_39;
    }

    ++v46;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}