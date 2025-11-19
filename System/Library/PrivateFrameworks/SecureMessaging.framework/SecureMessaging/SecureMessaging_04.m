uint64_t closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:)()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  v3._countAndFlagsBits = 0x6341746E65696C43;
  v3._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  swift_beginAccess();
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v0[2] = v7;
  v0[3] = v6;
  v0[4] = v8;
  v0[5] = v9;
  v0[6] = v10;
  v11 = *(v5 + 104);

  outlined copy of Data?(v8, v9);

  v19 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  v14 = v0[25];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[24];

  return (v19)(v0 + 7, v16, v17, v14, v15, v0 + 2, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v15 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[28];
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[5];
    v7 = v2[6];

    outlined consume of Data?(v6, v8);

    v9 = closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  }

  else
  {
    v4 = v2[28];
    v10 = v2[3];
    v11 = v2[4];
    v13 = v2[5];
    v12 = v2[6];

    outlined consume of Data?(v11, v13);

    v9 = closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, v4, 0);
}

{
  v25 = v0;
  v2 = v0[21];
  v1 = v0[22];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "applicationEncrypt groupName finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[20];
  v14._countAndFlagsBits = 0x6E61487473726946;
  v14._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v14);
  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[10];
  v24[0] = v0[7];
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  outlined copy of Data?(v24[0], v15);
  v18 = *(v12 + 88);
  v19 = *(v12 + 104);

  MLS.GroupNameEncryptionProcessedContext.init(dataContext:)(v24, v18, v19, v13);
  v21 = v0[9];
  v20 = v0[10];
  outlined consume of Data?(v0[7], v0[8]);

  v22 = v0[1];

  return v22();
}

{
  v1 = *(v0 + 240);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.applicationSign(input:withGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 360) = a5;
  *(v6 + 368) = v5;
  *(v6 + 344) = a3;
  *(v6 + 352) = a4;
  *(v6 + 336) = a1;
  v8 = *v5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v6 + 376) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  *(v6 + 384) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v6 + 392) = v11;
  v12 = *(v11 - 8);
  *(v6 + 400) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = *(v8 + 88);
  *(v6 + 424) = *(v8 + 104);
  *(v6 + 432) = type metadata accessor for MLS.SigningContext();
  v14 = type metadata accessor for Optional();
  *(v6 + 440) = v14;
  v15 = *(v14 - 8);
  *(v6 + 448) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 456) = swift_task_alloc();
  v17 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v17;
  *(v6 + 48) = a2[2];
  *(v6 + 60) = *(a2 + 44);

  return MEMORY[0x2822009F8](MLS.Client.applicationSign(input:withGroup:context:), v5, 0);
}

uint64_t MLS.Client.applicationSign(input:withGroup:context:)()
{
  v76 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 360);
  v6 = swift_allocObject();
  *(v0 + 464) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 400);
    v8 = *(v0 + 408);
    v10 = *(v0 + 392);
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v68 = xmmword_2651B5F50;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    MLS.SigningContext.dataContext.getter(*(v0 + 432), &v71);
    v11 = v71;
    v13 = v72;
    v68 = v73;
    v14 = v74;
    (*(v7 + 8))(*(v0 + 456), *(v0 + 432));
  }

  v15 = *(v0 + 368);
  v16 = *(v0 + 352);
  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v68;
  *(v6 + 48) = v14;
  outlined init with copy of MLS.SigningInput(v0 + 16, v0 + 80);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  outlined destroy of MLS.SigningInput(v0 + 16);

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v70 = v20;
    *v19 = 136315650;
    v22 = *(v0 + 32);
    v21 = *(v0 + 40);
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 64);
    v26 = *(v0 + 72);
    v27 = (v24 >> 60) & 3;
    v66 = v20;
    if (v27)
    {
      LOWORD(v71) = *(v0 + 32);
      v72 = v21;
      *&v73 = v24 & 0xCFFFFFFFFFFFFFFFLL;
      if (v27 == 1)
      {
        *(&v73 + 1) = v23;
        v74 = v25;
        LOWORD(v75) = v26;
        v28 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
      }

      else
      {
        v28 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
      }
    }

    else
    {
      LOWORD(v71) = *(v0 + 32);
      v72 = v21;
      *&v73 = v24;
      *(&v73 + 1) = v23;
      v74 = v25;
      v75 = v26;
      v28 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
    }

    v31 = *(v0 + 344);
    v30 = *(v0 + 352);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v70);

    *(v19 + 4) = v32;
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &v70);
    *(v19 + 22) = 2080;
    swift_beginAccess();
    v33 = *(v6 + 32);
    *(v0 + 208) = *(v6 + 16);
    *(v0 + 224) = v33;
    *(v0 + 240) = *(v6 + 48);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 208, v0 + 248, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
    v34 = specialized MLS.SigningContext.description.getter();
    v36 = v35;
    outlined destroy of NSObject?(v0 + 208, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v70);

    *(v19 + 24) = v37;
    _os_log_impl(&dword_264F1F000, v17, v18, "applicationSign called { input: %s, group: %s, context: %s }", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v66, -1, -1);
    MEMORY[0x266755550](v19, -1, -1);
  }

  v38 = *(v0 + 384);
  v67 = *(v0 + 368);
  v64 = *(v0 + 376);
  v65 = *(v0 + 352);
  swift_beginAccess();
  Date.init()();
  v39 = type metadata accessor for MetricCollector.Event();
  v40 = *(v39 + 20);
  v41 = type metadata accessor for Date();
  v42 = *(*(v41 - 8) + 56);
  v42(v38 + v40, 1, 1, v41);
  v43 = *(*(v39 - 8) + 56);
  v43(v38, 0, 1, v39);
  specialized Dictionary.subscript.setter(v38, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v42(v38 + *(v39 + 20), 1, 1, v41);
  v43(v38, 0, 1, v39);
  specialized Dictionary.subscript.setter(v38, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v42(v38 + *(v39 + 20), 1, 1, v41);
  v43(v38, 0, 1, v39);
  specialized Dictionary.subscript.setter(v38, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v44 = type metadata accessor for TaskPriority();
  (*(*(v44 - 8) + 56))(v64, 1, 1, v44);
  outlined init with copy of MLS.SigningInput(v0 + 16, v0 + 144);
  v45 = one-time initialization token for shared;

  v46 = v6;
  if (v45 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 416);
  v47 = *(v0 + 424);
  v49 = *(v0 + 368);
  v69 = *(v0 + 376);
  v50 = *(v0 + 344);
  v51 = *(v0 + 352);
  v52 = static MLSActor.shared;
  v53 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  *(v54 + 24) = v53;
  *(v54 + 32) = v46;
  *(v54 + 40) = v49;
  v55 = *(v0 + 32);
  *(v54 + 48) = *(v0 + 16);
  *(v54 + 64) = v55;
  *(v54 + 80) = *(v0 + 48);
  *(v54 + 92) = *(v0 + 60);
  *(v54 + 112) = v50;
  *(v54 + 120) = v51;
  v56 = type metadata accessor for MLS.SigningProcessedContext();

  v57 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v69, &async function pointer to partial apply for closure #1 in MLS.Client.applicationSign(input:withGroup:context:), v54);
  *(v0 + 472) = v57;
  v58 = *(MEMORY[0x277D857C8] + 4);
  v59 = swift_task_alloc();
  *(v0 + 480) = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v59 = v0;
  v59[1] = MLS.Client.applicationSign(input:withGroup:context:);
  v61 = *(v0 + 336);
  v62 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v61, v57, v56, v60, v62);
}

{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  v5 = *(v2 + 368);
  if (v0)
  {
    v6 = MLS.Client.applicationSign(input:withGroup:context:);
  }

  else
  {
    v6 = MLS.Client.applicationSign(input:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[51];
  v6 = v0[47];
  v5 = v0[48];

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[58];
  v1 = v0[59];

  v3 = v0[61];
  v4 = v0[57];
  v5 = v0[51];
  v7 = v0[47];
  v6 = v0[48];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in MLS.Client.applicationSign(input:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[28] = a1;
  v8[29] = a4;
  v8[34] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[35] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.applicationSign(input:withGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.applicationSign(input:withGroup:context:)()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  swift_beginAccess();
  v4._countAndFlagsBits = 0x6341746E65696C43;
  v4._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v4);
  swift_endAccess();
  v5 = v2[17];
  v6 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v5);
  v8 = v1[1];
  v7 = v1[2];
  v9 = *v1;
  *(v0 + 60) = *(v1 + 44);
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  *(v0 + 16) = v9;
  swift_beginAccess();
  v11 = v3[2];
  v10 = v3[3];
  v12 = v3[4];
  v13 = v3[5];
  v14 = v3[6];
  *(v0 + 80) = v11;
  *(v0 + 88) = v10;
  *(v0 + 96) = v12;
  *(v0 + 104) = v13;
  *(v0 + 112) = v14;
  v15 = *(v6 + 112);

  outlined copy of Data?(v12, v13);

  v21 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 288) = v17;
  *v17 = v0;
  v17[1] = closure #1 in MLS.Client.applicationSign(input:withGroup:context:);
  v18 = *(v0 + 256);
  v19 = *(v0 + 264);

  return v21(v0 + 120, v0 + 16, v18, v19, v0 + 80, v5, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v15 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = v2[35];
    v5 = v2[11];
    v6 = v2[12];
    v8 = v2[13];
    v7 = v2[14];

    outlined consume of Data?(v6, v8);

    v9 = closure #1 in MLS.Client.applicationSign(input:withGroup:context:);
  }

  else
  {
    v4 = v2[35];
    v10 = v2[11];
    v11 = v2[12];
    v13 = v2[13];
    v12 = v2[14];

    outlined consume of Data?(v11, v13);

    v9 = closure #1 in MLS.Client.applicationSign(input:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, v4, 0);
}

{
  v25 = v0;
  v2 = v0[29];
  v1 = v0[30];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "applicationSign finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = v0[37];
  v12 = v0[34];
  v13 = v0[28];
  v14._countAndFlagsBits = 0x6E61487473726946;
  v14._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v14);
  v15 = v0[16];
  v16 = v0[17];
  v17 = v0[18];
  v24[0] = v0[15];
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  outlined copy of Data?(v24[0], v15);
  v18 = *(v12 + 88);
  v19 = *(v12 + 104);

  MLS.SigningProcessedContext.init(dataContext:)(v24, v18, v19, v13);
  v21 = v0[17];
  v20 = v0[18];
  outlined consume of Data?(v0[15], v0[16]);

  v22 = v0[1];

  return v22();
}

{
  v1 = *(v0 + 296);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[54] = a5;
  v6[55] = v5;
  v6[52] = a3;
  v6[53] = a4;
  v6[50] = a1;
  v6[51] = a2;
  v7 = *v5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[56] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v6[57] = swift_task_alloc();
  v6[58] = v7[10];
  v6[59] = v7[12];
  v10 = type metadata accessor for MLS.IncomingMessage();
  v6[60] = v10;
  v11 = *(v10 - 8);
  v6[61] = v11;
  v6[62] = *(v11 + 64);
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v6[65] = v12;
  v13 = *(v12 - 8);
  v6[66] = v13;
  v14 = *(v13 + 64) + 15;
  v6[67] = swift_task_alloc();
  v6[68] = v7[11];
  v6[69] = v7[13];
  v6[70] = type metadata accessor for MLS.IncomingMessageContext();
  v15 = type metadata accessor for Optional();
  v6[71] = v15;
  v16 = *(v15 - 8);
  v6[72] = v16;
  v17 = *(v16 + 64) + 15;
  v6[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(message:forGroup:context:), v5, 0);
}

uint64_t MLS.Client.processIncoming(message:forGroup:context:)()
{
  v93 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 432);
  v6 = swift_allocObject();
  *(v0 + 592) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v6 + 16) = v11;
    *(v6 + 24) = v13;
    *(v6 + 32) = xmmword_2651B5F50;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0xFFFFFFFF0000;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0;
    *(v6 + 112) = xmmword_2651B5F50;
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0;
    *(v6 + 168) = 0xF000000000000000;
    *(v6 + 176) = v14;
  }

  else
  {
    MLS.IncomingMessageContext.dataContext.getter(*(v0 + 560), v91);
    (*(v7 + 8))(*(v0 + 584), *(v0 + 560));
    v15 = v91[9];
    *(v6 + 144) = v91[8];
    *(v6 + 160) = v15;
    *(v6 + 176) = v92;
    v16 = v91[5];
    *(v6 + 80) = v91[4];
    *(v6 + 96) = v16;
    v17 = v91[7];
    *(v6 + 112) = v91[6];
    *(v6 + 128) = v17;
    v18 = v91[1];
    *(v6 + 16) = v91[0];
    *(v6 + 32) = v18;
    v19 = v91[3];
    *(v6 + 48) = v91[2];
    *(v6 + 64) = v19;
  }

  v20 = *(v0 + 440);
  v21 = *(v0 + 424);
  v22 = *(*(v0 + 488) + 16);
  v22(*(v0 + 512), *(v0 + 408), *(v0 + 480));

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 512);
  v87 = v22;
  if (v25)
  {
    v27 = *(v0 + 504);
    v84 = v24;
    v29 = *(v0 + 480);
    v28 = *(v0 + 488);
    v75 = *(v0 + 416);
    v78 = *(v0 + 424);
    v30 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v90 = v81;
    *v30 = 136315650;
    v22(v27, v26, v29);
    v31 = *(v28 + 8);
    v31(v26, v29);
    v32 = MLS.IncomingMessage.description.getter(v29);
    v34 = v33;
    v31(v27, v29);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v90);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v78, &v90);
    *(v30 + 22) = 2080;
    swift_beginAccess();
    v36 = *(v6 + 160);
    *(v0 + 144) = *(v6 + 144);
    *(v0 + 160) = v36;
    *(v0 + 176) = *(v6 + 176);
    v37 = *(v6 + 96);
    *(v0 + 80) = *(v6 + 80);
    *(v0 + 96) = v37;
    v38 = *(v6 + 128);
    *(v0 + 112) = *(v6 + 112);
    *(v0 + 128) = v38;
    v39 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v39;
    v40 = *(v6 + 64);
    *(v0 + 48) = *(v6 + 48);
    *(v0 + 64) = v40;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v41 = specialized MLS.IncomingMessageContext.description.getter();
    v43 = v42;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v90);

    *(v30 + 24) = v44;
    _os_log_impl(&dword_264F1F000, v23, v84, "processIncoming called { message: %s, group: %s, context: %s }", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v81, -1, -1);
    MEMORY[0x266755550](v30, -1, -1);
  }

  else
  {
    (*(*(v0 + 488) + 8))(v26, *(v0 + 480));
  }

  v76 = *(v0 + 504);
  v79 = *(v0 + 480);
  v45 = *(v0 + 456);
  v82 = *(v0 + 424);
  v85 = *(v0 + 440);
  v71 = *(v0 + 448);
  v73 = *(v0 + 408);
  swift_beginAccess();
  Date.init()();
  v46 = type metadata accessor for MetricCollector.Event();
  v47 = *(v46 + 20);
  v48 = type metadata accessor for Date();
  v49 = *(*(v48 - 8) + 56);
  v49(v45 + v47, 1, 1, v48);
  v50 = *(*(v46 - 8) + 56);
  v50(v45, 0, 1, v46);
  specialized Dictionary.subscript.setter(v45, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v49(v45 + *(v46 + 20), 1, 1, v48);
  v50(v45, 0, 1, v46);
  specialized Dictionary.subscript.setter(v45, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v49(v45 + *(v46 + 20), 1, 1, v48);
  v50(v45, 0, 1, v46);
  specialized Dictionary.subscript.setter(v45, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v51 = type metadata accessor for TaskPriority();
  (*(*(v51 - 8) + 56))(v71, 1, 1, v51);
  v87(v76, v73, v79);
  v52 = one-time initialization token for shared;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = *(v0 + 544);
  v54 = *(v0 + 496);
  v55 = *(v0 + 488);
  v72 = *(v0 + 472);
  v74 = *(v0 + 552);
  v70 = *(v0 + 464);
  v88 = *(v0 + 504);
  v89 = *(v0 + 448);
  v80 = *(v0 + 440);
  v83 = *(v0 + 480);
  v86 = *(v0 + 424);
  v77 = *(v0 + 416);
  v56 = static MLSActor.shared;
  v57 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v58 = (*(v55 + 80) + 72) & ~*(v55 + 80);
  v59 = (v54 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 2) = v56;
  *(v60 + 3) = v57;
  *(v60 + 4) = v70;
  *(v60 + 5) = v53;
  *(v60 + 6) = v72;
  *(v60 + 7) = v74;
  *(v60 + 8) = v6;
  (*(v55 + 32))(&v60[v58], v88, v83);
  *&v60[v59] = v80;
  v61 = &v60[(v59 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v61 = v77;
  *(v61 + 1) = v86;
  v62 = type metadata accessor for MLS.IncomingMessageProcessedContext();

  v63 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v89, &async function pointer to partial apply for closure #1 in MLS.Client.processIncoming(message:forGroup:context:), v60);
  *(v0 + 600) = v63;
  v64 = *(MEMORY[0x277D857C8] + 4);
  v65 = swift_task_alloc();
  *(v0 + 608) = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v65 = v0;
  v65[1] = MLS.Client.processIncoming(message:forGroup:context:);
  v67 = *(v0 + 400);
  v68 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v67, v63, v62, v66, v68);
}

{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  v5 = *(v2 + 440);
  if (v0)
  {
    v6 = MLS.Client.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = MLS.Client.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[217] = a8;
  v8[216] = a7;
  v8[215] = a6;
  v8[214] = a5;
  v8[213] = a4;
  v8[212] = a1;
  v8[218] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[219] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.processIncoming(message:forGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(message:forGroup:context:)()
{
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1712);
  v4 = *(v0 + 1704);
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  v8 = type metadata accessor for MLS.IncomingMessage();
  MLS.IncomingMessage.allMemberIncomingMessage.getter(v8, v0 + 1496);
  v9 = v2[17];
  v10 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v9);
  v11 = *(v0 + 1512);
  *(v0 + 1560) = *(v0 + 1496);
  *(v0 + 1576) = v11;
  *(v0 + 1592) = *(v0 + 1528);
  *(v0 + 1602) = *(v0 + 1538);
  swift_beginAccess();
  v12 = *(v4 + 16);
  v13 = *(v4 + 48);
  *(v0 + 32) = *(v4 + 32);
  *(v0 + 48) = v13;
  *(v0 + 16) = v12;
  v14 = *(v4 + 64);
  v15 = *(v4 + 80);
  v16 = *(v4 + 112);
  *(v0 + 96) = *(v4 + 96);
  *(v0 + 112) = v16;
  *(v0 + 64) = v14;
  *(v0 + 80) = v15;
  v17 = *(v4 + 128);
  v18 = *(v4 + 144);
  v19 = *(v4 + 160);
  *(v0 + 176) = *(v4 + 176);
  *(v0 + 144) = v18;
  *(v0 + 160) = v19;
  *(v0 + 128) = v17;
  v20 = *(v4 + 16);
  v21 = *(v4 + 32);
  *(v0 + 216) = *(v4 + 48);
  *(v0 + 200) = v21;
  *(v0 + 184) = v20;
  v22 = *(v4 + 64);
  v23 = *(v4 + 80);
  v24 = *(v4 + 112);
  *(v0 + 264) = *(v4 + 96);
  *(v0 + 280) = v24;
  *(v0 + 248) = v23;
  *(v0 + 232) = v22;
  v25 = *(v4 + 128);
  v26 = *(v4 + 144);
  v27 = *(v4 + 160);
  *(v0 + 344) = *(v4 + 176);
  *(v0 + 312) = v26;
  *(v0 + 328) = v27;
  *(v0 + 296) = v25;
  v28 = *(v10 + 120);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v34 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 1760) = v30;
  *v30 = v0;
  v30[1] = closure #1 in MLS.Client.processIncoming(message:forGroup:context:);
  v31 = *(v0 + 1736);
  v32 = *(v0 + 1728);

  return v34(v0 + 856, v0 + 1560, v32, v31, v0 + 184, v9, v10);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 184;
  v5 = *(*v1 + 1760);
  v6 = *v1;
  *(*v1 + 1768) = v0;

  v7 = *(v2 + 1752);
  v8 = *v4;
  v9 = *(v4 + 32);
  if (v0)
  {
    *(v3 + 536) = *(v4 + 16);
    *(v3 + 552) = v9;
    *(v3 + 520) = v8;
    v10 = *(v4 + 48);
    v11 = *(v4 + 64);
    v12 = *(v4 + 96);
    *(v3 + 600) = *(v4 + 80);
    *(v3 + 616) = v12;
    *(v3 + 568) = v10;
    *(v3 + 584) = v11;
    v13 = *(v4 + 112);
    v14 = *(v4 + 128);
    v15 = *(v4 + 144);
    *(v3 + 680) = *(v4 + 160);
    *(v3 + 648) = v14;
    *(v3 + 664) = v15;
    *(v3 + 632) = v13;
    outlined destroy of NSObject?(v3 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v16 = closure #1 in MLS.Client.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v3 + 704) = *(v4 + 16);
    *(v3 + 720) = v9;
    *(v3 + 688) = v8;
    v17 = *(v4 + 48);
    v18 = *(v4 + 64);
    v19 = *(v4 + 96);
    *(v3 + 768) = *(v4 + 80);
    *(v3 + 784) = v19;
    *(v3 + 736) = v17;
    *(v3 + 752) = v18;
    v20 = *(v4 + 112);
    v21 = *(v4 + 128);
    v22 = *(v4 + 144);
    *(v3 + 848) = *(v4 + 160);
    *(v3 + 816) = v21;
    *(v3 + 832) = v22;
    *(v3 + 800) = v20;
    outlined destroy of NSObject?(v3 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v16 = closure #1 in MLS.Client.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v16, v7, 0);
}

{
  v38 = v0;
  v1 = (v0 + 856);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1704);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1704);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v37[0] = v8;
    *v7 = 136315138;
    swift_beginAccess();
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v37);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v4, v5, "processIncoming finished { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v12 = *(v0 + 1768);
  v13 = *(v0 + 1744);
  v14 = *(v0 + 1696);
  v15._countAndFlagsBits = 0x6E61487473726946;
  v15._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v15);
  v17 = *(v0 + 920);
  v16 = *(v0 + 936);
  v18 = *(v0 + 904);
  *(v0 + 1048) = v17;
  *(v0 + 1064) = v16;
  v19 = *(v0 + 936);
  v21 = *(v0 + 952);
  v20 = *(v0 + 968);
  *(v0 + 1080) = v21;
  *(v0 + 1096) = v20;
  v22 = *(v0 + 872);
  *(v0 + 984) = *v1;
  *(v0 + 1000) = v22;
  v23 = *(v0 + 904);
  v25 = *v1;
  v24 = *(v0 + 872);
  v26 = *(v0 + 888);
  *(v0 + 1016) = v26;
  *(v0 + 1032) = v23;
  v37[4] = v17;
  v37[5] = v19;
  v27 = *(v0 + 968);
  v37[6] = v21;
  v37[7] = v27;
  v37[0] = v25;
  v37[1] = v24;
  v37[2] = v26;
  v37[3] = v18;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 984, v0 + 1112, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  MLS.IncomingMessageProcessedContext.init(dataContext:)(v37, *(v13 + 88), *(v13 + 104), v14);
  v28 = *(v0 + 936);
  if (v12)
  {
    *(v0 + 1304) = *(v0 + 920);
    *(v0 + 1320) = v28;
    v29 = *(v0 + 968);
    *(v0 + 1336) = *(v0 + 952);
    *(v0 + 1352) = v29;
    v30 = *(v0 + 872);
    *(v0 + 1240) = *v1;
    *(v0 + 1256) = v30;
    v31 = *(v0 + 904);
    *(v0 + 1272) = *(v0 + 888);
    *(v0 + 1288) = v31;
    outlined destroy of NSObject?(v0 + 1240, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 1432) = *(v0 + 920);
    *(v0 + 1448) = v28;
    v33 = *(v0 + 968);
    *(v0 + 1464) = *(v0 + 952);
    *(v0 + 1480) = v33;
    v34 = *(v0 + 872);
    *(v0 + 1368) = *v1;
    *(v0 + 1384) = v34;
    v35 = *(v0 + 904);
    *(v0 + 1400) = *(v0 + 888);
    *(v0 + 1416) = v35;
    outlined destroy of NSObject?(v0 + 1368, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  }

  outlined destroy of NSObject?(v0 + 1496, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v32 = *(v0 + 8);

  return v32();
}

{
  outlined destroy of NSObject?(v0 + 1496, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v1 = *(v0 + 1768);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLS.Client.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[52] = a3;
  v4[53] = v3;
  v4[50] = a1;
  v4[51] = a2;
  v5 = *v3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[54] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v4[55] = swift_task_alloc();
  v4[56] = v5[10];
  v4[57] = v5[12];
  v8 = type metadata accessor for MLS.IncomingMessage();
  v4[58] = v8;
  v9 = *(v8 - 8);
  v4[59] = v9;
  v4[60] = *(v9 + 64);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[63] = v10;
  v11 = *(v10 - 8);
  v4[64] = v11;
  v12 = *(v11 + 64) + 15;
  v4[65] = swift_task_alloc();
  v4[66] = v5[11];
  v4[67] = v5[13];
  v4[68] = type metadata accessor for MLS.IncomingMessageContext();
  v13 = type metadata accessor for Optional();
  v4[69] = v13;
  v14 = *(v13 - 8);
  v4[70] = v14;
  v15 = *(v14 + 64) + 15;
  v4[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(message:context:), v3, 0);
}

uint64_t MLS.Client.processIncoming(message:context:)()
{
  v86 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 416);
  v6 = swift_allocObject();
  *(v0 + 576) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v8 = *(v0 + 520);
    v9 = *(v0 + 504);
    v10 = *(v0 + 512);
    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v10 + 8))(v8, v9);
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v6 + 16) = v11;
    *(v6 + 24) = v13;
    *(v6 + 32) = xmmword_2651B5F50;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0xFFFFFFFF0000;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0;
    *(v6 + 112) = xmmword_2651B5F50;
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0;
    *(v6 + 168) = 0xF000000000000000;
    *(v6 + 176) = v14;
  }

  else
  {
    MLS.IncomingMessageContext.dataContext.getter(*(v0 + 544), v84);
    (*(v7 + 8))(*(v0 + 568), *(v0 + 544));
    v15 = v84[9];
    *(v6 + 144) = v84[8];
    *(v6 + 160) = v15;
    *(v6 + 176) = v85;
    v16 = v84[5];
    *(v6 + 80) = v84[4];
    *(v6 + 96) = v16;
    v17 = v84[7];
    *(v6 + 112) = v84[6];
    *(v6 + 128) = v17;
    v18 = v84[1];
    *(v6 + 16) = v84[0];
    *(v6 + 32) = v18;
    v19 = v84[3];
    *(v6 + 48) = v84[2];
    *(v6 + 64) = v19;
  }

  v20 = *(v0 + 424);
  v21 = *(*(v0 + 472) + 16);
  v21(*(v0 + 496), *(v0 + 408), *(v0 + 464));

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 496);
  v80 = v21;
  if (v24)
  {
    v26 = *(v0 + 488);
    v28 = *(v0 + 464);
    v27 = *(v0 + 472);
    v74 = v23;
    v29 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v83 = v77;
    *v29 = 136315394;
    v21(v26, v25, v28);
    v30 = *(v27 + 8);
    v30(v25, v28);
    v31 = MLS.IncomingMessage.description.getter(v28);
    v33 = v32;
    v30(v26, v28);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v83);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    swift_beginAccess();
    v35 = *(v6 + 160);
    *(v0 + 144) = *(v6 + 144);
    *(v0 + 160) = v35;
    *(v0 + 176) = *(v6 + 176);
    v36 = *(v6 + 96);
    *(v0 + 80) = *(v6 + 80);
    *(v0 + 96) = v36;
    v37 = *(v6 + 128);
    *(v0 + 112) = *(v6 + 112);
    *(v0 + 128) = v37;
    v38 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v38;
    v39 = *(v6 + 64);
    *(v0 + 48) = *(v6 + 48);
    *(v0 + 64) = v39;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v40 = specialized MLS.IncomingMessageContext.description.getter();
    v42 = v41;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v83);

    *(v29 + 14) = v43;
    _os_log_impl(&dword_264F1F000, v22, v74, "processIncoming called deprecated version { message: %s, context: %s }", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v77, -1, -1);
    MEMORY[0x266755550](v29, -1, -1);
  }

  else
  {
    (*(*(v0 + 472) + 8))(v25, *(v0 + 464));
  }

  v72 = *(v0 + 488);
  v75 = *(v0 + 464);
  v44 = *(v0 + 440);
  v78 = *(v0 + 424);
  v69 = *(v0 + 432);
  v70 = *(v0 + 408);
  swift_beginAccess();
  Date.init()();
  v45 = type metadata accessor for MetricCollector.Event();
  v46 = *(v45 + 20);
  v47 = type metadata accessor for Date();
  v48 = *(*(v47 - 8) + 56);
  v48(v44 + v46, 1, 1, v47);
  v49 = *(*(v45 - 8) + 56);
  v49(v44, 0, 1, v45);
  specialized Dictionary.subscript.setter(v44, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v48(v44 + *(v45 + 20), 1, 1, v47);
  v49(v44, 0, 1, v45);
  specialized Dictionary.subscript.setter(v44, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v48(v44 + *(v45 + 20), 1, 1, v47);
  v49(v44, 0, 1, v45);
  specialized Dictionary.subscript.setter(v44, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v50 = type metadata accessor for TaskPriority();
  (*(*(v50 - 8) + 56))(v69, 1, 1, v50);
  v80(v72, v70, v75);
  v51 = one-time initialization token for shared;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 536);
  v53 = *(v0 + 528);
  v54 = *(v0 + 480);
  v55 = *(v0 + 472);
  v79 = *(v0 + 464);
  v81 = *(v0 + 488);
  v71 = *(v0 + 448);
  v73 = *(v0 + 456);
  v82 = *(v0 + 432);
  v76 = *(v0 + 424);
  v56 = static MLSActor.shared;
  v57 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v58 = (*(v55 + 80) + 72) & ~*(v55 + 80);
  v59 = (v54 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 2) = v56;
  *(v60 + 3) = v57;
  *(v60 + 4) = v71;
  *(v60 + 5) = v53;
  *(v60 + 6) = v73;
  *(v60 + 7) = v52;
  *(v60 + 8) = v6;
  (*(v55 + 32))(&v60[v58], v81, v79);
  *&v60[v59] = v76;
  v61 = type metadata accessor for MLS.IncomingMessageProcessedContext();

  v62 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v82, &async function pointer to partial apply for closure #1 in MLS.Client.processIncoming(message:context:), v60);
  *(v0 + 584) = v62;
  v63 = *(MEMORY[0x277D857C8] + 4);
  v64 = swift_task_alloc();
  *(v0 + 592) = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v64 = v0;
  v64[1] = MLS.Client.processIncoming(message:context:);
  v66 = *(v0 + 400);
  v67 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v66, v62, v61, v65, v67);
}

{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  *(*v1 + 600) = v0;

  v5 = *(v2 + 424);
  if (v0)
  {
    v6 = MLS.Client.processIncoming(message:context:);
  }

  else
  {
    v6 = MLS.Client.processIncoming(message:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[65];
  v6 = v0[61];
  v5 = v0[62];
  v8 = v0[54];
  v7 = v0[55];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[73];
  v2 = v0[72];

  v3 = v0[75];
  v4 = v0[71];
  v5 = v0[65];
  v7 = v0[61];
  v6 = v0[62];
  v9 = v0[54];
  v8 = v0[55];

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in MLS.Client.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[214] = a5;
  v6[215] = a6;
  v6[213] = a4;
  v6[212] = a1;
  v6[216] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v6[217] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.processIncoming(message:context:), v7, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(message:context:)()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1712);
  v4 = *(v0 + 1704);
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  v8 = type metadata accessor for MLS.IncomingMessage();
  MLS.IncomingMessage.allMemberIncomingMessage.getter(v8, v0 + 1496);
  v9 = v2[17];
  v10 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v9);
  v11 = *(v0 + 1512);
  *(v0 + 1560) = *(v0 + 1496);
  *(v0 + 1576) = v11;
  *(v0 + 1592) = *(v0 + 1528);
  *(v0 + 1602) = *(v0 + 1538);
  swift_beginAccess();
  v12 = *(v4 + 16);
  v13 = *(v4 + 48);
  *(v0 + 32) = *(v4 + 32);
  *(v0 + 48) = v13;
  *(v0 + 16) = v12;
  v14 = *(v4 + 64);
  v15 = *(v4 + 80);
  v16 = *(v4 + 112);
  *(v0 + 96) = *(v4 + 96);
  *(v0 + 112) = v16;
  *(v0 + 64) = v14;
  *(v0 + 80) = v15;
  v17 = *(v4 + 128);
  v18 = *(v4 + 144);
  v19 = *(v4 + 160);
  *(v0 + 176) = *(v4 + 176);
  *(v0 + 144) = v18;
  *(v0 + 160) = v19;
  *(v0 + 128) = v17;
  v20 = *(v4 + 16);
  v21 = *(v4 + 32);
  *(v0 + 216) = *(v4 + 48);
  *(v0 + 200) = v21;
  *(v0 + 184) = v20;
  v22 = *(v4 + 64);
  v23 = *(v4 + 80);
  v24 = *(v4 + 112);
  *(v0 + 264) = *(v4 + 96);
  *(v0 + 280) = v24;
  *(v0 + 248) = v23;
  *(v0 + 232) = v22;
  v25 = *(v4 + 128);
  v26 = *(v4 + 144);
  v27 = *(v4 + 160);
  *(v0 + 344) = *(v4 + 176);
  *(v0 + 312) = v26;
  *(v0 + 328) = v27;
  *(v0 + 296) = v25;
  v28 = *(v10 + 128);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v32 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 1744) = v30;
  *v30 = v0;
  v30[1] = closure #1 in MLS.Client.processIncoming(message:context:);

  return v32(v0 + 856, v0 + 1560, v0 + 184, v9, v10);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 184;
  v5 = *(*v1 + 1744);
  v6 = *v1;
  *(*v1 + 1752) = v0;

  v7 = *(v2 + 1736);
  v8 = *v4;
  v9 = *(v4 + 32);
  if (v0)
  {
    *(v3 + 536) = *(v4 + 16);
    *(v3 + 552) = v9;
    *(v3 + 520) = v8;
    v10 = *(v4 + 48);
    v11 = *(v4 + 64);
    v12 = *(v4 + 96);
    *(v3 + 600) = *(v4 + 80);
    *(v3 + 616) = v12;
    *(v3 + 568) = v10;
    *(v3 + 584) = v11;
    v13 = *(v4 + 112);
    v14 = *(v4 + 128);
    v15 = *(v4 + 144);
    *(v3 + 680) = *(v4 + 160);
    *(v3 + 648) = v14;
    *(v3 + 664) = v15;
    *(v3 + 632) = v13;
    outlined destroy of NSObject?(v3 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v16 = closure #1 in MLS.Client.processIncoming(message:context:);
  }

  else
  {
    *(v3 + 704) = *(v4 + 16);
    *(v3 + 720) = v9;
    *(v3 + 688) = v8;
    v17 = *(v4 + 48);
    v18 = *(v4 + 64);
    v19 = *(v4 + 96);
    *(v3 + 768) = *(v4 + 80);
    *(v3 + 784) = v19;
    *(v3 + 736) = v17;
    *(v3 + 752) = v18;
    v20 = *(v4 + 112);
    v21 = *(v4 + 128);
    v22 = *(v4 + 144);
    *(v3 + 848) = *(v4 + 160);
    *(v3 + 816) = v21;
    *(v3 + 832) = v22;
    *(v3 + 800) = v20;
    outlined destroy of NSObject?(v3 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v16 = closure #1 in MLS.Client.processIncoming(message:context:);
  }

  return MEMORY[0x2822009F8](v16, v7, 0);
}

{
  v38 = v0;
  v1 = (v0 + 856);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1704);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1704);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v37[0] = v8;
    *v7 = 136315138;
    swift_beginAccess();
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v37);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v4, v5, "processIncoming finished { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v12 = *(v0 + 1752);
  v13 = *(v0 + 1728);
  v14 = *(v0 + 1696);
  v15._countAndFlagsBits = 0x6E61487473726946;
  v15._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v15);
  v17 = *(v0 + 920);
  v16 = *(v0 + 936);
  v18 = *(v0 + 904);
  *(v0 + 1048) = v17;
  *(v0 + 1064) = v16;
  v19 = *(v0 + 936);
  v21 = *(v0 + 952);
  v20 = *(v0 + 968);
  *(v0 + 1080) = v21;
  *(v0 + 1096) = v20;
  v22 = *(v0 + 872);
  *(v0 + 984) = *v1;
  *(v0 + 1000) = v22;
  v23 = *(v0 + 904);
  v25 = *v1;
  v24 = *(v0 + 872);
  v26 = *(v0 + 888);
  *(v0 + 1016) = v26;
  *(v0 + 1032) = v23;
  v37[4] = v17;
  v37[5] = v19;
  v27 = *(v0 + 968);
  v37[6] = v21;
  v37[7] = v27;
  v37[0] = v25;
  v37[1] = v24;
  v37[2] = v26;
  v37[3] = v18;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 984, v0 + 1112, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  MLS.IncomingMessageProcessedContext.init(dataContext:)(v37, *(v13 + 88), *(v13 + 104), v14);
  v28 = *(v0 + 936);
  if (v12)
  {
    *(v0 + 1304) = *(v0 + 920);
    *(v0 + 1320) = v28;
    v29 = *(v0 + 968);
    *(v0 + 1336) = *(v0 + 952);
    *(v0 + 1352) = v29;
    v30 = *(v0 + 872);
    *(v0 + 1240) = *v1;
    *(v0 + 1256) = v30;
    v31 = *(v0 + 904);
    *(v0 + 1272) = *(v0 + 888);
    *(v0 + 1288) = v31;
    outlined destroy of NSObject?(v0 + 1240, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 1432) = *(v0 + 920);
    *(v0 + 1448) = v28;
    v33 = *(v0 + 968);
    *(v0 + 1464) = *(v0 + 952);
    *(v0 + 1480) = v33;
    v34 = *(v0 + 872);
    *(v0 + 1368) = *v1;
    *(v0 + 1384) = v34;
    v35 = *(v0 + 904);
    *(v0 + 1400) = *(v0 + 888);
    *(v0 + 1416) = v35;
    outlined destroy of NSObject?(v0 + 1368, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  }

  outlined destroy of NSObject?(v0 + 1496, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v32 = *(v0 + 8);

  return v32();
}

{
  outlined destroy of NSObject?(v0 + 1496, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v1 = *(v0 + 1752);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLS.Client.processIncoming(failureToDecrypt:context:)()
{
  return MEMORY[0x2822009F8](MLS.Client.processIncoming(failureToDecrypt:context:), v0, 0);
}

{
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v1 = 17;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = *v5;
  v6[25] = *(*v5 + 88);
  v8 = type metadata accessor for Optional();
  v6[26] = v8;
  v9 = *(v8 - 8);
  v6[27] = v9;
  v10 = *(v9 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = *(v7 + 104);
  v6[30] = type metadata accessor for MLS.IncomingFailureToDecryptContext_v2();
  v11 = type metadata accessor for Optional();
  v6[31] = v11;
  v12 = *(v11 - 8);
  v6[32] = v12;
  v13 = *(v12 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = type metadata accessor for MLS.IncomingFailureToDecryptContext();
  v14 = type metadata accessor for Optional();
  v6[39] = v14;
  v15 = *(v14 - 8);
  v6[40] = v15;
  v16 = *(v15 + 64) + 15;
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:), v5, 0);
}

uint64_t MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:)()
{
  v75 = v0;
  v1 = (v0 + 248);
  v2 = *(v0 + 296);
  v4 = (v0 + 240);
  v3 = *(v0 + 240);
  v70 = (*(v0 + 256) + 16);
  v71 = *v70;
  (*v70)(v2, *(v0 + 184), *(v0 + 248));
  v5 = *(v3 - 8);
  v6 = v3;
  v7 = *(v5 + 48);
  v8 = v7(v2, 1, v6);
  v9 = *(v0 + 296);
  if (v8 == 1)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 296), *(v0 + 248));
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v10 = *v4;
    v68 = v9[1];
    v69 = *v9;
    v11 = *(v5 + 8);

    v11(v9, v10);
  }

  v12 = *(v0 + 288);
  v13 = *(v0 + 240);
  v71(v12, *(v0 + 184), *(v0 + 248));
  v14 = v7(v12, 1, v13);
  v15 = *(v0 + 288);
  if (v14 == 1)
  {
    v16 = *(v0 + 224);
    v17 = *(v0 + 200);
    (*(*(v0 + 256) + 8))(v15, *(v0 + 248));
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  }

  else
  {
    v18 = *(v0 + 240);
    v19 = *(v0 + 288);
    (*(*(v0 + 216) + 16))(*(v0 + 224), v15 + *(v18 + 36), *(v0 + 208));
    (*(v5 + 8))(v19, v18);
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 240);
  v71(v20, *(v0 + 184), *(v0 + 248));
  v22 = v7(v20, 1, v21);
  v23 = *(v0 + 280);
  if (v22 == 1)
  {
    (*(*(v0 + 256) + 8))(v23, *(v0 + 248));
    v24 = 0;
  }

  else
  {
    v25 = *v4;
    v24 = *(v23 + *(*v4 + 48));
    v26 = *(v5 + 8);

    v26(v23, v25);
    v1 = (v0 + 248);
  }

  v27 = (v1 - 13);
  v28 = *(v0 + 272);
  v30 = *(v0 + 240);
  v29 = *(v0 + 248);
  v31 = *(v0 + 184);
  *(v0 + 144) = v24;
  v71(v28, v31, v29);
  if (v7(v28, 1, v30) == 1)
  {
    v32 = v5;
    v33 = 0;
    v34 = *(v0 + 256);
    v35 = 0xF000000000000000;
    v4 = v1;
  }

  else
  {
    v36 = (*(v0 + 272) + *(*(v0 + 240) + 40));
    v33 = *v36;
    v35 = v36[1];
    outlined copy of Data?(*v36, v35);
    v32 = v5;
    v34 = v5;
  }

  v37 = *v4;
  v38 = *(v0 + 264);
  v40 = *(v0 + 240);
  v39 = *(v0 + 248);
  v41 = *(v0 + 184);
  (*(v34 + 8))(*(v0 + 272), v37);
  v71(v38, v41, v39);
  v42 = v7(v38, 1, v40);
  v43 = *(v0 + 264);
  if (v42 == 1)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v44 = 0;
    v45 = 0;
    v46 = xmmword_2651B6160;
    v47 = 0uLL;
    v48 = 0uLL;
  }

  else
  {
    v49 = *(v0 + 240);
    v50 = (v43 + *(v49 + 44));
    v52 = v50[1];
    v51 = v50[2];
    v53 = *v50;
    *(v0 + 60) = *(v50 + 44);
    *(v0 + 32) = v52;
    *(v0 + 48) = v51;
    *(v0 + 16) = v53;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 80, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    (*(v32 + 8))(v43, v49);
    v47 = *(v0 + 16);
    v46 = *(v0 + 32);
    v48 = *(v0 + 48);
    v44 = *(v0 + 64);
    v45 = *(v0 + 72);
  }

  v54 = *(v0 + 328);
  v55 = *(v0 + 304);
  v56 = *(v0 + 224);
  v57 = *(v0 + 232);
  v58 = *(v0 + 200);
  v72[0] = v47;
  v72[1] = v46;
  v72[2] = v48;
  v73 = v44;
  v74 = v45;
  v59 = MLS.IncomingFailureToDecryptContext.init(identifier:clientContext:metricCollector:signedData:expectedSignedData:)(v69, v68, v56, v27, v33, v35, v72, v54);
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55, v59);
  v60 = swift_task_alloc();
  *(v0 + 336) = v60;
  *v60 = v0;
  v60[1] = MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:);
  v61 = *(v0 + 328);
  v62 = *(v0 + 192);
  v63 = *(v0 + 168);
  v64 = *(v0 + 176);
  v65 = *(v0 + 152);
  v66 = *(v0 + 160);

  return MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(v65, v66, v63, v64, v61);
}

{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 328);
  v4 = *(*v1 + 320);
  v5 = *(*v1 + 312);
  v6 = *v1;
  v6[43] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[24];

    return MEMORY[0x2822009F8](MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:), v7, 0);
  }

  else
  {
    v8 = v6[41];
    v10 = v6[36];
    v9 = v6[37];
    v12 = v6[34];
    v11 = v6[35];
    v13 = v6[33];
    v14 = v6[28];

    v15 = v6[1];

    return v15();
  }
}

{
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = v0[28];

  v8 = v0[1];
  v9 = v0[43];

  return v8();
}

uint64_t MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[54] = a5;
  v6[55] = v5;
  v6[52] = a3;
  v6[53] = a4;
  v6[50] = a1;
  v6[51] = a2;
  v7 = *v5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[56] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v6[57] = swift_task_alloc();
  v6[58] = v7[10];
  v6[59] = v7[12];
  v10 = type metadata accessor for MLS.IncomingFailureToDecrypt();
  v6[60] = v10;
  v11 = *(v10 - 8);
  v6[61] = v11;
  v6[62] = *(v11 + 64);
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v6[65] = v12;
  v13 = *(v12 - 8);
  v6[66] = v13;
  v14 = *(v13 + 64) + 15;
  v6[67] = swift_task_alloc();
  v6[68] = v7[11];
  v6[69] = v7[13];
  v6[70] = type metadata accessor for MLS.IncomingFailureToDecryptContext();
  v15 = type metadata accessor for Optional();
  v6[71] = v15;
  v16 = *(v15 - 8);
  v6[72] = v16;
  v17 = *(v16 + 64) + 15;
  v6[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(failureToDecrypt:withGroup:context:), v5, 0);
}

uint64_t MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v90 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 432);
  v6 = swift_allocObject();
  *(v0 + 592) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v6 + 16) = v11;
    *(v6 + 24) = v13;
    *(v6 + 32) = xmmword_2651B5F50;
    *(v6 + 48) = xmmword_2651B5F50;
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0xFFFFFFFF0000;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0;
    *(v6 + 128) = v14;
    *(v6 + 136) = xmmword_2651B5F50;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
  }

  else
  {
    MLS.IncomingFailureToDecryptContext.dataContext.getter(*(v0 + 560), v88);
    (*(v7 + 8))(*(v0 + 584), *(v0 + 560));
    v15 = v88[9];
    *(v6 + 144) = v88[8];
    *(v6 + 160) = v15;
    *(v6 + 176) = v89;
    v16 = v88[5];
    *(v6 + 80) = v88[4];
    *(v6 + 96) = v16;
    v17 = v88[7];
    *(v6 + 112) = v88[6];
    *(v6 + 128) = v17;
    v18 = v88[1];
    *(v6 + 16) = v88[0];
    *(v6 + 32) = v18;
    v19 = v88[3];
    *(v6 + 48) = v88[2];
    *(v6 + 64) = v19;
  }

  v20 = *(v0 + 440);
  v21 = *(*(v0 + 488) + 16);
  v21(*(v0 + 512), *(v0 + 408), *(v0 + 480));

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 512);
  v84 = v21;
  if (v24)
  {
    v26 = *(v0 + 504);
    v28 = *(v0 + 480);
    v27 = *(v0 + 488);
    v78 = v23;
    v29 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v87 = v81;
    *v29 = 136315394;
    v21(v26, v25, v28);
    v30 = *(v27 + 8);
    v30(v25, v28);
    v31 = MLS.IncomingFailureToDecrypt.description.getter(v28);
    v33 = v32;
    v30(v26, v28);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v87);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    swift_beginAccess();
    v35 = *(v6 + 160);
    *(v0 + 144) = *(v6 + 144);
    *(v0 + 160) = v35;
    *(v0 + 176) = *(v6 + 176);
    v36 = *(v6 + 96);
    *(v0 + 80) = *(v6 + 80);
    *(v0 + 96) = v36;
    v37 = *(v6 + 128);
    *(v0 + 112) = *(v6 + 112);
    *(v0 + 128) = v37;
    v38 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v38;
    v39 = *(v6 + 64);
    *(v0 + 48) = *(v6 + 48);
    *(v0 + 64) = v39;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 184, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v40 = specialized MLS.IncomingFailureToDecryptContext.description.getter();
    v42 = v41;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v87);

    *(v29 + 14) = v43;
    _os_log_impl(&dword_264F1F000, v22, v78, "processIncomingFTD called { ftd: %s, context: %s }", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v81, -1, -1);
    MEMORY[0x266755550](v29, -1, -1);
  }

  else
  {
    (*(*(v0 + 488) + 8))(v25, *(v0 + 480));
  }

  v74 = *(v0 + 504);
  v76 = *(v0 + 480);
  v44 = *(v0 + 456);
  v79 = *(v0 + 440);
  v82 = *(v0 + 424);
  v70 = *(v0 + 448);
  v72 = *(v0 + 408);
  swift_beginAccess();
  Date.init()();
  v45 = type metadata accessor for MetricCollector.Event();
  v46 = *(v45 + 20);
  v47 = type metadata accessor for Date();
  v48 = *(*(v47 - 8) + 56);
  v48(v44 + v46, 1, 1, v47);
  v49 = *(*(v45 - 8) + 56);
  v49(v44, 0, 1, v45);
  specialized Dictionary.subscript.setter(v44, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v48(v44 + *(v45 + 20), 1, 1, v47);
  v49(v44, 0, 1, v45);
  specialized Dictionary.subscript.setter(v44, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v48(v44 + *(v45 + 20), 1, 1, v47);
  v49(v44, 0, 1, v45);
  specialized Dictionary.subscript.setter(v44, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v50 = type metadata accessor for TaskPriority();
  (*(*(v50 - 8) + 56))(v70, 1, 1, v50);
  v84(v74, v72, v76);
  v51 = one-time initialization token for shared;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 544);
  v53 = *(v0 + 496);
  v54 = *(v0 + 488);
  v71 = *(v0 + 472);
  v73 = *(v0 + 552);
  v69 = *(v0 + 464);
  v85 = *(v0 + 504);
  v86 = *(v0 + 448);
  v77 = *(v0 + 440);
  v80 = *(v0 + 480);
  v83 = *(v0 + 424);
  v75 = *(v0 + 416);
  v55 = static MLSActor.shared;
  v56 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v57 = (*(v54 + 80) + 72) & ~*(v54 + 80);
  v58 = (v53 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 2) = v55;
  *(v59 + 3) = v56;
  *(v59 + 4) = v69;
  *(v59 + 5) = v52;
  *(v59 + 6) = v71;
  *(v59 + 7) = v73;
  *(v59 + 8) = v6;
  (*(v54 + 32))(&v59[v57], v85, v80);
  *&v59[v58] = v77;
  v60 = &v59[(v58 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v60 = v75;
  *(v60 + 1) = v83;
  v61 = type metadata accessor for MLS.IncomingFailureToDecryptProcessedContext();

  v62 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v86, &async function pointer to partial apply for closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:), v59);
  *(v0 + 600) = v62;
  v63 = *(MEMORY[0x277D857C8] + 4);
  v64 = swift_task_alloc();
  *(v0 + 608) = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v64 = v0;
  v64[1] = MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  v66 = *(v0 + 400);
  v67 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v66, v62, v61, v65, v67);
}

{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  v5 = *(v2 + 440);
  if (v0)
  {
    v6 = MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v6 = MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[67];
  v6 = v0[63];
  v5 = v0[64];
  v8 = v0[56];
  v7 = v0[57];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[75];
  v2 = v0[74];

  v3 = v0[77];
  v4 = v0[73];
  v5 = v0[67];
  v7 = v0[63];
  v6 = v0[64];
  v9 = v0[56];
  v8 = v0[57];

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[217] = a8;
  v8[216] = a7;
  v8[215] = a6;
  v8[214] = a5;
  v8[213] = a4;
  v8[212] = a1;
  v8[218] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[219] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1712);
  v4 = *(v0 + 1704);
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  v8 = type metadata accessor for MLS.IncomingFailureToDecrypt();
  MLS.IncomingFailureToDecrypt.allMemberIncomingFailureToDecrypt.getter(v8, v0 + 1496);
  v9 = v2[17];
  v10 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v9);
  v11 = *(v0 + 1512);
  *(v0 + 1560) = *(v0 + 1496);
  *(v0 + 1576) = v11;
  *(v0 + 1592) = *(v0 + 1528);
  *(v0 + 1601) = *(v0 + 1537);
  swift_beginAccess();
  v12 = *(v4 + 16);
  v13 = *(v4 + 48);
  *(v0 + 32) = *(v4 + 32);
  *(v0 + 48) = v13;
  *(v0 + 16) = v12;
  v14 = *(v4 + 64);
  v15 = *(v4 + 80);
  v16 = *(v4 + 112);
  *(v0 + 96) = *(v4 + 96);
  *(v0 + 112) = v16;
  *(v0 + 64) = v14;
  *(v0 + 80) = v15;
  v17 = *(v4 + 128);
  v18 = *(v4 + 144);
  v19 = *(v4 + 160);
  *(v0 + 176) = *(v4 + 176);
  *(v0 + 144) = v18;
  *(v0 + 160) = v19;
  *(v0 + 128) = v17;
  v20 = *(v4 + 16);
  v21 = *(v4 + 32);
  *(v0 + 216) = *(v4 + 48);
  *(v0 + 200) = v21;
  *(v0 + 184) = v20;
  v22 = *(v4 + 64);
  v23 = *(v4 + 80);
  v24 = *(v4 + 112);
  *(v0 + 264) = *(v4 + 96);
  *(v0 + 280) = v24;
  *(v0 + 248) = v23;
  *(v0 + 232) = v22;
  v25 = *(v4 + 128);
  v26 = *(v4 + 144);
  v27 = *(v4 + 160);
  *(v0 + 344) = *(v4 + 176);
  *(v0 + 312) = v26;
  *(v0 + 328) = v27;
  *(v0 + 296) = v25;
  v28 = *(v10 + 136);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v34 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 1760) = v30;
  *v30 = v0;
  v30[1] = closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  v31 = *(v0 + 1736);
  v32 = *(v0 + 1728);

  return v34(v0 + 856, v0 + 1560, v32, v31, v0 + 184, v9, v10);
}

{
  v2 = *v1;
  v3 = *v1 + 184;
  v4 = *(*v1 + 1760);
  v24 = *v1;
  *(*v1 + 1768) = v0;

  if (v0)
  {
    v5 = *(v2 + 1752);
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    *(v2 + 520) = *v3;
    *(v2 + 536) = v7;
    *(v2 + 552) = v6;
    v8 = *(v3 + 96);
    v10 = *(v3 + 48);
    v9 = *(v3 + 64);
    *(v2 + 600) = *(v3 + 80);
    *(v2 + 616) = v8;
    *(v2 + 568) = v10;
    *(v2 + 584) = v9;
    v12 = *(v3 + 128);
    v11 = *(v3 + 144);
    v13 = *(v3 + 112);
    *(v2 + 680) = *(v3 + 160);
    *(v2 + 648) = v12;
    *(v2 + 664) = v11;
    *(v2 + 632) = v13;
    outlined destroy of NSObject?(v2 + 520, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v14 = closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v5 = *(v2 + 1752);
    v16 = *(v3 + 16);
    v15 = *(v3 + 32);
    *(v2 + 688) = *v3;
    *(v2 + 704) = v16;
    *(v2 + 720) = v15;
    v17 = *(v3 + 96);
    v19 = *(v3 + 48);
    v18 = *(v3 + 64);
    *(v2 + 768) = *(v3 + 80);
    *(v2 + 784) = v17;
    *(v2 + 736) = v19;
    *(v2 + 752) = v18;
    v21 = *(v3 + 128);
    v20 = *(v3 + 144);
    v22 = *(v3 + 112);
    *(v2 + 848) = *(v3 + 160);
    *(v2 + 816) = v21;
    *(v2 + 832) = v20;
    *(v2 + 800) = v22;
    outlined destroy of NSObject?(v2 + 688, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v2 + 1496, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
    v14 = closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v14, v5, 0);
}

{
  v38 = v0;
  v1 = (v0 + 856);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1704);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1704);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v37[0] = v8;
    *v7 = 136315138;
    swift_beginAccess();
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v37);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v4, v5, "processIncomingFTD finished { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v12 = *(v0 + 1768);
  v13 = *(v0 + 1744);
  v14 = *(v0 + 1696);
  v15._countAndFlagsBits = 0x6E61487473726946;
  v15._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v15);
  v17 = *(v0 + 920);
  v16 = *(v0 + 936);
  v18 = *(v0 + 904);
  *(v0 + 1048) = v17;
  *(v0 + 1064) = v16;
  v19 = *(v0 + 936);
  v21 = *(v0 + 952);
  v20 = *(v0 + 968);
  *(v0 + 1080) = v21;
  *(v0 + 1096) = v20;
  v22 = *(v0 + 872);
  *(v0 + 984) = *v1;
  *(v0 + 1000) = v22;
  v23 = *(v0 + 904);
  v25 = *v1;
  v24 = *(v0 + 872);
  v26 = *(v0 + 888);
  *(v0 + 1016) = v26;
  *(v0 + 1032) = v23;
  v37[4] = v17;
  v37[5] = v19;
  v27 = *(v0 + 968);
  v37[6] = v21;
  v37[7] = v27;
  v37[0] = v25;
  v37[1] = v24;
  v37[2] = v26;
  v37[3] = v18;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 984, v0 + 1112, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  MLS.IncomingFailureToDecryptProcessedContext.init(dataContext:)(v37, *(v13 + 88), *(v13 + 104), v14);
  v28 = *(v0 + 936);
  if (v12)
  {
    *(v0 + 1304) = *(v0 + 920);
    *(v0 + 1320) = v28;
    v29 = *(v0 + 968);
    *(v0 + 1336) = *(v0 + 952);
    *(v0 + 1352) = v29;
    v30 = *(v0 + 872);
    *(v0 + 1240) = *v1;
    *(v0 + 1256) = v30;
    v31 = *(v0 + 904);
    *(v0 + 1272) = *(v0 + 888);
    *(v0 + 1288) = v31;
    outlined destroy of NSObject?(v0 + 1240, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 1432) = *(v0 + 920);
    *(v0 + 1448) = v28;
    v33 = *(v0 + 968);
    *(v0 + 1464) = *(v0 + 952);
    *(v0 + 1480) = v33;
    v34 = *(v0 + 872);
    *(v0 + 1368) = *v1;
    *(v0 + 1384) = v34;
    v35 = *(v0 + 904);
    *(v0 + 1400) = *(v0 + 888);
    *(v0 + 1416) = v35;
    outlined destroy of NSObject?(v0 + 1368, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  }

  v32 = *(v0 + 8);

  return v32();
}

{
  outlined destroy of NSObject?(v0 + 1496, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  v1 = *(v0 + 1768);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLS.Client.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 200) = a4;
  *(v6 + 208) = v5;
  *(v6 + 184) = a1;
  *(v6 + 192) = a3;
  *(v6 + 216) = *v5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v6 + 240) = v11;
  v12 = *(v11 - 8);
  *(v6 + 248) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  v14 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v14;
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 264) = *a5;
  *(v6 + 280) = *(a5 + 16);

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(errorMessage:withGroup:context:), v5, 0);
}

uint64_t MLS.Client.processIncoming(errorMessage:withGroup:context:)()
{
  v69 = v0;
  v1 = *(v0 + 272);
  v2 = swift_allocObject();
  *(v0 + 288) = v2;
  if (v1)
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 216);
    v68[0] = *(v0 + 264);
    v68[1] = v1;
    v68[2] = v3;
    v5 = *(v4 + 88);
    v6 = *(v4 + 104);
    type metadata accessor for MLS.IncomingErrorMessageContext();
    MLS.IncomingErrorMessageContext.dataContext.getter(&v65);
    v12 = *(&v65 + 1);
    v11 = v65;
    v13 = v66;
  }

  else
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 240);
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v12 = v10;
    (*(v8 + 8))(v7, v9);
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  v2[2] = v11;
  v2[3] = v12;
  v2[4] = v13;
  v16 = *(v14 + 80);
  v17 = *(v14 + 96);
  v18 = type metadata accessor for MLS.IncomingErrorMessage();
  v19 = *(v18 - 8);
  v63 = *(v19 + 16);
  v63(v0 + 56, v0 + 16, v18);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v64 = v18;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v68[0] = v23;
    *v22 = 136315394;
    v24 = *(v0 + 32);
    v65 = *(v0 + 16);
    v66 = v24;
    v67 = *(v0 + 48);
    v25 = MLS.IncomingErrorMessage.description.getter();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v68);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    swift_beginAccess();
    v29 = v2[2];
    v30 = v2[3];
    v31 = v2[4];

    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&v65 = 0xD000000000000028;
    *(&v65 + 1) = 0x80000002651E8A20;
    MEMORY[0x2667545A0](v29, v30);

    MEMORY[0x2667545A0](41, 0xE100000000000000);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, *(&v65 + 1), v68);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_264F1F000, v20, v21, "processIncoming errorMessage called { message: %s, context: %s }", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v23, -1, -1);
    MEMORY[0x266755550](v22, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v0 + 16, v18);
  }

  v33 = *(v0 + 232);
  v60 = *(v0 + 224);
  v61 = *(v0 + 208);
  v62 = *(v0 + 200);
  swift_beginAccess();
  Date.init()();
  v34 = type metadata accessor for MetricCollector.Event();
  v35 = *(v34 + 20);
  v36 = type metadata accessor for Date();
  v37 = *(*(v36 - 8) + 56);
  v37(v33 + v35, 1, 1, v36);
  v38 = *(*(v34 - 8) + 56);
  v38(v33, 0, 1, v34);
  specialized Dictionary.subscript.setter(v33, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v37(v33 + *(v34 + 20), 1, 1, v36);
  v38(v33, 0, 1, v34);
  specialized Dictionary.subscript.setter(v33, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v37(v33 + *(v34 + 20), 1, 1, v36);
  v38(v33, 0, 1, v34);
  specialized Dictionary.subscript.setter(v33, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v60, 1, 1, v39);
  v63(v0 + 96, v0 + 16, v64);
  v40 = one-time initialization token for shared;

  if (v40 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 216);
  v41 = *(v0 + 224);
  v44 = *(v0 + 200);
  v43 = *(v0 + 208);
  v45 = *(v0 + 192);
  v46 = static MLSActor.shared;
  v47 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v48 = swift_allocObject();
  v49 = *(v0 + 32);
  *(v48 + 40) = *(v0 + 16);
  *(v48 + 16) = v46;
  *(v48 + 24) = v47;
  *(v48 + 32) = v2;
  *(v48 + 56) = v49;
  *(v48 + 72) = *(v0 + 48);
  *(v48 + 80) = v43;
  *(v48 + 88) = v45;
  *(v48 + 96) = v44;
  v50 = *(v42 + 88);
  v51 = *(v42 + 104);
  v52 = type metadata accessor for MLS.IncomingErrorMessageProcessedContext();

  v53 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v41, &async function pointer to partial apply for closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:), v48);
  *(v0 + 296) = v53;
  v54 = *(MEMORY[0x277D857C8] + 4);
  v55 = swift_task_alloc();
  *(v0 + 304) = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v55 = v0;
  v55[1] = MLS.Client.processIncoming(errorMessage:withGroup:context:);
  v57 = *(v0 + 184);
  v58 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v57, v53, v52, v56, v58);
}

{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = MLS.Client.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    v6 = MLS.Client.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];

  v6 = v0[1];

  return v6();
}

{
  v2 = v0[36];
  v1 = v0[37];

  v3 = v0[39];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];

  v7 = v0[1];

  return v7();
}

uint64_t closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a1;
  v8[23] = a4;
  v8[28] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[29] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:)()
{
  v33 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  v25 = *v2;
  v26 = v2[1];
  v27 = *(v2 + 32);
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  type metadata accessor for MLS.IncomingErrorMessage();
  MLS.IncomingErrorMessage.allMemberIncomingErrorMessage.getter(&v28);
  v8 = v28;
  v9 = v29;
  v10 = v30;
  v11 = v31;
  *(v0 + 240) = v29;
  *(v0 + 248) = v11;
  v12 = v32;
  v13 = v3[17];
  v14 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v13);
  *(v0 + 16) = v8;
  *(v0 + 24) = v9;
  *(v0 + 32) = v10;
  *(v0 + 40) = v11;
  *(v0 + 48) = v12;
  swift_beginAccess();
  v16 = v4[2];
  v15 = v4[3];
  v17 = v4[4];
  *(v0 + 128) = v16;
  *(v0 + 136) = v15;
  *(v0 + 144) = v17;
  v18 = *(v14 + 144);

  v24 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v0 + 256) = v20;
  *v20 = v0;
  v20[1] = closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:);
  v21 = *(v0 + 208);
  v22 = *(v0 + 216);

  return v24(v0 + 80, v0 + 16, v21, v22, v0 + 128, v13, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v15 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[29];
    v5 = v2[17];
    v6 = v2[18];

    v7 = closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:);
    v8 = v4;
  }

  else
  {
    v10 = v2[30];
    v9 = v2[31];
    v11 = v2[29];
    v12 = v2[17];
    v13 = v2[18];

    v7 = closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:);
    v8 = v11;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v23 = v0;
  v1 = v0[25];
  v2 = v0[23];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "processIncoming errorMessage finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = v0[33];
  v12 = v0[28];
  v13 = v0[22];
  v14._countAndFlagsBits = 0x6E61487473726946;
  v14._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v14);
  v15 = v0[11];
  v16 = v0[12];
  v22[0] = v0[10];
  v22[1] = v15;
  v22[2] = v16;
  outlined copy of Data?(v22[0], v15);
  v17 = *(v12 + 88);
  v18 = *(v12 + 104);

  MLS.IncomingErrorMessageProcessedContext.init(dataContext:)(v22, v17, v13);
  v19 = v0[12];
  outlined consume of Data?(v0[10], v0[11]);

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[30];
  v2 = v0[31];

  v3 = v0[33];
  v4 = v0[1];

  return v4();
}

uint64_t MLS.Client.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = *v6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v7[27] = v11;
  v12 = *(v11 - 8);
  v7[28] = v12;
  v13 = *(v12 + 64) + 15;
  v7[29] = swift_task_alloc();
  v7[30] = *(v8 + 88);
  v7[31] = *(v8 + 104);
  v7[32] = type metadata accessor for MLS.IncomingGroupNameContext();
  v14 = type metadata accessor for Optional();
  v7[33] = v14;
  v15 = *(v14 - 8);
  v7[34] = v15;
  v16 = *(v15 + 64) + 15;
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(groupName:forGroup:context:), v6, 0);
}

uint64_t MLS.Client.processIncoming(groupName:forGroup:context:)()
{
  v69 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 184);
  v6 = swift_allocObject();
  *(v0 + 288) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v64 = xmmword_2651B5F50;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    MLS.IncomingGroupNameContext.dataContext.getter(*(v0 + 256), v66);
    v11 = v66[0];
    v13 = v66[1];
    v64 = v67;
    v14 = v68;
    (*(v7 + 8))(*(v0 + 280), *(v0 + 256));
  }

  v15 = *(v0 + 192);
  v17 = *(v0 + 152);
  v16 = *(v0 + 160);
  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v64;
  *(v6 + 48) = v14;
  outlined copy of Data._Representation(v17, v16);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v17, v16);

  if (os_log_type_enabled(v18, v19))
  {
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v66[0] = v23;
    *v22 = 136315394;
    v24 = Data.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v66);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    swift_beginAccess();
    v27 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v27;
    *(v0 + 48) = *(v6 + 48);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v28 = specialized MLS.IncomingGroupNameContext.description.getter();
    v30 = v29;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v66);

    *(v22 + 14) = v31;
    _os_log_impl(&dword_264F1F000, v18, v19, "processIncoming groupName called { groupName: %s, context: %s }", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v23, -1, -1);
    MEMORY[0x266755550](v22, -1, -1);
  }

  v32 = *(v0 + 208);
  v60 = *(v0 + 192);
  v62 = *(v0 + 176);
  v59 = *(v0 + 160);
  v57 = *(v0 + 200);
  v58 = *(v0 + 152);
  swift_beginAccess();
  Date.init()();
  v33 = type metadata accessor for MetricCollector.Event();
  v34 = *(v33 + 20);
  v35 = type metadata accessor for Date();
  v36 = *(*(v35 - 8) + 56);
  v36(v32 + v34, 1, 1, v35);
  v37 = *(*(v33 - 8) + 56);
  v37(v32, 0, 1, v33);
  specialized Dictionary.subscript.setter(v32, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v36(v32 + *(v33 + 20), 1, 1, v35);
  v37(v32, 0, 1, v33);
  specialized Dictionary.subscript.setter(v32, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v36(v32 + *(v33 + 20), 1, 1, v35);
  v37(v32, 0, 1, v33);
  specialized Dictionary.subscript.setter(v32, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
  outlined copy of Data._Representation(v58, v59);
  v39 = one-time initialization token for shared;

  v63 = v6;
  if (v39 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 240);
  v61 = *(v0 + 248);
  v41 = *(v0 + 192);
  v65 = *(v0 + 200);
  v42 = *(v0 + 168);
  v43 = *(v0 + 176);
  v44 = *(v0 + 152);
  v45 = *(v0 + 160);
  v46 = static MLSActor.shared;
  v47 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v48 = swift_allocObject();
  v48[2] = v46;
  v48[3] = v47;
  v48[4] = v63;
  v48[5] = v41;
  v48[6] = v44;
  v48[7] = v45;
  v48[8] = v42;
  v48[9] = v43;
  v49 = type metadata accessor for MLS.IncomingGroupNameProcessedContext();

  v50 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v65, &async function pointer to partial apply for closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:), v48);
  *(v0 + 296) = v50;
  v51 = *(MEMORY[0x277D857C8] + 4);
  v52 = swift_task_alloc();
  *(v0 + 304) = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v52 = v0;
  v52[1] = MLS.Client.processIncoming(groupName:forGroup:context:);
  v54 = *(v0 + 144);
  v55 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v54, v50, v49, v53, v55);
}

{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = MLS.Client.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v6 = MLS.Client.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[29];
  v6 = v0[25];
  v5 = v0[26];

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[36];
  v1 = v0[37];

  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[102] = v12;
  v8[101] = a8;
  v8[100] = a7;
  v8[99] = a6;
  v8[98] = a5;
  v8[97] = a4;
  v8[96] = a1;
  v8[103] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[104] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:)()
{
  v1 = v0[98];
  v2 = v0[97];
  swift_beginAccess();
  v3._countAndFlagsBits = 0x6341746E65696C43;
  v3._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  swift_beginAccess();
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v0[82] = v7;
  v0[83] = v6;
  v0[84] = v8;
  v0[85] = v9;
  v0[86] = v10;
  v11 = *(v5 + 152);

  outlined copy of Data?(v8, v9);

  v19 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[105] = v13;
  *v13 = v0;
  v13[1] = closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:);
  v14 = v0[102];
  v15 = v0[101];
  v16 = v0[100];
  v17 = v0[99];

  return (v19)(v0 + 2, v17, v16, v15, v14, v0 + 82, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v15 = *v1;
  *(*v1 + 848) = v0;

  if (v0)
  {
    v4 = v2[104];
    v5 = v2[83];
    v6 = v2[84];
    v7 = v2[85];
    v8 = v2[86];

    outlined consume of Data?(v6, v7);

    v9 = closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v4 = v2[104];
    v10 = v2[83];
    v11 = v2[84];
    v12 = v2[85];
    v13 = v2[86];

    outlined consume of Data?(v11, v12);

    v9 = closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, v4, 0);
}

{
  v37 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 776);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v36[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v36);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "processIncoming groupName finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = *(v0 + 848);
  v12 = *(v0 + 824);
  v13 = *(v0 + 768);
  v14._countAndFlagsBits = 0x6E61487473726946;
  v14._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v14);
  v16 = *(v0 + 80);
  v15 = *(v0 + 96);
  v17 = *(v0 + 64);
  *(v0 + 208) = v16;
  *(v0 + 224) = v15;
  v18 = *(v0 + 96);
  v20 = *(v0 + 112);
  v19 = *(v0 + 128);
  *(v0 + 240) = v20;
  *(v0 + 256) = v19;
  v21 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v21;
  v22 = *(v0 + 64);
  v24 = *(v0 + 16);
  v23 = *(v0 + 32);
  v25 = *(v0 + 48);
  *(v0 + 176) = v25;
  *(v0 + 192) = v22;
  v36[4] = v16;
  v36[5] = v18;
  v26 = *(v0 + 128);
  v36[6] = v20;
  v36[7] = v26;
  v36[0] = v24;
  v36[1] = v23;
  v36[2] = v25;
  v36[3] = v17;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 272, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  MLS.IncomingGroupNameProcessedContext.init(dataContext:)(v36, *(v12 + 88), *(v12 + 104), v13);
  v27 = *(v0 + 96);
  if (v11)
  {
    *(v0 + 464) = *(v0 + 80);
    *(v0 + 480) = v27;
    v28 = *(v0 + 128);
    *(v0 + 496) = *(v0 + 112);
    *(v0 + 512) = v28;
    v29 = *(v0 + 32);
    *(v0 + 400) = *(v0 + 16);
    *(v0 + 416) = v29;
    v30 = *(v0 + 64);
    *(v0 + 432) = *(v0 + 48);
    *(v0 + 448) = v30;
    outlined destroy of NSObject?(v0 + 400, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 592) = *(v0 + 80);
    *(v0 + 608) = v27;
    v32 = *(v0 + 128);
    *(v0 + 624) = *(v0 + 112);
    *(v0 + 640) = v32;
    v33 = *(v0 + 32);
    *(v0 + 528) = *(v0 + 16);
    *(v0 + 544) = v33;
    v34 = *(v0 + 64);
    *(v0 + 560) = *(v0 + 48);
    *(v0 + 576) = v34;
    outlined destroy of NSObject?(v0 + 528, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  }

  v31 = *(v0 + 8);

  return v31();
}

{
  v1 = *(v0 + 848);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = *v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[25] = v9;
  v10 = *(v9 - 8);
  v5[26] = v10;
  v11 = *(v10 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = *(v6 + 88);
  v5[29] = *(v6 + 104);
  v5[30] = type metadata accessor for MLS.DowngradeContext();
  v12 = type metadata accessor for Optional();
  v5[31] = v12;
  v13 = *(v12 - 8);
  v5[32] = v13;
  v14 = *(v13 + 64) + 15;
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.downgrade(group:context:), v4, 0);
}

uint64_t MLS.Client.downgrade(group:context:)()
{
  v61 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 168);
  v6 = swift_allocObject();
  *(v0 + 272) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 200);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v56 = xmmword_2651B5F50;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    MLS.DowngradeContext.dataContext.getter(*(v0 + 240), v58);
    v11 = v58[0];
    v13 = v58[1];
    v56 = v59;
    v14 = v60;
    (*(v7 + 8))(*(v0 + 264), *(v0 + 240));
  }

  v15 = *(v0 + 176);
  v16 = *(v0 + 160);
  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v56;
  *(v6 + 48) = v14;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v58[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v58);
    *(v21 + 12) = 2080;
    swift_beginAccess();
    v23 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v23;
    *(v0 + 48) = *(v6 + 48);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMR);
    v24 = specialized MLS.DowngradeContext.description.getter();
    v26 = v25;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMR);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v58);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_264F1F000, v17, v18, "downgrade called { group: %s, context: %s }", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v22, -1, -1);
    MEMORY[0x266755550](v21, -1, -1);
  }

  v28 = *(v0 + 192);
  v55 = *(v0 + 176);
  v53 = *(v0 + 184);
  v54 = *(v0 + 160);
  swift_beginAccess();
  Date.init()();
  v29 = type metadata accessor for MetricCollector.Event();
  v30 = *(v29 + 20);
  v31 = type metadata accessor for Date();
  v32 = *(*(v31 - 8) + 56);
  v32(v28 + v30, 1, 1, v31);
  v33 = *(*(v29 - 8) + 56);
  v33(v28, 0, 1, v29);
  specialized Dictionary.subscript.setter(v28, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v32(v28 + *(v29 + 20), 1, 1, v31);
  v33(v28, 0, 1, v29);
  specialized Dictionary.subscript.setter(v28, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v32(v28 + *(v29 + 20), 1, 1, v31);
  v33(v28, 0, 1, v29);
  specialized Dictionary.subscript.setter(v28, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
  v35 = one-time initialization token for shared;

  v36 = v6;
  if (v35 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 224);
  v37 = *(v0 + 232);
  v39 = *(v0 + 176);
  v57 = *(v0 + 184);
  v40 = *(v0 + 152);
  v41 = *(v0 + 160);
  v42 = static MLSActor.shared;
  v43 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v44 = swift_allocObject();
  v44[2] = v42;
  v44[3] = v43;
  v44[4] = v36;
  v44[5] = v39;
  v44[6] = v40;
  v44[7] = v41;
  v45 = type metadata accessor for MLS.DowngradeProcessedContext();

  v46 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v57, &async function pointer to partial apply for closure #1 in MLS.Client.downgrade(group:context:), v44);
  *(v0 + 280) = v46;
  v47 = *(MEMORY[0x277D857C8] + 4);
  v48 = swift_task_alloc();
  *(v0 + 288) = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v48 = v0;
  v48[1] = MLS.Client.downgrade(group:context:);
  v50 = *(v0 + 144);
  v51 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v50, v46, v45, v49, v51);
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = MLS.Client.downgrade(group:context:);
  }

  else
  {
    v6 = MLS.Client.downgrade(group:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t closure #1 in MLS.Client.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[20] = a1;
  v7[25] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[26] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.downgrade(group:context:), v8, 0);
}

uint64_t closure #1 in MLS.Client.downgrade(group:context:)()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  v3._countAndFlagsBits = 0x6341746E65696C43;
  v3._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  swift_beginAccess();
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v0[2] = v7;
  v0[3] = v6;
  v0[4] = v8;
  v0[5] = v9;
  v0[6] = v10;
  v11 = *(v5 + 88);

  outlined copy of Data?(v8, v9);

  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = closure #1 in MLS.Client.downgrade(group:context:);
  v14 = v0[23];
  v15 = v0[24];

  return (v17)(v0 + 7, v14, v15, v0 + 2, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v15 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[5];
    v7 = v2[6];

    outlined consume of Data?(v6, v8);

    v9 = closure #1 in MLS.Client.downgrade(group:context:);
  }

  else
  {
    v4 = v2[26];
    v10 = v2[3];
    v11 = v2[4];
    v13 = v2[5];
    v12 = v2[6];

    outlined consume of Data?(v11, v13);

    v9 = closure #1 in MLS.Client.downgrade(group:context:);
  }

  return MEMORY[0x2822009F8](v9, v4, 0);
}

{
  v25 = v0;
  v2 = v0[21];
  v1 = v0[22];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "downgrade finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = v0[28];
  v12 = v0[25];
  v13 = v0[20];
  v14._countAndFlagsBits = 0x6E61487473726946;
  v14._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v14);
  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[10];
  v24[0] = v0[7];
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  outlined copy of Data?(v24[0], v15);
  v18 = *(v12 + 88);
  v19 = *(v12 + 104);

  MLS.DowngradeProcessedContext.init(dataContext:)(v24, v18, v19, v13);
  v21 = v0[9];
  v20 = v0[10];
  outlined consume of Data?(v0[7], v0[8]);

  v22 = v0[1];

  return v22();
}

uint64_t MLS.Client.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  v1 = direct field offset for MLS.Client.logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MLS.Client.__deallocating_deinit()
{
  MLS.Client.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t specialized MLS.GroupCreationContext.description.getter()
{
  _StringGuts.grow(_:)(54);
  MEMORY[0x2667545A0](0xD000000000000021, 0x80000002651E8C70);
  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0;
}

uint64_t specialized MLS.GroupDeletionContext.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  _StringGuts.grow(_:)(54);
  MEMORY[0x2667545A0](0xD000000000000021, 0x80000002651E8C40);
  MEMORY[0x2667545A0](a1, a2);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (a4 >> 60 == 15)
  {
    v7 = 20302;
  }

  else
  {
    v7 = 5457241;
  }

  if (a4 >> 60 == 15)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v7, v8);

  return 0;
}

uint64_t specialized MLS.GroupOperationContext.description.getter()
{
  _StringGuts.grow(_:)(55);
  MEMORY[0x2667545A0](0xD000000000000022, 0x80000002651E8C10);
  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0;
}

uint64_t specialized MLS.EncryptionContext.description.getter()
{
  v1 = *(v0 + 48);
  v27 = *(v0 + 32);
  *v28 = v1;
  *&v28[16] = *(v0 + 64);
  if (*(&v27 + 1) >> 60 == 15)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v25 = 0x203A646161202CLL;
    v26 = 0xE700000000000000;
    v21 = v27;
    LODWORD(v22) = *v28;
    v23 = *&v28[8];
    v24 = *&v28[24];
    outlined init with copy of MLS.OutgoingEventState?(&v27, &v20, &_s15SecureMessaging3MLSO27AdditionalAuthenticatedDataVSgMd, &_s15SecureMessaging3MLSO27AdditionalAuthenticatedDataVSgMR);
    v4 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
    MEMORY[0x2667545A0](v4);

    outlined destroy of NSObject?(&v27, &_s15SecureMessaging3MLSO27AdditionalAuthenticatedDataVSgMd, &_s15SecureMessaging3MLSO27AdditionalAuthenticatedDataVSgMR);
    v2 = v25;
    v3 = v26;
  }

  v5 = *(v0 + 104);
  v6 = 0xE000000000000000;
  if (v5 <= 0xFD)
  {
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    outlined copy of MLS.AllMember();
    _StringGuts.grow(_:)(23);
    v20 = v21;
    MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8BD0);
    *&v21 = v10;
    *(&v21 + 1) = v9;
    v22 = v8;
    LOBYTE(v23) = v5;
    _print_unlocked<A, B>(_:_:)();
    outlined consume of MLS.AllMember?(v10, v9, v8, v5);
    v6 = *(&v20 + 1);
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  if (*(v0 + 136))
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v13 = *(v0 + 128);
    v14 = *(v0 + 120);
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8BD0);
    LODWORD(v25) = v14;
    *&v20 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v20 + 1) = v15;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v25 = v13;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v16);

    MEMORY[0x2667545A0](v20, *(&v20 + 1));

    v12 = *(&v21 + 1);
    v11 = v21;
  }

  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  MEMORY[0x2667545A0](0xD00000000000001ELL, 0x80000002651E8BB0);
  MEMORY[0x2667545A0](*v0, *(v0 + 8));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (*(v0 + 24) >> 60 == 15)
  {
    v17 = 20302;
  }

  else
  {
    v17 = 5457241;
  }

  if (*(v0 + 24) >> 60 == 15)
  {
    v18 = 0xE200000000000000;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v17, v18);

  MEMORY[0x2667545A0](v2, v3);

  MEMORY[0x2667545A0](v7, v6);

  MEMORY[0x2667545A0](v11, v12);

  return v21;
}

unint64_t specialized MLS.SigningContext.description.getter()
{
  _StringGuts.grow(_:)(48);

  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0xD00000000000001BLL;
}

uint64_t specialized MLS.GroupNameEncryptionContext.description.getter()
{
  _StringGuts.grow(_:)(56);
  MEMORY[0x2667545A0](0xD000000000000023, 0x80000002651E8B80);
  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0;
}

uint64_t specialized MLS.IncomingMessageContext.description.getter()
{
  v1 = v0[13];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v5 = v0[16];
    v4 = v0[17];
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[12];
    outlined copy of Data._Representation(v8, v1);
    outlined copy of Data?(v5, v4);
    _StringGuts.grow(_:)(17);

    v9 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
    MEMORY[0x2667545A0](v9);

    outlined consume of MLS.AdditionalAuthenticatedData?(v8, v1, v7, v6, v5, v4);
    v2 = 0x746365707865202CLL;
    v3 = 0xEF203A4441416465;
  }

  _StringGuts.grow(_:)(58);
  MEMORY[0x2667545A0](0xD000000000000023, 0x80000002651E8B30);
  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v10 = 20302;
  }

  else
  {
    v10 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v10, v11);

  MEMORY[0x2667545A0](v2, v3);

  return 0;
}

uint64_t specialized MLS.IncomingFailureToDecryptContext.description.getter()
{
  *v24 = *(v0 + 80);
  *&v24[12] = *(v0 + 92);
  v1 = *(v0 + 64);
  v23[0] = *(v0 + 48);
  v23[1] = v1;
  v2 = v1;
  v3 = *v24;
  v4 = *&v24[16];
  v5 = *&v24[24];
  v6 = 0xE000000000000000;
  if (v1 >> 16 != 0xFFFFFFFF || (*v24 & 0x3000000000000000) != 0)
  {
    v8 = *(v0 + 64);
    v21[0] = *(v0 + 48);
    v21[1] = v8;
    v22[0] = *(v0 + 80);
    *(v22 + 12) = *(v0 + 92);
    v19 = 0;
    v20 = 0xE000000000000000;
    outlined init with copy of MLS.SigningInput(v21, &v14);
    _StringGuts.grow(_:)(24);
    MEMORY[0x2667545A0](0xD000000000000016, 0x80000002651E8B10);
    v9 = (v3 >> 60) & 3;
    if (v9)
    {
      v14 = v2;
      v15 = *(&v2 + 1);
      *&v16 = v3 & 0xCFFFFFFFFFFFFFFFLL;
      if (v9 == 1)
      {
        *(&v16 + 1) = *(&v3 + 1);
        v17 = v4;
        LOWORD(v18) = v5;
        v10 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
      }

      else
      {
        v10 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
      }
    }

    else
    {
      v14 = v2;
      v15 = *(&v2 + 1);
      v16 = v3;
      v17 = v4;
      v18 = v5;
      v10 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
    }

    MEMORY[0x2667545A0](v10);

    outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    v7 = v19;
    v6 = v20;
  }

  else
  {
    v7 = 0;
  }

  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  MEMORY[0x2667545A0](0xD00000000000002CLL, 0x80000002651E8AE0);
  MEMORY[0x2667545A0](*v0, *(v0 + 8));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (*(v0 + 24) >> 60 == 15)
  {
    v11 = 20302;
  }

  else
  {
    v11 = 5457241;
  }

  if (*(v0 + 24) >> 60 == 15)
  {
    v12 = 0xE200000000000000;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v11, v12);

  MEMORY[0x2667545A0](v7, v6);

  return *&v21[0];
}

uint64_t specialized MLS.IncomingGroupNameContext.description.getter()
{
  _StringGuts.grow(_:)(58);
  MEMORY[0x2667545A0](0xD000000000000025, 0x80000002651E8AB0);
  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0;
}

unint64_t specialized MLS.DowngradeContext.description.getter()
{
  _StringGuts.grow(_:)(50);

  MEMORY[0x2667545A0](*v0, v0[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  if (v0[3] >> 60 == 15)
  {
    v1 = 20302;
  }

  else
  {
    v1 = 5457241;
  }

  if (v0[3] >> 60 == 15)
  {
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v1, v2);

  return 0xD00000000000001DLL;
}

uint64_t sub_264F86914()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.keyPackage.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.keyPackage.getter(a1, v4, v5, v6);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError()
{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError);
  }

  return result;
}

uint64_t sub_264F86B18()
{
  v1 = v0[3];

  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[4], v2);
  }

  v3 = v0[6];

  v4 = v0[8];
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[7], v4);
  }

  v5 = v0[10];
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[9], v5);
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError);
  }

  return result;
}

uint64_t sub_264F86CD4()
{
  v1 = v0[4];
  v2 = v0[6];
  v3 = (type metadata accessor for MLS.IncomingMessage() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 80) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[2];
  swift_unknownObjectRelease();
  v9 = v0[8];

  v10 = v0[9];

  v11 = (v0 + v5);
  outlined consume of Data._Representation(*v11, v11[1]);
  v12 = v11[3];

  (*(*(v1 - 8) + 8))(v11 + v3[12], v1);
  v13 = *(v0 + v6);

  v14 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t partial apply for closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[6];
  v6 = *(type metadata accessor for MLS.IncomingMessage() - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v8);
  v13 = v1[8];
  v14 = v1[9];
  v16 = *(v1 + v9);
  v15 = *(v1 + v9 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(a1, v10, v11, v13, v14, v1 + v7, v12, v16);
}

uint64_t sub_264F86F74()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[9], v5);
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.delete(group:context:)(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.delete(group:context:)(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t partial apply for closure #1 in MLS.Client.group(identifier:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.group(identifier:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264F871B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[5], v3);
  }

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.update(groupDetails:forGroup:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.update(groupDetails:forGroup:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_34Tm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[6];

  v6 = v1[8];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.otherMembers(group:context:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.otherMembers(group:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MLS.Client.add(members:toGroup:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.add(members:toGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.kick(members:fromGroup:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.kick(members:fromGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MLS.Client.leave(group:context:)(uint64_t a1)
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
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.leave(group:context:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_264F8777C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 32), v2);
  }

  v3 = *(v0 + 56);
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 48), v3);
    v4 = *(v0 + 88);
    if (v4 >> 60 != 15)
    {
      outlined consume of Data._Representation(*(v0 + 80), v4);
    }
  }

  if (*(v0 + 120) <= 0xFDu)
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    outlined consume of MLS.AllMember();
  }

  v8 = *(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_264F87908()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_264F87AFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));
  v4 = *(v0 + 104);
  outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v5 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  result = a2;
  v6 = (a3 >> 60) & 3;
  if (((a3 >> 60) & 3) > 1)
  {
    if (v6 == 2)
    {

      return outlined consume of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v6)
    {
      v9 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = a3;
    }

    outlined consume of Data._Representation(result, v9);

    return outlined consume of Data?(a4, a5);
  }

  return result;
}

uint64_t partial apply for closure #1 in MLS.Client.applicationSign(input:withGroup:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[14];
  v9 = v1[15];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.applicationSign(input:withGroup:context:)(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_264F87CD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 32), v2);
  }

  if (*(v0 + 64) >> 16 == 0xFFFFFFFFLL)
  {
    v3 = (*(v0 + 80) & 0x3000000000000000) == 0;
    *(v0 + 80);
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));
    v4 = *(v0 + 104);
    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  v5 = *(v0 + 120);
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 112), v5);
    v6 = *(v0 + 152);
    if (v6 >> 60 != 15)
    {
      outlined consume of Data._Representation(*(v0 + 144), v6);
    }
  }

  v7 = *(v0 + 168);
  if (v7 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 160), v7);
  }

  v8 = *(v0 + 176);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_264F87DAC()
{
  v1 = v0[4];
  v2 = v0[6];
  v3 = (type metadata accessor for MLS.IncomingMessage() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[2];
  swift_unknownObjectRelease();
  v9 = v0[8];

  v10 = (v0 + v5);
  outlined consume of Data._Representation(*v10, v10[1]);
  v11 = v10[3];

  (*(*(v1 - 8) + 8))(v10 + v3[12], v1);
  v12 = *(v0 + v6);

  v13 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t partial apply for closure #1 in MLS.Client.processIncoming(message:forGroup:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[6];
  v7 = *(type metadata accessor for MLS.IncomingMessage() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + v9);
  v14 = v1[8];
  v15 = *(v1 + v10);
  v16 = *(v1 + v10 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.processIncoming(message:forGroup:context:)(a1, v11, v12, v14, v1 + v8, v13, v15, v16);
}

uint64_t sub_264F8803C()
{
  v1 = v0[4];
  v2 = v0[6];
  v3 = (type metadata accessor for MLS.IncomingMessage() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  swift_unknownObjectRelease();
  v8 = v0[8];

  v9 = (v0 + v5);
  outlined consume of Data._Representation(*v9, v9[1]);
  v10 = v9[3];

  (*(*(v1 - 8) + 8))(v9 + v3[12], v1);
  v11 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v4 | 7);
}

uint64_t partial apply for closure #1 in MLS.Client.processIncoming(message:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[6];
  v7 = *(type metadata accessor for MLS.IncomingMessage() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[8];
  v12 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.processIncoming(message:context:)(a1, v9, v10, v11, v1 + v8, v12);
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError);
  }

  return result;
}

uint64_t sub_264F882E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 32), v2);
  }

  v3 = *(v0 + 56);
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 48), v3);
  }

  if (*(v0 + 80) >> 16 == 0xFFFFFFFFLL)
  {
    v4 = (*(v0 + 96) & 0x3000000000000000) == 0;
    *(v0 + 96);
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    outlined consume of Data._Representation(*(v0 + 64), *(v0 + 72));
    v5 = *(v0 + 120);
    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  }

  v6 = *(v0 + 128);

  v7 = *(v0 + 144);
  if (v7 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 136), v7);
    v8 = *(v0 + 176);
    if (v8 >> 60 != 15)
    {
      outlined consume of Data._Representation(*(v0 + 168), v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_264F883BC()
{
  v1 = v0[4];
  v2 = v0[6];
  v3 = (type metadata accessor for MLS.IncomingFailureToDecrypt() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[2];
  swift_unknownObjectRelease();
  v9 = v0[8];

  v10 = v0 + v5;
  v11 = *(v10 + 1);

  v12 = *(v10 + 3);

  (*(*(v1 - 8) + 8))(&v10[v3[12]], v1);
  v13 = *(v0 + v6);

  v14 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t partial apply for closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[6];
  v7 = *(type metadata accessor for MLS.IncomingFailureToDecrypt() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + v9);
  v14 = v1[8];
  v15 = *(v1 + v10);
  v16 = *(v1 + v10 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(a1, v11, v12, v14, v1 + v8, v13, v15, v16);
}

uint64_t sub_264F8864C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264F8868C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.processIncoming(errorMessage:withGroup:context:)(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t objectdestroy_78Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  outlined consume of Data._Representation(v0[6], v0[7]);
  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.processIncoming(groupName:forGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t objectdestroy_52Tm()
{
  v1 = v0[3];

  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[4], v2);
  }

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_69Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in MLS.Client.downgrade(group:context:)(uint64_t a1)
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
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.Client.downgrade(group:context:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t type metadata completion function for MLS.Client()
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

uint64_t dispatch thunk of MLS.Client.keyPackage.getter(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Client.createGroup(identifier:otherMembers:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 152);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 160);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 168);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 176);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Client.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t dispatch thunk of MLS.Client.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 192);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Client.update(groupDetails:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t dispatch thunk of MLS.Client.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 208);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Client.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t dispatch thunk of MLS.Client.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 224);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t dispatch thunk of MLS.Client.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 240);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Client.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 248);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Client.applicationSign(input:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 256);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t dispatch thunk of MLS.Client.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 272);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(failureToDecrypt:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 280);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t dispatch thunk of MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 296);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Client.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t dispatch thunk of MLS.Client.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 312);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.Client.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t outlined consume of MLS.AdditionalAuthenticatedData?(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 != 15)
  {
    outlined consume of Data._Representation(result, a2);

    return outlined consume of Data?(a5, a6);
  }

  return result;
}

uint64_t outlined consume of MLS.AllMember?(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFDu)
  {
    return outlined consume of MLS.AllMember();
  }

  return result;
}

unint64_t MLS.KeyPackageFetcher.FetchResult.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a1 = result;
  a1[1] = v2;
  a1[2] = v2;
  return result;
}

char *MLS.KeyPackageFetcher.FetchResult.init(retrievalResult:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v45 = type metadata accessor for MLS.Client.KeyPackage();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a1 + 64;
  v11 = 1 << *(*a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(*a1 + 64);
  v14 = (v11 + 63) >> 6;
  v43 = v9;
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v44 = v8;
  v42 = v5;
  while (1)
  {
    v46 = v17;
    if (!v13)
    {
      break;
    }

LABEL_10:
    v20 = (v16 << 9) | (8 * __clz(__rbit64(v13)));
    v21 = *(*(v43 + 56) + v20);
    v22 = *(v21 + 16);
    v23 = *(v17 + 2);
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      goto LABEL_34;
    }

    v25 = *(*(v43 + 56) + v20);

    result = swift_isUniquelyReferenced_nonNull_native();
    v26 = v46;
    if (!result || v24 > *(v46 + 3) >> 1)
    {
      if (v23 <= v24)
      {
        v27 = v23 + v22;
      }

      else
      {
        v27 = v23;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v27, 1, v46);
      v26 = result;
    }

    v5 = v42;
    v8 = v44;
    v13 &= v13 - 1;
    if (*(v21 + 16))
    {
      if ((*(v26 + 3) >> 1) - *(v26 + 2) < v22)
      {
        goto LABEL_36;
      }

      v28 = v26;
      swift_arrayInitWithCopy();

      v17 = v28;
      v8 = v44;
      if (v22)
      {
        v29 = *(v17 + 2);
        v30 = __OFADD__(v29, v22);
        v31 = v29 + v22;
        if (v30)
        {
          goto LABEL_37;
        }

        *(v17 + 2) = v31;
      }
    }

    else
    {
      v18 = v26;

      v17 = v18;
      if (v22)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v19 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v19);
    ++v16;
    if (v13)
    {
      v16 = v19;
      goto LABEL_10;
    }
  }

  result = v46;
  v32 = *(v46 + 2);
  v33 = MEMORY[0x277D84F90];
  if (!v32)
  {
LABEL_31:
    v40 = v41;
    *v41 = v43;
    v40[1] = result;
    v40[2] = v33;
    return result;
  }

  v47 = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
  result = v46;
  v34 = 0;
  v33 = v47;
  v44 = (v5 + 32);
  v35 = (v46 + 40);
  while (v34 < *(result + 2))
  {
    v36 = *(v35 - 1);
    v37 = *v35;
    outlined copy of Data._Representation(v36, *v35);
    outlined copy of Data._Representation(v36, v37);
    MLS.Client.KeyPackage.init(fromRaw:)();
    if (v3)
    {

      outlined consume of Data._Representation(v36, v37);
    }

    outlined consume of Data._Representation(v36, v37);
    v47 = v33;
    v39 = *(v33 + 16);
    v38 = *(v33 + 24);
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1);
      v33 = v47;
    }

    ++v34;
    *(v33 + 16) = v39 + 1;
    (*(v5 + 32))(v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v39, v8, v45);
    v35 += 2;
    result = v46;
    if (v32 == v34)
    {

      result = v46;
      goto LABEL_31;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void *MLS.KeyPackageFetcher.FetchResult.init(retrievalResult:keyPackages:swiftMLSKeyPackages:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t MLS.KeyPackageFetcher.clientEventDeliverer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t MLS.KeyPackageFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS17KeyPackageFetcher_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeyPackageFetcher.__allocating_init(clientEventDeliverer:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return v7;
}

uint64_t MLS.KeyPackageFetcher.init(clientEventDeliverer:)(uint64_t a1, uint64_t a2)
{
  Logger.init(subsystem:category:)();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[41] = v6;
  v7[42] = a6;
  v7[39] = a4;
  v7[40] = a5;
  v7[37] = a2;
  v7[38] = a3;
  v7[36] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[43] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[44] = v9;
  v10 = *(v9 + 64) + 15;
  v7[45] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7[46] = AssociatedConformanceWitness;
  v7[47] = *(*(AssociatedConformanceWitness + 8) + 8);
  v12 = swift_getAssociatedTypeWitness();
  v7[48] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[49] = swift_task_alloc();
  v14 = swift_checkMetadataState();
  v7[50] = v14;
  v15 = *(v14 - 8);
  v7[51] = v15;
  v16 = *(v15 + 64) + 15;
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static MLSActor.shared;
  v7[60] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY0_, v17, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY0_()
{
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(*(v0 + 304), v0 + 16);
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 368);
  if (*(v0 + 96) == 1)
  {
    v6 = *(v0 + 472);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 184);
    v7 = *(v0 + 72);
    *(v0 + 224) = *(v0 + 56);
    *(v0 + 240) = v7;
    *(v0 + 256) = *(v0 + 88);
    v8 = swift_task_alloc();
    *(v0 + 488) = v8;
    *(v8 + 16) = v0 + 184;
    *(v8 + 24) = v0 + 224;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 40))(v3, AssociatedConformanceWitness);
    VersatileError.init(type:)(v2, v1, v4);
    v10 = swift_task_alloc();
    *(v0 + 496) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    *v10 = v0;
    v10[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ1_;
    v11 = *(v0 + 472);
    v12 = *(v0 + 400);
    v19 = *(v0 + 376);
    v21 = *(v0 + 464);
    v13 = &_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TATu;
  }

  else
  {
    v14 = *(v0 + 456);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 104);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 56), v0 + 144);
    v8 = swift_task_alloc();
    *(v0 + 512) = v8;
    *(v8 + 16) = v0 + 104;
    *(v8 + 24) = v0 + 144;
    v15 = swift_getAssociatedConformanceWitness();
    (*(v15 + 40))(v3, v15);
    VersatileError.init(type:)(v2, v1, v4);
    v16 = swift_task_alloc();
    *(v0 + 520) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    *v16 = v0;
    v16[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ3_;
    v11 = *(v0 + 456);
    v12 = *(v0 + 400);
    v20 = *(v0 + 376);
    v22 = *(v0 + 448);
    v13 = &_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_TATu;
  }

  return _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 264, v13, v8, v11, 0, 0, v12);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v13 = *v1;

  if (v0)
  {
    v4 = v2[60];
    (*(v2[51] + 8))(v2[59], v2[50]);
    v5 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY7_;
    v6 = v4;
  }

  else
  {
    v8 = v2[60];
    v7 = v2[61];
    v9 = v2[59];
    v10 = v2[50];
    v11 = *(v2[51] + 8);
    v2[63] = v11;
    v11(v9, v10);

    v5 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY2_;
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY2_()
{
  outlined destroy of MLS.SwiftMLSGroupProtocol?((v0 + 28));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  v0[67] = v0[63];
  v1 = v0[33];
  v0[68] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[50];
    v3 = v0[48];
    v42 = v0[47];
    v43 = v0[55];
    v4 = v0[45];
    v38 = v0[46];
    v39 = v0[49];
    v5 = v0[43];
    v6 = v0[44];
    v7 = v0[40];
    v37 = v0[41];
    v8 = v0[39];
    v9 = v0[37];
    v10 = (*(v7 + 56))(v8, v7);
    v40 = v11;
    v41 = v10;
    v0[69] = v10;
    v0[70] = v11;
    (*(v7 + 80))(v8, v7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = (*(AssociatedConformanceWitness + 16))(v5, AssociatedConformanceWitness);
    v15 = v14;
    v0[71] = v13;
    v0[72] = v14;
    (*(v6 + 8))(v4, v5);
    v16 = swift_task_alloc();
    v0[73] = v16;
    *(v16 + 16) = v37;
    *(v16 + 24) = v1;
    v17 = swift_getAssociatedConformanceWitness();
    v0[74] = v17;
    v18 = *(v17 + 24);
    v0[75] = v18;
    v0[76] = (v17 + 24) & 0xFFFFFFFFFFFFLL | 0x51A3000000000000;
    v18(v3, v17);
    VersatileError.init(type:)(v39, v2, v42);
    v19 = swift_allocObject();
    v0[77] = v19;
    v19[2] = v37;
    v19[3] = v41;
    v19[4] = v40;
    v19[5] = v13;
    v19[6] = v15;

    v20 = swift_task_alloc();
    v0[78] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
    *v20 = v0;
    v20[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ5_;
    v21 = v0[55];
    v22 = v0[50];
    v46 = v0[47];
    v47 = v0[54];

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 34), &_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TATu, v16, v21, _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFySSYbcfU_TA, v19, v22);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
    v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v27 = v0[58];
    v26 = v0[59];
    v29 = v0[56];
    v28 = v0[57];
    v31 = v0[54];
    v30 = v0[55];
    v33 = v0[52];
    v32 = v0[53];
    v34 = v0[49];
    v44 = v0[45];
    v35 = v0[36];
    *v35 = v25;
    v35[1] = v24;
    v35[2] = v24;

    v36 = v0[1];

    return v36();
  }
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ3_()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v13 = *v1;

  if (v0)
  {
    v4 = v2[60];
    (*(v2[51] + 8))(v2[57], v2[50]);
    v5 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY8_;
    v6 = v4;
  }

  else
  {
    v7 = v2[64];
    v8 = v2[60];
    v9 = v2[57];
    v10 = v2[50];
    v11 = *(v2[51] + 8);
    v2[66] = v11;
    v11(v9, v10);

    v5 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY4_;
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY4_()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  v0[67] = v0[66];
  v1 = v0[33];
  v0[68] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[50];
    v3 = v0[48];
    v42 = v0[47];
    v43 = v0[55];
    v4 = v0[45];
    v38 = v0[46];
    v39 = v0[49];
    v5 = v0[43];
    v6 = v0[44];
    v7 = v0[40];
    v37 = v0[41];
    v8 = v0[39];
    v9 = v0[37];
    v10 = (*(v7 + 56))(v8, v7);
    v40 = v11;
    v41 = v10;
    v0[69] = v10;
    v0[70] = v11;
    (*(v7 + 80))(v8, v7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = (*(AssociatedConformanceWitness + 16))(v5, AssociatedConformanceWitness);
    v15 = v14;
    v0[71] = v13;
    v0[72] = v14;
    (*(v6 + 8))(v4, v5);
    v16 = swift_task_alloc();
    v0[73] = v16;
    *(v16 + 16) = v37;
    *(v16 + 24) = v1;
    v17 = swift_getAssociatedConformanceWitness();
    v0[74] = v17;
    v18 = *(v17 + 24);
    v0[75] = v18;
    v0[76] = (v17 + 24) & 0xFFFFFFFFFFFFLL | 0x51A3000000000000;
    v18(v3, v17);
    VersatileError.init(type:)(v39, v2, v42);
    v19 = swift_allocObject();
    v0[77] = v19;
    v19[2] = v37;
    v19[3] = v41;
    v19[4] = v40;
    v19[5] = v13;
    v19[6] = v15;

    v20 = swift_task_alloc();
    v0[78] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
    *v20 = v0;
    v20[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ5_;
    v21 = v0[55];
    v22 = v0[50];
    v46 = v0[47];
    v47 = v0[54];

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 34), &_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TATu, v16, v21, _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFySSYbcfU_TA, v19, v22);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
    v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v27 = v0[58];
    v26 = v0[59];
    v29 = v0[56];
    v28 = v0[57];
    v31 = v0[54];
    v30 = v0[55];
    v33 = v0[52];
    v32 = v0[53];
    v34 = v0[49];
    v44 = v0[45];
    v35 = v0[36];
    *v35 = v25;
    v35[1] = v24;
    v35[2] = v24;

    v36 = v0[1];

    return v36();
  }
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTQ5_()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  *(v2 + 632) = v0;

  v5 = *(v2 + 616);
  if (v0)
  {
    v6 = *(v2 + 576);
    v7 = *(v2 + 560);
    v8 = *(v2 + 544);
    v9 = *(v2 + 480);
    v10 = *(v2 + 408) + 8;
    (*(v2 + 536))(*(v2 + 440), *(v2 + 400));

    v11 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY9_;
    v12 = v9;
  }

  else
  {
    v13 = *(v2 + 584);
    v14 = *(v2 + 536);
    v15 = *(v2 + 480);
    v16 = *(v2 + 440);
    v17 = *(v2 + 400);
    *(v2 + 640) = (*(v2 + 408) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v16, v17);

    v11 = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY6_;
    v12 = v15;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY6_()
{
  v150 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 560);
  v3 = *(v0 + 328);
  v4 = *(v0 + 272);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 576);
    v8 = *(v0 + 568);
    v9 = v4;
    v10 = *(v0 + 560);
    v11 = *(v0 + 552);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v148[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, v148);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v148);
    *(v12 + 22) = 2080;
    v4 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    v14 = Dictionary.description.getter();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v148);

    *(v12 + 24) = v17;
    _os_log_impl(&dword_264F1F000, v5, v6, "KeyPackageFetcher %s retrieved KeyPackages { identifier: %s, keyPackages: %s }", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  if (*(v4 + 16) >= *(*(v0 + 544) + 16))
  {
    v34 = *(v0 + 544);

    v36 = 0;
    v37 = v4 + 64;
    v38 = -1 << *(v4 + 32);
    if (-v38 < 64)
    {
      v39 = ~(-1 << -v38);
    }

    else
    {
      v39 = -1;
    }

    v40 = v39 & *(v4 + 64);
    v41 = (63 - v38) >> 6;
    v146 = v4;
    while (v40)
    {
      v42 = v36;
LABEL_16:
      v43 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v44 = v43 | (v42 << 6);
      if (!*(*(*(v4 + 56) + 8 * v44) + 16))
      {
        v45 = *(v0 + 576);
        v46 = v4;
        v47 = *(v0 + 560);
        v48 = *(v46 + 48) + 32 * v44;
        v49 = *v48;
        v50 = *(v48 + 8);
        v51 = *(v48 + 16);
        v52 = *(v48 + 24);
        outlined copy of MLS.AllMember();

        outlined copy of MLS.AllMember();
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();

        outlined consume of MLS.AllMember();
        v55 = os_log_type_enabled(v53, v54);
        v56 = *(v0 + 576);
        if (v55)
        {
          v140 = *(v0 + 568);
          v57 = *(v0 + 560);
          v143 = v54;
          v58 = *(v0 + 552);
          v59 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v147 = v141;
          *v59 = 136315650;
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, &v147);

          *(v59 + 4) = v60;
          *(v59 + 12) = 2080;
          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v56, &v147);

          *(v59 + 14) = v61;
          *(v59 + 22) = 2080;
          v148[0] = v49;
          v148[1] = v50;
          v148[2] = v51;
          v149 = v52;
          v62 = MLS.AllMember.description.getter();
          v64 = v63;
          outlined consume of MLS.AllMember();
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v147);

          *(v59 + 24) = v65;
          _os_log_impl(&dword_264F1F000, v53, v143, "KeyPackageFetcher %s missing KeyPackage for member { identifier: %s, member: %s }", v59, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266755550](v141, -1, -1);
          MEMORY[0x266755550](v59, -1, -1);
        }

        else
        {
          v132 = *(v0 + 560);

          outlined consume of MLS.AllMember();
        }

        v133 = *(v0 + 608);
        v134 = *(v0 + 592);
        v136 = *(v0 + 392);
        v135 = *(v0 + 400);
        v138 = *(v0 + 376);
        v137 = *(v0 + 384);
        v139 = *(v0 + 336);
        (*(v0 + 600))();
        VersatileError.init(type:)(v136, v135, v138);
        swift_willThrowTyped(v139, v135, *(*(v138 + 8) + 8));

        goto LABEL_46;
      }
    }

    while (1)
    {
      v42 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v42 >= v41)
      {
        break;
      }

      v40 = *(v37 + 8 * v42);
      ++v36;
      if (v40)
      {
        v36 = v42;
        goto LABEL_16;
      }
    }

    v66 = *(v0 + 576);
    v67 = *(v0 + 560);

    v68 = -1;
    v69 = -1 << *(v4 + 32);
    if (-v69 < 64)
    {
      v68 = ~(-1 << -v69);
    }

    v70 = v68 & *(v4 + 64);
    v71 = (63 - v69) >> 6;
    result = swift_bridgeObjectRetain_n();
    v72 = 0;
    v73 = MEMORY[0x277D84F90];
    while (v70)
    {
LABEL_28:
      v75 = *(v0 + 480);
      v76 = *(*(v146 + 56) + ((v72 << 9) | (8 * __clz(__rbit64(v70)))));

      result = swift_task_isCurrentExecutor();
      if ((result & 1) == 0)
      {
        v77 = *(v0 + 480);
        result = swift_task_reportUnexpectedExecutor();
      }

      v78 = *(v76 + 16);
      v79 = *(v73 + 16);
      v80 = v79 + v78;
      if (__OFADD__(v79, v78))
      {
        goto LABEL_55;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v80 > *(v73 + 24) >> 1)
      {
        if (v79 <= v80)
        {
          v81 = v79 + v78;
        }

        else
        {
          v81 = v79;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v81, 1, v73);
        v73 = result;
      }

      v70 &= v70 - 1;
      if (*(v76 + 16))
      {
        if ((*(v73 + 24) >> 1) - *(v73 + 16) < v78)
        {
          goto LABEL_57;
        }

        swift_arrayInitWithCopy();

        if (v78)
        {
          v82 = *(v73 + 16);
          v83 = __OFADD__(v82, v78);
          v84 = v82 + v78;
          if (v83)
          {
            goto LABEL_58;
          }

          *(v73 + 16) = v84;
        }
      }

      else
      {

        if (v78)
        {
          goto LABEL_56;
        }
      }
    }

    while (1)
    {
      v74 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v74 >= v71)
      {
        v144 = *(v0 + 632);
        v85 = *(v0 + 592);
        v86 = *(v0 + 416);
        v87 = *(v0 + 424);
        v88 = *(v0 + 392);
        v89 = *(v0 + 400);
        v91 = *(v0 + 376);
        v90 = *(v0 + 384);

        v92 = swift_task_alloc();
        *(v92 + 16) = v73;
        (*(v85 + 48))(v90, v85);
        VersatileError.init(type:)(v88, v89, v91);
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8SwiftMLS0B0O6ClientO10KeyPackageVGMd, &_sSay8SwiftMLS0B0O6ClientO10KeyPackageVGMR);
        _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSay05SwiftC0ABO6ClientO0dE0VGyKXEfu12_TA, v92, v87, 0, 0, v89, v93, v91);
        v94 = *(v0 + 640);
        v95 = *(v0 + 536);
        v96 = *(v0 + 424);
        if (v144)
        {
          v98 = *(v0 + 408);
          v97 = *(v0 + 416);
          v99 = *(v0 + 400);
          v100 = *(v0 + 336);
          v95(v96, v99);

          (*(v98 + 32))(v100, v97, v99);

          goto LABEL_46;
        }

        v95(v96, *(v0 + 400));

        v122 = *(v0 + 464);
        v121 = *(v0 + 472);
        v124 = *(v0 + 448);
        v123 = *(v0 + 456);
        v126 = *(v0 + 432);
        v125 = *(v0 + 440);
        v128 = *(v0 + 416);
        v127 = *(v0 + 424);
        v129 = *(v0 + 392);
        v145 = *(v0 + 360);
        v130 = *(v0 + 280);
        v131 = *(v0 + 288);
        *v131 = v146;
        v131[1] = v73;
        v131[2] = v130;

        v120 = *(v0 + 8);
        goto LABEL_47;
      }

      v70 = *(v37 + 8 * v74);
      ++v72;
      if (v70)
      {
        v72 = v74;
        goto LABEL_28;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  else
  {
    v18 = *(v0 + 576);
    v19 = *(v0 + 560);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 576);
    if (v22)
    {
      v24 = *(v0 + 568);
      v25 = *(v0 + 560);
      v26 = v4;
      v27 = *(v0 + 552);
      v28 = *(v0 + 544);
      v29 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v148[0] = v142;
      *v29 = 136315906;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v25, v148);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v148);

      *(v29 + 14) = v31;
      *(v29 + 22) = 2048;
      v32 = *(v26 + 16);

      *(v29 + 24) = v32;

      *(v29 + 32) = 2048;
      v33 = *(v28 + 16);

      *(v29 + 34) = v33;

      _os_log_impl(&dword_264F1F000, v20, v21, "KeyPackageFetcher %s missing KeyPackage { identifier: %s, keyPackageCount: %ld, otherMembersCount: %ld }", v29, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266755550](v142, -1, -1);
      MEMORY[0x266755550](v29, -1, -1);
    }

    else
    {
      v101 = *(v0 + 560);
      v102 = *(v0 + 544);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v103 = *(v0 + 608);
    v104 = *(v0 + 592);
    v106 = *(v0 + 392);
    v105 = *(v0 + 400);
    v108 = *(v0 + 376);
    v107 = *(v0 + 384);
    v109 = *(v0 + 336);
    (*(v0 + 600))();
    VersatileError.init(type:)(v106, v105, v108);
    swift_willThrowTyped(v109, v105, *(*(v108 + 8) + 8));
LABEL_46:
    v111 = *(v0 + 464);
    v110 = *(v0 + 472);
    v113 = *(v0 + 448);
    v112 = *(v0 + 456);
    v115 = *(v0 + 432);
    v114 = *(v0 + 440);
    v117 = *(v0 + 416);
    v116 = *(v0 + 424);
    v118 = *(v0 + 392);
    v119 = *(v0 + 360);

    v120 = *(v0 + 8);
LABEL_47:

    return v120();
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY7_()
{
  v1 = v0[61];
  (*(v0[51] + 32))(v0[42], v0[58], v0[50]);

  outlined destroy of MLS.SwiftMLSGroupProtocol?((v0 + 28));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  v3 = v0[58];
  v2 = v0[59];
  v5 = v0[56];
  v4 = v0[57];
  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[49];
  v11 = v0[45];

  v12 = v0[1];

  return v12();
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY8_()
{
  v1 = v0[64];
  (*(v0[51] + 32))(v0[42], v0[56], v0[50]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  v3 = v0[58];
  v2 = v0[59];
  v5 = v0[56];
  v4 = v0[57];
  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[49];
  v11 = v0[45];

  v12 = v0[1];

  return v12();
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTY9_()
{
  v1 = v0[73];
  (*(v0[51] + 32))(v0[42], v0[54], v0[50]);

  v3 = v0[58];
  v2 = v0[59];
  v5 = v0[56];
  v4 = v0[57];
  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[49];
  v11 = v0[45];

  v12 = v0[1];

  return v12();
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TY0_, 0, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TY0_()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TQ1_;
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TQ1_(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TY2_, 0, 0);
  }
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_TY0_, 0, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_TY0_()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TY0_, 0, 0);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TY0_()
{
  v1 = *(v0 + 24);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 1;
  v5 = *(v2 + 40);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TQ1_;
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return v11(v9, v8, v0 + 56, ObjectType, v2);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TQ1_()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TY2_, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

void _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFySSYbcfU_(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{

  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v17);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, a7, &v17);
    *(v14 + 22) = 2080;
    *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v17);
    _os_log_impl(&dword_264F1F000, oslog, v13, "KeyPackageFetcher %s failed to retrieve KeyPackages { identifier: %s, error: %s }", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSay05SwiftC0ABO6ClientO0dE0VGyKXEfu12_@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v20 = type metadata accessor for MLS.Client.KeyPackage();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v18 = a2;
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v21;
    v19 = v5 + 32;
    v12 = (a1 + 40);
    while (1)
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      outlined copy of Data._Representation(v13, *v12);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      outlined copy of Data._Representation(v13, v14);
      MLS.Client.KeyPackage.init(fromRaw:)();
      if (v2)
      {
        break;
      }

      outlined consume of Data._Representation(v13, v14);
      v21 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
        v11 = v21;
      }

      v12 += 2;
      *(v11 + 16) = v16 + 1;
      result = (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v9, v20);
      if (!--v10)
      {
        a2 = v18;
        goto LABEL_13;
      }
    }

    outlined consume of Data._Representation(v13, v14);
  }

  else
  {
LABEL_13:
    *a2 = v11;
  }

  return result;
}

uint64_t MLS.KeyPackageFetcher.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCO15SecureMessaging3MLS17KeyPackageFetcher_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t MLS.KeyPackageFetcher.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCO15SecureMessaging3MLS17KeyPackageFetcher_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu0_(a1, v5, v4);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_(a1, v5, v4);
}

uint64_t sub_264F8DEA8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFSayAC9AllMemberOGyYaYbKXEfu_(a1, v5, v4);
}

uint64_t outlined destroy of MLS.SwiftMLSGroupProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MLS.KeyPackageFetcher()
{
  result = type metadata singleton initialization cache for MLS.KeyPackageFetcher;
  if (!type metadata singleton initialization cache for MLS.KeyPackageFetcher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.KeyPackageFetcher()
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

uint64_t _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 104);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.KeyPackageFetcher.FetchResult(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MLS.KeyPackageFetcher.FetchResult(uint64_t result, int a2, int a3)
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

uint64_t MLS.Identity.Credential.isExpired.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v27[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v27[-v17];
  MLS.Identity.Credential.credentialNotAfter.getter();
  v30 = *(v9 + 48);
  if (v30(v7, 1, v8) == 1)
  {
    outlined destroy of Date?(v7);
  }

  else
  {
    (*(v9 + 32))(v18, v7, v8);
    Date.init()();
    v28 = static Date.< infix(_:_:)();
    v29 = v0;
    v19 = v13;
    v20 = v5;
    v21 = *(v9 + 8);
    v21(v16, v8);
    v21(v18, v8);
    v5 = v20;
    v13 = v19;
    if (v28)
    {
      v22 = 1;
      return v22 & 1;
    }
  }

  v23 = v31;
  MLS.Identity.Credential.participantInfoNotAfter.getter();
  if (!v23)
  {
    if (v30(v5, 1, v8) == 1)
    {
      outlined destroy of Date?(v5);
LABEL_10:
      v22 = 0;
      return v22 & 1;
    }

    (*(v9 + 32))(v13, v5, v8);
    Date.init()();
    v24 = static Date.< infix(_:_:)();
    v25 = *(v9 + 8);
    v25(v16, v8);
    v25(v13, v8);
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }

    v22 = 1;
  }

  return v22 & 1;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UUID.dataRepresentation.getter()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 64);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0xE)
  {
    return specialized Data.InlineData.init(_:)(v0, &v0[v1]);
  }

  v2 = type metadata accessor for __DataStorage();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (v1 < 0x7FFFFFFF)
  {
    return v1 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

uint64_t UUID.swiftMLSDataRepresentation.getter()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.uuidString.getter();
  String.uppercased()();

  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();

  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t UUID.CustomNamespace.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UUID.CustomNamespace.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UUID.CustomNamespace()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UUID.CustomNamespace()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UUID.CustomNamespace@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance UUID.CustomNamespace, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t static UUID.v5(customNamespace:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v66 = a2;
  v74 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for Insecure.SHA1Digest();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Insecure.SHA1();
  v60 = *(v70 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v59 - v10;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v72 = a1;
  v67 = a1;

  specialized MutableCollection<>.sort(by:)(&v72);
  v64 = 0;
  v16 = 0;
  v17 = v72;
  v18 = *(v72 + 16);
  v19 = (v12 + 8);
  v20 = v72 + 40;
  v71 = MEMORY[0x277D84F90];
  v65 = v72 + 40;
LABEL_2:
  v21 = (v20 + 16 * v16);
  while (v18 != v16)
  {
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    ++v16;
    v22 = v21 + 2;
    v23 = *(v21 - 1);
    v24 = *v21;

    static String.Encoding.utf8.getter();
    v25 = String.data(using:allowLossyConversion:)();
    v27 = v26;

    (*v19)(v15, v11);
    v21 = v22;
    if (v27 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 2) + 1, 1, v71);
      }

      v29 = *(v71 + 2);
      v28 = *(v71 + 3);
      if (v29 >= v28 >> 1)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v71);
      }

      v30 = v71;
      *(v71 + 2) = v29 + 1;
      v31 = &v30[16 * v29];
      *(v31 + 4) = v25;
      *(v31 + 5) = v27;
      v20 = v65;
      goto LABEL_2;
    }
  }

  v32 = v71;
  if (*(v71 + 2) < *(v67 + 16))
  {
    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 56))(v66, 1, 1, v33);

    goto LABEL_36;
  }

  v35 = v68;
  UUID.init(uuidString:)();
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {

    outlined destroy of UUID?(v68);
    result = (*(v37 + 56))(v66, 1, 1, v36);
    goto LABEL_36;
  }

  v38 = v68;
  v39 = UUID.uuid.getter();
  v41 = v40;
  v67 = v37;
  v68 = v36;
  (*(v37 + 8))(v38, v36);
  *&v72 = v39;
  *(&v72 + 1) = v41;
  v42 = specialized Data.init(bytes:count:)(&v72, 16);
  v44 = v43;
  v45 = v69;
  Insecure.SHA1.init()();
  outlined copy of Data._Representation(v42, v44);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v42, v44);
  v64 = v42;
  v65 = v44;
  outlined consume of Data._Representation(v42, v44);
  v46 = *(v32 + 2);
  if (v46)
  {
    v47 = 0;
    v48 = (v32 + 40);
    do
    {
      if (v47 >= *(v32 + 2))
      {
        goto LABEL_38;
      }

      v49 = *(v48 - 1);
      v50 = *v48;
      v51 = *v48 >> 62;
      if (v51 > 1)
      {
        if (v51 == 2)
        {
          v53 = *(v49 + 16);
          v52 = *(v49 + 24);
          v54 = *(v48 - 1);

          if (__DataStorage._bytes.getter() && __OFSUB__(v53, __DataStorage._offset.getter()))
          {
            goto LABEL_41;
          }

          if (__OFSUB__(v52, v53))
          {
            goto LABEL_40;
          }

LABEL_32:
          MEMORY[0x2667538A0]();
          lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
          v45 = v69;
          dispatch thunk of HashFunction.update(bufferPointer:)();
          outlined consume of Data._Representation(v49, v50);
          v32 = v71;
          goto LABEL_19;
        }

        lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
        *&v72 = 0;
        *(&v72 + 6) = 0;
      }

      else
      {
        if (v51)
        {
          if (v49 >> 32 < v49)
          {
            goto LABEL_39;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(v49, __DataStorage._offset.getter()))
          {
            goto LABEL_42;
          }

          goto LABEL_32;
        }

        *&v72 = *(v48 - 1);
        WORD4(v72) = v50;
        BYTE10(v72) = BYTE2(v50);
        BYTE11(v72) = BYTE3(v50);
        BYTE12(v72) = BYTE4(v50);
        BYTE13(v72) = BYTE5(v50);
        lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
      }

      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v49, v50);
LABEL_19:
      ++v47;
      v48 += 2;
    }

    while (v46 != v47);
  }

  v55 = v63;
  v56 = Insecure.SHA1.finalize()();
  v72 = 0uLL;
  v73 = 1;
  MEMORY[0x28223BE20](v56);
  Insecure.SHA1Digest.withUnsafeBytes<A>(_:)();
  if (v73)
  {
    (*(v61 + 8))(v55, v62);
    outlined consume of Data._Representation(v64, v65);
    (*(v60 + 8))(v45, v70);
    result = (*(v67 + 56))(v66, 1, 1, v68);
  }

  else
  {
    v57 = v66;
    UUID.init(uuid:)();
    outlined consume of Data._Representation(v64, v65);
    (*(v61 + 8))(v55, v62);
    (*(v60 + 8))(v45, v70);
    result = (*(v67 + 56))(v57, 0, 1, v68);
  }

LABEL_36:
  v58 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 296 * a3 - 296;
    v6 = result - a3 + 1;
LABEL_5:
    v13 = a3;
    v7 = v6;
    for (i = v5; ; i -= 296)
    {
      memcpy(__dst, (i + 296), sizeof(__dst));
      memcpy(v12, i, 0x128uLL);
      outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dst, __src);
      outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v12, __src);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v12);
      result = outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__dst);
      if (__dst[36] >= v12[36])
      {
LABEL_4:
        a3 = v13 + 1;
        v5 += 296;
        --v6;
        if (v13 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      memcpy(__src, (i + 296), sizeof(__src));
      memcpy((i + 296), i, 0x128uLL);
      result = memcpy(i, __src, 0x128uLL);
      if (!v7)
      {
        goto LABEL_4;
      }

      ++v7;
    }

    __break(1u);
  }

  return result;
}

{
  v40 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 112 * a3;
    v7 = result - a3 + 1;
LABEL_5:
    v8 = v7;
    for (i = v6; ; i -= 7)
    {
      v10 = *i;
      v11 = i[2];
      v36[1] = i[1];
      v36[2] = v11;
      v36[0] = v10;
      v12 = i[3];
      v13 = i[4];
      v14 = i[6];
      v36[5] = i[5];
      v37 = v14;
      v36[3] = v12;
      v36[4] = v13;
      v15 = *(i - 1);
      v17 = *(i - 4);
      v16 = *(i - 3);
      v38[5] = *(i - 2);
      v39 = v15;
      v38[3] = v17;
      v38[4] = v16;
      v18 = *(i - 7);
      v19 = *(i - 5);
      v38[1] = *(i - 6);
      v38[2] = v19;
      v38[0] = v18;
      outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(v36, &v29);
      outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(v38, &v29);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(v38);
      result = outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(v36);
      if (*(&v37 + 1) >= *(&v39 + 1))
      {
LABEL_4:
        ++v4;
        v6 += 112;
        --v7;
        if (v4 == v40)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v20 = i - 7;
      v32 = i[3];
      v33 = i[4];
      v34 = i[5];
      v35 = i[6];
      v29 = *i;
      v30 = i[1];
      v31 = i[2];
      v21 = *(i - 6);
      *i = *(i - 7);
      i[1] = v21;
      v22 = *(i - 1);
      i[5] = *(i - 2);
      i[6] = v22;
      v23 = *(i - 3);
      i[3] = *(i - 4);
      i[4] = v23;
      i[2] = *(i - 5);
      v24 = v29;
      v25 = v31;
      v20[1] = v30;
      v20[2] = v25;
      *v20 = v24;
      v26 = v32;
      v27 = v33;
      v28 = v35;
      v20[5] = v34;
      v20[6] = v28;
      v20[3] = v26;
      v20[4] = v27;
      if (!v8)
      {
        goto LABEL_4;
      }

      ++v8;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

{
  v5 = v4;
  v80 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_103:
    v9 = *v80;
    if (!*v80)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_135:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v89 = v8;
    v74 = *(v8 + 2);
    if (v74 >= 2)
    {
      while (*a3)
      {
        v75 = *&v8[16 * v74];
        v76 = *&v8[16 * v74 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 296 * v75), (*a3 + 296 * *&v8[16 * v74 + 16]), (*a3 + 296 * v76), v9);
        if (v5)
        {
        }

        if (v76 < v75)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v74 - 2 >= *(v8 + 2))
        {
          goto LABEL_129;
        }

        v77 = &v8[16 * v74];
        *v77 = v75;
        *(v77 + 1) = v76;
        v89 = v8;
        result = specialized Array.remove(at:)(v74 - 1);
        v8 = v89;
        v74 = *(v89 + 2);
        if (v74 <= 1)
        {
        }
      }

      goto LABEL_139;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      ++v7;
    }

    else
    {
      v11 = *a3;
      memcpy(__dst, (*a3 + 296 * v10), sizeof(__dst));
      memcpy(v88, (v11 + 296 * v9), 0x128uLL);
      outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dst, __src);
      outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v88, __src);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v81 = v9;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v88);
      result = outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__dst);
      v12 = __dst[36];
      v13 = v88[36];
      v14 = (v81 + 2);
      if (v81 + 2 >= v6)
      {
        v7 = v81 + 2;
        if (__dst[36] >= v88[36])
        {
          goto LABEL_29;
        }
      }

      else
      {
        v15 = v11 + 296 * v81 + 296;
        while (1)
        {
          v7 = v14;
          memcpy(v85, (v15 + 296), sizeof(v85));
          memcpy(__src, v15, sizeof(__src));
          outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v85, v84);
          outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__src, v84);
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__src);
          result = outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v85);
          if (v12 < v13 == v85[36] >= __src[36])
          {
            break;
          }

          v14 = (v7 + 1);
          v15 += 296;
          if (v6 == v7 + 1)
          {
            v10 = v7;
            v7 = v6;
            if (v12 < v13)
            {
              goto LABEL_21;
            }

            goto LABEL_29;
          }
        }

        v10 = v7 - 1;
        if (v12 >= v13)
        {
          goto LABEL_29;
        }
      }

LABEL_21:
      v9 = v81;
      if (v7 < v81)
      {
        goto LABEL_132;
      }

      if (v81 <= v10)
      {
        v16 = 296 * v7 - 296;
        v17 = 296 * v81;
        v18 = v81;
        v19 = v7;
        do
        {
          if (v18 != --v19)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            memcpy(__src, (v20 + v17), sizeof(__src));
            memmove((v20 + v17), (v20 + v16), 0x128uLL);
            result = memcpy((v20 + v16), __src, 0x128uLL);
          }

          ++v18;
          v16 -= 296;
          v17 += 296;
        }

        while (v18 < v19);
LABEL_29:
        v9 = v81;
      }
    }

    v21 = a3[1];
    if (v7 < v21)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_131;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v7 < v9)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v29 = *(v8 + 2);
    v28 = *(v8 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v30;
    v31 = &v8[16 * v29];
    *(v31 + 4) = v9;
    *(v31 + 5) = v7;
    v32 = *v80;
    if (!*v80)
    {
      goto LABEL_140;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_72:
          if (v37)
          {
            goto LABEL_119;
          }

          v50 = &v8[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_122;
          }

          v56 = &v8[16 * v33 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_126;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v60 = &v8[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_86:
        if (v55)
        {
          goto LABEL_121;
        }

        v63 = &v8[16 * v33];
        v65 = *(v63 + 4);
        v64 = *(v63 + 5);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_124;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_93:
        v71 = v33 - 1;
        if (v33 - 1 >= v30)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v72 = *&v8[16 * v71 + 32];
        v9 = *&v8[16 * v33 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 296 * v72), (*a3 + 296 * *&v8[16 * v33 + 32]), (*a3 + 296 * v9), v32);
        if (v5)
        {
        }

        if (v9 < v72)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v71 >= *(v8 + 2))
        {
          goto LABEL_116;
        }

        v73 = &v8[16 * v71];
        *(v73 + 4) = v72;
        *(v73 + 5) = v9;
        v89 = v8;
        result = specialized Array.remove(at:)(v33);
        v8 = v89;
        v30 = *(v89 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v38 = &v8[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_117;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_118;
      }

      v45 = &v8[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_120;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_123;
      }

      if (v49 >= v41)
      {
        v67 = &v8[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_127;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_103;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_133;
  }

  v78 = v5;
  if (v9 + a4 >= v21)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v7 == v5)
  {
LABEL_51:
    v5 = v78;
    goto LABEL_52;
  }

  v22 = *a3;
  v23 = v9;
  v24 = *a3 + 296 * v7 - 296;
  v82 = v23;
  v25 = &v23[-v7 + 1];
LABEL_41:
  v26 = v25;
  for (i = v24; ; i -= 296)
  {
    memcpy(__dst, (i + 296), sizeof(__dst));
    memcpy(v88, i, 0x128uLL);
    outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dst, __src);
    outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v88, __src);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v88);
    result = outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__dst);
    if (__dst[36] >= v88[36])
    {
LABEL_40:
      ++v7;
      v24 += 296;
      --v25;
      if (v7 != v5)
      {
        goto LABEL_41;
      }

      v7 = v5;
      v9 = v82;
      goto LABEL_51;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__src, (i + 296), sizeof(__src));
    memcpy((i + 296), i, 0x128uLL);
    memcpy(i, __src, 0x128uLL);
    if (!v26)
    {
      goto LABEL_40;
    }

    ++v26;
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x2667538A0]();
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1();
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
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

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1()
{
  result = lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1;
  if (!lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1)
  {
    type metadata accessor for Insecure.SHA1();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1);
  }

  return result;
}

__n128 partial apply for closure #4 in static UUID.v5(customNamespace:inputs:)(__n128 *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 - a1 >= 16)
    {
      v3 = *(v2 + 16);
      result = *a1;
      *v3 = *a1;
      v3[1].n128_u8[0] = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID.CustomNamespace and conformance UUID.CustomNamespace()
{
  result = lazy protocol witness table cache variable for type UUID.CustomNamespace and conformance UUID.CustomNamespace;
  if (!lazy protocol witness table cache variable for type UUID.CustomNamespace and conformance UUID.CustomNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID.CustomNamespace and conformance UUID.CustomNamespace);
  }

  return result;
}

uint64_t MLS.NegativeDeliveryOperation.message.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 58);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return outlined init with copy of MLS.OutgoingEventState?(v7, &v6, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
}

uint64_t MLS.NegativeDeliveryOperation.group.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t MLS.NegativeDeliveryOperation.originalEventIdentifier.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t MLS.NegativeDeliveryOperation.context.getter@<X0>(void *a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context;
  v4 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context);
  v3 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 8);
  v5 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 16);
  v6 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 24);
  v7 = *(v2 + 32);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  outlined copy of Data?(v5, v6);
}

uint64_t MLS.NegativeDeliveryOperation.triggeringError.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t MLS.NegativeDeliveryOperation.__allocating_init(message:group:originalEventIdentifier:triggeringError:context:featureFlagsStore:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  v27 = a7[1];
  v28 = *a7;
  v20 = *(a7 + 4);
  v21 = *a8;
  Logger.init(subsystem:category:)();
  v22 = a1[1];
  *(v19 + 16) = *a1;
  *(v19 + 32) = v22;
  *(v19 + 48) = a1[2];
  *(v19 + 58) = *(a1 + 42);
  *(v19 + 80) = a2;
  *(v19 + 88) = a3;
  *(v19 + 96) = a4;
  *(v19 + 104) = a5;
  v23 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  v24 = type metadata accessor for MLS.MLSError();
  (*(*(v24 - 8) + 32))(v19 + v23, a6, v24);
  v25 = v19 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context;
  *v25 = v28;
  *(v25 + 16) = v27;
  *(v25 + 32) = v20;
  *(v19 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_featureFlagsStore) = v21;
  return v19;
}

uint64_t MLS.NegativeDeliveryOperation.init(message:group:originalEventIdentifier:triggeringError:context:featureFlagsStore:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8)
{
  v22 = a7[1];
  v23 = *a7;
  v15 = *(a7 + 4);
  v16 = *a8;
  Logger.init(subsystem:category:)();
  v17 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v17;
  *(v8 + 48) = a1[2];
  *(v8 + 58) = *(a1 + 42);
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  v18 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  v19 = type metadata accessor for MLS.MLSError();
  (*(*(v19 - 8) + 32))(v8 + v18, a6, v19);
  v20 = v8 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context;
  *v20 = v23;
  *(v20 + 16) = v22;
  *(v20 + 32) = v15;
  *(v8 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_featureFlagsStore) = v16;
  return v8;
}

uint64_t MLS.NegativeDeliveryOperation.isDisabled.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_featureFlagsStore);
  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(3u), (v4 & 1) == 0))
  {
    v11[3] = &type metadata for SMAFeatureFlagsKey;
    v11[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
    LOBYTE(v11[0]) = 3;

    v10 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);

    if ((v10 & 1) == 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(*(v2 + 56) + v3))
  {
    return 0;
  }

LABEL_4:

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context), *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 8), v11);
    _os_log_impl(&dword_264F1F000, v5, v6, "KeyUpdateOperation key roll check disabled { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  return 1;
}

uint64_t MLS.NegativeDeliveryOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[112] = v3;
  v4[111] = a2;
  v4[110] = a1;
  v6 = type metadata accessor for UUID();
  v4[113] = v6;
  v7 = *(v6 - 8);
  v4[114] = v7;
  v8 = *(v7 + 64) + 15;
  v4[115] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Group.Group.SignPublicApplicationMessageInput();
  v4[116] = v9;
  v10 = *(v9 - 8);
  v4[117] = v10;
  v11 = *(v10 + 64) + 15;
  v4[118] = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.Message();
  v4[119] = v12;
  v13 = *(v12 - 8);
  v4[120] = v13;
  v14 = *(v13 + 64) + 15;
  v4[121] = swift_task_alloc();
  v15 = type metadata accessor for MetricCollector.Event();
  v4[122] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v17 = type metadata accessor for MLS.DeliveryNotificationStatus();
  v4[125] = v17;
  v18 = *(v17 - 8);
  v4[126] = v18;
  v19 = *(v18 + 64) + 15;
  v4[127] = swift_task_alloc();
  v20 = type metadata accessor for MLS.MlsClientFailureReason();
  v4[128] = v20;
  v21 = *(v20 - 8);
  v4[129] = v21;
  v22 = *(v21 + 64) + 15;
  v4[130] = swift_task_alloc();
  v23 = type metadata accessor for String.Encoding();
  v4[131] = v23;
  v24 = *(v23 - 8);
  v4[132] = v24;
  v25 = *(v24 + 64) + 15;
  v4[133] = swift_task_alloc();
  v4[134] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v26 = static MLSActor.shared;
  v4[135] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:), v26, 0);
}

uint64_t MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v80 = v0;
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 896);
  *(v0 + 872) = *(v0 + 1072);
  v5 = v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context;
  v6 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context);
  *(v0 + 1088) = v6;
  v7 = *(v5 + 8);
  *(v0 + 1096) = v7;
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);

  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;
  *(v0 + 1104) = v10;
  *(v0 + 1112) = v11;
  v13 = *(v2 + 8);
  v13(v1, v3);
  if (v12 >> 60 == 15)
  {
    v14 = *(v0 + 1072);

    lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
    swift_allocError();
    *v15 = 14;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    swift_willThrow();
LABEL_5:
    v23 = *(v0 + 1064);
    v24 = *(v0 + 1040);
    v25 = *(v0 + 1016);
    v26 = *(v0 + 992);
    v27 = *(v0 + 984);
    v28 = *(v0 + 968);
    v29 = *(v0 + 944);
    v30 = *(v0 + 920);

    v31 = *(v0 + 8);

    return v31();
  }

  v16 = *(v0 + 1064);
  v17 = *(v0 + 1048);
  static String.Encoding.utf8.getter();
  v72 = v7;
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;
  *(v0 + 1120) = v18;
  *(v0 + 1128) = v19;
  v13(v16, v17);
  if (v20 >> 60 == 15)
  {
    v21 = *(v0 + 1072);

    lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
    swift_allocError();
    *v22 = 15;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    swift_willThrow();
    outlined consume of Data?(v10, v12);
    goto LABEL_5;
  }

  v68 = v6;
  v73 = (v0 + 680);
  v74 = v20;
  v33 = *(v0 + 1040);
  v34 = *(v0 + 1032);
  v75 = v18;
  v35 = *(v0 + 1016);
  v36 = *(v0 + 1008);
  v69 = *(v0 + 1024);
  v70 = *(v0 + 1000);
  v71 = *(v0 + 896);
  v37 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  *(v0 + 1136) = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  outlined copy of Data._Representation(v10, v12);
  v67 = v37;
  MLS.MLSError.mlsClientFailureReason.getter();
  v38 = MLS.MlsClientFailureReason.rawValue.getter();
  (*(v34 + 8))(v33, v69);
  static MLS.MlsClientFailureReason.invalidCredential.getter();
  LOWORD(v37) = MLS.MlsClientFailureReason.rawValue.getter();
  (*(v36 + 8))(v35, v70);
  *(v0 + 680) = v75;
  *(v0 + 688) = v74;
  *(v0 + 696) = 1;
  *(v0 + 704) = v10;
  *(v0 + 712) = v12;
  *(v0 + 720) = xmmword_2651B5F50;
  *(v0 + 736) = v38 | (v37 << 16);
  v39 = *(v0 + 696);
  *(v0 + 616) = *(v0 + 680);
  *(v0 + 632) = v39;
  *(v0 + 648) = *(v0 + 712);
  *(v0 + 660) = *(v0 + 724);
  outlined init with take of MLS.SigningInput.ClientSigningInput(v0 + 616, v0 + 552);
  *(v0 + 1144) = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_logger;
  swift_retain_n();
  outlined copy of Data?(v75, v74);
  outlined init with copy of MLS.EncryptedRCS.SigningInput(v0 + 680, v0 + 744);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 896);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v78[0] = v45;
    *v43 = 136315650;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v42 + 96), *(v42 + 104), v78);
    *(v43 + 12) = 2080;
    *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v72, v78);
    *(v43 + 22) = 2112;
    v46 = type metadata accessor for MLS.MLSError();
    lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
    swift_allocError();
    (*(*(v46 - 8) + 16))(v47, v71 + v67, v46);
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 24) = v48;
    *v44 = v48;
    _os_log_impl(&dword_264F1F000, v40, v41, "NegativeDeliveryOperation signing { identifier: %s, negativeDeliveryID: %s, error: %@ }", v43, 0x20u);
    outlined destroy of NSObject?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v44, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v45, -1, -1);
    MEMORY[0x266755550](v43, -1, -1);
  }

  v49 = *(v0 + 992);
  v50 = *(v0 + 984);
  v51 = *(v0 + 976);
  v52 = *(v0 + 944);
  v53 = *(v0 + 888);
  Date.init()();
  v54 = *(v51 + 20);
  v55 = type metadata accessor for Date();
  (*(*(v55 - 8) + 56))(v49 + v54, 1, 1, v55);
  outlined init with take of MetricCollector.Event(v49, v50);
  v56 = *(v0 + 872);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v78[0] = v56;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v58 = *&v78[0];

  *(v0 + 872) = v58;
  v59 = v53[3];
  v60 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v59);
  v61 = *(v0 + 696);
  v78[0] = *v73;
  v78[1] = v61;
  v79[0] = *(v0 + 712);
  *(v79 + 12) = *(v0 + 724);
  MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter(v77);
  outlined destroy of MLS.EncryptedRCS.SigningInput(v73);
  outlined copy of Data._Representation(v75, v74);
  MLS.Group.Group.SignPublicApplicationMessageInput.init(verifiableDerivedContent:messageID:)();
  v62 = *(v60 + 120);
  v76 = (v62 + *v62);
  v63 = v62[1];
  v64 = swift_task_alloc();
  *(v0 + 1152) = v64;
  *v64 = v0;
  v64[1] = MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:);
  v65 = *(v0 + 968);
  v66 = *(v0 + 944);

  return (v76)(v65, v66, v59, v60);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v8 = *v1;
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v4 = v2[135];
    (*(v2[117] + 8))(v2[118], v2[116]);
    v5 = v2[109];

    v6 = MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v4 = v2[135];
    (*(v2[117] + 8))(v2[118], v2[116]);
    v6 = MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

{
  v75 = v0;
  v1 = *(v0 + 1096);
  v68 = *(v0 + 1088);
  v70 = *(v0 + 1144);
  v2 = *(v0 + 968);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  v6 = *(v0 + 896);
  v7._countAndFlagsBits = 0x534C4D7466697753;
  v7._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v7);

  UUID.init()();
  v8 = UUID.uuidString.getter();
  v64 = v9;
  v66 = v8;
  (*(v4 + 8))(v3, v5);
  v10 = *(v6 + 48);
  v11 = *(v6 + 56);
  v12 = *(v6 + 64);
  v13 = *(v6 + 72);
  outlined init with copy of MLS.EncryptedRCS.SigningInput(v0 + 680, v0 + 808);
  outlined copy of MLS.AllMember();
  v14 = MLS.Group.GroupInfo.rawRepresentation.getter();
  *(v0 + 200) = v68;
  *&v73[39] = *(v0 + 584);
  *&v73[23] = *(v0 + 568);
  *&v73[7] = *(v0 + 552);
  *&v73[51] = *(v0 + 596);
  v15 = *(v0 + 872);
  *(v0 + 208) = v1;
  *(v0 + 216) = v66;
  *(v0 + 224) = v64;
  *(v0 + 232) = v10;
  *(v0 + 240) = v11;
  *(v0 + 248) = v12;
  *(v0 + 256) = v13;
  *(v0 + 257) = *v73;
  *(v0 + 320) = *&v73[63];
  *(v0 + 305) = *&v73[48];
  *(v0 + 289) = *&v73[32];
  *(v0 + 273) = *&v73[16];
  *(v0 + 328) = v14;
  *(v0 + 336) = v16;
  *(v0 + 344) = 0;
  *(v0 + 352) = xmmword_2651B5F50;
  *(v0 + 368) = v15;
  v17 = *(v0 + 200);
  v18 = *(v0 + 216);
  v19 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 32) = v18;
  *(v0 + 16) = v17;
  v20 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 296);
  v21 = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  *(v0 + 80) = v21;
  *(v0 + 64) = v19;
  v22 = *(v0 + 328);
  v23 = *(v0 + 344);
  *(v0 + 176) = *(v0 + 360);
  *(v0 + 160) = v23;
  *(v0 + 144) = v22;
  *(v0 + 128) = v20;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi15_(v0 + 16);
  swift_retain_n();

  outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 376, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v59 = *(v0 + 1136);
    v61 = *(v0 + 1120);
    v62 = *(v0 + 1128);
    v63 = *(v0 + 1104);
    v26 = *(v0 + 1096);
    v27 = *(v0 + 1088);
    v65 = *(v0 + 960);
    v67 = *(v0 + 1112);
    v69 = *(v0 + 952);
    v71 = *(v0 + 968);
    v28 = *(v0 + 896);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v74 = v60;
    *v29 = 136315650;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v28 + 96), *(v28 + 104), &v74);
    *(v29 + 12) = 2080;
    *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v74);
    *(v29 + 22) = 2112;
    v31 = type metadata accessor for MLS.MLSError();
    lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
    swift_allocError();
    (*(*(v31 - 8) + 16))(v32, v28 + v59, v31);
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 24) = v33;
    *v30 = v33;
    _os_log_impl(&dword_264F1F000, v24, v25, "NegativeDeliveryOperation returning operation result { identifier: %s, negativeDeliveryID: %s, error: %@ }", v29, 0x20u);
    outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v30, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v60, -1, -1);
    MEMORY[0x266755550](v29, -1, -1);

    outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.EncryptedRCS.SigningInput(v0 + 680);
    outlined consume of Data?(v61, v62);
    outlined consume of Data?(v63, v67);
    (*(v65 + 8))(v71, v69);
  }

  else
  {
    v34 = *(v0 + 1128);
    v35 = *(v0 + 1120);
    v36 = *(v0 + 968);
    v37 = *(v0 + 960);
    v38 = *(v0 + 952);
    outlined consume of Data?(*(v0 + 1104), *(v0 + 1112));
    outlined consume of Data?(v35, v34);
    outlined destroy of MLS.EncryptedRCS.SigningInput(v0 + 680);
    outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);

    (*(v37 + 8))(v36, v38);
  }

  v39 = *(v0 + 1064);
  v40 = *(v0 + 1040);
  v41 = *(v0 + 1016);
  v42 = *(v0 + 992);
  v43 = *(v0 + 984);
  v44 = *(v0 + 968);
  v45 = *(v0 + 944);
  v72 = *(v0 + 920);
  v46 = *(v0 + 888);
  v47 = *(v0 + 880);
  v48 = *(v0 + 16);
  v49 = *(v0 + 32);
  v50 = *(v0 + 64);
  *(v47 + 32) = *(v0 + 48);
  *(v47 + 48) = v50;
  *v47 = v48;
  *(v47 + 16) = v49;
  v51 = *(v0 + 80);
  v52 = *(v0 + 96);
  v53 = *(v0 + 128);
  *(v47 + 96) = *(v0 + 112);
  *(v47 + 112) = v53;
  *(v47 + 64) = v51;
  *(v47 + 80) = v52;
  v54 = *(v0 + 144);
  v55 = *(v0 + 160);
  v56 = *(v0 + 176);
  *(v47 + 176) = *(v0 + 192);
  *(v47 + 144) = v55;
  *(v47 + 160) = v56;
  *(v47 + 128) = v54;
  *(v47 + 184) = 0u;
  *(v47 + 200) = 0u;
  *(v47 + 216) = 0u;
  *(v47 + 232) = 0u;
  *(v47 + 248) = 0;
  *(v47 + 256) = 2;
  *(v47 + 264) = 1;
  *(v47 + 352) = 0;
  *(v47 + 320) = 0u;
  *(v47 + 336) = 0u;
  *(v47 + 288) = 0u;
  *(v47 + 304) = 0u;
  *(v47 + 272) = 0u;
  *(v47 + 360) = 3;
  outlined init with copy of ServerBag.MLS(v46, v47 + 368);
  *(v47 + 408) = 0;
  *(v47 + 416) = *(v0 + 872);
  *(v47 + 424) = 0;
  *(v47 + 432) = 0;

  v57 = *(v0 + 8);

  return v57();
}

{
  v1 = v0[141];
  v2 = v0[140];
  outlined consume of Data?(v0[138], v0[139]);
  outlined consume of Data?(v2, v1);
  outlined destroy of MLS.EncryptedRCS.SigningInput((v0 + 85));
  v3 = v0[145];
  v4 = v0[133];
  v5 = v0[130];
  v6 = v0[127];
  v7 = v0[124];
  v8 = v0[123];
  v9 = v0[121];
  v10 = v0[118];
  v11 = v0[115];

  v12 = v0[1];

  return v12();
}