uint64_t closure #1 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v46 = a1;
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
  }

  v30 = v42;
  v31 = v43;
  v32 = v44;
  v33 = v45;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v10 = v43;
  *(a2 + 128) = v42;
  *(a2 + 144) = v10;
  *(a2 + 160) = v32;
  v11 = v27;
  *(a2 + 64) = v26;
  *(a2 + 80) = v11;
  v12 = v29;
  *(a2 + 96) = v28;
  *(a2 + 112) = v12;
  v13 = v23;
  *a2 = v22;
  *(a2 + 16) = v13;
  v14 = v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v14;
  *(a2 + 232) = v18;
  *(a2 + 248) = v19;
  *(a2 + 264) = v20;
  *(a2 + 184) = v15;
  *(a2 + 200) = v16;
  *(a2 + 176) = v33;
  *(a2 + 280) = v21;
  *(a2 + 216) = v17;
  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 784) = a4;
  *(v4 + 776) = a1;
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
  *(v4 + 632) = *(a3 + 64);
  *(v4 + 648) = v10;
  *(v4 + 664) = *(a3 + 96);
  v11 = *(a3 + 16);
  *(v4 + 568) = *a3;
  *(v4 + 584) = v11;
  v12 = *(a3 + 48);
  *(v4 + 600) = *(a3 + 32);
  *(v4 + 616) = v12;
  return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:), 0, 0);
}

uint64_t closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)()
{
  v32 = v0;
  v1 = *(v0 + 784);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 784);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315394;
    v8 = specialized MLS.OutgoingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v30);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v13 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v31, "EncryptedRCS.");
    HIWORD(v31[1]) = -4864;

    MEMORY[0x2667545A0](v12, v13);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31[0], v31[1], &v30);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator delivering sendEvent { eventIdentifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v15 = *(*(v0 + 784) + 16);
  v16 = *(v0 + 160);
  *(v0 + 512) = *(v0 + 144);
  *(v0 + 528) = v16;
  *(v0 + 544) = *(v0 + 176);
  *(v0 + 560) = *(v0 + 192);
  v17 = *(v0 + 96);
  *(v0 + 448) = *(v0 + 80);
  *(v0 + 464) = v17;
  v18 = *(v0 + 128);
  *(v0 + 480) = *(v0 + 112);
  *(v0 + 496) = v18;
  v19 = *(v0 + 32);
  *(v0 + 384) = *(v0 + 16);
  *(v0 + 400) = v19;
  v20 = *(v0 + 64);
  *(v0 + 416) = *(v0 + 48);
  *(v0 + 432) = v20;
  v21 = *(v0 + 584);
  *(v0 + 672) = *(v0 + 568);
  *(v0 + 688) = v21;
  *(v0 + 768) = *(v0 + 664);
  v22 = *(v0 + 648);
  *(v0 + 736) = *(v0 + 632);
  *(v0 + 752) = v22;
  v23 = *(v0 + 616);
  *(v0 + 704) = *(v0 + 600);
  *(v0 + 720) = v23;
  v24 = *(*v15 + 224);
  v29 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 792) = v26;
  *v26 = v0;
  v26[1] = closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:);
  v27 = *(v0 + 776);

  return v29(v27, v0 + 384, v0 + 672);
}

{
  v2 = *(*v1 + 792);
  v3 = *v1;
  *(v3 + 800) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 800);
  return (*(v0 + 8))();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.SendResult, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a2 + 184);
}

uint64_t MLS.XPCClientCoordinator.receive(event:forGroup:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - v15;
  swift_retain_n();
  outlined copy of Data._Representation(a1, a2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v44 = v16;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = a6;
    v42 = v21;
    v48 = v21;
    *v20 = 136315394;
    v22 = Data.description.getter();
    v24 = a5;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v48);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v43 = a4;
    v27 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v26 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;
    v28 = v27;
    a5 = v24;
    MEMORY[0x2667545A0](v28, v26);

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v48);

    *(v20 + 14) = v29;
    a4 = v43;
    _os_log_impl(&dword_264F1F000, v17, v18, "XPCClientCoordinator receiveEvent { eventBlob: %s, client: %s }", v20, 0x16u);
    v30 = v42;
    swift_arrayDestroy();
    a6 = v45;
    MEMORY[0x266755550](v30, -1, -1);
    v31 = v20;
    v16 = v44;
    MEMORY[0x266755550](v31, -1, -1);
  }

  else
  {
  }

  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v33 = v46;
  v32[4] = v46;
  v32[5] = a4;
  v34 = swift_allocObject();
  *(v34 + 16) = &async function pointer to partial apply for closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:);
  *(v34 + 24) = v7;
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v16, 1, 1, v35);

  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(v33, a4);
  v36 = one-time initialization token for shared;

  v37 = v16;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = static XPCActor.shared;
  v39 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v39;
  v40[4] = partial apply for closure #1 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:);
  v40[5] = v32;
  v40[6] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.ReceiveResult, @error @owned Error);
  v40[7] = v34;
  v40[8] = a5;
  v40[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v40);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v34 = a1;
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingEventType<MLS.AllMember, Data> and conformance MLS.IncomingEventType<A, B>, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
  }

  v24 = v31;
  v25 = v32;
  v26 = v33;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v10 = v32;
  *(a2 + 64) = v31;
  *(a2 + 80) = v10;
  *(a2 + 96) = v26;
  v11 = v21;
  *a2 = v20;
  *(a2 + 16) = v11;
  v12 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v12;
  *(a2 + 104) = v13;
  *(a2 + 120) = v14;
  *(a2 + 136) = v15;
  *(a2 + 200) = v19;
  *(a2 + 184) = v18;
  *(a2 + 168) = v17;
  *(a2 + 152) = v16;
  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 544) = a4;
  *(v4 + 536) = a1;
  v5 = *(a2 + 80);
  *(v4 + 288) = *(a2 + 64);
  *(v4 + 304) = v5;
  *(v4 + 320) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 224) = *a2;
  *(v4 + 240) = v6;
  v7 = *(a2 + 48);
  *(v4 + 256) = *(a2 + 32);
  *(v4 + 272) = v7;
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
  return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:), 0, 0);
}

uint64_t closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)()
{
  v31 = v0;
  v1 = *(v0 + 544);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 224, v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 224, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 544);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315394;
    v8 = specialized MLS.IncomingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v29);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v13 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v30, "EncryptedRCS.");
    HIWORD(v30[1]) = -4864;

    MEMORY[0x2667545A0](v12, v13);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30[0], v30[1], &v29);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator delivering receiveEvent { eventIdentifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v15 = *(*(v0 + 544) + 16);
  v16 = *(v0 + 304);
  *(v0 + 496) = *(v0 + 288);
  *(v0 + 512) = v16;
  *(v0 + 528) = *(v0 + 320);
  v17 = *(v0 + 240);
  *(v0 + 432) = *(v0 + 224);
  *(v0 + 448) = v17;
  v18 = *(v0 + 272);
  *(v0 + 464) = *(v0 + 256);
  *(v0 + 480) = v18;
  v19 = *(v0 + 64);
  *(v0 + 152) = *(v0 + 48);
  v20 = *(v0 + 16);
  *(v0 + 136) = *(v0 + 32);
  *(v0 + 120) = v20;
  v21 = *(v0 + 80);
  v22 = *(v0 + 96);
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 200) = v22;
  *(v0 + 184) = v21;
  *(v0 + 168) = v19;
  v23 = *(*v15 + 232);
  v28 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 552) = v25;
  *v25 = v0;
  v25[1] = closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:);
  v26 = *(v0 + 536);

  return v28(v26, v0 + 432, v0 + 120);
}

{
  v2 = *(*v1 + 552);
  v3 = *v1;
  *(v3 + 560) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 560);
  return (*(v0 + 8))();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.ReceiveResult, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a2 + 104);
}

uint64_t @objc MLS.XPCClientCoordinator.send(event:forGroup:completion:)(int a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  v13 = a3;
  v14 = a4;

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  a8(v15, v17, v18, v20, a7, v21);

  outlined consume of Data._Representation(v18, v20);
  outlined consume of Data._Representation(v15, v17);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
  }

  v17 = v24;
  v18 = v25;
  v19 = v26;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMd, &_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMR);
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v9 = v25;
  *(a1 + 64) = v24;
  *(a1 + 80) = v9;
  *(a1 + 96) = v19;
  v10 = v14;
  *a1 = v13;
  *(a1 + 16) = v10;
  v11 = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = v11;
  *(a1 + 104) = v12;
  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v4 + 544) = a4;
  *(v4 + 536) = a1;
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
  *(v4 + 569) = *a3;
  return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:), 0, 0);
}

uint64_t closure #2 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)()
{
  v40 = v0;
  v1 = *(v0 + 544);
  swift_retain_n();
  outlined init with copy of MLS.Group(v0 + 16, v0 + 120);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of MLS.Group(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 544);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136315394;
    v7 = *(v0 + 96);
    v37 = *(v0 + 80);
    v38 = v7;
    v39 = *(v0 + 112);
    v8 = *(v0 + 32);
    v33 = *(v0 + 16);
    v34 = v8;
    v9 = *(v0 + 64);
    v35 = *(v0 + 48);
    v36 = v9;
    outlined init with copy of MLS.Group(v0 + 16, v0 + 432);
    v10 = MLS.Group.description.getter();
    v12 = v11;
    v13 = v38;
    *(v0 + 392) = v37;
    *(v0 + 408) = v13;
    *(v0 + 424) = v39;
    v14 = v34;
    *(v0 + 328) = v33;
    *(v0 + 344) = v14;
    v15 = v36;
    *(v0 + 360) = v35;
    *(v0 + 376) = v15;
    outlined destroy of MLS.Group(v0 + 328);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v32);

    *(v5 + 4) = v16;
    *(v5 + 12) = 2080;
    v17 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v18 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(&v33, "EncryptedRCS.");
    HIWORD(v33) = -4864;
    MEMORY[0x2667545A0](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, *(&v33 + 1), &v32);

    *(v5 + 14) = v19;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator delivering fetchGroupRecoveryInfo { group: %s, client: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
    v20 = *(v0 + 544);
  }

  v21 = *(v0 + 569);
  v22 = *(*(v0 + 544) + 16);
  v23 = *(v0 + 96);
  *(v0 + 288) = *(v0 + 80);
  *(v0 + 304) = v23;
  *(v0 + 320) = *(v0 + 112);
  v24 = *(v0 + 32);
  *(v0 + 224) = *(v0 + 16);
  *(v0 + 240) = v24;
  v25 = *(v0 + 64);
  *(v0 + 256) = *(v0 + 48);
  *(v0 + 272) = v25;
  *(v0 + 568) = v21;
  v26 = *(*v22 + 240);
  v31 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  *(v0 + 552) = v28;
  *v28 = v0;
  v28[1] = closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:);
  v29 = *(v0 + 536);

  return v31(v29, v0 + 224, v0 + 568);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.Group, @in_guaranteed MLS.FetchGroupRecoveryInfoContext?) -> (@out MLS.FetchGroupRecoveryInfoResult, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a2 + 104);
}

uint64_t @objc MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(int a1, int a2, void *a3, void *a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = a3;
  v9 = a4;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  specialized MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(v10, v12, thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSData?) -> ()partial apply, v16);

  outlined consume of Data._Representation(v13, v15);
  outlined consume of Data._Representation(v10, v12);
}

uint64_t MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - v15;
  swift_retain_n();
  outlined copy of Data._Representation(a1, a2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v44 = v16;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = a6;
    v42 = v21;
    v48 = v21;
    *v20 = 136315394;
    v22 = Data.description.getter();
    v24 = a5;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v48);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v43 = a4;
    v27 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v26 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;
    v28 = v27;
    a5 = v24;
    MEMORY[0x2667545A0](v28, v26);

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v48);

    *(v20 + 14) = v29;
    a4 = v43;
    _os_log_impl(&dword_264F1F000, v17, v18, "XPCClientCoordinator fetchMember { uriBlob: %s, client: %s }", v20, 0x16u);
    v30 = v42;
    swift_arrayDestroy();
    a6 = v45;
    MEMORY[0x266755550](v30, -1, -1);
    v31 = v20;
    v16 = v44;
    MEMORY[0x266755550](v31, -1, -1);
  }

  else
  {
  }

  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v33 = v46;
  v32[4] = v46;
  v32[5] = a4;
  v34 = swift_allocObject();
  *(v34 + 16) = &async function pointer to partial apply for closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:);
  *(v34 + 24) = v7;
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v16, 1, 1, v35);

  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(v33, a4);
  v36 = one-time initialization token for shared;

  v37 = v16;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = static XPCActor.shared;
  v39 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v39;
  v40[4] = partial apply for closure #1 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:);
  v40[5] = v32;
  v40[6] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed URI, @in_guaranteed MLS.FetchMemberContext?) -> (@out MLS.FetchMemberResult<MLS.AllMember>, @error @owned Error);
  v40[7] = v34;
  v40[8] = a5;
  v40[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v40);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type URI and conformance URI();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    v7 = *(v3 + 48);
    v8 = *(v3 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18FetchMemberContextVSgMd, &_s15SecureMessaging3MLSO18FetchMemberContextVSgMR);
    lazy protocol witness table accessor for type MLS.FetchMemberContext? and conformance <A> A?();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v9;
  }

  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a4;
  v5 = a2[1];
  *(v4 + 48) = *a2;
  *(v4 + 56) = v5;
  *(v4 + 81) = *a3;
  return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:), 0, 0);
}

uint64_t closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)()
{
  v24 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v22);
    *(v8 + 12) = 2080;
    v10 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v23, "EncryptedRCS.");
    HIWORD(v23[1]) = -4864;

    MEMORY[0x2667545A0](v10, v11);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23[0], v23[1], &v22);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator delivering fetchMember { uri: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
    v13 = *(v0 + 40);
  }

  v14 = *(v0 + 81);
  v15 = *(*(v0 + 40) + 16);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = *(v0 + 56);
  *(v0 + 80) = v14;
  v16 = *(*v15 + 248);
  v21 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 64) = v18;
  *v18 = v0;
  v18[1] = closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:);
  v19 = *(v0 + 32);

  return v21(v19, v0 + 16, v0 + 80);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in MLS.Client.keyPackage.getter, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed URI, @in_guaranteed MLS.FetchMemberContext?) -> (@out MLS.FetchMemberResult<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a2 + 16);
}

uint64_t MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - v15;
  swift_retain_n();
  outlined copy of Data._Representation(a1, a2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v44 = v16;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = a6;
    v42 = v21;
    v48 = v21;
    *v20 = 136315394;
    v22 = Data.description.getter();
    v24 = a5;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v48);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v43 = a4;
    v27 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v26 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;
    v28 = v27;
    a5 = v24;
    MEMORY[0x2667545A0](v28, v26);

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v48);

    *(v20 + 14) = v29;
    a4 = v43;
    _os_log_impl(&dword_264F1F000, v17, v18, "XPCClientCoordinator retrieveKeyPackage { membersBlob: %s, client: %s }", v20, 0x16u);
    v30 = v42;
    swift_arrayDestroy();
    a6 = v45;
    MEMORY[0x266755550](v30, -1, -1);
    v31 = v20;
    v16 = v44;
    MEMORY[0x266755550](v31, -1, -1);
  }

  else
  {
  }

  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v33 = v46;
  v32[4] = v46;
  v32[5] = a4;
  v34 = swift_allocObject();
  *(v34 + 16) = &async function pointer to partial apply for closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:);
  *(v34 + 24) = v7;
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v16, 1, 1, v35);

  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(v33, a4);
  v36 = one-time initialization token for shared;

  v37 = v16;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = static XPCActor.shared;
  v39 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v39;
  v40[4] = partial apply for closure #1 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:);
  v40[5] = v32;
  v40[6] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed [MLS.AllMember], @in_guaranteed MLS.KeyPackageRetrievalContext?) -> (@out MLS.KeyPackageRetrievalResult<MLS.AllMember>, @error @owned Error);
  v40[7] = v34;
  v40[8] = a5;
  v40[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v40);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    v7 = *(v3 + 48);
    v8 = *(v3 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMd, &_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext? and conformance <A> A?();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *a1 = v10;
    *(a1 + 8) = v9;
  }

  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 57) = *a3;
  return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:), 0, 0);
}

uint64_t closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)()
{
  v27 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  swift_retain_n();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    v10 = MEMORY[0x266754630](v7, &type metadata for MLS.AllMember);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v14 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v26, "EncryptedRCS.");
    HIWORD(v26[1]) = -4864;
    MEMORY[0x2667545A0](v13, v14);

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26[0], v26[1], &v25);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator delivering retrieveKeyPackage { members: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
    v16 = *(v0 + 32);
  }

  v17 = *(*(v0 + 32) + 16);
  *(v0 + 56) = *(v0 + 57);
  v18 = *(*v17 + 256);
  v24 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v0 + 40) = v20;
  *v20 = v0;
  v20[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TQ1_;
  v21 = *(v0 + 16);
  v22 = *(v0 + 24);

  return v24(v21, v22, v0 + 56);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed [MLS.AllMember], @in_guaranteed MLS.KeyPackageRetrievalContext?) -> (@out MLS.KeyPackageRetrievalResult<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = a2 + 1;
  v6 = *a2;
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return (v10)(a1, v6, v5);
}

uint64_t MLS.XPCClientCoordinator.deinit()
{
  v1 = *(v0 + 16);

  v2 = direct field offset for MLS.XPCClientCoordinator.logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

  v5 = *(v0 + direct field offset for MLS.XPCClientCoordinator.selfMember);
  v6 = *(v0 + direct field offset for MLS.XPCClientCoordinator.selfMember + 8);
  v7 = *(v0 + direct field offset for MLS.XPCClientCoordinator.selfMember + 16);
  v8 = *(v0 + direct field offset for MLS.XPCClientCoordinator.selfMember + 24);
  outlined consume of MLS.AllMember();
  v9 = *(v0 + direct field offset for MLS.XPCClientCoordinator.notifyListener);

  v10 = *(v0 + direct field offset for MLS.XPCClientCoordinator.xpcClient);

  return v0;
}

uint64_t MLS.XPCClientCoordinator.__deallocating_deinit()
{
  MLS.XPCClientCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.ClientCoordinator.keyPackage.getter in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1)
{
  v4 = *(**v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t protocol witness for MLS.ClientCoordinator.createGroup(identifier:otherMembers:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 192);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 200);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.delete(group:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 208);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.group(identifier:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 216);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.update(groupDetails:forGroup:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 224);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.otherMembers(group:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 232);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.add(members:toGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 240);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.kick(members:fromGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 248);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.leave(group:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 256);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.downgrade(group:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t protocol witness for MLS.ClientCoordinator.applicationEncrypt(data:withGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 272);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationEncrypt(groupName:withGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 288);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationSign(input:withGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 280);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(message:forGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 304);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(message:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 312);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 320);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(errorMessage:withGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 328);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(groupName:forGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 296);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

Swift::Int MLS.XPCRequest.RequestType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1);
  return Hasher._finalize()();
}

uint64_t MLS.XPCRequest.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MLS.XPCRequest.resume(returning:)(uint64_t a1, unint64_t a2)
{
  outlined copy of Data._Representation(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t MLS.XPCRequest.resume(throwing:)(void *a1)
{
  v3 = *(v1 + *(type metadata accessor for MLS.XPCRequest() + 20));
  if (v3 <= 4)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v15 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }

        lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();
        swift_allocError();
        v6 = v16;
        swift_getErrorValue();
        v17 = Error.readableDescription.getter(v36, v37);
        v19 = 4;
LABEL_36:
        *v6 = v19;
        *(v6 + 8) = v17;
        *(v6 + 16) = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
        return CheckedContinuation.resume(throwing:)();
      }

      v28 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_33;
      }

      lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError();
      swift_allocError();
      v6 = v29;
      swift_getErrorValue();
      v11 = v38;
      v12 = v39;
    }

    else
    {
      if (v3 == 2)
      {
        v20 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if (!swift_dynamicCast())
        {
          lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
          swift_allocError();
          v6 = v21;
          swift_getErrorValue();
          v7 = v40;
          v8 = v41;
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      if (v3 != 3)
      {
        v26 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if (!swift_dynamicCast())
        {
          lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
          swift_allocError();
          v6 = v27;
          swift_getErrorValue();
          v7 = v44;
          v8 = v45;
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_33;
      }

      lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();
      swift_allocError();
      v6 = v10;
      swift_getErrorValue();
      v11 = v42;
      v12 = v43;
    }

    v17 = Error.readableDescription.getter(v11, v12);
    v19 = 2;
    goto LABEL_36;
  }

  if (v3 > 7)
  {
    if (v3 == 8)
    {
      v24 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (!swift_dynamicCast())
      {
        lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
        swift_allocError();
        v6 = v25;
        swift_getErrorValue();
        v7 = v52;
        v8 = v53;
        goto LABEL_35;
      }
    }

    else if (v3 == 9)
    {
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (!swift_dynamicCast())
      {
        lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
        swift_allocError();
        v6 = v14;
        swift_getErrorValue();
        v7 = v54;
        v8 = v55;
        goto LABEL_35;
      }
    }

    else
    {
      v32 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (!swift_dynamicCast())
      {
        lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
        swift_allocError();
        v6 = v34;
        swift_getErrorValue();
        v7 = v56;
        v8 = v57;
        goto LABEL_35;
      }
    }
  }

  else if (v3 == 5)
  {
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
      lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
      swift_allocError();
      v6 = v23;
      swift_getErrorValue();
      v7 = v46;
      v8 = v47;
      goto LABEL_35;
    }
  }

  else if (v3 == 6)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
      lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();
      swift_allocError();
      v6 = v5;
      swift_getErrorValue();
      v7 = v50;
      v8 = v51;
LABEL_35:
      v17 = Error.readableDescription.getter(v7, v8);
      v19 = 1;
      goto LABEL_36;
    }
  }

  else
  {
    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
      lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();
      swift_allocError();
      v6 = v31;
      swift_getErrorValue();
      v7 = v48;
      v8 = v49;
      goto LABEL_35;
    }
  }

LABEL_33:

  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

unint64_t lazy protocol witness table accessor for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier()
{
  result = lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError()
{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

uint64_t type metadata accessor for MLS.XPCRequest()
{
  result = type metadata singleton initialization cache for MLS.XPCRequest;
  if (!type metadata singleton initialization cache for MLS.XPCRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26513B210()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26513B248()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(v6);
}

uint64_t sub_26513B33C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(v0[6], v0[7], v0[8]);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.delete(group:context:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return closure #1 in MLS.XPCClientCoordinator.delete(group:context:)(v1[6], a1);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.group(identifier:context:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return closure #1 in MLS.XPCClientCoordinator.group(identifier:context:)(v1[4], a1);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.update(groupDetails:forGroup:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return closure #1 in MLS.XPCClientCoordinator.update(groupDetails:forGroup:)(v1[2], a1);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.otherMembers(group:context:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return closure #1 in MLS.XPCClientCoordinator.otherMembers(group:context:)(*(v1 + 40), a1);
}

unint64_t lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance <> Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return closure #1 in MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)(*(v1 + 16), *(v1 + 48), a1);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #1 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)(v1[5], a1);
}

uint64_t partial apply for closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)(a1, a2, a3, v3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.SendResult, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.SendResult, @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #1 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)(v1[5], a1);
}

uint64_t partial apply for closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)(a1, a2, a3, v3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.ReceiveResult, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.ReceiveResult, @error @owned Error)(a1, a2, v7);
}

uint64_t specialized MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v34 = &v33 - v11;
  swift_retain_n();
  outlined copy of Data._Representation(a1, a2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315394;
    v17 = Data.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v37);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v21 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v36, "EncryptedRCS.");
    HIWORD(v36[1]) = -4864;
    MEMORY[0x2667545A0](v20, v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36[0], v36[1], &v37);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_264F1F000, v12, v13, "XPCClientCoordinator fetchGroupRecoveryInfo { groupBlob: %s, client: %s }", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v16, -1, -1);
    v23 = v15;
    a4 = v33;
    MEMORY[0x266755550](v23, -1, -1);
  }

  else
  {
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v25 = swift_allocObject();
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:);
  *(v25 + 24) = v5;
  v26 = type metadata accessor for TaskPriority();
  v27 = v34;
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);

  outlined copy of Data._Representation(a1, a2);
  v28 = one-time initialization token for shared;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = static XPCActor.shared;
  v30 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v30;
  v31[4] = partial apply for closure #1 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:);
  v31[5] = v24;
  v31[6] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.Group, @in_guaranteed MLS.FetchGroupRecoveryInfoContext?) -> (@out MLS.FetchGroupRecoveryInfoResult, @error @owned Error);
  v31[7] = v25;
  v31[8] = v35;
  v31[9] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v27, &async function pointer to partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v31);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return closure #1 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)(a1);
}

uint64_t partial apply for closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)(a1, a2, a3, v3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed URI, @in_guaranteed MLS.FetchMemberContext?) -> (@out MLS.FetchMemberResult<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed URI, @in_guaranteed MLS.FetchMemberContext?) -> (@out MLS.FetchMemberResult<MLS.AllMember>, @error @owned Error)(a1, a2, v7);
}

uint64_t objectdestroy_55Tm()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return closure #1 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)(a1);
}

uint64_t partial apply for closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)(a1, a2, a3, v3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed [MLS.AllMember], @in_guaranteed MLS.KeyPackageRetrievalContext?) -> (@out MLS.KeyPackageRetrievalResult<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed [MLS.AllMember], @in_guaranteed MLS.KeyPackageRetrievalContext?) -> (@out MLS.KeyPackageRetrievalResult<MLS.AllMember>, @error @owned Error)(a1, a2, v7);
}

unint64_t lazy protocol witness table accessor for type MLS.XPCRequest.RequestType and conformance MLS.XPCRequest.RequestType()
{
  result = lazy protocol witness table cache variable for type MLS.XPCRequest.RequestType and conformance MLS.XPCRequest.RequestType;
  if (!lazy protocol witness table cache variable for type MLS.XPCRequest.RequestType and conformance MLS.XPCRequest.RequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.XPCRequest.RequestType and conformance MLS.XPCRequest.RequestType);
  }

  return result;
}

uint64_t type metadata completion function for MLS.XPCClientCoordinator()
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

uint64_t dispatch thunk of MLS.XPCClientCoordinator.keyPackage.getter(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.__allocating_init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 176);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.setupXPCConnection()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6();
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 192);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 200);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 208);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 216);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.update(groupDetails:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t dispatch thunk of MLS.XPCClientCoordinator.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 232);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 240);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 248);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 256);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t dispatch thunk of MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 272);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 280);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 288);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 296);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 304);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 312);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 320);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 328);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_26513EAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xB)
    {
      return v10 - 10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26513EB90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 10;
  }

  return result;
}

void type metadata completion function for MLS.XPCRequest()
{
  type metadata accessor for CheckedContinuation<Data, Error>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for MLS.XPCRequest.RequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.XPCRequest.RequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26513EF30()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMd, &_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext and conformance MLS.KeyPackageRetrievalContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext and conformance MLS.KeyPackageRetrievalContext()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext and conformance MLS.KeyPackageRetrievalContext;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext and conformance MLS.KeyPackageRetrievalContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext and conformance MLS.KeyPackageRetrievalContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO18FetchMemberContextVSgMd, &_s15SecureMessaging3MLSO18FetchMemberContextVSgMR);
    lazy protocol witness table accessor for type MLS.FetchMemberContext and conformance MLS.FetchMemberContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberContext? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberContext and conformance MLS.FetchMemberContext()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberContext and conformance MLS.FetchMemberContext;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberContext and conformance MLS.FetchMemberContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberContext and conformance MLS.FetchMemberContext);
  }

  return result;
}

uint64_t sub_26513F19C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(a1);
}

uint64_t partial apply for closure #2 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(a1, a2, a3, v3);
}

uint64_t sub_26513F2A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.Group, @in_guaranteed MLS.FetchGroupRecoveryInfoContext?) -> (@out MLS.FetchGroupRecoveryInfoResult, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.Group, @in_guaranteed MLS.FetchGroupRecoveryInfoContext?) -> (@out MLS.FetchGroupRecoveryInfoResult, @error @owned Error)(a1, a2, v7);
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMd, &_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMR);
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext and conformance MLS.FetchGroupRecoveryInfoContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext and conformance MLS.FetchGroupRecoveryInfoContext()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext and conformance MLS.FetchGroupRecoveryInfoContext;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext and conformance MLS.FetchGroupRecoveryInfoContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext and conformance MLS.FetchGroupRecoveryInfoContext);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupMembersContext and conformance MLS.GroupMembersContext()
{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersContext and conformance MLS.GroupMembersContext;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersContext and conformance MLS.GroupMembersContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersContext and conformance MLS.GroupMembersContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupFetchContext and conformance MLS.GroupFetchContext()
{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchContext and conformance MLS.GroupFetchContext;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchContext and conformance MLS.GroupFetchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchContext and conformance MLS.GroupFetchContext);
  }

  return result;
}

uint64_t _s15SecureMessaging8XPCActorCACScAAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26513F7A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(a1, v1);
}

uint64_t partial apply for closure #3 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #3 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(a1, a2, a3, a4, v4);
}

uint64_t partial apply for closure #4 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #4 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(v0);
}

uint64_t MLS.Configuration.init(clientIdentifier:communicator:delegate:keyPackageExchanger:persister:runInDaemon:selfMember:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, char a10, uint64_t a11)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = a9;
  *(a8 + 64) = a10;
  v12 = *(type metadata accessor for MLS.Configuration() + 72);
  v13 = type metadata accessor for Optional();
  return (*(*(v13 - 8) + 32))(a8 + v12, a11, v13);
}

uint64_t MLS.ClientIdentifier.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MLS.ClientIdentifier.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLS.ClientIdentifier@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance MLS.ClientIdentifier, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t MLS.Configuration.communicator.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return swift_unknownObjectRetain();
}

uint64_t MLS.Configuration.delegate.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t MLS.Configuration.keyPackageExchanger.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t MLS.Configuration.persister.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return swift_unknownObjectRetain();
}

uint64_t MLS.Configuration.selfMember.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

unint64_t type metadata completion function for MLS.Configuration(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getExtendedExistentialTypeMetadata();
  swift_getExtendedExistentialTypeMetadata();
  swift_getExtendedExistentialTypeMetadata();
  result = type metadata accessor for MLS.Persister();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.Configuration(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v11 = v9 + ((v8 + 65) & ~v8);
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
      v17 = ((a1 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v19 = (*(v4 + 48))((((((((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 17) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
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

void storeEnumTagSinglePayload for MLS.Configuration(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v13 = ((v11 + 65) & ~v11) + v12;
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
  v21 = ((a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v22 = ((((((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((((((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v21 = a2 & 0x7FFFFFFF;
    v21[1] = 0;
  }

  else
  {
    *v21 = a2 - 1;
  }
}

uint64_t MLS.DowngradeOperation.__allocating_init(group:context:clientIdentifier:shouldHeal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  MLS.DowngradeOperation.init(group:context:clientIdentifier:shouldHeal:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t MLS.DowngradeOperation.group.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.DowngradeOperation.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 144));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t MLS.DowngradeOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 160);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *MLS.DowngradeOperation.init(group:context:clientIdentifier:shouldHeal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = *v5;
  v11 = *a4;
  v12 = a4[1];
  v13 = &v5[*(*v5 + 160)];
  Logger.init(subsystem:category:)();
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  (*(*(*(v10 + 88) - 8) + 32))(&v5[*(*v5 + 136)], a3);
  v14 = &v5[*(*v5 + 144)];
  *v14 = v11;
  *(v14 + 1) = v12;
  v5[*(*v5 + 152)] = a5;
  return v5;
}

uint64_t MLS.DowngradeOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[114] = v3;
  v4[113] = a2;
  v4[112] = a1;
  v6 = *v3;
  v4[115] = *v3;
  v7 = *(v6 + 104);
  v4[116] = v7;
  v4[117] = *(*(v7 + 8) + 8);
  v8 = *(v6 + 80);
  v4[118] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[119] = AssociatedTypeWitness;
  v10 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v4[120] = swift_task_alloc();
  v11 = *(v8 - 8);
  v4[121] = v11;
  v12 = *(v11 + 64) + 15;
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v13 = type metadata accessor for MetricCollector.Event();
  v4[125] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  v4[129] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:), v15, 0);
}

uint64_t MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v32 = v0;
  v1 = v0[115];
  v2 = v0[114];
  v0[110] = v0[128];
  v0[130] = *(*v2 + 136);
  v3 = *(v1 + 112);
  v0[131] = v3;
  v4 = *(v3 + 16);
  v5 = *(v1 + 88);
  v0[132] = v5;

  v6 = v4(v5, v3);
  v8 = v7;
  v0[133] = v6;
  v0[134] = v7;
  v0[135] = *(*v2 + 160);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0 + 110;
    v12 = v0[114];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v31);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v12 + 16), *(v12 + 24), &v31);
    _os_log_impl(&dword_264F1F000, v9, v10, "DowngradeOperation downgrading group { identifier: %s, group: %s }", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  else
  {
    v11 = v0 + 128;
  }

  v15 = *v11;
  v16 = v0[127];
  v17 = v0[126];
  v18 = v0[125];
  v19 = v0[113];
  Date.init()();
  v20 = *(v18 + 20);
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v16 + v20, 1, 1, v21);
  outlined init with take of MetricCollector.Event(v16, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v23 = v31;
  v0[136] = v31;

  v0[110] = v23;
  v24 = v19[3];
  v25 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v24);
  v26 = *(v25 + 200);
  v30 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  v0[137] = v28;
  *v28 = v0;
  v28[1] = MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:);

  return (v30)(v0 + 97, v24, v25);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v10 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v4 = v2[136];
    v5 = v2[134];
    v6 = v2[129];

    v7 = MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v6;
  }

  else
  {
    v8 = v2[129];
    v7 = MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v105 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 912);
  v4 = *(v0 + 800);
  v5 = *(v0 + 808);
  __swift_project_boxed_opaque_existential_1((v0 + 776), v4);
  (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 776));
  v6._countAndFlagsBits = 0x534C4D7466697753;
  v6._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v6);
  outlined init with copy of ServerBag.MLS(v0 + 736, v0 + 816);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1072);
    v10 = *(v0 + 1064);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v101 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v101);
    *(v11 + 12) = 2080;
    v13 = *(v0 + 840);
    __swift_project_boxed_opaque_existential_1((v0 + 816), v13);
    v14 = *(v13 - 8);
    v15 = *(v14 + 64) + 15;
    swift_task_alloc();
    (*(v14 + 16))();
    v16 = String.init<A>(describing:)();
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 816));
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v101);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_264F1F000, v7, v8, "DowngradeOperation creating event { identifier: %s, commitOutput: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 816));
  }

  v20 = *(v0 + 1104);
  v21 = *(v0 + 1056);
  v22 = *(v0 + 1048);
  v23 = *(v0 + 944);
  v24 = *(v0 + 928);
  v25 = *(v0 + 920);
  v26 = *(v0 + 912);
  v27 = *(v0 + 760);
  v28 = *(v0 + 768);
  __swift_project_boxed_opaque_existential_1((v0 + 736), v27);
  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v27, v28, &v101);
  v97 = v101;
  *(v0 + 1112) = *(&v101 + 1);
  v99 = v102;
  *(v0 + 1120) = v102;
  *(v0 + 888) = v26;
  v29 = *(v25 + 96);
  v30 = *(v25 + 120);
  *(v0 + 688) = v23;
  *(v0 + 696) = v21;
  *(v0 + 704) = v29;
  *(v0 + 712) = v24;
  *(v0 + 720) = v22;
  *(v0 + 728) = v30;
  v31 = type metadata accessor for MLS.DowngradeOperation();
  WitnessTable = swift_getWitnessTable();
  MLS.GroupOperation.context(commitOutput:)((v0 + 736), v31, WitnessTable, &v101);
  v33 = v101;
  *(v0 + 1136) = v101;
  v34 = v102;
  *(v0 + 1152) = v102;
  v36 = v103;
  v35 = v104;
  *(v0 + 1168) = v103;
  *(v0 + 1176) = v35;
  if (v20)
  {
    v37 = *(v0 + 1072);
    v38 = *(v0 + 880);

    outlined consume of Data._Representation(v99, *(&v99 + 1));

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 736));
    v39 = *(v0 + 1016);
    v40 = *(v0 + 1008);
    v41 = *(v0 + 992);
    v42 = *(v0 + 984);
    v43 = *(v0 + 976);
    v44 = *(v0 + 960);

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v47 = *(v0 + 1072);
    v95 = *(v0 + 1056);
    v96 = *(v0 + 1064);
    v90 = *(v0 + 1080);
    v91 = *(v0 + 1048);
    v94 = *(v0 + 1040);
    v92 = *(v0 + 912);
    v93 = v33;
    v48 = objc_allocWithZone(MEMORY[0x277CCAD78]);

    v49 = [v48 init];
    v50 = [v49 UUIDString];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v52;
    v53 = v52;

    v89 = *(v91 + 8);
    v54 = v89(v95);
    v55 = *(v0 + 880);
    *(v0 + 200) = v96;
    *(v0 + 208) = v47;
    *(v0 + 216) = v51;
    *(v0 + 224) = v53;
    *(v0 + 232) = v54;
    *(v0 + 240) = v56;
    *(v0 + 248) = v55;
    *(v0 + 256) = v97;
    *(v0 + 272) = v99;
    *(v0 + 288) = v93;
    *(v0 + 304) = v34;
    *(v0 + 320) = v36;
    *(v0 + 328) = v35;
    v57 = *(v0 + 216);
    *(v0 + 16) = *(v0 + 200);
    *(v0 + 32) = v57;
    v58 = *(v0 + 248);
    *(v0 + 48) = *(v0 + 232);
    *(v0 + 64) = v58;
    v59 = *(v0 + 264);
    v60 = *(v0 + 280);
    v61 = *(v0 + 296);
    v62 = *(v0 + 312);
    *(v0 + 144) = *(v0 + 328);
    *(v0 + 112) = v61;
    *(v0 + 128) = v62;
    *(v0 + 80) = v59;
    *(v0 + 96) = v60;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi10_(v0 + 16);

    outlined copy of Data._Representation(v99, *(&v99 + 1));
    outlined copy of Data._Representation(v93, *(&v93 + 1));
    outlined copy of Data?(v34, *(&v34 + 1));
    outlined copy of Data._Representation(v36, v35);
    outlined init with copy of MLS.OutgoingDowngrade<Data>(v0 + 200, v0 + 336);

    v63 = (v89)(v95, v91);
    *(v0 + 544) = v51;
    *(v0 + 552) = v88;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 6;
    *(v0 + 584) = v96;
    *(v0 + 592) = v47;
    *(v0 + 600) = v63;
    *(v0 + 608) = v64;
    v65 = *(v0 + 592);
    *(v0 + 504) = *(v0 + 576);
    *(v0 + 520) = v65;
    *(v0 + 536) = *(v0 + 608);
    v66 = *(v0 + 560);
    *(v0 + 472) = *(v0 + 544);
    *(v0 + 488) = v66;

    outlined init with copy of MLS.OutgoingEventState(v0 + 544, v0 + 616);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v0 + 1072);
      v70 = *(v0 + 1064);
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v101 = v72;
      *v71 = 136315138;
      *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v69, &v101);
      _os_log_impl(&dword_264F1F000, v67, v68, "DowngradeOperation returning operation result { identifier: %s }", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x266755550](v72, -1, -1);
      MEMORY[0x266755550](v71, -1, -1);
    }

    v98 = *(v0 + 1064);
    v100 = *(v0 + 1072);
    v73 = *(v0 + 992);
    v74 = *(v0 + 960);
    v75 = *(v0 + 952);
    v76 = *(v0 + 944);
    v77 = *(v0 + 936);
    v78 = *(v0 + 928);
    v79 = *(v0 + 912);
    v80 = *(v0 + 904);
    v81 = swift_task_alloc();
    *(v0 + 1184) = v81;
    *(v81 + 16) = v80;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v75, AssociatedConformanceWitness);
    VersatileError.init(type:)(v74, v76, v77);
    v83 = swift_allocObject();
    *(v0 + 1192) = v83;
    v83[2] = v79;
    v83[3] = v98;
    v83[4] = v100;

    v84 = swift_task_alloc();
    *(v0 + 1200) = v84;
    *v84 = v0;
    v84[1] = MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:);
    v85 = *(v0 + 992);
    v86 = *(v0 + 984);
    v87 = *(v0 + 944);
    v107 = *(v0 + 936);
    v108 = v86;

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 856, &async function pointer to partial apply for implicit closure #6 in MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:), v81, v85, partial apply for closure #1 in MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:), v83, v87);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1200);
  v4 = *(*v1 + 968);
  v15 = *v1;

  v5 = (v4 + 8);
  if (v0)
  {
    v6 = v2[149];
    v7 = v2[129];
    v8 = v2[124];
    v9 = v2[118];
    outlined destroy of MLS.OutgoingEventState((v2 + 68));

    v10 = *v5;
    v2[151] = *v5;
    v2[152] = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v8, v9);
    v11 = v2[110];

    v12 = MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v13 = v2[149];
    v7 = v2[129];
    (*v5)(v2[124], v2[118]);

    v12 = MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v12, v7, 0);
}

{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1136);
  v29 = *(v0 + 1120);
  v30 = *(v0 + 1128);
  v7 = *(v0 + 1112);
  v32 = *(v0 + 1016);
  v33 = *(v0 + 1008);
  v34 = *(v0 + 992);
  v35 = *(v0 + 1184);
  v36 = *(v0 + 984);
  v37 = *(v0 + 976);
  v38 = *(v0 + 960);
  v31 = *(v0 + 904);
  v8 = *(v0 + 896);
  outlined destroy of MLS.OutgoingDowngrade<Data>(v0 + 200);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v6, v5);

  outlined consume of Data._Representation(v29, v30);
  v9 = *(v0 + 856);
  v10 = *(v0 + 864);
  v11 = *(v0 + 872);
  v12 = *(v0 + 128);
  v14 = *(v0 + 80);
  v13 = *(v0 + 96);
  *(v8 + 96) = *(v0 + 112);
  *(v8 + 112) = v12;
  *(v8 + 64) = v14;
  *(v8 + 80) = v13;
  v16 = *(v0 + 160);
  v15 = *(v0 + 176);
  v17 = *(v0 + 144);
  *(v8 + 176) = *(v0 + 192);
  *(v8 + 144) = v16;
  *(v8 + 160) = v15;
  *(v8 + 128) = v17;
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  v20 = *(v0 + 64);
  *(v8 + 32) = *(v0 + 48);
  *(v8 + 48) = v20;
  *v8 = v18;
  *(v8 + 16) = v19;
  *(v8 + 184) = *(v0 + 472);
  v21 = *(v0 + 488);
  v22 = *(v0 + 504);
  v23 = *(v0 + 520);
  *(v8 + 248) = *(v0 + 536);
  *(v8 + 232) = v23;
  *(v8 + 216) = v22;
  *(v8 + 200) = v21;
  *(v8 + 256) = 0;
  *(v8 + 264) = v9;
  *(v8 + 272) = v10;
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v0 + 544);
  v24 = *(v0 + 560);
  v25 = *(v0 + 576);
  v26 = *(v0 + 592);
  *(v8 + 352) = *(v0 + 608);
  *(v8 + 320) = v25;
  *(v8 + 336) = v26;
  *(v8 + 304) = v24;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v31, v8 + 368);
  *(v8 + 408) = 0;
  *(v8 + 416) = *(v0 + 880);
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 736));

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = v0[138];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[124];
  v5 = v0[123];
  v6 = v0[122];
  v7 = v0[120];

  v8 = v0[1];

  return v8();
}

{
  v1 = *(v0 + 936);
  v2 = *(*(v0 + 968) + 32);
  v2(*(v0 + 976), *(v0 + 984), *(v0 + 944));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1216);
    (*(v0 + 1208))(*(v0 + 976), *(v0 + 944));
  }

  else
  {
    v5 = *(v0 + 976);
    v6 = *(v0 + 944);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 1184);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1168);
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  v13 = *(v0 + 1144);
  v14 = *(v0 + 1136);
  v15 = *(v0 + 1128);
  v16 = *(v0 + 1120);
  v17 = *(v0 + 1112);

  outlined consume of Data._Representation(v16, v15);
  outlined consume of Data._Representation(v14, v13);
  outlined consume of Data?(v12, v11);
  outlined consume of Data._Representation(v10, v9);
  outlined destroy of MLS.OutgoingDowngrade<Data>(v0 + 200);
  outlined destroy of MLS.OutgoingEventState(v0 + 544);
  outlined destroy of MLS.OutgoingDowngrade<Data>(v0 + 200);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 736));
  v18 = *(v0 + 1016);
  v19 = *(v0 + 1008);
  v20 = *(v0 + 992);
  v21 = *(v0 + 984);
  v22 = *(v0 + 976);
  v23 = *(v0 + 960);

  v24 = *(v0 + 8);

  return v24();
}

void closure #1 in MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *(*a3 + 160);

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v14);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v14);
    _os_log_impl(&dword_264F1F000, oslog, v10, "DowngradeOperation failed to obtain era { identifier: %s, error: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }
}

char *MLS.DowngradeOperation.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 136)]);
  v3 = *&v0[*(*v0 + 144) + 8];

  v4 = *(*v0 + 160);
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t MLS.DowngradeOperation.__deallocating_deinit()
{
  MLS.DowngradeOperation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.DowngradeOperation<A, B, C>(uint64_t a1)
{
  v4 = *(**v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.DowngradeOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 232);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.DowngradeOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 160);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t outlined init with copy of MLS.OutgoingDowngrade<Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingDowngradeVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingDowngradeVy_10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #6 in MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4);
}

uint64_t sub_265142804()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined destroy of MLS.OutgoingDowngrade<Data>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingDowngradeVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingDowngradeVy_10Foundation4DataVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for MLS.DowngradeOperation<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.DowngradeOperation(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.DowngradeOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.DowngradeOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 232);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t MLS.NoOpPersister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v9[2] = a6;
  v9[3] = a7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9[4] = static MLSActor.shared;
  v14 = (a4 + *a4);
  v11 = a4[1];
  v12 = swift_task_alloc();
  v9[5] = v12;
  *v12 = v9;
  v12[1] = MLS.NoOpPersister.atomically<A>(with:do:rollback:);

  return v14(a1);
}

uint64_t MLS.NoOpPersister.atomically<A>(with:do:rollback:)()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](MLS.NoOpPersister.atomically<A>(with:do:rollback:), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[2];
    v10 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = MLS.NoOpPersister.atomically<A>(with:do:rollback:);

    return v10();
  }

  else
  {
    v7 = v0[6];
    swift_willThrow();
    v8 = v0[6];
    v9 = v0[1];

    return v9();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = MLS.NoOpPersister.atomically<A>(with:do:rollback:);
  }

  else
  {
    v6 = MLS.NoOpPersister.atomically<A>(with:do:rollback:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 48);
  swift_willThrow();
  v2 = *(v0 + 48);
  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLS.NoOpPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(0, 1);
}

uint64_t MLS.NoOpPersister.save(retryCount:forGroup:messageID:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.NoOpPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t MLS.NoOpPersister.readEpochData(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t MLS.NoOpPersister.write(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.NoOpPersister.save(swiftMLSClientID:forIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.NoOpPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.NoOpPersister.loadSwiftMLSClientID(identifier:), v2, 0);
}

uint64_t MLS.NoOpPersister.loadSwiftMLSClientID(identifier:)()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MLS.NoOpPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.NoOpPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.NoOpPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.NoOpPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.NoOpPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t MLS.NoOpPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t MLS.NoOpPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.NoOpPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.NoOpPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:), v2, 0);
}

uint64_t MLS.NoOpPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  return (*(v0 + 8))();
}

uint64_t MLS.NoOpPersister.loadClientIdentifiersWithEvents()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

unint64_t MLS.NoOpPersister.loadEvents(clientIdentifier:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGTt0g5Tf4g_n(v2);
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t MLS.NoOpPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.NoOpPersister.loadRetriableEventStates(clientIdentifier:), v2, 0);
}

uint64_t MLS.NoOpPersister.loadRetriableEventStates(clientIdentifier:)()
{
  v1 = *(v0 + 16);
  *v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO18OutgoingEventStateVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLS.NoOpPersister.write(clientUUID:clientState:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.NoOpPersister.readGroupState(groupID:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t MLS.NoOpPersister.readEpochData(groupID:epochID:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t MLS.NoOpPersister.write(groupID:groupStateUpdate:clientIdentifier:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.NoOpPersister.readGroupState(groupID:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t MLS.NoOpPersister.readEpochData(groupID:epochID:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t MLS.NoOpPersister.write(groupID:groupStateUpdate:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.NoOpPersister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.NoOpPersister.getSwiftMLSPersister(forClientIdentifier:), v3, 0);
}

uint64_t MLS.NoOpPersister.getSwiftMLSPersister(forClientIdentifier:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v1[3] = type metadata accessor for MLS.NoOpPersister();
  v1[4] = lazy protocol witness table accessor for type MLS.NoOpPersister and conformance MLS.NoOpPersister(&lazy protocol witness table cache variable for type MLS.NoOpPersister and conformance MLS.NoOpPersister);
  *v1 = v2;
  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for MLS.Persister.atomically<A>(with:do:rollback:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 80);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for MLS.Persister.save(swiftMLSClientID:forIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for MLS.Persister.loadSwiftMLSClientID(identifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 192);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 208);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.save(groupClientContextBlob:forIdentifier:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 216);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadGroupClientContextBlob(identifier:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 224);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 168);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 176);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.replaceGroupMembers(identifier:newMembers:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 184);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.deleteGroup(identifier:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](protocol witness for MLS.Persister.deleteGroup(identifier:clientIdentifier:) in conformance MLS.NoOpPersister, v5, 0);
}

uint64_t protocol witness for MLS.Persister.deleteGroup(identifier:clientIdentifier:) in conformance MLS.NoOpPersister()
{
  (*(**(v0 + 40) + 232))(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.Persister.deleteSecureMessagingGroup(identifier:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](protocol witness for MLS.Persister.deleteSecureMessagingGroup(identifier:clientIdentifier:) in conformance MLS.NoOpPersister, v5, 0);
}

uint64_t protocol witness for MLS.Persister.deleteSecureMessagingGroup(identifier:clientIdentifier:) in conformance MLS.NoOpPersister()
{
  (*(**(v0 + 40) + 240))(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.Persister.save(outgoingEventUpdate:forGroup:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;

  return MEMORY[0x2822009F8](protocol witness for MLS.Persister.save(outgoingEventUpdate:forGroup:clientIdentifier:) in conformance MLS.NoOpPersister, v6, 0);
}

uint64_t protocol witness for MLS.Persister.save(outgoingEventUpdate:forGroup:clientIdentifier:) in conformance MLS.NoOpPersister()
{
  (*(**(v0 + 48) + 248))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.Persister.save(incomingEvent:forGroup:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;

  return MEMORY[0x2822009F8](protocol witness for MLS.Persister.save(incomingEvent:forGroup:clientIdentifier:) in conformance MLS.NoOpPersister, v6, 0);
}

uint64_t protocol witness for MLS.Persister.save(incomingEvent:forGroup:clientIdentifier:) in conformance MLS.NoOpPersister()
{
  (*(**(v0 + 48) + 256))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.Persister.delete(incomingEvent:forGroup:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;

  return MEMORY[0x2822009F8](protocol witness for MLS.Persister.delete(incomingEvent:forGroup:clientIdentifier:) in conformance MLS.NoOpPersister, v6, 0);
}

uint64_t protocol witness for MLS.Persister.delete(incomingEvent:forGroup:clientIdentifier:) in conformance MLS.NoOpPersister()
{
  (*(**(v0 + 48) + 264))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.Persister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 272);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 280);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.NoOpPersister()
{
  v2 = *(*v0 + 288);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v6();
}

uint64_t protocol witness for MLS.Persister.loadEvents(clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;

  return MEMORY[0x2822009F8](protocol witness for MLS.Persister.loadEvents(clientIdentifier:) in conformance MLS.NoOpPersister, v4, 0);
}

uint64_t protocol witness for MLS.Persister.loadEvents(clientIdentifier:) in conformance MLS.NoOpPersister()
{
  v1 = *(v0 + 16);
  (*(**(v0 + 32) + 296))(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t protocol witness for MLS.Persister.loadRetriableEventStates(clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 304);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.readGroupState(swiftMLSGroupRead:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.readEpochData(swiftMLSEpochRead:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.write(swiftMLSGroupWrite:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for MLS.Persister.read(clientUUID:) in conformance MLS.NoOpPersister(uint64_t a1)
{
  v4 = *(*v1 + 312);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1);
}

uint64_t protocol witness for MLS.Persister.write(clientUUID:clientState:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 320);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 88);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance MLS.InMemoryPersister;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.save(retryCount:forGroup:messageID:clientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 96);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.Persister.getSwiftMLSPersister(forClientIdentifier:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.NoOpPersister(uint64_t a1)
{
  v4 = *(**v1 + 312);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1);
}

uint64_t protocol witness for MLS.Storage.ClientStateStorage.write(clientUUID:clientState:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 320);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorage.readGroupState(groupID:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 352);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.Storage.GroupStateStorage.readGroupState(groupID:) in conformance MLS.SwiftMLSPersister;

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorage.readEpochData(groupID:epochID:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 360);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorage.write(groupID:groupStateUpdate:) in conformance MLS.NoOpPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 368);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorageV2.readGroupState(_:) in conformance MLS.NoOpPersister(uint64_t a1)
{
  v4 = *(**v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorageV2.readEpochData(_:) in conformance MLS.NoOpPersister(uint64_t a1)
{
  v4 = *(**v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorageV2.write(_:) in conformance MLS.NoOpPersister(uint64_t a1)
{
  v4 = *(**v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t instantiation function for generic protocol witness table for MLS.NoOpPersister(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.NoOpPersister and conformance MLS.NoOpPersister(&lazy protocol witness table cache variable for type MLS.NoOpPersister and conformance MLS.NoOpPersister);
  a1[2] = lazy protocol witness table accessor for type MLS.NoOpPersister and conformance MLS.NoOpPersister(&lazy protocol witness table cache variable for type MLS.NoOpPersister and conformance MLS.NoOpPersister);
  result = lazy protocol witness table accessor for type MLS.NoOpPersister and conformance MLS.NoOpPersister(&lazy protocol witness table cache variable for type MLS.NoOpPersister and conformance MLS.NoOpPersister);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.NoOpPersister and conformance MLS.NoOpPersister(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MLS.NoOpPersister();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of MLS.NoOpPersister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 80);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.NoOpPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 88);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.NoOpPersister.save(retryCount:forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 96);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.NoOpPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.NoOpPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.NoOpPersister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1, uint64_t a2)
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

uint64_t dispatch thunk of MLS.NoOpPersister.readGroupState(_:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.NoOpPersister.readEpochData(_:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.NoOpPersister.write(_:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.NoOpPersister.save(swiftMLSClientID:forIdentifier:)(uint64_t a1, uint64_t a2)
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

uint64_t dispatch thunk of MLS.NoOpPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.NoOpPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 168);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.NoOpPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 176);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.NoOpPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 184);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.NoOpPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 192);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.NoOpPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.NoOpPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 208);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.NoOpPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 216);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.NoOpPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 224);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.NoOpPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 272);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.NoOpPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 280);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.NoOpPersister.loadClientIdentifiersWithEvents()()
{
  v2 = *(*v0 + 288);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v6();
}

uint64_t dispatch thunk of MLS.NoOpPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 304);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.NoOpPersister.read(clientUUID:)(uint64_t a1)
{
  v4 = *(*v1 + 312);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.NoOpPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 320);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.NoOpPersister.readGroupState(groupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 328);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.NoOpPersister.readEpochData(groupID:epochID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 336);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.NoOpPersister.write(groupID:groupStateUpdate:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 344);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.NoOpPersister.readGroupState(groupID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 352);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.NoOpPersister.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 360);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.NoOpPersister.write(groupID:groupStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 368);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.NoOpPersister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1, uint64_t a2)
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d96Messaging3MLSO9PersisterPAAE17addPendingMembers10identifier05otherG016clientIdentifierySS_ShyAC9gh31OGAC012UniqueClientK0VtYaKFAC09I10M0VAKXEfU_Tf1cn_nTm(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v35 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v35;
  v5 = v4 + 56;
  v6 = -1 << *(v4 + 32);
  result = _HashTable.startBucket.getter();
  v8 = result;
  v9 = 0;
  v28 = v4 + 64;
  v29 = v2;
  v30 = v4 + 56;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v32 = v9;
    v33 = *(v4 + 36);
    v12 = *(v4 + 48) + 32 * v8;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v34 = *(v12 + 24);
    result = outlined copy of MLS.AllMember();
    v16 = v4;
    v18 = *(v35 + 16);
    v17 = *(v35 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v19 = v18 + 1;
    }

    *(v35 + 16) = v19;
    v20 = v35 + 32 * v18;
    *(v20 + 32) = v13;
    *(v20 + 40) = v14;
    *(v20 + 48) = v15;
    *(v20 + 56) = v34;
    *(v20 + 57) = a2;
    v10 = 1 << *(v16 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v5 = v30;
    v21 = *(v30 + 8 * v11);
    if ((v21 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    v4 = v16;
    if (v33 != *(v16 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v8 & 0x3F));
    if (v22)
    {
      v10 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v25 = (v28 + 8 * v11);
      while (v24 < (v10 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v8, v33, 0);
          v10 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v8, v33, 0);
    }

LABEL_4:
    v9 = v32 + 1;
    v8 = v10;
    if (v32 + 1 == v29)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t MLS.Persister.addPendingMembers(identifier:otherMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a3;
  v7[7] = a5;
  v7[4] = a1;
  v7[5] = a2;
  v8 = a4[1];
  v7[10] = *a4;
  v7[11] = v8;
  return MEMORY[0x2822009F8](MLS.Persister.addPendingMembers(identifier:otherMembers:clientIdentifier:), 0, 0);
}

uint64_t MLS.Persister.addPendingMembers(identifier:otherMembers:clientIdentifier:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v15 = v0[8];
  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d96Messaging3MLSO9PersisterPAAE17addPendingMembers10identifier05otherG016clientIdentifierySS_ShyAC9gh31OGAC012UniqueClientK0VtYaKFAC09I10M0VAKXEfU_Tf1cn_nTm(v0[6], 1);
  v0[12] = v3;
  v0[2] = v2;
  v0[3] = v1;
  v4 = *(v15 + 80);
  v14 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = MLS.Persister.addPendingMembers(identifier:otherMembers:clientIdentifier:);
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[5];
  v11 = MEMORY[0x277D84F90];
  v12 = v0[4];

  return (v14)(v12, v10, v3, v11, v0 + 2, v9, v7);
}

{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[12];

    return MEMORY[0x2822009F8](MLS.Persister.addPendingMembers(identifier:otherMembers:clientIdentifier:), 0, 0);
  }

  else
  {
    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = *(v0 + 112);
  return (*(v0 + 8))();
}

void MLS.Persister.atomically<A>(with:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8);
  v12 = v9 + *v9;
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v8 + 16) = v11;
  *v11 = v8;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.Persister.removePendingMembers(identifier:otherMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a3;
  v7[7] = a5;
  v7[4] = a1;
  v7[5] = a2;
  v8 = a4[1];
  v7[10] = *a4;
  v7[11] = v8;
  return MEMORY[0x2822009F8](MLS.Persister.removePendingMembers(identifier:otherMembers:clientIdentifier:), 0, 0);
}

uint64_t MLS.Persister.removePendingMembers(identifier:otherMembers:clientIdentifier:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v15 = v0[8];
  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d96Messaging3MLSO9PersisterPAAE17addPendingMembers10identifier05otherG016clientIdentifierySS_ShyAC9gh31OGAC012UniqueClientK0VtYaKFAC09I10M0VAKXEfU_Tf1cn_nTm(v0[6], 2);
  v0[12] = v3;
  v0[2] = v2;
  v0[3] = v1;
  v4 = *(v15 + 80);
  v14 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = MLS.Persister.removePendingMembers(identifier:otherMembers:clientIdentifier:);
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[5];
  v11 = MEMORY[0x277D84F90];
  v12 = v0[4];

  return (v14)(v12, v10, v11, v3, v0 + 2, v9, v7);
}

{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[12];

    return MEMORY[0x2822009F8](MLS.Persister.removePendingMembers(identifier:otherMembers:clientIdentifier:), 0, 0);
  }

  else
  {
    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t MLS.ReadGroupKey.init(groupID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.EpochKey.init(era:epochID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 MLS.ReadEpochKey.init(groupID:epochKey:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

__n128 MLS.Record.init(epochKey:data:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t MLS.WriteGroupData.init(groupID:groupState:epochInsertRecords:epochUpdateRecords:epochDeleteKeys:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

__n128 MLS.PersistedMember.init(member:state:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *a2;
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = v3;
  a3[1].n128_u8[8] = v4;
  a3[1].n128_u8[9] = v5;
  return result;
}

uint64_t MLS.StoredEvents.init(groupToOutgoingEvents:groupToIncomingEvents:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 MLS.Record.epochKey.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t MLS.Record.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.ReadGroupKey.groupID.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.ReadEpochKey.groupID.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

__n128 MLS.ReadEpochKey.epochKey.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t MLS.WriteGroupData.groupID.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.WriteGroupData.groupState.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data?(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.Storage.EpochKey.secureMessagingRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = MLS.Storage.EpochKey.era.getter();
  result = MLS.Storage.EpochKey.epochID.getter();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t MLS.Storage.Record.secureMessagingRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MLS.Storage.EpochKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MLS.Storage.Record.key.getter();
  v7 = MLS.Storage.EpochKey.era.getter();
  v8 = MLS.Storage.EpochKey.epochID.getter();
  (*(v3 + 8))(v6, v2);
  result = MLS.Storage.Record.data.getter();
  *a1 = v7;
  a1[1] = v8;
  a1[2] = result;
  a1[3] = v10;
  return result;
}

uint64_t MLS.Storage.ReadGroupKey.secureMessagingRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLS.Storage.ReadGroupKey.groupID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MLS.Storage.ReadEpochKey.secureMessagingRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MLS.Storage.EpochKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Epoch = MLS.Storage.ReadEpochKey.groupID.getter();
  v9 = v8;
  MLS.Storage.ReadEpochKey.key.getter();
  v10 = MLS.Storage.EpochKey.era.getter();
  v11 = MLS.Storage.EpochKey.epochID.getter();
  result = (*(v3 + 8))(v6, v2);
  *a1 = Epoch;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v11;
  return result;
}

uint64_t MLS.Storage.WriteGroupData.secureMessagingRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v70 = a1;
  v82 = type metadata accessor for MLS.Storage.EpochKey();
  v2 = *(v82 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v82);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for MLS.Storage.Record();
  v6 = *(v81 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MLS.Storage.WriteGroupData.groupID.getter();
  v68 = v10;
  v69 = v9;
  v11 = MLS.Storage.WriteGroupData.groupState.getter();
  v66 = v12;
  v67 = v11;
  v13 = MLS.Storage.WriteGroupData.epochInserts.getter();
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  v71 = v1;
  v72 = v2;
  if (v14)
  {
    v83 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v16 = v83;
    v78 = v6;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v65 = v13;
    v20 = v13 + v19;
    v75 = *(v17 + 56);
    v76 = v18;
    v77 = v17;
    v73 = (v17 - 8);
    v74 = (v2 + 8);
    do
    {
      v22 = v80;
      v21 = v81;
      v76(v80, v20, v81);
      MLS.Storage.Record.key.getter();
      v79 = MLS.Storage.EpochKey.era.getter();
      v23 = MLS.Storage.EpochKey.epochID.getter();
      (*v74)(v5, v82);
      v24 = MLS.Storage.Record.data.getter();
      v26 = v25;
      (*v73)(v22, v21);
      v83 = v16;
      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v16 = v83;
      }

      *(v16 + 16) = v28 + 1;
      v29 = (v16 + 32 * v28);
      v29[4] = v79;
      v29[5] = v23;
      v29[6] = v24;
      v29[7] = v26;
      v20 += v75;
      --v14;
    }

    while (v14);
    v73 = v16;

    v2 = v72;
    v6 = v78;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {

    v73 = MEMORY[0x277D84F90];
  }

  v30 = MLS.Storage.WriteGroupData.epochUpdates.getter();
  v31 = *(v30 + 16);
  if (v31)
  {
    v83 = v15;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v83;
    v34 = *(v6 + 16);
    v33 = v6 + 16;
    v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v65 = v30;
    v36 = v30 + v35;
    v76 = *(v33 + 56);
    v77 = v34;
    v74 = (v33 - 8);
    v75 = (v2 + 8);
    v78 = v33;
    do
    {
      v38 = v80;
      v37 = v81;
      v77(v80, v36, v81);
      MLS.Storage.Record.key.getter();
      v79 = MLS.Storage.EpochKey.era.getter();
      v39 = MLS.Storage.EpochKey.epochID.getter();
      (*v75)(v5, v82);
      v40 = MLS.Storage.Record.data.getter();
      v42 = v41;
      (*v74)(v38, v37);
      v83 = v32;
      v44 = *(v32 + 16);
      v43 = *(v32 + 24);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
        v32 = v83;
      }

      *(v32 + 16) = v44 + 1;
      v45 = (v32 + 32 * v44);
      v45[4] = v79;
      v45[5] = v39;
      v45[6] = v40;
      v45[7] = v42;
      v36 += v76;
      --v31;
    }

    while (v31);
    v78 = v32;

    v2 = v72;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  v46 = MLS.Storage.WriteGroupData.epochDeletes.getter();
  v47 = *(v46 + 16);
  if (v47)
  {
    v83 = v15;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
    v48 = v83;
    v50 = *(v2 + 16);
    v49 = v2 + 16;
    v51 = *(v49 + 64);
    v77 = v46;
    v52 = v46 + ((v51 + 32) & ~v51);
    v80 = *(v49 + 56);
    v81 = v50;
    v79 = (v49 - 8);
    do
    {
      v53 = v82;
      v54 = v49;
      (v81)(v5, v52, v82);
      v55 = MLS.Storage.EpochKey.era.getter();
      v56 = MLS.Storage.EpochKey.epochID.getter();
      (*v79)(v5, v53);
      v83 = v48;
      v58 = *(v48 + 16);
      v57 = *(v48 + 24);
      if (v58 >= v57 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
        v48 = v83;
      }

      *(v48 + 16) = v58 + 1;
      v59 = v48 + 16 * v58;
      *(v59 + 32) = v55;
      *(v59 + 40) = v56;
      v52 += v80;
      --v47;
      v49 = v54;
    }

    while (v47);
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  v61 = v70;
  v62 = v67;
  v63 = v68;
  *v70 = v69;
  v61[1] = v63;
  v61[2] = v62;
  v64 = v73;
  v61[3] = v66;
  v61[4] = v64;
  v61[5] = v78;
  v61[6] = v48;
  return result;
}

uint64_t MLS.PersistedMember.MemberState.description.getter()
{
  v1 = 0x676E69646E6570;
  if (*v0 != 1)
  {
    v1 = 0x44676E69646E6570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657474696D6D6F63;
  }
}

uint64_t MLS.PersistedMember.MemberState.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.PersistedMember.MemberState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.PersistedMember.MemberState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.PersistedMember.MemberState()
{
  v1 = 0x676E69646E6570;
  if (*v0 != 1)
  {
    v1 = 0x44676E69646E6570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657474696D6D6F63;
  }
}

uint64_t MLS.PersistedMember.member.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  return outlined copy of MLS.AllMember();
}

uint64_t MLS.PersistedMember.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = 0xE700000000000000;
  v6 = 0x676E69646E6570;
  if (*(v0 + 25) != 1)
  {
    v6 = 0x44676E69646E6570;
    v5 = 0xED00006574656C65;
  }

  if (*(v0 + 25))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x657474696D6D6F63;
  }

  if (*(v0 + 25))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  MEMORY[0x2667545A0](v7, v8);

  MEMORY[0x2667545A0](14906, 0xE200000000000000);
  v9 = MLS.AllMember.description.getter();
  MEMORY[0x2667545A0](v9);

  return 0;
}

unint64_t lazy protocol witness table accessor for type MLS.PersistedMember.MemberState and conformance MLS.PersistedMember.MemberState()
{
  result = lazy protocol witness table cache variable for type MLS.PersistedMember.MemberState and conformance MLS.PersistedMember.MemberState;
  if (!lazy protocol witness table cache variable for type MLS.PersistedMember.MemberState and conformance MLS.PersistedMember.MemberState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.PersistedMember.MemberState and conformance MLS.PersistedMember.MemberState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EpochKey(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MLS.EpochKey(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MLS.Record(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.Record(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.WriteGroupData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.WriteGroupData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.Persister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of MLS.Persister.save(swiftMLSClientID:forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Persister.loadSwiftMLSClientID(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Persister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Persister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 56);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.Persister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Persister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 72);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Persister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 80);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.Persister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 88);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Persister.deleteGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 96);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Persister.deleteSecureMessagingGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 104);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Persister.save(outgoingEventUpdate:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 112);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Persister.save(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 120);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Persister.delete(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 128);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Persister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 136);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Persister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 144);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Persister.loadClientIdentifiersWithEvents()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 152);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of MLS.Persister.loadEvents(clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 160);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Persister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 168);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Persister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 176);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Persister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 184);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Persister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 192);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Persister.read(clientUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 200);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Persister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 208);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 216);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = dispatch thunk of MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.Persister.save(retryCount:forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 224);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.Persister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 232);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.PersistedMember(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 26))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.PersistedMember(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventUpdate(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176) >> 5;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingEventUpdate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 176) = 32 * -a2;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 184) = 0u;
      result += 184;
      *(result + 80) = 0u;
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.OutgoingEventUpdate(uint64_t result, int a2)
{
  *(result + 176) &= 0x1FuLL;
  *(result + 268) = a2 << 30;
  return result;
}

uint64_t MLS.OperationRunner.eventSender.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t MLS.OperationRunner.persister.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return swift_unknownObjectRetain();
}

uint64_t MLS.OperationRunner.uniqueClientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_uniqueClientIdentifier + 8);
  *a1 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_uniqueClientIdentifier);
  a1[1] = v2;
}

uint64_t MLS.OperationRunner.selfMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_selfMember;
  v3 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_selfMember + 8);
  v4 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_selfMember + 16);
  *a1 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_selfMember);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v2 + 24);
  return outlined copy of MLS.AllMember();
}

uint64_t key path getter for MLS.OperationRunner.processIncoming : MLS.OperationRunner@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 184))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingMessage<MLS.AllMember>) -> (@error @owned Error);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingMessage<MLS.AllMember>) -> (@error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a2);
}

uint64_t key path setter for MLS.OperationRunner.processIncoming : MLS.OperationRunner(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingMessage<MLS.AllMember>) -> (@out (), @error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 192);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v3);
  return v7(v6, v5);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingMessage<MLS.AllMember>) -> (@out (), @error @owned Error)(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6();
}

uint64_t MLS.OperationRunner.processIncoming.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_processIncoming);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v3);
  return v3;
}

uint64_t MLS.OperationRunner.processIncoming.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_processIncoming);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v6);
}

uint64_t MLS.OperationRunner.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[29] = v5;
  v6[30] = a5;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[31] = AssociatedConformanceWitness;
  v6[32] = *(*(AssociatedConformanceWitness + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[33] = AssociatedTypeWitness;
  v10 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v11 = *(a3 - 8);
  v6[35] = v11;
  v6[36] = *(v11 + 64);
  v6[37] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v6[38] = swift_task_alloc();
  v13 = swift_checkMetadataState();
  v6[39] = v13;
  v14 = *(v13 - 8);
  v6[40] = v14;
  v15 = *(v14 + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v16 = swift_getAssociatedTypeWitness();
  v6[44] = v16;
  v17 = *(v16 - 8);
  v6[45] = v17;
  v18 = *(v17 + 64) + 15;
  v6[46] = swift_task_alloc();
  v19 = *(*(type metadata accessor for MLS.KeyPackageProvider() - 8) + 64) + 15;
  v6[47] = swift_task_alloc();
  v20 = swift_getAssociatedTypeWitness();
  v6[48] = v20;
  v21 = *(v20 - 8);
  v6[49] = v21;
  v22 = *(v21 + 64) + 15;
  v6[50] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static MLSActor.shared;
  v6[51] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTY0_, v23, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTY0_()
{
  v122 = v0;
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v114 = *(v0 + 208);
  v117 = *(v4 + 80);
  v117(v5, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 8))(v3, AssociatedConformanceWitness);
  v103 = v8;
  v105 = v7;
  *(v0 + 416) = v7;
  *(v0 + 424) = v8;
  v9 = *(v2 + 8);
  v9(v1, v3);
  v117(v5, v4);
  v101 = (*(AssociatedConformanceWitness + 16))(v3, AssociatedConformanceWitness);
  *(v0 + 432) = v101;
  *(v0 + 440) = v10;
  v111 = v10;
  v9(v1, v3);
  v11 = swift_allocObject();
  *(v0 + 448) = v11;
  v117(v5, v4);
  v102 = v11;
  v100 = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 24))(v3, AssociatedConformanceWitness);
  v9(v1, v3);
  v12 = (*(v4 + 72))(v5, v4);
  v14 = v13;
  v15 = (*(v4 + 56))(v5, v4);
  v17 = v16;
  *(v0 + 456) = v15;
  *(v0 + 464) = v16;
  if ((*(v4 + 96))(v5, v4))
  {
    v18 = *(v0 + 232);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v121[0] = v22;
      *v21 = 136315394;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v121);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v111, v121);

      *(v21 + 14) = v24;
      _os_log_impl(&dword_264F1F000, v19, v20, "OperationRunner %s is disabled { identifier: %s } }", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v22, -1, -1);
      MEMORY[0x266755550](v21, -1, -1);
    }

    else
    {
    }

    v56 = *(v0 + 352);
    v58 = *(v0 + 216);
    v57 = *(v0 + 224);
    v59 = *(v0 + 200);
    v121[0] = *(v102 + 16);
    v60 = swift_getAssociatedConformanceWitness();
    v61 = *(v60 + 8);

    v61(v105, v103, v121, 0, v56, v60);

    v62 = *(v0 + 400);
    v63 = *(v0 + 368);
    v64 = *(v0 + 376);
    v66 = *(v0 + 336);
    v65 = *(v0 + 344);
    v67 = *(v0 + 328);
    v69 = *(v0 + 296);
    v68 = *(v0 + 304);
    v70 = *(v0 + 272);

    v71 = *(v0 + 8);

    return v71();
  }

  else
  {
    v25 = *(v0 + 208);
    if ((*(*(v0 + 224) + 64))(*(v0 + 216)))
    {
      v115 = v12;
      v26 = *(v0 + 232);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      v109 = v14;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v121[0] = v30;
        *v29 = 136315394;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v121);
        *(v29 + 12) = 2080;
        *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v111, v121);
        _os_log_impl(&dword_264F1F000, v27, v28, "OperationRunner %s performing expired key package refresh { identifier: %s } }", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v30, -1, -1);
        MEMORY[0x266755550](v29, -1, -1);
      }

      v112 = *(v0 + 400);
      v31 = *(v0 + 384);
      v107 = *(v0 + 376);
      v32 = *(v0 + 352);
      v33 = *(v0 + 312);
      v34 = *(v0 + 248);
      v36 = *(v0 + 224);
      v35 = *(v0 + 232);
      v37 = *(v0 + 208);
      v38 = *(v0 + 216);
      v39 = swift_getAssociatedConformanceWitness();
      *(v0 + 16) = v33;
      *(v0 + 24) = v31;
      *(v0 + 32) = v32;
      *(v0 + 40) = v34;
      *(v0 + 48) = v100;
      *(v0 + 56) = v39;
      v40 = type metadata accessor for MLS.CheckKeyPackageExpirationOperation();
      v117(v38, v36);
      v41 = v35[10];
      v42 = v35[11];
      v43 = v35[2];
      v44 = v35[3];
      outlined init with copy of ServerBag.MLS((v35 + 4), v0 + 64);
      outlined init with copy of MLS.KeyPackageProvider(v35 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_keyPackageProvider, v107);
      v45 = *(v35 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_uniqueClientIdentifier);
      v46 = *(v35 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_uniqueClientIdentifier + 8);
      v120 = *(v35 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_featureFlagsStore);
      v121[0] = v45;
      v121[1] = v46;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v47 = MLS.CheckKeyPackageExpirationOperation.__allocating_init(group:context:persister:eventSender:credentialProvider:keyPackageProvider:featureFlagsStore:clientIdentifier:)(v115, v109, v112, v41, v42, v43, v44, (v0 + 64), v107, &v120, v121);
      *(v0 + 472) = v47;
      *(v0 + 192) = v47;
      v48 = *(*v35 + 216);
      v118 = (v48 + *v48);
      v49 = v48[1];
      v50 = swift_task_alloc();
      *(v0 + 480) = v50;
      WitnessTable = swift_getWitnessTable();
      *v50 = v0;
      v50[1] = _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTQ1_;
      v52 = *(v0 + 368);
      v53 = *(v0 + 344);
      v54 = *(v0 + 232);

      return v118(v52, v0 + 192, v40, WitnessTable, v53);
    }

    else
    {

      v72 = *(v0 + 464);
      v73 = *(v0 + 440);
      v74 = *(v0 + 232);
      *(v0 + 488) = OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_logger;

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v78 = *(v0 + 456);
        v77 = *(v0 + 464);
        v80 = *(v0 + 432);
        v79 = *(v0 + 440);
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v121[0] = v82;
        *v81 = 136315394;
        *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v77, v121);
        *(v81 + 12) = 2080;
        *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v79, v121);
        _os_log_impl(&dword_264F1F000, v75, v76, "OperationRunner %s enqueueing event { identifier: %s }", v81, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v82, -1, -1);
        MEMORY[0x266755550](v81, -1, -1);
      }

      v113 = *(v0 + 456);
      v116 = *(v0 + 464);
      v83 = *(v0 + 448);
      v84 = *(v0 + 296);
      v85 = *(v0 + 304);
      v104 = v84;
      v106 = *(v0 + 440);
      v86 = *(v0 + 280);
      v108 = *(v0 + 288);
      v110 = *(v0 + 432);
      v87 = *(v0 + 232);
      v88 = *(v0 + 208);
      v119 = *(v0 + 216);
      Date.init()();
      v89 = type metadata accessor for MetricCollector.Event();
      v90 = *(v89 + 20);
      v91 = type metadata accessor for Date();
      (*(*(v91 - 8) + 56))(v85 + v90, 1, 1, v91);
      (*(*(v89 - 8) + 56))(v85, 0, 1, v89);
      specialized Dictionary.subscript.setter(v85, 0x676E6975657551, 0xE700000000000000);
      v92 = swift_allocObject();
      *(v0 + 496) = v92;
      *(v92 + 16) = 0;
      (*(v86 + 16))(v84, v88);
      v93 = (*(v86 + 80) + 80) & ~*(v86 + 80);
      v94 = swift_allocObject();
      *(v0 + 504) = v94;
      *(v94 + 16) = v119;
      *(v94 + 32) = v87;
      *(v94 + 40) = v113;
      *(v94 + 48) = v116;
      *(v94 + 56) = v110;
      *(v94 + 64) = v106;
      *(v94 + 72) = v83;
      (*(v86 + 32))(v94 + v93, v104, v119);
      *(v94 + ((v108 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)) = v92;

      v95 = swift_task_alloc();
      *(v0 + 512) = v95;
      *v95 = v0;
      v95[1] = _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTQ3_;
      v96 = *(v0 + 224);
      v97 = *(v0 + 232);
      v99 = *(v0 + 208);
      v98 = *(v0 + 216);

      return MLS.OperationRunner.enqueue<A>(operation:sendBlock:)(v99, &_s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TATu, v94, v98, v96);
    }
  }
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v11 = *v1;

  if (v0)
  {
    v4 = v2[58];
    v5 = v2[55];
    v6 = v2[51];

    v7 = _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTY5_;
    v8 = v6;
  }

  else
  {
    v9 = v2[51];
    (*(v2[45] + 8))(v2[46], v2[44]);
    v7 = _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTY2_;
    v8 = v9;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTY2_()
{
  v39 = v0;
  v1 = v0[59];

  v2 = v0[58];
  v3 = v0[55];
  v4 = v0[29];
  v0[61] = OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_logger;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[57];
    v7 = v0[58];
    v10 = v0[54];
    v9 = v0[55];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v38);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v38);
    _os_log_impl(&dword_264F1F000, v5, v6, "OperationRunner %s enqueueing event { identifier: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v35 = v0[57];
  v36 = v0[58];
  v13 = v0[56];
  v14 = v0[37];
  v15 = v0[38];
  v31 = v14;
  v32 = v0[55];
  v16 = v0[35];
  v33 = v0[36];
  v34 = v0[54];
  v17 = v0[29];
  v18 = v0[26];
  v37 = *(v0 + 27);
  Date.init()();
  v19 = type metadata accessor for MetricCollector.Event();
  v20 = *(v19 + 20);
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v15 + v20, 1, 1, v21);
  (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  specialized Dictionary.subscript.setter(v15, 0x676E6975657551, 0xE700000000000000);
  v22 = swift_allocObject();
  v0[62] = v22;
  *(v22 + 16) = 0;
  (*(v16 + 16))(v14, v18);
  v23 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v24 = swift_allocObject();
  v0[63] = v24;
  *(v24 + 16) = v37;
  *(v24 + 32) = v17;
  *(v24 + 40) = v35;
  *(v24 + 48) = v36;
  *(v24 + 56) = v34;
  *(v24 + 64) = v32;
  *(v24 + 72) = v13;
  (*(v16 + 32))(v24 + v23, v31, v37);
  *(v24 + ((v33 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;

  v25 = swift_task_alloc();
  v0[64] = v25;
  *v25 = v0;
  v25[1] = _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTQ3_;
  v26 = v0[28];
  v27 = v0[29];
  v29 = v0[26];
  v28 = v0[27];

  return MLS.OperationRunner.enqueue<A>(operation:sendBlock:)(v29, &_s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TATu, v24, v28, v26);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTQ3_()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  v2[65] = v0;

  v5 = v2[63];
  if (v0)
  {
    v6 = v2[58];
    v7 = v2[55];
    v8 = v2[51];

    v9 = _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTY6_;
    v10 = v8;
  }

  else
  {
    v11 = v2[51];

    v9 = _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTY4_;
    v10 = v11;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTY4_()
{
  v40 = v0;
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[55];
  v4 = v0[29];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[58];
  if (v7)
  {
    v9 = v0[57];
    v11 = v0[54];
    v10 = v0[55];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v12 = 136315394;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v39);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v39);

    *(v12 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "OperationRunner %s returning processedContext to caller { identifier: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {
    v16 = v0[55];
  }

  v17 = v0[62];
  v18 = v0[56];
  v37 = v0[52];
  v38 = v0[53];
  v19 = v0[44];
  v21 = v0[27];
  v20 = v0[28];
  v22 = v0[25];
  swift_beginAccess();
  v39 = *(v18 + 16);
  swift_beginAccess();
  v23 = *(v17 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = *(AssociatedConformanceWitness + 8);

  v25(v37, v38, &v39, v23, v19, AssociatedConformanceWitness);

  v26 = v0[50];
  v27 = v0[46];
  v28 = v0[47];
  v30 = v0[42];
  v29 = v0[43];
  v31 = v0[41];
  v33 = v0[37];
  v32 = v0[38];
  v34 = v0[34];

  v35 = v0[1];

  return v35();
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTY5_()
{
  v1 = v0[59];
  v2 = v0[56];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[30];
  outlined consume of Data?(v0[52], v0[53]);
  (*(v5 + 32))(v6, v3, v4);

  v7 = v0[50];
  v8 = v0[46];
  v9 = v0[47];
  v11 = v0[42];
  v10 = v0[43];
  v12 = v0[41];
  v14 = v0[37];
  v13 = v0[38];
  v15 = v0[34];

  v16 = v0[1];

  return v16();
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTY6_()
{
  v1 = *(v0 + 520);
  *(v0 + 176) = v1;
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 496);
    v39 = *(v0 + 448);
    v7 = *(v0 + 416);
    v6 = *(v0 + 424);
    v9 = *(v0 + 328);
    v8 = *(v0 + 336);
    v10 = *(v0 + 312);
    v11 = *(v0 + 320);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);

    (*(v11 + 32))(v9, v8, v10);
    (*(v11 + 16))(v13, v9, v10);
    swift_willThrowTyped(v13, v10, *(*(v12 + 8) + 8));
    outlined consume of Data?(v7, v6);
    (*(v11 + 8))(v9, v10);
  }

  else
  {
    v14 = *(v0 + 520);
    v38 = *(v0 + 496);
    v40 = *(v0 + 448);
    v16 = *(v0 + 416);
    v15 = *(v0 + 424);
    v17 = *(v0 + 312);
    v18 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v22 = *(v0 + 240);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 104))(v18, AssociatedConformanceWitness);
    swift_getErrorValue();
    v24 = *(v0 + 104);
    v25 = Error.readableDescription.getter(*(v0 + 112), *(v0 + 120));
    (*(v20 + 104))(v19, v25, v26, v17, v20);
    swift_willThrowTyped(v22, v17, *(*(v20 + 8) + 8));
    outlined consume of Data?(v16, v15);
  }

  v27 = *(v0 + 400);
  v28 = *(v0 + 368);
  v29 = *(v0 + 376);
  v31 = *(v0 + 336);
  v30 = *(v0 + 344);
  v32 = *(v0 + 328);
  v34 = *(v0 + 296);
  v33 = *(v0 + 304);
  v35 = *(v0 + 272);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 608) = v19;
  *(v8 + 600) = v18;
  *(v8 + 592) = v17;
  *(v8 + 584) = v16;
  *(v8 + 568) = v15;
  *(v8 + 560) = a8;
  *(v8 + 552) = a7;
  *(v8 + 544) = a6;
  *(v8 + 536) = a5;
  *(v8 + 528) = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 616) = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  *(v8 + 624) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v8 + 648) = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TY0_, v12, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TY0_()
{
  v26 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 552);
  v3 = *(v0 + 536);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v25);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v25);
    _os_log_impl(&dword_264F1F000, v4, v5, "OperationRunner %s event dequeued { identifier: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v12 = *(v0 + 576);
  v13 = *(v0 + 536);
  swift_beginAccess();
  v14._countAndFlagsBits = 0x676E6975657551;
  v14._object = 0xE700000000000000;
  MetricCollector.end(label:)(v14);
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 520) = *(v12 + 16);
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 448) = 0;
  v15 = *(*v13 + 224);

  v24 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 656) = v17;
  *v17 = v0;
  v17[1] = _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TQ1_;
  v18 = *(v0 + 640);
  v19 = *(v0 + 608);
  v20 = *(v0 + 600);
  v21 = *(v0 + 584);
  v22 = *(v0 + 536);

  return v24(v0 + 16, v21, v0 + 520, v0 + 360, v0 + 448, v20, v19, v18);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v9 = *v1;

  if (v0)
  {
    v4 = *(v2 + 648);
    outlined destroy of NSObject?(v2 + 360, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = *(v2 + 520);

    v6 = _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TY3_;
  }

  else
  {
    v4 = *(v2 + 648);
    outlined destroy of NSObject?(v2 + 360, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v7 = *(v2 + 520);

    v6 = _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TY2_;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TY2_()
{
  v1 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v1;
  *(v0 + 232) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v2;
  v3 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 592);
  v7 = *(v0 + 576);
  v8 = *(v0 + 136);
  *(v0 + 248) = *(v0 + 128);
  v9 = *(v0 + 528);
  *(v0 + 184) = v3;
  swift_beginAccess();
  v10 = *(v7 + 16);
  *(v7 + 16) = v8;

  v11 = *(v0 + 248);
  swift_beginAccess();
  v12 = *(v6 + 16);
  *(v6 + 16) = v11;

  outlined init with copy of MLS.EventQueue.Result(v0 + 144, v0 + 256);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 136);
  v14 = *(v0 + 160);
  v13 = *(v0 + 176);
  *v9 = *(v0 + 144);
  *(v9 + 16) = v14;
  *(v9 + 32) = v13;
  v16 = *(v0 + 208);
  v15 = *(v0 + 224);
  v17 = *(v0 + 192);
  *(v9 + 96) = *(v0 + 240);
  *(v9 + 64) = v16;
  *(v9 + 80) = v15;
  *(v9 + 48) = v17;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TY3_()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = *(v0[78] + 32);
  v3(v0[79], v0[80], v0[77]);
  v4 = *(*(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8) + 8);
  v5 = _getErrorEmbeddedNSError<A>(_:)();
  v6 = v0[79];
  if (v5)
  {
    (*(v0[78] + 8))(v0[79], v0[77]);
  }

  else
  {
    v7 = v0[77];
    swift_allocError();
    v3(v8, v6, v7);
  }

  v9 = v0[80];
  v10 = v0[79];

  v11 = v0[1];

  return v11();
}

uint64_t MLS.OperationRunner.OnQueueRunResult.eventQueueResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 88);
  v13 = *(v1 + 72);
  v3 = v13;
  v14 = v4;
  v15 = *(v1 + 104);
  v5 = v15;
  v6 = *(v1 + 24);
  v10[0] = *(v1 + 8);
  v10[1] = v6;
  v11 = *(v1 + 40);
  v7 = v11;
  v12 = v2;
  *a1 = v10[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  return outlined init with copy of MLS.EventQueue.Result(v10, v9);
}

__n128 MLS.OperationRunner.OnQueueRunResult.init(metricCollector:eventQueueResult:eventSendTask:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 32);
  *(a4 + 56) = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a4 + 72) = *(a2 + 64);
  *(a4 + 88) = v5;
  result = *a2;
  v7 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v7;
  *a4 = *a1;
  *(a4 + 104) = *(a2 + 96);
  *(a4 + 40) = v4;
  *(a4 + 112) = a3;
  return result;
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlF(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 3016) = a8;
  *(v9 + 3008) = v8;
  *(v9 + 3000) = a7;
  *(v9 + 2992) = a6;
  *(v9 + 2984) = a4;
  *(v9 + 2976) = a2;
  *(v9 + 2968) = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v9 + 3024) = AssociatedConformanceWitness;
  *(v9 + 3032) = *(*(AssociatedConformanceWitness + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v9 + 3040) = AssociatedTypeWitness;
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  *(v9 + 3048) = swift_task_alloc();
  v15 = type metadata accessor for MLS.MLSError();
  *(v9 + 3056) = v15;
  v16 = *(v15 - 8);
  *(v9 + 3064) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 3072) = swift_task_alloc();
  *(v9 + 3080) = swift_task_alloc();
  *(v9 + 3088) = swift_task_alloc();
  *(v9 + 3096) = swift_task_alloc();
  v18 = type metadata accessor for MetricCollector.Event();
  *(v9 + 3104) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v9 + 3112) = swift_task_alloc();
  *(v9 + 3120) = swift_task_alloc();
  v20 = swift_checkMetadataState();
  *(v9 + 3128) = v20;
  v21 = *(v20 - 8);
  *(v9 + 3136) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 3144) = swift_task_alloc();
  *(v9 + 3152) = swift_task_alloc();
  *(v9 + 3160) = swift_task_alloc();
  *(v9 + 3168) = swift_task_alloc();
  *(v9 + 3176) = swift_task_alloc();
  *(v9 + 3184) = swift_task_alloc();
  *(v9 + 3192) = swift_task_alloc();
  *(v9 + 3200) = swift_task_alloc();
  *(v9 + 3208) = swift_task_alloc();
  v23 = swift_getAssociatedTypeWitness();
  *(v9 + 3216) = v23;
  v24 = *(v23 - 8);
  *(v9 + 3224) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 3232) = swift_task_alloc();
  *(v9 + 3240) = *a3;
  *(v9 + 3248) = *a5;
  *(v9 + 3264) = *(a5 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v26 = static MLSActor.shared;
  *(v9 + 3272) = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY0_, v26, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY0_()
{
  v1 = v0[405];
  v2 = v0[404];
  v3 = v0[403];
  v4 = v0[402];
  v5 = v0[376];
  v6 = v0[375];
  v7 = v0[374];
  v8 = v0[372];
  (*(v6 + 80))(v7, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[410] = (*(AssociatedConformanceWitness + 16))(v4, AssociatedConformanceWitness);
  v0[411] = v10;
  (*(v3 + 8))(v2, v4);
  v0[370] = v1;
  v11 = *(v6 + 72);

  v0[412] = v11(v7, v6);
  v0[413] = v12;
  v0[414] = (*(v6 + 56))(v7, v6);
  v0[415] = v13;
  v14 = *(**(v5 + 72) + 176);
  v23 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[416] = v16;
  *v16 = v0;
  v16[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ1_;
  v17 = v0[401];
  v18 = v0[375];
  v19 = v0[374];
  v20 = v0[373];
  v21 = v0[372];

  return (v23)(v0 + 235, v21, v20, v19, v18, v17);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 3328);
  v12 = *v1;

  if (v0)
  {
    v4 = v2[415];
    v5 = v2[413];
    v6 = v2[411];
    v7 = v2[409];
    v8 = v2[405];

    v9 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY13_;
    v10 = v7;
  }

  else
  {
    v10 = v2[409];
    v9 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY2_;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY2_()
{
  v80 = v0;
  v1 = *(v0 + 2976);
  v2 = (*(*(v0 + 3000) + 96))(*(v0 + 2992));
  v3 = *(v0 + 3320);
  if (v2)
  {
    v4 = *(v0 + 3304);
    v5 = *(v0 + 3288);
    v6 = *(v0 + 3008);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 3320);
    if (v9)
    {
      v11 = *(v0 + 3312);
      v12 = *(v0 + 3288);
      v13 = *(v0 + 3280);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v79 = v15;
      *v14 = 136315394;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v79);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2080;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v79);

      *(v14 + 14) = v17;
      _os_log_impl(&dword_264F1F000, v7, v8, "OperationRunner %s told not to run on group { identifier: %s } }", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v15, -1, -1);
      MEMORY[0x266755550](v14, -1, -1);
    }

    else
    {
      v46 = *(v0 + 3288);
      v47 = *(v0 + 3320);
    }

    outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    v48 = *(v0 + 2968);
    *v48 = *(v0 + 2960);
    *(v48 + 8) = 1;
    *(v48 + 16) = 0u;
    *(v48 + 32) = 0u;
    *(v48 + 48) = 0u;
    *(v48 + 64) = 0u;
    *(v48 + 80) = 0u;
    *(v48 + 96) = 0;
    *(v48 + 104) = 3;
    *(v48 + 112) = 0;
    v49 = *(v0 + 3232);
    v50 = *(v0 + 3208);
    v51 = *(v0 + 3200);
    v52 = *(v0 + 3192);
    v53 = *(v0 + 3184);
    v54 = *(v0 + 3176);
    v55 = *(v0 + 3168);
    v56 = *(v0 + 3160);
    v57 = *(v0 + 3152);
    v58 = *(v0 + 3144);
    v69 = *(v0 + 3120);
    v70 = *(v0 + 3112);
    v71 = *(v0 + 3096);
    v72 = *(v0 + 3088);
    v73 = *(v0 + 3080);
    v74 = *(v0 + 3072);
    v76 = *(v0 + 3048);

    v59 = *(v0 + 8);

    return v59();
  }

  else
  {
    v18 = *(v0 + 3288);
    v19 = *(v0 + 3248);
    v20 = *(v0 + 3120);
    v21 = *(v0 + 3112);
    v22 = *(v0 + 3104);

    Date.init()();
    v23 = *(v22 + 20);
    v24 = type metadata accessor for Date();
    (*(*(v24 - 8) + 56))(v20 + v23, 1, 1, v24);
    outlined init with take of MetricCollector.Event(v20, v21, type metadata accessor for MetricCollector.Event);
    v25 = *(v0 + 2960);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v25;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, 0xD000000000000013, 0x80000002651E7920, isUniquelyReferenced_nonNull_native);

    *(v0 + 2960) = v25;
    if (v19)
    {
      v27 = *(v0 + 3264);
      v28 = *(v0 + 3256);
      v29 = *(v0 + 3248);
      *(v0 + 3360) = v29;
      *(v0 + 3352) = v28;
      *(v0 + 3344) = v27;
      outlined copy of MLS.KeyPackageFetcher.FetchResult?(v29);
      v30._object = 0x80000002651E7920;
      v30._countAndFlagsBits = 0xD000000000000013;
      MetricCollector.end(label:)(v30);
      v31 = *(v0 + 2960);
      outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 2144);
      v32 = (v0 + 2144);
      if (*(v0 + 2224))
      {
        outlined init with take of MLS.KeyUpdatePolicy(v32, v0 + 2360);
        v33 = *(v0 + 2200);
        *(v0 + 2320) = *(v0 + 2184);
        *(v0 + 2336) = v33;
        *(v0 + 2352) = *(v0 + 2216);
        v34 = *(v0 + 2384);
        v35 = *(v0 + 2392);
        __swift_project_boxed_opaque_existential_1((v0 + 2360), v34);
        *(v0 + 2952) = v31;
        *(v0 + 2720) = v29;
        *(v0 + 2728) = v28;
        *(v0 + 2736) = v27;
        v36 = *(v35 + 24);
        v75 = (v36 + *v36);
        v37 = v36[1];
        v38 = swift_task_alloc();
        *(v0 + 3368) = v38;
        *v38 = v0;
        v38[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ5_;
        v39 = v0 + 1336;
        v40 = v0 + 2320;
        v41 = v0 + 2952;
        v42 = v0 + 2720;
        v43 = v34;
        v44 = v35;
        v45 = v75;
      }

      else
      {
        outlined init with take of MLS.KeyUpdatePolicy(v32, v0 + 2640);
        outlined init with take of MLS.KeyUpdatePolicy((v0 + 2184), v0 + 2680);
        v64 = *(v0 + 2664);
        v65 = *(v0 + 2672);
        __swift_project_boxed_opaque_existential_1((v0 + 2640), v64);
        *(v0 + 2896) = v31;
        *(v0 + 2768) = v29;
        *(v0 + 2776) = v28;
        *(v0 + 2784) = v27;
        v66 = *(v65 + 24);
        v78 = (v66 + *v66);
        v67 = v66[1];
        v68 = swift_task_alloc();
        *(v0 + 3384) = v68;
        *v68 = v0;
        v68[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ6_;
        v39 = v0 + 1336;
        v40 = v0 + 2680;
        v41 = v0 + 2896;
        v42 = v0 + 2768;
        v43 = v64;
        v44 = v65;
        v45 = v78;
      }
    }

    else
    {
      v61 = *(**(*(v0 + 3008) + 96) + 104);
      v77 = (v61 + *v61);
      v62 = v61[1];
      v63 = swift_task_alloc();
      *(v0 + 3336) = v63;
      *v63 = v0;
      v63[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ3_;
      v44 = *(v0 + 3200);
      v43 = *(v0 + 3000);
      v42 = *(v0 + 2992);
      v40 = *(v0 + 2976);
      v39 = v0 + 2864;
      v41 = v0 + 1880;
      v45 = v77;
    }

    return v45(v39, v40, v41, v42, v43, v44);
  }
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ3_()
{
  v2 = *v1;
  v3 = *(*v1 + 3336);
  v4 = *v1;

  v5 = *(v2 + 3272);
  if (v0)
  {
    v6 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY19_;
  }

  else
  {
    v6 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY4_;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY4_()
{
  v1 = *(v0 + 2864);
  v2 = *(v0 + 2872);
  v3 = *(v0 + 2880);
  *(v0 + 3360) = v1;
  *(v0 + 3352) = v2;
  *(v0 + 3344) = v3;
  v4 = *(v0 + 3264);
  v5 = *(v0 + 3256);
  outlined copy of MLS.KeyPackageFetcher.FetchResult?(*(v0 + 3248));
  v6._object = 0x80000002651E7920;
  v6._countAndFlagsBits = 0xD000000000000013;
  MetricCollector.end(label:)(v6);
  v7 = *(v0 + 2960);
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 2144);
  v8 = (v0 + 2144);
  if (*(v0 + 2224) == 1)
  {
    outlined init with take of MLS.KeyUpdatePolicy(v8, v0 + 2360);
    v9 = *(v0 + 2200);
    *(v0 + 2320) = *(v0 + 2184);
    *(v0 + 2336) = v9;
    *(v0 + 2352) = *(v0 + 2216);
    v10 = *(v0 + 2384);
    v11 = *(v0 + 2392);
    __swift_project_boxed_opaque_existential_1((v0 + 2360), v10);
    *(v0 + 2952) = v7;
    *(v0 + 2720) = v1;
    *(v0 + 2728) = v2;
    *(v0 + 2736) = v3;
    v12 = *(v11 + 24);
    v28 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 3368) = v14;
    *v14 = v0;
    v14[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ5_;
    v15 = v0 + 1336;
    v16 = v0 + 2320;
    v17 = v0 + 2952;
    v18 = v0 + 2720;
    v19 = v10;
    v20 = v11;
    v21 = v28;
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v8, v0 + 2640);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 2184), v0 + 2680);
    v22 = *(v0 + 2664);
    v23 = *(v0 + 2672);
    __swift_project_boxed_opaque_existential_1((v0 + 2640), v22);
    *(v0 + 2896) = v7;
    *(v0 + 2768) = v1;
    *(v0 + 2776) = v2;
    *(v0 + 2784) = v3;
    v24 = *(v23 + 24);
    v29 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    *(v0 + 3384) = v26;
    *v26 = v0;
    v26[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ6_;
    v15 = v0 + 1336;
    v16 = v0 + 2680;
    v17 = v0 + 2896;
    v18 = v0 + 2768;
    v19 = v22;
    v20 = v23;
    v21 = v29;
  }

  return v21(v15, v16, v17, v18, v19, v20);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ5_()
{
  v2 = *v1;
  v3 = *(*v1 + 3368);
  v7 = *v1;
  *(*v1 + 3376) = v0;

  v4 = *(v2 + 3272);
  if (v0)
  {
    v5 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY8_;
  }

  else
  {
    v5 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY7_;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ6_()
{
  v2 = *v1;
  v3 = *(*v1 + 3384);
  v7 = *v1;
  *(*v1 + 3392) = v0;

  v4 = *(v2 + 3272);
  if (v0)
  {
    v5 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY10_;
  }

  else
  {
    v5 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY9_;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY7_()
{
  v1 = v0[420];
  v2 = v0[419];
  v3 = v0[418];

  outlined destroy of NSObject?((v0 + 290), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 295);
  memcpy(v0 + 112, v0 + 167, 0x1B8uLL);
  v4 = swift_task_alloc();
  v0[425] = v4;
  *v4 = v0;
  v4[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ11_;
  v5 = v0[376];
  v6 = v0[375];
  v7 = v0[374];
  v8 = v0[372];
  v9 = v0[371];

  return MLS.OperationRunner.handle<A>(operationResult:for:)(v9, (v0 + 112), v8, v7, v6);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY8_()
{
  outlined destroy of NSObject?(v0 + 2320, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2360));
  v1 = *(v0 + 3376);
  v2 = *(v0 + 3360);
  v3 = *(v0 + 3352);
  v4 = *(v0 + 3344);
  v5 = *(v0 + 3096);
  v6 = *(v0 + 3056);

  *(v0 + 2888) = v1;
  v7 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 3072);
    v9 = *(v0 + 3008);
    (*(*(v0 + 3064) + 32))(v8, *(v0 + 3096), *(v0 + 3056));
    if ((*(**(v9 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer) + 176))(v8) == 5)
    {
      v10 = *(v0 + 3008);

      v11 = *(**(v10 + 96) + 104);
      v100 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 3480) = v13;
      *v13 = v0;
      v13[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ20_;
      v14 = *(v0 + 3160);
      v15 = *(v0 + 3000);
      v16 = *(v0 + 2992);
      v17 = *(v0 + 2976);

      return v100(v0 + 2744, v17, v0 + 1880, v16, v15, v14);
    }

    (*(*(v0 + 3064) + 8))(*(v0 + 3072), *(v0 + 3056));
  }

  *(v0 + 3416) = v1;
  v19 = *(v0 + 3000);
  v20 = *(v0 + 2992);
  v21 = *(v0 + 2976);
  v22 = *(v19 + 112);
  v23 = v1;
  v24 = v22(v20, v19);
  outlined consume of MLS.GroupOperationErrorHandlingPolicy(v24);

  if (v24 < 2)
  {
    v25 = *(v0 + 3088);
    v26 = *(v0 + 3056);
    *(v0 + 2944) = v1;
    v27 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v28 = *(v0 + 3000);
      v29 = *(v0 + 2992);
      v30 = *(v0 + 2976);
      (*(*(v0 + 3064) + 32))(*(v0 + 3080), *(v0 + 3088), *(v0 + 3056));
      v31 = v22(v29, v28);
      if (v31 == 1)
      {
        v32 = *(v0 + 3008);

        v33 = *(v32 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer);
        outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 1968);
        v34 = (v0 + 2008);
        if (*(v0 + 2048))
        {
          v35 = *(v0 + 2024);
          *(v0 + 2520) = *v34;
          *(v0 + 2536) = v35;
          *(v0 + 2552) = *(v0 + 2040);
        }

        else
        {
          outlined init with take of MLS.KeyUpdatePolicy(v34, v0 + 2520);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1968));
        v85 = *(*v33 + 168);
        v103 = v85 + *v85;
        v86 = v85[1];
        v87 = swift_task_alloc();
        *(v0 + 3472) = v87;
        *v87 = v0;
        v87[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ17_;
        v88 = *(v0 + 3304);
        v89 = *(v0 + 3296);
        v90 = *(v0 + 3080);
        v91 = *(v0 + 3008);
        v92 = *(v0 + 2992);
        v93 = *(v0 + 2976);
        v105 = *(v0 + 3000);
        v106 = *(v0 + 3176);

        __asm { BRAA            X8, X16 }
      }

      v49 = *(v0 + 3304);
      v50 = *(v0 + 3080);
      v51 = *(v0 + 3064);
      v52 = *(v0 + 3056);
      outlined consume of MLS.GroupOperationErrorHandlingPolicy(v31);

      (*(v51 + 8))(v50, v52);
      v53 = *(v0 + 2960);
    }

    else
    {
      v43 = *(v0 + 3304);
      v44 = *(v0 + 2960);
    }

    goto LABEL_19;
  }

  v36 = *(v0 + 3304);
  v37 = *(v0 + 3000);
  v38 = *(v0 + 2992);
  v39 = *(v0 + 2976);

  v40 = v22(v38, v37);
  *(v0 + 3424) = v40;
  *(v0 + 3432) = v41;
  if (v40 < 2)
  {
    outlined consume of MLS.GroupOperationErrorHandlingPolicy(v40);
    v42 = *(v0 + 2960);

    swift_willThrow();
LABEL_19:
    v54 = *(v0 + 3192);
    v55 = *(v0 + 3128);
    *(v0 + 2928) = v1;
    v56 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v57 = *(v0 + 3184);
      v58 = *(v0 + 3136);
      v59 = *(v0 + 3128);
      v60 = *(v0 + 3032);
      v61 = *(v0 + 3016);
      (*(v58 + 32))(v57, *(v0 + 3192), v59);
      (*(v58 + 16))(v61, v57, v59);
      swift_willThrowTyped(v61, v59, *(*(v60 + 8) + 8));

      (*(v58 + 8))(v57, v59);
      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    else
    {
      v62 = *(v0 + 3128);
      v63 = *(v0 + 3048);
      v64 = *(v0 + 3040);
      v65 = *(v0 + 3032);
      v66 = *(v0 + 3024);
      v67 = *(v0 + 3016);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 104))(v64, AssociatedConformanceWitness);
      swift_getErrorValue();
      v69 = *(v0 + 2792);
      v70 = Error.readableDescription.getter(*(v0 + 2800), *(v0 + 2808));
      (*(v65 + 104))(v63, v70, v71, v62, v65);
      swift_willThrowTyped(v67, v62, *(*(v65 + 8) + 8));

      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    v72 = *(v0 + 3232);
    v73 = *(v0 + 3208);
    v74 = *(v0 + 3200);
    v75 = *(v0 + 3192);
    v76 = *(v0 + 3184);
    v77 = *(v0 + 3176);
    v78 = *(v0 + 3168);
    v79 = *(v0 + 3160);
    v80 = *(v0 + 3152);
    v81 = *(v0 + 3144);
    v94 = *(v0 + 3120);
    v95 = *(v0 + 3112);
    v96 = *(v0 + 3096);
    v97 = *(v0 + 3088);
    v98 = *(v0 + 3080);
    v99 = *(v0 + 3072);
    v101 = *(v0 + 3048);

    v82 = *(v0 + 8);

    return v82();
  }

  v45 = v40;
  v46 = (v0 + 2560);
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 2056);
  v47 = (v0 + 2096);
  if (*(v0 + 2136))
  {
    v48 = *(v0 + 2112);
    *v46 = *v47;
    *(v0 + 2576) = v48;
    *(v0 + 2592) = *(v0 + 2128);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v47, v0 + 2560);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  *(v0 + 2904) = *(v0 + 2960);
  v102 = (v45 + *v45);
  v83 = v45[1];
  v84 = swift_task_alloc();
  *(v0 + 3440) = v84;
  *v84 = v0;
  v84[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ14_;

  return v102(v0 + 456, v1, v46, v0 + 2904);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY9_()
{
  v1 = v0[420];
  v2 = v0[419];
  v3 = v0[418];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 335);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 330);
  memcpy(v0 + 112, v0 + 167, 0x1B8uLL);
  v4 = swift_task_alloc();
  v0[425] = v4;
  *v4 = v0;
  v4[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ11_;
  v5 = v0[376];
  v6 = v0[375];
  v7 = v0[374];
  v8 = v0[372];
  v9 = v0[371];

  return MLS.OperationRunner.handle<A>(operationResult:for:)(v9, (v0 + 112), v8, v7, v6);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY10_()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2680));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2640));
  v1 = *(v0 + 3392);
  v2 = *(v0 + 3360);
  v3 = *(v0 + 3352);
  v4 = *(v0 + 3344);
  v5 = *(v0 + 3096);
  v6 = *(v0 + 3056);

  *(v0 + 2888) = v1;
  v7 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 3072);
    v9 = *(v0 + 3008);
    (*(*(v0 + 3064) + 32))(v8, *(v0 + 3096), *(v0 + 3056));
    if ((*(**(v9 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer) + 176))(v8) == 5)
    {
      v10 = *(v0 + 3008);

      v11 = *(**(v10 + 96) + 104);
      v100 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 3480) = v13;
      *v13 = v0;
      v13[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ20_;
      v14 = *(v0 + 3160);
      v15 = *(v0 + 3000);
      v16 = *(v0 + 2992);
      v17 = *(v0 + 2976);

      return v100(v0 + 2744, v17, v0 + 1880, v16, v15, v14);
    }

    (*(*(v0 + 3064) + 8))(*(v0 + 3072), *(v0 + 3056));
  }

  *(v0 + 3416) = v1;
  v19 = *(v0 + 3000);
  v20 = *(v0 + 2992);
  v21 = *(v0 + 2976);
  v22 = *(v19 + 112);
  v23 = v1;
  v24 = v22(v20, v19);
  outlined consume of MLS.GroupOperationErrorHandlingPolicy(v24);

  if (v24 < 2)
  {
    v25 = *(v0 + 3088);
    v26 = *(v0 + 3056);
    *(v0 + 2944) = v1;
    v27 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v28 = *(v0 + 3000);
      v29 = *(v0 + 2992);
      v30 = *(v0 + 2976);
      (*(*(v0 + 3064) + 32))(*(v0 + 3080), *(v0 + 3088), *(v0 + 3056));
      v31 = v22(v29, v28);
      if (v31 == 1)
      {
        v32 = *(v0 + 3008);

        v33 = *(v32 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer);
        outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 1968);
        v34 = (v0 + 2008);
        if (*(v0 + 2048))
        {
          v35 = *(v0 + 2024);
          *(v0 + 2520) = *v34;
          *(v0 + 2536) = v35;
          *(v0 + 2552) = *(v0 + 2040);
        }

        else
        {
          outlined init with take of MLS.KeyUpdatePolicy(v34, v0 + 2520);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1968));
        v85 = *(*v33 + 168);
        v103 = v85 + *v85;
        v86 = v85[1];
        v87 = swift_task_alloc();
        *(v0 + 3472) = v87;
        *v87 = v0;
        v87[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ17_;
        v88 = *(v0 + 3304);
        v89 = *(v0 + 3296);
        v90 = *(v0 + 3080);
        v91 = *(v0 + 3008);
        v92 = *(v0 + 2992);
        v93 = *(v0 + 2976);
        v105 = *(v0 + 3000);
        v106 = *(v0 + 3176);

        __asm { BRAA            X8, X16 }
      }

      v49 = *(v0 + 3304);
      v50 = *(v0 + 3080);
      v51 = *(v0 + 3064);
      v52 = *(v0 + 3056);
      outlined consume of MLS.GroupOperationErrorHandlingPolicy(v31);

      (*(v51 + 8))(v50, v52);
      v53 = *(v0 + 2960);
    }

    else
    {
      v43 = *(v0 + 3304);
      v44 = *(v0 + 2960);
    }

    goto LABEL_19;
  }

  v36 = *(v0 + 3304);
  v37 = *(v0 + 3000);
  v38 = *(v0 + 2992);
  v39 = *(v0 + 2976);

  v40 = v22(v38, v37);
  *(v0 + 3424) = v40;
  *(v0 + 3432) = v41;
  if (v40 < 2)
  {
    outlined consume of MLS.GroupOperationErrorHandlingPolicy(v40);
    v42 = *(v0 + 2960);

    swift_willThrow();
LABEL_19:
    v54 = *(v0 + 3192);
    v55 = *(v0 + 3128);
    *(v0 + 2928) = v1;
    v56 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v57 = *(v0 + 3184);
      v58 = *(v0 + 3136);
      v59 = *(v0 + 3128);
      v60 = *(v0 + 3032);
      v61 = *(v0 + 3016);
      (*(v58 + 32))(v57, *(v0 + 3192), v59);
      (*(v58 + 16))(v61, v57, v59);
      swift_willThrowTyped(v61, v59, *(*(v60 + 8) + 8));

      (*(v58 + 8))(v57, v59);
      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    else
    {
      v62 = *(v0 + 3128);
      v63 = *(v0 + 3048);
      v64 = *(v0 + 3040);
      v65 = *(v0 + 3032);
      v66 = *(v0 + 3024);
      v67 = *(v0 + 3016);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 104))(v64, AssociatedConformanceWitness);
      swift_getErrorValue();
      v69 = *(v0 + 2792);
      v70 = Error.readableDescription.getter(*(v0 + 2800), *(v0 + 2808));
      (*(v65 + 104))(v63, v70, v71, v62, v65);
      swift_willThrowTyped(v67, v62, *(*(v65 + 8) + 8));

      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    v72 = *(v0 + 3232);
    v73 = *(v0 + 3208);
    v74 = *(v0 + 3200);
    v75 = *(v0 + 3192);
    v76 = *(v0 + 3184);
    v77 = *(v0 + 3176);
    v78 = *(v0 + 3168);
    v79 = *(v0 + 3160);
    v80 = *(v0 + 3152);
    v81 = *(v0 + 3144);
    v94 = *(v0 + 3120);
    v95 = *(v0 + 3112);
    v96 = *(v0 + 3096);
    v97 = *(v0 + 3088);
    v98 = *(v0 + 3080);
    v99 = *(v0 + 3072);
    v101 = *(v0 + 3048);

    v82 = *(v0 + 8);

    return v82();
  }

  v45 = v40;
  v46 = (v0 + 2560);
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 2056);
  v47 = (v0 + 2096);
  if (*(v0 + 2136))
  {
    v48 = *(v0 + 2112);
    *v46 = *v47;
    *(v0 + 2576) = v48;
    *(v0 + 2592) = *(v0 + 2128);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v47, v0 + 2560);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  *(v0 + 2904) = *(v0 + 2960);
  v102 = (v45 + *v45);
  v83 = v45[1];
  v84 = swift_task_alloc();
  *(v0 + 3440) = v84;
  *v84 = v0;
  v84[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ14_;

  return v102(v0 + 456, v1, v46, v0 + 2904);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ11_()
{
  v2 = *v1;
  v3 = *(*v1 + 3400);
  v10 = *v1;
  *(*v1 + 3408) = v0;

  if (v0)
  {
    v4 = v2[409];
    v5 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY29_;
  }

  else
  {
    v6 = v2[413];
    v7 = v2[409];
    v8 = v2[370];

    v5 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY12_;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY12_()
{
  outlined destroy of MLS.GroupOperationResult((v0 + 112));
  outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation((v0 + 235));
  v1 = v0[404];
  v2 = v0[401];
  v3 = v0[400];
  v4 = v0[399];
  v5 = v0[398];
  v6 = v0[397];
  v7 = v0[396];
  v8 = v0[395];
  v9 = v0[394];
  v10 = v0[393];
  v13 = v0[390];
  v14 = v0[389];
  v15 = v0[387];
  v16 = v0[386];
  v17 = v0[385];
  v18 = v0[384];
  v19 = v0[381];

  v11 = v0[1];

  return v11();
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY13_()
{
  (*(v0[392] + 32))(v0[377], v0[401], v0[391]);
  v1 = v0[404];
  v2 = v0[401];
  v3 = v0[400];
  v4 = v0[399];
  v5 = v0[398];
  v6 = v0[397];
  v7 = v0[396];
  v8 = v0[395];
  v9 = v0[394];
  v10 = v0[393];
  v13 = v0[390];
  v14 = v0[389];
  v15 = v0[387];
  v16 = v0[386];
  v17 = v0[385];
  v18 = v0[384];
  v19 = v0[381];

  v11 = v0[1];

  return v11();
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ14_()
{
  v2 = *(*v1 + 3440);
  v3 = *v1;
  v3[431] = v0;

  if (v0)
  {
    v4 = v3[409];
    v5 = v3[363];

    outlined destroy of NSObject?((v3 + 320), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY30_, v4, 0);
  }

  else
  {
    v6 = v3[363];

    outlined destroy of NSObject?((v3 + 320), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v7 = swift_task_alloc();
    v3[432] = v7;
    *v7 = v3;
    v7[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ15_;
    v8 = v3[376];
    v9 = v3[375];
    v10 = v3[374];
    v11 = v3[372];
    v12 = v3[371];

    return MLS.OperationRunner.handle<A>(operationResult:for:)(v12, (v3 + 57), v11, v10, v9);
  }
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ15_()
{
  v2 = *v1;
  v3 = *(*v1 + 3456);
  v4 = *v1;
  *(v2 + 3464) = v0;

  v5 = *(v2 + 3272);
  outlined destroy of MLS.GroupOperationResult(v2 + 456);
  if (v0)
  {
    v6 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY31_;
  }

  else
  {
    v6 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY16_;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY16_()
{
  v1 = v0[429];
  v2 = v0[427];
  outlined consume of MLS.GroupOperationErrorHandlingPolicy(v0[428]);

  outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation((v0 + 235));
  v3 = v0[404];
  v4 = v0[401];
  v5 = v0[400];
  v6 = v0[399];
  v7 = v0[398];
  v8 = v0[397];
  v9 = v0[396];
  v10 = v0[395];
  v11 = v0[394];
  v12 = v0[393];
  v15 = v0[390];
  v16 = v0[389];
  v17 = v0[387];
  v18 = v0[386];
  v19 = v0[385];
  v20 = v0[384];
  v21 = v0[381];

  v13 = v0[1];

  return v13();
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ17_()
{
  v2 = *v1;
  v3 = *(*v1 + 3472);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[413];
    v5 = v2[409];
    outlined destroy of NSObject?((v2 + 315), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v6 = v2[370];

    v7 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY32_;
  }

  else
  {
    v8 = v2[413];
    v5 = v2[409];
    outlined destroy of NSObject?((v2 + 315), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v7 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY18_;
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY18_()
{
  v1 = *(v0 + 2968);
  (*(*(v0 + 3064) + 8))(*(v0 + 3080), *(v0 + 3056));
  outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
  *v1 = *(v0 + 2960);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1840);
  *(v1 + 56) = *(v0 + 1824);
  *(v1 + 72) = v4;
  *(v1 + 88) = v3;
  *(v1 + 104) = v2;
  v5 = *(v0 + 1808);
  v6 = *(v0 + 1792);
  *(v1 + 8) = *(v0 + 1776);
  *(v1 + 24) = v6;
  *(v1 + 40) = v5;
  *(v1 + 112) = 0;

  v7 = *(v0 + 3232);
  v8 = *(v0 + 3208);
  v9 = *(v0 + 3200);
  v10 = *(v0 + 3192);
  v11 = *(v0 + 3184);
  v12 = *(v0 + 3176);
  v13 = *(v0 + 3168);
  v14 = *(v0 + 3160);
  v15 = *(v0 + 3152);
  v16 = *(v0 + 3144);
  v19 = *(v0 + 3120);
  v20 = *(v0 + 3112);
  v21 = *(v0 + 3096);
  v22 = *(v0 + 3088);
  v23 = *(v0 + 3080);
  v24 = *(v0 + 3072);
  v25 = *(v0 + 3048);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY19_()
{
  v1 = *(v0 + 3032);
  v2 = *(*(v0 + 3136) + 32);
  v2(*(v0 + 3168), *(v0 + 3200), *(v0 + 3128));
  v3 = *(*(v1 + 8) + 8);
  v4 = _getErrorEmbeddedNSError<A>(_:)();
  v5 = *(v0 + 3168);
  if (v4)
  {
    v6 = v4;
    (*(*(v0 + 3136) + 8))(*(v0 + 3168), *(v0 + 3128));
  }

  else
  {
    v7 = *(v0 + 3128);
    v6 = swift_allocError();
    v2(v8, v5, v7);
  }

  *(v0 + 3416) = v6;
  v9 = *(v0 + 3000);
  v10 = *(v0 + 2992);
  v11 = *(v0 + 2976);
  v12 = *(v9 + 112);
  v13 = v6;
  v14 = v12(v10, v9);
  outlined consume of MLS.GroupOperationErrorHandlingPolicy(v14);

  if (v14 < 2)
  {
    v15 = *(v0 + 3088);
    v16 = *(v0 + 3056);
    *(v0 + 2944) = v6;
    v17 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 3000);
      v19 = *(v0 + 2992);
      v20 = *(v0 + 2976);
      (*(*(v0 + 3064) + 32))(*(v0 + 3080), *(v0 + 3088), *(v0 + 3056));
      v21 = v12(v19, v18);
      if (v21 == 1)
      {
        v22 = *(v0 + 3008);

        v23 = *(v22 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer);
        outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 1968);
        v24 = (v0 + 2008);
        if (*(v0 + 2048))
        {
          v25 = *(v0 + 2024);
          *(v0 + 2520) = *v24;
          *(v0 + 2536) = v25;
          *(v0 + 2552) = *(v0 + 2040);
        }

        else
        {
          outlined init with take of MLS.KeyUpdatePolicy(v24, v0 + 2520);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1968));
        v76 = *(*v23 + 168);
        v93 = v76 + *v76;
        v77 = v76[1];
        v78 = swift_task_alloc();
        *(v0 + 3472) = v78;
        *v78 = v0;
        v78[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ17_;
        v79 = *(v0 + 3304);
        v80 = *(v0 + 3296);
        v81 = *(v0 + 3080);
        v82 = *(v0 + 3008);
        v83 = *(v0 + 2992);
        v84 = *(v0 + 2976);
        v95 = *(v0 + 3000);
        v96 = *(v0 + 3176);

        __asm { BRAA            X8, X16 }
      }

      v39 = *(v0 + 3304);
      v40 = *(v0 + 3080);
      v41 = *(v0 + 3064);
      v42 = *(v0 + 3056);
      outlined consume of MLS.GroupOperationErrorHandlingPolicy(v21);

      (*(v41 + 8))(v40, v42);
      v43 = *(v0 + 2960);
    }

    else
    {
      v33 = *(v0 + 3304);
      v34 = *(v0 + 2960);
    }

    goto LABEL_16;
  }

  v26 = *(v0 + 3304);
  v27 = *(v0 + 3000);
  v28 = *(v0 + 2992);
  v29 = *(v0 + 2976);

  v30 = v12(v28, v27);
  *(v0 + 3424) = v30;
  *(v0 + 3432) = v31;
  if (v30 < 2)
  {
    outlined consume of MLS.GroupOperationErrorHandlingPolicy(v30);
    v32 = *(v0 + 2960);

    swift_willThrow();
LABEL_16:
    v44 = *(v0 + 3192);
    v45 = *(v0 + 3128);
    *(v0 + 2928) = v6;
    v46 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v47 = swift_dynamicCast();
    v48 = *(v0 + 3032);
    if (v47)
    {
      v49 = *(v0 + 3184);
      v50 = *(v0 + 3136);
      v51 = *(v0 + 3128);
      v52 = *(v0 + 3016);
      (*(v50 + 32))(v49, *(v0 + 3192), v51);
      (*(v50 + 16))(v52, v49, v51);
      swift_willThrowTyped(v52, v51, *(*(v48 + 8) + 8));

      (*(v50 + 8))(v49, v51);
      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    else
    {
      v53 = *(v0 + 3128);
      v54 = *(v0 + 3048);
      v55 = *(v0 + 3040);
      v56 = *(v0 + 3024);
      v57 = *(v0 + 3016);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 104))(v55, AssociatedConformanceWitness);
      swift_getErrorValue();
      v59 = *(v0 + 2792);
      v60 = Error.readableDescription.getter(*(v0 + 2800), *(v0 + 2808));
      (*(v48 + 104))(v54, v60, v61, v53, v48);
      swift_willThrowTyped(v57, v53, *(*(v48 + 8) + 8));

      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    v62 = *(v0 + 3232);
    v63 = *(v0 + 3208);
    v64 = *(v0 + 3200);
    v65 = *(v0 + 3192);
    v66 = *(v0 + 3184);
    v67 = *(v0 + 3176);
    v68 = *(v0 + 3168);
    v69 = *(v0 + 3160);
    v70 = *(v0 + 3152);
    v71 = *(v0 + 3144);
    v85 = *(v0 + 3120);
    v86 = *(v0 + 3112);
    v87 = *(v0 + 3096);
    v88 = *(v0 + 3088);
    v89 = *(v0 + 3080);
    v90 = *(v0 + 3072);
    v91 = *(v0 + 3048);

    v72 = *(v0 + 8);

    return v72();
  }

  v35 = v30;
  v36 = (v0 + 2560);
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 2056);
  v37 = (v0 + 2096);
  if (*(v0 + 2136))
  {
    v38 = *(v0 + 2112);
    *v36 = *v37;
    *(v0 + 2576) = v38;
    *(v0 + 2592) = *(v0 + 2128);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v37, v0 + 2560);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  *(v0 + 2904) = *(v0 + 2960);
  v92 = (v35 + *v35);
  v74 = v35[1];
  v75 = swift_task_alloc();
  *(v0 + 3440) = v75;
  *v75 = v0;
  v75[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ14_;

  return v92(v0 + 456, v6, v36, v0 + 2904);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ20_()
{
  v2 = *v1;
  v3 = *(*v1 + 3480);
  v4 = *v1;

  v5 = *(v2 + 3272);
  if (v0)
  {
    v6 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY28_;
  }

  else
  {
    v6 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY21_;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY21_()
{
  v1 = *(v0 + 2744);
  *(v0 + 3488) = v1;
  v2 = *(v0 + 2752);
  *(v0 + 3496) = v2;
  v3 = *(v0 + 2760);
  *(v0 + 3504) = v3;
  v4 = *(v0 + 2960);
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 2232);
  v5 = (v0 + 2232);
  if (*(v0 + 2312) == 1)
  {
    outlined init with take of MLS.KeyUpdatePolicy(v5, v0 + 2440);
    v6 = *(v0 + 2288);
    *(v0 + 2400) = *(v0 + 2272);
    *(v0 + 2416) = v6;
    *(v0 + 2432) = *(v0 + 2304);
    v7 = *(v0 + 2464);
    v8 = *(v0 + 2472);
    __swift_project_boxed_opaque_existential_1((v0 + 2440), v7);
    *(v0 + 2936) = v4;
    *(v0 + 2840) = v1;
    *(v0 + 2848) = v2;
    *(v0 + 2856) = v3;
    v9 = *(v8 + 24);
    v25 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 3512) = v11;
    *v11 = v0;
    v11[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ22_;
    v12 = v0 + 16;
    v13 = v0 + 2400;
    v14 = v0 + 2936;
    v15 = v0 + 2840;
    v16 = v7;
    v17 = v8;
    v18 = v25;
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v5, v0 + 2600);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 2272), v0 + 2480);
    v19 = *(v0 + 2624);
    v20 = *(v0 + 2632);
    __swift_project_boxed_opaque_existential_1((v0 + 2600), v19);
    *(v0 + 2912) = v4;
    *(v0 + 2816) = v1;
    *(v0 + 2824) = v2;
    *(v0 + 2832) = v3;
    v21 = *(v20 + 24);
    v26 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 3528) = v23;
    *v23 = v0;
    v23[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ23_;
    v12 = v0 + 16;
    v13 = v0 + 2480;
    v14 = v0 + 2912;
    v15 = v0 + 2816;
    v16 = v19;
    v17 = v20;
    v18 = v26;
  }

  return v18(v12, v13, v14, v15, v16, v17);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ22_()
{
  v2 = *v1;
  v3 = *(*v1 + 3512);
  v7 = *v1;
  *(*v1 + 3520) = v0;

  v4 = *(v2 + 3272);
  if (v0)
  {
    v5 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY25_;
  }

  else
  {
    v5 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY24_;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ23_()
{
  v2 = *v1;
  v3 = *(*v1 + 3528);
  v7 = *v1;
  *(*v1 + 3536) = v0;

  v4 = *(v2 + 3272);
  if (v0)
  {
    v5 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY27_;
  }

  else
  {
    v5 = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY26_;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY24_()
{
  v1 = *(v0 + 3504);
  v2 = *(v0 + 3496);
  v3 = *(v0 + 3488);

  outlined destroy of NSObject?(v0 + 2400, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2440));
  (*(*(v0 + 3064) + 8))(*(v0 + 3072), *(v0 + 3056));
  memcpy((v0 + 896), (v0 + 16), 0x1B8uLL);

  v4 = swift_task_alloc();
  *(v0 + 3400) = v4;
  *v4 = v0;
  v4[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ11_;
  v5 = *(v0 + 3008);
  v6 = *(v0 + 3000);
  v7 = *(v0 + 2992);
  v8 = *(v0 + 2976);
  v9 = *(v0 + 2968);

  return MLS.OperationRunner.handle<A>(operationResult:for:)(v9, v0 + 896, v8, v7, v6);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY25_()
{
  outlined destroy of NSObject?(v0 + 2400, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2440));
  v1 = *(v0 + 3520);
  v2 = *(v0 + 3504);
  v3 = *(v0 + 3496);
  v4 = *(v0 + 3488);
  v5 = *(v0 + 3072);
  v6 = *(v0 + 3064);
  v7 = *(v0 + 3056);

  (*(v6 + 8))(v5, v7);

  *(v0 + 3416) = v1;
  v8 = *(v0 + 3000);
  v9 = *(v0 + 2992);
  v10 = *(v0 + 2976);
  v11 = *(v8 + 112);
  v12 = v1;
  v13 = v11(v9, v8);
  outlined consume of MLS.GroupOperationErrorHandlingPolicy(v13);

  if (v13 < 2)
  {
    v14 = *(v0 + 3088);
    v15 = *(v0 + 3056);
    *(v0 + 2944) = v1;
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v17 = *(v0 + 3000);
      v18 = *(v0 + 2992);
      v19 = *(v0 + 2976);
      (*(*(v0 + 3064) + 32))(*(v0 + 3080), *(v0 + 3088), *(v0 + 3056));
      v20 = v11(v18, v17);
      if (v20 == 1)
      {
        v21 = *(v0 + 3008);

        v22 = *(v21 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer);
        outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 1968);
        v23 = (v0 + 2008);
        if (*(v0 + 2048))
        {
          v24 = *(v0 + 2024);
          *(v0 + 2520) = *v23;
          *(v0 + 2536) = v24;
          *(v0 + 2552) = *(v0 + 2040);
        }

        else
        {
          outlined init with take of MLS.KeyUpdatePolicy(v23, v0 + 2520);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1968));
        v75 = *(*v22 + 168);
        v92 = v75 + *v75;
        v76 = v75[1];
        v77 = swift_task_alloc();
        *(v0 + 3472) = v77;
        *v77 = v0;
        v77[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ17_;
        v78 = *(v0 + 3304);
        v79 = *(v0 + 3296);
        v80 = *(v0 + 3080);
        v81 = *(v0 + 3008);
        v82 = *(v0 + 2992);
        v83 = *(v0 + 2976);
        v94 = *(v0 + 3000);
        v95 = *(v0 + 3176);

        __asm { BRAA            X8, X16 }
      }

      v38 = *(v0 + 3304);
      v39 = *(v0 + 3080);
      v40 = *(v0 + 3064);
      v41 = *(v0 + 3056);
      outlined consume of MLS.GroupOperationErrorHandlingPolicy(v20);

      (*(v40 + 8))(v39, v41);
      v42 = *(v0 + 2960);
    }

    else
    {
      v32 = *(v0 + 3304);
      v33 = *(v0 + 2960);
    }

    goto LABEL_13;
  }

  v25 = *(v0 + 3304);
  v26 = *(v0 + 3000);
  v27 = *(v0 + 2992);
  v28 = *(v0 + 2976);

  v29 = v11(v27, v26);
  *(v0 + 3424) = v29;
  *(v0 + 3432) = v30;
  if (v29 < 2)
  {
    outlined consume of MLS.GroupOperationErrorHandlingPolicy(v29);
    v31 = *(v0 + 2960);

    swift_willThrow();
LABEL_13:
    v43 = *(v0 + 3192);
    v44 = *(v0 + 3128);
    *(v0 + 2928) = v1;
    v45 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v46 = *(v0 + 3184);
      v47 = *(v0 + 3136);
      v48 = *(v0 + 3128);
      v49 = *(v0 + 3032);
      v50 = *(v0 + 3016);
      (*(v47 + 32))(v46, *(v0 + 3192), v48);
      (*(v47 + 16))(v50, v46, v48);
      swift_willThrowTyped(v50, v48, *(*(v49 + 8) + 8));

      (*(v47 + 8))(v46, v48);
      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    else
    {
      v51 = *(v0 + 3128);
      v52 = *(v0 + 3048);
      v53 = *(v0 + 3040);
      v54 = *(v0 + 3032);
      v55 = *(v0 + 3024);
      v56 = *(v0 + 3016);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 104))(v53, AssociatedConformanceWitness);
      swift_getErrorValue();
      v58 = *(v0 + 2792);
      v59 = Error.readableDescription.getter(*(v0 + 2800), *(v0 + 2808));
      (*(v54 + 104))(v52, v59, v60, v51, v54);
      swift_willThrowTyped(v56, v51, *(*(v54 + 8) + 8));

      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    v61 = *(v0 + 3232);
    v62 = *(v0 + 3208);
    v63 = *(v0 + 3200);
    v64 = *(v0 + 3192);
    v65 = *(v0 + 3184);
    v66 = *(v0 + 3176);
    v67 = *(v0 + 3168);
    v68 = *(v0 + 3160);
    v69 = *(v0 + 3152);
    v70 = *(v0 + 3144);
    v84 = *(v0 + 3120);
    v85 = *(v0 + 3112);
    v86 = *(v0 + 3096);
    v87 = *(v0 + 3088);
    v88 = *(v0 + 3080);
    v89 = *(v0 + 3072);
    v90 = *(v0 + 3048);

    v71 = *(v0 + 8);

    return v71();
  }

  v34 = v29;
  v35 = (v0 + 2560);
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 2056);
  v36 = (v0 + 2096);
  if (*(v0 + 2136))
  {
    v37 = *(v0 + 2112);
    *v35 = *v36;
    *(v0 + 2576) = v37;
    *(v0 + 2592) = *(v0 + 2128);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v36, v0 + 2560);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  *(v0 + 2904) = *(v0 + 2960);
  v91 = (v34 + *v34);
  v73 = v34[1];
  v74 = swift_task_alloc();
  *(v0 + 3440) = v74;
  *v74 = v0;
  v74[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ14_;

  return v91(v0 + 456, v1, v35, v0 + 2904);
}