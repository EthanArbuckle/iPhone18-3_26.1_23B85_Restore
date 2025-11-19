uint64_t KDSRegistrationStateMachine.obtainPhoneNumberInfo()()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for PhoneNumberInfo(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[6] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.obtainPhoneNumberInfo(), v6, v5);
}

{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
  v3 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator), v2);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v3 + 8);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = KDSRegistrationStateMachine.obtainPhoneNumberInfo();
  v9 = v0[5];

  return v11(v9, v4, v5, v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.obtainPhoneNumberInfo();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.obtainPhoneNumberInfo();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v6 = type metadata accessor for URI();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3, v2, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  (*(*v5 + 368))(v3);
  v8 = (v2 + *(v4 + 20));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(*v5 + 392);

  v11(v9, v10);
  (*(*v5 + 416))(*(v2 + *(v4 + 24)));
  outlined destroy of PhoneNumberInfo(v2);

  v12 = v0[1];

  return v12();
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t KDSRegistrationStateMachine.obtainKDSVendedClientID()()
{
  v1[147] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR) - 8) + 64) + 15;
  v1[148] = swift_task_alloc();
  v3 = type metadata accessor for URI();
  v1[149] = v3;
  v4 = *(v3 - 8);
  v1[150] = v4;
  v5 = *(v4 + 64) + 15;
  v1[151] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[152] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[153] = v7;
  v1[154] = v6;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.obtainKDSVendedClientID(), v7, v6);
}

{
  v63 = v0;
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1184);
  (*(**(v0 + 1176) + 360))();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1216);
    v5 = *(v0 + 1184);

    outlined destroy of MLS.KeyPackageProvider?(v5, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v6 = 12;
    swift_willThrow();
LABEL_13:
    v29 = *(v0 + 1208);
    v30 = *(v0 + 1184);

    v31 = *(v0 + 8);

    return v31();
  }

  v7 = *(v0 + 1176);
  v8 = (*(*(v0 + 1200) + 32))(*(v0 + 1208), *(v0 + 1184), *(v0 + 1192));
  v9 = (*(*v7 + 384))(v8);
  if (!v10)
  {
    v24 = *(v0 + 1216);
    v25 = *(v0 + 1208);
    v26 = *(v0 + 1200);
    v27 = *(v0 + 1192);

    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v28 = 14;
    swift_willThrow();
    (*(v26 + 8))(v25, v27);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  v13 = *(v0 + 1176);
  v14 = (*(*v13 + 408))();
  if (v14 == 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = (*(*v13 + 432))();
  v18 = v17;
  if (v17)
  {
  }

  v19 = *(v0 + 1208);
  v20 = MEMORY[0x266756630](v16);
  if (v15 > 1u)
  {
    if (v15 == 2)
    {
      v22 = 0xE700000000000000;
      v23 = 0x7373654C534D53;
    }

    else
    {
      v22 = 0xE800000000000000;
      v23 = 0x6E656B6F54534352;
    }
  }

  else if (v15)
  {
    v22 = 0xE300000000000000;
    v23 = 5459283;
  }

  else
  {
    v22 = 0xE700000000000000;
    v23 = 0x6E776F6E6B6E55;
  }

  v33 = *(v0 + 1176);
  *(v0 + 16) = v20;
  *(v0 + 24) = v21;
  *(v0 + 32) = v11;
  *(v0 + 40) = v12;
  *(v0 + 48) = v23;
  *(v0 + 56) = v22;
  *(v0 + 64) = v18 == 0;
  *(v0 + 72) = xmmword_2653419D0;
  v34 = (*(*v33 + 504))();
  if (v35 >> 60 != 15)
  {
    v36 = v34;
    v37 = v35;
    outlined consume of Data?(0, 0xF000000000000000);
    *(v0 + 72) = v36;
    *(v0 + 80) = v37;
  }

  v38 = *(v0 + 1176);
  v39 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v40 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v40;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v39;
  outlined init with copy of GetClientIDRequest(v0 + 88, v0 + 160);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  outlined destroy of GetClientIDRequest(v0 + 88);
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v62 = v44;
    *v43 = 136315138;
    v45 = *(v0 + 104);
    v46 = *(v0 + 136);
    *(v0 + 912) = *(v0 + 120);
    *(v0 + 928) = v46;
    *(v0 + 944) = *(v0 + 152);
    *(v0 + 880) = *(v0 + 88);
    *(v0 + 896) = v45;
    outlined init with copy of GetClientIDRequest(v0 + 88, v0 + 952);
    v47 = String.init<A>(describing:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v62);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_26524C000, v41, v42, "GetClientID Request: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x2667577B0](v44, -1, -1);
    MEMORY[0x2667577B0](v43, -1, -1);
  }

  v50 = (*(v0 + 1176) + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v51 = v50[3];
  v52 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v51);
  swift_beginAccess();
  v54 = *(v0 + 16);
  v53 = *(v0 + 32);
  *(v0 + 248) = v53;
  v55 = *(v0 + 48);
  v56 = *(v0 + 64);
  *(v0 + 264) = v55;
  *(v0 + 280) = v56;
  v57 = *(v0 + 80);
  *(v0 + 296) = v57;
  *(v0 + 232) = v54;
  *(v0 + 336) = v55;
  *(v0 + 352) = v56;
  *(v0 + 368) = v57;
  *(v0 + 304) = v54;
  *(v0 + 320) = v53;
  v58 = *(v52 + 8);
  outlined init with copy of GetClientIDRequest(v0 + 232, v0 + 376);
  v61 = (v58 + *v58);
  v59 = v58[1];
  v60 = swift_task_alloc();
  *(v0 + 1240) = v60;
  *v60 = v0;
  v60[1] = KDSRegistrationStateMachine.obtainKDSVendedClientID();

  return v61(v0 + 1024, v0 + 304, v51, v52);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1240);
  v15 = *v1;
  *(*v1 + 1248) = v0;

  if (v0)
  {
    *(v2 + 520) = *(v2 + 304);
    v4 = *(v2 + 320);
    v5 = *(v2 + 336);
    v6 = *(v2 + 352);
    *(v2 + 584) = *(v2 + 368);
    *(v2 + 552) = v5;
    *(v2 + 568) = v6;
    *(v2 + 536) = v4;
    outlined destroy of GetClientIDRequest(v2 + 520);
    v7 = *(v2 + 1232);
    v8 = *(v2 + 1224);
    v9 = KDSRegistrationStateMachine.obtainKDSVendedClientID();
  }

  else
  {
    v10 = *(v2 + 304);
    v11 = *(v2 + 320);
    v12 = *(v2 + 336);
    v13 = *(v2 + 352);
    *(v2 + 656) = *(v2 + 368);
    *(v2 + 624) = v12;
    *(v2 + 640) = v13;
    *(v2 + 592) = v10;
    *(v2 + 608) = v11;
    outlined destroy of GetClientIDRequest(v2 + 592);
    v7 = *(v2 + 1232);
    v8 = *(v2 + 1224);
    v9 = KDSRegistrationStateMachine.obtainKDSVendedClientID();
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  *(v0 + 1136) = *(v0 + 1072);
  *(v0 + 1088) = *(v0 + 1024);
  *(v0 + 1104) = *(v0 + 1040);
  *(v0 + 1120) = *(v0 + 1056);
  v1 = *(v0 + 1144);
  *(v0 + 1256) = v1;
  if (v1)
  {
    v2 = *(v0 + 1176);
    v3 = *(v0 + 1136);

    outlined destroy of GetClientIDResponse(v0 + 1088);
    v4 = *(*v2 + 440);

    v4(v3, v1);
    v5 = *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
    v6 = *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator), v5);
    v7 = *(v6 + 40);
    v22 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 1264) = v9;
    *v9 = v0;
    v9[1] = KDSRegistrationStateMachine.obtainKDSVendedClientID();
    v10 = *(v0 + 1208);

    return v22(v3, v1, v10, v5, v6);
  }

  else
  {
    v12 = *(v0 + 1216);
    v13 = *(v0 + 1208);
    v14 = *(v0 + 1200);
    v15 = *(v0 + 1192);

    outlined destroy of GetClientIDResponse(v0 + 1088);
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v16 = 17;
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    v17 = *(v0 + 64);
    *(v0 + 696) = *(v0 + 48);
    *(v0 + 712) = v17;
    *(v0 + 728) = *(v0 + 80);
    v18 = *(v0 + 32);
    *(v0 + 664) = *(v0 + 16);
    *(v0 + 680) = v18;
    outlined destroy of GetClientIDRequest(v0 + 664);
    v19 = *(v0 + 1208);
    v20 = *(v0 + 1184);

    v21 = *(v0 + 8);

    return v21();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1264);
  v4 = *v1;
  v2[159] = v0;

  v5 = v2[157];

  v6 = v2[154];
  v7 = v2[153];
  if (v0)
  {
    v8 = KDSRegistrationStateMachine.obtainKDSVendedClientID();
  }

  else
  {
    v8 = KDSRegistrationStateMachine.obtainKDSVendedClientID();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1184);

  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 64);
  *(v0 + 840) = *(v0 + 48);
  *(v0 + 856) = v6;
  *(v0 + 872) = *(v0 + 80);
  v7 = *(v0 + 32);
  *(v0 + 808) = *(v0 + 16);
  *(v0 + 824) = v7;
  outlined destroy of GetClientIDRequest(v0 + 808);

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1192);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 64);
  *(v0 + 480) = *(v0 + 48);
  *(v0 + 496) = v5;
  *(v0 + 512) = *(v0 + 80);
  v6 = *(v0 + 32);
  *(v0 + 448) = *(v0 + 16);
  *(v0 + 464) = v6;
  outlined destroy of GetClientIDRequest(v0 + 448);
  v7 = *(v0 + 1248);
  v8 = *(v0 + 1208);
  v9 = *(v0 + 1184);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1192);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 64);
  *(v0 + 768) = *(v0 + 48);
  *(v0 + 784) = v5;
  *(v0 + 800) = *(v0 + 80);
  v6 = *(v0 + 32);
  *(v0 + 736) = *(v0 + 16);
  *(v0 + 752) = v6;
  outlined destroy of GetClientIDRequest(v0 + 736);
  v7 = *(v0 + 1272);
  v8 = *(v0 + 1208);
  v9 = *(v0 + 1184);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t KDSRegistrationStateMachine.obtainPhoneAuthInfo()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for ASN1OctetString();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = type metadata accessor for DER.Serializer();
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v10 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  v1[11] = v10;
  v11 = *(v10 - 8);
  v1[12] = v11;
  v12 = *(v11 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v14 = type metadata accessor for URI();
  v1[17] = v14;
  v15 = *(v14 - 8);
  v1[18] = v15;
  v16 = *(v15 + 64) + 15;
  v1[19] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[20] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v18;
  v1[22] = v17;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.obtainPhoneAuthInfo(), v18, v17);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  (*(**(v0 + 16) + 360))();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 128);

    outlined destroy of MLS.KeyPackageProvider?(v5, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v6 = 12;
    swift_willThrow();
    v7 = *(v0 + 152);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);
    v14 = *(v0 + 32);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 16);
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
    v18 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator;
    *(v0 + 184) = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator;
    v19 = *(v17 + v18 + 24);
    v20 = *(v17 + v18 + 32);
    __swift_project_boxed_opaque_existential_1((v17 + v18), v19);
    v21 = *(v20 + 16);
    v25 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v23[1] = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
    v24 = *(v0 + 152);

    return v25(v24, v19, v20);
  }
}

{
  v1 = v0[2];
  v2 = (v1 + v0[23]);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier;
  v6 = *(v4 + 24);
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
  v9 = v0[25];
  v10 = v0[26];
  v11 = v0[15];

  return v13(v11, v1 + v5, v9, v10, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v104 = v0;
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[2];

  v7 = *(v5 + 16);
  v7(v2, v3, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  if (v10)
  {
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[11];
    v15 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v103[0] = v97;
    *v15 = 136315138;
    v7(v13, v11, v14);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v11, v14);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v103);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_26524C000, v8, v9, "Received phoneAuthInfo: %s. Making response DER/ASN1 friendly.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    MEMORY[0x2667577B0](v97, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  else
  {
    v21 = v0[11];
    v22 = v0[12];

    v19 = *(v22 + 8);
    v19(v11, v21);
  }

  v23 = v0[29];
  v24 = v0[15];
  v25 = v0[10];
  v26 = v0[7];
  v27 = v0[5];
  DER.Serializer.init()();
  v28 = KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.acsSignature.getter();
  v30 = (2 * *(_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v28, v29) + 16)) | 1;

  ASN1OctetString.init(contentBytes:)();
  DER.Serializer.serialize<A>(_:)();
  if (v23)
  {
    v31 = v0[18];
    v100 = v0[19];
    v95 = v0[15];
    v98 = v0[17];
    v91 = v0[12];
    v93 = v0[11];
    v32 = v0[9];
    v33 = v0[10];
    v34 = v19;
    v36 = v0[7];
    v35 = v0[8];
    v37 = v0[5];
    v38 = v0[6];
    outlined consume of Data._Representation(v0[25], v0[26]);

    (*(v38 + 8))(v36, v37);
    (*(v32 + 8))(v33, v35);
    v34(v95, v93);
    (*(v31 + 8))(v100, v98);
    v39 = v0[19];
    v40 = v0[15];
    v41 = v0[16];
    v43 = v0[13];
    v42 = v0[14];
    v44 = v0[10];
    v45 = v0[7];
    v46 = v0[4];

    v47 = v0[1];
  }

  else
  {
    v49 = v0[11];
    v48 = v0[12];
    v50 = v0[10];
    v51 = v0[4];
    v52 = v0[2];
    v53 = DER.Serializer.serializedBytes.getter();
    v54 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v53);
    v56 = v55;

    outlined copy of Data._Representation(v54, v56);
    v99 = v54;
    KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.init(acsSignature:)();
    (*(v48 + 56))(v51, 0, 1, v49);
    (*(*v52 + 296))(v51);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    v59 = os_log_type_enabled(v57, v58);
    v60 = v0[18];
    v61 = v0[19];
    v101 = v0[15];
    v102 = v0[17];
    v94 = v0[12];
    v96 = v0[11];
    v62 = v0[9];
    v63 = v0[8];
    v90 = v63;
    v92 = v0[10];
    v89 = v0[7];
    v64 = v0[6];
    v88 = v0[5];
    if (v59)
    {
      v86 = v0[18];
      v87 = v0[19];
      v65 = v0[4];
      v81 = v0[3];
      v82 = v0[25];
      v66 = v0[2];
      v83 = v0[26];
      v84 = v56;
      v67 = swift_slowAlloc();
      v85 = v19;
      v68 = swift_slowAlloc();
      v103[0] = v68;
      *v67 = 136315138;
      (*(*v66 + 288))();
      v69 = String.init<A>(describing:)();
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v103);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_26524C000, v57, v58, "Final PhoneAuthInfo: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x2667577B0](v68, -1, -1);
      MEMORY[0x2667577B0](v67, -1, -1);
      outlined consume of Data._Representation(v82, v83);

      outlined consume of Data._Representation(v99, v84);

      (*(v64 + 8))(v89, v88);
      (*(v62 + 8))(v92, v90);
      v85(v101, v96);
      (*(v86 + 8))(v87, v102);
    }

    else
    {
      outlined consume of Data._Representation(v0[25], v0[26]);

      outlined consume of Data._Representation(v99, v56);

      (*(v64 + 8))(v89, v88);
      (*(v62 + 8))(v92, v90);
      v19(v101, v96);
      (*(v60 + 8))(v61, v102);
    }

    v72 = v0[19];
    v73 = v0[15];
    v74 = v0[16];
    v76 = v0[13];
    v75 = v0[14];
    v77 = v0[10];
    v78 = v0[7];
    v79 = v0[4];

    v47 = v0[1];
  }

  return v47();
}

{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];

  (*(v4 + 8))(v2, v3);
  v5 = v0[27];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[10];
  v12 = v0[7];
  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];

  outlined consume of Data._Representation(v1, v2);
  (*(v6 + 8))(v4, v5);
  v7 = v0[29];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[4];

  v16 = v0[1];

  return v16();
}

uint64_t KDSRegistrationStateMachine.obtainPhoneAuthInfo()(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 192);
  v7 = *v3;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v2;

  v8 = v4[22];
  v9 = v4[21];
  if (v2)
  {
    v10 = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
  }

  else
  {
    v10 = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v11, 0);
      v15 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t KDSRegistrationStateMachine.getIdentity()()
{
  v1[266] = v0;
  v2 = type metadata accessor for MLS.Identity.Credential();
  v1[267] = v2;
  v3 = *(v2 - 8);
  v1[268] = v3;
  v4 = *(v3 + 64) + 15;
  v1[269] = swift_task_alloc();
  Identity = type metadata accessor for KDSRegistration.GetIdentityError.ErrorType();
  v1[270] = Identity;
  v6 = *(Identity - 8);
  v1[271] = v6;
  v7 = *(v6 + 64) + 15;
  v1[272] = swift_task_alloc();
  IdentityError = type metadata accessor for KDSRegistration.GetIdentityError();
  v1[273] = IdentityError;
  v9 = *(IdentityError - 8);
  v1[274] = v9;
  v10 = *(v9 + 64) + 15;
  v1[275] = swift_task_alloc();
  v1[276] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR) - 8) + 64) + 15;
  v1[277] = swift_task_alloc();
  v12 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  v1[278] = v12;
  v13 = *(v12 - 8);
  v1[279] = v13;
  v14 = *(v13 + 64) + 15;
  v1[280] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR) - 8) + 64) + 15;
  v1[281] = swift_task_alloc();
  v16 = type metadata accessor for URI();
  v1[282] = v16;
  v17 = *(v16 - 8);
  v1[283] = v17;
  v18 = *(v17 + 64) + 15;
  v1[284] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[285] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[286] = v20;
  v1[287] = v19;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.getIdentity(), v20, v19);
}

{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 2248);
  (*(**(v0 + 2128) + 360))();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 2280);
    v5 = *(v0 + 2248);

    outlined destroy of MLS.KeyPackageProvider?(v5, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v6 = 12;
    swift_willThrow();
LABEL_8:
    v24 = *(v0 + 2272);
    v25 = *(v0 + 2248);
    v26 = *(v0 + 2240);
    v27 = *(v0 + 2216);
    v28 = *(v0 + 2208);
    v29 = *(v0 + 2200);
    v30 = *(v0 + 2176);
    v31 = *(v0 + 2152);

    v32 = *(v0 + 8);

    return v32();
  }

  v7 = *(v0 + 2128);
  v8 = (*(*(v0 + 2264) + 32))(*(v0 + 2272), *(v0 + 2248), *(v0 + 2256));
  *(v0 + 2304) = (*(*v7 + 384))(v8);
  *(v0 + 2312) = v9;
  if (!v9)
  {
    v19 = *(v0 + 2280);
    v20 = *(v0 + 2272);
    v21 = *(v0 + 2264);
    v22 = *(v0 + 2256);

    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v23 = 14;
    swift_willThrow();
    (*(v21 + 8))(v20, v22);
    goto LABEL_8;
  }

  v10 = *(v0 + 2128);
  *(v0 + 2400) = (*(*v10 + 408))();
  v11 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator;
  *(v0 + 2320) = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator;
  v12 = *(v10 + v11 + 24);
  v13 = *(v10 + v11 + 32);
  __swift_project_boxed_opaque_existential_1((v10 + v11), v12);
  v14 = *(v13 + 32);
  v33 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 2328) = v16;
  *v16 = v0;
  v16[1] = KDSRegistrationStateMachine.getIdentity();
  v17 = *(v0 + 2272);

  return v33(v0 + 2016, v17, v12, v13);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2328);
  v9 = *v1;
  *(*v1 + 2336) = v0;

  if (v0)
  {
    v4 = v2[289];

    v5 = v2[287];
    v6 = v2[286];
    v7 = KDSRegistrationStateMachine.getIdentity();
  }

  else
  {
    v5 = v2[287];
    v6 = v2[286];
    v7 = KDSRegistrationStateMachine.getIdentity();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v93 = v0;
  if (!*(v0 + 2040))
  {
    v20 = *(v0 + 2312);
    v21 = *(v0 + 2280);
    v22 = *(v0 + 2272);
    v23 = *(v0 + 2264);
    v24 = *(v0 + 2256);
    v25 = *(v0 + 2184);
    v26 = *(v0 + 2176);
    v27 = *(v0 + 2168);
    v28 = *(v0 + 2160);

    outlined destroy of MLS.KeyPackageProvider?(v0 + 2016, &_s15SecureMessaging3MLSO22SwiftMLSRCSCSRProtocol_pSgMd, &_s15SecureMessaging3MLSO22SwiftMLSRCSCSRProtocol_pSgMR);
    (*(v27 + 104))(v26, *MEMORY[0x277D4C9C0], v28);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v23 + 8))(v22, v24);
    goto LABEL_5;
  }

  v1 = *(v0 + 2232);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 2216);
  v4 = *(v0 + 2128);
  outlined init with take of MLS.SwiftMLSPersisterProtocol((v0 + 2016), v0 + 2056);
  v5 = *(v0 + 2088);
  __swift_project_boxed_opaque_existential_1((v0 + 2056), *(v0 + 2080));
  v6 = dispatch thunk of MLS.SwiftMLSRCSCSRProtocol.certificateSigningRequest.getter();
  (*(*v4 + 344))(v6);
  v7 = *(v0 + 2088);
  __swift_project_boxed_opaque_existential_1((v0 + 2056), *(v0 + 2080));
  v8 = dispatch thunk of MLS.SwiftMLSRCSCSRProtocol.participantInfo.getter();
  v9 = (*(*v4 + 320))(v8);
  (*(*v4 + 288))(v9);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v10 = *(v0 + 2312);
    v11 = *(v0 + 2280);
    v12 = *(v0 + 2272);
    v13 = *(v0 + 2264);
    v14 = *(v0 + 2256);
    v15 = *(v0 + 2216);
    v16 = *(v0 + 2184);
    v17 = *(v0 + 2176);
    v18 = *(v0 + 2168);
    v19 = *(v0 + 2160);

    outlined destroy of MLS.KeyPackageProvider?(v15, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
    (*(v18 + 104))(v17, *MEMORY[0x277D4C9D8], v19);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
LABEL_5:
    v29 = *(v0 + 2272);
    v30 = *(v0 + 2248);
    v31 = *(v0 + 2240);
    v32 = *(v0 + 2216);
    v33 = *(v0 + 2208);
    v34 = *(v0 + 2200);
    v35 = *(v0 + 2176);
    v36 = *(v0 + 2152);

    v37 = *(v0 + 8);

    return v37();
  }

  v39 = *(v0 + 2272);
  v40 = *(v0 + 2240);
  if (*(v0 + 2400) == 4)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v0 + 2400);
  }

  (*(*(v0 + 2232) + 32))(*(v0 + 2240), *(v0 + 2216), *(v0 + 2224));
  v42 = *(v0 + 2088);
  __swift_project_boxed_opaque_existential_1((v0 + 2056), *(v0 + 2080));
  v43 = dispatch thunk of MLS.SwiftMLSRCSCSRProtocol.participantInfo.getter();
  v45 = v44;
  v46 = *(v0 + 2088);
  __swift_project_boxed_opaque_existential_1((v0 + 2056), *(v0 + 2080));
  v47 = dispatch thunk of MLS.SwiftMLSRCSCSRProtocol.certificateSigningRequest.getter();
  v49 = v48;
  v50 = MEMORY[0x266756630]();
  v52 = v51;
  v53 = KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.acsSignature.getter();
  if (v41 > 1)
  {
    if (v41 == 2)
    {
      v55 = 0xE700000000000000;
      v56 = 0x7373654C534D53;
    }

    else
    {
      v55 = 0xE800000000000000;
      v56 = 0x6E656B6F54534352;
    }
  }

  else if (v41)
  {
    v55 = 0xE300000000000000;
    v56 = 5459283;
  }

  else
  {
    v55 = 0xE700000000000000;
    v56 = 0x6E776F6E6B6E55;
  }

  v57 = *(v0 + 2312);
  v58 = *(v0 + 2304);
  v59 = *(v0 + 2128);
  *(v0 + 240) = v43;
  *(v0 + 248) = v45;
  *(v0 + 256) = v47;
  *(v0 + 264) = v49;
  *(v0 + 272) = v50;
  *(v0 + 280) = v52;
  *(v0 + 288) = v53;
  *(v0 + 296) = v54;
  *(v0 + 304) = v58;
  *(v0 + 312) = v57;
  *(v0 + 320) = v56;
  *(v0 + 328) = v55;
  *(v0 + 336) = xmmword_2653419D0;
  v60 = (*(*v59 + 504))();
  if (v61 >> 60 != 15)
  {
    v62 = v60;
    v63 = v61;
    outlined consume of Data?(0, 0xF000000000000000);
    *(v0 + 336) = v62;
    *(v0 + 344) = v63;
  }

  v64 = *(v0 + 2128);
  *(v0 + 2344) = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;
  v65 = *(v0 + 320);
  *(v0 + 416) = *(v0 + 304);
  *(v0 + 432) = v65;
  *(v0 + 448) = *(v0 + 336);
  v66 = *(v0 + 256);
  *(v0 + 352) = *(v0 + 240);
  *(v0 + 368) = v66;
  v67 = *(v0 + 288);
  *(v0 + 384) = *(v0 + 272);
  *(v0 + 400) = v67;
  outlined init with copy of IdentityRequest(v0 + 352, v0 + 464);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  outlined destroy of IdentityRequest(v0 + 352);
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v92 = v71;
    *v70 = 136315138;
    v72 = *(v0 + 432);
    *(v0 + 192) = *(v0 + 416);
    *(v0 + 208) = v72;
    *(v0 + 224) = *(v0 + 448);
    v73 = *(v0 + 368);
    *(v0 + 128) = *(v0 + 352);
    *(v0 + 144) = v73;
    v74 = *(v0 + 400);
    *(v0 + 160) = *(v0 + 384);
    *(v0 + 176) = v74;
    outlined init with copy of IdentityRequest(v0 + 352, v0 + 1360);
    v75 = String.init<A>(describing:)();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v92);

    *(v70 + 4) = v77;
    _os_log_impl(&dword_26524C000, v68, v69, "getIdentity Request %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x2667577B0](v71, -1, -1);
    MEMORY[0x2667577B0](v70, -1, -1);
  }

  v78 = (*(v0 + 2128) + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v79 = v78[3];
  v80 = v78[4];
  __swift_project_boxed_opaque_existential_1(v78, v79);
  swift_beginAccess();
  v81 = *(v0 + 304);
  v82 = *(v0 + 320);
  *(v0 + 640) = v81;
  *(v0 + 656) = v82;
  v83 = *(v0 + 336);
  *(v0 + 672) = v83;
  v84 = *(v0 + 240);
  v85 = *(v0 + 256);
  *(v0 + 576) = v84;
  *(v0 + 592) = v85;
  v87 = *(v0 + 272);
  v86 = *(v0 + 288);
  *(v0 + 608) = v87;
  *(v0 + 624) = v86;
  *(v0 + 912) = v84;
  *(v0 + 928) = v85;
  *(v0 + 944) = v87;
  *(v0 + 960) = v86;
  *(v0 + 976) = v81;
  *(v0 + 992) = v82;
  *(v0 + 1008) = v83;
  v88 = *(v80 + 32);
  outlined init with copy of IdentityRequest(v0 + 576, v0 + 1024);
  v91 = (v88 + *v88);
  v89 = v88[1];
  v90 = swift_task_alloc();
  *(v0 + 2352) = v90;
  *v90 = v0;
  v90[1] = KDSRegistrationStateMachine.getIdentity();

  return v91(v0 + 1824, v0 + 912, v79, v80);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2352);
  v15 = *v1;
  *(*v1 + 2360) = v0;

  v4 = *(v2 + 912);
  v5 = *(v2 + 928);
  v6 = *(v2 + 960);
  if (v0)
  {
    *(v2 + 1280) = *(v2 + 944);
    *(v2 + 1264) = v5;
    *(v2 + 1248) = v4;
    v7 = *(v2 + 976);
    v8 = *(v2 + 992);
    *(v2 + 1344) = *(v2 + 1008);
    *(v2 + 1328) = v8;
    *(v2 + 1312) = v7;
    *(v2 + 1296) = v6;
    outlined destroy of IdentityRequest(v2 + 1248);
    v9 = *(v2 + 2296);
    v10 = *(v2 + 2288);
    v11 = KDSRegistrationStateMachine.getIdentity();
  }

  else
  {
    *(v2 + 1504) = *(v2 + 944);
    *(v2 + 1488) = v5;
    *(v2 + 1472) = v4;
    v12 = *(v2 + 976);
    v13 = *(v2 + 992);
    *(v2 + 1568) = *(v2 + 1008);
    *(v2 + 1552) = v13;
    *(v2 + 1536) = v12;
    *(v2 + 1520) = v6;
    outlined destroy of IdentityRequest(v2 + 1472);
    v9 = *(v2 + 2296);
    v10 = *(v2 + 2288);
    v11 = KDSRegistrationStateMachine.getIdentity();
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

{
  v94 = v0;
  v1 = *(v0 + 2344);
  v2 = *(v0 + 2128);
  *(v0 + 1696) = *(v0 + 1824);
  *(v0 + 1712) = *(v0 + 1840);
  *(v0 + 1728) = *(v0 + 1856);
  *(v0 + 1744) = *(v0 + 1872);
  outlined init with copy of IdentityResponse(v0 + 1696, v0 + 1760);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of IdentityResponse(v0 + 1696);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v93[0] = v6;
    *v5 = 136315138;
    v7 = *(v0 + 1712);
    *(v0 + 1888) = *(v0 + 1696);
    *(v0 + 1904) = v7;
    v8 = *(v0 + 1744);
    *(v0 + 1920) = *(v0 + 1728);
    *(v0 + 1936) = v8;
    outlined init with copy of IdentityResponse(v0 + 1696, v0 + 1952);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v93);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_26524C000, v3, v4, "getIdentity Response %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2667577B0](v6, -1, -1);
    MEMORY[0x2667577B0](v5, -1, -1);
  }

  v12 = *(v0 + 1744);
  *(v0 + 2368) = v12;
  v13 = *(v0 + 1752);
  *(v0 + 2376) = v13;
  if (v13 >> 60 == 15)
  {
    v14 = *(v0 + 2280);
    v15 = *(v0 + 2272);
    v16 = *(v0 + 2264);
    v17 = *(v0 + 2256);
    v18 = *(v0 + 2240);
    v19 = *(v0 + 2232);
    v20 = *(v0 + 2224);

    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v21 = 13;
    swift_willThrow();
    outlined destroy of IdentityResponse(v0 + 1696);
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    v22 = *(v0 + 320);
    *(v0 + 80) = *(v0 + 304);
    *(v0 + 96) = v22;
    *(v0 + 112) = *(v0 + 336);
    v23 = *(v0 + 256);
    *(v0 + 16) = *(v0 + 240);
    *(v0 + 32) = v23;
    v24 = *(v0 + 288);
    *(v0 + 48) = *(v0 + 272);
    *(v0 + 64) = v24;
    outlined destroy of IdentityRequest(v0 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
LABEL_9:
    v50 = *(v0 + 2272);
    v51 = *(v0 + 2248);
    v52 = *(v0 + 2240);
    v53 = *(v0 + 2216);
    v54 = *(v0 + 2208);
    v55 = *(v0 + 2200);
    v56 = *(v0 + 2176);
    v57 = *(v0 + 2152);

    v58 = *(v0 + 8);

    return v58();
  }

  v25 = *(v0 + 2344);
  v26 = *(v0 + 2128);
  outlined copy of Data?(v12, v13);
  outlined copy of Data._Representation(v12, v13);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  outlined consume of Data?(v12, v13);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v93[0] = v30;
    *v29 = 136315138;
    outlined copy of Data._Representation(v12, v13);
    v31 = Data.description.getter();
    v33 = v32;
    outlined consume of Data?(v12, v13);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v93);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_26524C000, v27, v28, "getIdentity parsing response identity: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x2667577B0](v30, -1, -1);
    MEMORY[0x2667577B0](v29, -1, -1);
  }

  v35 = *(v0 + 2208);
  v89 = *(v0 + 2360);
  v91 = *(v0 + 2200);
  v87 = *(v0 + 2184);
  v36 = *(v0 + 2176);
  v37 = *(v0 + 2168);
  v38 = *(v0 + 2160);
  v39 = *(v0 + 2128);
  v40 = swift_task_alloc();
  *(v40 + 16) = v12;
  *(v40 + 24) = v13;
  (*(v37 + 104))(v36, *MEMORY[0x277D4C9E0], v38);
  KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17SecCertificateRefaGMd, &_sSaySo17SecCertificateRefaGMR);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0]);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF();
  if (v89)
  {
    v41 = *(v0 + 2280);
    v88 = *(v0 + 2256);
    v90 = *(v0 + 2272);
    v85 = *(v0 + 2240);
    v86 = *(v0 + 2264);
    v42 = *(v0 + 2232);
    v83 = *(v0 + 2200);
    v84 = *(v0 + 2224);
    v43 = *(v0 + 2192);
    v44 = *(v0 + 2184);
    v45 = *(v0 + 2128);
    (*(v43 + 8))(*(v0 + 2208), v44);

    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0]);
    swift_allocError();
    (*(v43 + 32))(v46, v83, v44);
    outlined consume of Data?(v12, v13);
    outlined destroy of IdentityResponse(v0 + 1696);
    (*(v42 + 8))(v85, v84);
    (*(v86 + 8))(v90, v88);
    v47 = *(v0 + 320);
    *(v0 + 1648) = *(v0 + 304);
    *(v0 + 1664) = v47;
    *(v0 + 1680) = *(v0 + 336);
    v48 = *(v0 + 256);
    *(v0 + 1584) = *(v0 + 240);
    *(v0 + 1600) = v48;
    v49 = *(v0 + 288);
    *(v0 + 1616) = *(v0 + 272);
    *(v0 + 1632) = v49;
    outlined destroy of IdentityRequest(v0 + 1584);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));

    goto LABEL_9;
  }

  v60 = *(v0 + 2344);
  v61 = *(v0 + 2128);
  (*(*(v0 + 2192) + 8))(*(v0 + 2208), *(v0 + 2184));

  v62 = *(v0 + 2120);

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v93[0] = v66;
    *v65 = 136315138;
    type metadata accessor for SecCertificateRef();
    v68 = MEMORY[0x266756AF0](v62, v67);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v93);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_26524C000, v63, v64, "getIdentity parsed response: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x2667577B0](v66, -1, -1);
    MEMORY[0x2667577B0](v65, -1, -1);
  }

  v71 = *(v0 + 2152);
  v72 = *(v0 + 2144);
  v73 = *(v0 + 2136);
  v74 = (*(v0 + 2128) + *(v0 + 2320));
  *v71 = v62;
  v75 = *MEMORY[0x277D6AC80];
  (*(v72 + 104))(v71);
  v76 = v74[3];
  v77 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v76);
  v78 = *(v77 + 48);
  v92 = (v78 + *v78);
  v79 = v78[1];
  v80 = swift_task_alloc();
  *(v0 + 2384) = v80;
  *v80 = v0;
  v80[1] = KDSRegistrationStateMachine.getIdentity();
  v81 = *(v0 + 2272);
  v82 = *(v0 + 2152);

  return v92(v82, v81, v76, v77);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2384);
  v8 = *v1;
  *(*v1 + 2392) = v0;

  v4 = *(v2 + 2296);
  v5 = *(v2 + 2288);
  if (v0)
  {
    v6 = KDSRegistrationStateMachine.getIdentity();
  }

  else
  {
    v6 = KDSRegistrationStateMachine.getIdentity();
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 2376);
  v2 = *(v0 + 2368);
  v3 = *(v0 + 2280);
  v4 = *(v0 + 2264);
  v16 = *(v0 + 2256);
  v17 = *(v0 + 2272);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v18 = *(v0 + 2248);
  v19 = *(v0 + 2216);
  v20 = *(v0 + 2208);
  v21 = *(v0 + 2200);
  v22 = *(v0 + 2176);
  v8 = *(v0 + 2152);
  v9 = *(v0 + 2144);
  v10 = *(v0 + 2136);

  outlined consume of Data?(v2, v1);
  outlined destroy of IdentityResponse(v0 + 1696);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v17, v16);
  v11 = *(v0 + 320);
  *(v0 + 752) = *(v0 + 304);
  *(v0 + 768) = v11;
  *(v0 + 784) = *(v0 + 336);
  v12 = *(v0 + 256);
  *(v0 + 688) = *(v0 + 240);
  *(v0 + 704) = v12;
  v13 = *(v0 + 288);
  *(v0 + 720) = *(v0 + 272);
  *(v0 + 736) = v13;
  outlined destroy of IdentityRequest(v0 + 688);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[283];
  v4 = v0[282];

  (*(v3 + 8))(v2, v4);
  v5 = v0[292];
  v6 = v0[284];
  v7 = v0[281];
  v8 = v0[280];
  v9 = v0[277];
  v10 = v0[276];
  v11 = v0[275];
  v12 = v0[272];
  v13 = v0[269];

  v14 = v0[1];

  return v14();
}

{
  v1 = *(v0 + 2280);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2264);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 272);
  *(v0 + 1184) = *(v0 + 288);
  v9 = *(v0 + 320);
  *(v0 + 1200) = *(v0 + 304);
  *(v0 + 1216) = v9;
  *(v0 + 1232) = *(v0 + 336);
  v10 = *(v0 + 256);
  *(v0 + 1136) = *(v0 + 240);
  *(v0 + 1152) = v10;
  *(v0 + 1168) = v8;
  outlined destroy of IdentityRequest(v0 + 1136);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  v11 = *(v0 + 2360);
  v12 = *(v0 + 2272);
  v13 = *(v0 + 2248);
  v14 = *(v0 + 2240);
  v15 = *(v0 + 2216);
  v16 = *(v0 + 2208);
  v17 = *(v0 + 2200);
  v18 = *(v0 + 2176);
  v19 = *(v0 + 2152);

  v20 = *(v0 + 8);

  return v20();
}

{
  v1 = *(v0 + 2376);
  v2 = *(v0 + 2368);
  v3 = *(v0 + 2280);
  v4 = *(v0 + 2264);
  v25 = *(v0 + 2256);
  v26 = *(v0 + 2272);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2152);
  v9 = *(v0 + 2144);
  v10 = *(v0 + 2136);

  outlined consume of Data?(v2, v1);
  outlined destroy of IdentityResponse(v0 + 1696);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v26, v25);
  v11 = *(v0 + 320);
  *(v0 + 864) = *(v0 + 304);
  *(v0 + 880) = v11;
  *(v0 + 896) = *(v0 + 336);
  v12 = *(v0 + 256);
  *(v0 + 800) = *(v0 + 240);
  *(v0 + 816) = v12;
  v13 = *(v0 + 288);
  *(v0 + 832) = *(v0 + 272);
  *(v0 + 848) = v13;
  outlined destroy of IdentityRequest(v0 + 800);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  v14 = *(v0 + 2392);
  v15 = *(v0 + 2272);
  v16 = *(v0 + 2248);
  v17 = *(v0 + 2240);
  v18 = *(v0 + 2216);
  v19 = *(v0 + 2208);
  v20 = *(v0 + 2200);
  v21 = *(v0 + 2176);
  v22 = *(v0 + 2152);

  v23 = *(v0 + 8);

  return v23();
}

void closure #1 in KDSRegistrationStateMachine.getIdentity()(uint64_t a1, unint64_t a2)
{

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v8);
    _os_log_impl(&dword_26524C000, oslog, v4, "getIdentity failed parsing responseIdentity: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2667577B0](v6, -1, -1);
    MEMORY[0x2667577B0](v5, -1, -1);
  }
}

uint64_t KDSRegistrationStateMachine.register()()
{
  v1[78] = v0;
  v2 = type metadata accessor for KDSRegistration.RegisterKeyPackageError.ErrorType();
  v1[79] = v2;
  v3 = *(v2 - 8);
  v1[80] = v3;
  v4 = *(v3 + 64) + 15;
  v1[81] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR) - 8) + 64) + 15;
  v1[82] = swift_task_alloc();
  v6 = type metadata accessor for MLS.KeyPackageInfo();
  v1[83] = v6;
  v7 = *(v6 - 8);
  v1[84] = v7;
  v8 = *(v7 + 64) + 15;
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR) - 8) + 64) + 15;
  v1[87] = swift_task_alloc();
  v10 = type metadata accessor for URI();
  v1[88] = v10;
  v11 = *(v10 - 8);
  v1[89] = v11;
  v12 = *(v11 + 64) + 15;
  v1[90] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[91] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[92] = v14;
  v1[93] = v13;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.register(), v14, v13);
}

{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  (*(**(v0 + 624) + 360))();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 728);
    v5 = *(v0 + 696);
    v6 = *(v0 + 648);
    v7 = *(v0 + 640);
    v8 = *(v0 + 632);

    outlined destroy of MLS.KeyPackageProvider?(v5, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    (*(v7 + 104))(v6, *MEMORY[0x277D4CB20], v8);
    type metadata accessor for KDSRegistration.RegisterKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
LABEL_8:
    v28 = *(v0 + 720);
    v29 = *(v0 + 696);
    v30 = *(v0 + 688);
    v31 = *(v0 + 680);
    v32 = *(v0 + 656);
    v33 = *(v0 + 648);

    v34 = *(v0 + 8);

    return v34();
  }

  v9 = *(v0 + 624);
  v10 = (*(*(v0 + 712) + 32))(*(v0 + 720), *(v0 + 696), *(v0 + 704));
  *(v0 + 752) = (*(*v9 + 384))(v10);
  *(v0 + 760) = v11;
  if (!v11)
  {
    v21 = *(v0 + 728);
    v22 = *(v0 + 720);
    v23 = *(v0 + 712);
    v24 = *(v0 + 704);
    v25 = *(v0 + 648);
    v26 = *(v0 + 640);
    v27 = *(v0 + 632);

    (*(v26 + 104))(v25, *MEMORY[0x277D4CB30], v27);
    type metadata accessor for KDSRegistration.RegisterKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v23 + 8))(v22, v24);
    goto LABEL_8;
  }

  v12 = *(v0 + 624);
  *(v0 + 872) = (*(*v12 + 408))();
  v13 = *(v12 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
  v14 = *(v12 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 32);
  __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator), v13);
  v15 = *(v14 + 56);
  v35 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 768) = v17;
  *v17 = v0;
  v17[1] = KDSRegistrationStateMachine.register();
  v18 = *(v0 + 720);
  v19 = *(v0 + 680);

  return v35(v19, v18, v13, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v9 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v4 = v2[95];

    v5 = v2[93];
    v6 = v2[92];
    v7 = KDSRegistrationStateMachine.register();
  }

  else
  {
    v5 = v2[93];
    v6 = v2[92];
    v7 = KDSRegistrationStateMachine.register();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = *(v0 + 720);
  v2 = *(v0 + 688);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 624);
  if (*(v0 + 872) == 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 872);
  }

  (*(v3 + 32))(*(v0 + 688), *(v0 + 680), *(v0 + 664));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  v8 = (*(*v6 + 464))(v5);
  v9 = MEMORY[0x266756630](v8);
  v34 = v10;
  v36 = v9;
  *(v0 + 784) = v9;
  *(v0 + 792) = v10;
  v11 = MLS.KeyPackageInfo.rawKeyPackage.getter();
  v13 = v12;
  v33 = v11;
  *(v0 + 800) = v11;
  *(v0 + 808) = v12;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v14 = 0xE700000000000000;
      v15 = 0x7373654C534D53;
    }

    else
    {
      v14 = 0xE800000000000000;
      v15 = 0x6E656B6F54534352;
    }
  }

  else if (v7)
  {
    v14 = 0xE300000000000000;
    v15 = 5459283;
  }

  else
  {
    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E55;
  }

  *(v0 + 824) = v14;
  *(v0 + 816) = v15;
  v16 = (*(**(v0 + 624) + 504))();
  if (v17 >> 60 == 15)
  {
    v18 = 0;
    v19 = 0xF000000000000000;
  }

  else
  {
    v18 = v16;
    v19 = v17;
    outlined consume of Data?(0, 0xF000000000000000);
  }

  *(v0 + 840) = v19;
  *(v0 + 832) = v18;
  v20 = *(v0 + 760);
  v21 = *(v0 + 752);
  v22 = *(v0 + 624);
  v23 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator;
  *(v0 + 848) = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator;
  v24 = *(v22 + v23 + 24);
  v25 = *(v22 + v23 + 32);
  __swift_project_boxed_opaque_existential_1((v22 + v23), v24);
  *(v0 + 24) = v34;
  *(v0 + 32) = v33;
  *(v0 + 40) = v13;
  *(v0 + 48) = v21;
  *(v0 + 56) = v20;
  *(v0 + 64) = v15;
  *(v0 + 72) = v14;
  *(v0 + 80) = v18;
  *(v0 + 88) = v19;
  v26 = *(v0 + 32);
  v27 = *(v0 + 64);
  v28 = *(v0 + 80);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v27;
  *(v0 + 16) = v36;
  *(v0 + 160) = v28;
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v26;
  v29 = *(v25 + 16);
  outlined init with copy of RegisterKeyPackageRequest(v0 + 16, v0 + 176);
  v35 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  *(v0 + 856) = v31;
  *v31 = v0;
  v31[1] = KDSRegistrationStateMachine.register();

  return v35(v0 + 576, v0 + 96, v24, v25);
}

{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v14 = *v1;
  *(*v1 + 864) = v0;

  v4 = *(v2 + 96);
  v5 = *(v2 + 112);
  v6 = *(v2 + 128);
  v7 = *(v2 + 160);
  if (v0)
  {
    *(v2 + 384) = *(v2 + 144);
    *(v2 + 400) = v7;
    *(v2 + 352) = v5;
    *(v2 + 368) = v6;
    *(v2 + 336) = v4;
    outlined destroy of RegisterKeyPackageRequest(v2 + 336);
    v8 = *(v2 + 744);
    v9 = *(v2 + 736);
    v10 = KDSRegistrationStateMachine.register();
  }

  else
  {
    *(v2 + 464) = *(v2 + 144);
    *(v2 + 480) = v7;
    *(v2 + 432) = v5;
    *(v2 + 448) = v6;
    *(v2 + 416) = v4;
    outlined destroy of RegisterKeyPackageRequest(v2 + 416);
    v11 = *(v2 + 600);
    v12 = *(v2 + 616);

    v8 = *(v2 + 744);
    v9 = *(v2 + 736);
    v10 = KDSRegistrationStateMachine.register();
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  v1 = *(v0 + 848);
  v2 = *(v0 + 728);
  v3 = *(v0 + 624);

  v4 = *(v3 + v1 + 24);
  v5 = *(v3 + v1 + 32);
  __swift_project_boxed_opaque_existential_1((v3 + v1), v4);
  v6 = (*(v5 + 40))(v4, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v6;
    _os_log_impl(&dword_26524C000, v7, v8, "Setting heartbeat interval to %f", v9, 0xCu);
    MEMORY[0x2667577B0](v9, -1, -1);
  }

  v10 = *(v0 + 832);
  v22 = *(v0 + 800);
  v23 = *(v0 + 816);
  v20 = *(v0 + 784);
  v21 = *(v0 + 752);
  v11 = *(v0 + 720);
  v12 = *(v0 + 712);
  v13 = *(v0 + 704);
  v24 = *(v0 + 840);
  v25 = *(v0 + 696);
  v14 = *(v0 + 688);
  v15 = *(v0 + 672);
  v16 = *(v0 + 664);
  v26 = *(v0 + 680);
  v27 = *(v0 + 656);
  v28 = *(v0 + 648);
  v17 = *(v0 + 624);

  (*(*v17 + 488))(COERCE_DOUBLE(*&v6), 0);
  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v11, v13);
  *(v0 + 496) = v20;
  *(v0 + 512) = v22;
  *(v0 + 528) = v21;
  *(v0 + 544) = v23;
  *(v0 + 560) = v10;
  *(v0 + 568) = v24;
  outlined destroy of RegisterKeyPackageRequest(v0 + 496);

  v18 = *(v0 + 8);

  return v18();
}

{
  v1 = v0[97];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[79];

  (*(v7 + 104))(v6, *MEMORY[0x277D4CB18], v8);
  type metadata accessor for KDSRegistration.RegisterKeyPackageError();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48]);
  swift_allocError();
  KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
  swift_willThrow();

  (*(v4 + 8))(v3, v5);
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];
  v13 = v0[82];
  v14 = v0[81];

  v15 = v0[1];

  return v15();
}

{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v21 = *(v0 + 800);
  v22 = *(v0 + 816);
  v19 = *(v0 + 784);
  v20 = *(v0 + 752);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);
  v6 = *(v0 + 704);
  v7 = *(v0 + 688);
  v8 = *(v0 + 672);
  v9 = *(v0 + 664);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  *(v0 + 256) = v19;
  *(v0 + 272) = v21;
  *(v0 + 288) = v20;
  *(v0 + 304) = v22;
  *(v0 + 320) = v2;
  *(v0 + 328) = v1;
  outlined destroy of RegisterKeyPackageRequest(v0 + 256);
  v10 = *(v0 + 864);
  v11 = *(v0 + 720);
  v12 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v15 = *(v0 + 656);
  v16 = *(v0 + 648);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t KDSRegistrationStateMachine.deregister()()
{
  v1[12] = v0;
  v2 = type metadata accessor for KDSRegistration.DeregisterKeyPackageError.ErrorType();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v6 = type metadata accessor for URI();
  v1[17] = v6;
  v7 = *(v6 - 8);
  v1[18] = v7;
  v8 = *(v7 + 64) + 15;
  v1[19] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[20] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v10;
  v1[22] = v9;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.deregister(), v10, v9);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  (*(**(v0 + 96) + 360))();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);

    outlined destroy of MLS.KeyPackageProvider?(v6, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    (*(v8 + 104))(v5, *MEMORY[0x277D4CB78], v7);
    type metadata accessor for KDSRegistration.DeregisterKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError, MEMORY[0x277D4CB88]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v9 = *(v0 + 152);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 96);
    v15 = (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
    v16 = MEMORY[0x266756630](v15);
    v18 = v17;
    *(v0 + 184) = v17;
    v19 = (*(*v14 + 504))();
    if (v20 >> 60 == 15)
    {
      v21 = 0;
      v22 = 0xF000000000000000;
    }

    else
    {
      v21 = v19;
      v22 = v20;
      outlined consume of Data?(0, 0xF000000000000000);
    }

    *(v0 + 192) = v21;
    *(v0 + 200) = v22;
    v23 = (*(v0 + 96) + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
    v24 = v23[3];
    v25 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v24);
    *(v0 + 64) = v16;
    *(v0 + 72) = v18;
    *(v0 + 80) = v21;
    *(v0 + 88) = v22;
    v26 = *(v25 + 24);

    outlined copy of Data?(v21, v22);
    v29 = (v26 + *v26);
    v27 = v26[1];
    v28 = swift_task_alloc();
    *(v0 + 208) = v28;
    *v28 = v0;
    v28[1] = KDSRegistrationStateMachine.deregister();

    return v29(v0 + 16, v0 + 64, v24, v25);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v16 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = v2[11];

    outlined consume of Data?(v5, v6);
    v7 = v2[21];
    v8 = v2[22];
    v9 = KDSRegistrationStateMachine.deregister();
  }

  else
  {
    v10 = v2[9];
    v11 = v2[10];
    v12 = v2[11];

    outlined consume of Data?(v11, v12);
    v13 = v2[5];
    v14 = v2[7];

    v7 = v2[21];
    v8 = v2[22];
    v9 = KDSRegistrationStateMachine.deregister();
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

{
  v1 = v0[20];
  v2 = v0[12];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26524C000, v3, v4, "Deregistered URI.", v5, 2u);
    MEMORY[0x2667577B0](v5, -1, -1);
  }

  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v10 = v0[18];
  v9 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];

  (*(v10 + 8))(v9, v11);

  outlined consume of Data?(v7, v6);

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];

  (*(v7 + 8))(v5, v6);

  outlined consume of Data?(v1, v2);
  v8 = v0[27];
  v9 = v0[19];
  v11 = v0[15];
  v10 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t KDSRegistrationStateMachine.saveState()()
{
  v1[2] = v0;
  type metadata accessor for RegistrationActor();
  v1[3] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.saveState(), v3, v2);
}

{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "Saving state machine state.", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = (v5 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  v7 = *(v5 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 64);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = KDSRegistrationStateMachine.saveState();
  v12 = *(v0 + 16);

  return v14(v12, v7, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.saveState();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.saveState();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t KDSRegistrationStateMachine.setupHeartbeat()()
{
  v1[2] = v0;
  v2 = type metadata accessor for KDSRegistration.RegisterKeyPackageError.ErrorType();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[6] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.setupHeartbeat(), v6, v5);
}

{
  v1 = v0[2];
  v0[9] = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "Setting up next heartbeat.", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = (*(*v5 + 480))();
  if (v7)
  {
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[3];
    v11 = v0[4];

    (*(v11 + 104))(v9, *MEMORY[0x277D4CB40], v10);
    type metadata accessor for KDSRegistration.RegisterKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v6;
    v15 = (v0[2] + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
    v16 = v15[3];
    v17 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v18 = *(v17 + 72);
    v22 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[10] = v20;
    *v20 = v0;
    v20[1] = KDSRegistrationStateMachine.setupHeartbeat();
    v21.n128_u64[0] = v14;

    return v22(v16, v17, v21);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.setupHeartbeat();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.setupHeartbeat();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[6];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[2];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_26524C000, v6, v7, "Error setting up heartbeat %@", v10, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v11, -1, -1);
    MEMORY[0x2667577B0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for RegistrationActor();
  v2[4] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:), v4, v3);
}

uint64_t KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:)()
{
  v23 = v0;
  v1 = v0[3];

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    type metadata accessor for KDSRegistration.UniqueClientIdentifier();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8]);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v22);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 24), *(v4 + 32), &v22);
    _os_log_impl(&dword_26524C000, v2, v3, "Broadcasting success. uniqueClientIdentifier: %s, simUniqueID: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v6, -1, -1);
    MEMORY[0x2667577B0](v5, -1, -1);
  }

  v10 = v0[3];
  v11 = *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
  v12 = *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 32);
  __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator), v11);
  v13 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier;
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  v16 = *(v12 + 88);
  v21 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:);
  v19 = v0[2];

  return v21(v10 + v13, v14, v15, v19, v11, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:);
  }

  else
  {
    v7 = KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t KDSRegistrationStateMachine.needsCertRefresh()()
{
  v1[12] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v6 = type metadata accessor for MLS.Identity.Credential();
  v1[22] = v6;
  v7 = *(v6 - 8);
  v1[23] = v7;
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v10 = type metadata accessor for URI();
  v1[26] = v10;
  v11 = *(v10 - 8);
  v1[27] = v11;
  v12 = *(v11 + 64) + 15;
  v1[28] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[29] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[30] = v14;
  v1[31] = v13;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.needsCertRefresh(), v14, v13);
}

{
  v1 = v0[12];
  v0[32] = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "StateMachine checking if cert needs refresh.", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v8 = v0[12];

  (*(*v8 + 360))();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v9 = v0[29];
    v10 = v0[25];

    outlined destroy of MLS.KeyPackageProvider?(v10, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26524C000, v11, v12, "Lost local URI, will try to refresh cert.", v13, 2u);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    v14 = v0[28];
    v15 = v0[24];
    v16 = v0[25];
    v18 = v0[20];
    v17 = v0[21];
    v20 = v0[18];
    v19 = v0[19];
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[13];

    v24 = v0[1];

    return v24(1);
  }

  else
  {
    v26 = v0[12];
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    v27 = *(v26 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
    v28 = *(v26 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 32);
    __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator), v27);
    v29 = *(v28 + 96);
    v34 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    v0[33] = v31;
    *v31 = v0;
    v31[1] = KDSRegistrationStateMachine.needsCertRefresh();
    v32 = v0[28];
    v33 = v0[24];

    return v34(v33, v32, v27, v28);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = KDSRegistrationStateMachine.needsCertRefresh();
  }

  else
  {
    v7 = KDSRegistrationStateMachine.needsCertRefresh();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v108 = v0;
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];

  MLS.Identity.Credential.issuanceDate.getter();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[13];
    (*(v0[23] + 8))(v0[24], v0[22]);
    outlined destroy of MLS.KeyPackageProvider?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_3:
    v7 = v0[12] + v0[32];
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[26];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26524C000, v8, v9, "Will try to refresh cert.", v14, 2u);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    v104 = 1;
    goto LABEL_6;
  }

  (*(v0[15] + 32))(v0[21], v0[13], v0[14]);
  static ServerBag.kdsBag.getter();
  v27 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of ServerBag.KDS.issueCertInterval.getter();
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  static ServerBag.kdsBag.getter();
  v30 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  dispatch thunk of ServerBag.KDS.refreshKeysInterval.getter();
  v32 = v31;
  result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v33 = v29 / v32;
  if (v29 / v32 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = COERCE_UNSIGNED_INT64(fabs(v29 / v32)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v34)
  {
    goto LABEL_26;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v35 = v33 * v32;
  if ((v33 * v32) >> 64 != v35 >> 63)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v36 = v0[20];
  v37 = v0[21];
  v38 = v0[15];
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v39 = *(v38 + 16);
  v40 = v0[32];
  v42 = v0[20];
  v41 = v0[21];
  v43 = v0[14];
  v44 = v0[12];
  if (v45 >= v35)
  {
    v66 = v0[16];
    v39(v0[17], v41, v0[14]);
    v39(v66, v42, v43);
    v67 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    v68 = os_log_type_enabled(v67, v101);
    v69 = v0[23];
    v70 = v0[24];
    v71 = v0[22];
    v72 = v0[20];
    v103 = v72;
    v106 = v0[21];
    v74 = v0[16];
    v73 = v0[17];
    v75 = v0[14];
    v76 = v0[15];
    if (v68)
    {
      v96 = v35;
      v77 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v107 = v93;
      *v77 = 136315650;
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v98 = v71;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v67;
      v80 = v79;
      v81 = *(v76 + 8);
      v81(v73, v75);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v107);

      *(v77 + 4) = v82;
      *(v77 + 12) = 2080;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      v81(v74, v75);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v107);

      *(v77 + 14) = v86;
      *(v77 + 22) = 2048;
      *(v77 + 24) = v96;
      _os_log_impl(&dword_26524C000, v91, v101, "Cert will need refresh. { issueDate: %s, currentDate: %s, flooredCertRefreshInterval: %ld }", v77, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v93, -1, -1);
      MEMORY[0x2667577B0](v77, -1, -1);

      v81(v103, v75);
      v81(v106, v75);
      (*(v69 + 8))(v70, v98);
    }

    else
    {

      v88 = *(v76 + 8);
      v88(v74, v75);
      v88(v73, v75);
      v88(v103, v75);
      v88(v106, v75);
      (*(v69 + 8))(v70, v71);
    }

    goto LABEL_3;
  }

  v46 = v0[18];
  v39(v0[19], v41, v0[14]);
  v39(v46, v42, v43);
  v47 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  v48 = os_log_type_enabled(v47, v94);
  v49 = v0[27];
  v50 = v0[28];
  v51 = v0[26];
  v102 = v0[24];
  v105 = v0[23];
  v99 = v0[21];
  v100 = v0[22];
  v52 = v0[19];
  v97 = v0[20];
  v53 = v0[18];
  v55 = v0[14];
  v54 = v0[15];
  if (v48)
  {
    v92 = v0[27];
    v56 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v107 = v89;
    *v56 = 136315650;
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v95 = v35;
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v50;
    v59 = v58;
    v60 = *(v54 + 8);
    v60(v52, v55);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v107);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2080;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v60(v53, v55);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v107);

    *(v56 + 14) = v65;
    *(v56 + 22) = 2048;
    *(v56 + 24) = v95;
    _os_log_impl(&dword_26524C000, v47, v94, "Cert does not need refresh. { issueDate: %s, currentDate: %s, flooredCertRefreshInterval: %ld }", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v89, -1, -1);
    MEMORY[0x2667577B0](v56, -1, -1);

    v60(v97, v55);
    v60(v99, v55);
    (*(v105 + 8))(v102, v100);
    (*(v92 + 8))(v90, v51);
  }

  else
  {

    v87 = *(v54 + 8);
    v87(v53, v55);
    v87(v52, v55);
    v87(v97, v55);
    v87(v99, v55);
    (*(v105 + 8))(v102, v100);
    (*(v49 + 8))(v50, v51);
  }

  v104 = 0;
LABEL_6:
  v15 = v0[28];
  v17 = v0[24];
  v16 = v0[25];
  v19 = v0[20];
  v18 = v0[21];
  v21 = v0[18];
  v20 = v0[19];
  v23 = v0[16];
  v22 = v0[17];
  v24 = v0[13];

  v25 = v0[1];

  return v25(v104);
}

{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[12];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[34];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26524C000, v4, v5, "Failed to get existing credential", v8, 2u);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  v9 = v0[12] + v0[32];
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[26];
  if (v12)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26524C000, v10, v11, "Will try to refresh cert.", v16, 2u);
    MEMORY[0x2667577B0](v16, -1, -1);
  }

  (*(v14 + 8))(v13, v15);
  v17 = v0[28];
  v18 = v0[24];
  v19 = v0[25];
  v21 = v0[20];
  v20 = v0[21];
  v23 = v0[18];
  v22 = v0[19];
  v25 = v0[16];
  v24 = v0[17];
  v26 = v0[13];

  v27 = v0[1];

  return v27(1);
}

uint64_t KDSRegistrationStateMachine.stateMachineModel()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for MLS.KeyPackageInfo();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = type metadata accessor for URI();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = type metadata accessor for KDSRegistration.URISupportedState();
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v2[18] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v2[19] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v19 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.stateMachineModel(), v19, v18);
}

uint64_t KDSRegistrationStateMachine.stateMachineModel()()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 24);

  v3 = *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder);
  type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8]);
  v74 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v75 = v4;
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 24);
  v8 = v7[4];
  v73 = v7[3];
  v9 = v7[6];
  v72 = v7[5];
  v10 = *(*v7 + 264);

  v10(v11);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState, MEMORY[0x277D4CA38]);
  v12 = v9;
  v70 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v71 = v13;
  v14 = *(v0 + 24);
  v15 = (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  *(v0 + 160) = (*(*v14 + 240))(v15);
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState();
  v69 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 96);
  (*(**(v0 + 24) + 360))();
  v22 = (*(v19 + 48))(v21, 1, v20);
  v23 = v8;
  if (v22 == 1)
  {
    v24 = outlined destroy of MLS.KeyPackageProvider?(*(v0 + 96), &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    v25 = 0;
    v68 = 0xF000000000000000;
  }

  else
  {
    (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 96), *(v0 + 104));
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
    v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v68 = v26;
    v24 = (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  }

  v28 = *(v0 + 72);
  v27 = *(v0 + 80);
  v29 = *(v0 + 64);
  (*(**(v0 + 24) + 288))(v24);
  if ((*(v27 + 48))(v29, 1, v28) == 1)
  {
    v76 = v23;
    v30 = outlined destroy of MLS.KeyPackageProvider?(*(v0 + 64), &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
    v65 = 0xF000000000000000;
    v66 = 0;
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo, MEMORY[0x277D4C938]);
    v31 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v65 = v32;
    v66 = v31;
    v76 = v23;
    v30 = (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  }

  v67 = v12;
  v34 = *(v0 + 40);
  v33 = *(v0 + 48);
  v35 = *(v0 + 24);
  v36 = *(v0 + 32);
  v37 = (*(*v35 + 312))(v30);
  v63 = v38;
  v64 = v37;
  v39 = (*(*v35 + 336))();
  v61 = v40;
  v62 = v39;
  (*(*v35 + 456))();
  v41 = v25;
  v42 = v18;
  if ((*(v33 + 48))(v36, 1, v34) == 1)
  {
    v43 = outlined destroy of MLS.KeyPackageProvider?(*(v0 + 32), &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
    v60 = 0;
    v58 = 0xF000000000000000;
  }

  else
  {
    v44 = *(v0 + 48);
    v45 = *(v0 + 56);
    v46 = *(v0 + 40);
    (*(v44 + 32))(v45, *(v0 + 32), v46);
    v60 = MLS.KeyPackageInfo.rawKeyPackage.getter();
    v58 = v47;
    v43 = (*(v44 + 8))(v45, v46);
  }

  v48 = *(v0 + 144);
  v49 = *(v0 + 120);
  v50 = *(v0 + 88);
  v51 = *(v0 + 96);
  v52 = *(v0 + 64);
  v57 = *(v0 + 56);
  v59 = *(v0 + 32);
  v53 = *(v0 + 16);
  v54 = (*(**(v0 + 24) + 480))(v43);
  *v53 = v74;
  *(v53 + 8) = v75;
  *(v53 + 16) = v73;
  *(v53 + 24) = v76;
  *(v53 + 32) = v72;
  *(v53 + 40) = v67;
  *(v53 + 48) = v41;
  *(v53 + 56) = v68;
  *(v53 + 64) = v70;
  *(v53 + 72) = v71;
  *(v53 + 80) = v69;
  *(v53 + 88) = v42;
  *(v53 + 96) = v66;
  *(v53 + 104) = v65;
  *(v53 + 112) = v64;
  *(v53 + 120) = v63;
  *(v53 + 128) = v62;
  *(v53 + 136) = v61;
  *(v53 + 144) = v60;
  *(v53 + 152) = v58;
  *(v53 + 160) = v54;
  *(v53 + 168) = v55 & 1;

  v56 = *(v0 + 8);

  return v56();
}

uint64_t KDSRegistrationStateMachine.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState;
  v4 = type metadata accessor for KDSRegistration.URISupportedState();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator));
  v5 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier;
  v6 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  outlined destroy of MLS.KeyPackageProvider?(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo), *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo + 8));
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR), *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR + 8));
  outlined destroy of MLS.KeyPackageProvider?(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v9 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential + 8);

  v10 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID + 8);

  outlined destroy of MLS.KeyPackageProvider?(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken), *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken + 8));
  v11 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction);
  swift_unknownObjectRelease();
  v12 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder);

  return v0;
}

uint64_t KDSRegistrationStateMachine.__deallocating_deinit()
{
  KDSRegistrationStateMachine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

BOOL specialized static KDSRegistrationStateMachine.RegistrationState.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 0x15u)
  {
    if (a1 > 0x13u)
    {
      if (a1 == 20)
      {
        return a2 == 20;
      }

      if (a1 == 21)
      {
        return a2 == 21;
      }
    }

    else
    {
      if (a1 == 18)
      {
        return a2 == 18;
      }

      if (a1 == 19)
      {
        return a2 == 19;
      }
    }
  }

  else if (a1 <= 0x17u)
  {
    if (a1 == 22)
    {
      return a2 == 22;
    }

    if (a1 == 23)
    {
      return a2 == 23;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x18u:
        return a2 == 24;
      case 0x19u:
        return a2 == 25;
      case 0x1Au:
        return a2 == 26;
    }
  }

  if (a2 - 18 < 9)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v72 = a8;
  v69 = a6;
  v70 = a7;
  v68 = a5;
  v67 = a4;
  v66 = a3;
  v73 = a9;
  v74 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v75 = &v65 - v19;
  v20 = type metadata accessor for JSONEncoder.OutputFormatting();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v71 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LogCategory();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77[3] = a12;
  v77[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_1, a1, a12);
  v76[3] = a13;
  v76[4] = a15;
  v29 = __swift_allocate_boxed_opaque_existential_1(v76);
  (*(*(a13 - 8) + 32))(v29, a2, a13);
  (*(v24 + 104))(v27, *MEMORY[0x277D4C918], v23);
  secureMessagingLogger(category:)();
  (*(v24 + 8))(v27, v23);
  v30 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo;
  v31 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v31 - 8) + 56))(a11 + v30, 1, 1, v31);
  v65 = xmmword_2653419D0;
  *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo) = xmmword_2653419D0;
  *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR) = xmmword_2653419D0;
  v32 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  v33 = type metadata accessor for URI();
  (*(*(v33 - 8) + 56))(a11 + v32, 1, 1, v33);
  v34 = (a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential);
  *v34 = 0;
  v34[1] = 0;
  *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType) = 4;
  v35 = (a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  v37 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v37 - 8) + 56))(a11 + v36, 1, 1, v37);
  v38 = a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  *v38 = 0;
  *(v38 + 8) = 1;
  *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken) = v65;
  *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction) = 0;
  v39 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder;
  v40 = type metadata accessor for JSONEncoder();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  *(a11 + v39) = JSONEncoder.init()();
  *(a11 + 16) = 18;
  v43 = v67;
  *(a11 + 24) = v66;
  *(a11 + 32) = v43;
  v44 = v69;
  *(a11 + 40) = v68;
  *(a11 + 48) = v44;
  v45 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState;
  v46 = type metadata accessor for KDSRegistration.URISupportedState();
  v47 = *(v46 - 8);
  v48 = v70;
  (*(v47 + 16))(a11 + v45, v70, v46);
  outlined init with copy of SMAUserDefaultsProtocol(v77, a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  outlined init with copy of SMAUserDefaultsProtocol(v76, a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v49 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier;
  v50 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v51 = *(v50 - 8);
  v52 = v72;
  (*(v51 + 16))(a11 + v49, v72, v50);
  v53 = (a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  v56 = v73;
  v57 = v74;
  *v53 = v73;
  v53[1] = v57;
  outlined copy of Data?(v56, v57);
  outlined consume of Data?(v54, v55);
  v58 = *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v59 = type metadata accessor for TaskPriority();
  v60 = v75;
  (*(*(v59 - 8) + 56))(v75, 1, 1, v59);
  type metadata accessor for RegistrationActor();

  v61 = static RegistrationActor.shared.getter();
  v62 = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v63 = swift_allocObject();
  v63[2] = v61;
  v63[3] = v62;
  v63[4] = a11;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v60, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v63);

  (*(v51 + 8))(v52, v50);
  (*(v47 + 8))(v48, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  return a11;
}

uint64_t specialized KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v33 = a9;
  v31 = a2;
  v32 = a10;
  v16 = *(a13 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](a1);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a12 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for KDSRegistrationStateMachine();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  (*(v21 + 16))(v24, a1, a12);
  (*(v16 + 16))(v20, v31, a13);
  return specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(v24, v20, v34, v35, v36, v37, v38, v39, v33, v32, v28, a12, a13, a14, a15);
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys);
  }

  return result;
}

uint64_t specialized KDSRegistrationStateMachine.RegistrationState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6974696177 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7964616572 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026534C560 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65696C43746567 && a2 == 0xEB00000000444974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026534C580 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E656449746567 && a2 == 0xEB00000000797469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265747369676572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7473696765726564 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
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

uint64_t specialized KDSRegistrationStateMachine.RegistrationState.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O16FailedCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O16FailedCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v3 = *(v2 - 8);
  v81 = v2;
  v82 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v86 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17SuccessCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17SuccessCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v6);
  v85 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O20DeregisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O20DeregisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = *(v77 + 64);
  MEMORY[0x28223BE20](v9);
  v90 = &v60 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O18RegisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O18RegisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v75 = *(v76 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v89 = &v60 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v73 = *(v74 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v88 = &v60 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O26GetPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O26GetPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v72 = *(v71 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  v84 = &v60 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v69 = *(v70 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v83 = &v60 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O28GetPhoneNumberInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O28GetPhoneNumberInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v67 = *(v68 - 8);
  v20 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v87 = &v60 - v21;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O15ReadyCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O15ReadyCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v65 = *(v66 - 8);
  v22 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v24 = &v60 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17WaitingCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17WaitingCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v64 = *(v25 - 8);
  v26 = *(v64 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v60 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v60 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys();
  v36 = v92;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v36)
  {
    v62 = v28;
    v61 = v25;
    v28 = v87;
    v37 = v88;
    v63 = 0;
    v39 = v89;
    v38 = v90;
    v92 = v30;
    v40 = KeyedDecodingContainer.allKeys.getter();
    v41 = (2 * *(v40 + 16)) | 1;
    v93 = v40;
    v94 = v40 + 32;
    v95 = 0;
    v96 = v41;
    v42 = specialized Collection<>.popFirst()();
    if (v42 != 10 && v95 == v96 >> 1)
    {
      if (v42 > 4u)
      {
        if (v42 <= 6u)
        {
          v45 = v92;
          if (v42 == 5)
          {
            v97 = 5;
            lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys();
            v53 = v63;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v53)
            {
              (*(v73 + 8))(v37, v74);
              (*(v45 + 8))(v33, v29);
              swift_unknownObjectRelease();
              v28 = 23;
              goto LABEL_13;
            }
          }

          else
          {
            v97 = 6;
            lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys();
            v58 = v63;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v58)
            {
              (*(v75 + 8))(v39, v76);
              (*(v45 + 8))(v33, v29);
              swift_unknownObjectRelease();
              v28 = 24;
              goto LABEL_13;
            }
          }
        }

        else
        {
          v45 = v92;
          if (v42 == 7)
          {
            v97 = 7;
            lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys();
            v54 = v63;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v54)
            {
              (*(v77 + 8))(v38, v78);
              (*(v45 + 8))(v33, v29);
              swift_unknownObjectRelease();
              v28 = 25;
              goto LABEL_13;
            }
          }

          else
          {
            v50 = v63;
            if (v42 == 8)
            {
              v97 = 8;
              lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys();
              v51 = v85;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              if (!v50)
              {
                (*(v79 + 8))(v51, v80);
                (*(v45 + 8))(v33, v29);
                swift_unknownObjectRelease();
                v28 = 26;
                goto LABEL_13;
              }
            }

            else
            {
              v97 = 9;
              lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys();
              v56 = v86;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              if (!v50)
              {
                lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
                v57 = v81;
                KeyedDecodingContainer.decode<A>(_:forKey:)();
                (*(v82 + 8))(v56, v57);
                (*(v45 + 8))(v33, v29);
                swift_unknownObjectRelease();
                v28 = v97;
                goto LABEL_13;
              }
            }
          }
        }
      }

      else
      {
        v43 = v63;
        if (v42 > 1u)
        {
          if (v42 != 2)
          {
            if (v42 == 3)
            {
              v97 = 3;
              lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys();
              v44 = v83;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v45 = v92;
              if (!v43)
              {
                (*(v69 + 8))(v44, v70);
                (*(v45 + 8))(v33, v29);
                swift_unknownObjectRelease();
                v28 = 21;
                goto LABEL_13;
              }

              goto LABEL_36;
            }

            v97 = 4;
            lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys();
            v55 = v84;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v52 = v92;
            if (!v43)
            {
              (*(v72 + 8))(v55, v71);
              (*(v52 + 8))(v33, v29);
              swift_unknownObjectRelease();
              v28 = 22;
              goto LABEL_13;
            }

            goto LABEL_30;
          }

          v97 = 2;
          lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v43)
          {
            (*(v67 + 8))(v28, v68);
            (*(v92 + 8))(v33, v29);
            swift_unknownObjectRelease();
            v28 = 20;
            goto LABEL_13;
          }

LABEL_11:
          (*(v92 + 8))(v33, v29);
LABEL_12:
          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        if (!v42)
        {
          v97 = 0;
          lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys();
          v28 = v62;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v52 = v92;
          if (!v43)
          {
            (*(v64 + 8))(v28, v61);
            (*(v52 + 8))(v33, v29);
            swift_unknownObjectRelease();
            v28 = 18;
            goto LABEL_13;
          }

LABEL_30:
          (*(v52 + 8))(v33, v29);
          goto LABEL_12;
        }

        v97 = 1;
        lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v45 = v92;
        if (!v43)
        {
          (*(v65 + 8))(v24, v66);
          (*(v45 + 8))(v33, v29);
          swift_unknownObjectRelease();
          v28 = 19;
          goto LABEL_13;
        }
      }

LABEL_36:
      v59 = *(v45 + 8);
      v28 = v45 + 8;
      v59(v33, v29);
      goto LABEL_12;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v47 = &type metadata for KDSRegistrationStateMachine.RegistrationState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v47, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    goto LABEL_11;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  return v28;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys);
  }

  return result;
}

uint64_t specialized KDSRegistrationStateMachine.StateMachineError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026534C5A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000026534C5C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026534C5E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x685064656C696166 && a2 == 0xEF68747541656E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026534C600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026534C620 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026534C640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026534C660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026534C680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026534C6A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x43676E697373696DLL && a2 == 0xEA00000000005253 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x54676E697373696DLL && a2 == 0xED00004952556C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026534C6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000026534C6E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026534C700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000026534C720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000026534C740 == a2)
  {

    return 17;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t specialized KDSRegistrationStateMachine.StateMachineError.init(from:)(uint64_t *a1)
{
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO37MissingServerVendedClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO37MissingServerVendedClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v134 = *(v151 - 8);
  v2 = *(v134 + 64);
  MEMORY[0x28223BE20](v151);
  v147 = v98 - v3;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingNextHeartbeatIntervalCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingNextHeartbeatIntervalCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v132 = *(v133 - 8);
  v4 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v146 = v98 - v5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27MissingKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27MissingKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v130 = *(v131 - 8);
  v6 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v145 = v98 - v7;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingPhoneNumberCredentialCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingPhoneNumberCredentialCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v128 = *(v129 - 8);
  v8 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v144 = v98 - v9;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO33MissingResponseIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO33MissingResponseIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v126 = *(v127 - 8);
  v10 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v143 = v98 - v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO23MissingTelURICodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO23MissingTelURICodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v124 = *(v125 - 8);
  v12 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v142 = v98 - v13;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO20MissingCSRCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO20MissingCSRCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v122 = *(v123 - 8);
  v14 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v141 = v98 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO32MissingParticipantInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO32MissingParticipantInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v120 = *(v121 - 8);
  v16 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v140 = v98 - v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30MissingPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30MissingPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v118 = *(v119 - 8);
  v18 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v139 = v98 - v19;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO019InvalidURISupportedI10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO019InvalidURISupportedI10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v116 = *(v117 - 8);
  v20 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v138 = v98 - v21;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v114 = *(v115 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v150 = v98 - v23;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO34FailedRegisterKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO34FailedRegisterKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v113 = *(v112 - 8);
  v24 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  v149 = v98 - v25;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v110 = *(v111 - 8);
  v26 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v148 = v98 - v27;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO25FailedPhoneAuthCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO25FailedPhoneAuthCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v108 = *(v109 - 8);
  v28 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v137 = v98 - v29;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30FailedGetPhoneNumberCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30FailedGetPhoneNumberCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v106 = *(v107 - 8);
  v30 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v136 = v98 - v31;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO39InvalidClientUniqueIdentifierCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO39InvalidClientUniqueIdentifierCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v104 = *(v105 - 8);
  v32 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v135 = v98 - v33;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO28MissingSimUniqueIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO28MissingSimUniqueIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v102 = *(v103 - 8);
  v34 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v36 = v98 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO22FailedToLoadCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO22FailedToLoadCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v101 = *(v37 - 8);
  v38 = *(v101 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = v98 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = v98 - v44;
  v46 = a1[3];
  v47 = a1[4];
  v153[0] = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys();
  v48 = v152;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v48)
  {
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v153[0]);
    return v42;
  }

  v99 = v40;
  v98[1] = v37;
  v100 = v36;
  v50 = v148;
  v49 = v149;
  v152 = 0;
  v51 = v150;
  v52 = v151;
  v53 = v42;
  v54 = KeyedDecodingContainer.allKeys.getter();
  v55 = (2 * v54[2]) | 1;
  v153[1] = v54;
  v154 = v54 + 4;
  v155 = 0;
  v156 = v55;
  v56 = specialized Collection<>.popFirst()();
  if (v155 != v156 >> 1)
  {
LABEL_6:
    v62 = type metadata accessor for DecodingError();
    swift_allocError();
    v64 = v63;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v64 = &type metadata for KDSRegistrationStateMachine.StateMachineError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D84160], v62);
    swift_willThrow();
LABEL_7:
    (*(v53 + 8))(v45, v41);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v42 = v56;
  switch(v56)
  {
    case 0:
      v158 = 0;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys();
      v57 = v99;
      v58 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v58)
      {
        goto LABEL_7;
      }

      v59 = *(v101 + 8);
      v60 = v57;
      v61 = &v130;
      goto LABEL_44;
    case 1:
      v158 = 1;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys();
      v86 = v100;
      v87 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v87)
      {
        goto LABEL_7;
      }

      v59 = *(v102 + 8);
      v60 = v86;
      v61 = &v135;
      goto LABEL_44;
    case 2:
      v158 = 2;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys();
      v79 = v135;
      v80 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v80)
      {
        goto LABEL_7;
      }

      v59 = *(v104 + 8);
      v60 = v79;
      v61 = &v137;
      goto LABEL_44;
    case 3:
      v158 = 3;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys();
      v83 = v136;
      v84 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v84)
      {
        goto LABEL_7;
      }

      v59 = *(v106 + 8);
      v60 = v83;
      v61 = &v139;
      goto LABEL_44;
    case 4:
      v158 = 4;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys();
      v73 = v137;
      v74 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v74)
      {
        goto LABEL_7;
      }

      v59 = *(v108 + 8);
      v60 = v73;
      v61 = &v141;
      goto LABEL_44;
    case 5:
      v158 = 5;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys();
      v90 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v90)
      {
        goto LABEL_7;
      }

      v59 = *(v110 + 8);
      v60 = v50;
      v61 = &v143;
      goto LABEL_44;
    case 6:
      v158 = 6;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys();
      v93 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v93)
      {
        goto LABEL_7;
      }

      v59 = *(v113 + 8);
      v60 = v49;
      v61 = &v144;
      goto LABEL_44;
    case 7:
      v158 = 7;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys();
      v85 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v85)
      {
        goto LABEL_7;
      }

      v59 = *(v114 + 8);
      v60 = v51;
      v61 = &v147;
      goto LABEL_44;
    case 8:
      v158 = 8;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys();
      v96 = v138;
      v97 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v97)
      {
        goto LABEL_7;
      }

      v59 = *(v116 + 8);
      v60 = v96;
      v61 = &v149;
      goto LABEL_44;
    case 9:
      v158 = 9;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys();
      v77 = v139;
      v78 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_7;
      }

      v59 = *(v118 + 8);
      v60 = v77;
      v61 = &v151;
      goto LABEL_44;
    case 10:
      v158 = 10;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys();
      v94 = v140;
      v95 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v95)
      {
        goto LABEL_7;
      }

      v59 = *(v120 + 8);
      v60 = v94;
      v61 = v153;
      goto LABEL_44;
    case 11:
      v158 = 11;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys();
      v71 = v141;
      v72 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v72)
      {
        goto LABEL_7;
      }

      v59 = *(v122 + 8);
      v60 = v71;
      v61 = &v154;
      goto LABEL_44;
    case 12:
      v158 = 12;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys();
      v75 = v142;
      v76 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v76)
      {
        goto LABEL_7;
      }

      v59 = *(v124 + 8);
      v60 = v75;
      v61 = &v156;
      goto LABEL_44;
    case 13:
      v158 = 13;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys();
      v91 = v143;
      v92 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v92)
      {
        goto LABEL_7;
      }

      v59 = *(v126 + 8);
      v60 = v91;
      v61 = &v157;
      goto LABEL_44;
    case 14:
      v158 = 14;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys();
      v69 = v144;
      v70 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v70)
      {
        goto LABEL_7;
      }

      v59 = *(v128 + 8);
      v60 = v69;
      v61 = &v159;
      goto LABEL_44;
    case 15:
      v158 = 15;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys();
      v81 = v145;
      v82 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v82)
      {
        goto LABEL_7;
      }

      v59 = *(v130 + 8);
      v60 = v81;
      v61 = &v160;
      goto LABEL_44;
    case 16:
      v158 = 16;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys();
      v67 = v146;
      v68 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v68)
      {
        goto LABEL_7;
      }

      v59 = *(v132 + 8);
      v60 = v67;
      v61 = &v161;
LABEL_44:
      v59(v60, *(v61 - 32));
      break;
    case 17:
      v158 = 17;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys();
      v88 = v147;
      v89 = v152;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v89)
      {
        goto LABEL_7;
      }

      (*(v134 + 8))(v88, v52);
      break;
    default:
      goto LABEL_6;
  }

  (*(v53 + 8))(v45, v41);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v153[0]);
  return v42;
}

uint64_t outlined assign with take of KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v98 = a8;
  v99 = a7;
  v85 = a6;
  v84 = a5;
  v83 = a4;
  v82 = a3;
  v96 = a18;
  v94 = a17;
  v93 = a16;
  v92 = a15;
  v91 = a14;
  v89 = a13;
  v88 = a12;
  v97 = a10;
  v87 = a11;
  v86 = a9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v95 = &v81 - v27;
  v28 = type metadata accessor for JSONEncoder.OutputFormatting();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v90 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LogCategory();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101[3] = a20;
  v101[4] = a22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
  (*(*(a20 - 8) + 32))(boxed_opaque_existential_1, a1, a20);
  v100[3] = a21;
  v100[4] = a23;
  v37 = __swift_allocate_boxed_opaque_existential_1(v100);
  (*(*(a21 - 8) + 32))(v37, a2, a21);
  (*(v32 + 104))(v35, *MEMORY[0x277D4C918], v31);
  secureMessagingLogger(category:)();
  (*(v32 + 8))(v35, v31);
  v38 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo;
  v39 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v39 - 8) + 56))(a19 + v38, 1, 1, v39);
  v81 = xmmword_2653419D0;
  *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo) = xmmword_2653419D0;
  *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR) = xmmword_2653419D0;
  v40 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  v41 = type metadata accessor for URI();
  (*(*(v41 - 8) + 56))(a19 + v40, 1, 1, v41);
  v42 = (a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential);
  *v42 = 0;
  v42[1] = 0;
  *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType) = 4;
  v43 = (a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID);
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  v45 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v45 - 8) + 56))(a19 + v44, 1, 1, v45);
  v46 = a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  *v46 = 0;
  *(v46 + 8) = 1;
  *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken) = v81;
  *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction) = 0;
  v47 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder;
  v48 = type metadata accessor for JSONEncoder();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  *(a19 + v47) = JSONEncoder.init()();
  outlined init with copy of SMAUserDefaultsProtocol(v101, a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  outlined init with copy of SMAUserDefaultsProtocol(v100, a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v51 = v83;
  *(a19 + 24) = v82;
  *(a19 + 32) = v51;
  v52 = v85;
  *(a19 + 40) = v84;
  *(a19 + 48) = v52;
  v53 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState;
  v54 = type metadata accessor for KDSRegistration.URISupportedState();
  v55 = *(v54 - 8);
  (*(v55 + 16))(a19 + v53, v99, v54);
  v56 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier;
  v57 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v58 = *(v57 - 8);
  (*(v58 + 16))(a19 + v56, v98, v57);
  *(a19 + 16) = v86;
  v59 = (a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR);
  swift_beginAccess();
  v60 = *v59;
  v61 = v59[1];
  v62 = v87;
  v63 = v88;
  *v59 = v87;
  v59[1] = v63;
  outlined copy of Data?(v62, v63);
  outlined consume of Data?(v60, v61);
  v64 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  swift_beginAccess();
  v65 = v89;
  outlined assign with copy of URI?(v89, a19 + v64, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  swift_endAccess();
  v66 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  swift_beginAccess();
  v67 = v91;
  outlined assign with copy of URI?(v91, a19 + v66, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  swift_endAccess();
  v68 = a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  swift_beginAccess();
  *v68 = v92;
  *(v68 + 8) = v93 & 1;
  v69 = (a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken);
  swift_beginAccess();
  v71 = *v69;
  v70 = v69[1];
  v72 = v94;
  v73 = v96;
  *v69 = v94;
  v69[1] = v73;
  outlined copy of Data?(v72, v73);
  outlined consume of Data?(v71, v70);
  v74 = *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v75 = type metadata accessor for TaskPriority();
  v76 = v95;
  (*(*(v75 - 8) + 56))(v95, 1, 1, v75);
  type metadata accessor for RegistrationActor();

  v77 = static RegistrationActor.shared.getter();
  v78 = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v79 = swift_allocObject();
  v79[2] = v77;
  v79[3] = v78;
  v79[4] = a19;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v76, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v79);

  outlined destroy of MLS.KeyPackageProvider?(v67, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  outlined destroy of MLS.KeyPackageProvider?(v65, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  outlined destroy of MLS.KeyPackageProvider?(v97, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  (*(v58 + 8))(v98, v57);
  (*(v55 + 8))(v99, v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  return a19;
}

uint64_t specialized KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v43 = a9;
  v41 = a11;
  v42 = a10;
  v39 = a13;
  v40 = a12;
  v38 = a15;
  v36 = a2;
  v37 = a16;
  v35 = a19;
  v21 = *(a18 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](a1);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a17 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  v29 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for KDSRegistrationStateMachine();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  (*(v26 + 16))(v29, a1, a17);
  (*(v21 + 16))(v25, v36, a18);
  return specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(v29, v25, v44, v45, v46, v47, v48, v49, v43, v42, *(&v42 + 1), v41, *(&v41 + 1), v40, v39, a14 & 1, v38, v37, v33, a17, a18, v35, a20);
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState);
  }

  return result;
}

uint64_t sub_26532BF74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t sub_26532C0A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26532C0FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 320);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_26532C170@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26532C1C4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 344);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_26532C288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26532C2DC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 392);

  return v4(v2, v3);
}

uint64_t sub_26532C34C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_26532C3F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26532C444(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 440);

  return v4(v2, v3);
}

uint64_t sub_26532C504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26532C5BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26532C610(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 512);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_26532C684@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  return result;
}

uint64_t sub_26532C6D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 536);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t dispatch thunk of StateMachineOperator.getPhoneNumberInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of StateMachineOperator.publicSigningKey(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of StateMachineOperator.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of StateMachineOperator.credentialSigningRequest(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineOperator.updateClientID(clientID:uri:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t dispatch thunk of StateMachineOperator.loadCredential(credential:uri:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineOperator.getKeyPackage(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineOperator.save(registrationStateMachine:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of StateMachineOperator.setupHeartbeat(nextHeartbeatInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(a2 + 72);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);
  v10.n128_f64[0] = a3;

  return v12(a1, a2, v10);
}

uint64_t dispatch thunk of StateMachineOperator.updatePushHandlerIfNeeded()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 80);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v9(a1, a2);
}

uint64_t dispatch thunk of StateMachineOperator.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 88);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of StateMachineOperator.getCredential(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineNetworkOperator.getClientID(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineNetworkOperator.registerKeyPackage(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineNetworkOperator.deregisterKeyPackage(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineNetworkOperator.fetchIdentity(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineNetworkOperator.queryKeyPackage(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4);
}

uint64_t type metadata accessor for KDSRegistrationStateMachine()
{
  result = type metadata singleton initialization cache for KDSRegistrationStateMachine;
  if (!type metadata singleton initialization cache for KDSRegistrationStateMachine)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for KDSRegistrationStateMachine()
{
  v0 = type metadata accessor for KDSRegistration.URISupportedState();
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    v2 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Logger();
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(319, &lazy cache variable for type metadata for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?, MEMORY[0x277D4C938]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(319, &lazy cache variable for type metadata for URI?, MEMORY[0x277D4D258]);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(319, &lazy cache variable for type metadata for MLS.KeyPackageInfo?, MEMORY[0x277D4CCE8]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of KDSRegistrationStateMachine.updateURISupportedState(_:)(uint64_t a1)
{
  v4 = *(*v1 + 568);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1);
}

uint64_t dispatch thunk of KDSRegistrationStateMachine.heartbeat(transaction:)(uint64_t a1)
{
  v4 = *(*v1 + 576);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1);
}

uint64_t dispatch thunk of KDSRegistrationStateMachine.run()()
{
  v2 = *(*v0 + 592);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of KDSRegistrationStateMachine.stateMachineModel()(uint64_t a1)
{
  v4 = *(*v1 + 680);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1);
}

void type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for KDSRegistrationStateMachine.RegistrationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 26;
  if (a2 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 26;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 26;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x12)
  {
    v8 = v7 - 17;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xA)
  {
    return v8 - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for KDSRegistrationStateMachine.RegistrationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 26;
  if (a3 + 26 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xE6)
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for KDSRegistrationStateMachine.RegistrationState(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x12)
  {
    return v1 - 17;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for KDSRegistrationStateMachine.RegistrationState(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 17;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistrationStateMachine.StateMachineError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for KDSRegistrationStateMachine.StateMachineError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for KDSRegistrationStateMachine.RegistrationState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistrationStateMachine.RegistrationState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined destroy of PhoneNumberInfo(uint64_t a1)
{
  v2 = type metadata accessor for PhoneNumberInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

uint64_t partial apply for implicit closure #4 in KDSRegistrationStateMachine.getIdentity()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = Data.asSecCerts()();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with copy of URI?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t specialized SMAUserDefaults.keyPackageOverride(uri:platform:)(uint64_t a1, uint64_t a2)
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x266756A10](0xD000000000000019, 0x800000026534C790);
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    return 0;
  }

  v7 = MEMORY[0x266756A10](0x6F2D706B2D73646BLL, 0xEF65646972726576);
  v8 = [v6 dictionaryForKey_];

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x266756A70](45, 0xE100000000000000);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v10);

  if (!*(v9 + 16))
  {

    goto LABEL_10;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  outlined init with copy of Any(*(v9 + 56) + 32 * v11, v18);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    return 0;
  }

  v14 = Data.init(base64Encoded:options:)();
  v16 = v15;

  if (v16 >> 60 != 15)
  {
    return v14;
  }

  return 0;
}

uint64_t specialized SMAUserDefaults.shouldUseTestNumber()()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = MEMORY[0x266756A10](0xD000000000000019, 0x800000026534C790);
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = MEMORY[0x266756A10](0xD000000000000016, 0x800000026534C7B0);
      v5 = [v3 BOOLForKey_];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

sqlite3_stmt *SecureMessagingClientModel.insertStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("INSERT OR REPLACE INTO SMA_Client_Table (sma_client_id, swiftmls_client_id) VALUES (?, ?);");
  if (!v6)
  {
LABEL_56:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
LABEL_40:
    *&v31 = 0x726F7272456C7173;
    *(&v31 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_32;
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v11, v14))
      {
        goto LABEL_54;
      }

      v13 += v11 - v14;
    }

    v15 = __OFSUB__(v12, v11);
    v16 = v12 - v11;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = MEMORY[0x2667557A0]();
      if (v7 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v7;
      }

      if (v13)
      {
        a3 = v17;
      }

      else
      {
        a3 = 0;
      }

      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
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

  if (v8)
  {
LABEL_21:
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_51;
    }

    v13 = __DataStorage._bytes.getter();
    if (!v13)
    {
LABEL_25:
      v7 = MEMORY[0x2667557A0]();
      if (v7 >= (a2 >> 32) - a2)
      {
        a3 = (a2 >> 32) - a2;
      }

      else
      {
        a3 = v7;
      }

      if (v13)
      {
        if (a3 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_49;
        }

        if (a3 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v31 + 6) = 0;
          *&v31 = 0;
          v7 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v9 = SQLITE_TRANSIENT;
            v10 = &v31;
            v19 = 0;
            goto LABEL_39;
          }

LABEL_51:
          v30 = v7;
          swift_once();
          v7 = v30;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a3) = 0;
      }

LABEL_35:
      v7 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v28 = ppStmt[0];
        swift_once();
        v7 = v28;
      }

      v9 = SQLITE_TRANSIENT;
      v10 = v13;
      goto LABEL_38;
    }

    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v18))
    {
      v13 += a2 - v18;
      goto LABEL_25;
    }

    goto LABEL_55;
  }

  *&v31 = a2;
  WORD4(v31) = a3;
  BYTE10(v31) = BYTE2(a3);
  BYTE11(v31) = BYTE3(a3);
  BYTE12(v31) = BYTE4(a3);
  BYTE13(v31) = BYTE5(a3);
  v7 = ppStmt[0];
  LODWORD(a3) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_49:
    v29 = v7;
    swift_once();
    v7 = v29;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = &v31;
LABEL_38:
  v19 = a3;
LABEL_39:
  if (sqlite3_bind_blob(v7, 1, v10, v19, v9))
  {
    goto LABEL_40;
  }

  v25 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v26 = String.utf8CString.getter();
  v27 = sqlite3_bind_text(v25, 2, (v26 + 32), -1, v9);

  if (!v27)
  {
    result = ppStmt[0];
    goto LABEL_42;
  }

  *&v31 = 0x726F7272456C7173;
  *(&v31 + 1) = 0xE90000000000003ALL;
LABEL_41:
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v20);

  v21 = v31;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v22 = 0;
  *(v22 + 8) = v21;
  result = swift_willThrow();
LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *SecureMessagingClientModel.updateStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("UPDATE SMA_Client_Table SET\n    swiftmls_client_id = ?\nWHERE\n    sma_client_id = ?;");
  if (!v6)
  {
LABEL_49:
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0))
  {
    v7 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT != -1)
    {
      swift_once();
    }

    v8 = SQLITE_TRANSIENT;
    v9 = String.utf8CString.getter();
    v10 = sqlite3_bind_text(v7, 1, (v9 + 32), -1, v8);

    if (v10)
    {
      *&v30 = 0x726F7272456C7173;
      *(&v30 + 1) = 0xE90000000000003ALL;
      goto LABEL_8;
    }

    v16 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v16 != 2)
      {
LABEL_38:
        *(&v30 + 6) = 0;
        *&v30 = 0;
        v18 = ppStmt[0];
        v19 = &v30;
        LODWORD(v17) = 0;
        goto LABEL_41;
      }

      v20 = *(a2 + 16);
      v21 = *(a2 + 24);
      v22 = __DataStorage._bytes.getter();
      if (v22)
      {
        v23 = __DataStorage._offset.getter();
        if (__OFSUB__(v20, v23))
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v22 += v20 - v23;
      }

      v24 = __OFSUB__(v21, v20);
      v25 = v21 - v20;
      if (v24)
      {
        goto LABEL_45;
      }

      a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = MEMORY[0x2667557A0]();
      if (v26 >= v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v26;
      }

      if (v22)
      {
        v17 = v27;
      }

      else
      {
        v17 = 0;
      }

      if (v17 < 0xFFFFFFFF80000000)
      {
        goto LABEL_46;
      }

      if (v17 <= 0x7FFFFFFF)
      {
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (!v16)
    {
      *&v30 = a2;
      WORD4(v30) = a3;
      BYTE10(v30) = BYTE2(a3);
      BYTE11(v30) = BYTE3(a3);
      BYTE12(v30) = BYTE4(a3);
      BYTE13(v30) = BYTE5(a3);
      LODWORD(v17) = BYTE6(a3);
      v18 = ppStmt[0];
      v19 = &v30;
      goto LABEL_41;
    }

    if (a2 >> 32 >= a2)
    {
      v22 = __DataStorage._bytes.getter();
      if (v22)
      {
        v28 = __DataStorage._offset.getter();
        if (__OFSUB__(a2, v28))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v22 += a2 - v28;
      }

      v29 = MEMORY[0x2667557A0]();
      if (v29 >= (a2 >> 32) - a2)
      {
        v17 = (a2 >> 32) - a2;
      }

      else
      {
        v17 = v29;
      }

      if (!v22)
      {
        LODWORD(v17) = 0;
        goto LABEL_40;
      }

      if (v17 >= 0xFFFFFFFF80000000)
      {
        if (v17 > 0x7FFFFFFF)
        {
          __break(1u);
          goto LABEL_38;
        }

LABEL_40:
        v18 = ppStmt[0];
        v19 = v22;
LABEL_41:
        if (!sqlite3_bind_blob(v18, 2, v19, v17, v8))
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
  *&v30 = 0x726F7272456C7173;
  *(&v30 + 1) = 0xE90000000000003ALL;
LABEL_8:
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v11);

  v12 = v30;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v13 = 0;
  *(v13 + 8) = v12;
  result = swift_willThrow();
LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *SecureMessagingClientModel.deleteStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("DELETE FROM SMA_Client_Table WHERE sma_client_id = ?;");
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

uint64_t closure #1 in variable initialization expression of static SecureMessagingClientModel.converter(sqlite3_stmt *a1)
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
  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
    outlined consume of Data._Representation(v1, v7);
LABEL_7:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v8 = 3;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  String.init(cString:)();
  return v1;
}

uint64_t (*static SecureMessagingClientModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static SecureMessagingClientModel.converter;

  return v0;
}

uint64_t static SecureMessagingClientModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static SecureMessagingClientModel.converter = a1;
  qword_281EF8B10 = a2;
}

uint64_t key path getter for static SecureMessagingClientModel.converter : SecureMessagingClientModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static SecureMessagingClientModel.converter;
  v2 = qword_281EF8B10;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static SecureMessagingClientModel.converter : SecureMessagingClientModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static SecureMessagingClientModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error)partial apply;
  qword_281EF8B10 = v3;
}

sqlite3_stmt *protocol witness for SqlSchema.insertStatement(_:) in conformance SecureMessagingClientModel(sqlite3 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return SecureMessagingClientModel.insertStatement(_:)(a1, *v1, v1[1]);
}

sqlite3_stmt *protocol witness for SqlSchema.updateStatement(_:) in conformance SecureMessagingClientModel(sqlite3 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return SecureMessagingClientModel.updateStatement(_:)(a1, *v1, v1[1]);
}

uint64_t (*protocol witness for static SqlSchema.converter.getter in conformance SecureMessagingClientModel())@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v1 = static SecureMessagingClientModel.converter;
  v0 = qword_281EF8B10;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)partial apply;
}

uint64_t *SecureMessagingClientQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static SecureMessagingClientQuery.converter;
}

uint64_t static SecureMessagingClientQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static SecureMessagingClientQuery.converter;

  return v0;
}

uint64_t static SecureMessagingClientQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SecureMessagingClientQuery.converter = a1;
  qword_2800169F0 = a2;
}

uint64_t (*static SecureMessagingClientQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static SecureMessagingClientQuery.converter : SecureMessagingClientQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static SecureMessagingClientQuery.converter;
  v2 = qword_2800169F0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static SecureMessagingClientQuery.converter : SecureMessagingClientQuery.Type(uint64_t *a1)
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
  static SecureMessagingClientQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error);
  qword_2800169F0 = v3;
}

sqlite3_stmt *SecureMessagingClientQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM SMA_Client_Table WHERE sma_client_id = ? LIMIT 1;");
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

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance SecureMessagingClientQuery())@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static SecureMessagingClientQuery.converter;
  v0 = qword_2800169F0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error);
}

sqlite3_stmt *specialized static SecureMessagingClientModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS SMA_Client_Table (\n    sma_client_id BLOB NOT NULL,\n    swiftmls_client_id TEXT NOT NULL,\n    PRIMARY KEY (sma_client_id)\n);");
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

sqlite3_stmt *specialized static SecureMessagingClientModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS SMA_Client_Table");
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

uint64_t sub_265332AB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)(a1, a2);
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)@<X0>(uint64_t *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)(a1);
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

uint64_t FailureToDecryptRetryQuery.init(clientIdentifier:group:messageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t FailureToDecryptRetryModel.init(clientIdentifier:group:messageID:retryCount:timestamp:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t FailureToDecryptRetryModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t FailureToDecryptRetryModel.group.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FailureToDecryptRetryModel.messageID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

sqlite3_stmt *FailureToDecryptRetryModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("INSERT OR REPLACE INTO FTD_Retry_Table (client_id, group_id, message_id, retry_count, timestamp) VALUES (?, ?, ?, ?, ?);");
  if (!v3)
  {
LABEL_62:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
    goto LABEL_43;
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v46 = *v1;
      DWORD2(v46) = v6;
      WORD6(v46) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v46;
        LODWORD(v11) = v8;
        goto LABEL_42;
      }

LABEL_56:
      v44 = v4;
      swift_once();
      v4 = v44;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v46 + 6) = 0;
    *&v46 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v46;
      LODWORD(v11) = 0;
      goto LABEL_42;
    }

LABEL_58:
    v45 = v4;
    swift_once();
    v4 = v45;
    goto LABEL_25;
  }

  v12 = v1;
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = __DataStorage._bytes.getter();
  if (!v15)
  {
    v8 = 0;
    v18 = v14 - v13;
    if (!__OFSUB__(v14, v13))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = v15;
  v17 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v17))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v8 = (v13 - v17 + v16);
  v18 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v4;
  }

  if (v8)
  {
    v11 = v19;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_60;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v20 = v5;
  v21 = v5 >> 32;
  v13 = v21 - v20;
  if (v21 < v20)
  {
    __break(1u);
    goto LABEL_58;
  }

  v12 = v1;
  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v20, v24))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v8 = (v20 - v24 + v23);
LABEL_30:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_56;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v1 = v12;
LABEL_39:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v40 = ppStmt[0];
    v41 = v11;
    swift_once();
    v4 = v40;
    LODWORD(v11) = v41;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_42:
  if (!sqlite3_bind_blob(v4, 1, v10, v11, v9))
  {
    v30 = ppStmt[0];
    v31 = *(v1 + 16);
    v32 = *(v1 + 24);
    if (one-time initialization token for SQLITE_TRANSIENT != -1)
    {
      v42 = *(v1 + 16);
      v43 = *(v1 + 24);
      swift_once();
    }

    v33 = String.utf8CString.getter();
    v34 = sqlite3_bind_text(v30, 2, (v33 + 32), -1, v9);

    if (v34)
    {
      *&v46 = 0x726F7272456C7173;
      *(&v46 + 1) = 0xE90000000000003ALL;
      goto LABEL_44;
    }

    v35 = ppStmt[0];
    v36 = *(v1 + 32);
    v37 = *(v1 + 40);
    v38 = String.utf8CString.getter();
    v39 = sqlite3_bind_text(v35, 3, (v38 + 32), -1, v9);

    if (v39)
    {
      *&v46 = 0x726F7272456C7173;
      *(&v46 + 1) = 0xE90000000000003ALL;
      goto LABEL_44;
    }

    if (!sqlite3_bind_int(ppStmt[0], 4, *(v1 + 48)) && !sqlite3_bind_int64(ppStmt[0], 5, *(v1 + 56)))
    {
      result = ppStmt[0];
      goto LABEL_45;
    }
  }

LABEL_43:
  *&v46 = 0x726F7272456C7173;
  *(&v46 + 1) = 0xE90000000000003ALL;
LABEL_44:
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v25);

  v26 = v46;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v27 = 0;
  *(v27 + 8) = v26;
  result = swift_willThrow();
LABEL_45:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *FailureToDecryptRetryModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("UPDATE FTD_Retry_Table SET\n    retry_count = ?\nWHERE\n    client_id = ? AND group_id = ? AND message_id = ?;");
  if (!v3)
  {
LABEL_61:
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0))
  {
    goto LABEL_43;
  }

  v4 = sqlite3_bind_int(ppStmt[0], 1, *(v1 + 48));
  if (v4)
  {
    goto LABEL_43;
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v46 + 6) = 0;
      *&v46 = 0;
      v4 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_17:
        v9 = SQLITE_TRANSIENT;
        v10 = &v46;
        LODWORD(v11) = 0;
        goto LABEL_42;
      }

LABEL_56:
      v45 = v4;
      swift_once();
      v4 = v45;
      goto LABEL_17;
    }

    v12 = v1;
    v13 = *(v5 + 16);
    v14 = *(v5 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = v15;
      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v17))
      {
        goto LABEL_59;
      }

      v8 = (v13 - v17 + v16);
    }

    else
    {
      v8 = 0;
    }

    if (__OFSUB__(v14, v13))
    {
      __break(1u);
    }

    else
    {
      v23 = MEMORY[0x2667557A0]();
      if (v23 >= v14 - v13)
      {
        v24 = v14 - v13;
      }

      else
      {
        v24 = v23;
      }

      if (v8)
      {
        v11 = v24;
      }

      else
      {
        v11 = 0;
      }

      if (v11 >= 0xFFFFFFFF80000000)
      {
        if (v11 <= 0x7FFFFFFF)
        {
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v7)
  {
    *&v46 = *v1;
    DWORD2(v46) = v6;
    WORD6(v46) = WORD2(v6);
    v4 = ppStmt[0];
    LODWORD(v8) = BYTE6(v6);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_7:
      v9 = SQLITE_TRANSIENT;
      v10 = &v46;
      LODWORD(v11) = v8;
      goto LABEL_42;
    }

LABEL_54:
    v44 = v4;
    swift_once();
    v4 = v44;
    goto LABEL_7;
  }

  v18 = v5;
  v19 = v5 >> 32;
  v13 = v19 - v18;
  if (v19 < v18)
  {
    __break(1u);
    goto LABEL_56;
  }

  v12 = v1;
  v20 = __DataStorage._bytes.getter();
  if (!v20)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v21 = v20;
  v22 = __DataStorage._offset.getter();
  if (__OFSUB__(v18, v22))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v8 = (v18 - v22 + v21);
LABEL_30:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_54;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v1 = v12;
LABEL_39:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v40 = ppStmt[0];
    v41 = v11;
    swift_once();
    v4 = v40;
    LODWORD(v11) = v41;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_42:
  if (sqlite3_bind_blob(v4, 2, v10, v11, v9))
  {
LABEL_43:
    *&v46 = 0x726F7272456C7173;
    *(&v46 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  v30 = ppStmt[0];
  v31 = *(v1 + 16);
  v32 = *(v1 + 24);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v42 = *(v1 + 16);
    v43 = *(v1 + 24);
    swift_once();
  }

  v33 = String.utf8CString.getter();
  v34 = sqlite3_bind_text(v30, 3, (v33 + 32), -1, v9);

  if (v34)
  {
    *&v46 = 0x726F7272456C7173;
    *(&v46 + 1) = 0xE90000000000003ALL;
  }

  else
  {
    v35 = ppStmt[0];
    v36 = *(v1 + 32);
    v37 = *(v1 + 40);
    v38 = String.utf8CString.getter();
    v39 = sqlite3_bind_text(v35, 4, (v38 + 32), -1, v9);

    if (!v39)
    {
      result = ppStmt[0];
      goto LABEL_45;
    }

    *&v46 = 0x726F7272456C7173;
    *(&v46 + 1) = 0xE90000000000003ALL;
  }

LABEL_44:
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v25);

  v26 = v46;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v27 = 0;
  *(v27 + 8) = v26;
  result = swift_willThrow();
LABEL_45:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *FailureToDecryptRetryModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("DELETE FROM FTD_Retry_Table WHERE client_id = ? AND group_id = ? AND message_id = ?;");
  if (!v3)
  {
LABEL_60:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
LABEL_43:
    *&v46 = 0x726F7272456C7173;
    *(&v46 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v46 = *v1;
      DWORD2(v46) = v6;
      WORD6(v46) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v46;
        LODWORD(v11) = v8;
        goto LABEL_42;
      }

LABEL_54:
      v44 = v4;
      swift_once();
      v4 = v44;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v46 + 6) = 0;
    *&v46 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v46;
      LODWORD(v11) = 0;
      goto LABEL_42;
    }

LABEL_56:
    v45 = v4;
    swift_once();
    v4 = v45;
    goto LABEL_25;
  }

  v12 = v1;
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = __DataStorage._bytes.getter();
  if (!v15)
  {
    v8 = 0;
    v18 = v14 - v13;
    if (!__OFSUB__(v14, v13))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = v15;
  v17 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v17))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v8 = (v13 - v17 + v16);
  v18 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v4;
  }

  if (v8)
  {
    v11 = v19;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_58;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v20 = v5;
  v21 = v5 >> 32;
  v13 = v21 - v20;
  if (v21 < v20)
  {
    __break(1u);
    goto LABEL_56;
  }

  v12 = v1;
  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v20, v24))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v8 = (v20 - v24 + v23);
LABEL_30:
  v1 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_54;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v1 = v12;
LABEL_39:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v40 = ppStmt[0];
    v41 = v11;
    swift_once();
    v4 = v40;
    LODWORD(v11) = v41;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_42:
  if (sqlite3_bind_blob(v4, 1, v10, v11, v9))
  {
    goto LABEL_43;
  }

  v30 = ppStmt[0];
  v31 = v1[2];
  v32 = v1[3];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v42 = v1[2];
    v43 = v1[3];
    swift_once();
  }

  v33 = String.utf8CString.getter();
  v34 = sqlite3_bind_text(v30, 2, (v33 + 32), -1, v9);

  if (v34)
  {
    *&v46 = 0x726F7272456C7173;
    *(&v46 + 1) = 0xE90000000000003ALL;
  }

  else
  {
    v35 = ppStmt[0];
    v36 = v1[4];
    v37 = v1[5];
    v38 = String.utf8CString.getter();
    v39 = sqlite3_bind_text(v35, 3, (v38 + 32), -1, v9);

    if (!v39)
    {
      result = ppStmt[0];
      goto LABEL_45;
    }

    *&v46 = 0x726F7272456C7173;
    *(&v46 + 1) = 0xE90000000000003ALL;
  }

LABEL_44:
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v25);

  v26 = v46;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v27 = 0;
  *(v27 + 8) = v26;
  result = swift_willThrow();
LABEL_45:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_int64 closure #1 in variable initialization expression of static FailureToDecryptRetryModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_12;
  }

  v4 = sqlite3_column_blob(a1, 0);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 0);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
LABEL_11:
    outlined consume of Data._Representation(v7, v9);
LABEL_12:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    return swift_willThrow();
  }

  v10 = String.init(cString:)();
  v12 = v11;
  if (sqlite3_column_type(a1, 2) == 5 || !sqlite3_column_text(a1, 2))
  {
LABEL_10:

    goto LABEL_11;
  }

  v13 = String.init(cString:)();
  v15 = v14;
  if (sqlite3_column_type(a1, 3) == 5 || (v18 = sqlite3_column_int(a1, 3), sqlite3_column_type(a1, 4) == 5))
  {

    goto LABEL_10;
  }

  result = sqlite3_column_int64(a1, 4);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v18;
  *(a2 + 56) = result;
  return result;
}

uint64_t (*static FailureToDecryptRetryModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static FailureToDecryptRetryModel.converter;

  return v0;
}

uint64_t static FailureToDecryptRetryModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static FailureToDecryptRetryModel.converter = a1;
  qword_281EF8B40 = a2;
}

uint64_t key path getter for static FailureToDecryptRetryModel.converter : FailureToDecryptRetryModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static FailureToDecryptRetryModel.converter;
  v2 = qword_281EF8B40;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static FailureToDecryptRetryModel.converter : FailureToDecryptRetryModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static FailureToDecryptRetryModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error)partial apply;
  qword_281EF8B40 = v3;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance FailureToDecryptRetryModel())@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v1 = static FailureToDecryptRetryModel.converter;
  v0 = qword_281EF8B40;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)partial apply;
}

uint64_t *FailureToDecryptRetryQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static FailureToDecryptRetryQuery.converter;
}

uint64_t static FailureToDecryptRetryQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static FailureToDecryptRetryQuery.converter;

  return v0;
}

uint64_t static FailureToDecryptRetryQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static FailureToDecryptRetryQuery.converter = a1;
  qword_280016A00 = a2;
}

uint64_t (*static FailureToDecryptRetryQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static FailureToDecryptRetryQuery.converter : FailureToDecryptRetryQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static FailureToDecryptRetryQuery.converter;
  v2 = qword_280016A00;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static FailureToDecryptRetryQuery.converter : FailureToDecryptRetryQuery.Type(uint64_t *a1)
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
  static FailureToDecryptRetryQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error);
  qword_280016A00 = v3;
}

uint64_t FailureToDecryptRetryQuery.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t FailureToDecryptRetryQuery.group.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FailureToDecryptRetryQuery.messageID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

sqlite3_stmt *FailureToDecryptRetryQuery.queryStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("SELECT * FROM FTD_Retry_Table WHERE client_id = ? AND group_id = ? AND message_id = ? LIMIT 1;");
  if (!v3)
  {
LABEL_60:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
LABEL_43:
    *&v46 = 0x726F7272456C7173;
    *(&v46 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v46 = *v1;
      DWORD2(v46) = v6;
      WORD6(v46) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v46;
        LODWORD(v11) = v8;
        goto LABEL_42;
      }

LABEL_54:
      v44 = v4;
      swift_once();
      v4 = v44;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v46 + 6) = 0;
    *&v46 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v46;
      LODWORD(v11) = 0;
      goto LABEL_42;
    }

LABEL_56:
    v45 = v4;
    swift_once();
    v4 = v45;
    goto LABEL_25;
  }

  v12 = v1;
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = __DataStorage._bytes.getter();
  if (!v15)
  {
    v8 = 0;
    v18 = v14 - v13;
    if (!__OFSUB__(v14, v13))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = v15;
  v17 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v17))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v8 = (v13 - v17 + v16);
  v18 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v4;
  }

  if (v8)
  {
    v11 = v19;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_58;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v20 = v5;
  v21 = v5 >> 32;
  v13 = v21 - v20;
  if (v21 < v20)
  {
    __break(1u);
    goto LABEL_56;
  }

  v12 = v1;
  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v20, v24))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v8 = (v20 - v24 + v23);
LABEL_30:
  v1 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_54;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v1 = v12;
LABEL_39:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v40 = ppStmt[0];
    v41 = v11;
    swift_once();
    v4 = v40;
    LODWORD(v11) = v41;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_42:
  if (sqlite3_bind_blob(v4, 1, v10, v11, v9))
  {
    goto LABEL_43;
  }

  v30 = ppStmt[0];
  v31 = v1[2];
  v32 = v1[3];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v42 = v1[2];
    v43 = v1[3];
    swift_once();
  }

  v33 = String.utf8CString.getter();
  v34 = sqlite3_bind_text(v30, 2, (v33 + 32), -1, v9);

  if (v34)
  {
    *&v46 = 0x726F7272456C7173;
    *(&v46 + 1) = 0xE90000000000003ALL;
  }

  else
  {
    v35 = ppStmt[0];
    v36 = v1[4];
    v37 = v1[5];
    v38 = String.utf8CString.getter();
    v39 = sqlite3_bind_text(v35, 3, (v38 + 32), -1, v9);

    if (!v39)
    {
      result = ppStmt[0];
      goto LABEL_45;
    }

    *&v46 = 0x726F7272456C7173;
    *(&v46 + 1) = 0xE90000000000003ALL;
  }

LABEL_44:
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v25);

  v26 = v46;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v27 = 0;
  *(v27 + 8) = v26;
  result = swift_willThrow();
LABEL_45:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance FailureToDecryptRetryQuery())@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static FailureToDecryptRetryQuery.converter;
  v0 = qword_280016A00;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error);
}

sqlite3_stmt *specialized static FailureToDecryptRetryModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS FTD_Retry_Table (\n    client_id BLOB NOT NULL,\n    group_id TEXT NOT NULL,\n    message_id TEXT NOT NULL,\n    retry_count INTEGER,\n    timestamp BIGINT NOT NULL,\n    PRIMARY KEY (message_id, group_id, client_id)\n);");
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

uint64_t specialized static FailureToDecryptRetryModel.createIndexStatements(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE INDEX IF NOT EXISTS FTD_Retry_Table_Timestamp_Index ON FTD_Retry_Table(timestamp);");
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_2653419E0;
    *(result + 32) = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static FailureToDecryptRetryModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS FTD_Retry_Table");
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

uint64_t getEnumTagSinglePayload for FailureToDecryptRetryQuery(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FailureToDecryptRetryQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265334D74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t RequestManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [objc_allocWithZone(MEMORY[0x277D07DD0]) initWithIDSServerBag_];

  if (v2)
  {
    [v2 setLogToRegistration_];
  }

  *(v0 + 16) = v2;
  return v0;
}

SecureMessagingAgentCore::RequestManagerResultCode_optional __swiftcall RequestManagerResultCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}