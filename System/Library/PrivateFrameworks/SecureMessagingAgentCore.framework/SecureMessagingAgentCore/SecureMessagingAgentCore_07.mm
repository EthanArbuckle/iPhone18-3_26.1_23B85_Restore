uint64_t MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  Client = type metadata accessor for KDSRegistration.GetClientIDError.ErrorType();
  v5[10] = Client;
  v10 = *(Client - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();
  v16 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v5[17] = v16;
  v17 = *(v16 - 8);
  v5[18] = v17;
  v18 = *(v17 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v19 = *(*(type metadata accessor for RegClientIdentifier() - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v20 = type metadata accessor for URI();
  v5[24] = v20;
  v21 = *(v20 - 8);
  v5[25] = v21;
  v22 = *(v21 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v23 = type metadata accessor for MLS.ClientIdentifier();
  v5[29] = v23;
  v24 = *(v23 - 8);
  v5[30] = v24;
  v25 = *(v24 + 64) + 15;
  v5[31] = swift_task_alloc();
  v26 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[32] = v26;
  v27 = *(v26 - 8);
  v5[33] = v27;
  v28 = *(v27 + 64) + 15;
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.updateClientID(swiftMLSClientID:for:with:), 0, 0);
}

uint64_t MLSDaemon.updateClientID(swiftMLSClientID:for:with:)()
{
  v42 = v0;
  v1 = v0[34];
  v2 = v0[28];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v36 = v3;
  v38 = v0[23];
  v6 = v0[5];
  v8 = v0[3];
  v7 = v0[4];
  (*(v0[30] + 16))(v0[31], v6, v0[29]);
  v9 = *(v5 + 16);
  v0[35] = v9;
  v0[36] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v7, v4);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[37] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v9(v36, v7, v4);
  outlined init with copy of RegClientIdentifier(v6, v38);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v40 = v11;
    v12 = v0[27];
    v14 = v0[24];
    v13 = v0[25];
    v15 = v0[22];
    v37 = v0[23];
    v16 = v0[2];
    v17 = v0[3];
    v18 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v18 = 136315650;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v41);
    *(v18 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v22 = *(v13 + 8);
    v22(v12, v14);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v41);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    outlined init with copy of RegClientIdentifier(v37, v15);
    v24 = MLS.ClientIdentifier.description.getter();
    v26 = v25;
    outlined destroy of RegClientIdentifier(v15);
    outlined destroy of RegClientIdentifier(v37);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v41);

    *(v18 + 24) = v27;
    _os_log_impl(&dword_26524C000, v10, v40, "MLSDaemon updateClientID called { swiftMLSClientID: %s, uri: %s, clientIdentifier: %s }", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v39, -1, -1);
    MEMORY[0x2667577B0](v18, -1, -1);
  }

  else
  {
    v28 = v0[27];
    v29 = v0[24];
    v30 = v0[25];
    v31 = v0[23];

    outlined destroy of RegClientIdentifier(v31);
    v22 = *(v30 + 8);
    v22(v28, v29);
  }

  v0[38] = v22;
  v32 = swift_task_alloc();
  v0[39] = v32;
  *v32 = v0;
  v32[1] = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  v33 = v0[34];
  v34 = v0[6];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v33);
}

{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  else
  {
    v3 = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[6];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[41] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[42] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[43] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.updateClientID(swiftMLSClientID:for:with:), v4, v3);
}

{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[6];

  v0[44] = v3(v5);

  return MEMORY[0x2822009F8](MLSDaemon.updateClientID(swiftMLSClientID:for:with:), 0, 0);
}

{
  v80 = v0;
  if (!*(v0[44] + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[34]), (v2 & 1) == 0))
  {
    v17 = v0[36];
    v18 = v0[35];
    v19 = v0[26];
    v20 = v0[24];
    v21 = v0[21];
    v22 = v0[5];
    log = v0[6];
    v77 = v0[37];
    v24 = v0[3];
    v23 = v0[4];

    v18(v19, v23, v20);
    outlined init with copy of RegClientIdentifier(v22, v21);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[38];
    v29 = v0[25];
    v30 = v0[26];
    v31 = v0[24];
    if (v27)
    {
      v32 = v0[22];
      v71 = v0[21];
      v33 = v0[2];
      v34 = v0[3];
      loga = v25;
      v35 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79[0] = v78;
      *v35 = 136315650;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v79);
      *(v35 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v28(v30, v31);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v79);

      *(v35 + 14) = v39;
      *(v35 + 22) = 2080;
      outlined init with copy of RegClientIdentifier(v71, v32);
      v40 = MLS.ClientIdentifier.description.getter();
      v42 = v41;
      outlined destroy of RegClientIdentifier(v32);
      outlined destroy of RegClientIdentifier(v71);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v79);

      *(v35 + 24) = v43;
      _os_log_impl(&dword_26524C000, loga, v26, "MLSDaemon updateClientID has no clientXPCProxy { swiftMLSClientID: %s, uri: %s, clientIdentifier: %s }", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v78, -1, -1);
      MEMORY[0x2667577B0](v35, -1, -1);
    }

    else
    {
      v44 = v0[21];

      outlined destroy of RegClientIdentifier(v44);
      v28(v30, v31);
    }

    (*(v0[8] + 104))(v0[9], *MEMORY[0x277D4D2B0], v0[7]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    goto LABEL_9;
  }

  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v76 = v0[14];
  v8 = v0[13];
  v10 = v0[2];
  v9 = v0[3];
  (*(v6 + 16))(v4, *(v0[44] + 56) + *(v6 + 72) * v1, v5);

  (*(v6 + 32))(v3, v4, v5);
  UUID.init(uuidString:)();
  if ((*(v7 + 48))(v8, 1, v76) == 1)
  {
    v11 = v0[20];
    v12 = v0[17];
    v13 = v0[18];
    v14 = v0[12];
    v15 = v0[10];
    v16 = v0[11];
    outlined destroy of MLS.KeyPackageProvider?(v0[13], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v16 + 104))(v14, *MEMORY[0x277D4C9A8], v15);
    type metadata accessor for KDSRegistration.GetClientIDError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError, MEMORY[0x277D4C9B0]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v13 + 8))(v11, v12);
LABEL_9:
    v45 = v0[31];
    v47 = v0[27];
    v46 = v0[28];
    v48 = v0[26];
    v50 = v0[22];
    v49 = v0[23];
    v51 = v0[20];
    v52 = v0[21];
    v68 = v0[19];
    v69 = v0[16];
    v70 = v0[13];
    v72 = v0[12];
    logb = v0[9];
    (*(v0[33] + 8))(v0[34], v0[32]);

    v53 = v0[1];

    return v53();
  }

  v55 = v0[34];
  v56 = v0[32];
  v57 = v0[20];
  v58 = v0[16];
  v59 = v0[6];
  (*(v0[15] + 32))(v58, v0[13], v0[14]);
  v60 = *(v59 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister);
  _StringGuts.grow(_:)(17);

  v79[0] = 0x6C43657461647075;
  v79[1] = 0xEF2D4449746E6569;
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  v61 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v61);

  v0[45] = 0xEF2D4449746E6569;
  v62 = swift_task_alloc();
  v0[46] = v62;
  v62[2] = v57;
  v62[3] = v58;
  v62[4] = v59;
  v62[5] = v55;
  v63 = *(MEMORY[0x277D4D240] + 4);
  v64 = swift_task_alloc();
  v0[47] = v64;
  v65 = type metadata accessor for DaemonPersister();
  v66 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister);
  *v64 = v0;
  v64[1] = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  v67 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821ACB80](v66, 0x6C43657461647075, 0xEF2D4449746E6569, &async function pointer to partial apply for closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:), v62, v65, v67, v66);
}

{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v8 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  else
  {
    v5 = *(v2 + 360);
    v6 = *(v2 + 368);

    v4 = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[28];
  v11 = v0[27];
  v12 = v0[26];
  v13 = v0[23];
  v14 = v0[22];
  v6 = v0[20];
  v7 = v0[18];
  v15 = v0[21];
  v16 = v0[19];
  v8 = v0[17];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[9];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v7 + 8))(v6, v8);
  (*(v1 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

{
  v16 = v0[40];
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v11 = v0[19];
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[9];
  (*(v0[33] + 8))(v0[34], v0[32]);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v24 = v0[48];
  v9 = v0[31];
  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[26];
  v14 = v0[22];
  v13 = v0[23];
  v16 = v0[20];
  v15 = v0[21];
  v19 = v0[19];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[12];
  v23 = v0[9];
  (*(v0[33] + 8))(v0[34], v0[32]);

  v17 = v0[1];

  return v17();
}

uint64_t MLSDaemon.getCredential(uri:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  Credential = type metadata accessor for KDSRegistration.GetCredentialError.ErrorType();
  v4[14] = Credential;
  v9 = *(Credential - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO10CredentialOSgMd, &_s8SwiftMLS0B0O8IdentityO10CredentialOSgMR) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v12 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v4[18] = v12;
  v13 = *(v12 - 8);
  v4[19] = v13;
  v14 = *(v13 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v15 = type metadata accessor for URI();
  v4[22] = v15;
  v16 = *(v15 - 8);
  v4[23] = v16;
  v17 = *(v16 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v18 = type metadata accessor for MLS.ClientIdentifier();
  v4[28] = v18;
  v19 = *(v18 - 8);
  v4[29] = v19;
  v20 = *(v19 + 64) + 15;
  v4[30] = swift_task_alloc();
  v21 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[31] = v21;
  v22 = *(v21 - 8);
  v4[32] = v22;
  v23 = *(v22 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.getCredential(uri:with:), 0, 0);
}

uint64_t MLSDaemon.getCredential(uri:with:)()
{
  v43 = v0;
  v1 = v0[36];
  v2 = v0[32];
  v38 = v0[31];
  v40 = v0[35];
  v3 = v0[27];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  log = v0[10];
  v7 = v0[8];
  (*(v0[29] + 16))(v0[30], v0[9], v0[28]);
  v8 = *(v5 + 16);
  v0[37] = v8;
  v0[38] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[39] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v4, v7, v6);
  v9 = *(v2 + 16);
  v0[40] = v9;
  v0[41] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v40, v1, v38);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[35];
  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[26];
  v18 = v0[22];
  v17 = v0[23];
  if (v12)
  {
    v39 = v11;
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v19 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v15;
    loga = v10;
    v21 = v13;
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v42);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v21, v35);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v42);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_26524C000, loga, v39, "MLSDaemon getCredential called { uri: %s, clientIdentifier: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v41, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[42] = v24;
  v0[43] = v29;
  v31 = swift_task_alloc();
  v0[44] = v31;
  *v31 = v0;
  v31[1] = MLSDaemon.getCredential(uri:with:);
  v32 = v0[36];
  v33 = v0[10];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v32);
}

{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = MLSDaemon.getCredential(uri:with:);
  }

  else
  {
    v3 = MLSDaemon.getCredential(uri:with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[10];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[46] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[47] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[48] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.getCredential(uri:with:), v4, v3);
}

{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = v0[10];

  v0[49] = v3(v5);

  return MEMORY[0x2822009F8](MLSDaemon.getCredential(uri:with:), 0, 0);
}

{
  v136 = v0;
  if (!*(v0[49] + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[36]), (v2 & 1) == 0))
  {
    log = v0[40];
    v126 = v0[41];
    v25 = v0[38];
    v131 = v0[39];
    v26 = v0[36];
    v27 = v0[37];
    v28 = v0[33];
    v29 = v0[31];
    v30 = v0[24];
    v31 = v0[22];
    v115 = v0[10];
    v32 = v0[8];

    v27(v30, v32, v31);
    (log)(v28, v26, v29);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[42];
    v132 = v0[43];
    v38 = v0[32];
    v37 = v0[33];
    v39 = v0[31];
    v40 = v0[23];
    v41 = v0[24];
    v42 = v0[22];
    if (v35)
    {
      loga = v33;
      v43 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v135[0] = v127;
      *v43 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v34;
      v46 = v45;
      v36(v41, v42);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v135);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v132(v37, v39);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v135);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_26524C000, loga, v116, "MLSDaemon getCredential has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v127, -1, -1);
      MEMORY[0x2667577B0](v43, -1, -1);
    }

    else
    {

      v132(v37, v39);
      v36(v41, v42);
    }

    v52 = v0[43];
    v53 = v0[36];
    v54 = v0[31];
    (*(v0[12] + 104))(v0[13], *MEMORY[0x277D4D2B0], v0[11]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v52(v53, v54);
    goto LABEL_10;
  }

  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = *(v6 + 16);
  v7(v3, *(v0[49] + 56) + *(v6 + 72) * v1, v5);

  v7(v4, v3, v5);
  v8 = (*(v6 + 88))(v4, v5);
  if (v8 == *MEMORY[0x277D4CFC0])
  {
    v9 = v0[20];
    v10 = v0[17];
    (*(v0[19] + 96))(v9, v0[18]);
    outlined init with take of MLS.SwiftMLSPersisterProtocol(v9, (v0 + 2));
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v12 = *(v11 + 8);
    dispatch thunk of MLS.SwiftMLSClientProtocol.credential.getter();
    v13 = type metadata accessor for MLS.Identity.Credential();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v10, 1, v13);
    v125 = v0[43];
    v16 = v0[36];
    if (v15 != 1)
    {
      v94 = v0[35];
      v95 = v0[32];
      v107 = v0[34];
      v108 = v0[33];
      v96 = v0[31];
      v109 = v0[30];
      v110 = v0[27];
      v111 = v0[26];
      v112 = v0[25];
      v114 = v0[24];
      v119 = v0[20];
      v97 = v0[17];
      logd = v0[16];
      v134 = v0[13];
      v98 = v0[7];
      (*(v0[19] + 8))(v0[21], v0[18]);
      v125(v16, v96);
      (*(v14 + 32))(v98, v97, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

      v65 = v0[1];
      goto LABEL_11;
    }

    v17 = v0[31];
    v18 = v0[32];
    v19 = v0[21];
    v20 = v0[18];
    v21 = v0[19];
    v22 = v0[16];
    v23 = v0[14];
    v24 = v0[15];
    outlined destroy of MLS.KeyPackageProvider?(v0[17], &_s8SwiftMLS0B0O8IdentityO10CredentialOSgMd, &_s8SwiftMLS0B0O8IdentityO10CredentialOSgMR);
    (*(v24 + 104))(v22, *MEMORY[0x277D4CA50], v23);
    type metadata accessor for KDSRegistration.GetCredentialError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError, MEMORY[0x277D4CA60]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v21 + 8))(v19, v20);
    v125(v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
LABEL_10:
    v56 = v0[35];
    v55 = v0[36];
    v58 = v0[33];
    v57 = v0[34];
    v59 = v0[30];
    v61 = v0[26];
    v60 = v0[27];
    v63 = v0[24];
    v62 = v0[25];
    v64 = v0[21];
    v113 = v0[20];
    v117 = v0[17];
    logb = v0[16];
    v128 = v0[13];

    v65 = v0[1];
LABEL_11:

    return v65();
  }

  if (v8 == *MEMORY[0x277D4CFC8])
  {
    v68 = v0[40];
    v67 = v0[41];
    v69 = v0[38];
    v70 = v0[39];
    v71 = v0[36];
    v72 = v0[34];
    v73 = v0[31];
    v74 = v0[10];
    (v0[37])(v0[25], v0[8], v0[22]);
    v68(v72, v71, v73);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v0[42];
    v133 = v0[43];
    v79 = v0[34];
    v80 = v0[31];
    v81 = v0[32];
    v82 = v0[25];
    v84 = v0[22];
    v83 = v0[23];
    if (v77)
    {
      logc = v75;
      v85 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v135[0] = v129;
      *v85 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v118 = v76;
      v88 = v87;
      v78(v82, v84);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v135);

      *(v85 + 4) = v89;
      *(v85 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v133(v79, v80);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v135);

      *(v85 + 14) = v93;
      _os_log_impl(&dword_26524C000, logc, v118, "MLSDaemon getCredential called on invalid swiftMLSClient { uri: %s, uniqueClientIdentifier: %s }", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v129, -1, -1);
      MEMORY[0x2667577B0](v85, -1, -1);
    }

    else
    {

      v133(v79, v80);
      v78(v82, v84);
    }

    v130 = v0[43];
    v100 = v0[36];
    v101 = v0[31];
    v102 = v0[20];
    v103 = v0[21];
    v104 = v0[18];
    v105 = v0[19];
    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4CA58], v0[14]);
    type metadata accessor for KDSRegistration.GetCredentialError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError, MEMORY[0x277D4CA60]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v106 = *(v105 + 8);
    v106(v103, v104);
    v130(v100, v101);
    v106(v102, v104);
    goto LABEL_10;
  }

  v99 = v0[18];

  return MEMORY[0x2821FDEB8](v99, v99);
}

{
  v1 = *(v0 + 256) + 8;
  (*(v0 + 344))(*(v0 + 288), *(v0 + 248));
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 240);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  v10 = *(v0 + 192);
  v9 = *(v0 + 200);
  v11 = *(v0 + 168);
  v14 = *(v0 + 160);
  v15 = *(v0 + 136);
  v16 = *(v0 + 128);
  v17 = *(v0 + 104);
  v18 = *(v0 + 360);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t MLSDaemon.signWithParticipantKey(nonce:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for KDSRegistration.SignWithParticipantKeyError.ErrorType();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v12 = type metadata accessor for MLS.RCSClient.SignNonceOutput();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v15 = type metadata accessor for MLS.RCSClient.SignNonceInput();
  v5[22] = v15;
  v16 = *(v15 - 8);
  v5[23] = v16;
  v17 = *(v16 + 64) + 15;
  v5[24] = swift_task_alloc();
  v18 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v5[25] = v18;
  v19 = *(v18 - 8);
  v5[26] = v19;
  v20 = *(v19 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v21 = type metadata accessor for URI();
  v5[29] = v21;
  v22 = *(v21 - 8);
  v5[30] = v22;
  v23 = *(v22 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v24 = type metadata accessor for MLS.ClientIdentifier();
  v5[35] = v24;
  v25 = *(v24 - 8);
  v5[36] = v25;
  v26 = *(v25 + 64) + 15;
  v5[37] = swift_task_alloc();
  v27 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[38] = v27;
  v28 = *(v27 - 8);
  v5[39] = v28;
  v29 = *(v28 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.signWithParticipantKey(nonce:for:with:), 0, 0);
}

uint64_t MLSDaemon.signWithParticipantKey(nonce:for:with:)()
{
  v48 = v0;
  v1 = v0[43];
  v2 = v0[39];
  v41 = v0[38];
  log = v0[42];
  v3 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v45 = v0[11];
  v6 = v0[9];
  v38 = v0[33];
  v39 = v0[8];
  v7 = v0[7];
  (*(v0[36] + 16))(v0[37], v0[10], v0[35]);
  v8 = *(v4 + 16);
  v0[44] = v8;
  v0[45] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6, v5);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[46] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v38, v6, v5);
  v9 = *(v2 + 16);
  v0[47] = v9;
  v0[48] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(log, v1, v41);
  outlined copy of Data._Representation(v7, v39);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v7, v39);
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[42];
  v15 = v0[38];
  v14 = v0[39];
  v16 = v0[33];
  v18 = v0[29];
  v17 = v0[30];
  if (v12)
  {
    v42 = v0[42];
    v19 = v0[7];
    v20 = v0[8];
    loga = v10;
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v21 = 136315650;
    v22 = Data.base64EncodedString(options:)(0);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22._countAndFlagsBits, v22._object, &v47);

    *(v21 + 4) = v23;
    *(v21 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v40 = v11;
    v27 = *(v17 + 8);
    v27(v16, v18);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v47);

    *(v21 + 14) = v28;
    *(v21 + 22) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v32 = *(v14 + 8);
    v32(v42, v15);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v47);

    *(v21 + 24) = v33;
    _os_log_impl(&dword_26524C000, loga, v40, "MLSDaemon signWithParticipantKey called. { nonce: %s, uri: %s, clientIdentifier: %s}", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v46, -1, -1);
    MEMORY[0x2667577B0](v21, -1, -1);
  }

  else
  {

    v32 = *(v14 + 8);
    v32(v13, v15);
    v27 = *(v17 + 8);
    v27(v16, v18);
  }

  v0[49] = v27;
  v0[50] = v32;
  v34 = swift_task_alloc();
  v0[51] = v34;
  *v34 = v0;
  v34[1] = MLSDaemon.signWithParticipantKey(nonce:for:with:);
  v35 = v0[43];
  v36 = v0[11];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v35);
}

{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = MLSDaemon.signWithParticipantKey(nonce:for:with:);
  }

  else
  {
    v3 = MLSDaemon.signWithParticipantKey(nonce:for:with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[11];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[53] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[54] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[55] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.signWithParticipantKey(nonce:for:with:), v4, v3);
}

{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[11];

  v0[56] = v3(v5);

  return MEMORY[0x2822009F8](MLSDaemon.signWithParticipantKey(nonce:for:with:), 0, 0);
}

{
  v118 = v0;
  if (!*(v0[56] + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[43]), (v2 & 1) == 0))
  {
    log = v0[47];
    v109 = v0[48];
    v21 = v0[45];
    v114 = v0[46];
    v22 = v0[43];
    v23 = v0[44];
    v24 = v0[40];
    v25 = v0[38];
    v26 = v0[31];
    v27 = v0[29];
    v101 = v0[11];
    v28 = v0[9];

    v23(v26, v28, v27);
    (log)(v24, v22, v25);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[49];
    v115 = v0[50];
    v34 = v0[39];
    v33 = v0[40];
    v35 = v0[38];
    v36 = v0[30];
    v37 = v0[31];
    v38 = v0[29];
    if (v31)
    {
      loga = v29;
      v39 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v117[0] = v110;
      *v39 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v30;
      v42 = v41;
      v32(v37, v38);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v117);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v115(v33, v35);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v117);

      *(v39 + 14) = v47;
      _os_log_impl(&dword_26524C000, loga, v102, "MLSDaemon signWithParticipantKey has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v110, -1, -1);
      MEMORY[0x2667577B0](v39, -1, -1);
    }

    else
    {

      v115(v33, v35);
      v32(v37, v38);
    }

    v48 = v0[50];
    v49 = v0[43];
    v50 = v0[38];
    (*(v0[13] + 104))(v0[14], *MEMORY[0x277D4D2B0], v0[12]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v48(v49, v50);
    goto LABEL_11;
  }

  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v7 = *(v6 + 16);
  v7(v3, *(v0[56] + 56) + *(v6 + 72) * v1, v5);

  v7(v4, v3, v5);
  v8 = (*(v6 + 88))(v4, v5);
  if (v8 == *MEMORY[0x277D4CFC0])
  {
    v9 = v0[27];
    v10 = v0[24];
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];
    (*(v0[26] + 96))(v9, v0[25]);
    outlined init with take of MLS.SwiftMLSPersisterProtocol(v9, (v0 + 2));
    v14 = outlined copy of Data._Representation(v13, v12);
    MEMORY[0x266756630](v14);
    MLS.RCSClient.SignNonceInput.init(nonce:telURI:)();
    v15 = v0[5];
    v16 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    v17 = *(MEMORY[0x277D4D118] + 4);
    v18 = swift_task_alloc();
    v0[57] = v18;
    *v18 = v0;
    v18[1] = MLSDaemon.signWithParticipantKey(nonce:for:with:);
    v19 = v0[24];
    v20 = v0[21];

    return MEMORY[0x2821ACAA0](v20, v19, v15, v16);
  }

  if (v8 == *MEMORY[0x277D4CFC8])
  {
    v63 = v0[47];
    v62 = v0[48];
    v64 = v0[45];
    v65 = v0[46];
    v66 = v0[43];
    v67 = v0[41];
    v68 = v0[38];
    v69 = v0[11];
    (v0[44])(v0[32], v0[9], v0[29]);
    v63(v67, v66, v68);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[49];
    v116 = v0[50];
    v74 = v0[41];
    v75 = v0[38];
    v76 = v0[39];
    v77 = v0[32];
    v79 = v0[29];
    v78 = v0[30];
    if (v72)
    {
      logc = v70;
      v80 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v117[0] = v112;
      *v80 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v71;
      v83 = v82;
      v73(v77, v79);
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v117);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v116(v74, v75);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v117);

      *(v80 + 14) = v88;
      _os_log_impl(&dword_26524C000, logc, v104, "MLSDaemon signWithParticipantKey called on invalid swiftMLSClient { uri: %s, uniqueClientIdentifier: %s }", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v112, -1, -1);
      MEMORY[0x2667577B0](v80, -1, -1);
    }

    else
    {

      v116(v74, v75);
      v73(v77, v79);
    }

    v113 = v0[50];
    v90 = v0[43];
    v91 = v0[38];
    v92 = v0[27];
    v93 = v0[28];
    v94 = v0[25];
    v95 = v0[26];
    (*(v0[16] + 104))(v0[17], *MEMORY[0x277D4CBB8], v0[15]);
    type metadata accessor for KDSRegistration.SignWithParticipantKeyError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError, MEMORY[0x277D4CBC8]);
    swift_allocError();
    KDSRegistration.IsRegisteredError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v96 = *(v95 + 8);
    v96(v93, v94);
    v113(v90, v91);
    v96(v92, v94);
LABEL_11:
    v52 = v0[42];
    v51 = v0[43];
    v54 = v0[40];
    v53 = v0[41];
    v55 = v0[37];
    v57 = v0[33];
    v56 = v0[34];
    v58 = v0[31];
    v59 = v0[32];
    v60 = v0[28];
    v98 = v0[27];
    v99 = v0[24];
    v100 = v0[21];
    v103 = v0[20];
    logb = v0[17];
    v111 = v0[14];

    v61 = v0[1];

    return v61();
  }

  v89 = v0[25];

  return MEMORY[0x2821FDEB8](v89, v89);
}

{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = MLSDaemon.signWithParticipantKey(nonce:for:with:);
  }

  else
  {
    v3 = MLSDaemon.signWithParticipantKey(nonce:for:with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v47 = v0;
  v1 = v0[46];
  v2 = v0[11];
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v9 = 136315138;
    v10 = MLS.RCSClient.SignNonceOutput.signature.getter();
    v12 = v11;
    v13 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v10, v12);
    v45 = *(v7 + 8);
    v45(v6, v8);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13._countAndFlagsBits, v13._object, &v46);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_26524C000, v3, v4, "MLSDaemon signWithParticipantKey got nonce signature. { signature: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x2667577B0](v43, -1, -1);
    MEMORY[0x2667577B0](v9, -1, -1);
  }

  else
  {

    v45 = *(v7 + 8);
    v45(v6, v8);
  }

  v15 = v0[43];
  v30 = v0[50];
  v31 = v0[42];
  v32 = v0[41];
  v33 = v0[40];
  v28 = v0[39];
  v29 = v0[38];
  v34 = v0[37];
  v35 = v0[34];
  v36 = v0[33];
  v37 = v0[32];
  v27 = v0[28];
  v38 = v0[31];
  v39 = v0[27];
  v16 = v0[25];
  v17 = v0[26];
  v19 = v0[23];
  v18 = v0[24];
  v21 = v0[21];
  v20 = v0[22];
  v40 = v0[20];
  v22 = v0[18];
  v41 = v0[17];
  v42 = v0[14];
  v23 = MLS.RCSClient.SignNonceOutput.signature.getter();
  v44 = v24;
  v45(v21, v22);
  (*(v19 + 8))(v18, v20);
  (*(v17 + 8))(v27, v16);
  v30(v15, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v25 = v0[1];

  return v25(v23, v44);
}

{
  v1 = *(v0 + 312) + 8;
  (*(v0 + 400))(*(v0 + 344), *(v0 + 304));
  v20 = *(v0 + 416);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 296);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v11 = *(v0 + 224);
  v14 = *(v0 + 216);
  v15 = *(v0 + 192);
  v16 = *(v0 + 168);
  v17 = *(v0 + 160);
  v18 = *(v0 + 136);
  v19 = *(v0 + 112);

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v7 + 8))(v5, v6);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v26 = v0[58];
  v9 = v0[42];
  v8 = v0[43];
  v11 = v0[40];
  v10 = v0[41];
  v12 = v0[37];
  v14 = v0[33];
  v13 = v0[34];
  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[28];
  v20 = v0[27];
  v21 = v0[24];
  v22 = v0[21];
  v23 = v0[20];
  v24 = v0[17];
  v25 = v0[14];

  v18 = v0[1];

  return v18();
}

uint64_t MLSDaemon.xpcLogger.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t MLSDaemon.swiftMLSClientByClientID.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t MLSDaemon.swiftMLSClientByClientID.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id MLSDaemon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MLSDaemon.init()()
{
  v1 = v0;
  v2 = type metadata accessor for SMAFeatureFlagsStore();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LogCategory();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v7[13];
  v11(v10, *MEMORY[0x277D4C8F0], v6);
  secureMessagingLogger(category:)();
  v12 = v7[1];
  v12(v10, v6);
  v11(v10, *MEMORY[0x277D4C930], v6);
  secureMessagingLogger(category:)();
  v12(v10, v6);
  v13 = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister;
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v14 = NSHomeDirectory();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v33 = v15;
  v34 = v17;
  MEMORY[0x266756A70](0xD000000000000019, 0x80000002653491A0);
  v18 = v33;
  v19 = v34;
  default argument 0 of SMAFeatureFlagsStore.init(overrides:)();
  SMAFeatureFlagsStore.init(overrides:)();
  v20 = type metadata accessor for DaemonPersister();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v1[v13] = DaemonPersister.init(fileDir:dbFileName:featureFlagStore:)(v18, v19, 0x65726F7453534C4DLL, 0xEB0000000062642ELL, v5);
  v23 = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer;
  type metadata accessor for ClientXPCServer();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D84F90];
  *(v24 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_0cD9AgentCore0G8XPCProxyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v1[v23] = v24;
  v26 = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_regClientServer;
  type metadata accessor for RegistrationClientServer();
  v27 = swift_allocObject();
  *(v27 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC24SecureMessagingAgentCore19RegClientIdentifierV_AC012RegistrationH5ProxyVTt0g5Tf4g_n(v25);
  *&v1[v26] = v27;
  v28 = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_swiftMLSClientByClientID;
  *&v1[v28] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE20SwiftMLSClientPickerOTt0g5Tf4g_n(v25);
  v29 = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_keyPackageProviderByClientID;
  *&v1[v29] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE18KeyPackageProviderVTt0g5Tf4g_n(v25);
  v30 = type metadata accessor for MLSDaemon();
  v32.receiver = v1;
  v32.super_class = v30;
  return objc_msgSendSuper2(&v32, sel_init);
}

uint64_t MLSDaemon.start()()
{
  v1[2] = v0;
  v2 = type metadata accessor for SMAFeatureFlagsKey();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.start(), 0, 0);
}

{
  v44 = v0;
  v1 = &unk_280016000;
  if (os_variant_has_internal_content())
  {
    v2 = v42[2] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26524C000, v3, v4, "We're an internal install.", v5, 2u);
      MEMORY[0x2667577B0](v5, -1, -1);
    }
  }

  v6 = static SMAFeatureFlagsKey.allCases.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v42[4];
    v43 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = v43;
    v10 = *(v8 + 16);
    v8 += 16;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v39 = *(v8 + 56);
    v40 = v10;
    v38 = (v8 - 8);
    do
    {
      v12 = v42[5];
      v13 = v42[3];
      v40(v12, v11, v13);
      v14 = SMAFeatureFlagsKey.feature.getter();
      v16 = v15;
      v18 = v17;
      v19 = SMAFeatureFlagsKey.isEnabled.getter();
      (*v38)(v12, v13);
      v43 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v9 = v43;
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 24 * v21;
      *(v22 + 32) = v14;
      *(v22 + 40) = v16;
      *(v22 + 48) = v18;
      *(v22 + 49) = v19 & 1;
      v11 += v39;
      --v7;
    }

    while (v7);

    v1 = &unk_280016000;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v23 = v42[2];
  v24 = v1[288];

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v43 = v28;
    *v27 = 136315138;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12StaticStringV_SbtMd, &_ss12StaticStringV_SbtMR);
    v30 = MEMORY[0x266756AF0](v9, v29);
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v43);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_26524C000, v25, v26, "MLSDaemon start { enabledFeatureFlags: %s }", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x2667577B0](v28, -1, -1);
    MEMORY[0x2667577B0](v27, -1, -1);
  }

  else
  {
  }

  v34 = *(**(v42[2] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister) + 280);
  v41 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  v42[6] = v36;
  *v36 = v42;
  v36[1] = MLSDaemon.start();

  return v41();
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

Swift::Void __swiftcall MLSDaemon.setupXPCNotificationPoster()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MLSActor();
  v6 = v0;
  v7 = static MLSActor.shared.getter();
  v8 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in MLSDaemon.setupXPCNotificationPoster(), v9);
}

uint64_t closure #1 in MLSDaemon.setupXPCNotificationPoster()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for URI();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = type metadata accessor for MLS.ClientIdentifier();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v4[13] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v15;
  v4[15] = v14;

  return MEMORY[0x2822009F8](closure #1 in MLSDaemon.setupXPCNotificationPoster(), v15, v14);
}

uint64_t closure #1 in MLSDaemon.setupXPCNotificationPoster()()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "MLSDaemon loading persisted client identifiers", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v9 = (**(v5 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister) + 464);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = closure #1 in MLSDaemon.setupXPCNotificationPoster();

  return v10();
}

{
  v48 = v0;
  v1 = v0[17];
  v2 = v0[13];

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[10];
    v43 = v0[2];
    v5 = *(v4 + 16);
    v4 += 16;
    v42 = v5;
    v6 = v0[17] + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v41 = *(v4 + 56);
    v39 = (v0[7] + 8);
    v38 = (v0[4] + 8);
    v40 = (v4 - 8);
    do
    {
      v46 = v3;
      v24 = v0[11];
      v23 = v0[12];
      v25 = v0[9];
      v42(v23, v6, v25);
      v42(v24, v23, v25);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[11];
      v30 = v0[9];
      if (v28)
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v47[0] = v8;
        *v7 = 136315138;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v10;
        v45 = *v40;
        (*v40)(v29, v30);
        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v47);

        *(v7 + 4) = v12;
        _os_log_impl(&dword_26524C000, v26, v27, "MLSDaemon pinging client to reconnect { uniqueClientIdentifier: %s }", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x2667577B0](v8, -1, -1);
        MEMORY[0x2667577B0](v7, -1, -1);
      }

      else
      {

        v45 = *v40;
        (*v40)(v29, v30);
      }

      v13 = v0[12];
      v14 = v0[8];
      v44 = v0[9];
      v16 = v0[5];
      v15 = v0[6];
      v17 = v0[3];
      v47[0] = static XPCUtils.XPCNotifyPoster.DeliveryPostIdentifierPrefix.getter();
      v47[1] = v18;
      MEMORY[0x266756A70](45, 0xE100000000000000);
      MLS.UniqueClientIdentifier.clientIdentifier.getter();
      v19 = MLS.ClientIdentifier.rawValue.getter();
      v21 = v20;
      (*v39)(v14, v15);
      MEMORY[0x266756A70](v19, v21);

      MEMORY[0x266756A70](45, 0xE100000000000000);
      MLS.UniqueClientIdentifier.clientURI.getter();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266756A70](v22);

      (*v38)(v16, v17);
      static XPCUtils.XPCNotifyPoster.post(postIdentifier:)();

      v45(v13, v44);
      v6 += v41;
      v3 = v46 - 1;
    }

    while (v46 != 1);
  }

  v31 = v0[17];

  v33 = v0[11];
  v32 = v0[12];
  v34 = v0[8];
  v35 = v0[5];

  v36 = v0[1];

  return v36();
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t closure #1 in MLSDaemon.setupXPCNotificationPoster()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v7 = *(v3 + 120);
  v8 = *(v3 + 112);
  if (v1)
  {
    v9 = closure #1 in MLSDaemon.setupXPCNotificationPoster();
  }

  else
  {
    v9 = closure #1 in MLSDaemon.setupXPCNotificationPoster();
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of MLS.KeyPackageProvider?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of MLS.KeyPackageProvider?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of MLS.KeyPackageProvider?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id MLSDaemon.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26524C000, v7, v8, "MLSDaemon deinit", v9, 2u);
    MEMORY[0x2667577B0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for MLSDaemon();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MLS.UniqueClientIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v2[8] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v8;
  v2[10] = v7;

  return MEMORY[0x2822009F8](MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:), v8, v7);
}

uint64_t MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)()
{
  v45 = v0;
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x88))();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 16)), (v3 & 1) != 0))
  {
    v4 = v2;
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = *(v0 + 32);
    v42 = *(v0 + 48);
    v43 = *(v0 + 24);
    v9 = *(v0 + 16);

    v10 = *(v1 + 56);
    v11 = type metadata accessor for MLS.SwiftMLSClientPicker();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v6, v10 + *(v12 + 72) * v4, v11);

    (*(v12 + 56))(v6, 0, 1, v11);
    outlined destroy of MLS.KeyPackageProvider?(v6, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
    (*(v7 + 16))(v42, v9, v8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v18 = *(v0 + 32);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44[0] = v20;
      *v19 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v44);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_26524C000, v13, v14, "MLSDaemon already created SwiftMLSClient { clientIdentifier: %s }", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x2667577B0](v20, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v39 = *(v0 + 48);
    v38 = *(v0 + 56);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v25 = *(v0 + 56);
    v27 = *(v0 + 24);
    v26 = *(v0 + 32);
    v28 = *(v0 + 16);

    v29 = type metadata accessor for MLS.SwiftMLSClientPicker();
    (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
    outlined destroy of MLS.KeyPackageProvider?(v25, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
    v30 = *(v27 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister);
    _StringGuts.grow(_:)(21);

    v44[0] = 0xD000000000000013;
    v44[1] = 0x800000026534BBC0;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v31);

    *(v0 + 88) = 0x800000026534BBC0;
    v32 = swift_task_alloc();
    *(v0 + 96) = v32;
    *(v32 + 16) = v27;
    *(v32 + 24) = v28;
    v33 = *(MEMORY[0x277D4D240] + 4);
    v34 = swift_task_alloc();
    *(v0 + 104) = v34;
    v35 = type metadata accessor for DaemonPersister();
    v36 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister);
    *v34 = v0;
    v34[1] = MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
    v37 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2821ACB80](v36, 0xD000000000000013, 0x800000026534BBC0, &async function pointer to partial apply for closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:), v32, v35, v37, v36);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  else
  {
    v7 = v2[11];
    v8 = v2[12];

    v4 = v2[9];
    v5 = v2[10];
    v6 = MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[8];

  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  v6 = v0[1];
  v7 = v0[14];

  return v6();
}

uint64_t closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18KeyPackageProviderVSgMd, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v3[14] = v6;
  v7 = *(v6 - 8);
  v3[15] = v7;
  v8 = *(v7 + 64) + 15;
  v3[16] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[17] = v9;
  v10 = *(v9 - 8);
  v3[18] = v10;
  v11 = *(v10 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v12 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[23] = v12;
  v13 = *(v12 - 8);
  v3[24] = v13;
  v14 = *(v13 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v15 = type metadata accessor for MLS.ClientIdentifier();
  v3[30] = v15;
  v16 = *(v15 - 8);
  v3[31] = v16;
  v17 = *(v16 + 64) + 15;
  v3[32] = swift_task_alloc();
  v18 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v3[33] = v18;
  v19 = *(v18 - 8);
  v3[34] = v19;
  v20 = *(v19 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v21 = type metadata accessor for MLS.Client.Configuration();
  v3[37] = v21;
  v22 = *(v21 - 8);
  v3[38] = v22;
  v23 = *(v22 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[45] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v26 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[46] = v26;
  v3[47] = v25;

  return MEMORY[0x2822009F8](closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:), v26, v25);
}

uint64_t closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister);
  v0[48] = v1;
  v2 = *(*v1 + 320);
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  v5 = v0[44];
  v6 = v0[11];

  return v8(v5, v6);
}

{
  v2 = *(*v1 + 392);
  v3 = *v1;
  v3[50] = v0;

  if (v0)
  {
    v4 = v3[46];
    v5 = v3[47];

    return MEMORY[0x2822009F8](closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:), v4, v5);
  }

  else
  {
    v6 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister);
    v3[51] = v6;
    v7 = *(MEMORY[0x277D4CFE0] + 4);
    v8 = swift_task_alloc();
    v3[52] = v8;
    *v8 = v3;
    v8[1] = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
    v9 = v3[48];
    v10 = v3[41];
    v11 = v3[11];

    return MEMORY[0x2821AC9F8](v10, v11, v9, v6, 0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 376);
  v6 = *(v2 + 368);
  if (v0)
  {
    v7 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  else
  {
    v7 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v56 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[11];
  MLS.UniqueClientIdentifier.clientIdentifier.getter();
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D4CD40])
  {
    v5 = v0[29];
    v6 = v0[23];
    v7 = v0[24];
    v9 = v0[10];
    v8 = v0[11];
    v0[54] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
    v10 = *(v7 + 16);
    v0[55] = v10;
    v0[56] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v5, v8, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[29];
    v15 = v0[23];
    v16 = v0[24];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = v54;
      *v17 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = *(v16 + 8);
      v21(v14, v15);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v55);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_26524C000, v11, v12, "MLSDaemon creating RCSSwiftMLSClient { clientIdentifier: %s }", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x2667577B0](v54, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {

      v21 = *(v16 + 8);
      v21(v14, v15);
    }

    v0[57] = v21;
    v24 = v0[43];
    v25 = v0[17];
    v26 = v0[18];
    outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v0[44], v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v27 = (*(v26 + 48))(v24, 1, v25);
    v28 = v0[43];
    if (v27 == 1)
    {
      v29 = v0[41];
      v30 = v0[42];
      v31 = v0[40];
      v32 = v0[37];
      v33 = v0[38];
      v34 = v0[17];
      v35 = v0[18];
      outlined destroy of MLS.KeyPackageProvider?(v0[43], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v0[58] = type metadata accessor for MLS.RCSClient();
      (*(v33 + 16))(v31, v29, v32);
      (*(v35 + 56))(v30, 1, 1, v34);
      v36 = *(MEMORY[0x277D6AC20] + 4);
      v37 = swift_task_alloc();
      v0[59] = v37;
      *v37 = v0;
      v37[1] = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
      v38 = v0[42];
      v39 = v0[40];

      return MEMORY[0x2821D00D8](v39, v38);
    }

    else
    {
      v40 = v0[41];
      v42 = v0[38];
      v41 = v0[39];
      v43 = v0[37];
      v45 = v0[21];
      v44 = v0[22];
      v46 = v0[17];
      v47 = v0[18];
      (*(v47 + 32))(v44, v0[43], v46);
      v0[62] = type metadata accessor for MLS.RCSClient();
      (*(v42 + 16))(v41, v40, v43);
      v48 = *(v47 + 16);
      v0[63] = v48;
      v0[64] = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v48(v45, v44, v46);
      v49 = *(MEMORY[0x277D6AC28] + 4);
      v50 = swift_task_alloc();
      v0[65] = v50;
      *v50 = v0;
      v50[1] = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
      v51 = v0[39];
      v52 = v0[21];

      return MEMORY[0x2821D00E0](v51, v52);
    }
  }

  else
  {
    v23 = v0[30];

    return MEMORY[0x2821FDEB8](v23, v23);
  }
}

{
  v132 = v0;
  v1 = v0[66];
  v2 = v0[45];

  if (v1)
  {
    v3 = v0[66];
    v123 = v0[63];
    v127 = v0[64];
    v4 = v0[55];
    v5 = v0[56];
    v119 = v0[54];
    v6 = v0[36];
    v7 = v0[33];
    v8 = v0[34];
    v9 = v0[27];
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[20];
    v13 = v0[17];
    v15 = v0[10];
    v14 = v0[11];
    v16 = MEMORY[0x277D4D2D0];
    v6[3] = v0[62];
    v6[4] = v16;
    *v6 = v3;
    v17 = *MEMORY[0x277D4CFC0];
    (*(v8 + 104))();
    v4(v9, v14, v10);
    v123(v12, v11, v13);
    v18 = Logger.logObject.getter();
    v128 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v18, v128);
    v20 = v0[57];
    v21 = v0[27];
    v23 = v0[23];
    v22 = v0[24];
    v24 = v0[22];
    v25 = v0[20];
    v27 = v0[17];
    v26 = v0[18];
    if (v19)
    {
      v124 = v0[22];
      v28 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v131[0] = v120;
      *v28 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v113 = v27;
      v116 = v18;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v20(v21, v23);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v131);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(v26 + 8);
      v36(v25, v113);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v131);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_26524C000, v116, v128, "MLSDaemon loaded old RCSSwiftMLSClient { clientIdentifier: %s, persistedClientUUID: %s }", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v120, -1, -1);
      MEMORY[0x2667577B0](v28, -1, -1);

      v36(v124, v113);
    }

    else
    {

      v54 = *(v26 + 8);
      v54(v25, v27);
      v20(v21, v23);
      v54(v24, v27);
    }

    v87 = v0[56];
    v88 = v0[55];
    v91 = v0[48];
    v92 = v0[51];
    v96 = v0[44];
    v97 = v0[43];
    v98 = v0[42];
    v95 = v0[41];
    v99 = v0[40];
    v101 = v0[39];
    v93 = v0[38];
    v94 = v0[37];
    v55 = v0[36];
    v85 = v55;
    v90 = v0[35];
    v57 = v0[33];
    v56 = v0[34];
    v103 = v0[32];
    v105 = v0[29];
    v107 = v0[28];
    v109 = v0[27];
    v111 = v0[26];
    v84 = v0[25];
    v86 = v0[23];
    v114 = v0[22];
    v117 = v0[21];
    v121 = v0[20];
    v125 = v0[19];
    v130 = v0[16];
    v58 = v0[13];
    v89 = v0[12];
    v59 = v0[10];
    v60 = v0[11];
    v88();
    v61 = *(v56 + 16);
    v61(v58, v55, v57);
    (*(v56 + 56))(v58, 0, 1, v57);
    v62 = (*((*MEMORY[0x277D85000] & *v59) + 0x98))(v0 + 2);
    specialized Dictionary.subscript.setter(v58, v84);
    v62(v0 + 2, 0);
    (v88)(v84, v60, v86);
    v61(v90, v85, v57);

    MLS.KeyPackageProvider.init(swiftMLSClient:persister:)();
    v63 = type metadata accessor for MLS.KeyPackageProvider();
    (*(*(v63 - 8) + 56))(v89, 0, 1, v63);
    v64 = (*((*MEMORY[0x277D85000] & *v59) + 0xB0))(v0 + 6);
    specialized Dictionary.subscript.setter(v89, v84);
    v64(v0 + 6, 0);
    (*(v93 + 8))(v95, v94);
    outlined destroy of MLS.KeyPackageProvider?(v96, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v56 + 8))(v85, v57);

    v65 = v0[1];
  }

  else
  {
    v38 = v0[56];
    v39 = v0[54];
    v40 = v0[10];
    (v0[55])(v0[28], v0[11], v0[23]);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[57];
    v45 = v0[28];
    v46 = v0[23];
    v47 = v0[24];
    if (v43)
    {
      v129 = v0[57];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v131[0] = v49;
      *v48 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v129(v45, v46);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v131);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_26524C000, v41, v42, "MLSDaemon failed creating RCSSwiftMLSClient { clientIdentifier: %s }", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x2667577B0](v49, -1, -1);
      MEMORY[0x2667577B0](v48, -1, -1);
    }

    else
    {

      v44(v45, v46);
    }

    v66 = v0[44];
    v67 = v0[41];
    v68 = v0[37];
    v69 = v0[38];
    v70 = v0[22];
    v71 = v0[17];
    v72 = v0[18];
    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4D2B8], v0[14]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v72 + 8))(v70, v71);
    (*(v69 + 8))(v67, v68);
    outlined destroy of MLS.KeyPackageProvider?(v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v74 = v0[43];
    v73 = v0[44];
    v76 = v0[41];
    v75 = v0[42];
    v78 = v0[39];
    v77 = v0[40];
    v80 = v0[35];
    v79 = v0[36];
    v81 = v0[32];
    v82 = v0[29];
    v100 = v0[28];
    v102 = v0[27];
    v104 = v0[26];
    v106 = v0[25];
    v108 = v0[22];
    v110 = v0[21];
    v112 = v0[20];
    v115 = v0[19];
    v118 = v0[16];
    v122 = v0[13];
    v126 = v0[12];

    v65 = v0[1];
  }

  return v65();
}

{
  v1 = v0[60];
  v2 = v0[48];
  v3 = v0[19];

  dispatch thunk of MLS.Client.Client.clientUUID.getter();

  v10 = (*v2 + 312);
  v11 = (*v10 + **v10);
  v4 = (*v10)[1];
  v5 = swift_task_alloc();
  v0[68] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  v6 = v0[48];
  v7 = v0[19];
  v8 = v0[11];

  return v11(v7, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 552) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 376);
  v9 = *(v2 + 368);
  if (v0)
  {
    v10 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  else
  {
    v10 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  v71 = v0;
  v1 = v0[60];
  v2 = v0[58];
  v62 = v0[55];
  v64 = v0[56];
  v67 = v0[54];
  v3 = v0[45];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[26];
  v8 = v0[23];
  v10 = v0[10];
  v9 = v0[11];

  v11 = MEMORY[0x277D4D2D0];
  v4[3] = v2;
  v4[4] = v11;
  *v4 = v1;
  (*(v6 + 104))(v4, *MEMORY[0x277D4CFC0], v5);
  v62(v7, v9, v8);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[57];
  v16 = v0[26];
  v18 = v0[23];
  v17 = v0[24];
  if (v14)
  {
    v68 = v0[60];
    v65 = v0[57];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v70 = v20;
    *v19 = 136315138;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v65(v16, v18);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v70);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_26524C000, v12, v13, "MLSDaemon created new RCSSwiftMLSClient { clientIdentifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2667577B0](v20, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {
    v25 = v0[60];

    v15(v16, v18);
  }

  v41 = v0[56];
  v42 = v0[55];
  v45 = v0[48];
  v46 = v0[51];
  v50 = v0[44];
  v51 = v0[43];
  v52 = v0[42];
  v49 = v0[41];
  v53 = v0[40];
  v54 = v0[39];
  v47 = v0[38];
  v48 = v0[37];
  v26 = v0[36];
  v39 = v26;
  v44 = v0[35];
  v28 = v0[33];
  v27 = v0[34];
  v55 = v0[32];
  v56 = v0[29];
  v57 = v0[28];
  v58 = v0[27];
  v59 = v0[26];
  v38 = v0[25];
  v40 = v0[23];
  v60 = v0[22];
  v61 = v0[21];
  v63 = v0[20];
  v66 = v0[19];
  v69 = v0[16];
  v29 = v0[13];
  v43 = v0[12];
  v30 = v0[10];
  v31 = v0[11];
  v42();
  v32 = *(v27 + 16);
  v32(v29, v26, v28);
  (*(v27 + 56))(v29, 0, 1, v28);
  v33 = (*((*MEMORY[0x277D85000] & *v30) + 0x98))(v0 + 2);
  specialized Dictionary.subscript.setter(v29, v38);
  v33(v0 + 2, 0);
  (v42)(v38, v31, v40);
  v32(v44, v39, v28);

  MLS.KeyPackageProvider.init(swiftMLSClient:persister:)();
  v34 = type metadata accessor for MLS.KeyPackageProvider();
  (*(*(v34 - 8) + 56))(v43, 0, 1, v34);
  v35 = (*((*MEMORY[0x277D85000] & *v30) + 0xB0))(v0 + 6);
  specialized Dictionary.subscript.setter(v43, v38);
  v35(v0 + 6, 0);
  (*(v47 + 8))(v49, v48);
  outlined destroy of MLS.KeyPackageProvider?(v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v27 + 8))(v39, v28);

  v36 = v0[1];

  return v36();
}

{
  v1 = v0[45];

  v25 = v0[50];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[35];
  v8 = v0[36];
  v10 = v0[32];
  v11 = v0[29];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[13];
  v24 = v0[12];

  v12 = v0[1];

  return v12();
}

{
  v2 = v0[44];
  v1 = v0[45];

  outlined destroy of MLS.KeyPackageProvider?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = v0[53];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  v10 = v0[35];
  v9 = v0[36];
  v11 = v0[32];
  v12 = v0[29];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[19];
  v23 = v0[16];
  v24 = v0[13];
  v25 = v0[12];

  v13 = v0[1];

  return v13();
}

{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[41];
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[22];
  v7 = v0[17];
  v8 = v0[18];

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  outlined destroy of MLS.KeyPackageProvider?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v32 = v0[67];
  v10 = v0[43];
  v9 = v0[44];
  v12 = v0[41];
  v11 = v0[42];
  v14 = v0[39];
  v13 = v0[40];
  v16 = v0[35];
  v15 = v0[36];
  v17 = v0[32];
  v18 = v0[29];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[22];
  v26 = v0[21];
  v27 = v0[20];
  v28 = v0[19];
  v29 = v0[16];
  v30 = v0[13];
  v31 = v0[12];

  v19 = v0[1];

  return v19();
}

{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[41];
  v4 = v0[37];
  v5 = v0[38];

  (*(v5 + 8))(v3, v4);
  outlined destroy of MLS.KeyPackageProvider?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v29 = v0[61];
  v7 = v0[43];
  v6 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v11 = v0[39];
  v10 = v0[40];
  v13 = v0[35];
  v12 = v0[36];
  v14 = v0[32];
  v15 = v0[29];
  v18 = v0[28];
  v19 = v0[27];
  v20 = v0[26];
  v21 = v0[25];
  v22 = v0[22];
  v23 = v0[21];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[13];
  v28 = v0[12];

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[60];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[41];
  v5 = v0[37];
  v6 = v0[38];

  (*(v6 + 8))(v4, v5);
  outlined destroy of MLS.KeyPackageProvider?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v30 = v0[69];
  v8 = v0[43];
  v7 = v0[44];
  v10 = v0[41];
  v9 = v0[42];
  v12 = v0[39];
  v11 = v0[40];
  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[32];
  v16 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[16];
  v28 = v0[13];
  v29 = v0[12];

  v17 = v0[1];

  return v17();
}

uint64_t closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  *(v4 + 480) = a1;
  *(v4 + 488) = v1;

  v7 = *(v3 + 376);
  v8 = *(v3 + 368);
  if (v1)
  {
    v9 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  else
  {
    v9 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  *(v4 + 528) = a1;
  *(v4 + 536) = v1;

  v7 = *(v3 + 376);
  v8 = *(v3 + 368);
  if (v1)
  {
    v9 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  else
  {
    v9 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a3;
  outlined copy of Data._Representation(a2, a3);
  v27 = v5;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a2, v8);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    v15 = Data.description.getter();
    v17 = v8;
    v18 = a4;
    v19 = a5;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v28);

    *(v13 + 4) = v20;
    a5 = v19;
    a4 = v18;
    v8 = v17;
    _os_log_impl(&dword_26524C000, v11, v12, "MLSDaemon setupXPCConnection called { uniqueClientIdentifier: %s }", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x2667577B0](v14, -1, -1);
    MEMORY[0x2667577B0](v13, -1, -1);
  }

  type metadata accessor for MLS.ClientCreationError();
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = v8;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = v27;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v27;
  v23 = swift_allocObject();
  *(v23 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  *(v23 + 24) = v22;
  v24 = v27;
  outlined copy of Data._Representation(a2, v8);
  v25 = v24;
  outlined copy of Data._Representation(a4, a5);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError, MEMORY[0x277D4CF48]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)@<X0>(_DWORD *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v49 = a2;
  v44[1] = a3;
  v45 = a4;
  v48 = a1;
  v4 = type metadata accessor for MLS.AllMember();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLS.UniqueClientIdentifier();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v44 - v13;
  v15 = type metadata accessor for JSONDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  v18 = v50;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v18)
  {
    v20 = v12;
    v50 = v14;
    v21 = v47;
    v22 = *(v15 + 48);
    v23 = *(v15 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v24 = v21;
    v25 = *(v21 + 16);
    v26 = v20;
    v27 = v8;
    v25(v20, v50, v8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v48 = v30;
      v49 = swift_slowAlloc();
      v51 = v49;
      *v30 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v26;
      v33 = v24;
      v34 = v7;
      v36 = v35;
      (*(v33 + 8))(v32, v27);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v36, &v51);
      v7 = v34;

      v38 = v48;
      *(v48 + 1) = v37;
      v39 = v38;
      _os_log_impl(&dword_26524C000, v28, v29, "MLSDaemon setupXPCConnection decoded { uniqueClientIdentifier: %s }", v38, 0xCu);
      v40 = v49;
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x2667577B0](v40, -1, -1);
      MEMORY[0x2667577B0](v39, -1, -1);

      v41 = v45;
    }

    else
    {

      (*(v24 + 8))(v26, v27);
      v41 = v45;
      v33 = v24;
    }

    v42 = v46;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMR) + 48);
    (*(v33 + 32))(v41, v50, v27);
    return (*(v42 + 32))(v41 + v43, v7, v4);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[39] = a3;
  v4[40] = a4;
  v4[37] = a1;
  v4[38] = a2;
  v5 = *(*(type metadata accessor for SMAFeatureFlagsStore() - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v6 = type metadata accessor for MLS.AllMember();
  v4[42] = v6;
  v7 = *(v6 - 8);
  v4[43] = v7;
  v8 = *(v7 + 64) + 15;
  v4[44] = swift_task_alloc();
  v9 = *(*(type metadata accessor for RegClientIdentifier() - 8) + 64) + 15;
  v4[45] = swift_task_alloc();
  v10 = type metadata accessor for MLS.ClientIdentifier();
  v4[46] = v10;
  v11 = *(v10 - 8);
  v4[47] = v11;
  v12 = *(v11 + 64) + 15;
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v13 = type metadata accessor for MLS.KeyPackageProvider();
  v4[50] = v13;
  v14 = *(v13 - 8);
  v4[51] = v14;
  v15 = *(v14 + 64) + 15;
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v16 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v4[54] = v16;
  v17 = *(v16 - 8);
  v4[55] = v17;
  v18 = *(v17 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v19 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[58] = v19;
  v20 = *(v19 - 8);
  v4[59] = v20;
  v21 = *(v20 + 64) + 15;
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)()
{
  v44 = v0;
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[40];
  v4 = v0[37];
  if (v0[39])
  {
    v5 = v0[65];
    v6 = *(v2 + 16);
    v0[67] = v6;
    v0[68] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v5, v4, v1);
    swift_unknownObjectRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[65];
    v11 = v0[58];
    v12 = v0[59];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = v41;
      *v13 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v17 = *(v12 + 8);
      v17(v10, v11);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v43);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_26524C000, v7, v8, "MLSDaemon adding clientXPCProxy { uniqueClientIdentifier: %s }", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x2667577B0](v41, -1, -1);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    else
    {

      v17 = *(v12 + 8);
      v17(v10, v11);
    }

    v0[70] = v17;
    v33 = swift_task_alloc();
    v0[71] = v33;
    *v33 = v0;
    v33[1] = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
    v34 = v0[40];
    v35 = v0[37];

    return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v35);
  }

  else
  {
    v19 = v0[66];
    v20 = *(v2 + 16);
    v0[69] = v20;
    v20(v19, v4, v1);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[66];
    v25 = v0[58];
    v26 = v0[59];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v27 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v31 = *(v26 + 8);
      v31(v24, v25);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v43);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_26524C000, v21, v22, "MLSDaemon removing clientXPCProxy { uniqueClientIdentifier: %s }", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x2667577B0](v42, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    else
    {

      v31 = *(v26 + 8);
      v31(v24, v25);
    }

    v0[114] = v31;
    v37 = *(v0[40] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
    v0[115] = v37;
    v38 = *v37 + 120;
    v0[116] = *v38;
    v0[117] = v38 & 0xFFFFFFFFFFFFLL | 0xB4A8000000000000;
    type metadata accessor for MLSActor();
    v0[118] = static MLSActor.shared.getter();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
    v40 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v40, v39);
  }
}

{
  v2 = *(*v1 + 568);
  v5 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[40];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[73] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[74] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  v0[75] = type metadata accessor for MLSActor();
  v0[76] = static MLSActor.shared.getter();
  v0[77] = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v4, v3);
}

{
  v1 = v0[76];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[40];

  v0[78] = v3(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v54 = v0;
  if (*(v0[78] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[37]), (v2 & 1) != 0))
  {
    v3 = v0[77];
    v4 = v0[75];
    v5 = v0[57];
    v6 = v0[54];
    v7 = v0[55];
    v8 = v0[40];
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = *(v0[78] + 56) + *(v7 + 56) * v1;
    v0[79] = v9;
    v0[80] = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v5, v10, v6);

    v11 = (*MEMORY[0x277D85000] & *v8) + 160;
    v0[81] = *((*MEMORY[0x277D85000] & *v8) + 0xA0);
    v0[82] = v11 & 0xFFFFFFFFFFFFLL | 0x475000000000000;
    v0[83] = static MLSActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v13, v12);
  }

  else
  {
    v14 = v0[68];
    v15 = v0[67];
    v16 = v0[64];
    v17 = v0[58];
    v18 = v0[40];
    v19 = v0[37];

    v15(v16, v19, v17);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[70];
    v24 = v0[64];
    v26 = v0[58];
    v25 = v0[59];
    if (v22)
    {
      v51 = v0[39];
      v27 = swift_slowAlloc();
      v49 = v23;
      v28 = swift_slowAlloc();
      v53 = v28;
      *v27 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v49(v24, v26);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v53);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_26524C000, v20, v21, "MLSDaemon error setting up swift mls client { uniqueClientIdentifier: %s }", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      v23(v24, v26);
    }

    v33 = v0[66];
    v34 = v0[65];
    v36 = v0[63];
    v35 = v0[64];
    v38 = v0[61];
    v37 = v0[62];
    v39 = v0[60];
    v40 = v0[56];
    v41 = v0[57];
    v42 = v0[53];
    v45 = v0[52];
    v46 = v0[49];
    v47 = v0[48];
    v48 = v0[45];
    v50 = v0[44];
    v52 = v0[41];

    v43 = v0[1];

    return v43(0);
  }
}

{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[40];

  v0[84] = v3(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v70 = v0;
  if (*(v0[84] + 16) && (v1 = v0[84], v2 = specialized __RawDictionaryStorage.find<A>(_:)(v0[37]), (v3 & 1) != 0))
  {
    v4 = v0[53];
    v5 = v0[50];
    v6 = v0[51];
    v7 = v0[49];
    v8 = v0[46];
    v9 = v0[47];
    v10 = v0[37];
    v11 = *(v6 + 16);
    v6 += 16;
    v12 = *(v0[84] + 56) + *(v6 + 56) * v2;
    v0[85] = v11;
    v0[86] = v6 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v4, v12, v5);

    MLS.UniqueClientIdentifier.clientIdentifier.getter();
    v13 = (*(v9 + 88))(v7, v8);
    if (v13 == *MEMORY[0x277D4CD40])
    {
      v14 = v13;
      v15 = v0[77];
      v16 = v0[75];
      v17 = v0[46];
      v18 = v0[47];
      v19 = v0[45];
      v20 = *(v0[40] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_regClientServer);
      v0[87] = v20;
      (*(v18 + 104))(v19, v14, v17);
      v21 = *v20 + 88;
      v0[88] = *v21;
      v0[89] = v21 & 0xFFFFFFFFFFFFLL | 0x5C72000000000000;
      v0[90] = static MLSActor.shared.getter();
      v23 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v23, v22);
    }

    else
    {
      v56 = v0[46];

      return MEMORY[0x2821FDEB8](v56, v56);
    }
  }

  else
  {
    v24 = v0[68];
    v25 = v0[67];
    v26 = v0[63];
    v27 = v0[58];
    v28 = v0[40];
    v29 = v0[37];

    v25(v26, v29, v27);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v67 = v0[70];
    v33 = v0[63];
    v35 = v0[58];
    v34 = v0[59];
    v36 = v0[57];
    v37 = v0[54];
    v38 = v0[55];
    if (v32)
    {
      v65 = v0[39];
      v39 = swift_slowAlloc();
      v59 = v31;
      v40 = swift_slowAlloc();
      v69 = v40;
      *v39 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v61 = v37;
      v63 = v36;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v67(v33, v35);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v69);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_26524C000, v30, v59, "MLSDaemon error setting up key package provider { uniqueClientIdentifier: %s }", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2667577B0](v40, -1, -1);
      MEMORY[0x2667577B0](v39, -1, -1);

      swift_unknownObjectRelease();
      (*(v38 + 8))(v63, v61);
    }

    else
    {

      swift_unknownObjectRelease();
      v67(v33, v35);
      (*(v38 + 8))(v36, v37);
    }

    v45 = v0[66];
    v46 = v0[65];
    v48 = v0[63];
    v47 = v0[64];
    v50 = v0[61];
    v49 = v0[62];
    v51 = v0[60];
    v52 = v0[56];
    v53 = v0[57];
    v54 = v0[53];
    v58 = v0[52];
    v60 = v0[49];
    v62 = v0[48];
    v64 = v0[45];
    v66 = v0[44];
    v68 = v0[41];

    v55 = v0[1];

    return v55(0);
  }
}

{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];

  v0[91] = v3(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v60 = v0;
  if (*(*(v0 + 728) + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 360)), (v2 & 1) != 0))
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 600);
    v5 = *(v0 + 360);
    outlined init with copy of RegistrationClientProxy(*(*(v0 + 728) + 56) + 56 * v1, v0 + 72);
    outlined destroy of RegClientIdentifier(v5);

    v6 = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v7 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v7;
    *(v0 + 48) = v6;
    *(v0 + 736) = *(v0 + 56);
    swift_unknownObjectRetain_n();
    *(v0 + 752) = static MLSActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v9, v8);
  }

  else
  {
    v10 = *(v0 + 544);
    v11 = *(v0 + 536);
    v12 = *(v0 + 496);
    v13 = *(v0 + 464);
    v14 = *(v0 + 360);
    v15 = *(v0 + 320);
    v16 = *(v0 + 296);

    outlined destroy of RegClientIdentifier(v14);
    v11(v12, v16, v13);
    v17 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v17, v51);
    v19 = *(v0 + 496);
    v20 = *(v0 + 464);
    v53 = *(v0 + 472);
    v55 = *(v0 + 560);
    v21 = *(v0 + 456);
    v22 = *(v0 + 432);
    v23 = *(v0 + 440);
    v24 = *(v0 + 424);
    v26 = *(v0 + 400);
    v25 = *(v0 + 408);
    v57 = *(v0 + 312);
    if (v18)
    {
      v49 = *(v0 + 400);
      v27 = swift_slowAlloc();
      v47 = v21;
      v28 = swift_slowAlloc();
      v59 = v28;
      *v27 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v45 = v24;
      v46 = v22;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v55(v19, v20);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v59);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_26524C000, v17, v51, "MLSDaemon error setting up key package exchanger { uniqueClientIdentifier: %s }", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);

      swift_unknownObjectRelease();
      (*(v25 + 8))(v45, v49);
      (*(v23 + 8))(v47, v46);
    }

    else
    {

      swift_unknownObjectRelease();
      v55(v19, v20);
      (*(v25 + 8))(v24, v26);
      (*(v23 + 8))(v21, v22);
    }

    v33 = *(v0 + 528);
    v34 = *(v0 + 520);
    v36 = *(v0 + 504);
    v35 = *(v0 + 512);
    v38 = *(v0 + 488);
    v37 = *(v0 + 496);
    v39 = *(v0 + 480);
    v40 = *(v0 + 448);
    v41 = *(v0 + 456);
    v42 = *(v0 + 424);
    v48 = *(v0 + 416);
    v50 = *(v0 + 392);
    v52 = *(v0 + 384);
    v54 = *(v0 + 360);
    v56 = *(v0 + 352);
    v58 = *(v0 + 328);

    v43 = *(v0 + 8);

    return v43(0);
  }
}

{
  v1 = v0[94];

  v2 = type metadata accessor for MLS.EncryptedRCSCredentialProvider();
  v0[95] = v2;
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[96] = MLS.EncryptedRCSCredentialProvider.init()();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v1 = v0[96];
  v2 = v0[77];
  v3 = v0[75];
  v4 = v0[39];
  v5 = MEMORY[0x277D4D1A0];
  v0[25] = v0[95];
  v0[26] = v5;
  v0[22] = v1;
  outlined destroy of RegistrationClientProxy((v0 + 2));
  swift_unknownObjectRetain();
  v0[97] = static MLSActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v7, v6);
}

{
  v1 = v0[97];
  v2 = v0[39];

  v0[98] = type metadata accessor for CommunicatorBroadcaster();
  v3 = swift_allocObject();
  v0[99] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v1 = v0[77];
  v2 = v0[75];
  v3 = v0[39];
  swift_unknownObjectRetain();
  v0[100] = static MLSActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v5, v4);
}

{
  v1 = v0[100];
  v2 = v0[39];

  v0[101] = type metadata accessor for DelegateBroadcaster();
  v3 = swift_allocObject();
  v0[102] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[92];
  v4 = v0[77];
  v5 = v0[75];
  v0[103] = swift_getObjectType();
  v0[104] = type metadata accessor for MLS.DaemonClientEventDeliverer();

  v0[105] = static MLSActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v7, v6);
}

{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[99];
  v7 = v0[98];
  v8 = v0[93];
  v9 = v0[92];

  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type CommunicatorBroadcaster and conformance CommunicatorBroadcaster, type metadata accessor for CommunicatorBroadcaster);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DelegateBroadcaster and conformance DelegateBroadcaster, type metadata accessor for DelegateBroadcaster);
  v0[106] = MLS.DaemonClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v31 = v0[106];
  v30 = v0[80];
  v28 = v0[86];
  v29 = v0[79];
  v1 = v0[56];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[52];
  v5 = v0[50];
  v6 = v0[48];
  v7 = v0[43];
  v26 = v0[44];
  v27 = v0[57];
  v24 = v0[85];
  v25 = v0[42];
  v35 = v0[41];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[38];
  MLS.UniqueClientIdentifier.clientIdentifier.getter();
  v11 = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister);
  v12 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister);
  outlined init with copy of SMAUserDefaultsProtocol((v0 + 22), (v0 + 27));
  v24(v4, v2, v5);
  v29(v1, v27, v3);
  (*(v7 + 16))(v26, v10, v25);

  static ServerBag.mlsBag.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218]);
  lazy protocol witness table accessor for type Data and conformance Data();
  default argument 7 of MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25SwiftMLSClientCoordinatorCy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25SwiftMLSClientCoordinatorCy_AC9AllMemberO10Foundation4DataVGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = *(MEMORY[0x277D4D0B8] + 4);
  v17 = swift_task_alloc();
  v0[107] = v17;
  *v17 = v0;
  v17[1] = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  v18 = v0[106];
  v19 = v0[56];
  v20 = v0[52];
  v21 = v0[48];
  v34 = v0[41];
  v33 = v0[44];
  v22 = MEMORY[0x277D4D128];

  return MEMORY[0x2821ACA88](v21, v18, v22, v11, v12, v0 + 27, v20, v19);
}

{
  v1 = *(v0 + 864);
  v2 = *(v0 + 816);
  v3 = *(v0 + 792);
  v4 = *(v0 + 616);
  v5 = *(v0 + 600);
  v6 = *(v0 + 320);
  *(v0 + 128) = *(v0 + 312);
  *(v0 + 136) = v1;
  *(v0 + 144) = v3;
  *(v0 + 152) = v2;
  *(v0 + 160) = *(v0 + 736);
  v7 = *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  *(v0 + 880) = v7;
  v8 = *v7 + 112;
  *(v0 + 888) = *v8;
  *(v0 + 896) = v8 & 0xFFFFFFFFFFFFLL | 0x3176000000000000;
  *(v0 + 904) = static MLSActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v10, v9);
}

{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[37];

  v3(v0 + 16, v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v64 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 320);
  (*(v0 + 536))(*(v0 + 488), *(v0 + 296), *(v0 + 464));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  log = v3;
  v5 = os_log_type_enabled(v3, v4);
  v49 = *(v0 + 792);
  v50 = *(v0 + 816);
  v51 = *(v0 + 736);
  v53 = *(v0 + 848);
  v6 = *(v0 + 488);
  v8 = *(v0 + 464);
  v7 = *(v0 + 472);
  v9 = *(v0 + 456);
  v11 = *(v0 + 432);
  v10 = *(v0 + 440);
  v12 = *(v0 + 408);
  v55 = *(v0 + 400);
  v57 = *(v0 + 424);
  v48 = *(v0 + 312);
  if (v5)
  {
    v45 = *(v0 + 864);
    v47 = *(v0 + 456);
    v13 = swift_slowAlloc();
    v46 = v11;
    v14 = swift_slowAlloc();
    v63 = v14;
    *v13 = 136315138;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v10;
    v17 = v16;
    v61 = *(v7 + 8);
    v61(v6, v8);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v63);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_26524C000, log, v4, "MLSDaemon setup SwiftMLSClientCoordinator { uniqueClientIdentifier: %s }", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x2667577B0](v14, -1, -1);
    MEMORY[0x2667577B0](v13, -1, -1);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v12 + 8))(v57, v55);
    (*(v44 + 8))(v47, v46);
  }

  else
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v61 = *(v7 + 8);
    v61(v6, v8);
    (*(v12 + 8))(v57, v55);
    (*(v10 + 8))(v9, v11);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  v19 = *(v0 + 320);
  (*(*(v0 + 472) + 16))(*(v0 + 480), *(v0 + 296), *(v0 + 464));
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v24 = *(v0 + 472);
  v23 = *(v0 + 480);
  v25 = *(v0 + 464);
  if (v22)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v63 = v27;
    *v26 = 136315138;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v61(v23, v25);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v63);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_26524C000, v20, v21, "MLSDaemon setupXPCConnection replying with success { uniqueClientIdentifier: %s }", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x2667577B0](v27, -1, -1);
    MEMORY[0x2667577B0](v26, -1, -1);
  }

  else
  {

    v61(v23, v25);
  }

  v32 = *(v0 + 528);
  v33 = *(v0 + 520);
  v35 = *(v0 + 504);
  v34 = *(v0 + 512);
  v37 = *(v0 + 488);
  v36 = *(v0 + 496);
  v38 = *(v0 + 480);
  v39 = *(v0 + 448);
  v40 = *(v0 + 456);
  v41 = *(v0 + 424);
  v52 = *(v0 + 416);
  v54 = *(v0 + 392);
  v56 = *(v0 + 384);
  v58 = *(v0 + 360);
  loga = *(v0 + 352);
  v62 = *(v0 + 328);

  v42 = *(v0 + 8);

  return v42(1);
}

{
  v1 = v0[106];
  v2 = v0[102];
  v3 = v0[99];
  v4 = v0[92];
  v29 = v0[57];
  v5 = v0[54];
  v6 = v0[55];
  v7 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v10 = v0[39];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v29, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  v30 = v0[109];
  v11 = v0[66];
  v12 = v0[65];
  v14 = v0[63];
  v13 = v0[64];
  v16 = v0[61];
  v15 = v0[62];
  v17 = v0[60];
  v19 = v0[56];
  v18 = v0[57];
  v20 = v0[53];
  v23 = v0[52];
  v24 = v0[49];
  v25 = v0[48];
  v26 = v0[45];
  v27 = v0[44];
  v28 = v0[41];

  v21 = v0[1];

  return v21(0);
}

{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[37];

  v3(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v36 = v0;
  v1 = *(v0 + 912);
  v2 = *(v0 + 472) + 16;
  v3 = *(v0 + 320);
  (*(v0 + 552))(*(v0 + 480), *(v0 + 296), *(v0 + 464));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 472);
  v7 = *(v0 + 480);
  v9 = *(v0 + 464);
  if (v6)
  {
    v33 = v1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315138;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v33(v7, v9);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v35);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_26524C000, v4, v5, "MLSDaemon setupXPCConnection replying with success { uniqueClientIdentifier: %s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x2667577B0](v11, -1, -1);
    MEMORY[0x2667577B0](v10, -1, -1);
  }

  else
  {

    v1(v7, v9);
  }

  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v19 = *(v0 + 504);
  v18 = *(v0 + 512);
  v21 = *(v0 + 488);
  v20 = *(v0 + 496);
  v22 = *(v0 + 480);
  v23 = *(v0 + 448);
  v24 = *(v0 + 456);
  v25 = *(v0 + 424);
  v28 = *(v0 + 416);
  v29 = *(v0 + 392);
  v30 = *(v0 + 384);
  v31 = *(v0 + 360);
  v32 = *(v0 + 352);
  v34 = *(v0 + 328);

  v26 = *(v0 + 8);

  return v26(1);
}

{
  v1 = v0[39];
  swift_unknownObjectRelease();
  v20 = v0[72];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v7 = v0[61];
  v6 = v0[62];
  v8 = v0[60];
  v10 = v0[56];
  v9 = v0[57];
  v11 = v0[53];
  v14 = v0[52];
  v15 = v0[49];
  v16 = v0[48];
  v17 = v0[45];
  v18 = v0[44];
  v19 = v0[41];

  v12 = v0[1];

  return v12(0);
}

uint64_t closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 856);
  v7 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v5 = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  }

  else
  {
    v5 = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.AllMember) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMR) + 48);
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.AllMember) -> (@unowned Bool, @error @owned Error);

  return v10(a2, a2 + v6);
}

uint64_t MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  outlined copy of Data._Representation(a1, a2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = Data.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26524C000, v6, v7, "MLSDaemon selfKeyPackage called { uniqueClientIdentifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x2667577B0](v9, -1, -1);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  type metadata accessor for MLS.SelfKeyPackageError();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v3;
  *(swift_allocObject() + 16) = v3;
  v14 = v3;
  outlined copy of Data._Representation(a1, a2);
  type metadata accessor for MLS.UniqueClientIdentifier();
  type metadata accessor for MLS.KeyPackageInfo();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError, MEMORY[0x277D4CF90]);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo, MEMORY[0x277D4CCE8]);
  v15 = v14;
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

void closure #1 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    (*(v4 + 16))(v7, a1, v3);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v4 + 8))(v7, v3);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_26524C000, v11, v12, "MLSDaemon selfKeyPackage decoded { uniqueClientIdentifier: %s }", v13, 0xCu);
      v18 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x2667577B0](v18, -1, -1);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[12] = v1;
  v2 = *v1 + 88;
  v0[13] = *v2;
  v0[14] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[15] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:), v4, v3);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  v0[16] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:), 0, 0);
}

{
  v48 = v0;
  if (*(v0[16] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[3]), (v2 & 1) != 0))
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];
    v6 = v0[3];
    v45 = v0[4];
    v7 = (*(v0[16] + 56) + 48 * v1);
    v0[17] = *v7;
    v0[18] = v7[1];
    v0[19] = v7[2];
    v0[20] = v7[3];
    v0[21] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    (*(v3 + 16))(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[8];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v47[0] = v15;
      *v14 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v11 + 8))(v12, v13);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v47);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_26524C000, v8, v9, "MLSDaemon selfKeyPackage calling SwiftMLS { uniqueClientIdentifier: %s }", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x2667577B0](v15, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
    }

    v42 = *(MEMORY[0x277D4D070] + 4);
    v46 = (*MEMORY[0x277D4D070] + MEMORY[0x277D4D070]);
    v43 = swift_task_alloc();
    v0[22] = v43;
    *v43 = v0;
    v43[1] = closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:);
    v44 = v0[2];

    return v46(v44);
  }

  else
  {
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[3];
    v24 = v0[4];

    (*(v22 + 16))(v20, v23, v21);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[11];
    v29 = v0[8];
    v30 = v0[9];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47[0] = v32;
      *v31 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v30 + 8))(v28, v29);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v47);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_26524C000, v25, v26, "MLSDaemon selfKeyPackage has no clientXPCProxy { uniqueClientIdentifier: %s }", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x2667577B0](v32, -1, -1);
      MEMORY[0x2667577B0](v31, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v28, v29);
    }

    (*(v0[6] + 104))(v0[7], *MEMORY[0x277D4D2B0], v0[5]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v38 = v0[10];
    v37 = v0[11];
    v39 = v0[7];

    v40 = v0[1];

    return v40();
  }
}

{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[7];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v0[23];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  outlined copy of Data._Representation(a1, a2);
  v29 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v14, v15))
  {
    v28 = a3;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136315138;
    v18 = Data.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v33);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon createGroup called { uniqueClientIdentifier: %s }", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2667577B0](v17, -1, -1);
    v21 = v16;
    a3 = v28;
    MEMORY[0x2667577B0](v21, -1, -1);
  }

  type metadata accessor for MLS.GroupCreationError();
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a5;
  v22[5] = a6;
  v22[6] = a7;
  v22[7] = a8;
  v22[8] = v29;
  v23 = swift_allocObject();
  v23[2] = v29;
  v23[3] = a3;
  v23[4] = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:);
  *(v24 + 24) = v23;
  v25 = v29;
  outlined copy of Data._Representation(a1, a2);
  v26 = v25;
  outlined copy of Data._Representation(a5, a6);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError, MEMORY[0x277D4CF00]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v72 = a1;
  v64 = a6;
  v65 = a7;
  v67 = a4;
  v68 = a5;
  v69 = a2;
  v70 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = type metadata accessor for MLS.UniqueClientIdentifier();
  v71 = *(v14 - 8);
  v15 = *(v71 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  v21 = type metadata accessor for JSONDecoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  v24 = v73;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v24)
  {
    v63 = v11;
    v72 = v7;
    v73 = v20;
    v26 = *(v21 + 48);
    v27 = *(v21 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v28 = v74;
    v29 = *(v21 + 48);
    v30 = *(v21 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationContext<Data> and conformance MLS.GroupCreationContext<A>, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v31 = v13;
    v32 = v72;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v33 = v71;
    v34 = v14;
    v35 = v73;
    v70 = v28;
    v36 = v34;

    v37 = v66;
    v38 = *(v66 + 16);
    v39 = v31;
    v40 = v63;
    v69 = v39;
    v38(v63);
    v41 = v35;
    v42 = v36;
    (*(v33 + 16))(v18, v41, v36);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v74 = v46;
      *v45 = 136315394;
      LODWORD(v68) = v44;
      v47 = MLS.SigningContext.identifier.getter();
      v49 = v48;
      (*(v66 + 8))(v40, v72);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v74);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v71 + 8))(v18, v42);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v74);
      v32 = v72;

      *(v45 + 14) = v54;
      _os_log_impl(&dword_26524C000, v43, v68, "MLSDaemon createGroup decoded { identifier: %s, uniqueClientIdentifier: %s }", v45, 0x16u);
      swift_arrayDestroy();
      v55 = v46;
      v33 = v71;
      MEMORY[0x2667577B0](v55, -1, -1);
      v56 = v45;
      v37 = v66;
      MEMORY[0x2667577B0](v56, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v18, v42);
      (*(v37 + 8))(v40, v32);
    }

    v57 = v65;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
    v59 = *(v58 + 48);
    v60 = *(v58 + 64);
    (*(v33 + 32))(v57, v73, v42);
    v61 = v69;
    *(v57 + v59) = v70;
    return (*(v37 + 32))(v57 + v60, v61, v32);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v7[23] = v17;
  v18 = *(v17 - 8);
  v7[24] = v18;
  v19 = *(v18 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)()
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

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:), v4, v3);
}

{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];

  v0[32] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:), 0, 0);
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
    v9 = MLS.GroupCreationContext.metricCollector.modify();
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
      _os_log_impl(&dword_26524C000, loga, v81, "MLSDaemon createGroup calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
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
    v64 = *(MEMORY[0x277D4D078] + 4);
    v88 = (*MEMORY[0x277D4D078] + MEMORY[0x277D4D078]);
    v65 = swift_task_alloc();
    v0[39] = v65;
    *v65 = v0;
    v65[1] = closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:);
    v66 = v0[27];
    v67 = v0[11];
    v68 = v0[12];
    v69 = v0[8];
    v70 = v0[6];

    return v88(v70, v67, v68, v69, v66);
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
      _os_log_impl(&dword_26524C000, v83, v82, "MLSDaemon createGroup has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
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

{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  v10 = v0[23];
  v13 = v0[25];
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[18];
  v17 = v0[15];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2(v7, v10);

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[24];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2(v7, v8);
  v10 = v0[40];
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[25];
  v14 = v0[22];
  v16 = v0[18];
  v15 = v0[19];
  v17 = v0[15];

  v18 = v0[1];

  return v18();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
  v8 = *(a2 + *(v7 + 48));
  v9 = *(v7 + 64);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, v8, a2 + v9);
}

uint64_t MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v16 = v10;
  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, v17);
  if (os_log_type_enabled(v18, v19))
  {
    v33 = a3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136315138;
    v22 = Data.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v38);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_26524C000, v18, v19, "MLSDaemon joinGroup called { uniqueClientIdentifier: %s }", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x2667577B0](v21, -1, -1);
    v25 = v20;
    a3 = v33;
    MEMORY[0x2667577B0](v25, -1, -1);
  }

  type metadata accessor for MLS.GroupCreationError();
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = v17;
  v26[4] = a5;
  v26[5] = a6;
  v26[6] = a7;
  v32 = v17;
  v27 = a8;
  v26[7] = a8;
  v26[8] = a9;
  v26[9] = a10;
  v26[10] = v16;
  v28 = swift_allocObject();
  v28[2] = v16;
  v28[3] = a3;
  v28[4] = a4;
  v34 = swift_allocObject();
  *(v34 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
  *(v34 + 24) = v28;
  v29 = v16;
  outlined copy of Data._Representation(a1, v32);
  v30 = v29;
  outlined copy of Data._Representation(a5, a6);
  outlined copy of Data._Representation(a7, v27);
  outlined copy of Data._Representation(a9, a10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError, MEMORY[0x277D4CF00]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, NSObject *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v74 = a6;
  v75 = a7;
  v77 = a4;
  v78 = a5;
  v81 = a2;
  v82 = a3;
  v86 = a1;
  v80 = a8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v85 = *(v79 - 8);
  v9 = *(v85 + 64);
  v10 = MEMORY[0x28223BE20](v79);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v76 = *(v13 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - v15;
  v17 = type metadata accessor for MLS.UniqueClientIdentifier();
  v83 = *(v17 - 8);
  v18 = *(v83 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v69 - v22;
  v24 = type metadata accessor for JSONDecoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v8)
  {
    v69 = v21;
    v70 = v13;
    v86 = v23;
    v71 = v16;
    v72 = v17;
    v28 = v84;
    v29 = v85;
    v30 = v79;
    v31 = v80;
    v32 = *(v24 + 48);
    v33 = *(v24 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v34 = v87;
    v35 = *(v24 + 48);
    v36 = *(v24 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessage<MLS.AllMember> and conformance MLS.IncomingMessage<A>, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v82 = v34;

    v37 = *(v24 + 48);
    v38 = *(v24 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationContext<Data> and conformance MLS.GroupCreationContext<A>, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v39 = v30;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v81 = 0;

    v40 = v73;
    (*(v29 + 16))(v73, v28, v30);
    v41 = v83;
    v42 = v69;
    v43 = v72;
    (*(v83 + 16))(v69, v86, v72);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v77 = v44;
      v47 = v46;
      v78 = swift_slowAlloc();
      v87 = v78;
      *v47 = 136315394;
      LODWORD(v75) = v45;
      v48 = MLS.SigningContext.identifier.getter();
      v49 = v43;
      v50 = v41;
      v52 = v51;
      (*(v85 + 8))(v40, v30);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v52, &v87);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v54 = v49;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v50 + 8))(v42, v49);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v87);
      v39 = v30;
      v59 = v54;

      *(v47 + 14) = v58;
      v60 = v77;
      _os_log_impl(&dword_26524C000, v77, v75, "MLSDaemon joinGroup decoded { identifier: %s, uniqueClientIdentifier: %s }", v47, 0x16u);
      v61 = v78;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v61, -1, -1);
      MEMORY[0x2667577B0](v47, -1, -1);

      v62 = v85;
    }

    else
    {

      (*(v41 + 8))(v42, v43);
      v63 = v85;
      (*(v85 + 8))(v40, v30);
      v59 = v43;
      v50 = v41;
      v62 = v63;
    }

    v64 = v71;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
    v66 = v65[12];
    v67 = v65[16];
    v68 = v65[20];
    (*(v50 + 32))(v31, v86, v59);
    *(v31 + v66) = v82;
    (*(v76 + 32))(v31 + v67, v64, v70);
    return (*(v62 + 32))(v31 + v68, v84, v39);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v8[24] = v18;
  v19 = *(v18 - 8);
  v8[25] = v19;
  v20 = *(v19 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[29] = v1;
  v2 = *v1 + 88;
  v0[30] = *v2;
  v0[31] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[32] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:), v4, v3);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];

  v0[33] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:), 0, 0);
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
    v81 = v0[11];
    v72 = v0[10];
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
    v9 = MLS.GroupCreationContext.metricCollector.modify();
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
      _os_log_impl(&dword_26524C000, loga, v82, "MLSDaemon joinGroup calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
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
    v64 = *(MEMORY[0x277D4D108] + 4);
    v89 = (*MEMORY[0x277D4D108] + MEMORY[0x277D4D108]);
    v65 = swift_task_alloc();
    v0[40] = v65;
    *v65 = v0;
    v65[1] = closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
    v66 = v0[28];
    v67 = v0[12];
    v68 = v0[13];
    v69 = v0[8];
    v70 = v0[9];
    v71 = v0[6];

    return v89(v71, v67, v68, v69, v70, v66);
  }

  else
  {
    v30 = v0[25];
    v29 = v0[26];
    v31 = v0[24];
    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[17];
    v35 = v0[10];
    v87 = v0[11];
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
      _os_log_impl(&dword_26524C000, v84, v83, "MLSDaemon joinGroup has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
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
    v3 = closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
  v8 = *(a2 + v7[12]);
  v9 = v7[16];
  v10 = v7[20];
  v14 = (a3 + *a3);
  v11 = a3[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, v8, a2 + v9, a2 + v10);
}

uint64_t MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v11 = a2;
  v12 = a1;
  outlined copy of Data._Representation(a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v12, v11);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v17 = Data.description.getter();
    v31 = v14;
    v19 = v12;
    v20 = v11;
    v21 = a3;
    v22 = v7;
    v23 = a6;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v33);

    *(v15 + 4) = v24;
    a6 = v23;
    v7 = v22;
    a3 = v21;
    v11 = v20;
    v12 = v19;
    _os_log_impl(&dword_26524C000, v13, v31, "MLSDaemon delete called { uniqueClientIdentifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2667577B0](v16, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  type metadata accessor for MLS.GroupDeletionError();
  v25 = swift_allocObject();
  v25[2] = v12;
  v25[3] = v11;
  v25[4] = a5;
  v25[5] = a6;
  v25[6] = v7;
  v26 = swift_allocObject();
  v26[2] = v7;
  v26[3] = a3;
  v26[4] = a4;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:);
  *(v27 + 24) = v26;
  v28 = v7;
  outlined copy of Data._Representation(v12, v11);
  v29 = v28;
  outlined copy of Data._Representation(a5, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError, MEMORY[0x277D4CF10]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupDeletionProcessedContext<Data> and conformance MLS.GroupDeletionProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a1;
  v56 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMR);
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
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupDeletionContext<Data> and conformance MLS.GroupDeletionContext<A>, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMR);
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
      _os_log_impl(&dword_26524C000, v50, v51, "MLSDaemon delete decoded { identifier: %s, uniqueClientIdentifier: %s }", v31, 0x16u);
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
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMR) + 48);
    (*(v22 + 32))(v47, v28, v10);
    return (*(v26 + 32))(v47 + v48, v56, v25);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMR);
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[19] = v1;
  v2 = *v1 + 88;
  v0[20] = *v2;
  v0[21] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[22] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:), v4, v3);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];

  v0[23] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:), 0, 0);
}

{
  v79 = v0;
  if (*(v0[23] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[3]), (v2 & 1) != 0))
  {
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[12];
    log = v0[11];
    v69 = v0[14];
    v6 = v0[4];
    v72 = v0[5];
    v65 = v0[18];
    v66 = v0[3];
    v7 = (*(v0[23] + 56) + 48 * v1);
    v0[24] = *v7;
    v0[25] = v7[1];
    v0[26] = v7[2];
    v0[27] = v7[3];
    v0[28] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    (*(v4 + 16))(v65, v6, v3);
    (*(v5 + 16))(v69, v66, log);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[18];
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    if (v10)
    {
      v70 = v9;
      v17 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v78[0] = v73;
      *v17 = 136315394;
      loga = v8;
      v18 = MLS.SigningContext.identifier.getter();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v78);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v15 + 8))(v14, v16);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v78);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_26524C000, loga, v70, "MLSDaemon delete calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v73, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v12 + 8))(v11, v13);
    }

    v59 = *(MEMORY[0x277D4D0F0] + 4);
    v75 = (*MEMORY[0x277D4D0F0] + MEMORY[0x277D4D0F0]);
    v60 = swift_task_alloc();
    v0[29] = v60;
    *v60 = v0;
    v60[1] = closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:);
    v61 = v0[6];
    v62 = v0[7];
    v63 = v0[4];
    v64 = v0[2];

    return (v75)(v64, v61, v62, v63);
  }

  else
  {
    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[15];
    v30 = v0[12];
    v29 = v0[13];
    v31 = v0[11];
    v32 = v0[4];
    v76 = v0[5];
    v33 = v0[3];

    (*(v27 + 16))(v26, v32, v28);
    (*(v30 + 16))(v29, v33, v31);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[16];
    v38 = v0[17];
    v39 = v0[15];
    v40 = v0[12];
    v41 = v0[13];
    v42 = v0[11];
    if (v36)
    {
      v74 = v34;
      v43 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78[0] = v77;
      *v43 = 136315394;
      v44 = MLS.SigningContext.identifier.getter();
      v71 = v35;
      v46 = v45;
      (*(v37 + 8))(v38, v39);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v78);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v40 + 8))(v41, v42);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v78);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_26524C000, v74, v71, "MLSDaemon delete has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v43, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v41, v42);
      (*(v37 + 8))(v38, v39);
    }

    (*(v0[9] + 104))(v0[10], *MEMORY[0x277D4D2B0], v0[8]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v53 = v0[17];
    v52 = v0[18];
    v55 = v0[13];
    v54 = v0[14];
    v56 = v0[10];

    v57 = v0[1];

    return v57();
  }
}

{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDeletionContext<Data>) -> (@out MLS.GroupDeletionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMR) + 48);
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v11 = a2;
  v12 = a1;
  outlined copy of Data._Representation(a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v12, v11);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v17 = Data.description.getter();
    v31 = v14;
    v19 = v12;
    v20 = v11;
    v21 = a3;
    v22 = v7;
    v23 = a6;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v33);

    *(v15 + 4) = v24;
    a6 = v23;
    v7 = v22;
    a3 = v21;
    v11 = v20;
    v12 = v19;
    _os_log_impl(&dword_26524C000, v13, v31, "MLSDaemon group called { uniqueClientIdentifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2667577B0](v16, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  type metadata accessor for MLS.GroupFetchError();
  v25 = swift_allocObject();
  v25[2] = v12;
  v25[3] = v11;
  v25[4] = a5;
  v25[5] = a6;
  v25[6] = v7;
  v26 = swift_allocObject();
  v26[2] = v7;
  v26[3] = a3;
  v26[4] = a4;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:);
  *(v27 + 24) = v26;
  v28 = v7;
  outlined copy of Data._Representation(v12, v11);
  v29 = v28;
  outlined copy of Data._Representation(a5, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMR);
  type metadata accessor for MLS.Group();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError, MEMORY[0x277D4CD18]);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group, MEMORY[0x277D4D1E0]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a1;
  v56 = a2;
  Context = type metadata accessor for MLS.GroupFetchContext();
  v53 = *(Context - 8);
  v4 = *(v53 + 64);
  v5 = MEMORY[0x28223BE20](Context);
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
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupFetchContext and conformance MLS.GroupFetchContext, MEMORY[0x277D4CDB8]);
    v25 = Context;
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
      v33 = MLS.GroupFetchContext.identifier.getter();
      v50 = v29;
      v34 = v28;
      v35 = v33;
      v37 = v36;
      (*(v53 + 8))(v32, Context);
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
      v25 = Context;

      *(v31 + 14) = v43;
      v44 = v50;
      _os_log_impl(&dword_26524C000, v50, v51, "MLSDaemon group decoded { identifier: %s, uniqueClientIdentifier: %s }", v31, 0x16u);
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
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMR) + 48);
    (*(v22 + 32))(v47, v28, v10);
    return (*(v26 + 32))(v47 + v48, v56, v25);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  Context = type metadata accessor for MLS.GroupFetchContext();
  v6[15] = Context;
  v14 = *(Context - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[19] = v1;
  v2 = *v1 + 88;
  v0[20] = *v2;
  v0[21] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[22] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:), v4, v3);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];

  v0[23] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:), 0, 0);
}

{
  v79 = v0;
  if (*(v0[23] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[3]), (v2 & 1) != 0))
  {
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[12];
    log = v0[11];
    v69 = v0[14];
    v6 = v0[4];
    v72 = v0[5];
    v65 = v0[18];
    v66 = v0[3];
    v7 = (*(v0[23] + 56) + 48 * v1);
    v0[24] = *v7;
    v0[25] = v7[1];
    v0[26] = v7[2];
    v0[27] = v7[3];
    v0[28] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    (*(v4 + 16))(v65, v6, v3);
    (*(v5 + 16))(v69, v66, log);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[18];
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    if (v10)
    {
      v70 = v9;
      v17 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v78[0] = v73;
      *v17 = 136315394;
      loga = v8;
      v18 = MLS.GroupFetchContext.identifier.getter();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v78);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v15 + 8))(v14, v16);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v78);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_26524C000, loga, v70, "MLSDaemon group calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v73, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v12 + 8))(v11, v13);
    }

    v59 = *(MEMORY[0x277D4D0E0] + 4);
    v75 = (*MEMORY[0x277D4D0E0] + MEMORY[0x277D4D0E0]);
    v60 = swift_task_alloc();
    v0[29] = v60;
    *v60 = v0;
    v60[1] = closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:);
    v61 = v0[6];
    v62 = v0[7];
    v63 = v0[4];
    v64 = v0[2];

    return (v75)(v64, v61, v62, v63);
  }

  else
  {
    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[15];
    v30 = v0[12];
    v29 = v0[13];
    v31 = v0[11];
    v32 = v0[4];
    v76 = v0[5];
    v33 = v0[3];

    (*(v27 + 16))(v26, v32, v28);
    (*(v30 + 16))(v29, v33, v31);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[16];
    v38 = v0[17];
    v39 = v0[15];
    v40 = v0[12];
    v41 = v0[13];
    v42 = v0[11];
    if (v36)
    {
      v74 = v34;
      v43 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78[0] = v77;
      *v43 = 136315394;
      v44 = MLS.GroupFetchContext.identifier.getter();
      v71 = v35;
      v46 = v45;
      (*(v37 + 8))(v38, v39);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v78);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v40 + 8))(v41, v42);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v78);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_26524C000, v74, v71, "MLSDaemon group has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v43, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v41, v42);
      (*(v37 + 8))(v38, v39);
    }

    (*(v0[9] + 104))(v0[10], *MEMORY[0x277D4D2B0], v0[8]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v53 = v0[17];
    v52 = v0[18];
    v55 = v0[13];
    v54 = v0[14];
    v56 = v0[10];

    v57 = v0[1];

    return v57();
  }
}

{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v0[30];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupFetchContext) -> (@out MLS.Group, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMR) + 48);
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a2 + v7);
}

void @objc MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock, int a7, uint64_t a8, void (*a9)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v28 = a1;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = v13;
  a9(v17, v19, v20, v22, v23, v25, a8, v26);

  outlined consume of Data._Representation(v23, v25);

  outlined consume of Data._Representation(v17, v19);
}

uint64_t MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined copy of Data._Representation(a1, a2);
  v26 = v6;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    v16 = Data.description.getter();
    v18 = a5;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v28);

    *(v14 + 4) = v19;
    a5 = v18;
    _os_log_impl(&dword_26524C000, v12, v13, "MLSDaemon updateGroupDetails called { uniqueClientIdentifier: %s }", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x2667577B0](v15, -1, -1);
    MEMORY[0x2667577B0](v14, -1, -1);
  }

  type metadata accessor for MLS.GroupUpdateError();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = v26;
  v20[7] = a5;
  v20[8] = a6;
  v21 = swift_allocObject();
  v21[2] = v26;
  v21[3] = a5;
  v21[4] = a6;
  v22 = swift_allocObject();
  *(v22 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:);
  *(v22 + 24) = v21;
  v23 = v26;

  outlined copy of Data._Representation(a1, a2);
  v24 = v23;

  outlined copy of Data._Representation(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError, MEMORY[0x277D4CD90]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v58 = a2;
  v56 = a5;
  v57 = a1;
  v51 = a4;
  v52 = a3;
  v53 = a6;
  v6 = type metadata accessor for MLS.GroupDetails();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = type metadata accessor for JSONDecoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  v20 = v59;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v20)
  {
    v59 = v16;
    v22 = v55;
    v23 = v56;
    v24 = *(v17 + 48);
    v25 = *(v17 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails, MEMORY[0x277D4CC68]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v49 = v9;
    v50 = v6;

    v26 = v22;
    v27 = *(v22 + 16);
    v28 = v14;
    v48 = v10;
    v27(v14, v59, v10);

    v30 = v57;
    v29 = v58;
    outlined copy of Data._Representation(v57, v58);
    v31 = v23;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    outlined consume of Data._Representation(v30, v29);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v60 = v52;
      *v34 = 136315650;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v31, &v60);
      *(v34 + 12) = 2080;
      v35 = Data.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v60);

      *(v34 + 14) = v37;
      *(v34 + 22) = 2080;
      v26 = v22;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v38 = v48;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v26 + 8))(v28, v38);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v60);

      *(v34 + 24) = v42;
      _os_log_impl(&dword_26524C000, v32, v33, "MLSDaemon updateGroupDetails decoded { group: %s, groupDetails: %s, uniqueClientIdentifier: %s }", v34, 0x20u);
      v43 = v52;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v43, -1, -1);
      MEMORY[0x2667577B0](v34, -1, -1);
    }

    else
    {

      v44 = *(v22 + 8);
      v38 = v48;
      v44(v28, v48);
    }

    v45 = v53;
    v46 = v54;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMR) + 48);
    (*(v26 + 32))(v45, v59, v38);
    return (*(v46 + 32))(v45 + v47, v49, v50);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[14] = v1;
  v2 = *v1 + 88;
  v0[15] = *v2;
  v0[16] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[17] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:), v4, v3);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];

  v0[18] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:), 0, 0);
}

{
  v56 = v0;
  if (*(v0[18] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[2]), (v2 & 1) != 0))
  {
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[6];
    v52 = v0[13];
    v53 = v0[4];
    v6 = v0[2];
    v7 = (*(v0[18] + 56) + 48 * v1);
    v0[19] = *v7;
    v0[20] = v7[1];
    v0[21] = v7[2];
    v0[22] = v7[3];
    v0[23] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    (*(v3 + 16))(v52, v6, v4);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[13];
    v13 = v0[10];
    v12 = v0[11];
    if (v10)
    {
      v15 = v0[5];
      v14 = v0[6];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v55[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v55);
      *(v16 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v55);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_26524C000, v8, v9, "MLSDaemon updateGroupDetails calling SwiftMLS { group: %s, uniqueClientIdentifier: %s }", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v17, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v47 = *(MEMORY[0x277D4D0F8] + 4);
    v54 = (*MEMORY[0x277D4D0F8] + MEMORY[0x277D4D0F8]);
    v48 = swift_task_alloc();
    v0[24] = v48;
    *v48 = v0;
    v48[1] = closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:);
    v49 = v0[5];
    v50 = v0[6];
    v51 = v0[3];

    return v54(v51, v49, v50);
  }

  else
  {
    v23 = v0[11];
    v22 = v0[12];
    v24 = v0[10];
    v25 = v0[6];
    v26 = v0[4];
    v27 = v0[2];

    (*(v23 + 16))(v22, v27, v24);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    v30 = os_log_type_enabled(v28, v29);
    v32 = v0[11];
    v31 = v0[12];
    v33 = v0[10];
    if (v30)
    {
      v35 = v0[5];
      v34 = v0[6];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55[0] = v37;
      *v36 = 136315394;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, v55);
      *(v36 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v32 + 8))(v31, v33);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v55);

      *(v36 + 14) = v41;
      _os_log_impl(&dword_26524C000, v28, v29, "MLSDaemon updateGroupDetails has no clientXPCProxy { group: %s, uniqueClientIdentifier: %s }", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v37, -1, -1);
      MEMORY[0x2667577B0](v36, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    (*(v0[8] + 104))(v0[9], *MEMORY[0x277D4D2B0], v0[7]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v43 = v0[12];
    v42 = v0[13];
    v44 = v0[9];

    v45 = v0[1];

    return v45(0);
  }
}

{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9(1);
}

{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v0[25];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[9];

  v10 = v0[1];

  return v10(0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDetails) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMR) + 48);
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error);

  return v10(a2, a2 + v6);
}

uint64_t MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v11 = a2;
  v12 = a1;
  outlined copy of Data._Representation(a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v12, v11);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v17 = Data.description.getter();
    v31 = v14;
    v19 = v12;
    v20 = v11;
    v21 = a3;
    v22 = v7;
    v23 = a6;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v33);

    *(v15 + 4) = v24;
    a6 = v23;
    v7 = v22;
    a3 = v21;
    v11 = v20;
    v12 = v19;
    _os_log_impl(&dword_26524C000, v13, v31, "MLSDaemon members called { uniqueClientIdentifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2667577B0](v16, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  type metadata accessor for MLS.GroupMembersError();
  v25 = swift_allocObject();
  v25[2] = v12;
  v25[3] = v11;
  v25[4] = a5;
  v25[5] = a6;
  v25[6] = v7;
  v26 = swift_allocObject();
  v26[2] = v7;
  v26[3] = a3;
  v26[4] = a4;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:);
  *(v27 + 24) = v26;
  v28 = v7;
  outlined copy of Data._Representation(v12, v11);
  v29 = v28;
  outlined copy of Data._Representation(a5, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError, MEMORY[0x277D4CDD0]);
  lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance <> Set<A>();
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a1;
  v56 = a2;
  v57 = type metadata accessor for MLS.GroupMembersContext();
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
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupMembersContext and conformance MLS.GroupMembersContext, MEMORY[0x277D4CF50]);
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
      v33 = MLS.GroupMembersContext.identifier.getter();
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
      _os_log_impl(&dword_26524C000, v50, v51, "MLSDaemon members decoded { identifier: %s, uniqueClientIdentifier: %s }", v31, 0x16u);
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
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMR) + 48);
    (*(v22 + 32))(v47, v28, v10);
    return (*(v26 + 32))(v47 + v48, v56, v25);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for MLS.GroupMembersContext();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[18] = v1;
  v2 = *v1 + 88;
  v0[19] = *v2;
  v0[20] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[21] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:), v4, v3);
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];

  v0[22] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:), 0, 0);
}

{
  v78 = v0;
  if (*(v0[22] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[2]), (v2 & 1) != 0))
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[11];
    log = v0[10];
    v68 = v0[13];
    v6 = v0[3];
    v71 = v0[4];
    v64 = v0[17];
    v65 = v0[2];
    v7 = (*(v0[22] + 56) + 48 * v1);
    v0[23] = *v7;
    v0[24] = v7[1];
    v0[25] = v7[2];
    v0[26] = v7[3];
    v0[27] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    (*(v4 + 16))(v64, v6, v3);
    (*(v5 + 16))(v68, v65, log);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[17];
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];
    v16 = v0[10];
    v15 = v0[11];
    if (v10)
    {
      v69 = v9;
      v17 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v77[0] = v72;
      *v17 = 136315394;
      loga = v8;
      v18 = MLS.GroupMembersContext.identifier.getter();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v77);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v15 + 8))(v14, v16);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v77);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_26524C000, loga, v69, "MLSDaemon members calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v72, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v12 + 8))(v11, v13);
    }

    v59 = *(MEMORY[0x277D4D080] + 4);
    v74 = (*MEMORY[0x277D4D080] + MEMORY[0x277D4D080]);
    v60 = swift_task_alloc();
    v0[28] = v60;
    *v60 = v0;
    v60[1] = closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:);
    v62 = v0[5];
    v61 = v0[6];
    v63 = v0[3];

    return (v74)(v62, v61, v63);
  }

  else
  {
    v27 = v0[15];
    v26 = v0[16];
    v28 = v0[14];
    v30 = v0[11];
    v29 = v0[12];
    v31 = v0[10];
    v32 = v0[3];
    v75 = v0[4];
    v33 = v0[2];

    (*(v27 + 16))(v26, v32, v28);
    (*(v30 + 16))(v29, v33, v31);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[15];
    v38 = v0[16];
    v39 = v0[14];
    v40 = v0[11];
    v41 = v0[12];
    v42 = v0[10];
    if (v36)
    {
      v73 = v34;
      v43 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77[0] = v76;
      *v43 = 136315394;
      v44 = MLS.GroupMembersContext.identifier.getter();
      v70 = v35;
      v46 = v45;
      (*(v37 + 8))(v38, v39);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v77);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v40 + 8))(v41, v42);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v77);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_26524C000, v73, v70, "MLSDaemon members has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v43, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v41, v42);
      (*(v37 + 8))(v38, v39);
    }

    (*(v0[8] + 104))(v0[9], *MEMORY[0x277D4D2B0], v0[7]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v53 = v0[16];
    v52 = v0[17];
    v55 = v0[12];
    v54 = v0[13];
    v56 = v0[9];

    v57 = v0[1];

    return v57();
  }
}

{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[9];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v11 = v0[1];
  v12 = v0[30];

  return v11(v12);
}

{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v0[29];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:);
  }

  else
  {
    *(v4 + 240) = a1;
    v7 = closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupMembersContext) -> (@owned Set<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMR) + 48);
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupMembersContext) -> (@owned Set<MLS.AllMember>, @error @owned Error);

  return v10(a2, a2 + v6);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupMembersContext) -> (@owned Set<MLS.AllMember>, @error @owned Error)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
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
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon add called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    v22 = v17;
    a5 = v16;
    MEMORY[0x2667577B0](v22, -1, -1);
  }

  type metadata accessor for MLS.GroupOperationError();
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
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
  *(v25 + 24) = v24;
  v26 = v29;
  outlined copy of Data._Representation(a1, a2);
  v27 = v26;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError, MEMORY[0x277D4CF68]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
  v7[23] = v17;
  v18 = *(v17 - 8);
  v7[24] = v18;
  v19 = *(v18 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)()
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

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:), v4, v3);
}

{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];

  v0[32] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:), 0, 0);
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
    v9 = MLS.GroupOperationContext.metricCollector.modify();
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
      _os_log_impl(&dword_26524C000, loga, v81, "MLSDaemon add calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
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
    v64 = *(MEMORY[0x277D4D0D0] + 4);
    v88 = (*MEMORY[0x277D4D0D0] + MEMORY[0x277D4D0D0]);
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
      _os_log_impl(&dword_26524C000, v83, v82, "MLSDaemon add has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
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

{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMR);
  v8 = *(a2 + *(v7 + 48));
  v9 = *(v7 + 64);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, v8, a2 + v9);
}

uint64_t MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
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
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon kick called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    v22 = v17;
    a5 = v16;
    MEMORY[0x2667577B0](v22, -1, -1);
  }

  type metadata accessor for MLS.GroupOperationError();
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
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:);
  *(v25 + 24) = v24;
  v26 = v29;
  outlined copy of Data._Representation(a1, a2);
  v27 = v26;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError, MEMORY[0x277D4CF68]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, NSObject *a6@<X6>, const char *a7@<X7>, uint64_t a8@<X8>)
{
  v65 = a7;
  v66 = a6;
  v74 = a1;
  v68 = a4;
  v69 = a5;
  v72 = a2;
  v73 = a3;
  v67 = a8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
  v71 = *(v8 - 8);
  v9 = *(v71 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = type metadata accessor for MLS.UniqueClientIdentifier();
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  v22 = type metadata accessor for JSONDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  v25 = v75;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v25)
  {
    v62 = v12;
    v63 = v19;
    v74 = v15;
    v75 = v21;
    v28 = v70;
    v27 = v71;
    v64 = v8;
    v29 = *(v22 + 48);
    v30 = *(v22 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v31 = v76;
    v32 = *(v22 + 48);
    v33 = *(v22 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationContext<Data> and conformance MLS.GroupOperationContext<A>, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
    v34 = v64;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v36 = v74;
    v35 = v75;
    v73 = 0;
    v72 = v31;

    v37 = v27;
    v38 = v62;
    (*(v27 + 16))(v62, v14, v34);
    v39 = v28;
    v40 = *(v28 + 16);
    v41 = v63;
    v40(v63, v35, v36);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v41;
      v45 = v37;
      v46 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v76 = v69;
      *v46 = 136315394;
      LODWORD(v68) = v43;
      v47 = MLS.SigningContext.identifier.getter();
      v66 = v42;
      v48 = v47;
      v50 = v49;
      (*(v45 + 8))(v38, v64);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v76);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v39 + 8))(v44, v36);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v76);

      *(v46 + 14) = v55;
      v56 = v66;
      _os_log_impl(&dword_26524C000, v66, v68, v65, v46, 0x16u);
      v57 = v69;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v57, -1, -1);
      v34 = v64;
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v41, v36);
      (*(v37 + 8))(v38, v34);
      v45 = v37;
    }

    v58 = v67;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMR);
    v60 = *(v59 + 48);
    v61 = *(v59 + 64);
    (*(v39 + 32))(v58, v75, v36);
    *(v58 + v60) = v72;
    return (*(v45 + 32))(v58 + v61, v14, v34);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
  v7[23] = v17;
  v18 = *(v17 - 8);
  v7[24] = v18;
  v19 = *(v18 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:)()
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

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:), v4, v3);
}

{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];

  v0[32] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:), 0, 0);
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
    v9 = MLS.GroupOperationContext.metricCollector.modify();
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
      _os_log_impl(&dword_26524C000, loga, v81, "MLSDaemon kick calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
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
    v64 = *(MEMORY[0x277D4D0D8] + 4);
    v88 = (*MEMORY[0x277D4D0D8] + MEMORY[0x277D4D0D8]);
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
      _os_log_impl(&dword_26524C000, v83, v82, "MLSDaemon kick has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
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

void @objc MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)(void *a1, int a2, void *a3, void *a4, void *a5, void *a6, void *aBlock, int a8, uint64_t a9, void (*a10)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v15 = _Block_copy(aBlock);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v33 = a1;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = swift_allocObject();
  *(v32 + 16) = v15;
  a10(v20, v22, v23, v25, v26, v28, v29, v31, a9, v32);

  outlined consume of Data._Representation(v29, v31);

  outlined consume of Data._Representation(v23, v25);
  outlined consume of Data._Representation(v20, v22);
}

uint64_t MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v11 = a2;
  v12 = a1;
  outlined copy of Data._Representation(a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v12, v11);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v17 = Data.description.getter();
    v31 = v14;
    v19 = v12;
    v20 = v11;
    v21 = a3;
    v22 = v7;
    v23 = a6;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v33);

    *(v15 + 4) = v24;
    a6 = v23;
    v7 = v22;
    a3 = v21;
    v11 = v20;
    v12 = v19;
    _os_log_impl(&dword_26524C000, v13, v31, "MLSDaemon leave called { uniqueClientIdentifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2667577B0](v16, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  type metadata accessor for MLS.GroupOperationError();
  v25 = swift_allocObject();
  v25[2] = v12;
  v25[3] = v11;
  v25[4] = a5;
  v25[5] = a6;
  v25[6] = v7;
  v26 = swift_allocObject();
  v26[2] = v7;
  v26[3] = a3;
  v26[4] = a4;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:);
  *(v27 + 24) = v26;
  v28 = v7;
  outlined copy of Data._Representation(v12, v11);
  v29 = v28;
  outlined copy of Data._Representation(a5, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError, MEMORY[0x277D4CF68]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a1;
  v56 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
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
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationContext<Data> and conformance MLS.GroupOperationContext<A>, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
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
      _os_log_impl(&dword_26524C000, v50, v51, "MLSDaemon leave decoded { identifier: %s, uniqueClientIdentifier: %s }", v31, 0x16u);
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
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMR) + 48);
    (*(v22 + 32))(v47, v28, v10);
    return (*(v26 + 32))(v47 + v48, v56, v25);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v13 = type metadata accessor for Metric();
  v6[19] = v13;
  v14 = *(v13 - 8);
  v6[20] = v14;
  v15 = *(v14 + 64) + 15;
  v6[21] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
  v6[22] = v16;
  v17 = *(v16 - 8);
  v6[23] = v17;
  v18 = *(v17 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[27] = v1;
  v2 = *v1 + 88;
  v0[28] = *v2;
  v0[29] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[30] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:), v4, v3);
}

{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];

  v0[31] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:), 0, 0);
}

{
  v89 = v0;
  if (*(v0[31] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[26];
    v4 = v0[23];
    v83 = v0[22];
    v5 = v0[20];
    v71 = v0[21];
    v6 = v0[19];
    v73 = v0[16];
    v74 = v0[25];
    v75 = v0[15];
    log = v0[18];
    v79 = v0[9];
    v70 = v0[8];
    v72 = v0[7];
    v7 = (*(v0[31] + 56) + 48 * v1);
    v0[32] = *v7;
    v0[33] = v7[1];
    v0[34] = v7[2];
    v0[35] = v7[3];
    v0[36] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v70, v83);
    (*(v5 + 104))(v71, *MEMORY[0x277D4D278], v6);
    v9 = MLS.GroupOperationContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v71, v6);
    v9(v0 + 2, 0);
    v8(v74, v70, v83);
    (*(v73 + 16))(log, v72, v75);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[25];
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[18];
    v18 = v0[15];
    v17 = v0[16];
    if (v12)
    {
      v80 = v11;
      v19 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v88[0] = v84;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v76 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v88);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v76, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v88);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v80, "MLSDaemon leave calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v84, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[37] = v23;
    v64 = *(MEMORY[0x277D4D0E8] + 4);
    v87 = (*MEMORY[0x277D4D0E8] + MEMORY[0x277D4D0E8]);
    v65 = swift_task_alloc();
    v0[38] = v65;
    *v65 = v0;
    v65[1] = closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:);
    v66 = v0[26];
    v67 = v0[10];
    v68 = v0[11];
    v69 = v0[6];

    return v87(v69, v67, v68, v66);
  }

  else
  {
    v30 = v0[23];
    v29 = v0[24];
    v31 = v0[22];
    v33 = v0[16];
    v32 = v0[17];
    v34 = v0[15];
    v35 = v0[8];
    v85 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[23];
    v41 = v0[24];
    v42 = v0[22];
    v43 = v0[16];
    v44 = v0[17];
    v45 = v0[15];
    if (v39)
    {
      v82 = v37;
      v46 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v81 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v88);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v88);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v82, v81, "MLSDaemon leave has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v86, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[13] + 104))(v0[14], *MEMORY[0x277D4D2B0], v0[12]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v56 = v0[25];
    v55 = v0[26];
    v57 = v0[24];
    v58 = v0[21];
    v60 = v0[17];
    v59 = v0[18];
    v61 = v0[14];

    v62 = v0[1];

    return v62();
  }
}

{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v6 = v0[33];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[23];
  v10 = v0[22];
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[18];
  v16 = v0[17];
  v17 = v0[14];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2(v7, v10);

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[26];
  v8 = v0[22];
  v9 = v0[23];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2(v7, v8);
  v10 = v0[39];
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[24];
  v14 = v0[21];
  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[14];

  v18 = v0[1];

  return v18();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMR) + 48);
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v11 = a2;
  v12 = a1;
  outlined copy of Data._Representation(a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v12, v11);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v17 = Data.description.getter();
    v31 = v14;
    v19 = v12;
    v20 = v11;
    v21 = a3;
    v22 = v7;
    v23 = a6;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v33);

    *(v15 + 4) = v24;
    a6 = v23;
    v7 = v22;
    a3 = v21;
    v11 = v20;
    v12 = v19;
    _os_log_impl(&dword_26524C000, v13, v31, "MLSDaemon downgrade called { uniqueClientIdentifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2667577B0](v16, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  type metadata accessor for MLS.DowngradeError();
  v25 = swift_allocObject();
  v25[2] = v12;
  v25[3] = v11;
  v25[4] = a5;
  v25[5] = a6;
  v25[6] = v7;
  v26 = swift_allocObject();
  v26[2] = v7;
  v26[3] = a3;
  v26[4] = a4;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:);
  *(v27 + 24) = v26;
  v28 = v7;
  outlined copy of Data._Representation(v12, v11);
  v29 = v28;
  outlined copy of Data._Representation(a5, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError, MEMORY[0x277D4CCE0]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeProcessedContext<Data> and conformance MLS.DowngradeProcessedContext<A>, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a1;
  v56 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMR);
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
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeContext<Data> and conformance MLS.DowngradeContext<A>, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMR);
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
      _os_log_impl(&dword_26524C000, v50, v51, "MLSDaemon downgrade decoded { identifier: %s, uniqueClientIdentifier: %s }", v31, 0x16u);
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
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMR) + 48);
    (*(v22 + 32))(v47, v28, v10);
    return (*(v26 + 32))(v47 + v48, v56, v25);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v13 = type metadata accessor for Metric();
  v6[19] = v13;
  v14 = *(v13 - 8);
  v6[20] = v14;
  v15 = *(v14 + 64) + 15;
  v6[21] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMR);
  v6[22] = v16;
  v17 = *(v16 - 8);
  v6[23] = v17;
  v18 = *(v17 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[27] = v1;
  v2 = *v1 + 88;
  v0[28] = *v2;
  v0[29] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[30] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:), v4, v3);
}

{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];

  v0[31] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:), 0, 0);
}

{
  v89 = v0;
  if (*(v0[31] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[26];
    v4 = v0[23];
    v83 = v0[22];
    v5 = v0[20];
    v71 = v0[21];
    v6 = v0[19];
    v73 = v0[16];
    v74 = v0[25];
    v75 = v0[15];
    log = v0[18];
    v79 = v0[9];
    v70 = v0[8];
    v72 = v0[7];
    v7 = (*(v0[31] + 56) + 48 * v1);
    v0[32] = *v7;
    v0[33] = v7[1];
    v0[34] = v7[2];
    v0[35] = v7[3];
    v0[36] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v70, v83);
    (*(v5 + 104))(v71, *MEMORY[0x277D4D278], v6);
    v9 = MLS.DowngradeContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v71, v6);
    v9(v0 + 2, 0);
    v8(v74, v70, v83);
    (*(v73 + 16))(log, v72, v75);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[25];
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[18];
    v18 = v0[15];
    v17 = v0[16];
    if (v12)
    {
      v80 = v11;
      v19 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v88[0] = v84;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v76 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v88);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v76, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v88);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v80, "MLSDaemon downgrade calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v84, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[37] = v23;
    v64 = *(MEMORY[0x277D4D100] + 4);
    v87 = (*MEMORY[0x277D4D100] + MEMORY[0x277D4D100]);
    v65 = swift_task_alloc();
    v0[38] = v65;
    *v65 = v0;
    v65[1] = closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:);
    v66 = v0[26];
    v67 = v0[10];
    v68 = v0[11];
    v69 = v0[6];

    return v87(v69, v67, v68, v66);
  }

  else
  {
    v30 = v0[23];
    v29 = v0[24];
    v31 = v0[22];
    v33 = v0[16];
    v32 = v0[17];
    v34 = v0[15];
    v35 = v0[8];
    v85 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[23];
    v41 = v0[24];
    v42 = v0[22];
    v43 = v0[16];
    v44 = v0[17];
    v45 = v0[15];
    if (v39)
    {
      v82 = v37;
      v46 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v81 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v88);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v88);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v82, v81, "MLSDaemon downgrade has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v86, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[13] + 104))(v0[14], *MEMORY[0x277D4D2B0], v0[12]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v56 = v0[25];
    v55 = v0[26];
    v57 = v0[24];
    v58 = v0[21];
    v60 = v0[17];
    v59 = v0[18];
    v61 = v0[14];

    v62 = v0[1];

    return v62();
  }
}

{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:);
  }

  else
  {
    v3 = closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.DowngradeContext<Data>) -> (@out MLS.DowngradeProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMR) + 48);
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
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
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon applicationEncrypt called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    v22 = v17;
    a5 = v16;
    MEMORY[0x2667577B0](v22, -1, -1);
  }

  type metadata accessor for MLS.EncryptionError();
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
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:);
  *(v25 + 24) = v24;
  v26 = v29;
  outlined copy of Data._Representation(a1, a2);
  v27 = v26;
  outlined copy of Data._Representation(a7, a8);
  outlined copy of Data._Representation(a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError, MEMORY[0x277D4CD08]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.EncryptionProcessedContext<Data> and conformance MLS.EncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a1;
  v56 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
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
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.EncryptionContext<MLS.AllMember, Data> and conformance MLS.EncryptionContext<A, B>, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
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
      _os_log_impl(&dword_26524C000, v50, v51, "MLSDaemon applicationEncrypt decoded { identifier: %s, uniqueClientIdentifier: %s }", v31, 0x16u);
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
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR) + 48);
    (*(v22 + 32))(v47, v28, v10);
    return (*(v26 + 32))(v47 + v48, v56, v25);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v8[24] = v18;
  v19 = *(v18 - 8);
  v8[25] = v19;
  v20 = *(v19 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)()
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

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:), v4, v3);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];

  v0[33] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:), 0, 0);
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
    v9 = MLS.EncryptionContext.metricCollector.modify();
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
      _os_log_impl(&dword_26524C000, loga, v82, "MLSDaemon applicationEncrypt calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
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
    v64 = *(MEMORY[0x277D4D0C0] + 4);
    v89 = (*MEMORY[0x277D4D0C0] + MEMORY[0x277D4D0C0]);
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
      _os_log_impl(&dword_26524C000, v84, v83, "MLSDaemon applicationEncrypt has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
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

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.EncryptionContext<MLS.AllMember, Data>) -> (@out MLS.EncryptionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR) + 48);
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
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
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon applicationSign called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    v22 = v17;
    a5 = v16;
    MEMORY[0x2667577B0](v22, -1, -1);
  }

  type metadata accessor for MLS.SigningError();
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
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:);
  *(v25 + 24) = v24;
  v26 = v29;
  outlined copy of Data._Representation(a1, a2);
  v27 = v26;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError, MEMORY[0x277D4CCA8]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.SigningProcessedContext<Data> and conformance MLS.SigningProcessedContext<A>, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMR);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v64 = a6;
  v67 = a4;
  v68 = a5;
  v73 = a2;
  v74 = a3;
  v76 = a1;
  v66 = a7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
  v72 = *(v70 - 8);
  v8 = *(v72 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v65 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  v13 = type metadata accessor for MLS.SigningInput();
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MLS.UniqueClientIdentifier();
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v61 - v21;
  v23 = type metadata accessor for JSONDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v7)
  {
    v62 = v12;
    v63 = v16;
    v61 = v20;
    v76 = v22;
    v28 = v71;
    v27 = v72;
    v29 = *(v23 + 48);
    v30 = *(v23 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput, MEMORY[0x277D4CCB0]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v31 = *(v23 + 48);
    v32 = *(v23 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.SigningContext<Data> and conformance MLS.SigningContext<A>, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
    v33 = v62;
    v34 = v70;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v73 = 0;
    v74 = v13;

    v35 = v63;
    v36 = v27;
    v37 = v65;
    (*(v27 + 16))(v65, v33, v34);
    v38 = v28;
    v39 = *(v28 + 16);
    v40 = v61;
    v39(v61, v76, v35);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      LODWORD(v67) = v42;
      v44 = v43;
      v68 = swift_slowAlloc();
      v77 = v68;
      *v44 = 136315394;
      v45 = MLS.SigningContext.identifier.getter();
      v46 = v37;
      v48 = v47;
      (*(v36 + 8))(v46, v70);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v48, &v77);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v38 + 8))(v40, v35);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v77);
      v34 = v70;

      *(v44 + 14) = v53;
      _os_log_impl(&dword_26524C000, v41, v67, "MLSDaemon applicationSign decoded { identifier: %s, uniqueClientIdentifier: %s }", v44, 0x16u);
      v54 = v68;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v54, -1, -1);
      MEMORY[0x2667577B0](v44, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v40, v35);
      (*(v36 + 8))(v37, v34);
    }

    v55 = v66;
    v56 = v38;
    v57 = v69;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMR);
    v59 = *(v58 + 48);
    v60 = *(v58 + 64);
    (*(v56 + 32))(v55, v76, v35);
    (*(v57 + 32))(v55 + v59, v75, v74);
    return (*(v36 + 32))(v55 + v60, v62, v34);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
  v7[23] = v17;
  v18 = *(v17 - 8);
  v7[24] = v18;
  v19 = *(v18 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)()
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

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:), v4, v3);
}

{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];

  v0[32] = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:), 0, 0);
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
    v9 = MLS.SigningContext.metricCollector.modify();
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
      _os_log_impl(&dword_26524C000, loga, v81, "MLSDaemon applicationSign calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
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
    v64 = *(MEMORY[0x277D4D088] + 4);
    v88 = (*MEMORY[0x277D4D088] + MEMORY[0x277D4D088]);
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
      _os_log_impl(&dword_26524C000, v83, v82, "MLSDaemon applicationSign has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
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