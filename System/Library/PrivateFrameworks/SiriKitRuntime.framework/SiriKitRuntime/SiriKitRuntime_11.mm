uint64_t RemoteConversationService.makeRequestIdentities(from:)()
{
  v85 = v0;
  if (AFSupportsMultiUser())
  {
    v1 = v0[174];
    v2 = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
    v0[195] = v2;
    v3 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v0[196] = v3;
    if (v3)
    {
      v4 = OBJC_IVAR___SKEUserSpecificInfo_userId;
      v0[197] = OBJC_IVAR___SKEUserSpecificInfo_userId;
      v5 = &v3[v4];
      v6 = *v5;
      v7 = *(v5 + 1);
      v8 = v3;

      v9 = MEMORY[0x1E12A1410](v6, v7);
      v0[198] = v9;

      v0[50] = v0;
      v0[55] = v0 + 167;
      v0[51] = RemoteConversationService.makeRequestIdentities(from:);
      v10 = swift_continuation_init();
      v0[105] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
      v0[102] = v10;
      v0[98] = MEMORY[0x1E69E9820];
      v0[99] = 1107296256;
      v0[100] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
      v0[101] = &block_descriptor_284;
      [v2 getSharedUserInfoForSharedUserID:v9 completion:v0 + 98];
      v11 = v0 + 50;
    }

    else
    {
      v0[10] = v0;
      v0[15] = v0 + 172;
      v0[11] = RemoteConversationService.makeRequestIdentities(from:);
      v35 = swift_continuation_init();
      v0[89] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
      v0[86] = v35;
      v0[82] = MEMORY[0x1E69E9820];
      v0[83] = 1107296256;
      v0[84] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
      v0[85] = &block_descriptor_19;
      [v2 getMultiUserSettingsForRecognizedUserWithCompletion_];
      v11 = v0 + 10;
    }

    return MEMORY[0x1EEE6DEC8](v11);
  }

  else
  {
    v12 = v0[184];
    v13 = v0[180];
    v14 = v0[179];
    v15 = v0[174];
    v16 = *(v15 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v17 = v16;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v16, 0, 0, v12, v13);
    v18 = *(v15 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v19 = v18;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v18, 0, 0, v12, v14);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v20 = v0[180];
    v21 = v0[178];
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v20, v21, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[187];
      v26 = v0[186];
      v27 = v0[178];
      v28 = v0[177];
      v29 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84 = v80;
      *v29 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v27, v28, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v30 = *(v25 + 48);
      if (v30(v28, 1, v26) == 1)
      {
        v31 = v0[186];
        v32 = v0[177];
        v33 = v0[189];
        IdentifiedUser.init()();
        if (v30(v32, 1, v31) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v0[177], &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(v0[187] + 32))(v0[189], v0[177], v0[186]);
      }

      v36 = v0[189];
      v37 = v0[187];
      v38 = v0[186];
      v39 = v0[178];
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v37 + 8))(v36, v38);
      outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v84);

      *(v29 + 4) = v43;
      _os_log_impl(&dword_1DC659000, v23, v24, "#user-session: proposedIdentityOfRecognizedUser=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x1E12A2F50](v80, -1, -1);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    else
    {
      v34 = v0[178];

      outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v0[179], v0[176], &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v0[187];
      v47 = v0[186];
      v48 = v0[176];
      v49 = v0[175];
      v50 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v84 = v82;
      *v50 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v48, v49, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v51 = *(v46 + 48);
      if (v51(v49, 1, v47) == 1)
      {
        v52 = v0[186];
        v53 = v0[175];
        v54 = v0[188];
        IdentifiedUser.init()();
        if (v51(v53, 1, v52) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v0[175], &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(v0[187] + 32))(v0[188], v0[175], v0[186]);
      }

      v56 = v0[188];
      v57 = v0[187];
      v58 = v0[186];
      v59 = v0[176];
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v57 + 8))(v56, v58);
      outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v84);

      *(v50 + 4) = v63;
      _os_log_impl(&dword_1DC659000, v44, v45, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x1E12A2F50](v82, -1, -1);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    else
    {
      v55 = v0[176];

      outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v64 = v0[193];
    v65 = v0[192];
    v66 = v0[191];
    v72 = v0[190];
    v73 = v0[189];
    v74 = v0[188];
    v75 = v0[185];
    v76 = v0[184];
    v77 = v0[181];
    v67 = v0[179];
    v78 = v0[178];
    v79 = v0[177];
    v81 = v0[176];
    v83 = v0[175];
    v68 = v0[173];
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v0[180], v68, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v69 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v67, v68 + *(v69 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v68 + *(v69 + 24)) = MEMORY[0x1E69E7CC0];
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);

    v70 = v0[1];

    return v70();
  }
}

{
  v1 = *(*v0 + 1552);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.makeRequestIdentities(from:), v1, 0);
}

{
  v1 = v0[198];
  v2 = v0[195];
  v3 = (v0[196] + v0[197]);
  v0[199] = v0[167];

  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x1E12A1410](v4, v5);
  v0[200] = v6;

  v0[18] = v0;
  v0[23] = v0 + 170;
  v0[19] = RemoteConversationService.makeRequestIdentities(from:);
  v7 = swift_continuation_init();
  v0[137] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
  v0[134] = v7;
  v0[130] = MEMORY[0x1E69E9820];
  v0[131] = 1107296256;
  v0[132] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
  v0[133] = &block_descriptor_287;
  [v2 getMultiUserSettingsForSharedUserID:v6 completion:v0 + 130];

  return MEMORY[0x1EEE6DEC8](v0 + 18);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 1608) = v3;
  v4 = *(v1 + 1552);
  if (v3)
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0 + 1600);

  v2 = *(v0 + 1360);
  *(v0 + 1632) = *(v0 + 1592);
  *(v0 + 1624) = v2;
  v3 = *(*(v0 + 1392) + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  *(v0 + 1640) = v3;
  v4 = *(v0 + 1560);
  if (v3)
  {
    v5 = OBJC_IVAR___SKEUserSpecificInfo_userId;
    *(v0 + 1648) = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v6 = &v3[v5];
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = v3;

    v10 = MEMORY[0x1E12A1410](v7, v8);
    *(v0 + 1656) = v10;

    *(v0 + 592) = v0;
    *(v0 + 632) = v0 + 1328;
    *(v0 + 600) = RemoteConversationService.makeRequestIdentities(from:);
    v11 = swift_continuation_init();
    *(v0 + 1288) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
    *(v0 + 1264) = v11;
    *(v0 + 1232) = MEMORY[0x1E69E9820];
    *(v0 + 1240) = 1107296256;
    *(v0 + 1248) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
    *(v0 + 1256) = &block_descriptor_278;
    [v4 getSharedUserInfoForSharedUserID:v10 completion:v0 + 1232];
    v12 = v0 + 592;
  }

  else
  {
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1368;
    *(v0 + 216) = RemoteConversationService.makeRequestIdentities(from:);
    v13 = swift_continuation_init();
    *(v0 + 776) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
    *(v0 + 752) = v13;
    *(v0 + 720) = MEMORY[0x1E69E9820];
    *(v0 + 728) = 1107296256;
    *(v0 + 736) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
    *(v0 + 744) = &block_descriptor_263;
    [v4 getMultiUserSettingsForRecognizedUserWithCompletion_];
    v12 = v0 + 208;
  }

  return MEMORY[0x1EEE6DEC8](v12);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1616) = v3;
  v4 = *(v1 + 1552);
  if (v3)
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[172];
  v0[204] = 0;
  v0[203] = v1;
  v2 = *(v0[174] + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  v0[205] = v2;
  v3 = v0[195];
  if (v2)
  {
    v4 = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v0[206] = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v5 = &v2[v4];
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = v2;

    v9 = MEMORY[0x1E12A1410](v6, v7);
    v0[207] = v9;

    v0[74] = v0;
    v0[79] = v0 + 166;
    v0[75] = RemoteConversationService.makeRequestIdentities(from:);
    v10 = swift_continuation_init();
    v0[161] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
    v0[158] = v10;
    v0[154] = MEMORY[0x1E69E9820];
    v0[155] = 1107296256;
    v0[156] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
    v0[157] = &block_descriptor_278;
    [v3 getSharedUserInfoForSharedUserID:v9 completion:v0 + 154];
    v11 = v0 + 74;
  }

  else
  {
    v0[26] = v0;
    v0[31] = v0 + 171;
    v0[27] = RemoteConversationService.makeRequestIdentities(from:);
    v12 = swift_continuation_init();
    v0[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
    v0[94] = v12;
    v0[90] = MEMORY[0x1E69E9820];
    v0[91] = 1107296256;
    v0[92] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
    v0[93] = &block_descriptor_263;
    [v3 getMultiUserSettingsForRecognizedUserWithCompletion_];
    v11 = v0 + 26;
  }

  return MEMORY[0x1EEE6DEC8](v11);
}

{
  v1 = *(*v0 + 1552);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.makeRequestIdentities(from:), v1, 0);
}

{
  v1 = v0[207];
  v2 = v0[195];
  v3 = (v0[205] + v0[206]);
  v0[208] = v0[166];

  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x1E12A1410](v4, v5);
  v0[209] = v6;

  v0[2] = v0;
  v0[7] = v0 + 165;
  v0[3] = RemoteConversationService.makeRequestIdentities(from:);
  v7 = swift_continuation_init();
  v0[153] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
  v0[150] = v7;
  v0[146] = MEMORY[0x1E69E9820];
  v0[147] = 1107296256;
  v0[148] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
  v0[149] = &block_descriptor_281;
  [v2 getMultiUserSettingsForSharedUserID:v6 completion:v0 + 146];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1680) = v3;
  v4 = *(v1 + 1552);
  if (v3)
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0 + 1672);

  v2 = *(v0 + 1320);
  *(v0 + 1704) = *(v0 + 1664);
  *(v0 + 1696) = v2;
  v3 = *(v0 + 1560);
  *(v0 + 272) = v0;
  *(v0 + 312) = v0 + 1352;
  *(v0 + 280) = RemoteConversationService.makeRequestIdentities(from:);
  v4 = swift_continuation_init();
  *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8SAPersonCGs5Error_pGMd, &_sSccySDySSSo8SAPersonCGs5Error_pGMR);
  *(v0 + 880) = v4;
  *(v0 + 848) = MEMORY[0x1E69E9820];
  *(v0 + 856) = 1107296256;
  *(v0 + 864) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [String : SAPerson];
  *(v0 + 872) = &block_descriptor_266;
  [v3 homeUserIdToNames_];

  return MEMORY[0x1EEE6DEC8](v0 + 272);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 240);
  *(*v0 + 1688) = v3;
  v4 = *(v1 + 1552);
  if (v3)
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[171];
  v0[213] = 0;
  v0[212] = v1;
  v2 = v0[195];
  v0[34] = v0;
  v0[39] = v0 + 169;
  v0[35] = RemoteConversationService.makeRequestIdentities(from:);
  v3 = swift_continuation_init();
  v0[113] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8SAPersonCGs5Error_pGMd, &_sSccySDySSSo8SAPersonCGs5Error_pGMR);
  v0[110] = v3;
  v0[106] = MEMORY[0x1E69E9820];
  v0[107] = 1107296256;
  v0[108] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [String : SAPerson];
  v0[109] = &block_descriptor_266;
  [v2 homeUserIdToNames_];

  return MEMORY[0x1EEE6DEC8](v0 + 34);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 304);
  *(*v0 + 1712) = v3;
  v4 = *(v1 + 1552);
  if (v3)
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v100 = v0;
  v1 = *(v0 + 1352);
  *(v0 + 1720) = v1;
  v2 = *(v1 + 32);
  *(v0 + 1824) = v2;
  v3 = -1;
  v4 = -1 << v2;
  v5 = *(v1 + 64);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  *(v0 + 1728) = MEMORY[0x1E69E7CC0];
  v6 = v3 & v5;
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 1744) = v7;
    *(v0 + 1736) = v6;
    v10 = *(v0 + 1560);
    v11 = __clz(__rbit64(v6)) | (v7 << 6);
    v12 = *(v1 + 56);
    v13 = (*(v1 + 48) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v12 + 8 * v11);
    *(v0 + 1752) = v16;

    v17 = v16;
    v18 = MEMORY[0x1E12A1410](v14, v15);
    *(v0 + 1760) = v18;

    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 1296;
    *(v0 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v19 = swift_continuation_init();
    *(v0 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v0 + 944) = v19;
    *(v0 + 912) = MEMORY[0x1E69E9820];
    *(v0 + 920) = 1107296256;
    *(v0 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 936) = &block_descriptor_269;
    [v10 getSharedUserIdForHomeUserId:v18 completion:v0 + 912];

    return MEMORY[0x1EEE6DEC8](v0 + 336);
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v4) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v1 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v98 = *(v0 + 1728);
    v20 = *(v0 + 1704);
    v21 = *(v0 + 1696);
    v22 = *(v0 + 1632);
    v23 = *(v0 + 1472);
    v24 = *(v0 + 1440);
    v25 = *(v0 + 1432);
    v26 = *(v0 + 1392);
    v27 = *(v26 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v96 = *(v0 + 1624);
    v28 = v27;
    v94 = v22;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v27, v22, 0, v23, v24);
    v29 = *(v26 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v92 = v21;
    v30 = v29;
    v90 = v20;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v29, v20, 0, v23, v25);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 1440);
    v32 = *(v0 + 1424);
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v31, v32, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 1496);
      v37 = *(v0 + 1488);
      v38 = *(v0 + 1424);
      v39 = *(v0 + 1416);
      v40 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v99 = v86;
      *v40 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v38, v39, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v41 = *(v36 + 48);
      if (v41(v39, 1, v37) == 1)
      {
        v42 = *(v0 + 1488);
        v43 = *(v0 + 1416);
        v44 = *(v0 + 1512);
        IdentifiedUser.init()();
        if (v41(v43, 1, v42) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1512), *(v0 + 1416), *(v0 + 1488));
      }

      v46 = *(v0 + 1512);
      v47 = *(v0 + 1496);
      v48 = *(v0 + 1488);
      v49 = *(v0 + 1424);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v47 + 8))(v46, v48);
      outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v99);

      *(v40 + 4) = v53;
      _os_log_impl(&dword_1DC659000, v34, v35, "#user-session: proposedIdentityOfRecognizedUser=%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x1E12A2F50](v86, -1, -1);
      MEMORY[0x1E12A2F50](v40, -1, -1);
    }

    else
    {
      v45 = *(v0 + 1424);

      outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 1432), *(v0 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 1496);
      v57 = *(v0 + 1488);
      v58 = *(v0 + 1408);
      v59 = *(v0 + 1400);
      v60 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v99 = v88;
      *v60 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v58, v59, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v61 = *(v56 + 48);
      if (v61(v59, 1, v57) == 1)
      {
        v62 = *(v0 + 1488);
        v63 = *(v0 + 1400);
        v64 = *(v0 + 1504);
        IdentifiedUser.init()();
        if (v61(v63, 1, v62) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1504), *(v0 + 1400), *(v0 + 1488));
      }

      v66 = *(v0 + 1504);
      v67 = *(v0 + 1496);
      v68 = *(v0 + 1488);
      v69 = *(v0 + 1408);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v66, v68);
      outlined destroy of ReferenceResolutionClientProtocol?(v69, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v99);

      *(v60 + 4) = v73;
      _os_log_impl(&dword_1DC659000, v54, v55, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      MEMORY[0x1E12A2F50](v88, -1, -1);
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }

    else
    {
      v65 = *(v0 + 1408);

      outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v74 = *(v0 + 1544);
    v75 = *(v0 + 1536);
    v76 = *(v0 + 1528);
    v82 = *(v0 + 1520);
    v83 = *(v0 + 1512);
    v84 = *(v0 + 1504);
    v85 = *(v0 + 1480);
    v87 = *(v0 + 1472);
    v89 = *(v0 + 1448);
    v77 = *(v0 + 1432);
    v91 = *(v0 + 1424);
    v93 = *(v0 + 1416);
    v95 = *(v0 + 1408);
    v97 = *(v0 + 1400);
    v78 = *(v0 + 1384);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 1440), v78, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v79 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v77, v78 + *(v79 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v78 + *(v79 + 24)) = v98;
    (*(*(v79 - 8) + 56))(v78, 0, 1, v79);

    v80 = *(v0 + 8);

    return v80();
  }
}

{
  v101 = v0;
  v1 = *(v0 + 1712);
  swift_willThrow();

  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8SAPersonCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 1720) = v3;
  v4 = *(v3 + 32);
  *(v0 + 1824) = v4;
  v5 = -1;
  v6 = -1 << v4;
  v7 = *(v3 + 64);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  *(v0 + 1728) = v2;
  v8 = v5 & v7;
  if (v8)
  {
    v9 = 0;
LABEL_8:
    *(v0 + 1744) = v9;
    *(v0 + 1736) = v8;
    v12 = *(v0 + 1560);
    v13 = __clz(__rbit64(v8)) | (v9 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);
    *(v0 + 1752) = v17;

    v18 = v17;
    v19 = MEMORY[0x1E12A1410](v15, v16);
    *(v0 + 1760) = v19;

    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 1296;
    *(v0 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v20 = swift_continuation_init();
    *(v0 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v0 + 944) = v20;
    *(v0 + 912) = MEMORY[0x1E69E9820];
    *(v0 + 920) = 1107296256;
    *(v0 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 936) = &block_descriptor_269;
    [v12 getSharedUserIdForHomeUserId:v19 completion:v0 + 912];

    return MEMORY[0x1EEE6DEC8](v0 + 336);
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v6) >> 6) - 1;
    while (v11 != v10)
    {
      v9 = v10 + 1;
      v8 = *(v3 + 8 * v10++ + 72);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v99 = *(v0 + 1728);
    v21 = *(v0 + 1704);
    v22 = *(v0 + 1696);
    v23 = *(v0 + 1632);
    v24 = *(v0 + 1472);
    v25 = *(v0 + 1440);
    v26 = *(v0 + 1432);
    v27 = *(v0 + 1392);
    v28 = *(v27 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v97 = *(v0 + 1624);
    v29 = v28;
    v95 = v23;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v28, v23, 0, v24, v25);
    v30 = *(v27 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v93 = v22;
    v31 = v30;
    v91 = v21;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v30, v21, 0, v24, v26);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 1440);
    v33 = *(v0 + 1424);
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v32, v33, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 1496);
      v38 = *(v0 + 1488);
      v39 = *(v0 + 1424);
      v40 = *(v0 + 1416);
      v41 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v100[0] = v87;
      *v41 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v39, v40, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v42 = *(v37 + 48);
      if (v42(v40, 1, v38) == 1)
      {
        v43 = *(v0 + 1488);
        v44 = *(v0 + 1416);
        v45 = *(v0 + 1512);
        IdentifiedUser.init()();
        if (v42(v44, 1, v43) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1512), *(v0 + 1416), *(v0 + 1488));
      }

      v47 = *(v0 + 1512);
      v48 = *(v0 + 1496);
      v49 = *(v0 + 1488);
      v50 = *(v0 + 1424);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v48 + 8))(v47, v49);
      outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v100);

      *(v41 + 4) = v54;
      _os_log_impl(&dword_1DC659000, v35, v36, "#user-session: proposedIdentityOfRecognizedUser=%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      MEMORY[0x1E12A2F50](v87, -1, -1);
      MEMORY[0x1E12A2F50](v41, -1, -1);
    }

    else
    {
      v46 = *(v0 + 1424);

      outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 1432), *(v0 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 1496);
      v58 = *(v0 + 1488);
      v59 = *(v0 + 1408);
      v60 = *(v0 + 1400);
      v61 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v100[0] = v89;
      *v61 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v59, v60, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v62 = *(v57 + 48);
      if (v62(v60, 1, v58) == 1)
      {
        v63 = *(v0 + 1488);
        v64 = *(v0 + 1400);
        v65 = *(v0 + 1504);
        IdentifiedUser.init()();
        if (v62(v64, 1, v63) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1504), *(v0 + 1400), *(v0 + 1488));
      }

      v67 = *(v0 + 1504);
      v68 = *(v0 + 1496);
      v69 = *(v0 + 1488);
      v70 = *(v0 + 1408);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      (*(v68 + 8))(v67, v69);
      outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v100);

      *(v61 + 4) = v74;
      _os_log_impl(&dword_1DC659000, v55, v56, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x1E12A2F50](v89, -1, -1);
      MEMORY[0x1E12A2F50](v61, -1, -1);
    }

    else
    {
      v66 = *(v0 + 1408);

      outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v75 = *(v0 + 1544);
    v76 = *(v0 + 1536);
    v77 = *(v0 + 1528);
    v83 = *(v0 + 1520);
    v84 = *(v0 + 1512);
    v85 = *(v0 + 1504);
    v86 = *(v0 + 1480);
    v88 = *(v0 + 1472);
    v90 = *(v0 + 1448);
    v78 = *(v0 + 1432);
    v92 = *(v0 + 1424);
    v94 = *(v0 + 1416);
    v96 = *(v0 + 1408);
    v98 = *(v0 + 1400);
    v79 = *(v0 + 1384);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 1440), v79, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v80 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v78, v79 + *(v80 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v79 + *(v80 + 24)) = v99;
    (*(*(v80 - 8) + 56))(v79, 0, 1, v80);

    v81 = *(v0 + 8);

    return v81();
  }
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 368);
  *(*v0 + 1768) = v3;
  v4 = *(v1 + 1552);
  if (v3)
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[220];
  v2 = v0[195];
  v3 = v0[162];
  v0[222] = v3;
  v4 = v0[163];
  v0[223] = v4;

  v5 = MEMORY[0x1E12A1410](v3, v4);
  v0[224] = v5;
  v0[58] = v0;
  v0[63] = v0 + 168;
  v0[59] = RemoteConversationService.makeRequestIdentities(from:);
  v6 = swift_continuation_init();
  v0[129] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
  v0[126] = v6;
  v0[122] = MEMORY[0x1E69E9820];
  v0[123] = 1107296256;
  v0[124] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
  v0[125] = &block_descriptor_272;
  [v2 getSharedUserInfoForSharedUserID:v5 completion:v0 + 122];

  return MEMORY[0x1EEE6DEC8](v0 + 58);
}

{
  v1 = *(*v0 + 1552);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.makeRequestIdentities(from:), v1, 0);
}

{
  v105 = v1;
  v3 = *(v1 + 1344);
  *(v1 + 1800) = v3;
  if (v3)
  {
    v4 = v1 + 528;
    v5 = *(v1 + 1784);
    v6 = *(v1 + 1776);
    v7 = *(v1 + 1560);

    v8 = MEMORY[0x1E12A1410](v6, v5);
    *(v1 + 1808) = v8;

    *(v1 + 528) = v1;
    *(v1 + 568) = v1 + 1312;
    *(v1 + 536) = RemoteConversationService.makeRequestIdentities(from:);
    v9 = swift_continuation_init();
    *(v1 + 1160) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
    *(v1 + 1136) = v9;
    *(v1 + 1104) = MEMORY[0x1E69E9820];
    *(v1 + 1112) = 1107296256;
    *(v1 + 1120) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
    *(v1 + 1128) = &block_descriptor_275;
    [v7 getMultiUserSettingsForSharedUserID:v8 completion:v1 + 1104];
LABEL_10:

    return MEMORY[0x1EEE6DEC8](v4);
  }

  v10 = *(v1 + 1792);
  v11 = *(v1 + 1784);

  v12 = *(v1 + 1744);
  v13 = (*(v1 + 1736) - 1) & *(v1 + 1736);
  if (v13)
  {
    v2 = *(v1 + 1720);
LABEL_9:
    v4 = v1 + 336;
    *(v1 + 1744) = v12;
    *(v1 + 1736) = v13;
    v15 = *(v1 + 1560);
    v16 = __clz(__rbit64(v13)) | (v12 << 6);
    v17 = v2[7];
    v18 = (v2[6] + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    *(v1 + 1752) = v21;

    v22 = v21;
    v23 = MEMORY[0x1E12A1410](v19, v20);
    *(v1 + 1760) = v23;

    *(v1 + 336) = v1;
    *(v1 + 376) = v1 + 1296;
    *(v1 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v24 = swift_continuation_init();
    *(v1 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v1 + 944) = v24;
    *(v1 + 912) = MEMORY[0x1E69E9820];
    *(v1 + 920) = 1107296256;
    *(v1 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v1 + 936) = &block_descriptor_269;
    [v15 getSharedUserIdForHomeUserId:v23 completion:v1 + 912];
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    v2 = *(v1 + 1720);
    if (v14 >= (((1 << *(v1 + 1824)) + 63) >> 6))
    {
      break;
    }

    v13 = v2[v14 + 8];
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  v103 = *(v1 + 1728);
  v25 = *(v1 + 1704);
  v26 = *(v1 + 1696);
  v27 = *(v1 + 1632);
  v28 = *(v1 + 1472);
  v29 = *(v1 + 1440);
  v30 = *(v1 + 1432);
  v31 = *(v1 + 1392);
  v32 = *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
  v101 = *(v1 + 1624);
  v33 = v32;
  v99 = v27;
  static Locale.autoupdatingCurrent.getter();
  IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v32, v27, 0, v28, v29);
  v34 = *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  v0 = v26;
  v35 = v34;
  v2 = v25;
  static Locale.autoupdatingCurrent.getter();
  IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v34, v25, 0, v28, v30);
  if (one-time initialization token for executor == -1)
  {
    goto LABEL_14;
  }

LABEL_32:
  swift_once();
LABEL_14:
  v36 = *(v1 + 1440);
  v37 = *(v1 + 1424);
  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v36, v37, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v95 = v2;
  v97 = v0;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v1 + 1496);
    v42 = *(v1 + 1488);
    v43 = *(v1 + 1424);
    v44 = *(v1 + 1416);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v104 = v46;
    *v45 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v43, v44, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v47 = *(v41 + 48);
    v91 = v46;
    if (v47(v44, 1, v42) == 1)
    {
      v48 = *(v1 + 1488);
      v49 = *(v1 + 1416);
      IdentifiedUser.init()();
      if (v47(v49, 1, v48) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      }
    }

    else
    {
      (*(*(v1 + 1496) + 32))(*(v1 + 1512), *(v1 + 1416), *(v1 + 1488));
    }

    v51 = *(v1 + 1512);
    v52 = *(v1 + 1496);
    v53 = *(v1 + 1488);
    v54 = *(v1 + 1424);
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    (*(v52 + 8))(v51, v53);
    outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v104);

    *(v45 + 4) = v58;
    _os_log_impl(&dword_1DC659000, v39, v40, "#user-session: proposedIdentityOfRecognizedUser=%s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    MEMORY[0x1E12A2F50](v91, -1, -1);
    MEMORY[0x1E12A2F50](v45, -1, -1);

    v2 = v95;
    v0 = v97;
  }

  else
  {
    v50 = *(v1 + 1424);

    outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(*(v1 + 1432), *(v1 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = *(v1 + 1496);
    v62 = *(v1 + 1488);
    v63 = *(v1 + 1408);
    v64 = *(v1 + 1400);
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v104 = v66;
    *v65 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v63, v64, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v67 = *(v61 + 48);
    v93 = v66;
    if (v67(v64, 1, v62) == 1)
    {
      v68 = *(v1 + 1488);
      v69 = *(v1 + 1400);
      IdentifiedUser.init()();
      if (v67(v69, 1, v68) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      }
    }

    else
    {
      (*(*(v1 + 1496) + 32))(*(v1 + 1504), *(v1 + 1400), *(v1 + 1488));
    }

    v71 = *(v1 + 1504);
    v72 = *(v1 + 1496);
    v73 = *(v1 + 1488);
    v74 = *(v1 + 1408);
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v76;
    (*(v72 + 8))(v71, v73);
    outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v104);

    *(v65 + 4) = v78;
    _os_log_impl(&dword_1DC659000, v59, v60, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    MEMORY[0x1E12A2F50](v93, -1, -1);
    MEMORY[0x1E12A2F50](v65, -1, -1);
  }

  else
  {
    v70 = *(v1 + 1408);

    outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  }

  v79 = *(v1 + 1544);
  v80 = *(v1 + 1536);
  v81 = *(v1 + 1528);
  v87 = *(v1 + 1520);
  v88 = *(v1 + 1512);
  v89 = *(v1 + 1504);
  v90 = *(v1 + 1480);
  v92 = *(v1 + 1472);
  v94 = *(v1 + 1448);
  v82 = *(v1 + 1432);
  v96 = *(v1 + 1424);
  v98 = *(v1 + 1416);
  v100 = *(v1 + 1408);
  v102 = *(v1 + 1400);
  v83 = *(v1 + 1384);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v1 + 1440), v83, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v84 = type metadata accessor for SiriRequestIdentities(0);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v82, v83 + *(v84 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  *(v83 + *(v84 + 24)) = v103;
  (*(*(v84 - 8) + 56))(v83, 0, 1, v84);

  v85 = *(v1 + 8);

  return v85();
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 560);
  *(*v0 + 1816) = v3;
  v4 = *(v1 + 1552);
  if (v3)
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v5 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v149 = v0;
  v1 = *(v0 + 1312);

  v2 = *(v0 + 1800);
  v3 = *(v0 + 1752);
  v4 = *(v0 + 1528);
  v5 = *(v0 + 1480);
  v6 = v1;
  v7 = v3;
  v8 = v2;
  static Locale.autoupdatingCurrent.getter();
  IdentifiedUser.init()();
  v9 = v7;
  IdentifiedUser.person.setter();
  v146 = v6;
  if (v6)
  {
    v10 = [v6 temperatureUnit];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = *(v0 + 1800);
  v12 = *(v0 + 1528);
  v13 = *(v0 + 1480);
  v14 = *(v0 + 1464);
  v15 = *(v0 + 1456);
  v16 = *(v0 + 1448);
  IdentifiedUser.preferredTemperatureUnitName.setter();
  IdentifiedUser.extractLocale(userSpecificInfo:settings:defaultLocale:)(0, v1, v16);
  (*(v14 + 56))(v16, 0, 1, v15);
  IdentifiedUser.locale.setter();
  v17 = [v11 iCloudAltDSID];
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = *(v0 + 1800);
  v20 = *(v0 + 1528);
  IdentifiedUser.iCloudAltDSID.setter();
  v21 = [v19 homeUserId];
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v23 = *(v0 + 1528);
  IdentifiedUser.homeUserID.setter();
  IdentifiedUser.sharedUserId.getter();
  if (v24)
  {
  }

  else
  {
    v25 = [*(v0 + 1800) sharedUserId];
    if (v25)
    {
      v26 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v27 = *(v0 + 1528);
    IdentifiedUser.sharedUserId.setter();
  }

  v133 = *(v0 + 1752);
  v137 = *(v0 + 1544);
  v28 = *(v0 + 1536);
  v29 = *(v0 + 1528);
  v140 = *(v0 + 1520);
  v143 = *(v0 + 1728);
  v30 = *(v0 + 1496);
  v31 = *(v0 + 1488);
  v32 = *(v0 + 1480);
  v33 = *(v0 + 1464);
  v34 = *(v0 + 1456);
  v35 = *(v0 + 1800);
  IdentifiedUser.sharedUserInfo.setter();

  (*(v33 + 8))(v32, v34);
  v36 = *(v30 + 32);
  v36(v28, v29, v31);
  v134 = v36;
  v36(v137, v28, v31);
  (*(v30 + 16))(v140, v137, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v0 + 1728);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_44:
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v38);
  }

  v41 = *(v0 + 1800);
  v42 = *(v0 + 1544);
  v43 = *(v0 + 1520);
  v44 = *(v0 + 1496);
  v45 = *(v0 + 1488);

  (*(v44 + 8))(v42, v45);
  *(v38 + 2) = v40 + 1;
  v134(&v38[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40], v43, v45);
  v46 = *(v0 + 1744);
  v47 = *(v0 + 1736);
  *(v0 + 1728) = v38;
  v48 = (v47 - 1) & v47;
  if (v48)
  {
    v49 = *(v0 + 1720);
LABEL_21:
    *(v0 + 1744) = v46;
    *(v0 + 1736) = v48;
    v51 = *(v0 + 1560);
    v52 = __clz(__rbit64(v48)) | (v46 << 6);
    v53 = *(v49 + 56);
    v54 = (*(v49 + 48) + 16 * v52);
    v55 = *v54;
    v56 = v54[1];
    v57 = *(v53 + 8 * v52);
    *(v0 + 1752) = v57;

    v58 = v57;
    v59 = MEMORY[0x1E12A1410](v55, v56);
    *(v0 + 1760) = v59;

    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 1296;
    *(v0 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v60 = swift_continuation_init();
    *(v0 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v0 + 944) = v60;
    *(v0 + 912) = MEMORY[0x1E69E9820];
    *(v0 + 920) = 1107296256;
    *(v0 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 936) = &block_descriptor_269;
    [v51 getSharedUserIdForHomeUserId:v59 completion:v0 + 912];

    return MEMORY[0x1EEE6DEC8](v0 + 336);
  }

  else
  {
    while (1)
    {
      v50 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      v49 = *(v0 + 1720);
      if (v50 >= (((1 << *(v0 + 1824)) + 63) >> 6))
      {
        break;
      }

      v48 = *(v49 + 8 * v50 + 64);
      ++v46;
      if (v48)
      {
        v46 = v50;
        goto LABEL_21;
      }
    }

    v147 = *(v0 + 1728);
    v61 = *(v0 + 1704);
    v62 = *(v0 + 1696);
    v63 = *(v0 + 1632);
    v64 = *(v0 + 1472);
    v65 = *(v0 + 1440);
    v66 = *(v0 + 1432);
    v67 = *(v0 + 1392);
    v68 = *(v67 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v144 = *(v0 + 1624);
    v69 = v68;
    v141 = v63;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v68, v63, 0, v64, v65);
    v70 = *(v67 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v71 = v62;
    v72 = v70;
    v73 = v61;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v70, v61, 0, v64, v66);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v74 = *(v0 + 1440);
    v75 = *(v0 + 1424);
    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v74, v75, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    v135 = v73;
    v138 = v71;
    if (os_log_type_enabled(v77, v78))
    {
      v79 = *(v0 + 1496);
      v80 = *(v0 + 1488);
      v81 = *(v0 + 1424);
      v82 = *(v0 + 1416);
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v148 = v84;
      *v83 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v81, v82, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v85 = *(v79 + 48);
      v129 = v84;
      if (v85(v82, 1, v80) == 1)
      {
        v86 = *(v0 + 1488);
        v87 = *(v0 + 1416);
        IdentifiedUser.init()();
        if (v85(v87, 1, v86) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1512), *(v0 + 1416), *(v0 + 1488));
      }

      v89 = *(v0 + 1512);
      v90 = *(v0 + 1496);
      v91 = *(v0 + 1488);
      v92 = *(v0 + 1424);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      (*(v90 + 8))(v89, v91);
      outlined destroy of ReferenceResolutionClientProtocol?(v92, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &v148);

      *(v83 + 4) = v96;
      _os_log_impl(&dword_1DC659000, v77, v78, "#user-session: proposedIdentityOfRecognizedUser=%s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x1E12A2F50](v129, -1, -1);
      MEMORY[0x1E12A2F50](v83, -1, -1);

      v73 = v135;
      v71 = v138;
    }

    else
    {
      v88 = *(v0 + 1424);

      outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 1432), *(v0 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = *(v0 + 1496);
      v100 = *(v0 + 1488);
      v101 = *(v0 + 1408);
      v102 = *(v0 + 1400);
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v148 = v104;
      *v103 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v101, v102, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v105 = *(v99 + 48);
      v131 = v104;
      if (v105(v102, 1, v100) == 1)
      {
        v106 = *(v0 + 1488);
        v107 = *(v0 + 1400);
        IdentifiedUser.init()();
        if (v105(v107, 1, v106) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1504), *(v0 + 1400), *(v0 + 1488));
      }

      v109 = *(v0 + 1504);
      v110 = *(v0 + 1496);
      v111 = *(v0 + 1488);
      v112 = *(v0 + 1408);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v113 = dispatch thunk of CustomStringConvertible.description.getter();
      v115 = v114;
      (*(v110 + 8))(v109, v111);
      outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, &v148);

      *(v103 + 4) = v116;
      _os_log_impl(&dword_1DC659000, v97, v98, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v131);
      MEMORY[0x1E12A2F50](v131, -1, -1);
      MEMORY[0x1E12A2F50](v103, -1, -1);
    }

    else
    {
      v108 = *(v0 + 1408);

      outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v117 = *(v0 + 1544);
    v118 = *(v0 + 1536);
    v119 = *(v0 + 1528);
    v125 = *(v0 + 1520);
    v126 = *(v0 + 1512);
    v127 = *(v0 + 1504);
    v128 = *(v0 + 1480);
    v130 = *(v0 + 1472);
    v132 = *(v0 + 1448);
    v120 = *(v0 + 1432);
    v136 = *(v0 + 1424);
    v139 = *(v0 + 1416);
    v142 = *(v0 + 1408);
    v145 = *(v0 + 1400);
    v121 = *(v0 + 1384);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 1440), v121, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v122 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v120, v121 + *(v122 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v121 + *(v122 + 24)) = v147;
    (*(*(v122 - 8) + 56))(v121, 0, 1, v122);

    v123 = *(v0 + 8);

    return v123();
  }
}

{
  v1 = v0[201];
  v2 = v0[200];
  v3 = v0[196];
  swift_willThrow();

  v0[204] = v0[199];
  v0[203] = 0;
  v4 = *(v0[174] + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  v0[205] = v4;
  v5 = v0[195];
  if (v4)
  {
    v6 = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v0[206] = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v7 = &v4[v6];
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v4;

    v11 = MEMORY[0x1E12A1410](v8, v9);
    v0[207] = v11;

    v0[74] = v0;
    v0[79] = v0 + 166;
    v0[75] = RemoteConversationService.makeRequestIdentities(from:);
    v12 = swift_continuation_init();
    v0[161] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
    v0[158] = v12;
    v0[154] = MEMORY[0x1E69E9820];
    v0[155] = 1107296256;
    v0[156] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
    v0[157] = &block_descriptor_278;
    [v5 getSharedUserInfoForSharedUserID:v11 completion:v0 + 154];
    v13 = v0 + 74;
  }

  else
  {
    v0[26] = v0;
    v0[31] = v0 + 171;
    v0[27] = RemoteConversationService.makeRequestIdentities(from:);
    v14 = swift_continuation_init();
    v0[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
    v0[94] = v14;
    v0[90] = MEMORY[0x1E69E9820];
    v0[91] = 1107296256;
    v0[92] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
    v0[93] = &block_descriptor_263;
    [v5 getMultiUserSettingsForRecognizedUserWithCompletion_];
    v13 = v0 + 26;
  }

  return MEMORY[0x1EEE6DEC8](v13);
}

{
  v1 = *(v0 + 1616);
  swift_willThrow();

  *(v0 + 1624) = 0u;
  v2 = *(*(v0 + 1392) + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  *(v0 + 1640) = v2;
  v3 = *(v0 + 1560);
  if (v2)
  {
    v4 = OBJC_IVAR___SKEUserSpecificInfo_userId;
    *(v0 + 1648) = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v5 = &v2[v4];
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = v2;

    v9 = MEMORY[0x1E12A1410](v6, v7);
    *(v0 + 1656) = v9;

    *(v0 + 592) = v0;
    *(v0 + 632) = v0 + 1328;
    *(v0 + 600) = RemoteConversationService.makeRequestIdentities(from:);
    v10 = swift_continuation_init();
    *(v0 + 1288) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
    *(v0 + 1264) = v10;
    *(v0 + 1232) = MEMORY[0x1E69E9820];
    *(v0 + 1240) = 1107296256;
    *(v0 + 1248) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
    *(v0 + 1256) = &block_descriptor_278;
    [v3 getSharedUserInfoForSharedUserID:v9 completion:v0 + 1232];
    v11 = v0 + 592;
  }

  else
  {
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1368;
    *(v0 + 216) = RemoteConversationService.makeRequestIdentities(from:);
    v12 = swift_continuation_init();
    *(v0 + 776) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
    *(v0 + 752) = v12;
    *(v0 + 720) = MEMORY[0x1E69E9820];
    *(v0 + 728) = 1107296256;
    *(v0 + 736) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
    *(v0 + 744) = &block_descriptor_263;
    [v3 getMultiUserSettingsForRecognizedUserWithCompletion_];
    v11 = v0 + 208;
  }

  return MEMORY[0x1EEE6DEC8](v11);
}

{
  v1 = v0[210];
  v2 = v0[209];
  v3 = v0[205];
  swift_willThrow();

  v0[213] = v0[208];
  v0[212] = 0;
  v4 = v0[195];
  v0[34] = v0;
  v0[39] = v0 + 169;
  v0[35] = RemoteConversationService.makeRequestIdentities(from:);
  v5 = swift_continuation_init();
  v0[113] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8SAPersonCGs5Error_pGMd, &_sSccySDySSSo8SAPersonCGs5Error_pGMR);
  v0[110] = v5;
  v0[106] = MEMORY[0x1E69E9820];
  v0[107] = 1107296256;
  v0[108] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [String : SAPerson];
  v0[109] = &block_descriptor_266;
  [v4 homeUserIdToNames_];

  return MEMORY[0x1EEE6DEC8](v0 + 34);
}

{
  v1 = *(v0 + 1688);
  swift_willThrow();

  *(v0 + 1696) = 0u;
  v2 = *(v0 + 1560);
  *(v0 + 272) = v0;
  *(v0 + 312) = v0 + 1352;
  *(v0 + 280) = RemoteConversationService.makeRequestIdentities(from:);
  v3 = swift_continuation_init();
  *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8SAPersonCGs5Error_pGMd, &_sSccySDySSSo8SAPersonCGs5Error_pGMR);
  *(v0 + 880) = v3;
  *(v0 + 848) = MEMORY[0x1E69E9820];
  *(v0 + 856) = 1107296256;
  *(v0 + 864) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [String : SAPerson];
  *(v0 + 872) = &block_descriptor_266;
  [v2 homeUserIdToNames_];

  return MEMORY[0x1EEE6DEC8](v0 + 272);
}

{
  v98 = v0;
  v1 = *(v0 + 1768);
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1752);
  v4 = v1;
  swift_willThrow();

  v5 = *(v0 + 1744);
  v6 = (*(v0 + 1736) - 1) & *(v0 + 1736);
  if (v6)
  {
    v3 = *(v0 + 1720);
LABEL_7:
    *(v0 + 1744) = v5;
    *(v0 + 1736) = v6;
    v8 = *(v0 + 1560);
    v9 = __clz(__rbit64(v6)) | (v5 << 6);
    v10 = v3[7];
    v11 = (v3[6] + 16 * v9);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v10 + 8 * v9);
    *(v0 + 1752) = v14;

    v15 = v14;
    v16 = MEMORY[0x1E12A1410](v12, v13);
    *(v0 + 1760) = v16;

    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 1296;
    *(v0 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v17 = swift_continuation_init();
    *(v0 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v0 + 944) = v17;
    *(v0 + 912) = MEMORY[0x1E69E9820];
    *(v0 + 920) = 1107296256;
    *(v0 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 936) = &block_descriptor_269;
    [v8 getSharedUserIdForHomeUserId:v16 completion:v0 + 912];

    return MEMORY[0x1EEE6DEC8](v0 + 336);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      v3 = *(v0 + 1720);
      if (v7 >= (((1 << *(v0 + 1824)) + 63) >> 6))
      {
        break;
      }

      v6 = v3[v7 + 8];
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v96 = *(v0 + 1728);
    v18 = *(v0 + 1704);
    v19 = *(v0 + 1696);
    v20 = *(v0 + 1632);
    v21 = *(v0 + 1472);
    v22 = *(v0 + 1440);
    v23 = *(v0 + 1432);
    v24 = *(v0 + 1392);
    v25 = *(v24 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v94 = *(v0 + 1624);
    v26 = v25;
    v92 = v20;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v25, v20, 0, v21, v22);
    v27 = *(v24 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v4 = v19;
    v28 = v27;
    v3 = v18;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v27, v18, 0, v21, v23);
    if (one-time initialization token for executor == -1)
    {
      goto LABEL_11;
    }

LABEL_29:
    swift_once();
LABEL_11:
    v29 = *(v0 + 1440);
    v30 = *(v0 + 1424);
    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v29, v30, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    v88 = v3;
    v90 = v4;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 1496);
      v35 = *(v0 + 1488);
      v36 = *(v0 + 1424);
      v37 = *(v0 + 1416);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v97[0] = v39;
      *v38 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v36, v37, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v40 = *(v34 + 48);
      v84 = v39;
      if (v40(v37, 1, v35) == 1)
      {
        v41 = *(v0 + 1488);
        v42 = *(v0 + 1416);
        IdentifiedUser.init()();
        if (v40(v42, 1, v41) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1512), *(v0 + 1416), *(v0 + 1488));
      }

      v44 = *(v0 + 1512);
      v45 = *(v0 + 1496);
      v46 = *(v0 + 1488);
      v47 = *(v0 + 1424);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v45 + 8))(v44, v46);
      outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v97);

      *(v38 + 4) = v51;
      _os_log_impl(&dword_1DC659000, v32, v33, "#user-session: proposedIdentityOfRecognizedUser=%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x1E12A2F50](v84, -1, -1);
      MEMORY[0x1E12A2F50](v38, -1, -1);

      v3 = v88;
      v4 = v90;
    }

    else
    {
      v43 = *(v0 + 1424);

      outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 1432), *(v0 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v0 + 1496);
      v55 = *(v0 + 1488);
      v56 = *(v0 + 1408);
      v57 = *(v0 + 1400);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v97[0] = v59;
      *v58 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v56, v57, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v60 = *(v54 + 48);
      v86 = v59;
      if (v60(v57, 1, v55) == 1)
      {
        v61 = *(v0 + 1488);
        v62 = *(v0 + 1400);
        IdentifiedUser.init()();
        if (v60(v62, 1, v61) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1504), *(v0 + 1400), *(v0 + 1488));
      }

      v64 = *(v0 + 1504);
      v65 = *(v0 + 1496);
      v66 = *(v0 + 1488);
      v67 = *(v0 + 1408);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v65 + 8))(v64, v66);
      outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v97);

      *(v58 + 4) = v71;
      _os_log_impl(&dword_1DC659000, v52, v53, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x1E12A2F50](v86, -1, -1);
      MEMORY[0x1E12A2F50](v58, -1, -1);
    }

    else
    {
      v63 = *(v0 + 1408);

      outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v72 = *(v0 + 1544);
    v73 = *(v0 + 1536);
    v74 = *(v0 + 1528);
    v80 = *(v0 + 1520);
    v81 = *(v0 + 1512);
    v82 = *(v0 + 1504);
    v83 = *(v0 + 1480);
    v85 = *(v0 + 1472);
    v87 = *(v0 + 1448);
    v75 = *(v0 + 1432);
    v89 = *(v0 + 1424);
    v91 = *(v0 + 1416);
    v93 = *(v0 + 1408);
    v95 = *(v0 + 1400);
    v76 = *(v0 + 1384);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 1440), v76, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v77 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v75, v76 + *(v77 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v76 + *(v77 + 24)) = v96;
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);

    v78 = *(v0 + 8);

    return v78();
  }
}

{
  v146 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  swift_willThrow();

  v3 = *(v0 + 1800);
  v4 = *(v0 + 1528);
  v5 = *(v0 + 1480);
  v6 = *(v0 + 1752);
  v7 = v3;
  static Locale.autoupdatingCurrent.getter();
  IdentifiedUser.init()();
  v8 = v6;
  IdentifiedUser.person.setter();
  v9 = *(v0 + 1800);
  v10 = *(v0 + 1528);
  v11 = *(v0 + 1480);
  v12 = *(v0 + 1464);
  v13 = *(v0 + 1456);
  v14 = *(v0 + 1448);
  IdentifiedUser.preferredTemperatureUnitName.setter();
  IdentifiedUser.extractLocale(userSpecificInfo:settings:defaultLocale:)(0, 0, v14);
  (*(v12 + 56))(v14, 0, 1, v13);
  IdentifiedUser.locale.setter();
  v15 = [v9 iCloudAltDSID];
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v17 = *(v0 + 1800);
  v18 = *(v0 + 1528);
  IdentifiedUser.iCloudAltDSID.setter();
  v19 = [v17 homeUserId];
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v21 = *(v0 + 1528);
  IdentifiedUser.homeUserID.setter();
  IdentifiedUser.sharedUserId.getter();
  if (v22)
  {
  }

  else
  {
    v23 = [*(v0 + 1800) sharedUserId];
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v25 = *(v0 + 1528);
    IdentifiedUser.sharedUserId.setter();
  }

  v133 = *(v0 + 1752);
  v137 = *(v0 + 1544);
  v26 = *(v0 + 1536);
  v27 = *(v0 + 1528);
  v140 = *(v0 + 1520);
  v143 = *(v0 + 1728);
  v28 = *(v0 + 1496);
  v29 = *(v0 + 1488);
  v30 = *(v0 + 1480);
  v31 = *(v0 + 1464);
  v32 = *(v0 + 1456);
  v33 = *(v0 + 1800);
  IdentifiedUser.sharedUserInfo.setter();

  (*(v31 + 8))(v30, v32);
  v34 = *(v28 + 32);
  v34(v26, v27, v29);
  v134 = v34;
  v34(v137, v26, v29);
  (*(v28 + 16))(v140, v137, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v0 + 1728);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_42:
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, v36);
  }

  v39 = *(v0 + 1800);
  v40 = *(v0 + 1544);
  v41 = *(v0 + 1520);
  v42 = *(v0 + 1496);
  v43 = *(v0 + 1488);

  (*(v42 + 8))(v40, v43);
  *(v36 + 2) = v38 + 1;
  v134(&v36[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38], v41, v43);
  v44 = *(v0 + 1744);
  v45 = *(v0 + 1736);
  *(v0 + 1728) = v36;
  v46 = (v45 - 1) & v45;
  if (v46)
  {
    v47 = *(v0 + 1720);
LABEL_19:
    *(v0 + 1744) = v44;
    *(v0 + 1736) = v46;
    v49 = *(v0 + 1560);
    v50 = __clz(__rbit64(v46)) | (v44 << 6);
    v51 = *(v47 + 56);
    v52 = (*(v47 + 48) + 16 * v50);
    v53 = *v52;
    v54 = v52[1];
    v55 = *(v51 + 8 * v50);
    *(v0 + 1752) = v55;

    v56 = v55;
    v57 = MEMORY[0x1E12A1410](v53, v54);
    *(v0 + 1760) = v57;

    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 1296;
    *(v0 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v58 = swift_continuation_init();
    *(v0 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v0 + 944) = v58;
    *(v0 + 912) = MEMORY[0x1E69E9820];
    *(v0 + 920) = 1107296256;
    *(v0 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 936) = &block_descriptor_269;
    [v49 getSharedUserIdForHomeUserId:v57 completion:v0 + 912];

    return MEMORY[0x1EEE6DEC8](v0 + 336);
  }

  else
  {
    while (1)
    {
      v48 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      v47 = *(v0 + 1720);
      if (v48 >= (((1 << *(v0 + 1824)) + 63) >> 6))
      {
        break;
      }

      v46 = *(v47 + 8 * v48 + 64);
      ++v44;
      if (v46)
      {
        v44 = v48;
        goto LABEL_19;
      }
    }

    v144 = *(v0 + 1728);
    v59 = *(v0 + 1704);
    v60 = *(v0 + 1696);
    v61 = *(v0 + 1632);
    v62 = *(v0 + 1472);
    v63 = *(v0 + 1440);
    v64 = *(v0 + 1432);
    v65 = *(v0 + 1392);
    v66 = *(v65 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v141 = *(v0 + 1624);
    v67 = v66;
    v138 = v61;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v66, v61, 0, v62, v63);
    v68 = *(v65 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v69 = v60;
    v70 = v68;
    v71 = v59;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v68, v59, 0, v62, v64);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v72 = *(v0 + 1440);
    v73 = *(v0 + 1424);
    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v72, v73, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    v131 = v71;
    v135 = v69;
    if (os_log_type_enabled(v75, v76))
    {
      v77 = *(v0 + 1496);
      v78 = *(v0 + 1488);
      v79 = *(v0 + 1424);
      v80 = *(v0 + 1416);
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v145[0] = v82;
      *v81 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v79, v80, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v83 = *(v77 + 48);
      v127 = v82;
      if (v83(v80, 1, v78) == 1)
      {
        v84 = *(v0 + 1488);
        v85 = *(v0 + 1416);
        IdentifiedUser.init()();
        if (v83(v85, 1, v84) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1512), *(v0 + 1416), *(v0 + 1488));
      }

      v87 = *(v0 + 1512);
      v88 = *(v0 + 1496);
      v89 = *(v0 + 1488);
      v90 = *(v0 + 1424);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      (*(v88 + 8))(v87, v89);
      outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v145);

      *(v81 + 4) = v94;
      _os_log_impl(&dword_1DC659000, v75, v76, "#user-session: proposedIdentityOfRecognizedUser=%s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v127);
      MEMORY[0x1E12A2F50](v127, -1, -1);
      MEMORY[0x1E12A2F50](v81, -1, -1);

      v71 = v131;
      v69 = v135;
    }

    else
    {
      v86 = *(v0 + 1424);

      outlined destroy of ReferenceResolutionClientProtocol?(v86, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 1432), *(v0 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = *(v0 + 1496);
      v98 = *(v0 + 1488);
      v99 = *(v0 + 1408);
      v100 = *(v0 + 1400);
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v145[0] = v102;
      *v101 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v99, v100, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v103 = *(v97 + 48);
      v129 = v102;
      if (v103(v100, 1, v98) == 1)
      {
        v104 = *(v0 + 1488);
        v105 = *(v0 + 1400);
        IdentifiedUser.init()();
        if (v103(v105, 1, v104) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1504), *(v0 + 1400), *(v0 + 1488));
      }

      v107 = *(v0 + 1504);
      v108 = *(v0 + 1496);
      v109 = *(v0 + 1488);
      v110 = *(v0 + 1408);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58]);
      v111 = dispatch thunk of CustomStringConvertible.description.getter();
      v113 = v112;
      (*(v108 + 8))(v107, v109);
      outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, v145);

      *(v101 + 4) = v114;
      _os_log_impl(&dword_1DC659000, v95, v96, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x1E12A2F50](v129, -1, -1);
      MEMORY[0x1E12A2F50](v101, -1, -1);
    }

    else
    {
      v106 = *(v0 + 1408);

      outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v115 = *(v0 + 1544);
    v116 = *(v0 + 1536);
    v117 = *(v0 + 1528);
    v123 = *(v0 + 1520);
    v124 = *(v0 + 1512);
    v125 = *(v0 + 1504);
    v126 = *(v0 + 1480);
    v128 = *(v0 + 1472);
    v130 = *(v0 + 1448);
    v118 = *(v0 + 1432);
    v132 = *(v0 + 1424);
    v136 = *(v0 + 1416);
    v139 = *(v0 + 1408);
    v142 = *(v0 + 1400);
    v119 = *(v0 + 1384);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 1440), v119, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v120 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v118, v119 + *(v120 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v119 + *(v120 + 24)) = v144;
    (*(*(v120 - 8) + 56))(v119, 0, 1, v120);

    v121 = *(v0 + 8);

    return v121();
  }
}

uint64_t IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for IdentifiedUser.Classification();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UserSessionState();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v65 - v20;
  v22 = type metadata accessor for IdentifiedUser();
  v73 = *(v22 - 8);
  v23 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 && !a2 && !v24 && !a3)
  {
    v27 = type metadata accessor for Locale();
    (*(*(v27 - 8) + 8))(a4, v27);
    v28 = *(v73 + 56);

    return v28(a5, 1, 1, v22);
  }

  v65 = v13;
  v30 = a2;
  v71 = a4;
  v72 = v24;
  v68 = a5;
  IdentifiedUser.init()();
  v67 = a3;
  v31 = v22;
  if (!a1)
  {
    v37 = a3;
    IdentifiedUser.person.setter();
LABEL_15:
    v36 = v72;
    if (v72)
    {
      v38 = [v72 temperatureUnit];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (*&a1[OBJC_IVAR___SKEUserSpecificInfo_meCard])
  {
    v32 = *&a1[OBJC_IVAR___SKEUserSpecificInfo_meCard];
  }

  else
  {
    v32 = a3;
  }

  v33 = v32;
  IdentifiedUser.person.setter();
  if (!*&a1[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8])
  {
    goto LABEL_15;
  }

  v34 = *&a1[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
  v35 = *&a1[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8];

  v36 = v72;
LABEL_18:
  IdentifiedUser.preferredTemperatureUnitName.setter();
  v39 = v71;
  IdentifiedUser.extractLocale(userSpecificInfo:settings:defaultLocale:)(a1, v36, v21);
  v40 = type metadata accessor for Locale();
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v66 = v40;
  v42(v21, 0, 1);
  IdentifiedUser.locale.setter();
  if (a1)
  {
    v43 = *&a1[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore];
    v44 = a1;
    v75 = 0;
    IdentifiedUser.voiceIDScore.setter();
    if ((v44[OBJC_IVAR___SKEUserSpecificInfo_userAttribute] & 1) == 0)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    IdentifiedUser.belongsToHome.setter();
    v45 = v44[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR];
    IdentifiedUser.wasSpeechProfileUsedByASR.setter();
    v46 = *&v44[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold];
    v74 = v44[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4];
    IdentifiedUser.lowConfidenceThreshold.setter();
    v47 = *&v44[OBJC_IVAR___SKEUserSpecificInfo_userId];
    v48 = *&v44[OBJC_IVAR___SKEUserSpecificInfo_userId + 8];

    IdentifiedUser.sharedUserId.setter();
    v49 = *&v44[OBJC_IVAR___SKEUserSpecificInfo_personaId];
    v50 = *&v44[OBJC_IVAR___SKEUserSpecificInfo_personaId + 8];

    IdentifiedUser.personaId.setter();
    v51 = v44[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold];
    IdentifiedUser.meetsUserSessionThreshold.setter();
    v52 = v44[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold];
    IdentifiedUser.meetsPersonalRequestThreshold.setter();
    v53 = v44[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession];
    IdentifiedUser.hasActiveUserSession.setter();
    (*(v69 + 16))(v17, &v44[OBJC_IVAR___SKEUserSpecificInfo_userSessionState], v70);
    IdentifiedUser.userSessionState.setter();
    v54 = v44[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification];
    if (v54 <= 1)
    {
      v39 = v71;
      if (v44[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification])
      {
        static IdentifiedUser.Classification.known.getter();
      }

      else
      {
        static IdentifiedUser.Classification.confident.getter();
      }
    }

    else
    {
      v39 = v71;
      if (v54 == 2)
      {
        static IdentifiedUser.Classification.unsure1.getter();
      }

      else if (v54 == 3)
      {
        static IdentifiedUser.Classification.unsureN.getter();
      }

      else
      {
        static IdentifiedUser.Classification.unknown.getter();
      }
    }

    IdentifiedUser.voiceConfidenceClassification.setter();
  }

  if (v30)
  {
    v55 = v30;
    v56 = [v55 iCloudAltDSID];
    if (v56)
    {
      v57 = v56;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    IdentifiedUser.iCloudAltDSID.setter();
    v58 = [v55 homeUserId];
    if (v58)
    {
      v59 = v58;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    IdentifiedUser.homeUserID.setter();
    IdentifiedUser.sharedUserId.getter();
    if (v60)
    {
    }

    else
    {
      v61 = [v55 sharedUserId];
      if (v61)
      {
        v62 = v61;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      IdentifiedUser.sharedUserId.setter();
    }

    v63 = v55;
    IdentifiedUser.sharedUserInfo.setter();

    (*(v41 + 8))(v39, v66);
  }

  else
  {
    (*(v41 + 8))(v39, v66);
  }

  v64 = v68;
  (*(v73 + 32))(v68, v26, v31);
  return (*(v73 + 56))(v64, 0, 1, v31);
}

uint64_t partial apply for closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);

  return closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(a1, v4, v5, v6);
}

uint64_t closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 80) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for UserInputResult();
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), 0, 0);
}

uint64_t protocol witness for Conversational.accept(request:) in conformance Conversation(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.accept(request:)(a1, a2);
}

uint64_t Conversation.accept(request:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v7 = *(v6 + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v9 = type metadata accessor for Conversation.State(0);
  v3[25] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v11 = type metadata accessor for OSSignpostID();
  v3[28] = v11;
  v12 = *(v11 - 8);
  v3[29] = v12;
  v13 = *(v12 + 64) + 15;
  v3[30] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v3[31] = v14;
  v15 = *(v14 - 8);
  v3[32] = v15;
  v16 = *(v15 + 64) + 15;
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v2, 0);
}

uint64_t Conversation.State.assertReady(function:)()
{
  v1 = type metadata accessor for Conversation.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  outlined init with copy of Conversation.State(v0, v16 - v6, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of Conversation.State(v7, type metadata accessor for Conversation.State);
  if (EnumCaseMultiPayload == 5)
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    strcpy(v16, "Cannot call ");
    BYTE5(v16[1]) = 0;
    HIWORD(v16[1]) = -5120;
    v9 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v9);

    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA7E5A0);
    v10 = v16[0];
    v11 = v16[1];
    lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
  }

  else
  {
    outlined init with copy of Conversation.State(v0, v4, type metadata accessor for Conversation.State);
    v12 = swift_getEnumCaseMultiPayload();
    result = outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
    if (v12 == 4)
    {
      return result;
    }

    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x1E12A1580](0x6320746F6E6E6143, 0xEC000000206C6C61);
    v14 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v14);

    MEMORY[0x1E12A1580](0xD00000000000002BLL, 0x80000001DCA7E570);
    v10 = v16[0];
    v11 = v16[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  }

  swift_allocError();
  *v15 = v10;
  v15[1] = v11;
  return swift_willThrow();
}

char *initializeWithCopy for SiriRequestIdentities(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for IdentifiedUser();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  if (v8(&a2[v10], 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

uint64_t destroy for SiriRequestIdentities(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiedUser();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v7 = *(a2 + 20);
  if (!v6(a1 + v7, 1, v4))
  {
    (*(v5 + 8))(a1 + v7, v4);
  }

  v8 = *(a1 + *(a2 + 24));
}

void *initializeBufferWithCopyOfBuffer for SiriKitBiomeDonator.DonationEvent(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t destroy for SiriKitBiomeDonator.DonationEvent(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t FlowAgent.on(input:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for FlowTraceEvent();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](FlowAgent.on(input:), v1, 0);
}

uint64_t partial apply for closure #1 in FlowAgent.on(input:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in FlowAgent.on(input:)(a1, v5, v4);
}

uint64_t closure #1 in FlowAgent.on(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for OSSignpostID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in FlowAgent.on(input:), 0, 0);
}

uint64_t destroy for ConversationHelperInput(id *a1, uint64_t a2)
{
  v21 = a2;
  v4 = a1 + *(a2 + 20);
  v5 = *(v4 + 1);

  v6 = *(v4 + 3);

  v7 = type metadata accessor for RemoteConversationTurnData(0);
  v8 = v7[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(&v4[v8], 1, v9))
  {
    (*(v10 + 8))(&v4[v8], v9);
  }

  v12 = v7[7];
  v13 = type metadata accessor for SessionConfiguration();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v4[v12], 1, v13))
  {
    (*(v14 + 8))(&v4[v12], v13);
  }

  v15 = v7[9];
  if (!v11(&v4[v15], 1, v9))
  {
    (*(v10 + 8))(&v4[v15], v9);
  }

  v16 = *&v4[v7[10]];

  v17 = &v4[v7[13]];
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v17, v18);
  }

  v19 = *(a1 + *(v21 + 24));

  return swift_unknownObjectRelease();
}

uint64_t sub_1DC75AF54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t partial apply for closure #3 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #3 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t closure #3 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)(a3, 1, a4, a5 + v13, a6, a7, 0);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
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
      *(v3[7] + result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for RemoteConversationClient();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      v22 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14SiriKitRuntime24RemoteConversationClientC_Tt1g5(v7, result + 1);
      v23 = *(v22 + 16);
      if (*(v22 + 24) <= v23)
      {
        specialized _NativeSet.resize(capacity:)(v23 + 1);
      }

      specialized _NativeSet._unsafeInsertNew(_:)(v24, v22);

      *v3 = v22;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    v11 = *(a2 + 112);
    v12 = *(a2 + 120);
    String.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = -1 << *(v6 + 32);
    v15 = v13 & ~v14;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_15:
      v19 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v2;

      specialized _NativeSet.insertNew(_:at:isUnique:)(v21, v15, isUniquelyReferenced_nonNull_native);
      *v2 = v26;
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v16 = ~v14;
    while (1)
    {
      v17 = *(*(v6 + 48) + 8 * v15);
      v18 = *(v17 + 112) == *(a2 + 112) && *(v17 + 120) == *(a2 + 120);
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v15);

    return 0;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v10 = *(v5 + 112);
  v11 = *(v5 + 120);
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for RemoteConversationClient();
    do
    {
      v14 = *(*(v8 + 48) + 8 * a2);
      if (*(v14 + 112) == *(v5 + 112) && *(v14 + 120) == *(v5 + 120))
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v5;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1DC75C148()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.prepare(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.prepare(bridge:)(a1, a2, a3, v9, v8);
}

uint64_t closure #1 in RemoteConversationClient.prepare(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.prepare(bridge:), 0, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationClient.prepare(bridge:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  ObjectType = swift_getObjectType();
  v14 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, a5);
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in RemoteConversationClient.prepare(bridge:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_138;
  v17 = _Block_copy(aBlock);

  [a2 prepareWithBridge:v14 reply:v17];
  _Block_release(v17);
  return swift_unknownObjectRelease();
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(uint64_t a1)
{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR, specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:));
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, &_s7SiriCam0B5ParseOSgMd, &_s7SiriCam0B5ParseOSgMR, specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:));
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, &_sSiSgMd, &_sSiSgMR);
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, &_sSdSgMd, &_sSdSgMR);
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, (v1 + 16));
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AnyEncodable()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t lazy protocol witness table accessor for type Parse and conformance Parse(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return Optional<A>.encode(to:)();
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)();
}

{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  return Optional<A>.encode(to:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DecisionEngineCurareStream.insert(jsonStr:interactionId:)(Swift::String jsonStr, Swift::String interactionId)
{
  object = interactionId._object;
  countAndFlagsBits = interactionId._countAndFlagsBits;
  v5 = jsonStr._object;
  v6 = jsonStr._countAndFlagsBits;
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = objc_allocWithZone(MEMORY[0x1E699C0D0]);
  v8 = MEMORY[0x1E12A1410](v6, v5);
  v9 = MEMORY[0x1E12A1410](countAndFlagsBits, object);
  v10 = [v7 initWithJsonStr:v8 interactionId:v9 dataVersion:0];

  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  v13 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
  v14 = MEMORY[0x1E12A1410](v12, v11);
  v15 = [v13 initWithStreamId_];

  if (!v15)
  {
    __break(1u);
  }

  v20[0] = 0;
  v16 = [v15 insert:v10 error:v20];

  if (v16)
  {
    v17 = v20[0];
  }

  else
  {
    v18 = v20[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t @objc ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = one-time initialization token for shared;
  v14 = a3;
  swift_retain_n();
  v15 = v14;
  if (v13 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;
  v17 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = v15;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a5, v18);
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.flowPluginWillExecute(flowPluginInfo:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.flowPluginWillExecute(flowPluginInfo:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.flowPluginWillExecute(flowPluginInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.flowPluginWillExecute(flowPluginInfo:), v6, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.flowPluginWillExecute(flowPluginInfo:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v4 + 96))(v2, ObjectType, v4);
  v6 = v0[1];

  return v6();
}

void RunSiriKitExecutorProcessorExecutionDelegate.flowPluginWillExecute(flowPluginInfo:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 624))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_1DC659000, v5, v6, "RunSiriKitExecutorProcessor already released, ignoring flowPluginWillExecute of %@", v7, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

void RunSiriKitExecutorProcessor.flowPluginWillExecute(flowPluginInfo:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1DC659000, v6, v7, "Received FlowPluginInfo: %@", v8, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v11 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  swift_beginAccess();
  v12 = *(v2 + v11);
  *(v2 + v11) = v5;
  v5;

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_isMuxEnabled) == 1)
  {
    MEMORY[0x1EEE9AC00](v13);
    v14 = objc_allocWithZone(type metadata accessor for FlowPluginInfoMessage());
    v15 = FlowPluginInfoMessage.init(build:)();
    if (v15)
    {
      v16 = v15;
      v17 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher + 32);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher + 24));
      dispatch thunk of MessagePublishing.postMessage(_:)();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1DC659000, v18, v19, "Posted FlowPluginInfo message to the bus", v20, 2u);
        MEMORY[0x1E12A2F50](v20, -1, -1);
      }
    }

    else
    {
      v18 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1DC659000, v18, v21, "Could not init FlowPluginInfoMessage", v22, 2u);
        MEMORY[0x1E12A2F50](v22, -1, -1);
      }
    }
  }
}

void RecentDialogTracker.handleEndRequest(sessionState:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId + 8);
  if (v2)
  {
    if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestHasTrackedDialogs) == 1)
    {
      v4 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId);
      v5 = one-time initialization token for conversationBridge;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.conversationBridge);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v16 = v10;
        *v9 = 136315138;
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v2, &v16);
        _os_log_impl(&dword_1DC659000, v7, v8, "RecentDialogTracker: requesting session snapshot for request %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x1E12A2F50](v10, -1, -1);
        MEMORY[0x1E12A2F50](v9, -1, -1);
      }

      v11 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of ConversationSessionState.createSnapshot(requestId:)();
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v13, "RecentDialogTracker: handleEndRequest called when currentRequestId is not set", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }
  }
}

uint64_t ConversationRequestProcessorTurnState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v2 = type metadata accessor for RequestType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  v4 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v5 = type metadata accessor for InputOrigin();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  outlined consume of ConversationRequestProcessorTurnState.SpeechState(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState + 8));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void outlined consume of ConversationRequestProcessorTurnState.SpeechState(unint64_t a1, void *a2)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t ServerFallbackCapableRequestProcessor.__deallocating_deinit()
{
  v0 = ConversationRequestProcessor.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor);

  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_gatedExecuteNLOnServer);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *ConversationRequestProcessor.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);

  outlined consume of ConversationRequestProcessor.State(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state + 8), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState));
  v8 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask);

  v9 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker);

  v10 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker));
  v11 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient));
  v12 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
  swift_unknownObjectRelease();
  v13 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler);

  v14 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider);

  v15 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider);

  v16 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker);

  v17 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v18 = type metadata accessor for UserID();
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator));
  v20 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent);

  v21 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v22 = type metadata accessor for SessionConfiguration();
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID + 8);

  v24 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v25 = type metadata accessor for UserSessionState();
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  return v0;
}

uint64_t ConcurrentTaskPool.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t MultiUserContextUpdater.addContextUpdater(forUserId:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.conversationBridge);
  outlined init with copy of UserID?(a1, v17);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v44 = v4;
    v24 = v23;
    v47[0] = v23;
    *v22 = 136315138;
    outlined init with copy of UserID?(v17, v14);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v47);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1DC659000, v19, v20, "Creating ContextUpdater for userId: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v29 = v24;
    v4 = v44;
    MEMORY[0x1E12A2F50](v29, -1, -1);
    v30 = v22;
    v5 = v43;
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  }

  v31 = (*(*v2 + 328))(a1);
  outlined init with copy of UserID?(a1, v11);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v32 = *(*v2 + 216);

    v32(v33);
  }

  else
  {
    v34 = v45;
    (*(v5 + 32))(v45, v11, v4);
    v35 = v4;
    v36 = *(*v2 + 200);

    v37 = v36(v47);
    v39 = v38;
    v40 = *v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *v39;
    *v39 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v34, isUniquelyReferenced_nonNull_native);
    *v39 = v46;
    v37(v47, 0);
    (*(v5 + 8))(v34, v35);
  }

  return v31;
}

char *MultiUserContextUpdater.makeContextUpdater(userId:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - v5;
  v29 = &v28 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol((v1 + 2), v33);
  outlined init with copy of ReferenceResolutionClientProtocol((v1 + 7), v32);
  outlined init with copy of ReferenceResolutionClientProtocol((v1 + 12), v31);
  v7 = v1[17];
  v8 = v1[18];
  v9 = v1[19];
  v10 = v1[20];
  v11 = v1[21];
  v28 = v1[22];
  v12 = v1[23];
  outlined init with copy of ReferenceResolutionClientProtocol((v1 + 24), v30);
  v13 = v1[29];
  outlined init with copy of UserID?(a1, v6);
  v14 = type metadata accessor for ContextUpdater();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 30) = MEMORY[0x1E69E7CC0];
  *(v17 + 32) = 0;
  *(v17 + 33) = v18;
  *(v17 + 35) = 0;
  *(v17 + 36) = 0;
  *(v17 + 34) = v18;
  v19 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  v20 = type metadata accessor for UserID();
  (*(*(v20 - 8) + 56))(&v17[v19], 1, 1, v20);
  *&v17[OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_domainHints] = v18;
  outlined init with copy of ReferenceResolutionClientProtocol(v33, (v17 + 16));
  outlined init with copy of ReferenceResolutionClientProtocol(v32, (v17 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol(v31, (v17 + 96));
  *(v17 + 17) = v7;
  *(v17 + 18) = v8;
  *(v17 + 19) = v9;
  *(v17 + 20) = v10;
  v21 = v28;
  *(v17 + 21) = v11;
  *(v17 + 22) = v21;
  *(v17 + 23) = v12;
  outlined init with copy of ReferenceResolutionClientProtocol(v30, (v17 + 192));
  *(v17 + 31) = v13;
  type metadata accessor for SessionStateContextKeysManager();
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v22[2] = v23;
  swift_unknownObjectRetain();

  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(v18);
  v25 = MEMORY[0x1E69E7CD0];
  v22[3] = v24;
  v22[4] = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  *(v17 + 29) = v22;
  v26 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  swift_beginAccess();
  outlined assign with take of UserID?(v29, &v17[v26]);
  swift_endAccess();
  return v17;
}

uint64_t type metadata accessor for ContextUpdater()
{
  result = type metadata singleton initialization cache for ContextUpdater;
  if (!type metadata singleton initialization cache for ContextUpdater)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_ptMd, &_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_ptMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v10, v6, &_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_ptMd, &_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_ptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ConversationSessionKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of Any(&v6[v9], (v8[7] + 32 * v14));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined assign with take of UserID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MultiUserContextUpdater.sharedContextUpdater.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 264);
  *(v1 + 264) = a1;
}

uint64_t closure #1 in RemoteConversationClient.ensureReady()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.ensureReady(), 0, 0);
}

uint64_t sub_1DC75E514()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void closure #1 in closure #1 in RemoteConversationClient.ensureReady()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in RemoteConversationClient.ensureReady();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_193;
  v12 = _Block_copy(aBlock);

  [a2 ensureReadyWithReply_];
  _Block_release(v12);
}

uint64_t closure #1 in RemoteConversationService.ensureReady(reply:)()
{
  v41 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v2, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of ReferenceResolutionClientProtocol((*(v0 + 272) + 40), v0 + 56);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.executor);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1DC659000, v7, v8, "startTurn received for conversation which is executing, ensuring ready", v9, 2u);
        MEMORY[0x1E12A2F50](v9, -1, -1);
      }

      v10 = *(v0 + 272);

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
      outlined destroy of RemoteConversationService.State(v10 + v11, type metadata accessor for SiriRequest);
LABEL_14:
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      v20 = *(v0 + 40);
      v21 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
      if (one-time initialization token for ensureReadyTimeout != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for DispatchTimeInterval();
      v23 = __swift_project_value_buffer(v22, static RemoteConversationService.ensureReadyTimeout);
      v24 = *(v21 + 16);
      v39 = (v24 + *v24);
      v25 = v24[1];
      v26 = swift_task_alloc();
      *(v0 + 288) = v26;
      *v26 = v0;
      v26[1] = closure #1 in RemoteConversationService.ensureReady(reply:);

      return v39(v23, v20, v21);
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.executor);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x80000001DCA83550, &v40);
      _os_log_impl(&dword_1DC659000, v29, v30, "No conversation is active, ignoring %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1E12A2F50](v32, -1, -1);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    v33 = *(v0 + 256);
    (*(v0 + 248))(0);
  }

  else
  {
    v12 = *(v0 + 272);
    v13 = *(v12 + 80);

    v14 = *(v12 + 40);
    v15 = *(v12 + 56);
    *(v0 + 128) = *(v12 + 72);
    *(v0 + 96) = v14;
    *(v0 + 112) = v15;
    outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 96, v0 + 176, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    if (*(v0 + 200))
    {
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 176), v0 + 136);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.executor);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1DC659000, v17, v18, "startTurn received for conversation which is awaiting input, ensuring ready", v19, 2u);
        MEMORY[0x1E12A2F50](v19, -1, -1);
      }

      v10 = *(v0 + 272);

      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v0 + 16);
      goto LABEL_14;
    }

    v34 = *(v0 + 272);
    v36 = *(v0 + 248);
    v35 = *(v0 + 256);
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 176, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    v36(0);
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  v37 = *(v0 + 272);

  v38 = *(v0 + 8);

  return v38();
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = closure #1 in RemoteConversationService.ensureReady(reply:);
  }

  else
  {
    v6 = closure #1 in RemoteConversationService.ensureReady(reply:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = *(v0 + 256);
  (*(v0 + 248))(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = *(v0 + 272);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[37];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v1;
  v3(v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[34];

  v6 = v0[1];

  return v6();
}

uint64_t protocol witness for Conversational.ensureReady(timeout:) in conformance Conversation(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.ensureReady(timeout:)(a1);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for ConversationSessionKey();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMd, &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMR);
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
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMd, &_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      Task.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMd, &_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMR);
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
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0]);
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for IntentTopic();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMd, &_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMR);
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
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68]);
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

{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
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
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
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

{
  v2 = v1;
  v41 = type metadata accessor for UserID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMd, &_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMR);
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
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = *(v18 + 112);
      v21 = *(v18 + 120);
      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t Conversation.ensureReady(timeout:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for TimeoutError();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for ConversationCommitResult();
  v2[15] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v8 = type metadata accessor for Conversation.State(0);
  v2[17] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.ensureReady(timeout:), v1, 0);
}

uint64_t Conversation.ensureReady(timeout:)()
{
  v61 = v0;
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[11];
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v3 + v4, v1, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v6 = v0[19];
      v7 = type metadata accessor for Conversation.State;
    }

    else
    {
      v17 = v0[19];
      v18 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR) + 48));

      v7 = type metadata accessor for SiriRequest;
      v6 = v17;
    }

    outlined destroy of Conversation.State(v6, v7);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v19 = v0[11];
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.executor);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[18];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59 = v25;
      *v24 = 136315138;
      outlined init with copy of Conversation.State(v3 + v4, v23, type metadata accessor for Conversation.State);
      v26 = Conversation.State.description.getter();
      v28 = v27;
      outlined destroy of Conversation.State(v23, type metadata accessor for Conversation.State);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v59);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1DC659000, v21, v22, "[Conversation] ensureReady can only be called for commited conversation, not state %s.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v30 = v0[18];
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(71);
    MEMORY[0x1E12A1580](0xD000000000000044, 0x80000001DCA7E4D0);
    outlined init with copy of Conversation.State(v3 + v4, v30, type metadata accessor for Conversation.State);
    v31 = Conversation.State.description.getter();
    v33 = v32;
    outlined destroy of Conversation.State(v30, type metadata accessor for Conversation.State);
    MEMORY[0x1E12A1580](v31, v33);

    MEMORY[0x1E12A1580](46, 0xE100000000000000);
    v34 = v59;
    v35 = v60;
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.executor);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1DC659000, v9, v10, "Conversation ensured Ready.", v11, 2u);
        MEMORY[0x1E12A2F50](v11, -1, -1);
      }

      v13 = v0[18];
      v12 = v0[19];
      v14 = v0[16];
      v15 = v0[14];

      v16 = v0[1];
      goto LABEL_26;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.executor);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DC659000, v47, v48, "[Conversation] Conversation was cancelled and couldn't be ready again.", v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    v50 = v0[11];

    v51 = *v50;
    v59 = _typeName(_:qualified:)();
    v60 = v52;
    MEMORY[0x1E12A1580](0x6C6C65636E616320, 0xEB000000002E6465);
    v34 = v59;
    v35 = v60;
    lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
LABEL_25:
    swift_allocError();
    *v53 = v34;
    v53[1] = v35;
    swift_willThrow();
    v55 = v0[18];
    v54 = v0[19];
    v56 = v0[16];
    v57 = v0[14];

    v16 = v0[1];
LABEL_26:

    return v16();
  }

  v36 = v0[10];
  v37 = v0[11];
  v38 = *v0[19];
  v39 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  v0[20] = v38;
  v0[21] = v39;
  swift_beginAccess();
  *(v37 + v39) = 1;

  v40 = DispatchTimeInterval.seconds.getter();
  v41 = *(MEMORY[0x1E69D3548] + 4);

  v42 = swift_task_alloc();
  v0[22] = v42;
  *v42 = v0;
  v42[1] = Conversation.ensureReady(timeout:);
  v44 = v0[15];
  v43 = v0[16];
  v45.n128_f64[0] = v40;

  return MEMORY[0x1EEE40F70](v43, &async function pointer to partial apply for closure #1 in Conversation.ensureReady(timeout:), v38, v44, v45);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = Conversation.ensureReady(timeout:);
  }

  else
  {
    v6 = v2[20];
    v7 = v2[16];
    v8 = v2[11];
    outlined destroy of Conversation.State(v7, type metadata accessor for ConversationCommitResult);

    v5 = Conversation.ensureReady(timeout:);
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[20];

  *(v0[11] + v0[21]) = 0;
  v2 = v0[20];
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "Conversation ensured Ready.", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[16];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

{
  v45 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[14];
  v4 = v0[12];

  v0[8] = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.executor);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "[Conversation] Failed to ensure conversation is ready to handle next request within a time limit.\nMostly due to long running execution or flow forgets to call completion.", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    v10 = v0[23];
    v11 = v0[20];

    lazy protocol witness table accessor for type TimedOutError and conformance TimedOutError();
    swift_allocError();
    *v12 = 0xD00000000000009BLL;
    v12[1] = 0x80000001DCA7E430;
    swift_willThrow();

    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[16];
    v16 = v0[14];

    v17 = v0[1];
  }

  else
  {
    v18 = &unk_1EE159000;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v19 = v0[23];
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.executor);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[23];
    v26 = v0[20];
    if (v24)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      v0[9] = v25;
      v29 = v25;
      v30 = String.init<A>(describing:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v44);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1DC659000, v22, v23, "[Conversation] error in running speculation/commit task while ensuring the runtime is ready (will ignore): %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E12A2F50](v28, -1, -1);
      v33 = v27;
      v18 = &unk_1EE159000;
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    else
    {
      v34 = v0[20];
    }

    *(v0[11] + v0[21]) = 0;
    v35 = v0[20];
    if (v18[389] != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v20, static Logger.executor);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "Conversation ensured Ready.", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v40 = v0[18];
    v39 = v0[19];
    v41 = v0[16];
    v42 = v0[14];

    v17 = v0[1];
  }

  return v17();
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  else
  {
    v6 = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 16);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return (v10)(v0 + 17, &async function pointer to closure #1 in RemoteConversationClient.ensureReady(), 0, v8, v3, v4);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

{
  v16 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v0[5] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v4, v5, "Error ensuring active conversation is ready (will reset the remote conversation state, and reconnect): %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v13 = v0[7];

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v13, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  Logger.debugF(file:function:)();
  v3 = v2[19];
  v4 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v3);
  v5 = *(v4 + 16);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return (v10)(v0 + 137, &async function pointer to closure #1 in RemoteConversationClient.reset(), 0, v8, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = *(v2 + 56);
  if (v0)
  {

    v6 = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  else
  {
    v6 = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[7];
  v2 = v1[19];
  v0[12] = v2;
  v3 = v1[20];
  v0[13] = v3;
  v0[14] = __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v0[15] = *(v3 + 24);
  v0[16] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xEB38000000000000;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v4, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  (*(v0 + 120))(*(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

uint64_t closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)()
{
  **(v0 + 48) = 0;
  return (*(v0 + 8))();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 16);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return (v10)(v0 + 17, &async function pointer to closure #1 in RemoteConversationClient.ensureReady(), 0, v8, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  else
  {
    v6 = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

{
  v16 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v0[5] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v4, v5, "Error ensuring previous completed conversation is ready (will reset the remote conversation state, and reconnect): %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v13 = v0[7];

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v13, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  Logger.debugF(file:function:)();
  v3 = v2[19];
  v4 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v3);
  v5 = *(v4 + 16);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return (v10)(v0 + 137, &async function pointer to closure #1 in RemoteConversationClient.reset(), 0, v8, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = *(v2 + 56);
  if (v0)
  {

    v6 = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  else
  {
    v6 = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[7];
  v2 = v1[19];
  v0[12] = v2;
  v3 = v1[20];
  v0[13] = v3;
  v0[14] = __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v0[15] = *(v3 + 24);
  v0[16] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xEB38000000000000;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v4, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  (*(v0 + 120))(*(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  *v1 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t protocol witness for DeviceState.sessionHandOffContinuityID.getter in conformance DefaultDeviceState(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t AceServiceInvokerImpl._submitExecute<A>(_:)()
{
  v7 = v0;
  v1 = v0[5];
  v2 = *(*(v0[6] + 160) + 16);
  os_unfair_lock_lock(v2 + 6);
  closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(&v6);
  os_unfair_lock_unlock(v2 + 6);

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a5;
  v24 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  static TaskPriority.background.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  (*(v8 + 16))(v10, a4, v7);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  (*(v8 + 32))(&v18[v16], v10, v7);
  v19 = &v18[v17];
  v20 = v25;
  *v19 = v24;
  *(v19 + 1) = v20;
  *&v18[(v17 + 23) & 0xFFFFFFFFFFFFFFF8] = v26;
  v21 = a3;

  _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:), v18);

  return outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sScPSgMd, &_sScPSgMR);
}

uint64_t sub_1DC7607AC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(a1, a2, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t partial apply for closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(a1, v9, v10, v11, v1 + v6, v13, v14);
}

uint64_t closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Date();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:), 0, 0);
}

uint64_t closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)()
{
  v1 = v0[2];
  v2 = *(v0[7] + 16);
  v2(v0[9], v0[3], v0[6]);
  v3 = type metadata accessor for IntentStart();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = v1;
  IntentStart.init(intent:timestamp:)();
  v7 = v0[5];
  v8 = v0[4];
  v2(v0[8], v0[3], v0[6]);
  v9 = type metadata accessor for IntentEvent();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  IntentEvent.init(intentId:intentStart:createdAt:)();
  if (one-time initialization token for intentStore != -1)
  {
    swift_once();
  }

  v14 = v0[8];
  v13 = v0[9];
  v15 = type metadata accessor for IntentEventStore();
  __swift_project_value_buffer(v15, static IntentLoggingEventSink.intentStore);
  IntentEventStore.log(event:)();

  v16 = v0[1];

  return v16();
}

uint64_t ConversationRequestProcessor.handleStartSpeechRequestMessage(_:)(void *a1)
{
  v2 = a1;
  v3 = specialized ConversationRequestProcessorTurnState.__allocating_init(startSpeechRequestMessage:)(v2);
  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v2, v3, 0, v1, 0, 1);
}

uint64_t specialized ConversationRequestProcessorTurnState.__allocating_init(startSpeechRequestMessage:)(void *a1)
{
  v2 = type metadata accessor for InputOrigin();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RequestType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  type metadata accessor for StartSpeechRequestMessage();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20RoutingDecisionAware_pMd, &_s16SiriMessageTypes20RoutingDecisionAware_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
  }

  outlined destroy of RoutingDecisionAware?(v25);
  (*(v8 + 104))(v11, *MEMORY[0x1E69D0548], v7);
  v13 = v12;
  v14 = RequestMessageBase.requestId.getter();
  v16 = v15;

  started = StartSpeechRequestMessage.asrOnServer.getter();
  v18 = v13;
  StartRequestMessageBase.inputOrigin.getter();

  v19 = type metadata accessor for ConversationRequestProcessorTurnState();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v8 + 32))(v22 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v11, v7);
  v23 = (v22 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v23 = v14;
  v23[1] = v16;
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = started & 1;
  (*(v3 + 32))(v22 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v6, v2);
  return v22;
}

uint64_t outlined destroy of RoutingDecisionAware?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20RoutingDecisionAware_pSgMd, &_s16SiriMessageTypes20RoutingDecisionAware_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall MultiUserContextUpdater.updateServerContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v17 - v2;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "Applying server context through shared ContextUpdater", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v8 = type metadata accessor for UserID();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = MultiUserContextUpdater.contextUpdater(forUserId:)(v3);
  v10 = outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  if (v9)
  {
    (*(*v9 + 472))(v10);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Applied server context", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, v14, v15, "Could not find shared contextUpdater instance", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }
  }
}

Swift::Void __swiftcall ContextUpdater.updateServerContext()()
{
  v1 = v0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v2 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v45 - v3;
  v4 = type metadata accessor for UUID();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ConversationSessionKey();
  v7 = *(v52 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.conversationBridge);

  v51 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&aBlock = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[20], v1[21], &aBlock);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[22], v1[23], &aBlock);
    _os_log_impl(&dword_1DC659000, v13, v14, "Updating server context for requestID: %s using rootRequestID: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v17 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v18 = *MEMORY[0x1E69D0800];
  v19 = v52;
  v48 = v7[13];
  v48(v10, v18, v52);
  dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
  v20 = v7[1];
  v20(v10, v19);
  if (*(&v54 + 1))
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
    if (swift_dynamicCast())
    {
      v21 = v57;
      [v57 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v51 = v21;
        v22 = v57;
        v23 = [v22 aceId];
        if (v23)
        {
          v24 = v23;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v38 = v45;
          UUID.init()();
          v25 = UUID.uuidString.getter();
          v27 = v39;
          (*(v46 + 8))(v38, v47);
        }

        v40 = MEMORY[0x1E12A1410](v25, v27);

        [v22 setAceId_];

        v41 = MEMORY[0x1E12A1410](v1[22], v1[23]);
        [v22 setRefId_];

        v42 = v1[17];
        v55 = closure #1 in ContextUpdater.updateServerContext();
        v56 = 0;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v54 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
        *(&v54 + 1) = &block_descriptor_1;
        v43 = _Block_copy(&aBlock);
        [v42 handleCommand:v22 completion:v43];
        _Block_release(v43);

        aBlock = 0u;
        v54 = 0u;
        v44 = v52;
        v48(v10, v18, v52);
        ContextUpdater.updateSessionState(withValue:forKey:)();

        v20(v10, v44);
        outlined destroy of ReferenceResolutionClientProtocol?(&aBlock, &_sypSgMd, &_sypSgMR);
      }

      else
      {
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1DC659000, v35, v36, "Could not copy NFCU. It is not safe to send it to server", v37, 2u);
          MEMORY[0x1E12A2F50](v37, -1, -1);
        }
      }

      return;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&aBlock = v31;
    *v30 = 136315394;
    (*(*v1 + 360))();
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &aBlock);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[20], v1[21], &aBlock);
    _os_log_impl(&dword_1DC659000, v28, v29, "NativeFlowContextUpdate is empty when userId: %s, requestID: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v31, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR14SiriKitRuntime24RemoteConversationClientCSg_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime20LinkExpansionContextV07SessionI0C_TG5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime20LinkExpansionContextV07SessionI0C_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime20LinkExpansionContextV07SessionI0C_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(a1, v4, v5, v6);
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), a4, 0);
}

uint64_t partial apply for closure #1 in RemoteConversationService.ensureReady(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.ensureReady(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in RemoteConversationService.ensureReady(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  v7 = type metadata accessor for RemoteConversationService.State(0);
  v6[33] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static ConversationActor.shared;
  v6[35] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.ensureReady(reply:), v9, 0);
}

void *_sSo27AFRequestCancellationReasonVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo31LNActionTypeSpecificMetadataKeyaSYSCSY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

char *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFyp_Tgq5_0(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DC7624D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *_s14SiriKitRuntime21AceServiceInvokerImplC0D13SubmitOptions33_6F702868F5EE7637FC7805F00DECC893LLOwcp_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *_s14SiriKitRuntime21SerialSubmissionError33_6F702868F5EE7637FC7805F00DECC893LLVwcp_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = v3;
  v6 = v4;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1DC762634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1DC76274C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Parse();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DC7628F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DC7629B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DC762A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for Parse();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1DC762BD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for Parse();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1DC762E30()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC762E80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC762EC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC762F14(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 384);

  return v3(v4);
}

__n128 sub_1DC762F7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DC762F88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC762FDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 408);

  return v3(v4);
}

uint64_t sub_1DC763044@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC763090(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);

  return v3(v4);
}

uint64_t sub_1DC7630FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC763148(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t sub_1DC7631A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7631F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);

  return v3(v4);
}

uint64_t sub_1DC763268()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC7632C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC7632F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of CamBridgeImpl.CamState((v3 + 144), a2);
}

uint64_t sub_1DC763348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of CamBridgeImpl.CaarState((v3 + 192), a2);
}

uint64_t sub_1DC763398@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 240);
}

uint64_t sub_1DC7633F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC763468(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void *_s14SiriKitRuntime23CandidateRequestMessageOwcp_0(void *a1, void *a2)
{
  v3 = (*a2 & 0x1FFFFFFFFFFFFFFFLL);
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_1DC763534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DC7635F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC7636A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7636F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC763750@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7637F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76384C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 392);

  return v3(v4);
}

uint64_t sub_1DC7638A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC7638E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DC763944(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DC7639A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1DC763A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v3 + v4, a2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t sub_1DC763A74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DC763ACC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DC763B20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Conversation.correctionsFlow.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DC763B4C(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow);
  *(*a2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = *a1;
}

uint64_t sub_1DC763B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Input();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DC763CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Input();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DC763DF8()
{
  v1 = *(v0 + 16);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC763E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 720))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC763EA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 744))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC763F00(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for ConversationBridge.isFirstRequestInSession;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DC764004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 792))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC764058(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 800);

  return v3(v4);
}

uint64_t sub_1DC76424C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 864))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7642A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 872);

  return v3(v4);
}

uint64_t sub_1DC7642FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 888))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC764350(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 896);

  return v3(v4);
}

uint64_t sub_1DC764568@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1008))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC764610@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1032))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7646B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1056))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC764708(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 1064);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC7647B8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC76482C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC764864()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC7648FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ServerFallbackReason();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 24);

  v13 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DC764A54()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DC764B20()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC764B58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1DC764BA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t sub_1DC764BF0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ConversationCanHandleResult.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC764C3C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ConversationCanHandleResult.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC764C8C@<X0>(uint64_t *a1@<X8>)
{
  result = SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC764CB8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ConversationCommitResultXPC.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC764D04(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ConversationCommitResultXPC.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC764D50@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ConversationFlexibleExecutionSupportXPC.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC764D9C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ConversationFlexibleExecutionSupportXPC.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC764DE4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC764E2C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC764E7C()
{
  v1 = type metadata accessor for RemoteConversationTurnData(0);
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v21 = (v2 + 16) & ~v2;
  v22 = v0;
  v3 = v0 + v21;
  v4 = *(v0 + v21 + 8);

  v5 = *(v0 + v21 + 24);

  v6 = v1[6];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v21 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v10 = v1[7];
  v11 = type metadata accessor for SessionConfiguration();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v13 = v1[9];
  if (!v9(v3 + v13, 1, v7))
  {
    (*(v8 + 8))(v3 + v13, v7);
  }

  v14 = *(v3 + v1[10]);

  v15 = (v3 + v1[13]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v15, v16);
  }

  v17 = (v20 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v22 + v17);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v22, v17 + 16, v2 | 7);
}

uint64_t sub_1DC7650F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RemoteConversationTurnData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DC76519C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RemoteConversationTurnData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC765240()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 152) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + 56);

  v8 = *(v0 + 72);

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  v9 = *(v0 + 128);

  v10 = *(v0 + 144);

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3, 1, v11))
  {
    (*(v12 + 8))(v0 + v3, v11);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v13 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v13 + 16, v2 | 7);
}

uint64_t sub_1DC7653C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC765458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7654A4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC7654FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC765548(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);

  return v3(v4);
}

uint64_t sub_1DC76559C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7655E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 232);

  return v3(v4);
}

uint64_t sub_1DC76563C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7656D8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ConversationParaphraseResultXPC.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC765724(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ConversationParaphraseResultXPC.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76576C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC7657C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC765810()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC765868()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC7658C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1DC765920(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 408);
  v5 = *(a1 + 16);
  outlined copy of ConversationRequestProcessor.State(*a1, v3, v5);
  return v4(v2, v3, v5);
}

uint64_t sub_1DC765A50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC765AF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 496))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC765BA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 520))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC765C98()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC765D08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DC765D70@<X0>(_BYTE *a1@<X8>)
{
  result = SiriXRedirectContext.RedirectReason.NoMatchingTool.searchSucceeded.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC765DD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC765E1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

unint64_t *_s14SiriKitRuntime37ConversationRequestProcessorTurnStateC06SpeechH0Owcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1DC765EB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC765F08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1DC766050(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DC76618C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC7661C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC766204()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DC76625C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC7662B4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[7];

  v6 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void *sub_1DC76631C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = ConversationService.serialFacade.getter();
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t _s14SiriKitRuntime19ConversationServiceC5StateOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ConversationService.State(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_1DC766410()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  v8 = type metadata accessor for SessionConfiguration();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;

  v13 = *(v0 + v12);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v12 + 16, v2 | 7);
}

uint64_t sub_1DC76658C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  v6 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC7665F0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC766648()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMd, &_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = (v0 + v5);
  v9 = *v8;

  v10 = v8[1];

  v11 = v8[2];

  v12 = *(v0 + v6);

  v13 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v3 | 7);
}

uint64_t sub_1DC766768@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PommesInfo.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC7667B4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PommesInfo.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76680C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC766844@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC766890(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);

  return v4(v2, v3);
}

uint64_t sub_1DC7669E4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC766A2C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DC766AAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC766AE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1DC766BB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC766C60()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[6];

  v5 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DC766CB8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC766CF0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1DC766D38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1DC766D94(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 104))(&v4);
}

void *sub_1DC766DEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1DC766E48(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 160))(&v4);
}

uint64_t sub_1DC766EA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC766F38()
{
  v1 = type metadata accessor for SiriRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for RequestContinuation(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = v0 + v3;
  v12 = *(v0 + v3 + 8);

  v13 = v1[5];
  v14 = type metadata accessor for Input();
  v35 = *(*(v14 - 8) + 8);
  v35(v11 + v13, v14);
  v15 = *(v11 + v1[6]);

  v16 = *(v11 + v1[7]);

  v17 = (v11 + v1[8]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v17, v18);
  }

  v19 = v7 & ~v6;
  v20 = *(v11 + v1[9]);

  v21 = *(v11 + v1[10]);

  v22 = *(v11 + v1[11]);

  v23 = v11 + v1[12];
  v24 = type metadata accessor for SiriRequestIdentities(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v33 = v5;
    v34 = v2;
    v25 = type metadata accessor for IdentifiedUser();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (!v27(v23, 1, v25))
    {
      (*(v26 + 8))(v23, v25);
    }

    v32 = v26;
    v28 = *(v24 + 20);
    if (!v27(v23 + v28, 1, v25))
    {
      (*(v32 + 8))(v23 + v28, v25);
    }

    v29 = *(v23 + *(v24 + 24));

    v5 = v33;
    v2 = v34;
  }

  type metadata accessor for UserInputResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35(v0 + v19, v14);
  }

  v30 = *(v0 + v19 + *(v5 + 20));

  return MEMORY[0x1EEE6BDD0](v0, v19 + v8, v2 | v6 | 7);
}

uint64_t sub_1DC76728C()
{
  v21 = type metadata accessor for RequestContinuation(0);
  v1 = *(*(v21 - 8) + 80);
  v2 = (v1 + 40) & ~v1;
  v20 = *(*(v21 - 8) + 64);
  v3 = type metadata accessor for ConversationContext();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v18 = *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v19 = *(v7 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = v0 + v2;
  type metadata accessor for UserInputResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for Input();
    (*(*(v12 - 8) + 8))(v0 + v2, v12);
  }

  v13 = v1 | v5 | v8;
  v14 = (v2 + v20 + v5) & ~v5;
  v15 = (v14 + v18 + v8) & ~v8;
  v16 = *(v11 + *(v21 + 20));

  (*(v4 + 8))(v0 + v14, v3);
  (*(v7 + 8))(v0 + v15, v6);

  return MEMORY[0x1EEE6BDD0](v0, v15 + v19, v13 | 7);
}

uint64_t sub_1DC7674F0()
{
  v1 = type metadata accessor for RequestContinuation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for ConversationContext();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  v10 = v0 + v3;
  type metadata accessor for UserInputResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Input();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
  }

  v12 = (v3 + v4 + v7) & ~v7;
  v13 = *(v10 + *(v1 + 20));

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_1DC76768C()
{
  v1 = type metadata accessor for ConversationContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DC76780C()
{
  v1 = type metadata accessor for SiriRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v37 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for ConversationContext();
  v5 = *(v4 - 8);
  v35 = *(v5 + 80);
  v34 = *(v5 + 64);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v6 = *(v36 - 8);
  v7 = *(v6 + 80);
  v33 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  v10 = v0 + v3;
  v11 = *(v0 + v3 + 8);

  v12 = v1[5];
  v13 = type metadata accessor for Input();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = *(v0 + v3 + v1[6]);

  v15 = *(v0 + v3 + v1[7]);

  v16 = (v0 + v3 + v1[8]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v16, v17);
  }

  v18 = *(v10 + v1[9]);

  v19 = *(v10 + v1[10]);

  v20 = *(v10 + v1[11]);

  v21 = v10 + v1[12];
  v22 = type metadata accessor for SiriRequestIdentities(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v32 = v4;
    v23 = type metadata accessor for IdentifiedUser();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (!v25(v21, 1, v23))
    {
      (*(v24 + 8))(v21, v23);
    }

    v31 = v24;
    v26 = *(v22 + 20);
    if (!v25(v21 + v26, 1, v23))
    {
      (*(v31 + 8))(v21 + v26, v23);
    }

    v27 = *(v21 + *(v22 + 24));

    v4 = v32;
    v3 = (v2 + 40) & ~v2;
  }

  v28 = (v3 + v37 + v35) & ~v35;
  v29 = (v28 + v34 + v7) & ~v7;
  (*(v5 + 8))(v0 + v28, v4);
  (*(v6 + 8))(v0 + v29, v36);

  return MEMORY[0x1EEE6BDD0](v0, v29 + v33, v2 | v35 | v7 | 7);
}

uint64_t sub_1DC767BD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DC767CD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DC767DCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC767E1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = ActingFlowAgent.environment.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DC767E48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return ActingFlowAgent.environment.setter(v4);
}

uint64_t sub_1DC767E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserInputResult();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1DC767F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UserInputResult();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void *_s14SiriKitRuntime12EncoreEngineC13InternalEventOwcp_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1DC768034()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76806C()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC7680B8()
{
  v1 = type metadata accessor for SiriRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*(v1 - 1) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for RequestContinuation(0);
  v6 = *(*(v5 - 8) + 80);
  v34 = v4;
  v7 = v4 + v6 + 16;
  v35 = *(*(v5 - 8) + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = v0 + v3;
  v10 = *(v0 + v3 + 8);

  v11 = v1[5];
  v12 = type metadata accessor for Input();
  v33 = *(*(v12 - 8) + 8);
  v33(v9 + v11, v12);
  v13 = *(v9 + v1[6]);

  v14 = *(v9 + v1[7]);

  v15 = (v9 + v1[8]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v15, v16);
  }

  v17 = v7 & ~v6;
  v18 = *(v9 + v1[9]);

  v19 = *(v9 + v1[10]);

  v20 = *(v9 + v1[11]);

  v21 = v9 + v1[12];
  v22 = type metadata accessor for SiriRequestIdentities(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v32 = v2;
    v23 = type metadata accessor for IdentifiedUser();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (!v25(v21, 1, v23))
    {
      (*(v24 + 8))(v21, v23);
    }

    v31 = v24;
    v26 = *(v22 + 20);
    if (!v25(v21 + v26, 1, v23))
    {
      (*(v31 + 8))(v21 + v26, v23);
    }

    v27 = *(v21 + *(v22 + 24));

    v2 = v32;
  }

  v28 = *(v0 + v34 + 8);

  type metadata accessor for UserInputResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33(v0 + v17, v12);
  }

  v29 = *(v0 + v17 + *(v5 + 20));

  return MEMORY[0x1EEE6BDD0](v0, v17 + v35, v2 | v6 | 7);
}

uint64_t sub_1DC768424()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v6 = v0[10];

  v7 = (v0 + v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for UserInputResult();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Input();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
    }

    v9 = *(v7 + *(type metadata accessor for RequestContinuation(0) + 20));
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DC768578()
{
  v1 = type metadata accessor for RequestContinuation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 48);

  type metadata accessor for UserInputResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Input();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = *(v0 + v3 + *(v1 + 20));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DC7686C4()
{
  v1 = *(type metadata accessor for EncoreEngine.ActionOutcome(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *(v10 + 8);

      v14 = *(v10 + 24);
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_11;
      }

      v12 = type metadata accessor for PluginAction();
    }

    else
    {
      v12 = type metadata accessor for FlowUnhandledReason();
    }

    (*(*(v12 - 8) + 8))(v10, v12);
  }

LABEL_11:
  v15 = *(v0 + v4 + 8);

  v16 = v0 + v7;
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_23;
  }

  type metadata accessor for ConversationCommitResult();
  v17 = swift_getEnumCaseMultiPayload();
  if (v17 <= 1)
  {
    if (!v17)
    {
      v21 = *v16;

      v22 = *(v16 + 8);

      goto LABEL_23;
    }

    if (v17 != 1)
    {
      goto LABEL_23;
    }

    v18 = type metadata accessor for FlowUnhandledReason();
    goto LABEL_22;
  }

  if (v17 == 2)
  {
    v18 = type metadata accessor for PluginAction();
LABEL_22:
    (*(*(v18 - 8) + 8))(v0 + v7, v18);
    goto LABEL_23;
  }

  if (v17 == 3)
  {
    v19 = *(v16 + 8);

    v20 = *(v16 + 24);
  }

LABEL_23:

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_1DC768A5C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ExecutionContextUpdate.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC768AA8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ExecutionContextUpdate.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC768AF0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ExecutionInputInfo.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC768B3C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ExecutionInputInfo.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC768B84@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ExecutionOutput.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC768BD0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ExecutionOutput.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC768C18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 129);
  return result;
}

uint64_t sub_1DC768C60(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 129) = v2;
  return result;
}

uint64_t sub_1DC768CA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 130);
  return result;
}

uint64_t sub_1DC768CEC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 130) = v2;
  return result;
}

uint64_t sub_1DC768D30()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC768D78()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC768DB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC768E04()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DC768E54()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(v0[4], v0[5]);
  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DC768EB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC768F08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC768F64(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE8);

  return v3(v4);
}

uint64_t sub_1DC768FC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC769060()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC769098()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC7690D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC769120()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC769170()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1DC769234()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1DC769274@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1DC7692D0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 160))(&v4);
}

uint64_t sub_1DC769328@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC7693C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC769458@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC7694F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC769590()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMd, &_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DC769624@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7696BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DC769728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DC769798()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v22 = *(v5 + 64);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v21 = *(v9 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = type metadata accessor for LaunchAppBehavior();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3, 1, v12))
  {
    (*(v13 + 8))(v0 + v3, v12);
  }

  v14 = type metadata accessor for SiriKitReliabilityCodes();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v7, 1, v14))
  {
    (*(v15 + 8))(v0 + v7, v14);
  }

  v16 = (v22 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + v10 + 8) & ~v10;
  v18 = (v21 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v9 + 8))(v0 + v17, v8);
  v19 = *(v0 + v18 + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | v10 | 7);
}

uint64_t sub_1DC769A80()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC769ABC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for InputOrigin();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_27:
    v22 = *(v10 + 48);

    return v22(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for InteractionType();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_27;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_27;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_27;
  }

  v15 = type metadata accessor for ResponseMode();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_27;
  }

  v16 = type metadata accessor for MultiUserState();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[11];
    goto LABEL_27;
  }

  v17 = type metadata accessor for Locale();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a3[18];
    goto LABEL_27;
  }

  v18 = type metadata accessor for SiriVoiceGender();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a3[19];
    goto LABEL_27;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a3[24];
    goto LABEL_27;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v9 = v20;
    v10 = *(v20 - 8);
    v11 = a3[25];
    goto LABEL_27;
  }

  v21 = type metadata accessor for Restrictions();
  if (*(*(v21 - 8) + 84) == a2)
  {
    v9 = v21;
    v10 = *(v21 - 8);
    v11 = a3[26];
    goto LABEL_27;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[27];

  return v24(v25, a2, v23);
}

uint64_t sub_1DC769EEC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for InputOrigin();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_25:
    v22 = *(v10 + 56);

    return v22(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for InteractionType();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_25;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_25;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_25;
  }

  v15 = type metadata accessor for ResponseMode();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_25;
  }

  v16 = type metadata accessor for MultiUserState();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[11];
    goto LABEL_25;
  }

  v17 = type metadata accessor for Locale();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[18];
    goto LABEL_25;
  }

  v18 = type metadata accessor for SiriVoiceGender();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[19];
    goto LABEL_25;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[24];
    goto LABEL_25;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v9 = v20;
    v10 = *(v20 - 8);
    v11 = a4[25];
    goto LABEL_25;
  }

  v21 = type metadata accessor for Restrictions();
  if (*(*(v21 - 8) + 84) == a3)
  {
    v9 = v21;
    v10 = *(v21 - 8);
    v11 = a4[26];
    goto LABEL_25;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v24 = *(*(v23 - 8) + 56);
  v25 = v5 + a4[27];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_1DC76A31C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC76A360()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC76A3A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76A3E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76A4B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76A504(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);

  return v3(v4);
}

uint64_t sub_1DC76A558@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76A5A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);

  return v3(v4);
}

uint64_t sub_1DC76A5FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76A664@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76A6C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76A70C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_1DC76A764()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76A7C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = dispatch thunk of CodeGenListEntry.entry.getter();
  *a2 = v5;
  return result;
}

uint64_t sub_1DC76A808()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC76A858()
{
  v1 = type metadata accessor for UserID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 73) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 3);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 2, v3 | 7);
}

uint64_t sub_1DC76A938()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76A970@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76AA04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76AA9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76AB34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76AB94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 176);
  *a2 = *(v3 + 168);
  a2[1] = v4;
}

uint64_t sub_1DC76AC0C()
{
  v1 = type metadata accessor for Input();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1DC76ACD8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(v0[4], v0[5]);
  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DC76AD30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC76AD88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];
  swift_unknownObjectRelease();
  v5 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC76ADEC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DC76AE94@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static RemoteConversationSpeechData.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC76AEE0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static RemoteConversationSpeechData.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76AF70@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ProxiedRequestContext.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC76AFBC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ProxiedRequestContext.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76B004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DC76B140(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DC76B294()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s14SiriKitRuntime23RemoteFlowPluginPackageC0abE00eF6BundleAadEP10bundlePathSSvgTW_0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);

  return v1;
}

uint64_t sub_1DC76B30C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static RequestContextData.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC76B358(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static RequestContextData.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76B3A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76B3F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 328);

  return v4(v2, v3);
}

uint64_t sub_1DC76B554@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76B5F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76B69C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  return result;
}