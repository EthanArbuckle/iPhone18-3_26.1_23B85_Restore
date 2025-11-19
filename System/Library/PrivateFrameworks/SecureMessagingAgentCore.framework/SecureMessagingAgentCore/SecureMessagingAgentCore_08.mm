uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.SigningInput, @in_guaranteed MLS.SigningContext<Data>) -> (@out MLS.SigningProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v13(a1, a2, a2 + v8, a2 + v9);
}

uint64_t MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  outlined copy of Data._Representation(a1, a2);
  v33 = v8;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v15, v16))
  {
    v31 = a5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    v19 = Data.description.getter();
    v21 = a3;
    v22 = a7;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v35);

    *(v17 + 4) = v23;
    a7 = v22;
    a3 = v21;
    _os_log_impl(&dword_26524C000, v15, v16, "MLSDaemon applicationEncrypt groupName called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    v24 = v17;
    a5 = v31;
    MEMORY[0x2667577B0](v24, -1, -1);
  }

  type metadata accessor for MLS.EncryptionError();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a7;
  v25[5] = a8;
  v25[6] = v33;
  v26 = swift_allocObject();
  v26[2] = v33;
  v26[3] = a3;
  v26[4] = a4;
  v26[5] = a5;
  v26[6] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:);
  *(v27 + 24) = v26;
  v28 = v33;
  outlined copy of Data._Representation(a1, a2);
  v29 = v28;
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError, MEMORY[0x277D4CD08]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupNameEncryptionProcessedContext<Data> and conformance MLS.GroupNameEncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a1;
  v56 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v53 = *(v57 - 8);
  v4 = *(v53 + 64);
  v5 = MEMORY[0x28223BE20](v57);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = type metadata accessor for JSONDecoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  v20 = v58;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v20)
  {
    v58 = v7;
    v22 = v54;
    v23 = *(v17 + 48);
    v24 = *(v17 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupNameEncryptionContext<MLS.AllMember, Data> and conformance MLS.GroupNameEncryptionContext<A, B>, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
    v25 = v57;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v26 = v53;
    v27 = *(v53 + 16);
    v56 = v9;
    v27(v58, v9, v25);
    v28 = v16;
    (*(v22 + 16))(v14, v16, v10);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v31 = 136315394;
      LODWORD(v51) = v30;
      v32 = v58;
      v33 = MLS.SigningContext.identifier.getter();
      v50 = v29;
      v34 = v28;
      v35 = v33;
      v37 = v36;
      (*(v53 + 8))(v32, v57);
      v38 = v35;
      v28 = v34;
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v59);

      *(v31 + 4) = v39;
      *(v31 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v22 + 8))(v14, v10);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v59);
      v25 = v57;

      *(v31 + 14) = v43;
      v44 = v50;
      _os_log_impl(&dword_26524C000, v50, v51, "MLSDaemon applicationEncrypt groupName decoded { identifier: %s, uniqueClientIdentifier: %s }", v31, 0x16u);
      v45 = v55;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v45, -1, -1);
      v46 = v31;
      v26 = v53;
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v14, v10);
      (*(v26 + 8))(v58, v25);
    }

    v47 = v52;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR) + 48);
    (*(v22 + 32))(v47, v28, v10);
    return (*(v26 + 32))(v47 + v48, v56, v25);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v11 = *(v10 + 64) + 15;
  v8[16] = swift_task_alloc();
  v12 = type metadata accessor for MLS.UniqueClientIdentifier();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v14 = *(v13 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v15 = type metadata accessor for Metric();
  v8[21] = v15;
  v16 = *(v15 - 8);
  v8[22] = v16;
  v17 = *(v16 + 64) + 15;
  v8[23] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v8[24] = v18;
  v19 = *(v18 - 8);
  v8[25] = v19;
  v20 = *(v19 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[29] = v1;
  v2 = *v1 + 88;
  v0[30] = *v2;
  v0[31] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[32] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:), v4, v3);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];

  v0[33] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:), 0, 0);
}

{
  v91 = v0;
  if (*(v0[33] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[28];
    v4 = v0[25];
    v85 = v0[24];
    v5 = v0[22];
    v73 = v0[23];
    v6 = v0[21];
    v75 = v0[18];
    v76 = v0[27];
    v77 = v0[17];
    log = v0[20];
    v81 = v0[9];
    v72 = v0[8];
    v74 = v0[7];
    v7 = (*(v0[33] + 56) + 48 * v1);
    v0[34] = *v7;
    v0[35] = v7[1];
    v0[36] = v7[2];
    v0[37] = v7[3];
    v0[38] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v72, v85);
    (*(v5 + 104))(v73, *MEMORY[0x277D4D278], v6);
    v9 = MLS.GroupNameEncryptionContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v73, v6);
    v9(v0 + 2, 0);
    v8(v76, v72, v85);
    (*(v75 + 16))(log, v74, v77);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[27];
    v14 = v0[24];
    v15 = v0[25];
    v16 = v0[20];
    v18 = v0[17];
    v17 = v0[18];
    if (v12)
    {
      v82 = v11;
      v19 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v90[0] = v86;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v78 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v90);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v78, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v90);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v82, "MLSDaemon applicationEncrypt groupName calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v86, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[39] = v23;
    v64 = *(MEMORY[0x277D4D0C8] + 4);
    v89 = (*MEMORY[0x277D4D0C8] + MEMORY[0x277D4D0C8]);
    v65 = swift_task_alloc();
    v0[40] = v65;
    *v65 = v0;
    v65[1] = closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
    v66 = v0[28];
    v67 = v0[12];
    v68 = v0[13];
    v69 = v0[10];
    v70 = v0[11];
    v71 = v0[6];

    return v89(v71, v69, v70, v67, v68, v66);
  }

  else
  {
    v30 = v0[25];
    v29 = v0[26];
    v31 = v0[24];
    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[17];
    v35 = v0[8];
    v87 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[25];
    v41 = v0[26];
    v42 = v0[24];
    v43 = v0[18];
    v44 = v0[19];
    v45 = v0[17];
    if (v39)
    {
      v84 = v37;
      v46 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v90[0] = v88;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v83 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v90);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v90);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v84, v83, "MLSDaemon applicationEncrypt groupName has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v88, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4D2B0], v0[14]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v56 = v0[27];
    v55 = v0[28];
    v57 = v0[26];
    v58 = v0[23];
    v60 = v0[19];
    v59 = v0[20];
    v61 = v0[16];

    v62 = v0[1];

    return v62();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupNameEncryptionContext<MLS.AllMember, Data>) -> (@out MLS.GroupNameEncryptionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR) + 48);
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  outlined copy of Data._Representation(a1, a2);
  v29 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    v19 = Data.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v33);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon processIncoming groupName called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    v22 = v17;
    a5 = v16;
    MEMORY[0x2667577B0](v22, -1, -1);
  }

  type metadata accessor for MLS.IncomingMessageError();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = v29;
  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = a5;
  v24[6] = a6;
  v25 = swift_allocObject();
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:);
  *(v25 + 24) = v24;
  v26 = v29;
  outlined copy of Data._Representation(a1, a2);
  v27 = v26;
  outlined copy of Data._Representation(a7, a8);
  outlined copy of Data._Representation(a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError, MEMORY[0x277D4CFB8]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingGroupNameProcessedContext<Data> and conformance MLS.IncomingGroupNameProcessedContext<A>, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a1;
  v56 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  v53 = *(v57 - 8);
  v4 = *(v53 + 64);
  v5 = MEMORY[0x28223BE20](v57);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = type metadata accessor for JSONDecoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  v20 = v58;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v20)
  {
    v58 = v7;
    v22 = v54;
    v23 = *(v17 + 48);
    v24 = *(v17 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingGroupNameContext<Data> and conformance MLS.IncomingGroupNameContext<A>, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v25 = v57;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v26 = v53;
    v27 = *(v53 + 16);
    v56 = v9;
    v27(v58, v9, v25);
    v28 = v16;
    (*(v22 + 16))(v14, v16, v10);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v31 = 136315394;
      LODWORD(v51) = v30;
      v32 = v58;
      v33 = MLS.SigningContext.identifier.getter();
      v50 = v29;
      v34 = v28;
      v35 = v33;
      v37 = v36;
      (*(v53 + 8))(v32, v57);
      v38 = v35;
      v28 = v34;
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v59);

      *(v31 + 4) = v39;
      *(v31 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v22 + 8))(v14, v10);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v59);
      v25 = v57;

      *(v31 + 14) = v43;
      v44 = v50;
      _os_log_impl(&dword_26524C000, v50, v51, "MLSDaemon processIncoming groupName decoded { identifier: %s, uniqueClientIdentifier: %s }", v31, 0x16u);
      v45 = v55;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v45, -1, -1);
      v46 = v31;
      v26 = v53;
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v14, v10);
      (*(v26 + 8))(v58, v25);
    }

    v47 = v52;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMR) + 48);
    (*(v22 + 32))(v47, v28, v10);
    return (*(v26 + 32))(v47 + v48, v56, v25);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v11 = *(v10 + 64) + 15;
  v8[16] = swift_task_alloc();
  v12 = type metadata accessor for MLS.UniqueClientIdentifier();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v14 = *(v13 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v15 = type metadata accessor for Metric();
  v8[21] = v15;
  v16 = *(v15 - 8);
  v8[22] = v16;
  v17 = *(v16 + 64) + 15;
  v8[23] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  v8[24] = v18;
  v19 = *(v18 - 8);
  v8[25] = v19;
  v20 = *(v19 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[29] = v1;
  v2 = *v1 + 88;
  v0[30] = *v2;
  v0[31] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[32] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:), v4, v3);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];

  v0[33] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:), 0, 0);
}

{
  v91 = v0;
  if (*(v0[33] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[28];
    v4 = v0[25];
    v85 = v0[24];
    v5 = v0[22];
    v73 = v0[23];
    v6 = v0[21];
    v75 = v0[18];
    v76 = v0[27];
    v77 = v0[17];
    log = v0[20];
    v81 = v0[9];
    v72 = v0[8];
    v74 = v0[7];
    v7 = (*(v0[33] + 56) + 48 * v1);
    v0[34] = *v7;
    v0[35] = v7[1];
    v0[36] = v7[2];
    v0[37] = v7[3];
    v0[38] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v72, v85);
    (*(v5 + 104))(v73, *MEMORY[0x277D4D278], v6);
    v9 = MLS.IncomingGroupNameContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v73, v6);
    v9(v0 + 2, 0);
    v8(v76, v72, v85);
    (*(v75 + 16))(log, v74, v77);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[27];
    v14 = v0[24];
    v15 = v0[25];
    v16 = v0[20];
    v18 = v0[17];
    v17 = v0[18];
    if (v12)
    {
      v82 = v11;
      v19 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v90[0] = v86;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v78 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v90);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v78, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v90);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v82, "MLSDaemon processIncoming groupName calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v86, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[39] = v23;
    v64 = *(MEMORY[0x277D4D0B0] + 4);
    v89 = (*MEMORY[0x277D4D0B0] + MEMORY[0x277D4D0B0]);
    v65 = swift_task_alloc();
    v0[40] = v65;
    *v65 = v0;
    v65[1] = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:);
    v66 = v0[28];
    v67 = v0[12];
    v68 = v0[13];
    v69 = v0[10];
    v70 = v0[11];
    v71 = v0[6];

    return v89(v71, v69, v70, v67, v68, v66);
  }

  else
  {
    v30 = v0[25];
    v29 = v0[26];
    v31 = v0[24];
    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[17];
    v35 = v0[8];
    v87 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[25];
    v41 = v0[26];
    v42 = v0[24];
    v43 = v0[18];
    v44 = v0[19];
    v45 = v0[17];
    if (v39)
    {
      v84 = v37;
      v46 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v90[0] = v88;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v83 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v90);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v90);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v84, v83, "MLSDaemon processIncoming groupName has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v88, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4D2B0], v0[14]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v56 = v0[27];
    v55 = v0[28];
    v57 = v0[26];
    v58 = v0[23];
    v60 = v0[19];
    v59 = v0[20];
    v61 = v0[16];

    v62 = v0[1];

    return v62();
  }
}

{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[25];
  v10 = v0[24];
  v13 = v0[26];
  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[16];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2(v7, v10);

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[28];
  v8 = v0[24];
  v9 = v0[25];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2(v7, v8);
  v10 = v0[41];
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[26];
  v14 = v0[23];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[16];

  v18 = v0[1];

  return v18();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingGroupNameContext<Data>) -> (@out MLS.IncomingGroupNameProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMR) + 48);
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  outlined copy of Data._Representation(a1, a2);
  v32 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a8;
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136315138;
    v18 = Data.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v35);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon processIncoming called { uniqueClientIdentifier: %s }", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    a8 = v30;
    MEMORY[0x2667577B0](v17, -1, -1);
    MEMORY[0x2667577B0](v16, -1, -1);
  }

  type metadata accessor for MLS.IncomingMessageError();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v22 = a4;
  v21[6] = a7;
  v21[7] = a8;
  v29 = a2;
  v23 = a8;
  v21[8] = v32;
  v21[9] = a5;
  v21[10] = a6;
  v24 = swift_allocObject();
  v24[2] = v32;
  v24[3] = a5;
  v24[4] = a6;
  v25 = swift_allocObject();
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:);
  *(v25 + 24) = v24;
  v26 = v32;

  outlined copy of Data._Representation(a1, v29);
  v27 = v26;

  outlined copy of Data._Representation(a3, v22);
  outlined copy of Data._Representation(a7, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError, MEMORY[0x277D4CFB8]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)@<X0>(char *a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unint64_t a9)
{
  v73 = a1;
  v61 = a7;
  v62 = a6;
  v66 = a4;
  v67 = a5;
  v70 = a2;
  v71 = a3;
  v64 = a8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v65 = *(v69 - 8);
  v9 = *(v65 + 64);
  v10 = MEMORY[0x28223BE20](v69);
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v18 = type metadata accessor for MLS.UniqueClientIdentifier();
  v72 = *(v18 - 8);
  v19 = *(v72 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v61 - v23;
  v25 = type metadata accessor for JSONDecoder();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  v28 = v74;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v28)
  {
    v73 = v22;
    v74 = v24;
    v30 = v69;
    v31 = *(v25 + 48);
    v32 = *(v25 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessage<MLS.AllMember> and conformance MLS.IncomingMessage<A>, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v33 = v14;

    v34 = *(v25 + 48);
    v35 = *(v25 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageContext<Data> and conformance MLS.IncomingMessageContext<A>, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v36 = v13;
    v37 = v30;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v67 = v17;
    v71 = v33;

    v38 = v63;
    (*(v65 + 16))(v63, v36, v30);
    (*(v72 + 16))(v73, v74, v18);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v66 = a9;

    v41 = os_log_type_enabled(v39, v40);
    v70 = v36;
    if (v41)
    {
      v42 = v39;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75 = v44;
      *v43 = 136315650;
      LODWORD(v62) = v40;
      v45 = MLS.SigningContext.identifier.getter();
      v47 = v46;
      (*(v65 + 8))(v38, v30);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v75);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v66, &v75);
      *(v43 + 22) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v49 = v73;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v72 + 8))(v49, v18);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v75);
      v37 = v30;

      *(v43 + 24) = v53;
      _os_log_impl(&dword_26524C000, v42, v62, "MLSDaemon processIncoming decoded { identifier: %s, group: %s, uniqueClientIdentifier: %s }", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v44, -1, -1);
      MEMORY[0x2667577B0](v43, -1, -1);

      v54 = v64;
      v55 = v65;
    }

    else
    {

      (*(v72 + 8))(v73, v18);
      v55 = v65;
      (*(v65 + 8))(v38, v37);
      v54 = v64;
    }

    v57 = v67;
    v56 = v68;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMR);
    v59 = *(v58 + 48);
    v60 = *(v58 + 64);
    (*(v72 + 32))(v54, v74, v18);
    (*(v56 + 32))(v54 + v59, v57, v71);
    return (*(v55 + 32))(v54 + v60, v70, v37);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  v11 = type metadata accessor for MLS.UniqueClientIdentifier();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v14 = type metadata accessor for Metric();
  v7[20] = v14;
  v15 = *(v14 - 8);
  v7[21] = v15;
  v16 = *(v15 + 64) + 15;
  v7[22] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v7[23] = v17;
  v18 = *(v17 - 8);
  v7[24] = v18;
  v19 = *(v18 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[28] = v1;
  v2 = *v1 + 88;
  v0[29] = *v2;
  v0[30] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[31] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:), v4, v3);
}

{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];

  v0[32] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:), 0, 0);
}

{
  v90 = v0;
  if (*(v0[32] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[24];
    v84 = v0[23];
    v5 = v0[21];
    v72 = v0[22];
    v6 = v0[20];
    v74 = v0[17];
    v75 = v0[26];
    v76 = v0[16];
    log = v0[19];
    v80 = v0[10];
    v71 = v0[9];
    v73 = v0[7];
    v7 = (*(v0[32] + 56) + 48 * v1);
    v0[33] = *v7;
    v0[34] = v7[1];
    v0[35] = v7[2];
    v0[36] = v7[3];
    v0[37] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v71, v84);
    (*(v5 + 104))(v72, *MEMORY[0x277D4D278], v6);
    v9 = MLS.IncomingMessageContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v72, v6);
    v9(v0 + 2, 0);
    v8(v75, v71, v84);
    (*(v74 + 16))(log, v73, v76);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    if (v12)
    {
      v81 = v11;
      v19 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v89[0] = v85;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v77 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v89);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v77, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v89);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v81, "MLSDaemon processIncoming calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v85, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[38] = v23;
    v64 = *(MEMORY[0x277D4D0A8] + 4);
    v88 = (*MEMORY[0x277D4D0A8] + MEMORY[0x277D4D0A8]);
    v65 = swift_task_alloc();
    v0[39] = v65;
    *v65 = v0;
    v65[1] = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
    v66 = v0[27];
    v67 = v0[11];
    v68 = v0[12];
    v69 = v0[8];
    v70 = v0[6];

    return v88(v70, v69, v67, v68, v66);
  }

  else
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v35 = v0[9];
    v86 = v0[10];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[16];
    if (v39)
    {
      v83 = v37;
      v46 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v89[0] = v87;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v82 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v89);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v89);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v83, v82, "MLSDaemon processIncoming has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v87, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[14] + 104))(v0[15], *MEMORY[0x277D4D2B0], v0[13]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v56 = v0[26];
    v55 = v0[27];
    v57 = v0[25];
    v58 = v0[22];
    v60 = v0[18];
    v59 = v0[19];
    v61 = v0[15];

    v62 = v0[1];

    return v62();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingMessageContext<Data>) -> (@out MLS.IncomingMessageProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a2 + v8, a2 + v9);
}

uint64_t MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  outlined copy of Data._Representation(a1, a2);
  v27 = v6;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    v16 = Data.description.getter();
    v18 = a3;
    v19 = a5;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

    *(v14 + 4) = v20;
    a5 = v19;
    a3 = v18;
    _os_log_impl(&dword_26524C000, v12, v13, "MLSDaemon processIncoming called { uniqueClientIdentifier: %s }", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x2667577B0](v15, -1, -1);
    MEMORY[0x2667577B0](v14, -1, -1);
  }

  type metadata accessor for MLS.IncomingMessageError();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = a6;
  v21[8] = v27;
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  v23 = swift_allocObject();
  *(v23 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:);
  *(v23 + 24) = v22;
  v24 = v27;
  outlined copy of Data._Representation(a1, a2);
  v25 = v24;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a5, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError, MEMORY[0x277D4CFB8]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v65 = a6;
  v66 = a7;
  v67 = a4;
  v68 = a5;
  v74 = a2;
  v75 = a3;
  v77 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v73 = *(v70 - 8);
  v8 = *(v73 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v13);
  v76 = &v62 - v15;
  v16 = type metadata accessor for MLS.UniqueClientIdentifier();
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = type metadata accessor for JSONDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v7)
  {
    v63 = v12;
    v64 = v16;
    v62 = v20;
    v77 = v22;
    v28 = v71;
    v27 = v72;
    v29 = v73;
    v30 = *(v23 + 48);
    v31 = *(v23 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessage<MLS.AllMember> and conformance MLS.IncomingMessage<A>, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v32 = *(v23 + 48);
    v33 = *(v23 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageContext<Data> and conformance MLS.IncomingMessageContext<A>, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v34 = v63;
    v35 = v70;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v74 = 0;
    v75 = v13;

    v36 = v29;
    v37 = v27;
    v38 = v64;
    (*(v29 + 16))(v37, v34, v35);
    v39 = v28;
    v40 = *(v28 + 16);
    v41 = v62;
    v40(v62, v77, v38);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      LODWORD(v67) = v43;
      v45 = v44;
      v68 = swift_slowAlloc();
      v78 = v68;
      *v45 = 136315394;
      v46 = MLS.SigningContext.identifier.getter();
      v47 = v37;
      v49 = v48;
      (*(v36 + 8))(v47, v70);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v49, &v78);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v39 + 8))(v41, v38);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v78);
      v35 = v70;

      *(v45 + 14) = v54;
      _os_log_impl(&dword_26524C000, v42, v67, "MLSDaemon processIncoming decoded { identifier: %s, uniqueClientIdentifier: %s }", v45, 0x16u);
      v55 = v68;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v55, -1, -1);
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v41, v38);
      (*(v36 + 8))(v37, v35);
    }

    v56 = v66;
    v57 = v39;
    v58 = v69;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMR);
    v60 = *(v59 + 48);
    v61 = *(v59 + 64);
    (*(v57 + 32))(v56, v77, v38);
    (*(v58 + 32))(v56 + v60, v76, v75);
    return (*(v36 + 32))(v56 + v61, v63, v35);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v12 = type metadata accessor for Metric();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v5[21] = v15;
  v16 = *(v15 - 8);
  v5[22] = v16;
  v17 = *(v16 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[26] = v1;
  v2 = *v1 + 88;
  v0[27] = *v2;
  v0[28] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[29] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:), v4, v3);
}

{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];

  v0[30] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:), 0, 0);
}

{
  v88 = v0;
  if (*(v0[30] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[25];
    v4 = v0[22];
    v82 = v0[21];
    v5 = v0[19];
    v70 = v0[20];
    v6 = v0[18];
    v72 = v0[15];
    v73 = v0[24];
    v74 = v0[14];
    log = v0[17];
    v78 = v0[10];
    v69 = v0[9];
    v71 = v0[7];
    v7 = (*(v0[30] + 56) + 48 * v1);
    v0[31] = *v7;
    v0[32] = v7[1];
    v0[33] = v7[2];
    v0[34] = v7[3];
    v0[35] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v69, v82);
    (*(v5 + 104))(v70, *MEMORY[0x277D4D278], v6);
    v9 = MLS.IncomingMessageContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v70, v6);
    v9(v0 + 2, 0);
    v8(v73, v69, v82);
    (*(v72 + 16))(log, v71, v74);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[24];
    v14 = v0[21];
    v15 = v0[22];
    v16 = v0[17];
    v18 = v0[14];
    v17 = v0[15];
    if (v12)
    {
      v79 = v11;
      v19 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v87[0] = v83;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v75 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v87);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v75, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v87);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v79, "MLSDaemon processIncoming calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v83, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[36] = v23;
    v64 = *(MEMORY[0x277D4D0A0] + 4);
    v86 = (*MEMORY[0x277D4D0A0] + MEMORY[0x277D4D0A0]);
    v65 = swift_task_alloc();
    v0[37] = v65;
    *v65 = v0;
    v65[1] = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:);
    v66 = v0[25];
    v67 = v0[8];
    v68 = v0[6];

    return v86(v68, v67, v66);
  }

  else
  {
    v30 = v0[22];
    v29 = v0[23];
    v31 = v0[21];
    v33 = v0[15];
    v32 = v0[16];
    v34 = v0[14];
    v35 = v0[9];
    v84 = v0[10];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[22];
    v41 = v0[23];
    v42 = v0[21];
    v43 = v0[15];
    v44 = v0[16];
    v45 = v0[14];
    if (v39)
    {
      v81 = v37;
      v46 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v87[0] = v85;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v80 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v87);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v87);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v81, v80, "MLSDaemon processIncoming has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v85, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[12] + 104))(v0[13], *MEMORY[0x277D4D2B0], v0[11]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v56 = v0[24];
    v55 = v0[25];
    v57 = v0[23];
    v58 = v0[20];
    v60 = v0[16];
    v59 = v0[17];
    v61 = v0[13];

    v62 = v0[1];

    return v62();
  }
}

{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[22];
  v10 = v0[21];
  v13 = v0[23];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[16];
  v17 = v0[13];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2(v7, v10);

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[25];
  v8 = v0[21];
  v9 = v0[22];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2(v7, v8);
  v10 = v0[38];
  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[23];
  v14 = v0[20];
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[13];

  v18 = v0[1];

  return v18();
}

uint64_t MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  outlined copy of Data._Representation(a1, a2);
  v29 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    v19 = Data.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v33);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon processIncomingFTD called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    v22 = v17;
    a5 = v16;
    MEMORY[0x2667577B0](v22, -1, -1);
  }

  type metadata accessor for MLS.IncomingMessageError();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = a7;
  v23[7] = a8;
  v23[8] = v29;
  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a5;
  v24[4] = a6;
  v25 = swift_allocObject();
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:);
  *(v25 + 24) = v24;
  v26 = v29;
  outlined copy of Data._Representation(a1, a2);
  v27 = v26;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError, MEMORY[0x277D4CFB8]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecryptProcessedContext<Data> and conformance MLS.IncomingFailureToDecryptProcessedContext<A>, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v65 = a6;
  v66 = a7;
  v67 = a4;
  v68 = a5;
  v74 = a2;
  v75 = a3;
  v77 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v73 = *(v70 - 8);
  v8 = *(v73 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v13);
  v76 = &v62 - v15;
  v16 = type metadata accessor for MLS.UniqueClientIdentifier();
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = type metadata accessor for JSONDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v7)
  {
    v63 = v12;
    v64 = v16;
    v62 = v20;
    v77 = v22;
    v28 = v71;
    v27 = v72;
    v29 = v73;
    v30 = *(v23 + 48);
    v31 = *(v23 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecrypt<MLS.AllMember> and conformance MLS.IncomingFailureToDecrypt<A>, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v32 = *(v23 + 48);
    v33 = *(v23 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecryptContext<Data> and conformance MLS.IncomingFailureToDecryptContext<A>, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v34 = v63;
    v35 = v70;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v74 = 0;
    v75 = v13;

    v36 = v29;
    v37 = v27;
    v38 = v64;
    (*(v29 + 16))(v37, v34, v35);
    v39 = v28;
    v40 = *(v28 + 16);
    v41 = v62;
    v40(v62, v77, v38);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      LODWORD(v67) = v43;
      v45 = v44;
      v68 = swift_slowAlloc();
      v78 = v68;
      *v45 = 136315394;
      v46 = MLS.SigningContext.identifier.getter();
      v47 = v37;
      v49 = v48;
      (*(v36 + 8))(v47, v70);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v49, &v78);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v39 + 8))(v41, v38);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v78);
      v35 = v70;

      *(v45 + 14) = v54;
      _os_log_impl(&dword_26524C000, v42, v67, "MLSDaemon processIncomingFTD decoded { identifier: %s, uniqueClientIdentifier: %s }", v45, 0x16u);
      v55 = v68;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v55, -1, -1);
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v41, v38);
      (*(v36 + 8))(v37, v35);
    }

    v56 = v66;
    v57 = v39;
    v58 = v69;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMR);
    v60 = *(v59 + 48);
    v61 = *(v59 + 64);
    (*(v57 + 32))(v56, v77, v38);
    (*(v58 + 32))(v56 + v60, v76, v75);
    return (*(v36 + 32))(v56 + v61, v63, v35);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  v11 = type metadata accessor for MLS.UniqueClientIdentifier();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v14 = type metadata accessor for Metric();
  v7[20] = v14;
  v15 = *(v14 - 8);
  v7[21] = v15;
  v16 = *(v15 + 64) + 15;
  v7[22] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v7[23] = v17;
  v18 = *(v17 - 8);
  v7[24] = v18;
  v19 = *(v18 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[28] = v1;
  v2 = *v1 + 88;
  v0[29] = *v2;
  v0[30] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[31] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:), v4, v3);
}

{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];

  v0[32] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:), 0, 0);
}

{
  v90 = v0;
  if (*(v0[32] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[24];
    v84 = v0[23];
    v5 = v0[21];
    v72 = v0[22];
    v6 = v0[20];
    v74 = v0[17];
    v75 = v0[26];
    v76 = v0[16];
    log = v0[19];
    v80 = v0[10];
    v71 = v0[9];
    v73 = v0[7];
    v7 = (*(v0[32] + 56) + 48 * v1);
    v0[33] = *v7;
    v0[34] = v7[1];
    v0[35] = v7[2];
    v0[36] = v7[3];
    v0[37] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v71, v84);
    (*(v5 + 104))(v72, *MEMORY[0x277D4D278], v6);
    v9 = MLS.IncomingFailureToDecryptContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v72, v6);
    v9(v0 + 2, 0);
    v8(v75, v71, v84);
    (*(v74 + 16))(log, v73, v76);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    if (v12)
    {
      v81 = v11;
      v19 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v89[0] = v85;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v77 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v89);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v77, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v89);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v81, "MLSDaemon processIncomingFTD calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v85, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[38] = v23;
    v64 = *(MEMORY[0x277D4D098] + 4);
    v88 = (*MEMORY[0x277D4D098] + MEMORY[0x277D4D098]);
    v65 = swift_task_alloc();
    v0[39] = v65;
    *v65 = v0;
    v65[1] = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
    v66 = v0[27];
    v67 = v0[11];
    v68 = v0[12];
    v69 = v0[8];
    v70 = v0[6];

    return v88(v70, v69, v67, v68, v66);
  }

  else
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v35 = v0[9];
    v86 = v0[10];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[16];
    if (v39)
    {
      v83 = v37;
      v46 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v89[0] = v87;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v82 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v89);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v89);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v83, v82, "MLSDaemon processIncomingFTD has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v87, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[14] + 104))(v0[15], *MEMORY[0x277D4D2B0], v0[13]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v56 = v0[26];
    v55 = v0[27];
    v57 = v0[25];
    v58 = v0[22];
    v60 = v0[18];
    v59 = v0[19];
    v61 = v0[15];

    v62 = v0[1];

    return v62();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingFailureToDecrypt<MLS.AllMember>, @in_guaranteed MLS.IncomingFailureToDecryptContext<Data>) -> (@out MLS.IncomingFailureToDecryptProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a2 + v8, a2 + v9);
}

uint64_t MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  outlined copy of Data._Representation(a1, a2);
  v29 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    v19 = Data.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v33);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon processIncoming errorMessage called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    v22 = v17;
    a5 = v16;
    MEMORY[0x2667577B0](v22, -1, -1);
  }

  type metadata accessor for MLS.IncomingMessageError();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = a7;
  v23[7] = a8;
  v23[8] = v29;
  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a5;
  v24[4] = a6;
  v25 = swift_allocObject();
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:);
  *(v25 + 24) = v24;
  v26 = v29;
  outlined copy of Data._Representation(a1, a2);
  v27 = v26;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError, MEMORY[0x277D4CFB8]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessageProcessedContext<Data> and conformance MLS.IncomingErrorMessageProcessedContext<A>, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v65 = a6;
  v66 = a7;
  v67 = a4;
  v68 = a5;
  v74 = a2;
  v75 = a3;
  v77 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMR);
  v73 = *(v70 - 8);
  v8 = *(v73 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMR);
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v13);
  v76 = &v62 - v15;
  v16 = type metadata accessor for MLS.UniqueClientIdentifier();
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = type metadata accessor for JSONDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v7)
  {
    v63 = v12;
    v64 = v16;
    v62 = v20;
    v77 = v22;
    v28 = v71;
    v27 = v72;
    v29 = v73;
    v30 = *(v23 + 48);
    v31 = *(v23 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessage<MLS.AllMember> and conformance MLS.IncomingErrorMessage<A>, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMR);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v32 = *(v23 + 48);
    v33 = *(v23 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessageContext<Data> and conformance MLS.IncomingErrorMessageContext<A>, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMR);
    v34 = v63;
    v35 = v70;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v74 = 0;
    v75 = v13;

    v36 = v29;
    v37 = v27;
    v38 = v64;
    (*(v29 + 16))(v37, v34, v35);
    v39 = v28;
    v40 = *(v28 + 16);
    v41 = v62;
    v40(v62, v77, v38);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      LODWORD(v67) = v43;
      v45 = v44;
      v68 = swift_slowAlloc();
      v78 = v68;
      *v45 = 136315394;
      v46 = MLS.IncomingErrorMessageContext.identifier.getter();
      v47 = v37;
      v49 = v48;
      (*(v36 + 8))(v47, v70);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v49, &v78);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v39 + 8))(v41, v38);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v78);
      v35 = v70;

      *(v45 + 14) = v54;
      _os_log_impl(&dword_26524C000, v42, v67, "MLSDaemon processIncoming errorMessage decoded { identifier: %s, uniqueClientIdentifier: %s }", v45, 0x16u);
      v55 = v68;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v55, -1, -1);
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v41, v38);
      (*(v36 + 8))(v37, v35);
    }

    v56 = v66;
    v57 = v39;
    v58 = v69;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMR);
    v60 = *(v59 + 48);
    v61 = *(v59 + 64);
    (*(v57 + 32))(v56, v77, v38);
    (*(v58 + 32))(v56 + v60, v76, v75);
    return (*(v36 + 32))(v56 + v61, v63, v35);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  v11 = type metadata accessor for MLS.UniqueClientIdentifier();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v14 = type metadata accessor for Metric();
  v7[20] = v14;
  v15 = *(v14 - 8);
  v7[21] = v15;
  v16 = *(v15 + 64) + 15;
  v7[22] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMR);
  v7[23] = v17;
  v18 = *(v17 - 8);
  v7[24] = v18;
  v19 = *(v18 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[28] = v1;
  v2 = *v1 + 88;
  v0[29] = *v2;
  v0[30] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[31] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:), v4, v3);
}

{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];

  v0[32] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:), 0, 0);
}

{
  v90 = v0;
  if (*(v0[32] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[24];
    v84 = v0[23];
    v5 = v0[21];
    v72 = v0[22];
    v6 = v0[20];
    v74 = v0[17];
    v75 = v0[26];
    v76 = v0[16];
    log = v0[19];
    v80 = v0[10];
    v71 = v0[9];
    v73 = v0[7];
    v7 = (*(v0[32] + 56) + 48 * v1);
    v0[33] = *v7;
    v0[34] = v7[1];
    v0[35] = v7[2];
    v0[36] = v7[3];
    v0[37] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v71, v84);
    (*(v5 + 104))(v72, *MEMORY[0x277D4D278], v6);
    v9 = MLS.IncomingErrorMessageContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v72, v6);
    v9(v0 + 2, 0);
    v8(v75, v71, v84);
    (*(v74 + 16))(log, v73, v76);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    if (v12)
    {
      v81 = v11;
      v19 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v89[0] = v85;
      *v19 = 136315394;
      v20 = MLS.IncomingErrorMessageContext.identifier.getter();
      v77 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v89);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v77, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v89);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v81, "MLSDaemon processIncoming errorMessage calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v85, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[38] = v23;
    v64 = *(MEMORY[0x277D4D090] + 4);
    v88 = (*MEMORY[0x277D4D090] + MEMORY[0x277D4D090]);
    v65 = swift_task_alloc();
    v0[39] = v65;
    *v65 = v0;
    v65[1] = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
    v66 = v0[27];
    v67 = v0[11];
    v68 = v0[12];
    v69 = v0[8];
    v70 = v0[6];

    return v88(v70, v69, v67, v68, v66);
  }

  else
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v35 = v0[9];
    v86 = v0[10];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[16];
    if (v39)
    {
      v83 = v37;
      v46 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v89[0] = v87;
      *v46 = 136315394;
      v47 = MLS.IncomingErrorMessageContext.identifier.getter();
      v82 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v89);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v89);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v83, v82, "MLSDaemon processIncoming errorMessage has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v87, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[14] + 104))(v0[15], *MEMORY[0x277D4D2B0], v0[13]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v56 = v0[26];
    v55 = v0[27];
    v57 = v0[25];
    v58 = v0[22];
    v60 = v0[18];
    v59 = v0[19];
    v61 = v0[15];

    v62 = v0[1];

    return v62();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingErrorMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingErrorMessageContext<Data>) -> (@out MLS.IncomingErrorMessageProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a2 + v8, a2 + v9);
}

uint64_t closure #1 in MLSDaemon.getKeyPackage(for:with:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  type metadata accessor for MLSActor();
  v2[9] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](closure #1 in MLSDaemon.getKeyPackage(for:with:), v4, v3);
}

uint64_t closure #1 in MLSDaemon.getKeyPackage(for:with:)()
{
  v1 = v0[8];
  MLS.SwiftMLSClientPicker.client.getter();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(MEMORY[0x277D4CFF8] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLSDaemon.getKeyPackage(for:with:);
  v6 = v0[7];

  return MEMORY[0x2821ACA28](v6, v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = closure #1 in MLSDaemon.getKeyPackage(for:with:);
  }

  else
  {
    v7 = closure #1 in MLSDaemon.getKeyPackage(for:with:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[9];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[1];

  return v2();
}

{
  v1 = v0[9];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t closure #1 in MLSDaemon.loadCredential(credential:uri:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  type metadata accessor for MLSActor();
  v4[5] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](closure #1 in MLSDaemon.loadCredential(credential:uri:with:), v6, v5);
}

uint64_t closure #1 in MLSDaemon.loadCredential(credential:uri:with:)()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = MEMORY[0x266756630]();
  v7 = v6;
  v0[8] = v6;
  v8 = *(MEMORY[0x277D4D110] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLSDaemon.loadCredential(credential:uri:with:);
  v10 = v0[3];

  return MEMORY[0x2821ACA98](v10, v5, v7, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = closure #1 in MLSDaemon.loadCredential(credential:uri:with:);
  }

  else
  {
    v7 = v2[8];

    v4 = v2[6];
    v5 = v2[7];
    v6 = closure #1 in MLSDaemon.loadCredential(credential:uri:with:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v6 = type metadata accessor for UUID();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[19] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v10;
  v5[21] = v9;

  return MEMORY[0x2822009F8](closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:), v10, v9);
}

uint64_t closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:)()
{
  v1 = v0[12];
  MLS.SwiftMLSClientPicker.client.getter();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(MEMORY[0x277D4CFF0] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  v6 = v0[13];

  return MEMORY[0x2821ACA20](v6, v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  else
  {
    v7 = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister);
  MLS.SwiftMLSClientPicker.client.getter();
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  dispatch thunk of MLS.SwiftMLSClientProtocol.clientUUID.getter();
  v11 = (*v4 + 312);
  v12 = (*v11 + **v11);
  v6 = (*v11)[1];
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  v8 = v0[18];
  v9 = v0[15];

  return v12(v8, v9);
}

{
  v2 = *v1;
  v3 = (*v1)[24];
  v4 = (*v1)[18];
  v5 = (*v1)[17];
  v6 = (*v1)[16];
  v11 = *v1;
  (*v1)[25] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[20];
    v8 = v2[21];
    v9 = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);
    v7 = v2[20];
    v8 = v2[21];
    v9 = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[19];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[23];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[19];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = v0[25];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for MLSDaemonProtocol.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MLSActor();
  v5[7] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](protocol witness for MLSDaemonProtocol.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:) in conformance MLSDaemon, v7, v6);
}

uint64_t protocol witness for MLSDaemonProtocol.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:) in conformance MLSDaemon()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  v7 = *v2;
  v8 = v6[3];
  v9 = v6[4];
  v10 = __swift_project_boxed_opaque_existential_1(v6, v8);
  ObjectType = swift_getObjectType();
  specialized MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(v10, v5, v4, v7, v8, ObjectType, v9, v3);
  v12 = v0[1];

  return v12();
}

uint64_t protocol witness for MLSDaemonProtocol.getKeyPackage(for:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MLSDaemon.getKeyPackage(for:with:)(a1, a2, a3);
}

uint64_t protocol witness for MLSDaemonProtocol.credentialSigningRequest(for:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MLSDaemon.credentialSigningRequest(for:with:)(a1, a2, a3);
}

uint64_t protocol witness for MLSDaemonProtocol.publicSigningKey(for:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance DaemonPersister;

  return MLSDaemon.publicSigningKey(for:with:)(a1, a2);
}

uint64_t protocol witness for MLSDaemonProtocol.loadCredential(credential:uri:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MLSDaemon.loadCredential(credential:uri:with:)(a1, a2, a3);
}

uint64_t protocol witness for MLSDaemonProtocol.getCredential(uri:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MLSDaemon.getCredential(uri:with:)(a1, a2, a3);
}

uint64_t protocol witness for MLSDaemonProtocol.updateClientID(swiftMLSClientID:for:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(a1, a2, a3, a4);
}

uint64_t protocol witness for MLSDaemonProtocol.signWithParticipantKey(nonce:for:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return MLSDaemon.signWithParticipantKey(nonce:for:with:)(a1, a2, a3, a4);
}

uint64_t specialized MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v14 = type metadata accessor for RegClientIdentifier();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v37[3] = a5;
  v37[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  outlined init with copy of RegClientIdentifier(a3, v20);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = a3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v36[0] = v26;
    *v25 = 136315138;
    outlined init with copy of RegClientIdentifier(v20, v18);
    v27 = MLS.ClientIdentifier.description.getter();
    v29 = v28;
    outlined destroy of RegClientIdentifier(v18);
    outlined destroy of RegClientIdentifier(v20);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v36);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_26524C000, v22, v23, "MLSDaemon setupInternalConnection called { clientIdentifier: %s }", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x2667577B0](v26, -1, -1);
    v31 = v25;
    a3 = v34;
    MEMORY[0x2667577B0](v31, -1, -1);
  }

  else
  {

    outlined destroy of RegClientIdentifier(v20);
  }

  outlined init with copy of SMAUserDefaultsProtocol(v37, v36);
  v36[5] = a2;
  v36[6] = v35;
  v32 = *(**(a4 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_regClientServer) + 112);
  swift_unknownObjectRetain();
  v32(v36, a3);
  outlined destroy of RegistrationClientProxy(v36);
  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t partial apply for closure #1 in MLSDaemon.getKeyPackage(for:with:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in MLSDaemon.getKeyPackage(for:with:)(a1, v4);
}

uint64_t partial apply for closure #1 in MLSDaemon.loadCredential(credential:uri:with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in MLSDaemon.loadCredential(credential:uri:with:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for MLSDaemon()
{
  result = type metadata singleton initialization cache for MLSDaemon;
  if (!type metadata singleton initialization cache for MLSDaemon)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265308F94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in MLSDaemon.setupXPCNotificationPoster()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in MLSDaemon.setupXPCNotificationPoster()(a1, v4, v5, v6);
}

uint64_t sub_2653090B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(a1, a2, v7, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.AllMember) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.AllMember) -> (@unowned Bool, @error @owned Error)(a1, a2, v7);
}

uint64_t sub_26530926C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void partial apply for closure #1 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  closure #1 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(a1);
}

uint64_t partial apply for closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t sub_26530954C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));
  outlined consume of Data._Representation(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)(a1, a2, a3, v8, v9, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDeletionContext<Data>) -> (@out MLS.GroupDeletionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDeletionContext<Data>) -> (@out MLS.GroupDeletionProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)(a1, a2, a3, v8, v9, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupFetchContext) -> (@out MLS.Group, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupFetchContext) -> (@out MLS.Group, @error @owned Error)(a1, a2, v7);
}

uint64_t sub_265309B28()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDetails) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDetails) -> (@unowned Bool, @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(a1, a2, v6, v7, v8);
}

uint64_t sub_265309E20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupMembersContext) -> (@owned Set<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupMembersContext) -> (@owned Set<MLS.AllMember>, @error @owned Error)(a1, a2, v7);
}

unint64_t lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance <> Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>);
  }

  return result;
}

uint64_t partial apply for closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)(a1, a2, a3, v8, v9, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)(a1, a2, a3, v8, v9, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.DowngradeContext<Data>) -> (@out MLS.DowngradeProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.DowngradeContext<Data>) -> (@out MLS.DowngradeProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.EncryptionContext<MLS.AllMember, Data>) -> (@out MLS.EncryptionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.EncryptionContext<MLS.AllMember, Data>) -> (@out MLS.EncryptionProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.SigningInput, @in_guaranteed MLS.SigningContext<Data>) -> (@out MLS.SigningProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.SigningInput, @in_guaranteed MLS.SigningContext<Data>) -> (@out MLS.SigningProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t sub_26530AA18()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupNameEncryptionContext<MLS.AllMember, Data>) -> (@out MLS.GroupNameEncryptionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupNameEncryptionContext<MLS.AllMember, Data>) -> (@out MLS.GroupNameEncryptionProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t objectdestroy_27Tm()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_159Tm()
{
  outlined consume of Data._Representation(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingGroupNameContext<Data>) -> (@out MLS.IncomingGroupNameProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingGroupNameContext<Data>) -> (@out MLS.IncomingGroupNameProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t sub_26530AE6C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));

  v1 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingMessageContext<Data>) -> (@out MLS.IncomingMessageProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingMessageContext<Data>) -> (@out MLS.IncomingMessageProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t sub_26530B100()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)(a1, a2, a3, a4, v10);
}

uint64_t partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingFailureToDecrypt<MLS.AllMember>, @in_guaranteed MLS.IncomingFailureToDecryptContext<Data>) -> (@out MLS.IncomingFailureToDecryptProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingFailureToDecrypt<MLS.AllMember>, @in_guaranteed MLS.IncomingFailureToDecryptContext<Data>) -> (@out MLS.IncomingFailureToDecryptProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t objectdestroy_45Tm()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingErrorMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingErrorMessageContext<Data>) -> (@out MLS.IncomingErrorMessageProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingErrorMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingErrorMessageContext<Data>) -> (@out MLS.IncomingErrorMessageProcessedContext<Data>, @error @owned Error)(a1, a2, v7);
}

uint64_t sub_26530B660@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_26530B6BC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);

  return v3(v4);
}

uint64_t sub_26530B720@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_26530B77C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v3(v4);
}

uint64_t type metadata completion function for MLSDaemon()
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

uint64_t dispatch thunk of MLSDaemon.start()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of MLSDaemonProtocol.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLSDaemonProtocol.getKeyPackage(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLSDaemonProtocol.credentialSigningRequest(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLSDaemonProtocol.publicSigningKey(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLSDaemonProtocol.loadCredential(credential:uri:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLSDaemonProtocol.getCredential(uri:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLSDaemonProtocol.updateClientID(swiftMLSClientID:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 56);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLSDaemonProtocol.signWithParticipantKey(nonce:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 64);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26530C554()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(a1, v5, v4);
}

uint64_t _s15SecureMessaging8MLSActorCACScAAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RegistrationClientXPCServer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV_0cD9AgentCore0eG0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t RegistrationClientXPCServer.clientProxyByUUID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t RegistrationClientXPCServer.clientProxyByUUID.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t RegistrationClientXPCServer.addClientXPCProxy(clientProxy:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 104);
  swift_unknownObjectRetain();

  v8 = v7(v15);
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *v10 = v14;
  return v8(v15, 0);
}

uint64_t RegistrationClientXPCServer.removeClientXPCProxy(for:)(uint64_t a1)
{
  v3 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6, a1);
  v8 = (*(*v1 + 104))(v10);
  specialized Dictionary.subscript.setter(0, 0, v6);
  return v8(v10, 0);
}

uint64_t RegistrationClientXPCServer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RegistrationClientXPCServer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26530CBF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_26530CC44(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t getEnumTagSinglePayload for KDSRegistrationClient(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistrationClient(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t QueryKeyPackageRequest.init(recipients:pushTokenForTesting:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

BOOL static QueryRecipient.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

Swift::Int QueryRecipient.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266756F60](a3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance QueryRecipient(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QueryRecipient()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266756F60](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance QueryRecipient()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  String.hash(into:)();
  return MEMORY[0x266756F60](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QueryRecipient()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266756F60](v3);
  return Hasher._finalize()();
}

uint64_t QueryKeyPackageRequest.pushTokenForTesting.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data?(v1, *(v0 + 16));
  return v1;
}

uint64_t QueryKeyPackageRequest.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void *QueryKeyPackageRequest.toIDSMessage(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  KeyPackageMessage = type metadata accessor for QueryKeyPackageMessage();
  v12 = objc_allocWithZone(KeyPackageMessage);
  *&v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_pushTokenForTesting] = xmmword_2653419D0;
  *&v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_recipients] = v9;
  v21.receiver = v12;
  v21.super_class = KeyPackageMessage;

  v13 = objc_msgSendSuper2(&v21, sel_init);
  if (os_variant_has_internal_content())
  {
    v14 = *((*MEMORY[0x277D85000] & *v13) + 0x70);
    outlined copy of Data?(v8, v10);
    v14(v8, v10);
  }

  (*(v4 + 16))(v7, a1, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v7, v3);
  aBlock[4] = partial apply for closure #1 in QueryKeyPackageRequest.toIDSMessage(with:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed IDSBaseMessage?, @guaranteed Error?, @unowned Int, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_9;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  [v18 setCompletionBlock_];
  _Block_release(v17);

  return v18;
}

id QueryKeyPackageMessage.__allocating_init(recipients:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_pushTokenForTesting] = xmmword_2653419D0;
  *&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_recipients] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t closure #1 in QueryKeyPackageRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for LogCategory();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v91[0] = a2;
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a4)
  {
    v92 = &type metadata for QueryKeyPackageResponse;
    v93 = &protocol witness table for QueryKeyPackageResponse;
    v64 = swift_allocObject();
    v91[0] = v64;
    *(v64 + 16) = 0;
    *(v64 + 24) = 1;
    *(v64 + 32) = 0u;
    *(v64 + 48) = 0u;
    *(v64 + 64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  v90 = 1;
  v87 = 0x737574617473;
  v88 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a4 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v91), (v21 & 1) == 0))
  {
    outlined destroy of AnyHashable(v91);
    goto LABEL_9;
  }

  outlined init with copy of Any(*(a4 + 56) + 32 * v20, v89);
  outlined destroy of AnyHashable(v91);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v77 = 0;
    v22 = 1;
    goto LABEL_10;
  }

  v22 = 0;
  v77 = v87;
  v90 = 0;
LABEL_10:
  v87 = 0x746E69682D7478;
  v88 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a4 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v91), (v24 & 1) == 0))
  {
    outlined destroy of AnyHashable(v91);
    goto LABEL_15;
  }

  outlined init with copy of Any(*(a4 + 56) + 32 * v23, v89);
  outlined destroy of AnyHashable(v91);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v76 = 0;
    v79 = 0;
    goto LABEL_16;
  }

  v76 = v87;
  v79 = v88;
LABEL_16:
  v87 = 0x6567617373656DLL;
  v88 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a4 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v91), (v26 & 1) == 0))
  {
    outlined destroy of AnyHashable(v91);
    goto LABEL_21;
  }

  outlined init with copy of Any(*(a4 + 56) + 32 * v25, v89);
  outlined destroy of AnyHashable(v91);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v75 = 0;
    v78 = 0;
    goto LABEL_22;
  }

  v75 = v87;
  v78 = v88;
LABEL_22:
  v87 = 0x6E65697069636572;
  v88 = 0xEA00000000007374;
  AnyHashable.init<A>(_:)();
  if (!*(a4 + 16) || (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v91), (v28 & 1) == 0))
  {
    outlined destroy of AnyHashable(v91);
    goto LABEL_62;
  }

  outlined init with copy of Any(*(a4 + 56) + 32 * v27, v89);
  outlined destroy of AnyHashable(v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_62:
    v65 = 0;
LABEL_63:
    v92 = &type metadata for QueryKeyPackageResponse;
    v93 = &protocol witness table for QueryKeyPackageResponse;
    v61 = swift_allocObject();
    v91[0] = v61;
    *(v61 + 16) = v77;
    *(v61 + 24) = v22;
    v63 = v78;
    v62 = v79;
    *(v61 + 32) = v76;
    *(v61 + 40) = v62;
    *(v61 + 48) = v75;
    *(v61 + 56) = v63;
    *(v61 + 64) = v65;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }

  result = v87;
  v86 = *(v87 + 16);
  if (!v86)
  {

    v65 = MEMORY[0x277D84F90];
    goto LABEL_63;
  }

  v29 = 0;
  v85 = v87 + 32;
  v84 = *MEMORY[0x277D4C900];
  v82 = (v9 + 8);
  v83 = (v9 + 104);
  v80 = (v14 + 8);
  v70 = MEMORY[0x277D84F90];
  v73 = v13;
  v81 = v87;
  while (1)
  {
    if (v29 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_68;
    }

    v30 = *(v85 + 8 * v29);
    (*v83)(v12, v84, v8);

    secureMessagingLogger(category:)();
    (*v82)(v12, v8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26524C000, v31, v32, "QueryKeyPackageResponse - parsing recipients", v33, 2u);
      v34 = v33;
      v13 = v73;
      MEMORY[0x2667577B0](v34, -1, -1);
    }

    if (!*(v30 + 16))
    {
      goto LABEL_48;
    }

    v35 = specialized __RawDictionaryStorage.find<A>(_:)(0x616B63615079656BLL, 0xEB00000000736567);
    if ((v36 & 1) == 0)
    {
      goto LABEL_48;
    }

    outlined init with copy of Any(*(v30 + 56) + 32 * v35, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_52;
    }

    v37 = v89[0];
    if (*(v30 + 16))
    {
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65697069636572, 0xE900000000000074);
      if (v39)
      {
        break;
      }
    }

LABEL_48:

    (*v80)(v17, v13);
LABEL_49:
    result = v81;
LABEL_50:
    if (++v29 == v86)
    {

      v22 = v90;
      v65 = v70;
      goto LABEL_63;
    }
  }

  outlined init with copy of Any(*(v30 + 56) + 32 * v38, v91);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:
    (*v80)(v17, v13);

    goto LABEL_49;
  }

  v72 = v37;
  v67 = v89[0];
  v69 = v89[1];
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_26524C000, v40, v41, "QueryKeyPackageResponse - parsing recipient.", v42, 2u);
    MEMORY[0x2667577B0](v42, -1, -1);
  }

  v68 = a5;

  result = v72;
  v71 = *(v72 + 16);
  if (!v71)
  {
    v74 = MEMORY[0x277D84F90];
LABEL_56:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
    }

    v13 = v73;
    v54 = v81;
    v55 = v69;
    v57 = *(v70 + 2);
    v56 = *(v70 + 3);
    if (v57 >= v56 >> 1)
    {
      v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v70);
    }

    (*v80)(v17, v13);
    v58 = v70;
    *(v70 + 2) = v57 + 1;
    v59 = &v58[24 * v57];
    v60 = v67;
    *(v59 + 4) = v74;
    *(v59 + 5) = v60;
    *(v59 + 6) = v55;
    a5 = v68;
    result = v54;
    goto LABEL_50;
  }

  v43 = 0;
  v44 = (v72 + 40);
  v74 = MEMORY[0x277D84F90];
  while (v43 < *(result + 16))
  {
    v46 = *(v44 - 1);
    v45 = *v44;

    v47 = Data.init(base64Encoded:options:)();
    v49 = v48;

    if (v49 >> 60 == 15)
    {

      (*v80)(v17, v73);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2) + 1, 1, v74);
    }

    v51 = *(v74 + 2);
    v50 = *(v74 + 3);
    if (v51 >= v50 >> 1)
    {
      v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v74);
    }

    ++v43;
    v52 = v74;
    *(v74 + 2) = v51 + 1;
    v53 = &v52[16 * v51];
    *(v53 + 4) = v47;
    *(v53 + 5) = v49;
    v44 += 2;
    result = v72;
    if (v71 == v43)
    {
      goto LABEL_56;
    }
  }

LABEL_68:
  __break(1u);
  return result;
}

void __swiftcall QueryKeyPackageResponse.init()(SecureMessagingAgentCore::QueryKeyPackageResponse *__return_ptr retstr)
{
  retstr->status.value = 0;
  retstr->status.is_nil = 1;
  retstr->splunkHint = 0u;
  retstr->message = 0u;
  retstr->recipientKeyPackages.value._rawValue = 0;
}

uint64_t RecipientKeyPackages.init(keyPackages:uri:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t QueryKeyPackageMessage.pushTokenForTesting.getter()
{
  v1 = v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_pushTokenForTesting;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t QueryKeyPackageMessage.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_pushTokenForTesting);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of Data?(v6, v7);
}

id QueryKeyPackageMessage.init(recipients:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_pushTokenForTesting] = xmmword_2653419D0;
  *&v1[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_recipients] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for QueryKeyPackageMessage();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_26530E174()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in QueryKeyPackageRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return closure #1 in QueryKeyPackageRequest.toIDSMessage(with:)(a1, a2, a3, a4, v10);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double QueryKeyPackageMessage.requiredKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_2653419E0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0x6E65697069636572;
  *(v0 + 40) = 0xEA00000000007374;
  return result;
}

unint64_t QueryKeyPackageMessage.messageBody.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_recipients);
  v2 = *(v1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = (v1 + 48);
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v30[0] = 0x53444B656D6F68;
      v30[1] = 0xE700000000000000;
      v30[2] = v7;
      v30[5] = MEMORY[0x277D83B88];
      v31[0] = 0x6E65697069636572;
      v31[1] = 0xE900000000000074;
      v31[5] = MEMORY[0x277D837D0];
      v31[2] = v5;
      v31[3] = v6;
      v8 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)(v30, &v27);
      v9 = v27;
      v10 = v28;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v8[6] + 16 * result);
      *v13 = v9;
      v13[1] = v10;
      result = outlined init with take of Any(v29, (v8[7] + 32 * result));
      v14 = v8[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_16;
      }

      v8[2] = v16;
      outlined init with copy of (String, Any)(v31, &v27);
      v17 = v27;
      v18 = v28;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
      if (v19)
      {
        goto LABEL_17;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v8[6] + 16 * result);
      *v20 = v17;
      v20[1] = v18;
      result = outlined init with take of Any(v29, (v8[7] + 32 * result));
      v21 = v8[2];
      v15 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v15)
      {
        goto LABEL_18;
      }

      v8[2] = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      }

      v24 = v4[2];
      v23 = v4[3];
      if (v24 >= v23 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v4);
      }

      v3 += 3;
      v4[2] = v24 + 1;
      v4[v24 + 4] = v8;
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2653419E0;
    v27 = 0x6E65697069636572;
    v28 = 0xEA00000000007374;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
    *(inited + 72) = v4;
    v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (AnyHashable, Any)(inited + 32);
    return v26;
  }

  return result;
}

id QueryKeyPackageMessage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QueryKeyPackageMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryKeyPackageMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RecipientKeyPackages.uri.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t QueryKeyPackageResponse.status.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t QueryKeyPackageResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t QueryKeyPackageResponse.splunkHint.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t QueryKeyPackageResponse.splunkHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t QueryKeyPackageResponse.message.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t QueryKeyPackageResponse.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t QueryKeyPackageResponse.recipientKeyPackages.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void __swiftcall QueryKeyPackageResponse.init(status:splunkHint:message:recipientKeyPackages:)(SecureMessagingAgentCore::QueryKeyPackageResponse *__return_ptr retstr, Swift::Int_optional status, Swift::String_optional splunkHint, Swift::String_optional message, Swift::OpaquePointer_optional recipientKeyPackages)
{
  retstr->status.value = status.value;
  retstr->status.is_nil = status.is_nil;
  retstr->splunkHint = splunkHint;
  retstr->message = message;
  retstr->recipientKeyPackages.value._rawValue = recipientKeyPackages.value._rawValue;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type QueryRecipient and conformance QueryRecipient()
{
  result = lazy protocol witness table cache variable for type QueryRecipient and conformance QueryRecipient;
  if (!lazy protocol witness table cache variable for type QueryRecipient and conformance QueryRecipient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QueryRecipient and conformance QueryRecipient);
  }

  return result;
}

uint64_t sub_26530EBDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26530EC38(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x70);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t getEnumTagSinglePayload for QueryRecipient(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for QueryRecipient(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryKeyPackageRequest(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryKeyPackageRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryKeyPackageResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryKeyPackageResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_26530EF90()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

sqlite3_stmt *ClientStateModel.insertStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v8 = strdup("INSERT OR REPLACE INTO Client_State_Table (client_id, client_state_data) VALUES (?, ?);");
  if (!v8)
  {
LABEL_49:
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0))
  {
    v9 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT != -1)
    {
      swift_once();
    }

    v10 = SQLITE_TRANSIENT;
    v11 = String.utf8CString.getter();
    v12 = sqlite3_bind_text(v9, 1, (v11 + 32), -1, v10);

    if (v12)
    {
      *&v32 = 0x726F7272456C7173;
      *(&v32 + 1) = 0xE90000000000003ALL;
      goto LABEL_8;
    }

    v18 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v18 != 2)
      {
LABEL_38:
        *(&v32 + 6) = 0;
        *&v32 = 0;
        v20 = ppStmt[0];
        v21 = &v32;
        LODWORD(v19) = 0;
        goto LABEL_41;
      }

      v22 = *(a4 + 16);
      v23 = *(a4 + 24);
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v25 = __DataStorage._offset.getter();
        if (__OFSUB__(v22, v25))
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v24 += v22 - v25;
      }

      v26 = __OFSUB__(v23, v22);
      v27 = v23 - v22;
      if (v26)
      {
        goto LABEL_45;
      }

      a4 = a5 & 0x3FFFFFFFFFFFFFFFLL;
      v28 = MEMORY[0x2667557A0]();
      if (v28 >= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      if (v24)
      {
        v19 = v29;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < 0xFFFFFFFF80000000)
      {
        goto LABEL_46;
      }

      if (v19 <= 0x7FFFFFFF)
      {
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (!v18)
    {
      *&v32 = a4;
      WORD4(v32) = a5;
      BYTE10(v32) = BYTE2(a5);
      BYTE11(v32) = BYTE3(a5);
      BYTE12(v32) = BYTE4(a5);
      BYTE13(v32) = BYTE5(a5);
      LODWORD(v19) = BYTE6(a5);
      v20 = ppStmt[0];
      v21 = &v32;
      goto LABEL_41;
    }

    if (a4 >> 32 >= a4)
    {
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v30 = __DataStorage._offset.getter();
        if (__OFSUB__(a4, v30))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v24 += a4 - v30;
      }

      v31 = MEMORY[0x2667557A0]();
      if (v31 >= (a4 >> 32) - a4)
      {
        v19 = (a4 >> 32) - a4;
      }

      else
      {
        v19 = v31;
      }

      if (!v24)
      {
        LODWORD(v19) = 0;
        goto LABEL_40;
      }

      if (v19 >= 0xFFFFFFFF80000000)
      {
        if (v19 > 0x7FFFFFFF)
        {
          __break(1u);
          goto LABEL_38;
        }

LABEL_40:
        v20 = ppStmt[0];
        v21 = v24;
LABEL_41:
        if (!sqlite3_bind_blob(v20, 2, v21, v19, v10))
        {
          result = ppStmt[0];
          goto LABEL_9;
        }

        goto LABEL_3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_3:
  *&v32 = 0x726F7272456C7173;
  *(&v32 + 1) = 0xE90000000000003ALL;
LABEL_8:
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v13);

  v14 = v32;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v15 = 0;
  *(v15 + 8) = v14;
  result = swift_willThrow();
LABEL_9:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *ClientStateModel.updateStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v8 = strdup("UPDATE Client_State_Table SET\n    client_state_data = ?\nWHERE\n    client_id = ?;");
  if (!v8)
  {
LABEL_56:
    __break(1u);
  }

  v9 = sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0);
  if (v9)
  {
LABEL_40:
    *&v33 = 0x726F7272456C7173;
    *(&v33 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_32;
    }

    v13 = *(a4 + 16);
    v14 = *(a4 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_54;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      a4 = a5 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v9;
      }

      if (v15)
      {
        a5 = v19;
      }

      else
      {
        a5 = 0;
      }

      if (a5 >= 0xFFFFFFFF80000000)
      {
        if (a5 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v10)
  {
LABEL_21:
    if (a4 >> 32 < a4)
    {
      __break(1u);
      goto LABEL_51;
    }

    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a4 >> 32) - a4)
      {
        a5 = (a4 >> 32) - a4;
      }

      else
      {
        a5 = v9;
      }

      if (v15)
      {
        if (a5 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_49;
        }

        if (a5 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v33 + 6) = 0;
          *&v33 = 0;
          v9 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v11 = SQLITE_TRANSIENT;
            v12 = &v33;
            v21 = 0;
            goto LABEL_39;
          }

LABEL_51:
          v32 = v9;
          swift_once();
          v9 = v32;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a5) = 0;
      }

LABEL_35:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v30 = ppStmt[0];
        swift_once();
        v9 = v30;
      }

      v11 = SQLITE_TRANSIENT;
      v12 = v15;
      goto LABEL_38;
    }

    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(a4, v20))
    {
      v15 += a4 - v20;
      goto LABEL_25;
    }

    goto LABEL_55;
  }

  *&v33 = a4;
  WORD4(v33) = a5;
  BYTE10(v33) = BYTE2(a5);
  BYTE11(v33) = BYTE3(a5);
  BYTE12(v33) = BYTE4(a5);
  BYTE13(v33) = BYTE5(a5);
  v9 = ppStmt[0];
  LODWORD(a5) = BYTE6(a5);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_49:
    v31 = v9;
    swift_once();
    v9 = v31;
  }

  v11 = SQLITE_TRANSIENT;
  v12 = &v33;
LABEL_38:
  v21 = a5;
LABEL_39:
  if (sqlite3_bind_blob(v9, 1, v12, v21, v11))
  {
    goto LABEL_40;
  }

  v27 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v28 = String.utf8CString.getter();
  v29 = sqlite3_bind_text(v27, 2, (v28 + 32), -1, v11);

  if (!v29)
  {
    result = ppStmt[0];
    goto LABEL_42;
  }

  *&v33 = 0x726F7272456C7173;
  *(&v33 + 1) = 0xE90000000000003ALL;
LABEL_41:
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v22);

  v23 = v33;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v24 = 0;
  *(v24 + 8) = v23;
  result = swift_willThrow();
LABEL_42:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *ClientStateModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DELETE FROM Client_State_Table WHERE client_id = ?;");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    goto LABEL_6;
  }

  v3 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v4 = SQLITE_TRANSIENT;
  v5 = String.utf8CString.getter();
  v6 = sqlite3_bind_text(v3, 1, (v5 + 32), -1, v4);

  if (v6)
  {
LABEL_6:
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v7);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0x726F7272456C7173;
    *(v8 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in variable initialization expression of static ClientStateModel.converter(sqlite3_stmt *a1)
{
  if (sqlite3_column_type(a1, 0) == 5 || !sqlite3_column_text(a1, 0))
  {
    goto LABEL_7;
  }

  v1 = String.init(cString:)();
  if (sqlite3_column_type(a1, 1) == 5 || (v3 = sqlite3_column_blob(a1, 1)) == 0)
  {

LABEL_7:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v6 = 3;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v4 = v3;
  v5 = sqlite3_column_bytes(a1, 1);
  specialized Data.init(bytes:count:)(v4, v5);
  return v1;
}

uint64_t (*static ClientStateModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static ClientStateModel.converter;

  return v0;
}

uint64_t static ClientStateModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static ClientStateModel.converter = a1;
  qword_281EF87B0 = a2;
}

uint64_t key path getter for static ClientStateModel.converter : ClientStateModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static ClientStateModel.converter;
  v2 = qword_281EF87B0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static ClientStateModel.converter : ClientStateModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static ClientStateModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error)partial apply;
  qword_281EF87B0 = v3;
}

sqlite3_stmt *protocol witness for SqlSchema.deleteStatement(_:) in conformance ClientStateModel(sqlite3 *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return ClientStateModel.deleteStatement(_:)(a1);
}

uint64_t (*protocol witness for static SqlSchema.converter.getter in conformance ClientStateModel())@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v1 = static ClientStateModel.converter;
  v0 = qword_281EF87B0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)partial apply;
}

uint64_t *ClientStateQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static ClientStateQuery.converter;
}

uint64_t static ClientStateQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static ClientStateQuery.converter;

  return v0;
}

uint64_t static ClientStateQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ClientStateQuery.converter = a1;
  qword_280016948 = a2;
}

uint64_t (*static ClientStateQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static ClientStateQuery.converter : ClientStateQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static ClientStateQuery.converter;
  v2 = qword_280016948;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static ClientStateQuery.converter : ClientStateQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ClientStateQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error);
  qword_280016948 = v3;
}

sqlite3_stmt *ClientStateQuery.queryStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("SELECT * FROM Client_State_Table WHERE client_id = ? LIMIT 1;");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    goto LABEL_6;
  }

  v3 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v4 = SQLITE_TRANSIENT;
  v5 = String.utf8CString.getter();
  v6 = sqlite3_bind_text(v3, 1, (v5 + 32), -1, v4);

  if (v6)
  {
LABEL_6:
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v7);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0x726F7272456C7173;
    *(v8 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance ClientStateQuery())@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static ClientStateQuery.converter;
  v0 = qword_280016948;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error);
}

sqlite3_stmt *protocol witness for SqlQuery.queryStatement(_:) in conformance ClientStateQuery(sqlite3 *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return ClientStateQuery.queryStatement(_:)(a1);
}

sqlite3_stmt *specialized static ClientStateModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Client_State_Table (\n    client_id TEXT PRIMARY KEY NOT NULL,\n    client_state_data BLOB NOT NULL\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static ClientStateModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Client_State_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for ClientStateQuery(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ClientStateQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2653107D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error)(uint64_t a1)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error)(a1);
}

{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = a1;
  result = v3(&v6, &v7);
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)@<X0>(uint64_t *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
    a1[2] = v8;
    a1[3] = v9;
  }

  return result;
}

sqlite3_stmt *KeyPackageModel.insertStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v10 = strdup("INSERT OR REPLACE INTO Key_Package_Table (client_id, key_package) VALUES (?, ?);");
  if (!v10)
  {
LABEL_96:
    __break(1u);
  }

  v11 = sqlite3_prepare_v2(a1, v10, -1, ppStmt, 0);
  if (v11)
  {
    goto LABEL_76;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_32;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    LODWORD(a2) = a3;
    v11 = __DataStorage._bytes.getter();
    v16 = v11;
    if (v11)
    {
      LODWORD(a2) = a3;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v11))
      {
        __break(1u);
        goto LABEL_87;
      }

      v16 += v14 - v11;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v11;
      }

      if (v16)
      {
        a2 = v19;
      }

      else
      {
        a2 = 0;
      }

      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  if (v12)
  {
LABEL_21:
    v20 = a2;
    v21 = (a2 >> 32) - a2;
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_82;
    }

    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
LABEL_25:
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v21)
      {
        a2 = v21;
      }

      else
      {
        a2 = v11;
      }

      if (v16)
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_80;
        }

        if (a2 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v46 + 6) = 0;
          *&v46 = 0;
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            a3 = SQLITE_TRANSIENT;
            v13 = &v46;
            v22 = 0;
            goto LABEL_39;
          }

LABEL_82:
          v42 = v11;
          swift_once();
          v11 = v42;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }

LABEL_35:
      v11 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v40 = ppStmt[0];
        swift_once();
        v11 = v40;
      }

      a3 = SQLITE_TRANSIENT;
      v13 = v16;
      goto LABEL_38;
    }

    LODWORD(a2) = a3;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v20, v11))
    {
      v16 += v20 - v11;
      goto LABEL_25;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  *&v46 = a2;
  WORD4(v46) = a3;
  BYTE10(v46) = BYTE2(a3);
  BYTE11(v46) = BYTE3(a3);
  BYTE12(v46) = BYTE4(a3);
  BYTE13(v46) = BYTE5(a3);
  v11 = ppStmt[0];
  LODWORD(a2) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_80:
    v41 = v11;
    swift_once();
    v11 = v41;
  }

  a3 = SQLITE_TRANSIENT;
  v13 = &v46;
LABEL_38:
  v22 = a2;
LABEL_39:
  v11 = sqlite3_bind_blob(v11, 1, v13, v22, a3);
  if (v11)
  {
    goto LABEL_76;
  }

  v23 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_68;
    }

    v25 = *(a4 + 16);
    v26 = *(a4 + 24);
    a4 = __DataStorage._bytes.getter();
    if (a4)
    {
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
        goto LABEL_93;
      }

      a4 += v25 - v27;
    }

    v17 = __OFSUB__(v26, v25);
    v28 = v26 - v25;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v11;
      }

      if (a4)
      {
        a2 = v29;
      }

      else
      {
        a2 = 0;
      }

      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          goto LABEL_72;
        }

        __break(1u);
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (v23)
  {
LABEL_58:
    v30 = a4;
    v31 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
    {
      __break(1u);
      goto LABEL_90;
    }

    a4 = __DataStorage._bytes.getter();
    if (!a4)
    {
      goto LABEL_62;
    }

    v32 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v32))
    {
      a4 += v30 - v32;
LABEL_62:
      v33 = MEMORY[0x2667557A0]();
      if (v33 >= v31)
      {
        a2 = v31;
      }

      else
      {
        a2 = v33;
      }

      if (!a4)
      {
        LODWORD(a2) = 0;
        goto LABEL_72;
      }

      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_68:
        *(&v46 + 6) = 0;
        *&v46 = 0;
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_69:
          v24 = &v46;
          v34 = 0;
          goto LABEL_75;
        }

LABEL_90:
        v45 = v11;
        swift_once();
        v11 = v45;
        goto LABEL_69;
      }

      if (a2 <= 0x7FFFFFFF)
      {
LABEL_72:
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_73:
          v24 = a4;
          goto LABEL_74;
        }

LABEL_85:
        v43 = v11;
        swift_once();
        v11 = v43;
        goto LABEL_73;
      }

      goto LABEL_95;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  *&v46 = a4;
  WORD4(v46) = a5;
  BYTE10(v46) = BYTE2(a5);
  BYTE11(v46) = BYTE3(a5);
  BYTE12(v46) = BYTE4(a5);
  BYTE13(v46) = BYTE5(a5);
  v11 = ppStmt[0];
  LODWORD(a2) = BYTE6(a5);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_88:
    v44 = v11;
    swift_once();
    v11 = v44;
  }

  v24 = &v46;
LABEL_74:
  v34 = a2;
LABEL_75:
  if (!sqlite3_bind_blob(v11, 2, v24, v34, a3))
  {
    result = ppStmt[0];
    goto LABEL_77;
  }

LABEL_76:
  *&v46 = 0x726F7272456C7173;
  *(&v46 + 1) = 0xE90000000000003ALL;
  v35 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v35);

  v36 = v46;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v37 = 0;
  *(v37 + 8) = v36;
  result = swift_willThrow();
LABEL_77:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *KeyPackageModel.updateStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v10 = strdup("UPDATE Key_Package_Table SET\n    key_package = ?\nWHERE\n    client_id = ?;");
  if (!v10)
  {
LABEL_96:
    __break(1u);
  }

  v11 = sqlite3_prepare_v2(a1, v10, -1, ppStmt, 0);
  if (v11)
  {
    goto LABEL_76;
  }

  v12 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_32;
    }

    v14 = *(a4 + 16);
    v15 = *(a4 + 24);
    LODWORD(a4) = a5;
    v11 = __DataStorage._bytes.getter();
    v16 = v11;
    if (v11)
    {
      LODWORD(a4) = a5;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v11))
      {
        __break(1u);
        goto LABEL_87;
      }

      v16 += v14 - v11;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v11;
      }

      if (v16)
      {
        a4 = v19;
      }

      else
      {
        a4 = 0;
      }

      if (a4 >= 0xFFFFFFFF80000000)
      {
        if (a4 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  if (v12)
  {
LABEL_21:
    v20 = a4;
    v21 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
    {
      __break(1u);
      goto LABEL_82;
    }

    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
LABEL_25:
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v21)
      {
        a4 = v21;
      }

      else
      {
        a4 = v11;
      }

      if (v16)
      {
        if (a4 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_80;
        }

        if (a4 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v46 + 6) = 0;
          *&v46 = 0;
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            a5 = SQLITE_TRANSIENT;
            v13 = &v46;
            v22 = 0;
            goto LABEL_39;
          }

LABEL_82:
          v42 = v11;
          swift_once();
          v11 = v42;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a4) = 0;
      }

LABEL_35:
      v11 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v40 = ppStmt[0];
        swift_once();
        v11 = v40;
      }

      a5 = SQLITE_TRANSIENT;
      v13 = v16;
      goto LABEL_38;
    }

    LODWORD(a4) = a5;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v20, v11))
    {
      v16 += v20 - v11;
      goto LABEL_25;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  *&v46 = a4;
  WORD4(v46) = a5;
  BYTE10(v46) = BYTE2(a5);
  BYTE11(v46) = BYTE3(a5);
  BYTE12(v46) = BYTE4(a5);
  BYTE13(v46) = BYTE5(a5);
  v11 = ppStmt[0];
  LODWORD(a4) = BYTE6(a5);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_80:
    v41 = v11;
    swift_once();
    v11 = v41;
  }

  a5 = SQLITE_TRANSIENT;
  v13 = &v46;
LABEL_38:
  v22 = a4;
LABEL_39:
  v11 = sqlite3_bind_blob(v11, 1, v13, v22, a5);
  if (v11)
  {
    goto LABEL_76;
  }

  v23 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_68;
    }

    v25 = *(a2 + 16);
    v26 = *(a2 + 24);
    a2 = __DataStorage._bytes.getter();
    if (a2)
    {
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
        goto LABEL_93;
      }

      a2 += v25 - v27;
    }

    v17 = __OFSUB__(v26, v25);
    v28 = v26 - v25;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v11;
      }

      if (a2)
      {
        a4 = v29;
      }

      else
      {
        a4 = 0;
      }

      if (a4 >= 0xFFFFFFFF80000000)
      {
        if (a4 <= 0x7FFFFFFF)
        {
          goto LABEL_72;
        }

        __break(1u);
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (v23)
  {
LABEL_58:
    v30 = a2;
    v31 = (a2 >> 32) - a2;
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_90;
    }

    a2 = __DataStorage._bytes.getter();
    if (!a2)
    {
      goto LABEL_62;
    }

    v32 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v32))
    {
      a2 += v30 - v32;
LABEL_62:
      v33 = MEMORY[0x2667557A0]();
      if (v33 >= v31)
      {
        a4 = v31;
      }

      else
      {
        a4 = v33;
      }

      if (!a2)
      {
        LODWORD(a4) = 0;
        goto LABEL_72;
      }

      if (a4 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_68:
        *(&v46 + 6) = 0;
        *&v46 = 0;
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_69:
          v24 = &v46;
          v34 = 0;
          goto LABEL_75;
        }

LABEL_90:
        v45 = v11;
        swift_once();
        v11 = v45;
        goto LABEL_69;
      }

      if (a4 <= 0x7FFFFFFF)
      {
LABEL_72:
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_73:
          v24 = a2;
          goto LABEL_74;
        }

LABEL_85:
        v43 = v11;
        swift_once();
        v11 = v43;
        goto LABEL_73;
      }

      goto LABEL_95;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  *&v46 = a2;
  WORD4(v46) = a3;
  BYTE10(v46) = BYTE2(a3);
  BYTE11(v46) = BYTE3(a3);
  BYTE12(v46) = BYTE4(a3);
  BYTE13(v46) = BYTE5(a3);
  v11 = ppStmt[0];
  LODWORD(a4) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_88:
    v44 = v11;
    swift_once();
    v11 = v44;
  }

  v24 = &v46;
LABEL_74:
  v34 = a4;
LABEL_75:
  if (!sqlite3_bind_blob(v11, 2, v24, v34, a5))
  {
    result = ppStmt[0];
    goto LABEL_77;
  }

LABEL_76:
  *&v46 = 0x726F7272456C7173;
  *(&v46 + 1) = 0xE90000000000003ALL;
  v35 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v35);

  v36 = v46;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v37 = 0;
  *(v37 + 8) = v36;
  result = swift_willThrow();
LABEL_77:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *KeyPackageModel.deleteStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("DELETE FROM Key_Package_Table WHERE client_id = ?;");
  if (!v6)
  {
LABEL_50:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
    goto LABEL_40;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v28 = a2;
      WORD4(v28) = a3;
      BYTE10(v28) = BYTE2(a3);
      BYTE11(v28) = BYTE3(a3);
      BYTE12(v28) = BYTE4(a3);
      BYTE13(v28) = BYTE5(a3);
      v9 = ppStmt[0];
      LODWORD(a2) = BYTE6(a3);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v28;
        goto LABEL_39;
      }

LABEL_43:
      v26 = v9;
      swift_once();
      v9 = v26;
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    goto LABEL_32;
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v15 = __DataStorage._offset.getter();
    if (__OFSUB__(v12, v15))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v14 += v12 - v15;
  }

  v16 = __OFSUB__(v13, v12);
  v17 = v13 - v12;
  if (v16)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v7 = MEMORY[0x2667557A0]();
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  if (v14)
  {
    a2 = v18;
  }

  else
  {
    a2 = 0;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_47;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_21:
  if (a2 >> 32 < a2)
  {
    __break(1u);
LABEL_45:
    v27 = v7;
    swift_once();
    v7 = v27;
LABEL_33:
    if (!sqlite3_bind_blob(v7, 1, &v28, 0, SQLITE_TRANSIENT))
    {
      goto LABEL_34;
    }

LABEL_40:
    *&v28 = 0x726F7272456C7173;
    *(&v28 + 1) = 0xE90000000000003ALL;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v21);

    v22 = v28;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = v22;
    result = swift_willThrow();
    goto LABEL_41;
  }

  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v19 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v19))
    {
      v14 += a2 - v19;
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_25:
  v9 = MEMORY[0x2667557A0]();
  if (v9 >= (a2 >> 32) - a2)
  {
    a2 = (a2 >> 32) - a2;
  }

  else
  {
    a2 = v9;
  }

  if (v14)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (a2 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_32:
      *(&v28 + 6) = 0;
      *&v28 = 0;
      v7 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(a2) = 0;
  }

LABEL_36:
  v9 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v25 = ppStmt[0];
    swift_once();
    v9 = v25;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v14;
LABEL_39:
  if (sqlite3_bind_blob(v9, 1, v11, a2, v10))
  {
    goto LABEL_40;
  }

LABEL_34:
  result = ppStmt[0];
LABEL_41:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in variable initialization expression of static KeyPackageModel.converter(sqlite3_stmt *a1)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_7;
  }

  v3 = sqlite3_column_blob(a1, 0);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sqlite3_column_bytes(a1, 0);
  v1 = specialized Data.init(bytes:count:)(v4, v5);
  v7 = v6;
  if (sqlite3_column_type(a1, 1) == 5 || (v8 = sqlite3_column_blob(a1, 1)) == 0)
  {
    outlined consume of Data._Representation(v1, v7);
LABEL_7:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v11 = 3;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v9 = v8;
  v10 = sqlite3_column_bytes(a1, 1);
  specialized Data.init(bytes:count:)(v9, v10);
  return v1;
}

uint64_t (*static KeyPackageModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static KeyPackageModel.converter;

  return v0;
}

uint64_t static KeyPackageModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static KeyPackageModel.converter = a1;
  qword_281EF87E0 = a2;
}

uint64_t key path getter for static KeyPackageModel.converter : KeyPackageModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static KeyPackageModel.converter;
  v2 = qword_281EF87E0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static KeyPackageModel.converter : KeyPackageModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static KeyPackageModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error)partial apply;
  qword_281EF87E0 = v3;
}

uint64_t (*protocol witness for static SqlSchema.converter.getter in conformance KeyPackageModel())@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v1 = static KeyPackageModel.converter;
  v0 = qword_281EF87E0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)partial apply;
}

uint64_t *KeyPackageQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static KeyPackageQuery.converter;
}

uint64_t static KeyPackageQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static KeyPackageQuery.converter;

  return v0;
}

uint64_t static KeyPackageQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static KeyPackageQuery.converter = a1;
  qword_280016958 = a2;
}

uint64_t (*static KeyPackageQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static KeyPackageQuery.converter : KeyPackageQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static KeyPackageQuery.converter;
  v2 = qword_280016958;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static KeyPackageQuery.converter : KeyPackageQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static KeyPackageQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error);
  qword_280016958 = v3;
}

sqlite3_stmt *KeyPackageQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM Key_Package_Table WHERE client_id = ? LIMIT 1;");
  if (!v6)
  {
LABEL_50:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
    goto LABEL_40;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v28 = a2;
      WORD4(v28) = a3;
      BYTE10(v28) = BYTE2(a3);
      BYTE11(v28) = BYTE3(a3);
      BYTE12(v28) = BYTE4(a3);
      BYTE13(v28) = BYTE5(a3);
      v9 = ppStmt[0];
      LODWORD(a2) = BYTE6(a3);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v28;
        goto LABEL_39;
      }

LABEL_43:
      v26 = v9;
      swift_once();
      v9 = v26;
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    goto LABEL_32;
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v15 = __DataStorage._offset.getter();
    if (__OFSUB__(v12, v15))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v14 += v12 - v15;
  }

  v16 = __OFSUB__(v13, v12);
  v17 = v13 - v12;
  if (v16)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v7 = MEMORY[0x2667557A0]();
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  if (v14)
  {
    a2 = v18;
  }

  else
  {
    a2 = 0;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_47;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_21:
  if (a2 >> 32 < a2)
  {
    __break(1u);
LABEL_45:
    v27 = v7;
    swift_once();
    v7 = v27;
LABEL_33:
    if (!sqlite3_bind_blob(v7, 1, &v28, 0, SQLITE_TRANSIENT))
    {
      goto LABEL_34;
    }

LABEL_40:
    *&v28 = 0x726F7272456C7173;
    *(&v28 + 1) = 0xE90000000000003ALL;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v21);

    v22 = v28;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = v22;
    result = swift_willThrow();
    goto LABEL_41;
  }

  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v19 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v19))
    {
      v14 += a2 - v19;
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_25:
  v9 = MEMORY[0x2667557A0]();
  if (v9 >= (a2 >> 32) - a2)
  {
    a2 = (a2 >> 32) - a2;
  }

  else
  {
    a2 = v9;
  }

  if (v14)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (a2 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_32:
      *(&v28 + 6) = 0;
      *&v28 = 0;
      v7 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(a2) = 0;
  }

LABEL_36:
  v9 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v25 = ppStmt[0];
    swift_once();
    v9 = v25;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v14;
LABEL_39:
  if (sqlite3_bind_blob(v9, 1, v11, a2, v10))
  {
    goto LABEL_40;
  }

LABEL_34:
  result = ppStmt[0];
LABEL_41:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance KeyPackageQuery())@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static KeyPackageQuery.converter;
  v0 = qword_280016958;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error);
}

sqlite3_stmt *specialized static KeyPackageModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Key_Package_Table (\n    client_id BLOB NOT NULL PRIMARY KEY,\n    key_package BLOB NOT NULL\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static KeyPackageModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Key_Package_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_265312930()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)@<X0>(uint64_t *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
    a1[2] = v8;
    a1[3] = v9;
  }

  return result;
}

uint64_t KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v16 = a2[3];
  v17 = a2[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v19 = specialized KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(v15, v18, a3, a4, a5, a6, a7, a8, a9, a10, v21, v13, v16, v14, v17);
  outlined consume of Data?(a9, a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

unint64_t KDSRegistrationStateMachine.RegistrationState.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7473696765726564;
    v6 = 0x73736563637573;
    if (a1 != 8)
    {
      v6 = 0x64656C696166;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746E656449746567;
    if (a1 != 5)
    {
      v7 = 0x7265747369676572;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x676E6974696177;
    v2 = 0xD000000000000012;
    v3 = 0x6E65696C43746567;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7964616572;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized KDSRegistrationStateMachine.RegistrationState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationF0O21GetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOs9CodingKeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys(uint64_t a1)
{
  ClientIDCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys();

  return MEMORY[0x2821FE718](a1, ClientIDCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys(uint64_t a1)
{
  ClientIDCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys();

  return MEMORY[0x2821FE720](a1, ClientIDCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys(uint64_t a1)
{
  IdentityCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys();

  return MEMORY[0x2821FE718](a1, IdentityCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys(uint64_t a1)
{
  IdentityCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys();

  return MEMORY[0x2821FE720](a1, IdentityCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys(uint64_t a1)
{
  PhoneAuthInfoCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys();

  return MEMORY[0x2821FE718](a1, PhoneAuthInfoCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys(uint64_t a1)
{
  PhoneAuthInfoCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys();

  return MEMORY[0x2821FE720](a1, PhoneAuthInfoCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys(uint64_t a1)
{
  PhoneNumberInfoCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys();

  return MEMORY[0x2821FE718](a1, PhoneNumberInfoCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys(uint64_t a1)
{
  PhoneNumberInfoCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys();

  return MEMORY[0x2821FE720](a1, PhoneNumberInfoCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys(uint64_t a1)
{
  ready = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys();

  return MEMORY[0x2821FE718](a1, ready);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys(uint64_t a1)
{
  ready = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys();

  return MEMORY[0x2821FE720](a1, ready);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistrationStateMachine.RegistrationState.encode(to:)(void *a1, int a2)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O16FailedCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O16FailedCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3);
  v82 = &v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17SuccessCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17SuccessCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v6);
  v79 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O20DeregisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O20DeregisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = *(v77 + 64);
  MEMORY[0x28223BE20](v9);
  v76 = &v65 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O18RegisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O18RegisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v74 = *(v75 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v65 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v71 = *(v72 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v70 = &v65 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O26GetPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O26GetPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v68 = *(v69 - 8);
  v16 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v65 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v89 = *(v66 - 8);
  v18 = *(v89 + 64);
  MEMORY[0x28223BE20](v66);
  v88 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O28GetPhoneNumberInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O28GetPhoneNumberInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v21 = *(v20 - 8);
  v86 = v20;
  v87 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O15ReadyCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O15ReadyCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v65 = *(v25 - 8);
  v26 = *(v65 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v65 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17WaitingCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17WaitingCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v85 = *(v29 - 8);
  v30 = *(v85 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v65 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v34 = *(v33 - 8);
  v92 = v33;
  v93 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v65 - v36;
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys();
  v91 = v37;
  v39 = v90;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v39 <= 0x15u)
  {
    v80 = v25;
    v81 = v29;
    v46 = v87;
    v45 = v88;
    v48 = v85;
    v47 = v86;
    v49 = v89;
    if (v39 > 0x13u)
    {
      if (v39 != 20)
      {
        if (v39 != 21)
        {
          goto LABEL_28;
        }

        v97 = 3;
        lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys();
        v53 = v45;
        v42 = v91;
        v41 = v92;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v49 + 8))(v53, v66);
        return (*(v93 + 8))(v42, v41);
      }

      v96 = 2;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys();
      v51 = v91;
      v52 = v92;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v46 + 8))(v24, v47);
    }

    else
    {
      if (v39 == 18)
      {
        v94 = 0;
        lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys();
        v42 = v91;
        v41 = v92;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v48 + 8))(v32, v81);
        return (*(v93 + 8))(v42, v41);
      }

      if (v39 != 19)
      {
        goto LABEL_28;
      }

      v95 = 1;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys();
      v50 = v28;
      v51 = v91;
      v52 = v92;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v65 + 8))(v50, v80);
    }

    return (*(v93 + 8))(v51, v52);
  }

  if (v39 <= 0x17u)
  {
    if (v39 == 22)
    {
      v98 = 4;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys();
      v60 = v67;
      v42 = v91;
      v41 = v92;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = *(v68 + 8);
      v56 = v60;
      v57 = &v105;
    }

    else
    {
      if (v39 != 23)
      {
        goto LABEL_28;
      }

      v99 = 5;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys();
      v54 = v70;
      v42 = v91;
      v41 = v92;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = *(v71 + 8);
      v56 = v54;
      v57 = &v106;
    }

    v43 = *(v57 - 32);
LABEL_25:
    v55(v56, v43);
    return (*(v93 + 8))(v42, v41);
  }

  if (v39 != 24)
  {
    if (v39 == 25)
    {
      v101 = 7;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys();
      v40 = v76;
      v42 = v91;
      v41 = v92;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = v77;
      v43 = v78;
      goto LABEL_24;
    }

    if (v39 == 26)
    {
      v102 = 8;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys();
      v40 = v79;
      v42 = v91;
      v41 = v92;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = v80;
      v43 = v81;
LABEL_24:
      v55 = *(v44 + 8);
      v56 = v40;
      goto LABEL_25;
    }

LABEL_28:
    v104 = 9;
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys();
    v61 = v82;
    v63 = v91;
    v62 = v92;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v103 = v39;
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    v64 = v84;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v83 + 8))(v61, v64);
    return (*(v93 + 8))(v63, v62);
  }

  v100 = 6;
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys();
  v59 = v73;
  v42 = v91;
  v41 = v92;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v74 + 8))(v59, v75);
  return (*(v93 + 8))(v42, v41);
}

unint64_t KDSRegistrationStateMachine.StateMachineError.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6F5464656C696166;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
    case 9:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x685064656C696166;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 8:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x43676E697373696DLL;
      break;
    case 12:
      result = 0x54676E697373696DLL;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance KDSRegistrationStateMachine.RegistrationState@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized KDSRegistrationStateMachine.RegistrationState.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized KDSRegistrationStateMachine.StateMachineError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys(uint64_t a1)
{
  ClientIDCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys();

  return MEMORY[0x2821FE718](a1, ClientIDCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys(uint64_t a1)
{
  ClientIDCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys();

  return MEMORY[0x2821FE720](a1, ClientIDCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys(uint64_t a1)
{
  IdentityCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys();

  return MEMORY[0x2821FE718](a1, IdentityCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys(uint64_t a1)
{
  IdentityCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys();

  return MEMORY[0x2821FE720](a1, IdentityCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys(uint64_t a1)
{
  PhoneNumberCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys();

  return MEMORY[0x2821FE718](a1, PhoneNumberCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys(uint64_t a1)
{
  PhoneNumberCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys();

  return MEMORY[0x2821FE720](a1, PhoneNumberCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys(uint64_t a1)
{
  HeartbeatIntervalCoding = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys();

  return MEMORY[0x2821FE718](a1, HeartbeatIntervalCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys(uint64_t a1)
{
  HeartbeatIntervalCoding = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys();

  return MEMORY[0x2821FE720](a1, HeartbeatIntervalCoding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistrationStateMachine.StateMachineError.encode(to:)(void *a1, uint64_t a2)
{
  v127 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO37MissingServerVendedClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO37MissingServerVendedClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v125 = *(v3 - 8);
  v126 = v3;
  v4 = *(v125 + 64);
  MEMORY[0x28223BE20](v3);
  v124 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingNextHeartbeatIntervalCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingNextHeartbeatIntervalCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v122 = *(v6 - 8);
  v123 = v6;
  v7 = *(v122 + 64);
  MEMORY[0x28223BE20](v6);
  v121 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27MissingKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27MissingKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v119 = *(v9 - 8);
  v120 = v9;
  v10 = *(v119 + 64);
  MEMORY[0x28223BE20](v9);
  v118 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingPhoneNumberCredentialCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingPhoneNumberCredentialCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v116 = *(v12 - 8);
  v117 = v12;
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v12);
  v115 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO33MissingResponseIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO33MissingResponseIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v113 = *(v15 - 8);
  v114 = v15;
  v16 = *(v113 + 64);
  MEMORY[0x28223BE20](v15);
  v112 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO23MissingTelURICodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO23MissingTelURICodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v110 = *(v18 - 8);
  v111 = v18;
  v19 = *(v110 + 64);
  MEMORY[0x28223BE20](v18);
  v109 = &v76 - v20;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO20MissingCSRCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO20MissingCSRCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v107 = *(v108 - 8);
  v21 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v76 - v22;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO32MissingParticipantInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO32MissingParticipantInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v104 = *(v105 - 8);
  v23 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v76 - v24;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30MissingPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30MissingPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v101 = *(v102 - 8);
  v25 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v76 - v26;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO019InvalidURISupportedI10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO019InvalidURISupportedI10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v98 = *(v99 - 8);
  v27 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v76 - v28;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v95 = *(v96 - 8);
  v29 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v76 - v30;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO34FailedRegisterKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO34FailedRegisterKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v92 = *(v93 - 8);
  v31 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v76 - v32;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v89 = *(v90 - 8);
  v33 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v76 - v34;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO25FailedPhoneAuthCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO25FailedPhoneAuthCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v86 = *(v87 - 8);
  v35 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v76 - v36;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30FailedGetPhoneNumberCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30FailedGetPhoneNumberCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v83 = *(v84 - 8);
  v37 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v76 - v38;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO39InvalidClientUniqueIdentifierCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO39InvalidClientUniqueIdentifierCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v80 = *(v81 - 8);
  v39 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v76 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO28MissingSimUniqueIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO28MissingSimUniqueIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v78 = *(v41 - 8);
  v42 = *(v78 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v76 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO22FailedToLoadCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO22FailedToLoadCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v77 = *(v45 - 8);
  v46 = *(v77 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v76 - v47;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v49 = *(v129 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v129);
  v52 = &v76 - v51;
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys();
  v128 = v52;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v54 = (v49 + 8);
  switch(v127)
  {
    case 1:
      v131 = 1;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys();
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v78 + 8))(v44, v41);
      goto LABEL_22;
    case 2:
      v131 = 2;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys();
      v69 = v79;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = *(v80 + 8);
      v65 = v69;
      v66 = &v113;
      goto LABEL_21;
    case 3:
      v131 = 3;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys();
      v70 = v82;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = *(v83 + 8);
      v65 = v70;
      v66 = &v116;
      goto LABEL_21;
    case 4:
      v131 = 4;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys();
      v67 = v85;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = *(v86 + 8);
      v65 = v67;
      v66 = &v119;
      goto LABEL_21;
    case 5:
      v131 = 5;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys();
      v72 = v88;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = *(v89 + 8);
      v65 = v72;
      v66 = &v122;
      goto LABEL_21;
    case 6:
      v131 = 6;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys();
      v73 = v91;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = *(v92 + 8);
      v65 = v73;
      v66 = &v125;
      goto LABEL_21;
    case 7:
      v131 = 7;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys();
      v71 = v94;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = *(v95 + 8);
      v65 = v71;
      v66 = &v128;
      goto LABEL_21;
    case 8:
      v131 = 8;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys();
      v75 = v97;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = *(v98 + 8);
      v65 = v75;
      v66 = &v130;
      goto LABEL_21;
    case 9:
      v131 = 9;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys();
      v68 = v100;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = *(v101 + 8);
      v65 = v68;
      v66 = &v132;
      goto LABEL_21;
    case 10:
      v131 = 10;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys();
      v74 = v103;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = *(v104 + 8);
      v65 = v74;
      v66 = &v133;
      goto LABEL_21;
    case 11:
      v131 = 11;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys();
      v63 = v106;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = *(v107 + 8);
      v65 = v63;
      v66 = &v134;
LABEL_21:
      v64(v65, *(v66 - 32));
      goto LABEL_22;
    case 12:
      v131 = 12;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys();
      v58 = v109;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v110;
      v61 = v111;
      goto LABEL_17;
    case 13:
      v131 = 13;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys();
      v58 = v112;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v113;
      v61 = v114;
      goto LABEL_17;
    case 14:
      v131 = 14;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys();
      v58 = v115;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v116;
      v61 = v117;
      goto LABEL_17;
    case 15:
      v131 = 15;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys();
      v58 = v118;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v119;
      v61 = v120;
      goto LABEL_17;
    case 16:
      v131 = 16;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys();
      v58 = v121;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v122;
      v61 = v123;
      goto LABEL_17;
    case 17:
      v131 = 17;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys();
      v58 = v124;
      v59 = v128;
      v60 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v125;
      v61 = v126;
LABEL_17:
      (*(v62 + 8))(v58, v61);
LABEL_22:
      result = (*v54)(v59, v60);
      break;
    default:
      v131 = 0;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys();
      v55 = v128;
      v56 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v77 + 8))(v48, v45);
      result = (*v54)(v55, v56);
      break;
  }

  return result;
}

Swift::Int KDSRegistrationStateMachine.StateMachineError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance KDSRegistrationStateMachine.StateMachineError@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized KDSRegistrationStateMachine.StateMachineError.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t KDSRegistrationStateMachine.registrationState.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t KDSRegistrationStateMachine.simUniqueID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t KDSRegistrationStateMachine.simLabelID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t key path setter for KDSRegistrationStateMachine.uriSupportedState : KDSRegistrationStateMachine(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KDSRegistration.URISupportedState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 272))(v7);
}

uint64_t KDSRegistrationStateMachine.uriSupportedState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState;
  swift_beginAccess();
  v4 = type metadata accessor for KDSRegistration.URISupportedState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t KDSRegistrationStateMachine.uriSupportedState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState;
  swift_beginAccess();
  v4 = type metadata accessor for KDSRegistration.URISupportedState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t KDSRegistrationStateMachine.uniqueClientIdentifier.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t key path setter for KDSRegistrationStateMachine.phoneAuthInfo : KDSRegistrationStateMachine(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(a1, &v9 - v6, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  return (*(**a2 + 296))(v7);
}

uint64_t key path setter for KDSRegistrationStateMachine.telURI : KDSRegistrationStateMachine(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(a1, &v9 - v6, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  return (*(**a2 + 368))(v7);
}

uint64_t KDSRegistrationStateMachine.phoneAuthInfo.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v4 + v8, a4, a2, a3);
}

uint64_t KDSRegistrationStateMachine.phoneAuthInfo.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t KDSRegistrationStateMachine.phoneNumberCredentialType.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t KDSRegistrationStateMachine.phoneNumberCredentialType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t KDSRegistrationStateMachine.phoneNumberCredential.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t KDSRegistrationStateMachine.phoneNumberCredential.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t key path setter for KDSRegistrationStateMachine.keyPackage : KDSRegistrationStateMachine(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(a1, &v9 - v6, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  return (*(**a2 + 464))(v7);
}

uint64_t KDSRegistrationStateMachine.nextHeartbeatInterval.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t KDSRegistrationStateMachine.nextHeartbeatInterval.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t KDSRegistrationStateMachine.participantInfo.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t KDSRegistrationStateMachine.participantInfo.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return outlined consume of Data?(v7, v8);
}

uint64_t KDSRegistrationStateMachine.heartbeatTransaction.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t KDSRegistrationStateMachine.heartbeatTransaction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v31 = a4;
  v34 = a7;
  v35 = a8;
  v32 = a5;
  v33 = a6;
  v29 = a3;
  v13 = a1[3];
  v12 = a1[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v20 = a2[3];
  v19 = a2[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a2, v20);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(v17, v24, v29, v31, v32, v33, v34, v35, a9, a10, v30, v13, v20, v12, v19);
  outlined consume of Data?(a9, a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v26;
}

uint64_t KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, unint64_t a21)
{
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_mutable_project_boxed_opaque_existential_1(a1, v23);
  v26 = a2[3];
  v27 = a2[4];
  v28 = __swift_mutable_project_boxed_opaque_existential_1(a2, v26);
  *&v31 = a10;
  *(&v31 + 1) = a13;
  v29 = specialized KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(v25, v28, a3, a4, a5, a6, a7, a8, a9, v31, a14, a17, a18, a19 & 1, a20, a21, v23, v26, v24, v27);
  outlined consume of Data?(a20, a21);
  outlined consume of Data?(a15, a16);
  outlined consume of Data?(a13, a14);
  outlined consume of Data?(a11, a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v29;
}

uint64_t KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, unint64_t a22)
{
  v51 = a3;
  v54 = a6;
  v55 = a7;
  v52 = a4;
  v53 = a5;
  v57 = a16;
  v58 = a8;
  v56 = a17;
  v49 = a9;
  v59 = a12;
  v60 = a11;
  v47 = a13;
  v48 = a10;
  v45 = a18;
  v46 = a15;
  v42 = a20;
  v24 = a1[3];
  v43 = a1[4];
  v44 = a19;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(a1, v24);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v41[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v29 + 16))(v28);
  v30 = a2[3];
  v31 = a2[4];
  v32 = __swift_mutable_project_boxed_opaque_existential_1(a2, v30);
  v33 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v41[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v36 + 16))(v35);
  v40 = v24;
  v37 = v47;
  v38 = specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(v28, v35, v51, v52, v53, v54, v55, v58, v49, v48, v47, a14, v46, v45, v44, v42 & 1, a21, a22, v50, v40, v30, v43, v31);
  outlined consume of Data?(a21, a22);
  outlined consume of Data?(v57, v56);
  outlined consume of Data?(v37, a14);
  outlined consume of Data?(v60, v59);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v38;
}

uint64_t KDSRegistrationStateMachine.updateURISupportedState(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for KDSRegistration.URISupportedState();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for RegistrationActor();
  v2[12] = static RegistrationActor.shared.getter();
  v2[13] = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.updateURISupportedState(_:), v8, v7);
}

uint64_t KDSRegistrationStateMachine.updateURISupportedState(_:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[2];
  v6 = v0[3];
  v8 = (*v6 + 264);
  v9 = *v8;
  (*v8)();
  v36 = *(v5 + 16);
  v36(v2, v7, v4);
  v10 = (*(*v6 + 272))(v2);
  (v9)(v10);
  v11 = *(v5 + 88);
  v12 = v11(v3, v4);
  if (v12 == *MEMORY[0x277D4CA28])
  {
    v13 = v0[12];

    v14 = *MEMORY[0x277D4CA30];
    goto LABEL_3;
  }

  v14 = *MEMORY[0x277D4CA30];
  if (v12 == *MEMORY[0x277D4CA30])
  {
    v19 = v0[12];

LABEL_7:
    v20 = v0[13];
    v22 = v0[10];
    v21 = v0[11];
    v23 = v0[8];
    v24 = v0[9];
    v25 = v0[6];
    v37 = v0[7];
    v26 = v0[4];
    v27 = v0[5];
    v28 = v0[3];
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);

    v30 = static RegistrationActor.shared.getter();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v20;
    v31[4] = v28;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v26, &async function pointer to partial apply for closure #1 in KDSRegistrationStateMachine.rerun(), v31);

    (*(v25 + 8))(v22, v27);

    v32 = v0[1];

    return v32();
  }

  if (v12 == *MEMORY[0x277D4CA20])
  {
    v34 = v0[12];

LABEL_3:
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];
    v36(v15, v0[10], v17);
    v18 = v11(v15, v17);
    (*(v16 + 8))(v15, v17);
    if (v18 == v14)
    {
      (*(*v0[3] + 248))(25);
    }

    goto LABEL_7;
  }

  v35 = v0[5];

  return MEMORY[0x2821FDEB8](v35, v35);
}

uint64_t KDSRegistrationStateMachine.heartbeat(transaction:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for RegistrationActor();
  v2[6] = static RegistrationActor.shared.getter();
  v2[7] = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.heartbeat(transaction:), v5, v4);
}

uint64_t KDSRegistrationStateMachine.heartbeat(transaction:)()
{
  if ((*(**(v0 + 24) + 240))() == 26)
  {
    v1 = *(v0 + 16);
    v2 = *(**(v0 + 24) + 536);
    v3 = swift_unknownObjectRetain();
    v2(v3);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = KDSRegistrationStateMachine.heartbeat(transaction:);
    v5 = *(v0 + 24);

    return KDSRegistrationStateMachine.needsCertRefresh()();
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 32);

    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);

  v7 = *v6 + 248;
  if (v1)
  {
    v8 = 22;
  }

  else
  {
    v8 = 24;
  }

  (*(*v6 + 248))(v8);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);

  v10 = static RegistrationActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v3;
  v11[4] = v6;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v11);
  v12 = *(v0 + 32);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t KDSRegistrationStateMachine.heartbeat(transaction:)(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.heartbeat(transaction:), v5, v4);
}

uint64_t closure #1 in KDSRegistrationStateMachine.rerun()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = type metadata accessor for RegistrationActor();
  v4[3] = static RegistrationActor.shared.getter();
  v9 = (*a4 + 592);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = closure #1 in KDSRegistrationStateMachine.rerun();

  return v10();
}

uint64_t closure #1 in KDSRegistrationStateMachine.rerun()()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = closure #1 in KDSRegistrationStateMachine.rerun();
  }

  else
  {
    v8 = closure #1 in KDSRegistrationStateMachine.rerun();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t KDSRegistrationStateMachine.run()()
{
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  IsRegisteredResult = type metadata accessor for KDSRegistration.IsRegisteredResult();
  v1[8] = IsRegisteredResult;
  v6 = *(IsRegisteredResult - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = type metadata accessor for KDSRegistration.URISupportedState();
  v1[14] = v9;
  v10 = *(v9 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for RegistrationActor();
  v1[19] = static RegistrationActor.shared.getter();
  v1[20] = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v13;
  v1[22] = v12;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.run(), v13, v12);
}

{
  v178 = v0;
  v1 = *(v0 + 32);
  *(v0 + 184) = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v176 = v0;
    v177 = swift_slowAlloc();
    v6 = v177;
    *v5 = 136315138;
    *(v176 + 403) = (*(*v4 + 240))();
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v177);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_26524C000, v2, v3, "State Machine run called. Current State: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v10 = v6;
    v0 = v176;
    MEMORY[0x2667577B0](v10, -1, -1);
    MEMORY[0x2667577B0](v5, -1, -1);
  }

  else
  {
    v4 = *(v0 + 32);
  }

  *(v0 + 192) = v4;
  v11 = (*(**(v0 + 32) + 240))();
  if (v11 <= 0x15u)
  {
    if (v11 > 0x13u)
    {
      if (v11 == 20)
      {
        v80 = *(v0 + 128);
        v79 = *(v0 + 136);
        v81 = *(v0 + 112);
        v82 = *(v0 + 120);
        (*(**(v0 + 32) + 264))();
        (*(v82 + 104))(v80, *MEMORY[0x277D4CA30], v81);
        v83 = static KDSRegistration.URISupportedState.== infix(_:_:)();
        v84 = *(v82 + 8);
        v84(v80, v81);
        v84(v79, v81);
        if (v83)
        {
          v85 = swift_task_alloc();
          *(v0 + 200) = v85;
          *v85 = v0;
          v85[1] = KDSRegistrationStateMachine.run();
          v86 = *(v0 + 32);

          return KDSRegistrationStateMachine.obtainPhoneNumberInfo()();
        }

        v142 = *(v0 + 152);
        v143 = *(v0 + 160);
        v144 = *(v0 + 144);
        v40 = *(v0 + 104);
        v145 = *(v0 + 32);

        (*(*v145 + 248))(18);
        v146 = type metadata accessor for TaskPriority();
        (*(*(v146 - 8) + 56))(v40, 1, 1, v146);

        v147 = static RegistrationActor.shared.getter();
        v44 = swift_allocObject();
        v44[2] = v147;
        v44[3] = v143;
        v44[4] = v145;
        v45 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
      }

      else
      {
        if (v11 != 21)
        {
          goto LABEL_53;
        }

        v47 = *(v0 + 128);
        v46 = *(v0 + 136);
        v48 = *(v0 + 112);
        v49 = *(v0 + 120);
        (*(**(v0 + 32) + 264))();
        (*(v49 + 104))(v47, *MEMORY[0x277D4CA30], v48);
        v50 = static KDSRegistration.URISupportedState.== infix(_:_:)();
        v51 = *(v49 + 8);
        v51(v47, v48);
        v51(v46, v48);
        if (v50)
        {
          v52 = swift_task_alloc();
          *(v0 + 216) = v52;
          *v52 = v0;
          v52[1] = KDSRegistrationStateMachine.run();
          v53 = *(v0 + 32);

          return KDSRegistrationStateMachine.obtainKDSVendedClientID()();
        }

        v130 = *(v0 + 152);
        v131 = *(v0 + 160);
        v132 = *(v0 + 144);
        v40 = *(v0 + 104);
        v133 = *(v0 + 32);

        (*(*v133 + 248))(18);
        v134 = type metadata accessor for TaskPriority();
        (*(*(v134 - 8) + 56))(v40, 1, 1, v134);

        v135 = static RegistrationActor.shared.getter();
        v44 = swift_allocObject();
        v44[2] = v135;
        v44[3] = v131;
        v44[4] = v133;
        v45 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
      }
    }

    else
    {
      if (v11 == 18)
      {
        v63 = *(v0 + 152);
        v65 = *(v0 + 128);
        v64 = *(v0 + 136);
        v66 = *(v0 + 112);
        v67 = *(v0 + 120);
        v68 = *(v0 + 32);

        (*(*v68 + 264))(v69);
        (*(v67 + 104))(v65, *MEMORY[0x277D4CA30], v66);
        LOBYTE(v68) = static KDSRegistration.URISupportedState.== infix(_:_:)();
        v70 = *(v67 + 8);
        v70(v65, v66);
        v70(v64, v66);
        if ((v68 & 1) == 0)
        {
LABEL_70:
          v167 = *(v0 + 128);
          v166 = *(v0 + 136);
          v169 = *(v0 + 96);
          v168 = *(v0 + 104);
          v171 = *(v0 + 80);
          v170 = *(v0 + 88);
          v173 = *(v0 + 48);
          v172 = *(v0 + 56);
          v174 = *(v0 + 40);

          v175 = *(v0 + 8);

          return v175();
        }

        (*(**(v0 + 32) + 248))(19);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_26524C000, v71, v72, "State Machine moved from waiting -> ready", v73, 2u);
          MEMORY[0x2667577B0](v73, -1, -1);
        }

        v74 = *(v0 + 160);
        v75 = *(v0 + 144);
        v40 = *(v0 + 104);
        v76 = *(v0 + 32);

        v77 = type metadata accessor for TaskPriority();
        (*(*(v77 - 8) + 56))(v40, 1, 1, v77);

        v78 = static RegistrationActor.shared.getter();
        v44 = swift_allocObject();
        v44[2] = v78;
        v44[3] = v74;
        v44[4] = v76;
        v45 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
        goto LABEL_68;
      }

      if (v11 != 19)
      {
        goto LABEL_53;
      }

      v24 = *(v0 + 152);
      v26 = *(v0 + 128);
      v25 = *(v0 + 136);
      v27 = *(v0 + 112);
      v28 = *(v0 + 120);
      v29 = *(v0 + 32);

      (*(*v29 + 264))(v30);
      (*(v28 + 104))(v26, *MEMORY[0x277D4CA30], v27);
      v31 = static KDSRegistration.URISupportedState.== infix(_:_:)();
      v32 = *(v28 + 8);
      v32(v26, v27);
      v32(v25, v27);
      v33 = *(*v29 + 248);
      if ((v31 & 1) == 0)
      {
        v122 = *(v0 + 160);
        v123 = *(v0 + 144);
        v124 = *(v0 + 104);
        v125 = *(v0 + 32);
        v33(18);
        v126 = type metadata accessor for TaskPriority();
        (*(*(v126 - 8) + 56))(v124, 1, 1, v126);

        v127 = static RegistrationActor.shared.getter();
        v44 = swift_allocObject();
        v44[2] = v127;
        v44[3] = v122;
        v44[4] = v125;
        v128 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
        v129 = v124;
LABEL_69:
        _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v129, v128, v44);

        goto LABEL_70;
      }

      v34 = *(v0 + 32);
      v33(20);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_26524C000, v35, v36, "State Machine moved from ready -> getPhoneNumberInfo", v37, 2u);
        MEMORY[0x2667577B0](v37, -1, -1);
      }

      v38 = *(v0 + 160);
      v39 = *(v0 + 144);
      v40 = *(v0 + 104);
      v41 = *(v0 + 32);

      v42 = type metadata accessor for TaskPriority();
      (*(*(v42 - 8) + 56))(v40, 1, 1, v42);

      v43 = static RegistrationActor.shared.getter();
      v44 = swift_allocObject();
      v44[2] = v43;
      v44[3] = v38;
      v44[4] = v41;
      v45 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
    }

LABEL_68:
    v128 = v45;
    v129 = v40;
    goto LABEL_69;
  }

  if (v11 <= 0x17u)
  {
    if (v11 == 22)
    {
      v96 = *(v0 + 128);
      v95 = *(v0 + 136);
      v97 = *(v0 + 112);
      v98 = *(v0 + 120);
      (*(**(v0 + 32) + 264))();
      (*(v98 + 104))(v96, *MEMORY[0x277D4CA30], v97);
      v99 = static KDSRegistration.URISupportedState.== infix(_:_:)();
      v100 = *(v98 + 8);
      v100(v96, v97);
      v100(v95, v97);
      if (v99)
      {
        v101 = swift_task_alloc();
        *(v0 + 232) = v101;
        *v101 = v0;
        v101[1] = KDSRegistrationStateMachine.run();
        v102 = *(v0 + 32);

        return KDSRegistrationStateMachine.obtainPhoneAuthInfo()();
      }

      v154 = *(v0 + 152);
      v155 = *(v0 + 160);
      v156 = *(v0 + 144);
      v40 = *(v0 + 104);
      v157 = *(v0 + 32);

      (*(*v157 + 248))(18);
      v158 = type metadata accessor for TaskPriority();
      (*(*(v158 - 8) + 56))(v40, 1, 1, v158);

      v159 = static RegistrationActor.shared.getter();
      v44 = swift_allocObject();
      v44[2] = v159;
      v44[3] = v155;
      v44[4] = v157;
      v45 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
    }

    else
    {
      if (v11 != 23)
      {
        goto LABEL_53;
      }

      v56 = *(v0 + 128);
      v55 = *(v0 + 136);
      v57 = *(v0 + 112);
      v58 = *(v0 + 120);
      (*(**(v0 + 32) + 264))();
      (*(v58 + 104))(v56, *MEMORY[0x277D4CA30], v57);
      v59 = static KDSRegistration.URISupportedState.== infix(_:_:)();
      v60 = *(v58 + 8);
      v60(v56, v57);
      v60(v55, v57);
      if (v59)
      {
        v61 = swift_task_alloc();
        *(v0 + 248) = v61;
        *v61 = v0;
        v61[1] = KDSRegistrationStateMachine.run();
        v62 = *(v0 + 32);

        return KDSRegistrationStateMachine.getIdentity()();
      }

      v136 = *(v0 + 152);
      v137 = *(v0 + 160);
      v138 = *(v0 + 144);
      v40 = *(v0 + 104);
      v139 = *(v0 + 32);

      (*(*v139 + 248))(18);
      v140 = type metadata accessor for TaskPriority();
      (*(*(v140 - 8) + 56))(v40, 1, 1, v140);

      v141 = static RegistrationActor.shared.getter();
      v44 = swift_allocObject();
      v44[2] = v141;
      v44[3] = v137;
      v44[4] = v139;
      v45 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
    }

    goto LABEL_68;
  }

  if (v11 == 24)
  {
    v88 = *(v0 + 128);
    v87 = *(v0 + 136);
    v89 = *(v0 + 112);
    v90 = *(v0 + 120);
    (*(**(v0 + 32) + 264))();
    (*(v90 + 104))(v88, *MEMORY[0x277D4CA30], v89);
    v91 = static KDSRegistration.URISupportedState.== infix(_:_:)();
    v92 = *(v90 + 8);
    v92(v88, v89);
    v92(v87, v89);
    if (v91)
    {
      v93 = swift_task_alloc();
      *(v0 + 264) = v93;
      *v93 = v0;
      v93[1] = KDSRegistrationStateMachine.run();
      v94 = *(v0 + 32);

      return KDSRegistrationStateMachine.register()();
    }

    v148 = *(v0 + 152);
    v149 = *(v0 + 160);
    v150 = *(v0 + 144);
    v40 = *(v0 + 104);
    v151 = *(v0 + 32);

    (*(*v151 + 248))(18);
    v152 = type metadata accessor for TaskPriority();
    (*(*(v152 - 8) + 56))(v40, 1, 1, v152);

    v153 = static RegistrationActor.shared.getter();
    v44 = swift_allocObject();
    v44[2] = v153;
    v44[3] = v149;
    v44[4] = v151;
    v45 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
    goto LABEL_68;
  }

  if (v11 != 25)
  {
    if (v11 == 26)
    {
      v13 = *(v0 + 128);
      v12 = *(v0 + 136);
      v14 = *(v0 + 112);
      v15 = *(v0 + 120);
      (*(**(v0 + 32) + 264))();
      (*(v15 + 104))(v13, *MEMORY[0x277D4CA30], v14);
      v16 = static KDSRegistration.URISupportedState.== infix(_:_:)();
      v17 = *(v15 + 8);
      v17(v13, v14);
      v17(v12, v14);
      if (v16)
      {
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_26524C000, v18, v19, "Success.", v20, 2u);
          MEMORY[0x2667577B0](v20, -1, -1);
        }

        v21 = *(v0 + 96);

        KDSRegistration.IsRegisteredResult.init(isRegistered:)();
        v22 = swift_task_alloc();
        *(v0 + 320) = v22;
        *v22 = v0;
        v22[1] = KDSRegistrationStateMachine.run();
        v23 = *(v0 + 96);
LABEL_58:
        v121 = *(v0 + 32);

        return KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:)(v23);
      }

      v160 = *(v0 + 152);
      v161 = *(v0 + 160);
      v162 = *(v0 + 144);
      v40 = *(v0 + 104);
      v163 = *(v0 + 32);

      (*(*v163 + 248))(18);
      v164 = type metadata accessor for TaskPriority();
      (*(*(v164 - 8) + 56))(v40, 1, 1, v164);

      v165 = static RegistrationActor.shared.getter();
      v44 = swift_allocObject();
      v44[2] = v165;
      v44[3] = v161;
      v44[4] = v163;
      v45 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
      goto LABEL_68;
    }

LABEL_53:
    v108 = v11;
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v177 = v112;
      *v111 = 136315138;
      *(v0 + 400) = v108;
      v113 = String.init<A>(describing:)();
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, &v177);

      *(v111 + 4) = v115;
      _os_log_impl(&dword_26524C000, v109, v110, "State machine failed with error %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v112);
      MEMORY[0x2667577B0](v112, -1, -1);
      MEMORY[0x2667577B0](v111, -1, -1);
    }

    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_26524C000, v116, v117, "Releasing state machine transaction.", v118, 2u);
      MEMORY[0x2667577B0](v118, -1, -1);
    }

    v119 = *(v0 + 88);

    KDSRegistration.IsRegisteredResult.init(isRegistered:)();
    v120 = swift_task_alloc();
    *(v0 + 336) = v120;
    *v120 = v0;
    v120[1] = KDSRegistrationStateMachine.run();
    v23 = *(v0 + 88);
    goto LABEL_58;
  }

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&dword_26524C000, v103, v104, "Deregistering", v105, 2u);
    MEMORY[0x2667577B0](v105, -1, -1);
  }

  v106 = swift_task_alloc();
  *(v0 + 352) = v106;
  *v106 = v0;
  v106[1] = KDSRegistrationStateMachine.run();
  v107 = *(v0 + 32);

  return KDSRegistrationStateMachine.deregister()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[4];

  (*(*v4 + 248))(21);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26524C000, v5, v6, "State Machine moved from getPhoneNumberInfo -> getClientID", v7, 2u);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  v8 = v0[20];
  v9 = v0[18];
  v10 = v0[13];
  v11 = v0[4];

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);

  v13 = static RegistrationActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v8;
  v14[4] = v11;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v14);

  v16 = v0[16];
  v15 = v0[17];
  v18 = v0[12];
  v17 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  v22 = v0[6];
  v21 = v0[7];
  v23 = v0[5];

  v24 = v0[1];

  return v24();
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[4];

  (*(*v4 + 248))(22);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26524C000, v5, v6, "State Machine moved from getClientID -> getPhoneAuthInfo", v7, 2u);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  v8 = v0[20];
  v9 = v0[18];
  v10 = v0[13];
  v11 = v0[4];

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);

  v13 = static RegistrationActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v8;
  v14[4] = v11;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v14);

  v16 = v0[16];
  v15 = v0[17];
  v18 = v0[12];
  v17 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  v22 = v0[6];
  v21 = v0[7];
  v23 = v0[5];

  v24 = v0[1];

  return v24();
}

{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[4];

  (*(*v4 + 248))(23);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26524C000, v5, v6, "State Machine moved from getPhoneNumberInfo -> getIdentity", v7, 2u);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  v8 = v0[20];
  v9 = v0[18];
  v10 = v0[13];
  v11 = v0[4];

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);

  v13 = static RegistrationActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v8;
  v14[4] = v11;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v14);

  v16 = v0[16];
  v15 = v0[17];
  v18 = v0[12];
  v17 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  v22 = v0[6];
  v21 = v0[7];
  v23 = v0[5];

  v24 = v0[1];

  return v24();
}

{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[4];

  (*(*v4 + 248))(24);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26524C000, v5, v6, "State Machine moved from getIdentity -> register", v7, 2u);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  v8 = v0[20];
  v9 = v0[18];
  v10 = v0[13];
  v11 = v0[4];

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);

  v13 = static RegistrationActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v8;
  v14[4] = v11;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v14);

  v16 = v0[16];
  v15 = v0[17];
  v18 = v0[12];
  v17 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  v22 = v0[6];
  v21 = v0[7];
  v23 = v0[5];

  v24 = v0[1];

  return v24();
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  (*(**(v0 + 32) + 248))(26);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26524C000, v3, v4, "State Machine moved from register -> success", v5, 2u);
    MEMORY[0x2667577B0](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 280) = v6;
  *v6 = v0;
  v6[1] = KDSRegistrationStateMachine.run();
  v7 = *(v0 + 32);

  return KDSRegistrationStateMachine.saveState()();
}

{
  v2 = *(*v1 + 280);
  v3 = *v1;
  v3[36] = v0;

  if (v0)
  {
    v4 = v3[21];
    v5 = v3[22];

    return MEMORY[0x2822009F8](KDSRegistrationStateMachine.run(), v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[37] = v6;
    *v6 = v3;
    v6[1] = KDSRegistrationStateMachine.run();
    v7 = v3[4];

    return KDSRegistrationStateMachine.setupHeartbeat()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = (*(v0 + 32) + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = KDSRegistrationStateMachine.run();

  return v8(v2, v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.run(), v4, v3);
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[4];

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);

  v7 = static RegistrationActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = v5;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v8);

  v10 = v0[16];
  v9 = v0[17];
  v12 = v0[12];
  v11 = v0[13];
  v14 = v0[10];
  v13 = v0[11];
  v16 = v0[6];
  v15 = v0[7];
  v17 = v0[5];

  v18 = v0[1];

  return v18();
}

{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 328) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 176);
  v9 = *(v2 + 168);
  if (v0)
  {
    v10 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v10 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  v1 = v0[19];

  v2 = v0[4] + v0[23];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26524C000, v3, v4, "Releasing state machine transaction.", v5, 2u);
    MEMORY[0x2667577B0](v5, -1, -1);
  }

  v6 = v0[24];
  v7 = v0[4];

  (*(*v7 + 536))(0);
  v9 = v0[16];
  v8 = v0[17];
  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];

  v17 = v0[1];

  return v17();
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 344) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 176);
  v9 = *(v2 + 168);
  if (v0)
  {
    v10 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v10 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  v1 = *(v0 + 152);

  v2 = *(v0 + 192);
  (*(**(v0 + 32) + 536))(0);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 40);

  v12 = *(v0 + 8);

  return v12();
}

{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[4] + v0[23];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "Finished deregistration, clearing state.", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[4];

  (*(*v7 + 248))(18);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26524C000, v8, v9, "State Machine moved from deregister -> waiting", v10, 2u);
    MEMORY[0x2667577B0](v10, -1, -1);
  }

  v11 = v0[24];
  v12 = v0[6];
  v13 = v0[7];
  v14 = v0[4];
  v15 = v0[5];

  v16 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  (*(*v14 + 296))(v13);
  (*(*v14 + 320))(0, 0xF000000000000000);
  (*(*v14 + 344))(0, 0xF000000000000000);
  v17 = type metadata accessor for URI();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  (*(*v14 + 368))(v12);
  (*(*v14 + 392))(0, 0);
  v18 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  (*(*v14 + 464))(v15);
  (*(*v14 + 488))(0, 1);
  v19 = swift_task_alloc();
  v0[46] = v19;
  *v19 = v0;
  v19[1] = KDSRegistrationStateMachine.run();
  v20 = v0[4];

  return KDSRegistrationStateMachine.saveState()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[10];
  KDSRegistration.IsRegisteredResult.init(isRegistered:)();
  v2 = swift_task_alloc();
  v0[48] = v2;
  *v2 = v0;
  v2[1] = KDSRegistrationStateMachine.run();
  v3 = v0[10];
  v4 = v0[4];

  return KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:)(v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 392) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 176);
  v9 = *(v2 + 168);
  if (v0)
  {
    v10 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v10 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  v1 = v0[19];

  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[4];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);

  v7 = static RegistrationActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = v5;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v8);

  v10 = v0[16];
  v9 = v0[17];
  v12 = v0[12];
  v11 = v0[13];
  v14 = v0[10];
  v13 = v0[11];
  v16 = v0[6];
  v15 = v0[7];
  v17 = v0[5];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[13];
  v7 = v0[4];

  (*(*v7 + 248))(3);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  v9 = static RegistrationActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v4;
  v10[4] = v7;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v10);

  v12 = v0[16];
  v11 = v0[17];
  v14 = v0[12];
  v13 = v0[13];
  v16 = v0[10];
  v15 = v0[11];
  v18 = v0[6];
  v17 = v0[7];
  v19 = v0[5];

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[13];
  v7 = v0[4];

  (*(*v7 + 248))(7);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  v9 = static RegistrationActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v4;
  v10[4] = v7;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v10);

  v12 = v0[16];
  v11 = v0[17];
  v14 = v0[12];
  v13 = v0[13];
  v16 = v0[10];
  v15 = v0[11];
  v18 = v0[6];
  v17 = v0[7];
  v19 = v0[5];

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[13];
  v7 = v0[4];

  (*(*v7 + 248))(4);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  v9 = static RegistrationActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v4;
  v10[4] = v7;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v10);

  v12 = v0[16];
  v11 = v0[17];
  v14 = v0[12];
  v13 = v0[13];
  v16 = v0[10];
  v15 = v0[11];
  v18 = v0[6];
  v17 = v0[7];
  v19 = v0[5];

  v20 = v0[1];

  return v20();
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 152);

  *(v0 + 24) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 256);
  v6 = *(v0 + 184);
  v7 = *(v0 + 32);
  if (v4)
  {

    v8 = *(v0 + 402);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    if (v8)
    {
      v12 = 21;
    }

    else
    {
      v12 = 5;
    }

    if (v11)
    {
      if (v8)
      {
        v13 = "Server asked us to refresh our client ID";
      }

      else
      {
        v13 = "Server asked us not to retry the request.";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26524C000, v9, v10, v13, v14, 2u);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    v15 = *(v0 + 192);
    v16 = *(v0 + 160);
    v17 = *(v0 + 144);
    v18 = *(v0 + 104);
    v19 = *(v0 + 32);

    (*(*v19 + 248))(v12);
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);

    v21 = static RegistrationActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v16;
    v22[4] = v19;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v18, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v22);
  }

  else
  {

    v23 = v5;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 256);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v26;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_26524C000, v24, v25, "Error in getIdentity %@", v27, 0xCu);
      outlined destroy of MLS.KeyPackageProvider?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    v31 = *(v0 + 256);
    v32 = *(v0 + 192);
    v33 = *(v0 + 160);
    v34 = *(v0 + 144);
    v35 = *(v0 + 104);
    v36 = *(v0 + 32);

    (*(*v36 + 248))(5);
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v35, 1, 1, v37);

    v38 = static RegistrationActor.shared.getter();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = v33;
    v39[4] = v36;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v35, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v39);
  }

  v41 = *(v0 + 128);
  v40 = *(v0 + 136);
  v43 = *(v0 + 96);
  v42 = *(v0 + 104);
  v45 = *(v0 + 80);
  v44 = *(v0 + 88);
  v47 = *(v0 + 48);
  v46 = *(v0 + 56);
  v48 = *(v0 + 40);

  v49 = *(v0 + 8);

  return v49();
}

{
  v1 = *(v0 + 272);
  v2 = *(v0 + 152);

  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 184);
  v6 = *(v0 + 32);
  if (v4)
  {

    v7 = *(v0 + 401);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    if (v7)
    {
      v11 = 21;
    }

    else
    {
      v11 = 5;
    }

    if (v10)
    {
      if (v7)
      {
        v12 = "Server asked us to refresh our client ID";
      }

      else
      {
        v12 = "Server asked us not to retry the request.";
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26524C000, v8, v9, v12, v13, 2u);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    v14 = *(v0 + 192);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);
    v17 = *(v0 + 104);
    v18 = *(v0 + 32);

    (*(*v18 + 248))(v11);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);

    v20 = static RegistrationActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v15;
    v21[4] = v18;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v17, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v21);

    v22 = *(v0 + 16);
  }

  else
  {

    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_26524C000, v24, v25, "Hit an error %@", v26, 0xCu);
      outlined destroy of MLS.KeyPackageProvider?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2667577B0](v27, -1, -1);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    v30 = *(v0 + 192);
    v31 = *(v0 + 32);

    (*(*v31 + 248))(6);
    v22 = v1;
  }

  v33 = *(v0 + 128);
  v32 = *(v0 + 136);
  v35 = *(v0 + 96);
  v34 = *(v0 + 104);
  v37 = *(v0 + 80);
  v36 = *(v0 + 88);
  v39 = *(v0 + 48);
  v38 = *(v0 + 56);
  v40 = *(v0 + 40);

  v41 = *(v0 + 8);

  return v41();
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 152);

  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 184);
  v6 = *(v0 + 32);
  if (v4)
  {

    v7 = *(v0 + 401);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    if (v7)
    {
      v11 = 21;
    }

    else
    {
      v11 = 5;
    }

    if (v10)
    {
      if (v7)
      {
        v12 = "Server asked us to refresh our client ID";
      }

      else
      {
        v12 = "Server asked us not to retry the request.";
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26524C000, v8, v9, v12, v13, 2u);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    v14 = *(v0 + 192);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);
    v17 = *(v0 + 104);
    v18 = *(v0 + 32);

    (*(*v18 + 248))(v11);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);

    v20 = static RegistrationActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v15;
    v21[4] = v18;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v17, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v21);

    v22 = *(v0 + 16);
  }

  else
  {

    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_26524C000, v24, v25, "Hit an error %@", v26, 0xCu);
      outlined destroy of MLS.KeyPackageProvider?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2667577B0](v27, -1, -1);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    v30 = *(v0 + 192);
    v31 = *(v0 + 32);

    (*(*v31 + 248))(6);
    v22 = v1;
  }

  v33 = *(v0 + 128);
  v32 = *(v0 + 136);
  v35 = *(v0 + 96);
  v34 = *(v0 + 104);
  v37 = *(v0 + 80);
  v36 = *(v0 + 88);
  v39 = *(v0 + 48);
  v38 = *(v0 + 56);
  v40 = *(v0 + 40);

  v41 = *(v0 + 8);

  return v41();
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 152);

  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 184);
  v6 = *(v0 + 32);
  if (v4)
  {

    v7 = *(v0 + 401);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    if (v7)
    {
      v11 = 21;
    }

    else
    {
      v11 = 5;
    }

    if (v10)
    {
      if (v7)
      {
        v12 = "Server asked us to refresh our client ID";
      }

      else
      {
        v12 = "Server asked us not to retry the request.";
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26524C000, v8, v9, v12, v13, 2u);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    v14 = *(v0 + 192);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);
    v17 = *(v0 + 104);
    v18 = *(v0 + 32);

    (*(*v18 + 248))(v11);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);

    v20 = static RegistrationActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v15;
    v21[4] = v18;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v17, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v21);

    v22 = *(v0 + 16);
  }

  else
  {

    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_26524C000, v24, v25, "Hit an error %@", v26, 0xCu);
      outlined destroy of MLS.KeyPackageProvider?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2667577B0](v27, -1, -1);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    v30 = *(v0 + 192);
    v31 = *(v0 + 32);

    (*(*v31 + 248))(6);
    v22 = v1;
  }

  v33 = *(v0 + 128);
  v32 = *(v0 + 136);
  v35 = *(v0 + 96);
  v34 = *(v0 + 104);
  v37 = *(v0 + 80);
  v36 = *(v0 + 88);
  v39 = *(v0 + 48);
  v38 = *(v0 + 56);
  v40 = *(v0 + 40);

  v41 = *(v0 + 8);

  return v41();
}

{
  v1 = v0[41];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[4];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[41];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_26524C000, v6, v7, "Error broadcasting successful registration. %@", v10, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v11, -1, -1);
    MEMORY[0x2667577B0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[4] + v0[23];
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26524C000, v15, v16, "Releasing state machine transaction.", v17, 2u);
    MEMORY[0x2667577B0](v17, -1, -1);
  }

  v18 = v0[24];
  v19 = v0[4];

  (*(*v19 + 536))(0);
  v21 = v0[16];
  v20 = v0[17];
  v23 = v0[12];
  v22 = v0[13];
  v25 = v0[10];
  v24 = v0[11];
  v27 = v0[6];
  v26 = v0[7];
  v28 = v0[5];

  v29 = v0[1];

  return v29();
}

{
  v1 = v0[43];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[4];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[43];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_26524C000, v6, v7, "Error broadcasting deregisteration update. %@", v10, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v11, -1, -1);
    MEMORY[0x2667577B0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[24];
  (*(*v0[4] + 536))(0);
  v16 = v0[16];
  v15 = v0[17];
  v18 = v0[12];
  v17 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  v22 = v0[6];
  v21 = v0[7];
  v23 = v0[5];

  v24 = v0[1];

  return v24();
}

{
  v1 = v0[45];
  v2 = v0[23];
  v3 = v0[4];
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[45];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26524C000, v5, v6, "Error deregistering with server. %@", v9, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v10, -1, -1);
    MEMORY[0x2667577B0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[4] + v0[23];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26524C000, v14, v15, "Finished deregistration, clearing state.", v16, 2u);
    MEMORY[0x2667577B0](v16, -1, -1);
  }

  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[4];

  (*(*v19 + 248))(18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26524C000, v20, v21, "State Machine moved from deregister -> waiting", v22, 2u);
    MEMORY[0x2667577B0](v22, -1, -1);
  }

  v23 = v0[24];
  v24 = v0[6];
  v25 = v0[7];
  v26 = v0[4];
  v27 = v0[5];

  v28 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
  (*(*v26 + 296))(v25);
  (*(*v26 + 320))(0, 0xF000000000000000);
  (*(*v26 + 344))(0, 0xF000000000000000);
  v29 = type metadata accessor for URI();
  (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
  (*(*v26 + 368))(v24);
  (*(*v26 + 392))(0, 0);
  v30 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v30 - 8) + 56))(v27, 1, 1, v30);
  (*(*v26 + 464))(v27);
  (*(*v26 + 488))(0, 1);
  v31 = swift_task_alloc();
  v0[46] = v31;
  *v31 = v0;
  v31[1] = KDSRegistrationStateMachine.run();
  v32 = v0[4];

  return KDSRegistrationStateMachine.saveState()();
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  v11 = v0[1];
  v12 = v0[47];

  return v11();
}

{
  v1 = v0[49];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[4];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[49];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_26524C000, v6, v7, "Error broadcasting deregisteration update. %@", v10, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v11, -1, -1);
    MEMORY[0x2667577B0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[20];
  v15 = v0[18];
  v16 = v0[13];
  v17 = v0[4];
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);

  v19 = static RegistrationActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v14;
  v20[4] = v17;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v16, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v20);

  v22 = v0[16];
  v21 = v0[17];
  v24 = v0[12];
  v23 = v0[13];
  v26 = v0[10];
  v25 = v0[11];
  v28 = v0[6];
  v27 = v0[7];
  v29 = v0[5];

  v30 = v0[1];

  return v30();
}