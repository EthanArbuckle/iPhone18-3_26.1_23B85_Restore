void _s15SecureMessaging18rethrowIfWrongType_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36[2] = a5;
  v37 = a4;
  v36[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v36[0] = v36 - v16;
  v17 = *(a6 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v36 - v23;
  a1(v22);
  if (v9)
  {
    v42 = v9;
    v25 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {

      (*(v17 + 32))(v21, v24, a6);
      v26 = v37;
      if (v37)
      {
        v27 = Error.readableDescription.getter(a6, *(*(a8 + 8) + 8));
        v26(v27);
      }

      (*(v17 + 16))(a9, v21, a6);
      v28 = *(*(a8 + 8) + 8);
      swift_willThrowTypedImpl();
      (*(v17 + 8))(v21, a6);
      v29 = v42;
    }

    else
    {

      swift_getErrorValue();
      v30 = Error.readableDescription.getter(v40, v41);
      if (v37)
      {
        (v37)(v30, v31);
      }

      v32 = v36[0];
      (*(a8 + 88))(a6, a8);
      swift_getErrorValue();
      v33 = Error.readableDescription.getter(v38, v39);
      (*(a8 + 104))(v32, v33, v34, a6, a8);
      v35 = *(*(a8 + 8) + 8);
      swift_willThrowTypedImpl();
      v29 = v9;
    }
  }
}

uint64_t asyncRethrowIfWrongType<A, B, C>(_:catching:as:elseAs:log:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v10[18] = v24;
  v10[19] = v25;
  v10[16] = v22;
  v10[17] = v23;
  v10[14] = a7;
  v10[15] = a8;
  v10[12] = a5;
  v10[13] = a6;
  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
  v10[20] = swift_task_alloc();
  v13 = *(v23 - 8);
  v10[21] = v13;
  v14 = *(v13 + 64) + 15;
  v10[22] = swift_task_alloc();
  v10[23] = swift_task_alloc();
  v15 = *(v22 - 8);
  v10[24] = v15;
  v16 = *(v15 + 64) + 15;
  v10[25] = swift_task_alloc();
  v10[26] = swift_task_alloc();
  v10[27] = swift_task_alloc();
  v10[28] = swift_task_alloc();
  v10[29] = swift_task_alloc();
  v20 = (a2 + *a2);
  v17 = a2[1];
  v18 = swift_task_alloc();
  v10[30] = v18;
  *v18 = v10;
  v18[1] = asyncRethrowIfWrongType<A, B, C>(_:catching:as:elseAs:log:);

  return v20(a1);
}

uint64_t asyncRethrowIfWrongType<A, B, C>(_:catching:as:elseAs:log:)()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](asyncRethrowIfWrongType<A, B, C>(_:catching:as:elseAs:log:), 0, 0);
  }

  else
  {
    v5 = v3[28];
    v4 = v3[29];
    v7 = v3[26];
    v6 = v3[27];
    v8 = v3[25];
    v10 = v3[22];
    v9 = v3[23];
    v11 = v3[20];

    v12 = v3[1];

    return v12();
  }
}

{
  v1 = *(v0 + 248);
  *(v0 + 64) = v1;
  v2 = *(v0 + 232);
  v3 = *(v0 + 128);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 248);
  if (v5)
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 232);
    v9 = *(v0 + 192);
    v10 = *(v0 + 128);
    v11 = *(v0 + 112);

    v12 = *(v9 + 32);
    v12(v7, v8, v10);
    if (v11)
    {
      v13 = *(v0 + 224);
      v14 = *(v0 + 120);
      v15 = *(v0 + 112);
      v16 = Error.readableDescription.getter(*(v0 + 128), *(*(*(v0 + 144) + 8) + 8));
      v15(v16);
    }

    v17 = *(v0 + 144);
    (*(*(v0 + 192) + 16))(*(v0 + 216), *(v0 + 224), *(v0 + 128));
    v18 = *(*(v17 + 8) + 8);
    v19 = _getErrorEmbeddedNSError<A>(_:)();
    v20 = *(v0 + 216);
    if (v19)
    {
      (*(*(v0 + 192) + 8))(*(v0 + 216), *(v0 + 128));
    }

    else
    {
      v65 = *(v0 + 128);
      swift_allocError();
      v12(v66, v20, v65);
    }

    v67 = *(v0 + 224);
    v68 = *(v0 + 192);
    v69 = *(v0 + 128);
    swift_willThrow();
    (*(v68 + 8))(v67, v69);
    v70 = *(v0 + 64);
  }

  else
  {
    v21 = *(v0 + 184);
    v22 = *(v0 + 136);

    *(v0 + 72) = v6;
    v23 = v6;
    if (swift_dynamicCast())
    {
      v25 = *(v0 + 176);
      v24 = *(v0 + 184);
      v26 = *(v0 + 168);
      v27 = *(v0 + 152);
      v28 = *(v0 + 136);
      v29 = *(v0 + 112);

      (*(v26 + 32))(v25, v24, v28);
      v30 = Error.readableDescription.getter(v28, v27);
      if (v29)
      {
        v32 = *(v0 + 120);
        (*(v0 + 112))(v30, v31);
      }

      v33 = *(v0 + 208);
      v34 = *(v0 + 176);
      v36 = *(v0 + 152);
      v35 = *(v0 + 160);
      v38 = *(v0 + 136);
      v37 = *(v0 + 144);
      v39 = *(v0 + 128);
      v40 = *(v0 + 96);

      (*(v37 + 88))(v39, v37);
      v41 = Error.readableDescription.getter(v38, v36);
      (*(v37 + 104))(v35, v41, v42, v39, v37);
      v43 = *(*(v37 + 8) + 8);
      v44 = _getErrorEmbeddedNSError<A>(_:)();
      v45 = *(v0 + 208);
      v46 = *(v0 + 192);
      if (v44)
      {
        (*(v46 + 8))(*(v0 + 208), *(v0 + 128));
      }

      else
      {
        v71 = *(v0 + 128);
        swift_allocError();
        (*(v46 + 32))(v72, v45, v71);
      }

      v74 = *(v0 + 168);
      v73 = *(v0 + 176);
      v75 = *(v0 + 136);
      swift_willThrow();
      (*(v74 + 8))(v73, v75);
      v70 = *(v0 + 72);
    }

    else
    {
      v47 = *(v0 + 112);

      swift_getErrorValue();
      v48 = *(v0 + 16);
      v49 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
      if (v47)
      {
        v51 = *(v0 + 120);
        (*(v0 + 112))(v49, v50);
      }

      v52 = *(v0 + 248);
      v53 = *(v0 + 200);
      v54 = *(v0 + 160);
      v55 = *(v0 + 144);
      v56 = *(v0 + 128);
      v57 = *(v0 + 104);

      (*(v55 + 88))(v56, v55);
      swift_getErrorValue();
      v58 = *(v0 + 40);
      v59 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
      (*(v55 + 104))(v54, v59, v60, v56, v55);
      v61 = *(*(v55 + 8) + 8);
      v62 = _getErrorEmbeddedNSError<A>(_:)();
      v64 = *(v0 + 192);
      v63 = *(v0 + 200);
      if (v62)
      {
        (*(v64 + 8))(*(v0 + 200), *(v0 + 128));
      }

      else
      {
        v76 = *(v0 + 128);
        swift_allocError();
        (*(v64 + 32))(v77, v63, v76);
      }

      v78 = *(v0 + 248);
      swift_willThrow();
      v70 = v78;
    }
  }

  v80 = *(v0 + 224);
  v79 = *(v0 + 232);
  v82 = *(v0 + 208);
  v81 = *(v0 + 216);
  v83 = *(v0 + 200);
  v85 = *(v0 + 176);
  v84 = *(v0 + 184);
  v86 = *(v0 + 160);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t _s15SecureMessaging12asyncRethrow_8catching2as6elseAs3logq0_q0_yYaYbKXK_q_mxxySSYbcSgtYaxYKAA14VersatileErrorRzs0K0R_r1_lF(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v10[18] = v23;
  v10[19] = v24;
  v10[16] = v21;
  v10[17] = v22;
  v10[14] = a8;
  v10[15] = v20;
  v10[12] = a6;
  v10[13] = a7;
  v10[11] = a5;
  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
  v10[20] = swift_task_alloc();
  v13 = *(v21 - 8);
  v10[21] = v13;
  v14 = *(v13 + 64) + 15;
  v10[22] = swift_task_alloc();
  v10[23] = swift_task_alloc();
  v18 = (a2 + *a2);
  v15 = a2[1];
  v16 = swift_task_alloc();
  v10[24] = v16;
  *v16 = v10;
  v16[1] = _s15SecureMessaging12asyncRethrow_8catching2as6elseAs3logq0_q0_yYaYbKXK_q_mxxySSYbcSgtYaxYKAA14VersatileErrorRzs0K0R_r1_lFTQ0_;

  return v18(a1);
}

uint64_t _s15SecureMessaging12asyncRethrow_8catching2as6elseAs3logq0_q0_yYaYbKXK_q_mxxySSYbcSgtYaxYKAA14VersatileErrorRzs0K0R_r1_lFTQ0_()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s15SecureMessaging12asyncRethrow_8catching2as6elseAs3logq0_q0_yYaYbKXK_q_mxxySSYbcSgtYaxYKAA14VersatileErrorRzs0K0R_r1_lFTY1_, 0, 0);
  }

  else
  {
    v5 = v3[22];
    v4 = v3[23];
    v6 = v3[20];

    v7 = v3[1];

    return v7();
  }
}

uint64_t _s15SecureMessaging12asyncRethrow_8catching2as6elseAs3logq0_q0_yYaYbKXK_q_mxxySSYbcSgtYaxYKAA14VersatileErrorRzs0K0R_r1_lFTY1_()
{
  v1 = *(v0 + 200);
  *(v0 + 64) = v1;
  v2 = *(v0 + 184);
  v3 = *(v0 + 128);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    v8 = *(v0 + 144);
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);

    (*(v7 + 32))(v5, v6, v9);
    v11 = Error.readableDescription.getter(v9, v8);
    if (v10)
    {
      v13 = *(v0 + 112);
      (*(v0 + 104))(v11, v12);
    }

    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v18 = *(v0 + 136);
    v47 = *(v0 + 144);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v21 = *(v0 + 88);

    (*(v18 + 88))(v20, v18);
    v22 = Error.readableDescription.getter(v19, v47);
    (*(v18 + 104))(v16, v22, v23, v20, v18);
    v24 = *(*(v18 + 8) + 8);
    swift_willThrowTypedImpl();
    (*(v14 + 8))(v15, v19);
    v25 = *(v0 + 64);
  }

  else
  {
    v26 = *(v0 + 200);
    v27 = *(v0 + 104);

    swift_getErrorValue();
    v28 = *(v0 + 16);
    v29 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
    if (v27)
    {
      v31 = *(v0 + 112);
      (*(v0 + 104))(v29, v30);
    }

    v32 = *(v0 + 200);
    v34 = *(v0 + 152);
    v33 = *(v0 + 160);
    v35 = *(v0 + 136);
    v36 = *(v0 + 120);
    v37 = *(v0 + 96);

    (*(v35 + 88))(v36, v35);
    swift_getErrorValue();
    v38 = *(v0 + 40);
    v39 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
    (*(v35 + 104))(v33, v39, v40, v36, v35);
    v41 = *(*(v35 + 8) + 8);
    swift_willThrowTypedImpl();
    v25 = v32;
  }

  v43 = *(v0 + 176);
  v42 = *(v0 + 184);
  v44 = *(v0 + 160);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t MLS.GroupLoader.uniqueClientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t MLS.GroupLoader.persister.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t MLS.GroupLoader.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.GroupLoader.identifierToSwiftMLSGroup.getter()
{
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t MLS.GroupLoader.identifierToSwiftMLSGroup.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MLS.GroupLoader.__allocating_init(uniqueClientIdentifier:persister:swiftMLSClient:)(uint64_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v13 = *a1;
  v12 = a1[1];
  Logger.init(subsystem:category:)();
  v14 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup;
  *(v11 + v14) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v11 + 16) = v13;
  *(v11 + 24) = v12;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  v15 = a4[1];
  *(v11 + 48) = *a4;
  *(v11 + 64) = v15;
  *(v11 + 73) = *(a4 + 25);
  return v11;
}

uint64_t MLS.GroupLoader.init(uniqueClientIdentifier:persister:swiftMLSClient:)(uint64_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = *a1;
  v9 = a1[1];
  Logger.init(subsystem:category:)();
  v10 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup;
  *(v4 + v10) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 73) = *(a4 + 25);
  v11 = a4[1];
  *(v4 + 48) = *a4;
  *(v4 + 64) = v11;
  return v4;
}

uint64_t MLS.GroupLoader.atomically<A>(with:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[9] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.GroupLoader.atomically<A>(with:do:), v8, 0);
}

void MLS.GroupLoader.atomically<A>(with:do:)()
{
  v1 = *(v0 + 32);
  v2 = (*(**(v0 + 64) + 120))();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v26);
    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v2 + 16);

    _os_log_impl(&dword_264F1F000, v3, v4, "GroupLoader atomically { transactionID: %s, groupCount: %ld }", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 64);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  v12 = *(v9 + 32);
  v13 = *(v9 + 40);
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  *(v0 + 80) = v15;
  v15[2] = v9;
  v15[3] = v11;
  v15[4] = v10;
  v15[5] = v2;
  v16 = *(v13 + 8);

  v25 = v16 + *v16;
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = MLS.GroupLoader.atomically<A>(with:do:);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);
  v23 = *(v0 + 16);
  v24 = *(v0 + 24);
  v28 = ObjectType;
  v29 = v13;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.GroupLoader.atomically<A>(with:do:)()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[9];

    return MEMORY[0x2822009F8](MLS.GroupLoader.atomically<A>(with:do:), v4, 0);
  }

  else
  {
    v5 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t closure #1 in MLS.GroupLoader.atomically<A>(with:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.GroupLoader.atomically<A>(with:do:), v5, 0);
}

uint64_t closure #1 in MLS.GroupLoader.atomically<A>(with:do:)()
{
  v21 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  swift_retain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v20);
    *(v11 + 12) = 2048;
    v13 = *((*(*v10 + 120))() + 16);

    *(v11 + 14) = v13;

    *(v11 + 22) = 2048;
    *(v11 + 24) = *(v7 + 16);

    _os_log_impl(&dword_264F1F000, v4, v5, "GroupLoader atomically rolling back { transactionID: %s, countBeforeRollback: %ld, countRollingBackTo: %ld }", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v14 = v0[2];
  }

  v15 = v0[5];
  v16 = *(*v0[2] + 128);

  v16(v17);
  v18 = v0[1];

  return v18();
}

uint64_t MLS.GroupLoader.save(swiftMLSGroup:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[17] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.GroupLoader.save(swiftMLSGroup:for:), v5, 0);
}

uint64_t MLS.GroupLoader.save(swiftMLSGroup:for:)()
{
  v1 = v0[16];
  v2 = v0[13];
  v0[18] = *(v1 + 32);
  v0[19] = *(v1 + 40);
  v0[20] = swift_getObjectType();
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = MLS.GroupLoader.save(swiftMLSGroup:for:);

  return v9(v3, v4);
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = *(v2 + 24);
  v0[11] = *(v2 + 16);
  v0[12] = v3;
  v4 = *(v1 + 32);

  v15 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = MLS.GroupLoader.save(swiftMLSGroup:for:);
  v7 = v0[23];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[22];

  return (v15)(v13, v7, v11, v12, v0 + 11, v8, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *v1;
  v2[25] = v0;

  v7 = v2[12];

  outlined consume of Data._Representation(v5, v4);
  v8 = v2[17];
  if (v0)
  {
    v9 = MLS.GroupLoader.save(swiftMLSGroup:for:);
  }

  else
  {
    v9 = MLS.GroupLoader.save(swiftMLSGroup:for:);
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  outlined init with copy of ServerBag.MLS(v0[13], (v0 + 2));
  v4 = *(*v1 + 136);

  v5 = v4(v0 + 7);
  specialized Dictionary.subscript.setter((v0 + 2), v3, v2);
  v5(v0 + 7, 0);
  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 200);
  return (*(v0 + 8))();
}

uint64_t MLS.GroupLoader.save(swiftMLSGroup:for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;

  return MEMORY[0x2822009F8](MLS.GroupLoader.save(swiftMLSGroup:for:), v5, 0);
}

uint64_t MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = a5;
  v6[21] = v5;
  v6[18] = a3;
  v6[19] = a4;
  v6[16] = a1;
  v6[17] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6[22] = static MLSActor.shared;
  v9 = swift_task_alloc();
  v6[23] = v9;
  *v9 = v6;
  v9[1] = MLS.GroupLoader.delete(group:throwing:identifier:);

  return MLS.GroupLoader.load(group:)((v6 + 7), a1, a2);
}

uint64_t MLS.GroupLoader.delete(group:throwing:identifier:)()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  else
  {
    v4 = MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 168);
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 56), v0 + 16);
    v5 = v3[3];
    *(v0 + 200) = v5;
    *(v0 + 208) = v3[4];
    v6 = __swift_project_boxed_opaque_existential_1(v3, v5);
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    v7[2] = v0 + 16;
    v8 = swift_allocObject();
    *(v0 + 224) = v8;
    v8[2] = v2;
    v8[3] = v4;
    v8[4] = v1;
    v9 = *(v5 - 8);
    *(v0 + 232) = v9;
    *(v0 + 240) = *(v9 + 64);
    *(v0 + 248) = swift_task_alloc();

    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = MLS.GroupLoader.delete(group:throwing:identifier:);
    v11 = &async function pointer to partial apply for implicit closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:);
    v12 = partial apply for closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  else
  {
    outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 56);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    v15 = *(v0 + 144);
    v16 = *(v0 + 152);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v5 = v15[3];
    *(v0 + 264) = v5;
    *(v0 + 272) = v15[4];
    v6 = __swift_project_boxed_opaque_existential_1(v15, v5);
    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    v7[2] = v14;
    v7[3] = v18;
    v7[4] = v17;
    v8 = swift_allocObject();
    *(v0 + 288) = v8;
    v8[2] = v14;
    v8[3] = v16;
    v8[4] = v13;
    v19 = *(v5 - 8);
    *(v0 + 296) = v19;
    *(v0 + 304) = *(v19 + 64);
    *(v0 + 312) = swift_task_alloc();

    v10 = swift_task_alloc();
    *(v0 + 320) = v10;
    *v10 = v0;
    v10[1] = MLS.GroupLoader.delete(group:throwing:identifier:);
    v11 = &async function pointer to partial apply for implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:);
    v12 = partial apply for closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v10, v11, v7, v6, v12, v8, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 224);
  v11 = *v1;

  if (v0)
  {
    v5 = v2[22];
    v6 = MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  else
  {
    v7 = v2[31];
    v8 = v2[27];
    v9 = v2[22];

    v6 = MLS.GroupLoader.delete(group:throwing:identifier:);
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v3[3];
  v0[33] = v7;
  v0[34] = v3[4];
  v8 = __swift_project_boxed_opaque_existential_1(v3, v7);
  v9 = swift_task_alloc();
  v0[35] = v9;
  v9[2] = v2;
  v9[3] = v6;
  v9[4] = v5;
  v10 = swift_allocObject();
  v0[36] = v10;
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v1;
  v11 = *(v7 - 8);
  v0[37] = v11;
  v0[38] = *(v11 + 64);
  v0[39] = swift_task_alloc();

  v12 = swift_task_alloc();
  v0[40] = v12;
  *v12 = v0;
  v12[1] = MLS.GroupLoader.delete(group:throwing:identifier:);

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v12, &async function pointer to partial apply for implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:), v9, v8, partial apply for closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:), v10, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 288);
  v11 = *v1;

  if (v0)
  {
    v5 = v2[22];
    v6 = MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  else
  {
    v7 = v2[39];
    v8 = v2[35];
    v9 = v2[22];

    v6 = MLS.GroupLoader.delete(group:throwing:identifier:);
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v10 = v0;
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = *(*v1 + 136);

  v5 = v4(v0 + 12);
  specialized Dictionary.subscript.setter(v8, v3, v2);
  v5(v0 + 12, 0);
  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 192);
  return (*(v0 + 8))();
}

{
  v1 = v0[31];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[30] + 15;
  v6 = swift_task_alloc();
  v7 = *(v2 + 32);
  v7(v6, v1, v4);
  v8 = *(*(v3 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0[29] + 8))(v6, v0[25]);
  }

  else
  {
    v9 = v0[25];
    swift_allocError();
    v7(v10, v6, v9);
  }

  v11 = v0[31];
  v12 = v0[27];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v13 = v0[1];

  return v13();
}

{
  v1 = v0[39];
  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[38] + 15;
  v6 = swift_task_alloc();
  v7 = *(v2 + 32);
  v7(v6, v1, v4);
  v8 = *(*(v3 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0[37] + 8))(v6, v0[33]);
  }

  else
  {
    v9 = v0[33];
    swift_allocError();
    v7(v10, v6, v9);
  }

  v11 = v0[39];
  v12 = v0[35];

  v13 = v0[1];

  return v13();
}

uint64_t implicit closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:)()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 72);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = implicit closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:);

  return v8(v2, v3);
}

{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a2;
  return MEMORY[0x2822009F8](implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:), 0, 0);
}

uint64_t implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:)()
{
  v1 = v0[4];
  v3 = v1[4];
  v2 = v1[5];
  ObjectType = swift_getObjectType();
  v5 = v1[3];
  v0[2] = v1[2];
  v0[3] = v5;
  v6 = *(v2 + 96);

  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:);
  v10 = v0[5];
  v9 = v0[6];

  return (v12)(v10, v9, v0 + 2, ObjectType, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 24);

  if (v0)
  {

    return MEMORY[0x2822009F8](implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

void closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
{

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_264F1F000, oslog, v11, a6, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }
}

uint64_t MLS.GroupLoader.LoadedGroupAndOperation.swiftMLSGroup.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v1, v5);
  if (v8)
  {
    v3 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v3;
    *(a1 + 32) = v7;
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v6, a1);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[66] = a6;
  v7[65] = v6;
  v7[63] = a4;
  v7[64] = a5;
  v7[61] = a2;
  v7[62] = a3;
  v7[60] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[67] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[68] = v9;
  v10 = *(v9 + 64) + 15;
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v7[71] = v11;
  v12 = *(v11 - 8);
  v7[72] = v12;
  v13 = *(v12 + 64) + 15;
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  v7[75] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY0_, v14, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY0_()
{
  v1 = *(v0 + 488);
  (*(*(v0 + 512) + 128))(*(v0 + 504));
  v2 = *(v0 + 232);
  v3 = *(v0 + 496);
  if (v2)
  {
    v4 = (v0 + 16);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 192), v0 + 240);
    outlined init with copy of MLS.SwiftMLSGroupProtocol?(v3, v0 + 320);
    if (!*(v0 + 344))
    {
      v17 = *(v0 + 584);
      v18 = *(v0 + 576);
      v19 = *(v0 + 568);
      v51 = *(v0 + 536);
      v20 = *(v0 + 520);
      v22 = *(v0 + 504);
      v21 = *(v0 + 512);
      v23 = *(v0 + 488);
      outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 320);
      outlined init with copy of ServerBag.MLS(v0 + 240, v0 + 16);
      v21[9](v22, v21);
      *(v0 + 640) = v24;
      v21[7](v22, v21);
      *(v0 + 648) = v25;
      v21[10](v22, v21);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(v19, AssociatedConformanceWitness);
      *(v0 + 656) = v27;
      (*(v18 + 8))(v17, v19);
      v28 = *(*v20 + 184);
      v49 = v28 + *v28;
      v29 = v28[1];
      v30 = swift_task_alloc();
      *(v0 + 664) = v30;
      v31 = *(swift_getAssociatedConformanceWitness() + 8);
      *v30 = v0;
      v30[1] = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTQ3_;
      v32 = *(v0 + 520);
      v56 = *(v0 + 552);
      v54 = *(v0 + 536);

      __asm { BRAA            X8, X16 }
    }

    outlined init with take of MLS.KeyUpdatePolicy((v0 + 320), v0 + 280);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 240), v0 + 16);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 280), v0 + 56);
    v5 = 96;
  }

  else
  {
    v4 = (v0 + 104);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 192), v0 + 360);
    outlined init with copy of MLS.SwiftMLSGroupProtocol?(v3, v0 + 440);
    if (!*(v0 + 464))
    {
      v33 = *(v0 + 592);
      v34 = *(v0 + 576);
      v35 = *(v0 + 568);
      v52 = *(v0 + 536);
      v36 = *(v0 + 520);
      v38 = *(v0 + 504);
      v37 = *(v0 + 512);
      v39 = *(v0 + 488);
      outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 440);
      outlined init with copy of ServerBag.MLS(v0 + 360, v0 + 104);
      v37[9](v38, v37);
      *(v0 + 608) = v40;
      v37[7](v38, v37);
      *(v0 + 616) = v41;
      v37[10](v38, v37);
      v42 = swift_getAssociatedConformanceWitness();
      (*(v42 + 16))(v35, v42);
      *(v0 + 624) = v43;
      (*(v34 + 8))(v33, v35);
      v44 = *(*v36 + 192);
      v50 = v44 + *v44;
      v45 = v44[1];
      v46 = swift_task_alloc();
      *(v0 + 632) = v46;
      v47 = *(swift_getAssociatedConformanceWitness() + 8);
      *v46 = v0;
      v46[1] = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTQ1_;
      v48 = *(v0 + 520);
      v57 = *(v0 + 560);
      v55 = *(v0 + 536);

      __asm { BRAA            X8, X16 }
    }

    outlined init with take of MLS.KeyUpdatePolicy((v0 + 440), v0 + 400);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 360), v0 + 104);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 400), v0 + 144);
    v5 = 184;
  }

  *(v0 + v5) = v2;
  v6 = *(v0 + 480);
  v7 = *v4;
  *(v6 + 16) = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  *(v6 + 80) = *(v4 + 80);
  *(v6 + 48) = v9;
  *(v6 + 64) = v10;
  *(v6 + 32) = v8;
  *v6 = v7;
  v11 = *(v0 + 592);
  v12 = *(v0 + 584);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *(*v1 + 624);
  v5 = *(*v1 + 616);
  v6 = *(*v1 + 608);
  v7 = *v1;

  v8 = *(v2 + 600);
  if (v0)
  {
    v9 = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY5_;
  }

  else
  {
    v9 = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY2_;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY2_()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 360));
  *(v0 + 184) = 0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 104);
  *(v1 + 16) = *(v0 + 120);
  v3 = *(v0 + 136);
  v4 = *(v0 + 152);
  v5 = *(v0 + 168);
  *(v1 + 80) = 0;
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  *v1 = v2;
  v6 = *(v0 + 592);
  v7 = *(v0 + 584);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTQ3_()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *(*v1 + 656);
  v5 = *(*v1 + 648);
  v6 = *(*v1 + 640);
  v7 = *v1;

  v8 = *(v2 + 600);
  if (v0)
  {
    v9 = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY6_;
  }

  else
  {
    v9 = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY4_;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY4_()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  *(v0 + 96) = 1;
  v1 = *(v0 + 480);
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  *(v1 + 80) = 1;
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  *v1 = v2;
  v6 = *(v0 + 592);
  v7 = *(v0 + 584);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY5_()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 45);
  (*(v2 + 32))(v4, v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[70];
  v8 = v0[69];

  v9 = v0[1];

  return v9();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY6_()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  (*(v2 + 32))(v4, v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[70];
  v8 = v0[69];

  v9 = v0[1];

  return v9();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = v7;
  v8[12] = v18;
  v8[9] = v16;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[13] = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v10 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v11 = *(v16 - 8);
  v8[16] = v11;
  v12 = *(v11 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  v8[19] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTY0_, v13, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTY0_()
{
  v1 = v0[14];
  v2 = v0[15];
  v17 = v0[13];
  v18 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v20 = v0[7];
  v21 = v0[8];
  v7 = v0[4];
  v19 = v0[5];
  v8 = v0[3];
  v9 = swift_task_alloc();
  v0[20] = v9;
  v9[2] = v3;
  v9[3] = v8;
  v9[4] = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v1, AssociatedConformanceWitness);
  VersatileError.init(type:)(v2, v5, v17);
  v11 = swift_allocObject();
  v0[21] = v11;
  v11[2] = v3;
  v11[3] = v19;
  v11[4] = v6;
  v11[5] = v20;
  v11[6] = v21;

  v12 = swift_task_alloc();
  v0[22] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  *v12 = v0;
  v12[1] = _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTQ1_;
  v13 = v0[18];
  v14 = v0[9];
  v15 = v0[2];
  v23 = v0[13];
  v24 = v0[17];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v15, &_s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFAMyYaYbKXEfu_TATu, v9, v13, _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFySSYbcfU_TA, v11, v14);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 72);
  v8 = *v1;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v9 = v2[19];

    return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTY2_, v9, 0);
  }

  else
  {
    v10 = v2[20];
    v12 = v2[17];
    v11 = v2[18];
    v13 = v2[15];

    v14 = *(v8 + 8);

    return v14();
  }
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTY2_()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  (*(v0[16] + 32))(v0[12], v0[17], v0[9]);

  v4 = v0[1];

  return v4();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFAMyYaYbKXEfu_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.GroupLoader.load(group:)(a1, a3, a4);
}

void _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFySSYbcfU_(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
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
    _os_log_impl(&dword_264F1F000, oslog, v13, "OperationRunner %s failed loading group { identifier: %s, error: %s }", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14[23] = v13;
  v14[24] = a13;
  v14[21] = a11;
  v14[22] = a12;
  v14[19] = a9;
  v14[20] = a10;
  v14[17] = a6;
  v14[18] = a7;
  v14[15] = a4;
  v14[16] = a5;
  v14[13] = a2;
  v14[14] = a3;
  v14[12] = a1;
  v14[25] = *(a12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14[26] = AssociatedTypeWitness;
  v21 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v14[27] = swift_task_alloc();
  v22 = *(a11 - 8);
  v14[28] = v22;
  v23 = *(v22 + 64) + 15;
  v24 = swift_task_alloc();
  v14[29] = v24;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14[30] = static MLSActor.shared;
  v25 = *(*v13 + 184);
  v29 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  v14[31] = v27;
  *v27 = v14;
  v27[1] = _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTQ0_;

  return (v29)(v14 + 2, a2, a3, a4, a5, a6, a7, a8, 0, 0, a11, a12, v24);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTQ0_()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v6 = *v1;

  if (v0)
  {
    v4 = _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY4_;
  }

  else
  {
    v4 = _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY1_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY1_()
{
  v36 = v0;
  outlined init with copy of MLS.SwiftMLSGroupProtocol?(v0 + 16, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 216);
    v3 = *(v0 + 96);
    outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 16);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 56), v3);

    v4 = *(v0 + 8);
LABEL_3:

    return v4();
  }

  v6 = *(v0 + 184);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = *(v0 + 112);
  outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 56);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 104);
    v33 = *(v0 + 112);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315650;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v35);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v35);
    *(v17 + 22) = 2080;
    *(v17 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v33, &v35);
    _os_log_impl(&dword_264F1F000, v10, v11, "GroupLoader %s failed to find group { identifier: %s, group: %s }", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  v19 = *(v0 + 152);
  if (!v19)
  {
    v25 = *(v0 + 208);
    v24 = *(v0 + 216);
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v29 = *(v0 + 168);
    v28 = *(v0 + 176);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 24))(v25, AssociatedConformanceWitness);
    VersatileError.init(type:)(v24, v29, v26);
    swift_willThrowTyped(v27, v29, *(*(v26 + 8) + 8));
    outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 16);
    v31 = *(v0 + 232);
    v32 = *(v0 + 216);

    v4 = *(v0 + 8);
    goto LABEL_3;
  }

  v20 = *(v0 + 160);
  v21 = *(v0 + 152);
  v34 = (v19 + *v19);
  v22 = v19[1];
  v23 = swift_task_alloc();
  *(v0 + 256) = v23;
  *v23 = v0;
  v23[1] = _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTQ2_;

  return v34();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTQ2_()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY3_, v2, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY3_()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v2, AssociatedConformanceWitness);
  VersatileError.init(type:)(v1, v6, v3);
  swift_willThrowTyped(v4, v6, *(*(v3 + 8) + 8));
  outlined destroy of MLS.SwiftMLSGroupProtocol?((v0 + 2));
  v8 = v0[29];
  v9 = v0[27];

  v10 = v0[1];

  return v10();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY4_()
{
  (*(v0[28] + 32))(v0[24], v0[29], v0[21]);
  v1 = v0[29];
  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

uint64_t MLS.GroupLoader.load(group:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[41] = a3;
  v4[42] = v3;
  v4[39] = a1;
  v4[40] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[43] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.GroupLoader.load(group:), v5, 0);
}

uint64_t MLS.GroupLoader.load(group:)()
{
  v1 = (*(**(v0 + 336) + 120))();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 320), *(v0 + 328)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 312);
    outlined init with copy of ServerBag.MLS(*(v1 + 56) + 40 * v2, v0 + 64);

    outlined init with take of MLS.KeyUpdatePolicy((v0 + 64), v4);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 336);

    v9 = v7[4];
    v8 = v7[5];
    ObjectType = swift_getObjectType();
    v11 = v7[3];
    *(v0 + 296) = v7[2];
    *(v0 + 304) = v11;
    v12 = *(v8 + 40);

    v17 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 352) = v14;
    *v14 = v0;
    v14[1] = MLS.GroupLoader.load(group:);
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);

    return v17(v16, v15, v0 + 296, ObjectType, v8);
  }
}

{
  if (*(v0 + 368) >> 60 == 15)
  {
    v1 = *(v0 + 312);
    *(v1 + 32) = 0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    outlined init with copy of MLS.SwiftMLSClientPicker(*(v0 + 336) + 48, v0 + 16);
    if (*(v0 + 56))
    {
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 144);
    }

    else
    {
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 224);
      v4 = *(v0 + 248);
      v5 = *(v0 + 256);
      v6 = __swift_project_boxed_opaque_existential_1((v0 + 224), v4);
      *(v0 + 168) = v4;
      *(v0 + 176) = *(v5 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 224));
    }

    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v8);
    v10 = *(v9 + 88);
    v15 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 384) = v12;
    *v12 = v0;
    v12[1] = MLS.GroupLoader.load(group:);
    v13 = *(v0 + 360);
    v14 = *(v0 + 368);

    return v15(v0 + 104, v13, v14, v8, v9);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 344);
  if (v0)
  {
    v6 = MLS.GroupLoader.load(group:);
  }

  else
  {
    v6 = MLS.GroupLoader.load(group:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  outlined init with copy of MLS.SwiftMLSGroupProtocol?(v0 + 104, v0 + 184);
  v7 = *(*v3 + 136);

  v8 = v7(v0 + 264);
  specialized Dictionary.subscript.setter(v0 + 184, v5, v4);
  v8(v0 + 264, 0);
  outlined consume of Data?(v2, v1);
  v9 = *(v0 + 104);
  v10 = *(v0 + 120);
  *(v6 + 32) = *(v0 + 136);
  *v6 = v9;
  *(v6 + 16) = v10;
  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = *(v0 + 376);
  return (*(v0 + 8))();
}

{
  outlined consume of Data?(v0[45], v0[46]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v1 = v0[49];
  v2 = v0[1];

  return v2();
}

uint64_t MLS.GroupLoader.load(group:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 352);
  v7 = *v3;
  v5[45] = a1;
  v5[46] = a2;
  v5[47] = v2;

  v8 = v4[38];

  v9 = v5[43];
  if (v2)
  {
    v10 = MLS.GroupLoader.load(group:);
  }

  else
  {
    v10 = MLS.GroupLoader.load(group:);
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t MLS.GroupLoader.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  outlined destroy of MLS.SwiftMLSClientPicker(v0 + 48);
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup);

  return v0;
}

uint64_t MLS.GroupLoader.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);
  swift_unknownObjectRelease();
  outlined destroy of MLS.SwiftMLSClientPicker((v0 + 48));
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264FADCA4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in MLS.GroupLoader.atomically<A>(with:do:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.GroupLoader.atomically<A>(with:do:)(v2, v3, v5, v4);
}

uint64_t partial apply for implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:)(a1, v4, v5, v6);
}

uint64_t partial apply for implicit closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:)(a1, v4);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined init with copy of MLS.SwiftMLSGroupProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFAMyYaYbKXEfu_TA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFAMyYaYbKXEfu_(a1, v4, v5, v6);
}

uint64_t sub_264FAE0A4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264FAE150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_264FAE19C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t type metadata accessor for MLS.GroupLoader()
{
  result = type metadata singleton initialization cache for MLS.GroupLoader;
  if (!type metadata singleton initialization cache for MLS.GroupLoader)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.GroupLoader()
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

uint64_t dispatch thunk of MLS.GroupLoader.atomically<A>(with:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 152);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.GroupLoader.save(swiftMLSGroup:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 168);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(*v13 + 184);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v14 + 16) = v20;
  *v20 = v14;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(*v13 + 192);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v14 + 16) = v20;
  *v20 = v14;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupLoader.LoadedGroupAndOperation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.GroupLoader.LoadedGroupAndOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.GroupLoader.LoadedGroupAndOperation(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t *XPCUtils.Connection.__allocating_init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  v13 = specialized XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(a1, a2, a3, a4, a5);

  return v13;
}

uint64_t XPCUtils.Connection.addInterruptionHandlerBlock(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.Connection.addInterruptionHandlerBlock(_:), v4, 0);
}

uint64_t XPCUtils.Connection.addInterruptionHandlerBlock(_:)()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = (v0[7] + *(*v0[7] + 192));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v1;
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v4);
  v7 = v0[1];

  return v7();
}

uint64_t XPCUtils.XPCInterfaceRequest.init(continuation:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v14;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v13;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static XPCActor.shared;
  v9[13] = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v10, 0);
}

uint64_t XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 96);
  v10 = direct field offset for XPCUtils.Connection._nextRequestID;
  v11 = *(v9 + direct field offset for XPCUtils.Connection._nextRequestID);
  *(v8 + 112) = v11;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    *(v9 + v10) = v11 + 1;
    *(v8 + 120) = direct field offset for XPCUtils.Connection.logger;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v12, v13, "XPCConnection told to send { requestID: %ld }", v14, 0xCu);
      MEMORY[0x266755550](v14, -1, -1);
    }

    v15 = *(v8 + 104);
    v21 = *(v8 + 88);
    v22 = *(v8 + 72);
    v23 = *(v8 + 56);
    v24 = *(v8 + 40);

    v16 = _s15SecureMessaging8XPCActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
    v17 = swift_task_alloc();
    *(v8 + 128) = v17;
    *(v17 + 16) = v22;
    *(v17 + 32) = v21;
    *(v17 + 48) = v11;
    *(v17 + 56) = v24;
    *(v17 + 72) = v23;
    v18 = *(MEMORY[0x277D85A40] + 4);
    v19 = swift_task_alloc();
    *(v8 + 136) = v19;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMR);
    *(v8 + 144) = a8;
    *v19 = v8;
    v19[1] = XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
    a6 = partial apply for closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
    a1 = v8 + 16;
    a5 = 0x80000002651E8F70;
    a2 = v15;
    a3 = v16;
    a4 = 0xD00000000000005ELL;
    a7 = v17;
  }

  return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
  }

  else
  {
    v6 = *(v2 + 128);
    v7 = *(v2 + 104);

    v5 = XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[2];
  v2 = v0[12] + v0[15];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCConnection fulfilling with successful result { requestID: %ld }", v6, 0xCu);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v7 = v0[18];
  v8 = v0[9];

  v0[3] = v1;
  swift_dynamicCast();
  v9 = v0[4];
  v10 = v0[1];

  return v10(v9);
}

{
  v1 = v0[16];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

Swift::Int XPCUtils.XPCInterfaceRequest.RequestType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t XPCUtils.XPCInterfaceRequest.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t XPCUtils.XPCInterfaceRequest.resume(returning:)()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t XPCUtils.XPCInterfaceRequest.resume(throwing:)(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = a1;
  }

  else
  {
    lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
    swift_allocError();
    v5 = v4;
    swift_getErrorValue();
    v6 = Error.readableDescription.getter(v9, v10);
    *v5 = 3;
    *(v5 + 8) = v6;
    *(v5 + 16) = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t key path getter for XPCUtils.Connection.interruptionHandlerBlock : <A>XPCUtils.Connection<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + *(**a1 + 192));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v4);
}

uint64_t key path setter for XPCUtils.Connection.interruptionHandlerBlock : <A>XPCUtils.Connection<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *(**a2 + 192));
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v3);
  return outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v8);
}

uint64_t XPCUtils.Connection.interruptionHandlerBlock.getter()
{
  v1 = (v0 + *(*v0 + 192));
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v3);
  return v3;
}

uint64_t XPCUtils.Connection.interruptionHandlerBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 192));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v6);
}

uint64_t (*XPCUtils.Connection.interruptionHandlerBlock.modify())()
{
  v1 = *(*v0 + 192);
  swift_beginAccess();
  return KDSRegistration.XPCCoordinator.uriSupportedState.modify;
}

uint64_t *XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = specialized XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(a1, a2, a3, a4, a5);

  return v8;
}

void XPCUtils.Connection.failAllRunningRequestsAndRestartConnection()(uint64_t a1)
{
  v2 = *v1;
  v82 = *(*v1 + 80);
  v81 = *(v82 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x28223BE20](a1);
  v80 = &v80 - v4;
  v5 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  v86 = *(v5 - 8);
  v6 = *(v86 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v90 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v80 - v15);
  v17 = *(v2 + 184);
  swift_beginAccess();
  v89 = v1;
  v83 = v17;
  v18 = *(v1 + v17);
  v21 = *(v18 + 64);
  v20 = v18 + 64;
  v19 = v21;
  v22 = 1 << *(*(v1 + v17) + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v87 = *(v1 + v17);
  v88 = direct field offset for XPCUtils.Connection.logger;
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  *&v27 = 134217984;
  v84 = v27;
  while (1)
  {
    if (!v24)
    {
      if (v25 <= v26 + 1)
      {
        v31 = v26 + 1;
      }

      else
      {
        v31 = v25;
      }

      v32 = v31 - 1;
      while (1)
      {
        v30 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v30 >= v25)
        {
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
          (*(*(v53 - 8) + 56))(v14, 1, 1, v53);
          v24 = 0;
          goto LABEL_16;
        }

        v24 = *(v20 + 8 * v30);
        ++v26;
        if (v24)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    v30 = v26;
LABEL_15:
    v33 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v34 = v33 | (v30 << 6);
    v35 = *(*(v87 + 48) + 8 * v34);
    v36 = v85;
    outlined init with copy of XPCUtils.XPCInterfaceRequest(*(v87 + 56) + *(v86 + 72) * v34, v85);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
    v38 = *(v37 + 48);
    *v14 = v35;
    outlined init with take of XPCUtils.XPCInterfaceRequest(v36, v14 + v38);
    (*(*(v37 - 8) + 56))(v14, 0, 1, v37);
    v32 = v30;
LABEL_16:
    outlined init with take of (key: Int, value: XPCUtils.XPCInterfaceRequest)?(v14, v16);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
    if ((*(*(v39 - 8) + 48))(v16, 1, v39) == 1)
    {
      break;
    }

    v26 = v32;
    v40 = *v16;
    outlined init with take of XPCUtils.XPCInterfaceRequest(v16 + *(v39 + 48), v90);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = v84;
      *(v43 + 4) = v40;
      _os_log_impl(&dword_264F1F000, v41, v42, "XPCConnection failing request due to interruption event { requestID: %ld }", v43, 0xCu);
      MEMORY[0x266755550](v43, -1, -1);
    }

    lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
    v44 = swift_allocError();
    v46 = v45;
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;

    *v46 = 0;
    v93 = v44;
    v47 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {

      aBlock[0] = v44;
      v28 = v44;
    }

    else
    {
      lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
      v48 = swift_allocError();
      v50 = v49;
      swift_getErrorValue();
      v51 = Error.readableDescription.getter(v91, v92);
      *v50 = 3;
      *(v50 + 8) = v51;
      *(v50 + 16) = v52;
      aBlock[0] = v48;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
    v29 = v90;
    CheckedContinuation.resume(throwing:)();
    outlined destroy of XPCUtils.XPCInterfaceRequest(v29);
  }

  v54 = v89;
  v55 = v83;
  swift_beginAccess();
  if (*(*(v54 + v55) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = *(v54 + v55);
    *(v54 + v55) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMd, &_ss17_NativeDictionaryVySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMR);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v54 + v55) = v93;
  }

  swift_endAccess();
  v57 = *(v54 + direct field offset for XPCUtils.Connection.listenerEndpoint);
  if (v57)
  {
    v58 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  }

  else
  {
    v59 = *(v54 + direct field offset for XPCUtils.Connection.machServiceName);
    v60 = *(v54 + direct field offset for XPCUtils.Connection.machServiceName + 8);
    v61 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v62 = MEMORY[0x266754510](v59, v60);
    v58 = [v61 initWithMachServiceName:v62 options:0];
  }

  v63 = *(v54 + direct field offset for XPCUtils.Connection.queue);
  v64 = v58;
  [v64 _setQueue_];
  [v64 setRemoteObjectInterface_];
  aBlock[4] = partial apply for closure #1 in XPCUtils.Connection.failAllRunningRequestsAndRestartConnection();
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_32;
  v65 = _Block_copy(aBlock);

  [v64 setInterruptionHandler_];
  _Block_release(v65);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_264F1F000, v66, v67, "XPCConnection starting new connection after interrupt", v68, 2u);
    MEMORY[0x266755550](v68, -1, -1);
  }

  [v64 resume];
  v69 = direct field offset for XPCUtils.Connection.connection;
  v70 = *(v54 + direct field offset for XPCUtils.Connection.connection);
  *(v54 + direct field offset for XPCUtils.Connection.connection) = v64;
  v71 = *(v54 + direct field offset for XPCUtils.Connection._nextConnectionID);
  if (__OFADD__(v71, 1))
  {
LABEL_35:
    __break(1u);
    return;
  }

  *(v54 + direct field offset for XPCUtils.Connection._nextConnectionID) = v71 + 1;
  *(v54 + direct field offset for XPCUtils.Connection.connectionID) = v71;
  [v70 setInterruptionHandler_];
  [v70 setInvalidationHandler_];
  [v70 invalidate];
  v72 = [*(v54 + v69) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v73 = v80;
  v74 = v82;
  swift_dynamicCast();
  v75 = *(*v54 + 176);
  swift_beginAccess();
  (*(v81 + 40))(v54 + v75, v73, v74);
  swift_endAccess();
  v76 = v54 + *(*v54 + 192);
  swift_beginAccess();
  v77 = *v76;
  if (*v76)
  {
    v78 = *(v76 + 8);

    v77(v79);

    outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v77);
  }

  else
  {

    v70 = v64;
  }
}

char *XPCUtils.Connection.deinit()
{
  v1 = v0;
  v51 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = *(v9 + 16);
  v52 = direct field offset for XPCUtils.Connection.logger;
  v45 = v16;
  v15(&v39 - v13, &v1[direct field offset for XPCUtils.Connection.logger]);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_264F1F000, v17, v18, "XPCConnection deinit", v19, 2u);
    MEMORY[0x266755550](v19, -1, -1);
  }

  v20 = *(v9 + 8);
  v41 = v9 + 8;
  v42 = v20;
  v21 = v45;
  v20(v14, v45);
  v43 = direct field offset for XPCUtils.Connection.connection;
  v22 = *&v1[direct field offset for XPCUtils.Connection.connection];
  v40 = direct field offset for XPCUtils.Connection.queue;
  v23 = *&v1[direct field offset for XPCUtils.Connection.queue];
  (v15)(v12, &v1[v52], v21);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v12, v21);
  *(v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = partial apply for closure #1 in XPCUtils.Connection.deinit;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v26 = _Block_copy(aBlock);
  v27 = v22;
  v28 = v23;
  v29 = v44;
  static DispatchQoS.unspecified.getter();
  v53 = MEMORY[0x277D84F90];
  _s15SecureMessaging8XPCActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v30 = v48;
  v31 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x266754870](0, v29, v30, v26);
  _Block_release(v26);

  (*(v49 + 8))(v30, v31);
  (*(v46 + 8))(v29, v47);

  v42(&v1[v52], v21);

  v32 = *&v1[direct field offset for XPCUtils.Connection.machServiceName + 8];

  v33 = *&v1[direct field offset for XPCUtils.Connection.jsonDecoder];

  v34 = *&v1[direct field offset for XPCUtils.Connection.jsonEncoder];

  (*(*(*(v51 + 80) - 8) + 8))(&v1[*(*v1 + 176)]);
  v35 = *&v1[*(*v1 + 184)];

  v36 = &v1[*(*v1 + 192)];
  v37 = v36[1];
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(*v36);
  return v1;
}

id closure #1 in XPCUtils.Connection.deinit(uint64_t a1, void *a2)
{
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCConnection invalidating due to deinit", v5, 2u);
    MEMORY[0x266755550](v5, -1, -1);
  }

  return [a2 invalidate];
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t XPCUtils.Connection.__deallocating_deinit()
{
  XPCUtils.Connection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(char *, uint64_t (*)(uint64_t a1, uint64_t a2, unint64_t a3), void *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a8;
  v37 = a7;
  v38 = a6;
  v14 = *(*a2 + 80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v34 - v21;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = a10;
  v35 = a9;
  a4(a1);
  v24 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
  v25 = *(*a2 + 184);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v22, a3);
  swift_endAccess();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a3;
    _os_log_impl(&dword_264F1F000, v26, v27, "XPCConnection stored and sending request { requestID: %ld }", v28, 0xCu);
    v29 = v28;
    v23 = a10;
    MEMORY[0x266755550](v29, -1, -1);
  }

  v30 = *(*a2 + 176);
  swift_beginAccess();
  (*(v15 + 16))(v18, a2 + v30, v14);
  v31 = swift_allocObject();
  v32 = v35;
  v31[2] = v36;
  v31[3] = v32;
  v31[4] = v23;
  v31[5] = a2;
  v31[6] = a3;

  v38(v18, partial apply for closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v31);

  return (*(v15 + 8))(v18, v14);
}

uint64_t closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a5;
  v26 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

  outlined copy of Data?(a2, a3);
  v19 = one-time initialization token for shared;
  swift_unknownObjectRetain();
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static XPCActor.shared;
  v21 = _s15SecureMessaging8XPCActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = a6;
  v22[5] = a7;
  v23 = v25;
  v22[6] = v26;
  v22[7] = a4;
  v22[8] = v23;
  v22[9] = a2;
  v22[10] = a3;
  v22[11] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v22);
}

uint64_t closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v17;
  v8[9] = v18;
  v8[6] = a8;
  v8[7] = v16;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[10] = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v10 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v11 = *(v17 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static XPCActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v13, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)()
{
  v117 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  outlined copy of Data?(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v116 = v10;
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    if (v6 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    if (v6 >> 60 == 15)
    {
      v12 = 0xC000000000000000;
    }

    else
    {
      v12 = v6;
    }

    outlined copy of Data?(v7, v6);
    v13 = Data.description.getter();
    v15 = v14;
    outlined consume of Data._Representation(v11, v12);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v116);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v4, v5, "XPCConnection received result { requestID: %ld, errorData: %s }", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v17 = v0[6];
  if (v17)
  {
    v18 = v0[6];
    swift_unknownObjectRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[3];
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v21;
      _os_log_impl(&dword_264F1F000, v19, v20, "XPCConnection fullfilling with result { requestID: %ld }", v22, 0xCu);
      MEMORY[0x266755550](v22, -1, -1);
    }

    v23 = v0[2];
    v24 = v0[3];

    XPCUtils.Connection.finish(requestID:with:)(v24, v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = v0[5];
    if (v25 >> 60 == 15)
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = v0[3];
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v28;
        _os_log_impl(&dword_264F1F000, v26, v27, "XPCConnection failing with empty result { requestID: %ld }", v29, 0xCu);
        MEMORY[0x266755550](v29, -1, -1);
      }

      v30 = v0[15];
      v31 = v0[9];
      v32 = v0[10];
      v33 = v0[8];

      lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
      v34 = swift_allocError();
      v36 = v35;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;

      *v36 = 1;
      static XPCUtils.XPCableError.xpcError(underlyingError:)(v34, v33, v31);

      v37 = *(*(v32 + 8) + 8);
      v38 = _getErrorEmbeddedNSError<A>(_:)();
      v39 = v0[15];
      v40 = v0[13];
      if (v38)
      {
        v41 = v38;
        (*(v40 + 8))(v0[15], v0[8]);
      }

      else
      {
        v58 = v0[8];
        v41 = swift_allocError();
        (*(v40 + 32))(v59, v39, v58);
      }

      v60 = v0[2];
      XPCUtils.Connection.fail(requestID:with:)(v0[3], v41);
    }

    else
    {
      outlined copy of Data._Representation(v0[4], v25);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v0[3];
        v45 = swift_slowAlloc();
        *v45 = 134217984;
        *(v45 + 4) = v44;
        _os_log_impl(&dword_264F1F000, v42, v43, "XPCConnection decoding error data { requestID: %ld }", v45, 0xCu);
        MEMORY[0x266755550](v45, -1, -1);
      }

      v109 = v0[19];
      v111 = v0[21];
      v46 = v0[12];
      v114 = v0[13];
      v47 = v0[11];
      v107 = v0[10];
      v108 = v0[20];
      v48 = v0[8];
      v49 = v0[9];
      v50 = v0[7];
      v51 = v0[4];
      v52 = v0[5];
      v53 = v0[2];

      v54 = swift_task_alloc();
      v54[2] = v50;
      v54[3] = v48;
      v54[4] = v49;
      v54[5] = v53;
      v54[6] = v51;
      v54[7] = v52;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(v47, AssociatedConformanceWitness);
      VersatileError.init(type:)(v46, v48, v107);
      _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #6 in closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v54, v108, 0, 0, v48, v48, v107);
      v56 = *(v114 + 8);
      v56(v108, v48);
      v57 = v0[13];
      v61 = v0[21];
      v62 = v0[18];
      v63 = v0[8];

      v64 = *(v57 + 16);
      v64(v62, v61, v63);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v0[18];
      if (v67)
      {
        v113 = v66;
        v69 = v0[17];
        v110 = v0[10];
        v70 = v0[8];
        v71 = v0[3];
        v72 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *v72 = 134218242;
        *(v72 + 4) = v71;
        *(v72 + 12) = 2112;
        v115 = v64;
        v64(v69, v68, v70);
        v73 = *(*(v110 + 8) + 8);
        v74 = _getErrorEmbeddedNSError<A>(_:)();
        v75 = v0[17];
        if (v74)
        {
          v56(v0[17], v0[8]);
        }

        else
        {
          v88 = v0[13];
          v89 = v0[8];
          swift_allocError();
          (*(v88 + 32))(v90, v75, v89);
        }

        v91 = v0[18];
        v92 = v0[8];
        v93 = _swift_stdlib_bridgeErrorToNSError();
        v56(v91, v92);
        *(v72 + 14) = v93;
        *v112 = v93;
        _os_log_impl(&dword_264F1F000, v65, v113, "XPCConnection failing with error { requestID: %ld, error: %@ }", v72, 0x16u);
        outlined destroy of NSObject?(v112, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v112, -1, -1);
        MEMORY[0x266755550](v72, -1, -1);

        v64 = v115;
      }

      else
      {
        v87 = v0[8];

        v56(v68, v87);
      }

      v94 = v0[10];
      v64(v0[16], v0[21], v0[8]);
      v95 = *(*(v94 + 8) + 8);
      v96 = _getErrorEmbeddedNSError<A>(_:)();
      v97 = v0[16];
      if (v96)
      {
        v98 = v96;
        v56(v0[16], v0[8]);
      }

      else
      {
        v99 = v0[13];
        v100 = v0[8];
        v98 = swift_allocError();
        (*(v99 + 32))(v101, v97, v100);
      }

      v102 = v0[21];
      v103 = v0[8];
      v105 = v0[4];
      v104 = v0[5];
      v106 = v0[2];
      XPCUtils.Connection.fail(requestID:with:)(v0[3], v98);
      outlined consume of Data?(v105, v104);

      v56(v102, v103);
    }
  }

  v77 = v0[20];
  v76 = v0[21];
  v79 = v0[18];
  v78 = v0[19];
  v81 = v0[16];
  v80 = v0[17];
  v83 = v0[14];
  v82 = v0[15];
  v84 = v0[12];

  v85 = v0[1];

  return v85();
}

void XPCUtils.Connection.finish(requestID:with:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v2 + 184);
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v8);
  swift_endAccess();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of NSObject?(v8, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v15, v16, "XPCConnection not tracking requestID. Failing finish operation { requestID: %ld }", v17, 0xCu);
      MEMORY[0x266755550](v17, -1, -1);
    }
  }

  else
  {
    outlined init with take of XPCUtils.XPCInterfaceRequest(v8, v13);
    v18[1] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    outlined destroy of XPCUtils.XPCInterfaceRequest(v13);
  }
}

void XPCUtils.Connection.fail(requestID:with:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v2 + 184);
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v8);
  swift_endAccess();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of NSObject?(v8, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v15, v16, "XPCConnection not tracking requestID. Failing fail operation { requestID: %ld }", v17, 0xCu);
      MEMORY[0x266755550](v17, -1, -1);
    }
  }

  else
  {
    outlined init with take of XPCUtils.XPCInterfaceRequest(v8, v13);
    XPCUtils.XPCInterfaceRequest.resume(throwing:)(a2);
    outlined destroy of XPCUtils.XPCInterfaceRequest(v13);
  }
}

uint64_t closure #1 in XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_264F1F000, v0, v1, "XPCConnection interrupted", v2, 2u);
    MEMORY[0x266755550](v2, -1, -1);
  }

  return XPCUtils.Connection.failAllRunningRequestsAndRestartConnection()();
}

uint64_t *specialized XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = *v5;
  Logger.init(subsystem:category:)();
  *(v5 + direct field offset for XPCUtils.Connection._nextRequestID) = 0;
  *(v5 + direct field offset for XPCUtils.Connection._nextConnectionID) = 1;
  v13 = direct field offset for XPCUtils.Connection.jsonDecoder;
  v14 = type metadata accessor for JSONDecoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v5 + v13) = JSONDecoder.init()();
  v17 = direct field offset for XPCUtils.Connection.jsonEncoder;
  v18 = type metadata accessor for JSONEncoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v5 + v17) = JSONEncoder.init()();
  *(v5 + direct field offset for XPCUtils.Connection.connectionID) = 0;
  v21 = *(*v5 + 184);
  *(v6 + v21) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v22 = (v6 + *(*v6 + 192));
  *v22 = 0;
  v22[1] = 0;
  *(v6 + direct field offset for XPCUtils.Connection.queue) = a1;
  v23 = (v6 + direct field offset for XPCUtils.Connection.machServiceName);
  *v23 = a2;
  v23[1] = a3;
  *(v6 + direct field offset for XPCUtils.Connection.remoteObjectInterface) = a4;
  *(v6 + direct field offset for XPCUtils.Connection.listenerEndpoint) = a5;
  v24 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v25 = a1;
  if (a5)
  {
    v26 = a4;
    v27 = [v24 initWithListenerEndpoint_];
  }

  else
  {

    v28 = a4;
    v29 = MEMORY[0x266754510](a2, a3);

    v27 = [v24 initWithMachServiceName:v29 options:0];
  }

  v30 = *(v6 + direct field offset for XPCUtils.Connection.queue);
  v31 = v27;
  [v31 _setQueue_];
  v32 = v31;
  [v32 setRemoteObjectInterface_];
  *(v6 + direct field offset for XPCUtils.Connection.connection) = v32;
  v33 = [v32 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v34 = *(*v6 + 176);
  v35 = *(v12 + 80);
  swift_dynamicCast();
  v41[4] = partial apply for closure #1 in XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:);
  v41[5] = v6;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 1107296256;
  v41[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v41[3] = &block_descriptor_29;
  v36 = _Block_copy(v41);

  [v32 setInterruptionHandler_];
  _Block_release(v36);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_264F1F000, v37, v38, "XPCConnection starting XPC connection", v39, 2u);
    MEMORY[0x266755550](v39, -1, -1);
  }

  [v32 resume];
  return v6;
}

uint64_t _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264FB25A8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

id partial apply for closure #1 in XPCUtils.Connection.deinit()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in XPCUtils.Connection.deinit(v0 + v2, v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s15SecureMessaging8XPCActorCACScAAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCInterfaceRequest.RequestType and conformance XPCUtils.XPCInterfaceRequest.RequestType()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceRequest.RequestType and conformance XPCUtils.XPCInterfaceRequest.RequestType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceRequest.RequestType and conformance XPCUtils.XPCInterfaceRequest.RequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceRequest.RequestType and conformance XPCUtils.XPCInterfaceRequest.RequestType);
  }

  return result;
}

uint64_t sub_264FB2830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264FB28BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for XPCUtils.XPCInterfaceRequest()
{
  result = type metadata singleton initialization cache for XPCUtils.XPCInterfaceRequest;
  if (!type metadata singleton initialization cache for XPCUtils.XPCInterfaceRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for XPCUtils.XPCInterfaceRequest()
{
  type metadata accessor for CheckedContinuation<XPCUtils.CollaboratorProtocol, Error>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for CheckedContinuation<XPCUtils.CollaboratorProtocol, Error>()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<XPCUtils.CollaboratorProtocol, Error>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<XPCUtils.CollaboratorProtocol, Error>);
    }
  }
}

uint64_t type metadata completion function for XPCUtils.Connection(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_264FB2C28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_264FB2CB0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264FB2CF8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[10];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[9], v3);
  }

  v4 = v0[11];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1)
{
  v14 = *(v1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = *(v1 + 80);
  v10 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, v4, v5, v6, v8, v9, v11, v10);
}

uint64_t partial apply for implicit closure #6 in closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v0[5] + direct field offset for XPCUtils.Connection.jsonDecoder);
  v6 = *(*(v2 + 8) + 16);
  return dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t static KDSRegistration.EncryptedRCS.configuration<A>(provider:simUniqueID:simLabelID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  KDSRegistration.Configuration.init(clientIdentifier:provider:simUniqueID:simLabelID:testPhoneNumber:)(a1, a2, a3, a4, a5, 0, 0, a6);
  swift_unknownObjectRetain();
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.accountKey.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.init(accountKey:hasAccountKeyChanged:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x4B746E756F636361;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B746E756F636361 && a2 == 0xEA00000000007965;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002651E91A0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO30PhoneAuthenticationInfoRequestV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO30PhoneAuthenticationInfoRequestV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMR);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v16 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v8, v9);
  lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v15 = v9;
  v17 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v14, v15);
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys);
  }

  return result;
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO30PhoneAuthenticationInfoRequestV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO30PhoneAuthenticationInfoRequestV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v15[0];
  v11 = v15[1];
  LOBYTE(v15[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  outlined copy of Data._Representation(v12, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined consume of Data._Representation(v12, v11);
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.acsSignature.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.init(acsSignature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616E676953736361 && a2 == 0xEC00000065727574)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v8, v9);
  lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  v13 = v9;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys);
  }

  return result;
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys();
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

uint64_t dispatch thunk of KDSRegistration.EncryptedRCS.Provider.obtainPhoneAuthenticationInfo(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t MLS.NoOpKeyPackageExchanger.retrieveKeyPackage(members:context:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.NoOpKeyPackageExchanger.retrieveKeyPackage(members:context:), v0, 0);
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance MLS.NoOpKeyPackageExchanger<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.NoOpKeyPackageExchanger.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t MLS.SignOperation.input.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 12) = *(v1 + 60);
  v4 = *(v8 + 12);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 44) = v4;
  return outlined init with copy of MLS.SigningInput(v7, &v6);
}

uint64_t MLS.SignOperation.group.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t MLS.SignOperation.context.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);
}

uint64_t MLS.SignOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS13SignOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.SignOperation.__allocating_init(input:group:context:)(_OWORD *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v15 = a4[1];
  v16 = *a4;
  v12 = *(a4 + 4);
  Logger.init(subsystem:category:)();
  v13 = a1[1];
  *(v11 + 16) = *a1;
  *(v11 + 32) = v13;
  *(v11 + 48) = a1[2];
  *(v11 + 60) = *(a1 + 44);
  *(v11 + 80) = a2;
  *(v11 + 88) = a3;
  *(v11 + 96) = v16;
  *(v11 + 112) = v15;
  *(v11 + 128) = v12;
  return v11;
}

uint64_t MLS.SignOperation.init(input:group:context:)(_OWORD *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v11 = a4[1];
  v12 = *a4;
  v8 = *(a4 + 4);
  Logger.init(subsystem:category:)();
  v9 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v9;
  *(v4 + 48) = a1[2];
  *(v4 + 60) = *(a1 + 44);
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 96) = v12;
  *(v4 + 112) = v11;
  *(v4 + 128) = v8;
  return v4;
}

uint64_t MLS.SignOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.SignOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[59] = a2;
  v4[60] = v3;
  v4[58] = a1;
  v6 = type metadata accessor for UUID();
  v4[61] = v6;
  v7 = *(v6 - 8);
  v4[62] = v7;
  v8 = *(v7 + 64) + 15;
  v4[63] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Group.Group.SignPublicApplicationMessageInput();
  v4[64] = v9;
  v10 = *(v9 - 8);
  v4[65] = v10;
  v11 = *(v10 + 64) + 15;
  v4[66] = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.Message();
  v4[67] = v12;
  v13 = *(v12 - 8);
  v4[68] = v13;
  v14 = *(v13 + 64) + 15;
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v15 = type metadata accessor for MetricCollector.Event();
  v4[71] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static MLSActor.shared;
  v4[75] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SignOperation.perform(on:metricCollector:keyPackageResult:), v17, 0);
}

uint64_t MLS.SignOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v52 = v0;
  v1 = v0[60];
  v0[57] = v0[74];
  v2 = *(v1 + 96);
  v0[76] = v2;
  v3 = *(v1 + 104);
  v0[77] = v3;
  v0[78] = OBJC_IVAR____TtCO15SecureMessaging3MLS13SignOperation_logger;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0 + 57;
    v7 = v0[60];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v51);
    *(v8 + 12) = 2080;
    v11 = *(v7 + 32);
    v10 = *(v7 + 40);
    v12 = *(v7 + 56);
    v13 = *(v7 + 64);
    v14 = *(v7 + 72);
    v15 = (*(v7 + 48) >> 60) & 3;
    if (v15)
    {
      v39 = *(v7 + 40);
      if (v15 == 1)
      {
        v43 = *(v7 + 56);
        v45 = *(v7 + 64);
        v16 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
      }

      else
      {
        v16 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
      }
    }

    else
    {
      v40 = *(v7 + 40);
      v41 = *(v7 + 48);
      v44 = *(v7 + 56);
      v46 = *(v7 + 64);
      v48 = *(v7 + 72);
      v16 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v51);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v4, v5, "SignOperation signing data { identifier: %s, input: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
    v6 = v0 + 74;
  }

  v19 = *v6;
  v20 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[66];
  v24 = v0[59];
  v25 = v0[60];
  Date.init()();
  v26 = *(v22 + 20);
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 56))(v20 + v26, 1, 1, v27);
  outlined init with take of MetricCollector.Event(v20, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);

  v0[57] = v19;
  v38 = *(v25 + 16);
  v42 = *(v25 + 32);
  v47 = *(v25 + 48);
  v49 = *(v25 + 64);
  v50 = *(v25 + 72);
  MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter(v0 + 47);
  v29 = v24[3];
  v30 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v29);
  outlined init with copy of ServerBag.MLS((v0 + 47), (v0 + 52));
  outlined copy of Data._Representation(*(v25 + 16), *(v25 + 24));
  MLS.Group.Group.SignPublicApplicationMessageInput.init(verifiableDerivedContent:messageID:)();
  v31 = *(v30 + 120);
  v37 = (v31 + *v31);
  v32 = v31[1];
  v33 = swift_task_alloc();
  v0[79] = v33;
  *v33 = v0;
  v33[1] = MLS.SignOperation.perform(on:metricCollector:keyPackageResult:);
  v34 = v0[70];
  v35 = v0[66];

  return v37(v34, v35, v29, v30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *(*v1 + 528);
  v5 = *(*v1 + 520);
  v6 = *(*v1 + 512);
  v12 = *v1;
  *(*v1 + 640) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 600);
    v8 = *(v2 + 456);

    v9 = MLS.SignOperation.perform(on:metricCollector:keyPackageResult:);
    v10 = v7;
  }

  else
  {
    v10 = *(v2 + 600);
    v9 = MLS.SignOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

{
  v84 = v0;
  v78 = *(v0 + 624);
  v1 = *(v0 + 616);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 480);
  v7._countAndFlagsBits = 0x534C4D7466697753;
  v7._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v7);
  v80 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v81 = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v10 = [v9 UUIDString];

  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v11;

  (*(v4 + 16))(v3, v2, v5);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v73 = (v0 + 200);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 616);
    v15 = *(v0 + 608);
    v16 = *(v0 + 552);
    v17 = *(v0 + 544);
    v18 = *(v0 + 536);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v83 = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v83);
    *(v19 + 12) = 2080;
    lazy protocol witness table accessor for type MLS.Group.Message and conformance MLS.Group.Message(&lazy protocol witness table cache variable for type MLS.Group.Message and conformance MLS.Group.Message, MEMORY[0x277D6AAD8]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v79 = *(v17 + 8);
    v79(v16, v18);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v83);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_264F1F000, v12, v13, "SignOperation signed data { identifier: %s, mlsMessage: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v20, -1, -1);
    MEMORY[0x266755550](v19, -1, -1);
  }

  else
  {
    v25 = *(v0 + 552);
    v26 = *(v0 + 544);
    v27 = *(v0 + 536);

    v79 = *(v26 + 8);
    v79(v25, v27);
  }

  v74 = *(v0 + 624);
  v28 = *(v0 + 616);
  v29 = *(v0 + 608);
  v31 = *(v0 + 496);
  v30 = *(v0 + 504);
  v33 = *(v0 + 480);
  v32 = *(v0 + 488);

  UUID.init()();
  v34 = UUID.uuidString.getter();
  v36 = v35;
  (*(v31 + 8))(v30, v32);
  v37 = *(v33 + 112);
  v38 = *(v33 + 120);
  v39 = *(v0 + 456);
  *(v0 + 200) = v29;
  *(v0 + 208) = v28;
  *(v0 + 216) = v34;
  *(v0 + 224) = v36;
  *(v0 + 232) = v37;
  *(v0 + 240) = v38;
  *(v0 + 248) = v39;
  *(v0 + 256) = v76;
  *(v0 + 264) = v82;
  *(v0 + 272) = v80;
  *(v0 + 280) = v81;
  v40 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v40;
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  v41 = *(v0 + 216);
  *(v0 + 16) = *v73;
  *(v0 + 32) = v41;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi9_(v0 + 16);

  outlined copy of Data?(v37, v38);

  outlined copy of Data._Representation(v80, v81);
  outlined init with copy of MLS.OutgoingApplicationSend<Data>(v73, v0 + 288);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v0 + 616);
    v45 = *(v0 + 608);
    v72 = *(v0 + 544);
    v75 = *(v0 + 536);
    v77 = *(v0 + 560);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v83 = v47;
    *v46 = 136315138;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, &v83);
    _os_log_impl(&dword_264F1F000, v42, v43, "SignOperation returning operation result { identifier: %s }", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x266755550](v47, -1, -1);
    MEMORY[0x266755550](v46, -1, -1);

    outlined destroy of MLS.OutgoingApplicationSend<Data>(v73);

    outlined consume of Data._Representation(v80, v81);
    v49 = v75;
    v48 = v77;
  }

  else
  {
    v50 = *(v0 + 560);
    v51 = *(v0 + 544);
    v52 = *(v0 + 536);

    outlined destroy of MLS.OutgoingApplicationSend<Data>(v73);

    outlined consume of Data._Representation(v80, v81);
    v48 = v50;
    v49 = v52;
  }

  v79(v48, v49);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
  v53 = *(v0 + 584);
  v54 = *(v0 + 576);
  v55 = *(v0 + 560);
  v56 = *(v0 + 552);
  v57 = *(v0 + 528);
  v58 = *(v0 + 504);
  v60 = *(v0 + 464);
  v59 = *(v0 + 472);
  v61 = *(v0 + 16);
  v62 = *(v0 + 32);
  v63 = *(v0 + 64);
  *(v60 + 32) = *(v0 + 48);
  *(v60 + 48) = v63;
  *v60 = v61;
  *(v60 + 16) = v62;
  v64 = *(v0 + 80);
  v65 = *(v0 + 96);
  v66 = *(v0 + 128);
  *(v60 + 96) = *(v0 + 112);
  *(v60 + 112) = v66;
  *(v60 + 64) = v64;
  *(v60 + 80) = v65;
  v67 = *(v0 + 144);
  v68 = *(v0 + 160);
  v69 = *(v0 + 176);
  *(v60 + 176) = *(v0 + 192);
  *(v60 + 144) = v68;
  *(v60 + 160) = v69;
  *(v60 + 128) = v67;
  *(v60 + 184) = 1;
  *(v60 + 224) = 0u;
  *(v60 + 240) = 0u;
  *(v60 + 192) = 0u;
  *(v60 + 208) = 0u;
  *(v60 + 256) = 2;
  *(v60 + 264) = 1;
  *(v60 + 352) = 0;
  *(v60 + 320) = 0u;
  *(v60 + 336) = 0u;
  *(v60 + 288) = 0u;
  *(v60 + 304) = 0u;
  *(v60 + 272) = 0u;
  *(v60 + 360) = 3;
  outlined init with copy of ServerBag.MLS(v59, v60 + 368);
  *(v60 + 408) = 0;
  *(v60 + 416) = *(v0 + 456);
  *(v60 + 424) = 0;
  *(v60 + 432) = 0;

  v70 = *(v0 + 8);

  return v70();
}

{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[66];
  v6 = v0[63];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);

  v7 = v0[1];
  v8 = v0[80];

  return v7();
}

uint64_t MLS.SignOperation.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(v1, v2, v3, v4, v5);
  v7 = *(v0 + 88);

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);

  outlined consume of Data?(v9, v10);

  v12 = OBJC_IVAR____TtCO15SecureMessaging3MLS13SignOperation_logger;
  v13 = type metadata accessor for Logger();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t MLS.SignOperation.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(v1, v2, v3, v4, v5);
  v7 = *(v0 + 88);

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);

  outlined consume of Data?(v9, v10);

  v12 = OBJC_IVAR____TtCO15SecureMessaging3MLS13SignOperation_logger;
  v13 = type metadata accessor for Logger();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = *(*v0 + 48);
  v15 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.SignOperation(uint64_t a1)
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

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.SignOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t protocol witness for MLS.GroupOperation.context.getter in conformance MLS.SignOperation@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 96);
  v3 = *(*v1 + 104);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 120);
  v7 = *(v2 + 128);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  outlined copy of Data?(v5, v6);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.SignOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS13SignOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t outlined init with copy of MLS.OutgoingApplicationSend<Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.OutgoingApplicationSend<Data>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for MLS.SignOperation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.Group.Message and conformance MLS.Group.Message(&lazy protocol witness table cache variable for type MLS.SignOperation and conformance MLS.SignOperation, type metadata accessor for MLS.SignOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.Group.Message and conformance MLS.Group.Message(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MLS.SignOperation()
{
  result = type metadata singleton initialization cache for MLS.SignOperation;
  if (!type metadata singleton initialization cache for MLS.SignOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.SignOperation()
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

uint64_t dispatch thunk of MLS.SignOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
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

uint64_t dispatch thunk of MLS.SignOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t MLS.EncryptGroupNameOperation.groupName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.EncryptGroupNameOperation.group.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MLS.EncryptGroupNameOperation.context.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);
}

uint64_t MLS.EncryptGroupNameOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS25EncryptGroupNameOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.EncryptGroupNameOperation.__allocating_init(groupName:group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  v16 = a5[1];
  v17 = *a5;
  v14 = *(a5 + 4);
  Logger.init(subsystem:category:)();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 48) = v17;
  *(v13 + 64) = v16;
  *(v13 + 80) = v14;
  return v13;
}

uint64_t MLS.EncryptGroupNameOperation.init(groupName:group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v12 = a5[1];
  v13 = *a5;
  v10 = *(a5 + 4);
  Logger.init(subsystem:category:)();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v13;
  *(v5 + 64) = v12;
  *(v5 + 80) = v10;
  return v5;
}

uint64_t MLS.EncryptGroupNameOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[121] = v3;
  v4[120] = a2;
  v4[119] = a1;
  v6 = type metadata accessor for UUID();
  v4[122] = v6;
  v7 = *(v6 - 8);
  v4[123] = v7;
  v8 = *(v7 + 64) + 15;
  v4[124] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v4[125] = v9;
  v10 = *(v9 - 8);
  v4[126] = v10;
  v11 = *(v10 + 64) + 15;
  v4[127] = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.Message();
  v4[128] = v12;
  v13 = *(v12 - 8);
  v4[129] = v13;
  v14 = *(v13 + 64) + 15;
  v4[130] = swift_task_alloc();
  v15 = type metadata accessor for MLS.Group.Group.ChangeRCSGroupNameInput();
  v4[131] = v15;
  v16 = *(v15 - 8);
  v4[132] = v16;
  v17 = *(v16 + 64) + 15;
  v4[133] = swift_task_alloc();
  v18 = type metadata accessor for MetricCollector.Event();
  v4[134] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v4[137] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static MLSActor.shared;
  v4[138] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:), v20, 0);
}

uint64_t MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v29 = v0;
  v1 = v0[121];
  v0[116] = v0[137];
  v2 = *(v1 + 48);
  v0[139] = v2;
  v3 = *(v1 + 56);
  v0[140] = v3;
  v0[141] = OBJC_IVAR____TtCO15SecureMessaging3MLS25EncryptGroupNameOperation_logger;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[121];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v28);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 32), *(v6 + 40), &v28);
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 16), *(v6 + 24), &v28);
    _os_log_impl(&dword_264F1F000, v4, v5, "EncryptGroupNameOperation changing { identifier: %s, group: %s, groupName: %s }", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = v0[137];
  v10 = v0[136];
  v11 = v0[135];
  v12 = v0[134];
  v13 = v0[133];
  v14 = v0[121];
  v15 = v0[120];
  Date.init()();
  v16 = *(v12 + 20);
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v10 + v16, 1, 1, v17);
  outlined init with take of MetricCollector.Event(v10, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v9;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v19 = v28;

  v0[116] = v19;
  v20 = v15[3];
  v21 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v20);
  v0[142] = *(v14 + 16);
  v0[143] = *(v14 + 24);

  MLS.Group.Group.ChangeRCSGroupNameInput.init(newName:)();
  v22 = *(v21 + 224);
  v27 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[144] = v24;
  *v24 = v0;
  v24[1] = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
  v25 = v0[133];

  return (v27)(v0 + 94, v25, v20, v21);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v4 = *(*v1 + 1064);
  v5 = *(*v1 + 1056);
  v6 = *(*v1 + 1048);
  v13 = *v1;
  *(*v1 + 1160) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[140];
    v8 = v2[138];

    v9 = v2[116];

    v10 = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
    v11 = v8;
  }

  else
  {
    v11 = v2[138];
    v10 = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

{
  v101 = v0;
  v93 = (v0 + 200);
  v94 = (v0 + 608);
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 968);
  v5._countAndFlagsBits = 0x534C4D7466697753;
  v5._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v5);
  outlined init with copy of ServerBag.MLS(v0 + 752, v0 + 792);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1120);
    v9 = *(v0 + 1112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v100[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v100);
    *(v10 + 12) = 2080;
    v12 = *(v0 + 816);
    __swift_project_boxed_opaque_existential_1((v0 + 792), v12);
    v13 = *(v12 - 8);
    v14 = *(v13 + 64) + 15;
    swift_task_alloc();
    (*(v13 + 16))();
    v15 = String.init<A>(describing:)();
    v17 = v16;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 792));
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v100);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v6, v7, "EncryptGroupNameOperation changed { identifier: %s, commitOutput: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 792));
  }

  v90 = *(v0 + 1136);
  v91 = *(v0 + 1144);
  v92 = *(v0 + 1128);
  v98 = *(v0 + 1120);
  v89 = *(v0 + 1112);
  v19 = *(v0 + 1040);
  v20 = *(v0 + 1032);
  v21 = *(v0 + 1024);
  v22 = *(v0 + 1016);
  v23 = *(v0 + 1008);
  v79 = *(v0 + 1000);
  v81 = *(v0 + 992);
  v83 = *(v0 + 984);
  v84 = *(v0 + 976);
  v99 = *(v0 + 968);
  v24 = *(v0 + 776);
  v25 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 752), v24);
  (*(v25 + 8))(v24, v25);
  v26 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v96 = v27;
  v97 = v26;
  *(v0 + 1168) = v26;
  *(v0 + 1176) = v27;
  v28 = *(v20 + 8);
  v28(v19, v21);
  v29 = *(v0 + 776);
  v30 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 752), v29);
  (*(v30 + 32))(v29, v30);
  v31 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v88 = v32;
  *(v0 + 1184) = v31;
  v33 = v31;
  *(v0 + 1192) = v32;
  v28(v19, v21);
  v34 = *(v0 + 776);
  v35 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 752), v34);
  v36 = (*(v35 + 40))(v34, v35);
  v95 = v37;
  *(v0 + 1200) = v36;
  *(v0 + 1208) = v37;
  v38 = *(v0 + 776);
  v39 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 752), v38);
  (*(v39 + 16))(v38, v39);
  v40 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v86 = v41;
  v87 = v40;
  *(v0 + 1216) = v40;
  *(v0 + 1224) = v41;
  (*(v23 + 8))(v22, v79);

  UUID.init()();
  v78 = UUID.uuidString.getter();
  v80 = v42;
  (*(v83 + 8))(v81, v84);
  v43 = *(v99 + 64);
  v44 = *(v99 + 72);
  v85 = v43;
  v82 = *(v0 + 928);
  v45 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  outlined copy of Data?(v43, v44);

  outlined copy of Data._Representation(v97, v96);
  v46 = [v45 init];
  v47 = [v46 UUIDString];

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v49;
  v77 = v48;

  v50 = *(v0 + 776);
  v51 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 752), v50);
  v52 = *(v51 + 24);
  outlined copy of Data._Representation(v33, v88);
  outlined copy of Data._Representation(v36, v95);
  v53 = v52(v50, v51);
  *(v0 + 200) = v89;
  *(v0 + 208) = v98;
  *(v0 + 216) = v78;
  *(v0 + 224) = v80;
  *(v0 + 232) = v85;
  *(v0 + 240) = v44;
  *(v0 + 248) = v82;
  *(v0 + 256) = v77;
  *(v0 + 264) = v76;
  *(v0 + 272) = v97;
  *(v0 + 280) = v96;
  *(v0 + 288) = v33;
  *(v0 + 296) = v88;
  *(v0 + 304) = v36;
  *(v0 + 312) = v95;
  *(v0 + 320) = v53;
  *(v0 + 328) = v54;
  *(v0 + 336) = xmmword_2651B5F50;
  *(v0 + 352) = v87;
  *(v0 + 360) = v86;
  v55 = *(v0 + 216);
  *(v0 + 16) = *v93;
  *(v0 + 32) = v55;
  v56 = *(v0 + 232);
  v57 = *(v0 + 248);
  v58 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v58;
  *(v0 + 48) = v56;
  *(v0 + 64) = v57;
  v59 = *(v0 + 296);
  v60 = *(v0 + 312);
  v61 = *(v0 + 328);
  v62 = *(v0 + 344);
  *(v0 + 176) = *(v0 + 360);
  *(v0 + 144) = v61;
  *(v0 + 160) = v62;
  *(v0 + 112) = v59;
  *(v0 + 128) = v60;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi11_(v0 + 16);
  v64 = *(v99 + 64);
  v63 = *(v99 + 72);
  *(v0 + 608) = v78;
  *(v0 + 616) = v80;
  *(v0 + 624) = v90;
  *(v0 + 632) = v91;
  *(v0 + 640) = 8;
  *(v0 + 648) = v89;
  *(v0 + 656) = v98;
  *(v0 + 664) = v64;
  *(v0 + 672) = v63;
  v65 = *(v0 + 656);
  *(v0 + 568) = *(v0 + 640);
  *(v0 + 584) = v65;
  *(v0 + 600) = *(v0 + 672);
  v66 = *(v0 + 624);
  *(v0 + 536) = *v94;
  *(v0 + 552) = v66;

  outlined copy of Data._Representation(v87, v86);
  outlined init with copy of MLS.OutgoingGroupNameChange<Data>(v93, v0 + 368);

  outlined copy of Data?(v64, v63);
  outlined init with copy of MLS.OutgoingEventState(v94, v0 + 680);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = *(v0 + 1120);
    v70 = *(v0 + 1112);
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v100[0] = v72;
    *v71 = 136315138;
    *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v69, v100);
    _os_log_impl(&dword_264F1F000, v67, v68, "EncryptGroupNameOperation returning operation result { identifier: %s }", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x266755550](v72, -1, -1);
    MEMORY[0x266755550](v71, -1, -1);
  }

  v73 = *(v0 + 1120);
  v74 = *(v0 + 968);
  swift_retain_n();

  return MEMORY[0x2822009F8](MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = *(v0 + 960);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 1232) = v4;
  *v4 = v0;
  v4[1] = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 832, v3, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1232);
  v8 = *v1;
  *(*v1 + 1240) = v0;

  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState(v2 + 608);
    outlined destroy of MLS.OutgoingGroupNameChange<Data>(v2 + 200);
    v4 = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v5 = *(v2 + 1120);
    v6 = *(v2 + 968);

    v4 = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v27 = *(v0 + 196);
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1208);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1184);
  v26 = *(v0 + 1176);
  v7 = *(v0 + 1168);
  v29 = *(v0 + 1248);
  v30 = *(v0 + 1088);
  v31 = *(v0 + 1080);
  v32 = *(v0 + 1064);
  v33 = *(v0 + 1040);
  v34 = *(v0 + 1016);
  v35 = *(v0 + 992);
  v28 = *(v0 + 960);
  v8 = *(v0 + 952);
  outlined destroy of MLS.OutgoingGroupNameChange<Data>(v0 + 200);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v7, v26);
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 64);
  *(v8 + 32) = *(v0 + 48);
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  v12 = *(v0 + 80);
  v13 = *(v0 + 96);
  v14 = *(v0 + 128);
  *(v8 + 96) = *(v0 + 112);
  *(v8 + 112) = v14;
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  v15 = *(v0 + 144);
  v16 = *(v0 + 160);
  v17 = *(v0 + 176);
  *(v8 + 176) = *(v0 + 192);
  *(v8 + 144) = v16;
  *(v8 + 160) = v17;
  *(v8 + 128) = v15;
  *(v8 + 184) = *(v0 + 536);
  v18 = *(v0 + 552);
  v19 = *(v0 + 568);
  v20 = *(v0 + 584);
  *(v8 + 248) = *(v0 + 600);
  *(v8 + 232) = v20;
  *(v8 + 216) = v19;
  *(v8 + 200) = v18;
  *(v8 + 256) = 0;
  *(v8 + 264) = v27;
  *(v8 + 272) = v27;
  *(v8 + 280) = v29;
  *(v8 + 288) = *(v0 + 608);
  v21 = *(v0 + 624);
  v22 = *(v0 + 640);
  v23 = *(v0 + 656);
  *(v8 + 352) = *(v0 + 672);
  *(v8 + 320) = v22;
  *(v8 + 336) = v23;
  *(v8 + 304) = v21;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v28, v8 + 368);
  *(v8 + 408) = 0;
  *(v8 + 416) = *(v0 + 928);
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 752));

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1104);
  v5 = *(v0 + 968);
  v6 = *(v0 + 928);

  swift_getErrorValue();
  v7 = *(v0 + 856);
  v8 = Error.readableDescription.getter(*(v0 + 864), *(v0 + 872));
  closure #1 in MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)(v8, v9, v5, v3, v2);

  swift_getErrorValue();
  v10 = *(v0 + 880);
  v11 = Error.readableDescription.getter(*(v0 + 888), *(v0 + 896));
  *(v0 + 1256) = v11;
  *(v0 + 1264) = v12;
  *(v0 + 904) = 12;
  *(v0 + 912) = v11;
  *(v0 + 920) = v12;
  *(v0 + 1272) = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[159];
  v2 = v0[158];
  v3 = v0[157];
  v20 = v0[153];
  v4 = v0[152];
  v5 = v0[151];
  v6 = v0[150];
  v7 = v0[149];
  v8 = v0[148];
  v9 = v0[147];
  v10 = v0[146];
  swift_allocError();
  *v11 = 12;
  *(v11 + 8) = v3;
  *(v11 + 16) = v2;
  outlined consume of Data._Representation(v10, v9);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v4, v20);
  outlined destroy of MLS.OutgoingGroupNameChange<Data>((v0 + 25));
  outlined destroy of MLS.OutgoingEventState((v0 + 76));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 94);
  v12 = v0[136];
  v13 = v0[135];
  v14 = v0[133];
  v15 = v0[130];
  v16 = v0[127];
  v17 = v0[124];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[145];
  v2 = v0[136];
  v3 = v0[135];
  v4 = v0[133];
  v5 = v0[130];
  v6 = v0[127];
  v7 = v0[124];

  v8 = v0[1];

  return v8();
}

uint64_t MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 848);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 1120);
    v9 = *(v3 + 1104);
    v10 = *(v3 + 968);
    *(v3 + 1248) = v7;
    *(v3 + 196) = *(v3 + 840);

    a1 = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
    a2 = v9;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void closure #1 in MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);
    _os_log_impl(&dword_264F1F000, oslog, v9, "EncryptGroupNameOperation failed to obtain era { identifier: %s, error: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }
}

char *MLS.EncryptGroupNameOperation.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  v6 = *(v0 + 10);

  outlined consume of Data?(v4, v5);

  v7 = OBJC_IVAR____TtCO15SecureMessaging3MLS25EncryptGroupNameOperation_logger;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t MLS.EncryptGroupNameOperation.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  v6 = *(v0 + 10);

  outlined consume of Data?(v4, v5);

  v7 = OBJC_IVAR____TtCO15SecureMessaging3MLS25EncryptGroupNameOperation_logger;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.EncryptGroupNameOperation(uint64_t a1)
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

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.EncryptGroupNameOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t protocol witness for MLS.GroupOperation.group.getter in conformance MLS.EncryptGroupNameOperation()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t protocol witness for MLS.GroupOperation.context.getter in conformance MLS.EncryptGroupNameOperation@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 48);
  v3 = *(*v1 + 56);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 72);
  v7 = *(v2 + 80);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  outlined copy of Data?(v5, v6);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.EncryptGroupNameOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS25EncryptGroupNameOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t outlined init with copy of MLS.OutgoingGroupNameChange<Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23OutgoingGroupNameChangeVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingGroupNameChangeVy_10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.OutgoingGroupNameChange<Data>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23OutgoingGroupNameChangeVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingGroupNameChangeVy_10Foundation4DataVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptGroupNameOperation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation;
  if (!lazy protocol witness table cache variable for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation)
  {
    type metadata accessor for MLS.EncryptGroupNameOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation);
  }

  return result;
}

uint64_t type metadata accessor for MLS.EncryptGroupNameOperation()
{
  result = type metadata singleton initialization cache for MLS.EncryptGroupNameOperation;
  if (!type metadata singleton initialization cache for MLS.EncryptGroupNameOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.EncryptGroupNameOperation()
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

uint64_t dispatch thunk of MLS.EncryptGroupNameOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
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

uint64_t dispatch thunk of MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t MLS.GroupHealer.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.GroupHealer.persister.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister);
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister + 8);
  return swift_unknownObjectRetain();
}

uint64_t MLS.GroupHealer.eventSender.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender);
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender + 8);
  return swift_unknownObjectRetain();
}

uint64_t MLS.GroupHealer.selfMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember;
  v3 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 8);
  v4 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 16);
  *a1 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v2 + 24);
  return outlined copy of MLS.AllMember();
}

uint64_t MLS.GroupHealer.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier + 8);
  *a1 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier);
  a1[1] = v2;
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = v8;
  v9[13] = v25;
  v9[10] = a8;
  v9[11] = v24;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a3;
  v9[7] = a4;
  v9[4] = a1;
  v9[5] = a2;
  v9[14] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9[15] = AssociatedConformanceWitness;
  v9[16] = *(*(AssociatedConformanceWitness + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[17] = AssociatedTypeWitness;
  v13 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v9[18] = swift_task_alloc();
  v14 = *(a8 - 8);
  v9[19] = v14;
  v9[20] = *(v14 + 64);
  v9[21] = swift_task_alloc();
  v15 = type metadata accessor for MLS.MLSError();
  v9[22] = v15;
  v16 = *(v15 - 8);
  v9[23] = v16;
  v17 = *(v16 + 64) + 15;
  v9[24] = swift_task_alloc();
  v9[25] = swift_task_alloc();
  v9[26] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v9[27] = v18;
  v19 = *(v18 - 8);
  v9[28] = v19;
  v20 = *(v19 + 64) + 15;
  v9[29] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v21 = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFTY0_, v21, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFTY0_()
{
  v111 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[5];
  v106 = (*(v5 + 56))(v6, v5);
  v10 = v9;
  (*(v5 + 80))(v6, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v104 = (*(AssociatedConformanceWitness + 16))(v3, AssociatedConformanceWitness);
  v13 = v12;
  (*(v1 + 8))(v2, v3);
  v14 = *(*v4 + 176);
  if (v14(v8) == 1)
  {
    v15 = v0[12];
    v16 = *(v0[23] + 16);
    v16(v0[26], v0[5], v0[22]);

    v17 = Logger.logObject.getter();
    v18 = v13;
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v17, v19);
    v21 = v0[26];
    v99 = v18;
    v101 = v10;
    v23 = v0[22];
    v22 = v0[23];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v91 = v16;
      v25 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v109 = v95;
      *v24 = 136315650;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v101, &v109);
      *(v24 + 12) = 2080;
      *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v18, &v109);
      *(v24 + 22) = 2112;
      lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError();
      swift_allocError();
      v91(v26, v21, v23);
      v27 = _swift_stdlib_bridgeErrorToNSError();
      (*(v22 + 8))(v21, v23);
      *(v24 + 24) = v27;
      *v25 = v27;
      _os_log_impl(&dword_264F1F000, v17, v19, "GroupHealer %s reenqueueing behind self heal { identifier: %s, error: %@ }", v24, 0x20u);
      outlined destroy of NSObject?(v25);
      MEMORY[0x266755550](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266755550](v95, -1, -1);
      MEMORY[0x266755550](v24, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v97 = &_s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TATu;
  }

  else
  {
    v28 = v0[23];
    v29 = v0[12];
    v30 = v14(v0[5]);
    v31 = *(v28 + 16);
    v32 = v0[22];
    v33 = v0[5];
    if (v30 != 2)
    {
      v31(v0[24], v33, v32);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[23];
      v49 = v0[24];
      v50 = v0[22];
      if (v47)
      {
        v98 = v31;
        v51 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v109 = v102;
        *v51 = 136315650;
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v10, &v109);
        v107 = v46;
        v53 = v52;

        *(v51 + 4) = v53;
        *(v51 + 12) = 2080;
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v13, &v109);

        *(v51 + 14) = v54;
        *(v51 + 22) = 2112;
        lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError();
        swift_allocError();
        v98(v55, v49, v50);
        v56 = _swift_stdlib_bridgeErrorToNSError();
        (*(v48 + 8))(v49, v50);
        *(v51 + 24) = v56;
        *v93 = v56;
        _os_log_impl(&dword_264F1F000, v45, v107, "GroupHealer %s failed to perform SwiftMLS operation with unhealable error { identifier: %s, error: %@ }", v51, 0x20u);
        outlined destroy of NSObject?(v93);
        MEMORY[0x266755550](v93, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266755550](v102, -1, -1);
        MEMORY[0x266755550](v51, -1, -1);
      }

      else
      {

        (*(v48 + 8))(v49, v50);
      }

      v76 = v0[29];
      v100 = v0[26];
      v103 = v0[25];
      v77 = v0[22];
      v105 = v0[24];
      v108 = v0[21];
      v79 = v0[17];
      v78 = v0[18];
      v80 = v0[15];
      v81 = v0[16];
      v83 = v0[13];
      v82 = v0[14];
      v84 = v0[5];
      v85 = swift_checkMetadataState();
      v86 = swift_getAssociatedConformanceWitness();
      (*(v86 + 112))(v79, v86);
      v109 = 0;
      v110 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v87 = v110;
      v0[2] = v109;
      v0[3] = v87;
      MEMORY[0x2667545A0](0x534C4D7466697753, 0xEE002E726F727245);
      _print_unlocked<A, B>(_:_:)();
      (*(v81 + 104))(v78, v0[2], v0[3], v85, v81);
      swift_willThrowTyped(v83, v85, *(*(v81 + 8) + 8));

      v75 = v0[1];
      goto LABEL_16;
    }

    v31(v0[25], v33, v32);

    v34 = Logger.logObject.getter();
    v35 = v13;
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v34, v36);
    v38 = v0[25];
    v40 = v0[22];
    v39 = v0[23];
    v99 = v35;
    v101 = v10;
    if (v37)
    {
      v96 = v31;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v109 = v92;
      *v41 = 136315650;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v101, &v109);
      *(v41 + 12) = 2080;
      *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v35, &v109);
      *(v41 + 22) = 2112;
      lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError();
      swift_allocError();
      v96(v43, v38, v40);
      v44 = _swift_stdlib_bridgeErrorToNSError();
      (*(v39 + 8))(v38, v40);
      *(v41 + 24) = v44;
      *v42 = v44;
      _os_log_impl(&dword_264F1F000, v34, v36, "GroupHealer %s reenqueueing behind era advancement { identifier: %s, error: %@ }", v41, 0x20u);
      outlined destroy of NSObject?(v42);
      MEMORY[0x266755550](v42, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266755550](v92, -1, -1);
      MEMORY[0x266755550](v41, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v38, v40);
    }

    v97 = &_s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TATu;
  }

  v58 = v0[20];
  v57 = v0[21];
  v59 = v0[19];
  v60 = v0[12];
  v61 = v0[6];
  v90 = v0[7];
  v94 = v0[9];
  v62 = v0[4];
  v89 = *(v0 + 5);
  v63 = v0[10];
  (*(v59 + 16))(v57, v0[8], v63);
  v64 = (*(v59 + 80) + 88) & ~*(v59 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = v89;
  *(v65 + 32) = v60;
  *(v65 + 40) = v106;
  *(v65 + 48) = v101;
  *(v65 + 56) = v104;
  *(v65 + 64) = v99;
  *(v65 + 72) = v61;
  *(v65 + 80) = v90;
  (*(v59 + 32))(v65 + v64, v57, v63);
  *(v65 + ((v58 + v64 + 7) & 0xFFFFFFFFFFFFFFF8)) = v94;
  *v62 = v97;
  *(v62 + 8) = v65;
  *(v62 + 96) = 2;
  v66 = v0[29];
  v68 = v0[25];
  v67 = v0[26];
  v69 = v0[24];
  v70 = v0[21];
  v71 = v0[18];
  v72 = v0[12];
  v73 = v0[9];
  v74 = v0[7];

  v75 = v0[1];
LABEL_16:

  return v75();
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v22;
  v8[30] = v23;
  v8[27] = a8;
  v8[28] = v21;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[21] = a2;
  v8[22] = a3;
  v8[20] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[31] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[32] = v10;
  v11 = *(v10 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[35] = v12;
  v13 = *(v12 - 8);
  v8[36] = v13;
  v14 = *(v13 + 64) + 15;
  v8[37] = swift_task_alloc();
  v15 = *(*(type metadata accessor for MLS.KeyPackageProvider() - 8) + 64) + 15;
  v8[38] = swift_task_alloc();
  v16 = swift_getAssociatedTypeWitness();
  v8[39] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v8[40] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v18 = static MLSActor.shared;
  v8[41] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY0_, v18, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY0_()
{
  v51 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v47 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v47);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v47);
    _os_log_impl(&dword_264F1F000, v4, v5, "GroupHealer %s performing self heal { identifier: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v12 = *(v0 + 312);
  v40 = *(v0 + 304);
  v13 = *(v0 + 280);
  v14 = *(v0 + 240);
  v15 = *(v0 + 248);
  v16 = *(v0 + 232);
  v38 = *(v0 + 216);
  v44 = *(v0 + 208);
  v45 = *(v0 + 320);
  v42 = *(v0 + 200);
  v43 = *(v0 + 224);
  v17 = *(v0 + 160);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 336) = AssociatedConformanceWitness;
  v19 = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  *(v0 + 16) = v15;
  *(v0 + 24) = v12;
  *(v0 + 32) = v13;
  *(v0 + 40) = AssociatedConformanceWitness;
  *(v0 + 48) = v19;
  *(v0 + 56) = v20;
  v41 = type metadata accessor for MLS.SelfHealOperation();
  v21 = *(v14 + 80);

  v21(v16, v14);
  outlined init with copy of MLS.SwiftMLSClientPicker(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_swiftMLSClient, v0 + 64);
  v34 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister);
  v35 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender);
  v36 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_groupLoader);
  v37 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender + 8);
  v39 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister + 8);
  outlined init with copy of MLS.KeyPackageProvider(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_keyPackageProvider, v40);
  outlined init with copy of ServerBag.MLS(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_credentialProvider, v0 + 112);
  v22 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 8);
  v23 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 16);
  LOBYTE(v19) = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 24);
  *&v47 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember);
  *(&v47 + 1) = v22;
  v48 = v23;
  v49 = v19;
  v24 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier + 8);
  v50[0] = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier);
  v50[1] = v24;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  outlined copy of MLS.AllMember();

  v25 = MLS.SelfHealOperation.__allocating_init(group:context:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(v42, v44, v45, (v0 + 64), v36, v34, v39, v35, v37, v40, (v0 + 112), &v47, v50);
  *(v0 + 344) = v25;
  *(v0 + 152) = v25;
  v26 = *(*v43 + 216);
  v46 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  *(v0 + 352) = v28;
  WitnessTable = swift_getWitnessTable();
  *v28 = v0;
  v28[1] = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TQ1_;
  v30 = *(v0 + 296);
  v31 = *(v0 + 272);
  v32 = *(v0 + 224);

  return v46(v30, v0 + 152, v41, WitnessTable, v31);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v8 = *v1;

  if (v0)
  {
    v4 = v2[41];
    v5 = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY3_;
  }

  else
  {
    v6 = v2[41];
    (*(v2[36] + 8))(v2[37], v2[35]);
    v5 = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY2_;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY2_()
{
  v1 = v0[43];
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[33];
  v5 = v0[34];

  v7 = v0[1];

  return v7();
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY3_()
{
  v1 = v0[42];
  v2 = *(v0[32] + 32);
  v2(v0[33], v0[34], v0[31]);
  v3 = *(*(*(*(v1 + 8) + 8) + 8) + 8);
  v4 = _getErrorEmbeddedNSError<A>(_:)();
  v5 = v0[33];
  if (v4)
  {
    (*(v0[32] + 8))(v0[33], v0[31]);
  }

  else
  {
    v6 = v0[31];
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = v0[43];
  v9 = v0[40];
  v11 = v0[37];
  v10 = v0[38];
  v13 = v0[33];
  v12 = v0[34];

  v14 = v0[1];

  return v14();
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v21;
  v8[19] = v22;
  v8[16] = a8;
  v8[17] = v20;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[9] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[20] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[21] = v10;
  v11 = *(v10 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[24] = v12;
  v13 = *(v12 - 8);
  v8[25] = v13;
  v14 = *(v13 + 64) + 15;
  v8[26] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v8[27] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static MLSActor.shared;
  v8[29] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY0_, v17, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY0_()
{
  v44 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v43);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v43);
    _os_log_impl(&dword_264F1F000, v4, v5, "GroupHealer %s performing era advancement { identifier: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v12 = v0[27];
  v13 = v0[24];
  v14 = v0[19];
  v15 = v0[20];
  v16 = v0[18];
  v38 = v0[16];
  v39 = v0[28];
  v37 = v0[15];
  v40 = v0[14];
  v41 = v0[17];
  v17 = v0[9];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[30] = AssociatedConformanceWitness;
  v19 = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v0[2] = v15;
  v0[3] = v12;
  v0[4] = v13;
  v0[5] = AssociatedConformanceWitness;
  v0[6] = v19;
  v0[7] = v20;
  v21 = type metadata accessor for MLS.EraAdvancementOperation();
  v22 = *(v14 + 80);

  v22(v16, v14);
  v23 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister);
  v24 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister + 8);
  v25 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender);
  v26 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender + 8);
  v27 = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier + 8);
  v43[0] = *(v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier);
  v43[1] = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v28 = MLS.EraAdvancementOperation.__allocating_init(group:context:persister:eventSender:clientIdentifier:)(v40, v37, v39, v23, v24, v25, v26, v43);
  v0[31] = v28;
  v0[8] = v28;
  v29 = *(*v41 + 216);
  v42 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  v0[32] = v31;
  WitnessTable = swift_getWitnessTable();
  *v31 = v0;
  v31[1] = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TQ1_;
  v33 = v0[26];
  v34 = v0[23];
  v35 = v0[17];

  return (v42)(v33, v0 + 8, v21, WitnessTable, v34);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v8 = *v1;

  if (v0)
  {
    v4 = v2[29];
    v5 = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY3_;
  }

  else
  {
    v6 = v2[29];
    (*(v2[25] + 8))(v2[26], v2[24]);
    v5 = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY2_;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY2_()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY3_()
{
  v1 = v0[30];
  v2 = *(v0[21] + 32);
  v2(v0[22], v0[23], v0[20]);
  v3 = *(*(*(*(v1 + 8) + 8) + 8) + 8);
  v4 = _getErrorEmbeddedNSError<A>(_:)();
  v5 = v0[22];
  if (v4)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
  }

  else
  {
    v6 = v0[20];
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[26];
  v12 = v0[22];
  v11 = v0[23];

  v13 = v0[1];

  return v13();
}

uint64_t MLS.GroupHealer.healingMethod(error:)()
{
  v1 = MLS.MLSError.healingMethod.getter();
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_featureFlagsStore);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(2u), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
  }

  else
  {
    v7[3] = &type metadata for SMAFeatureFlagsKey;
    v7[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
    LOBYTE(v7[0]) = 2;

    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  if (v5 & 1 | ((v1 - 3) < 0xFEu))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t MLS.GroupHealer.deinit()
{
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_featureFlagsStore);

  outlined destroy of MLS.SwiftMLSClientPicker(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_swiftMLSClient);
  v4 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_groupLoader);

  v5 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender);
  swift_unknownObjectRelease();
  outlined destroy of MLS.KeyPackageProvider(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_keyPackageProvider);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_credentialProvider));
  v7 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember);
  v8 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 8);
  v9 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 16);
  v10 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 24);
  outlined consume of MLS.AllMember();
  v11 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier + 8);

  return v0;
}

uint64_t MLS.GroupHealer.__deallocating_deinit()
{
  MLS.GroupHealer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized MLS.GroupHealer.__allocating_init(featureFlagsStore:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = type metadata accessor for MLS.GroupHealer();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v26 = swift_allocObject();

  return specialized MLS.GroupHealer.init(featureFlagsStore:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v26, a12, a13);
}

uint64_t specialized MLS.GroupHealer.init(featureFlagsStore:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *a1;
  v29 = *a9;
  v28 = *(a9 + 2);
  v20 = *(a9 + 24);
  v30 = a10[1];
  v31 = *a10;
  Logger.init(subsystem:category:)();
  *(a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_featureFlagsStore) = v19;
  v21 = (a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_swiftMLSClient);
  v22 = a2[1];
  *v21 = *a2;
  v21[1] = v22;
  *(v21 + 25) = *(a2 + 25);
  *(a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_groupLoader) = a3;
  v23 = (a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister);
  *v23 = a4;
  v23[1] = a5;
  v24 = (a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender);
  *v24 = a6;
  v24[1] = a13;
  outlined init with take of MLS.KeyPackageProvider(a7, a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_keyPackageProvider);
  outlined init with take of MLS.KeyUpdatePolicy(a8, a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_credentialProvider);
  v25 = a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember;
  *v25 = v29;
  *(v25 + 16) = v28;
  *(v25 + 24) = v20;
  v26 = (a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier);
  *v26 = v31;
  v26[1] = v30;
  return a11;
}

unint64_t lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError()
{
  result = lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError;
  if (!lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError)
  {
    type metadata accessor for MLS.MLSError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TA()
{
  v2 = v0[2];
  v15 = v0[3];
  v3 = (*(*(v2 - 8) + 80) + 88) & ~*(*(v2 - 8) + 80);
  v12 = v0[5];
  v13 = v0[4];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = *(v0 + ((*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_(v13, v12, v4, v5, v6, v7, v8, v0 + v3);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  v9 = *(v0 + 10);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TA()
{
  v2 = v0[2];
  v15 = v0[3];
  v3 = (*(*(v2 - 8) + 80) + 88) & ~*(*(v2 - 8) + 80);
  v12 = v0[5];
  v13 = v0[4];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = *(v0 + ((*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_(v13, v12, v4, v5, v6, v7, v8, v0 + v3);
}

uint64_t type metadata accessor for MLS.GroupHealer()
{
  result = type metadata singleton initialization cache for MLS.GroupHealer;
  if (!type metadata singleton initialization cache for MLS.GroupHealer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.GroupHealer()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for MLS.KeyPackageProvider();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(*v10 + 168);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v11 + 16) = v20;
  *v20 = v11;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t outlined init with take of MLS.KeyPackageProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyPackageProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for Error._code.getter in conformance URIError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type URIError.ErrorType and conformance URIError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t URIError.underlyingErrorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static URIError.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URIError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URIError.CodingKeys and conformance URIError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URIError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URIError.CodingKeys and conformance URIError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URIError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging8URIErrorV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging8URIErrorV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = v1[1];
  v12[1] = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URIError.CodingKeys and conformance URIError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  lazy protocol witness table accessor for type URIError.ErrorType and conformance URIError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type URIError.CodingKeys and conformance URIError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys;
  if (!lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys;
  if (!lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys;
  if (!lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys;
  if (!lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URIError.ErrorType and conformance URIError.ErrorType()
{
  result = lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType;
  if (!lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType;
  if (!lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType;
  if (!lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType;
  if (!lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType;
  if (!lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType);
  }

  return result;
}

uint64_t URIError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging8URIErrorV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging8URIErrorV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URIError.CodingKeys and conformance URIError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = 0;
    lazy protocol witness table accessor for type URIError.ErrorType and conformance URIError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for VersatileError.underlyingErrorDescription.getter in conformance URIError()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t protocol witness for Error._domain.getter in conformance URIError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URIError and conformance URIError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance URIError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URIError and conformance URIError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance URIError(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URI.URIType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7103860 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URI.URIType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URI.URIType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URI.URIType.TelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URI.URIType.TelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URI.URIType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys()
{
  result = lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys);
  }

  return result;
}

Swift::Int URI.URIType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t URI.URIType.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMR);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMR);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = KeyedDecodingContainer.allKeys.getter();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v19 = &type metadata for URI.URIType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance URI.URIType(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t URI.init(prefixedURI:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for Logger();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_GSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v35 - v18;
  Regex.init(_regexString:version:)();
  lazy protocol witness table accessor for type Regex<Substring> and conformance Regex<A>();
  dispatch thunk of RegexComponent.regex.getter();
  String.subscript.getter();
  v20 = v40;
  Regex.wholeMatch(in:)();
  if (v20)
  {

    v21 = *(v9 + 8);
    v21(v13, v8);
    v21(v15, v8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GMd, &_s17_StringProcessing5RegexV5MatchVySs_GMR);
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  }

  else
  {

    v23 = *(v9 + 8);
    v23(v13, v8);
    v23(v15, v8);
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GMd, &_s17_StringProcessing5RegexV5MatchVySs_GMR);
  v25 = (*(*(v24 - 8) + 48))(v19, 1, v24);
  result = outlined destroy of Regex<Substring>.Match?(v19);
  if (v25 == 1)
  {
    v27 = v37;
    Logger.init(subsystem:category:)();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315138;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v41);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_264F1F000, v28, v29, "Invalid tel URI: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x266755550](v31, -1, -1);
      MEMORY[0x266755550](v30, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type URIError and conformance URIError();
    swift_allocError();
    *v34 = 0;
    v34[1] = 0;
    swift_willThrow();
    return (*(v38 + 8))(v27, v39);
  }

  else
  {
    v33 = v36;
    *v36 = a1;
    v33[1] = a2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Regex<Substring> and conformance Regex<A>()
{
  result = lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>;
  if (!lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>);
  }

  return result;
}

uint64_t outlined destroy of Regex<Substring>.Match?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_GSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URIError and conformance URIError()
{
  result = lazy protocol witness table cache variable for type URIError and conformance URIError;
  if (!lazy protocol witness table cache variable for type URIError and conformance URIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError and conformance URIError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError and conformance URIError;
  if (!lazy protocol witness table cache variable for type URIError and conformance URIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError and conformance URIError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError and conformance URIError;
  if (!lazy protocol witness table cache variable for type URIError and conformance URIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError and conformance URIError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError and conformance URIError;
  if (!lazy protocol witness table cache variable for type URIError and conformance URIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError and conformance URIError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError and conformance URIError;
  if (!lazy protocol witness table cache variable for type URIError and conformance URIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError and conformance URIError);
  }

  return result;
}

uint64_t URI.init(unprefixedTelURI:)@<X0>(void *a1@<X8>)
{
  v5 = 980182388;
  v6 = 0xE400000000000000;
  MEMORY[0x2667545A0]();

  result = URI.init(prefixedURI:)(980182388, 0xE400000000000000, &v5);
  if (!v1)
  {
    v4 = v6;
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t URI.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static URI.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance URI.CodingKeys()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URI.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002651E92E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URI.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.CodingKeys and conformance URI.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URI.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.CodingKeys and conformance URI.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URI.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3URIV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3URIV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMR);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URI.CodingKeys and conformance URI.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    lazy protocol witness table accessor for type URI.URIType and conformance URI.URIType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v13 + 8))(v7, v4);
}

uint64_t URI.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  return MEMORY[0x266754DE0](0);
}

Swift::Int URI.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t URI.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3URIV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3URIV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URI.CodingKeys and conformance URI.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v17 = 1;
  lazy protocol witness table accessor for type URI.URIType and conformance URI.URIType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URI()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance URI()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  return MEMORY[0x266754DE0](0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URI()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type URI.CodingKeys and conformance URI.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URI.URIType and conformance URI.URIType()
{
  result = lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType;
  if (!lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType;
  if (!lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType;
  if (!lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for URIError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type URIError and conformance URIError();
  a1[2] = lazy protocol witness table accessor for type URIError and conformance URIError();
  a1[3] = lazy protocol witness table accessor for type URIError and conformance URIError();
  result = lazy protocol witness table accessor for type URIError and conformance URIError();
  a1[4] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for URIError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for URIError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized MLS.GroupOperation.context(commitOutput:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v55 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 40))(v10, v11);
  v60 = v13;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v14 + 24))(v15, v14);
  v16 = type metadata accessor for MLS.Group.GroupInfo();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v9, 1, v16) == 1)
  {
    outlined destroy of NSObject?(v9, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v58 = v21;
      *v20 = 136315394;
      v22 = (*(*v2 + 128))();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v58);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v26 = *(v3 + 40);
      v25 = *(v3 + 48);

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v58);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_264F1F000, v18, v19, "GroupOperation %s commitOutput missing nextGroupInfo { identifier: %s }", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v21, -1, -1);
      MEMORY[0x266755550](v20, -1, -1);
    }

    LOBYTE(v58) = 19;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    v59 = 0uLL;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      v51 = v59;
      *v52 = v58;
      *(v52 + 8) = v51;
    }

    swift_willThrow();
    return outlined consume of Data?(v12, v60);
  }

  else
  {
    v57 = v12;
    v28 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v56 = v29;
    (*(v17 + 8))(v9, v16);
    v30 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v30);
    result = (*(v31 + 32))(v30, v31);
    if (v33 >> 60 == 15)
    {
      v34 = v28;
      v35 = v56;

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v58 = v39;
        *v38 = 136315394;
        v40 = (*(*v2 + 128))();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v58);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        v44 = *(v3 + 40);
        v43 = *(v3 + 48);

        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, &v58);

        *(v38 + 14) = v45;
        _os_log_impl(&dword_264F1F000, v36, v37, "GroupOperation %s commitOutput missing epochAuthenticator { identifier: %s }", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v39, -1, -1);
        MEMORY[0x266755550](v38, -1, -1);
      }

      v46 = v35;
      LOBYTE(v58) = 18;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      v59 = 0uLL;
      v47 = _getErrorEmbeddedNSError<A>(_:)();
      v48 = v57;
      if (v47)
      {
      }

      else
      {
        swift_allocError();
        v53 = v59;
        *v54 = v58;
        *(v54 + 8) = v53;
      }

      swift_willThrow();
      outlined consume of Data?(v48, v60);
      return outlined consume of Data._Representation(v34, v46);
    }

    else
    {
      *a2 = result;
      a2[1] = v33;
      v49 = v60;
      a2[2] = v57;
      a2[3] = v49;
      v50 = v56;
      a2[4] = v28;
      a2[5] = v50;
    }
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v55 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 40))(v10, v11);
  v60 = v13;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v14 + 24))(v15, v14);
  v16 = type metadata accessor for MLS.Group.GroupInfo();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v9, 1, v16) == 1)
  {
    outlined destroy of NSObject?(v9, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v58 = v21;
      *v20 = 136315394;
      v22 = (*(*v2 + 136))();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v58);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v26 = *(v3 + 40);
      v25 = *(v3 + 48);

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v58);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_264F1F000, v18, v19, "GroupOperation %s commitOutput missing nextGroupInfo { identifier: %s }", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v21, -1, -1);
      MEMORY[0x266755550](v20, -1, -1);
    }

    LOBYTE(v58) = 19;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    v59 = 0uLL;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      v51 = v59;
      *v52 = v58;
      *(v52 + 8) = v51;
    }

    swift_willThrow();
    return outlined consume of Data?(v12, v60);
  }

  else
  {
    v57 = v12;
    v28 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v56 = v29;
    (*(v17 + 8))(v9, v16);
    v30 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v30);
    result = (*(v31 + 32))(v30, v31);
    if (v33 >> 60 == 15)
    {
      v34 = v28;
      v35 = v56;

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v58 = v39;
        *v38 = 136315394;
        v40 = (*(*v2 + 136))();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v58);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        v44 = *(v3 + 40);
        v43 = *(v3 + 48);

        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, &v58);

        *(v38 + 14) = v45;
        _os_log_impl(&dword_264F1F000, v36, v37, "GroupOperation %s commitOutput missing epochAuthenticator { identifier: %s }", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v39, -1, -1);
        MEMORY[0x266755550](v38, -1, -1);
      }

      v46 = v35;
      LOBYTE(v58) = 18;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      v59 = 0uLL;
      v47 = _getErrorEmbeddedNSError<A>(_:)();
      v48 = v57;
      if (v47)
      {
      }

      else
      {
        swift_allocError();
        v53 = v59;
        *v54 = v58;
        *(v54 + 8) = v53;
      }

      swift_willThrow();
      outlined consume of Data?(v48, v60);
      return outlined consume of Data._Representation(v34, v46);
    }

    else
    {
      *a2 = result;
      a2[1] = v33;
      v49 = v60;
      a2[2] = v57;
      a2[3] = v49;
      v50 = v56;
      a2[4] = v28;
      a2[5] = v50;
    }
  }

  return result;
}

uint64_t MLS.AddMembersOperation.group.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MLS.AddMembersOperation.context.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);
}

uint64_t MLS.AddMembersOperation.persister.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return swift_unknownObjectRetain();
}

uint64_t MLS.AddMembersOperation.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  a1[1] = v2;
}

uint64_t MLS.AddMembersOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS19AddMembersOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.AddMembersOperation.__allocating_init(otherMembers:group:context:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  v22 = a4[1];
  v23 = *a4;
  v18 = *(a4 + 4);
  v20 = *a7;
  v19 = a7[1];
  Logger.init(subsystem:category:)();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = v23;
  *(v17 + 56) = v22;
  *(v17 + 72) = v18;
  *(v17 + 80) = a5;
  *(v17 + 88) = a6;
  *(v17 + 96) = v20;
  *(v17 + 104) = v19;
  return v17;
}

uint64_t MLS.AddMembersOperation.init(otherMembers:group:context:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v17 = a4[1];
  v18 = *a4;
  v13 = *(a4 + 4);
  v14 = *a7;
  v15 = a7[1];
  Logger.init(subsystem:category:)();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = v18;
  *(v7 + 56) = v17;
  *(v7 + 72) = v13;
  *(v7 + 80) = a5;
  *(v7 + 88) = a6;
  *(v7 + 96) = v14;
  *(v7 + 104) = v15;
  return v7;
}

uint64_t MLS.AddMembersOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.membersRequiringKeyPackages(swiftMLSGroup:), v2, 0);
}

{
  v1 = *(*(v0 + 16) + 16);
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(v5 + 1088) = v4;
  *(v5 + 1080) = a2;
  *(v5 + 1072) = a1;
  v8 = type metadata accessor for MetricCollector.Event();
  *(v5 + 1096) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1120) = *a3;
  *(v5 + 1128) = *(a4 + 8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v5 + 1144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), v10, 0);
}

uint64_t MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v26 = v0;
  v1 = v0[136];
  v0[129] = v0[140];
  v2 = *(v1 + 40);
  v0[144] = v2;
  v3 = *(v1 + 48);
  v0[145] = v3;
  v0[146] = OBJC_IVAR____TtCO15SecureMessaging3MLS19AddMembersOperation_logger;
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v25);
    _os_log_impl(&dword_264F1F000, v4, v5, "AddMembersOperation adding KeyPackages to group { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = v0[140];
  v9 = v0[139];
  v10 = v0[138];
  v11 = v0[137];
  v12 = v0[135];
  Date.init()();
  v13 = *(v11 + 20);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  outlined init with take of MetricCollector.Event(v9, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v16 = v25;
  v0[147] = v25;

  v0[129] = v16;
  v17 = v12[3];
  v18 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v17);
  v19 = *(v18 + 184);
  v24 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[148] = v21;
  *v21 = v0;
  v21[1] = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  v22 = v0[142];

  return (v24)(v0 + 96, v22, v17, v18);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v10 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v4 = v2[147];
    v5 = v2[145];
    v6 = v2[143];

    v7 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v6;
  }

  else
  {
    v8 = v2[143];
    v7 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v109 = v0;
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1088);
  v5._countAndFlagsBits = 0x534C4D7466697753;
  v5._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v5);
  v6 = *(v4 + 16);
  *(v0 + 1200) = v6;
  outlined init with copy of ServerBag.MLS(v0 + 768, v0 + 808);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v6;
    v10 = *(v0 + 1160);
    v11 = *(v0 + 1152);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v103 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v103);
    *(v12 + 12) = 2080;
    v14 = *(v0 + 832);
    __swift_project_boxed_opaque_existential_1((v0 + 808), v14);
    v15 = *(v14 - 8);
    v16 = *(v15 + 64) + 15;
    swift_task_alloc();
    (*(v15 + 16))();
    v17 = String.init<A>(describing:)();
    v19 = v18;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v103);

    *(v12 + 14) = v20;
    v6 = v9;
    _os_log_impl(&dword_264F1F000, v7, v8, "AddMembersOperation creating event { identifier: %s, commitOutput: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
  }

  v21 = *(v0 + 792);
  v22 = *(v0 + 800);
  __swift_project_boxed_opaque_existential_1((v0 + 768), v21);
  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v21, v22, &v103);
  v23 = v104;
  v100 = v103;
  *(v0 + 1208) = v104;
  v24 = v106;
  v102 = v105;
  *(v0 + 1216) = v105;
  *(v0 + 1224) = v24;
  v25 = *(v0 + 792);
  v26 = *(v0 + 800);
  __swift_project_boxed_opaque_existential_1((v0 + 768), v25);
  MLS.SwiftMLSCommitOutputProtocol.outgoingWelcome.getter(v25, v26, &v103);
  v27 = v103;
  v28 = v104;
  *(v0 + 1232) = v103;
  *(v0 + 1240) = v28;
  v30 = v105;
  v29 = v106;
  *(v0 + 1248) = v105;
  *(v0 + 1256) = v29;
  if (!v28)
  {
    v43 = v24;
    v44 = *(v0 + 1168);
    v45 = *(v0 + 1160);
    v46 = *(v0 + 1128);
    v47 = *(v0 + 1088);

    v48 = *(v0 + 1032);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 1160);
    if (v51)
    {
      v53 = *(v0 + 1152);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v103 = v55;
      *v54 = 136315138;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v103);

      *(v54 + 4) = v56;
      _os_log_impl(&dword_264F1F000, v49, v50, "AddMembersOperation missing welcome message { identifier: %s }", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266755550](v55, -1, -1);
      MEMORY[0x266755550](v54, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v82 = 4;
    *(v82 + 8) = 0;
    *(v82 + 16) = 0;
    swift_willThrow();

    outlined consume of Data._Representation(v102, v43);
    goto LABEL_14;
  }

  v101 = v23;
  v31 = *(v0 + 1192);
  v32 = *(v0 + 1088);
  specialized MLS.GroupOperation.context(commitOutput:)((v0 + 768), &v103);
  v33 = v103;
  v34 = v104;
  *(v0 + 1264) = v103;
  *(v0 + 1272) = v34;
  v35 = v105;
  v36 = v106;
  *(v0 + 1280) = v105;
  *(v0 + 1288) = v36;
  v37 = v107;
  v38 = v108;
  *(v0 + 1296) = v107;
  *(v0 + 1304) = v38;
  if (v31)
  {
    v39 = v24;
    v40 = *(v0 + 1160);
    v41 = *(v0 + 1128);
    v42 = *(v0 + 1032);

    outlined consume of Data._Representation(v102, v39);
    outlined consume of MLS.OutgoingMessage?(v27, v28, v30, v29);

LABEL_14:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 768));
    v83 = *(v0 + 1112);
    v84 = *(v0 + 1104);

    v85 = *(v0 + 8);

    return v85();
  }

  v57 = *(v0 + 1160);
  v95 = v57;
  v96 = *(v0 + 1152);
  v91 = v33;
  v92 = *(v0 + 1128);
  v58 = *(v0 + 1088);
  v97 = v35;
  v98 = v38;
  v99 = v37;
  v89 = v34;
  v90 = v36;
  v59 = objc_allocWithZone(MEMORY[0x277CCAD78]);

  v60 = [v59 init];
  v61 = [v60 UUIDString];

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v63;
  v94 = v62;

  v64 = v27;
  v87 = *(v58 + 64);
  v88 = *(v58 + 56);
  v65 = v6;
  v66 = *(v0 + 1032);

  outlined copy of Data?(v88, v87);
  v67 = v66;

  outlined copy of Data._Representation(v102, v24);
  v68 = v64;
  outlined copy of MLS.OutgoingMessage?(v64, v28, v30, v29);
  v69 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v65);

  *(v0 + 200) = v96;
  *(v0 + 208) = v95;
  *(v0 + 216) = v94;
  *(v0 + 224) = v93;
  *(v0 + 232) = v88;
  *(v0 + 240) = v87;
  *(v0 + 248) = v67;
  *(v0 + 256) = v100;
  *(v0 + 264) = v101;
  *(v0 + 272) = v102;
  *(v0 + 280) = v24;
  *(v0 + 288) = v68;
  *(v0 + 296) = v28;
  *(v0 + 304) = v30;
  *(v0 + 312) = v29;
  *(v0 + 320) = v69;
  *(v0 + 328) = v91;
  *(v0 + 336) = v89;
  *(v0 + 344) = v97;
  *(v0 + 352) = v90;
  *(v0 + 360) = v99;
  *(v0 + 368) = v98;
  v70 = *(v0 + 232);
  v71 = *(v0 + 200);
  v72 = *(v0 + 344);
  *(v0 + 144) = *(v0 + 328);
  *(v0 + 160) = v72;
  v73 = *(v0 + 216);
  *(v0 + 16) = v71;
  *(v0 + 32) = v73;
  v74 = *(v0 + 264);
  v75 = *(v0 + 280);
  v76 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 296);
  *(v0 + 128) = v76;
  v77 = *(v0 + 248);
  *(v0 + 80) = v74;
  *(v0 + 96) = v75;
  *(v0 + 48) = v70;
  *(v0 + 64) = v77;
  *(v0 + 176) = *(v0 + 360);
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi0_(v0 + 16);
  v78 = *(v58 + 56);
  v79 = *(v58 + 64);
  *(v0 + 624) = v94;
  *(v0 + 632) = v93;
  *(v0 + 640) = v92;
  *(v0 + 648) = v65;
  *(v0 + 656) = 1;
  *(v0 + 664) = v96;
  *(v0 + 672) = v95;
  *(v0 + 680) = v78;
  *(v0 + 688) = v79;
  *(v0 + 616) = v79;
  v80 = *(v0 + 672);
  *(v0 + 584) = *(v0 + 656);
  *(v0 + 600) = v80;
  v81 = *(v0 + 640);
  *(v0 + 552) = *(v0 + 624);
  *(v0 + 568) = v81;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  outlined copy of Data._Representation(v91, v89);
  outlined copy of Data?(v97, v90);
  outlined copy of Data._Representation(v99, v98);
  outlined init with copy of MLS.OutgoingAddMember<MLS.AllMember, Data>(v0 + 200, v0 + 376);

  outlined copy of Data?(v78, v79);
  outlined init with copy of MLS.OutgoingEventState(v0 + 624, v0 + 696);

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = v0[150];
  v2 = v0[136];
  v4 = v2[10];
  v3 = v2[11];
  ObjectType = swift_getObjectType();
  v6 = v2[3];
  v7 = v2[4];

  v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v8);
  v0[164] = v9;

  v10 = v2[13];
  v0[127] = v2[12];
  v0[128] = v10;

  v11 = swift_task_alloc();
  v0[165] = v11;
  *v11 = v0;
  v11[1] = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.Persister.addPendingMembers(identifier:otherMembers:clientIdentifier:)(v6, v7, v9, v0 + 127, ObjectType, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1320);
  v4 = *v1;
  v2[166] = v0;

  v5 = v2[164];
  v6 = v2[145];
  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState((v2 + 78));

    v7 = v2[128];

    v8 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v9 = v2[136];

    v10 = v2[128];

    v8 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v0[136];

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), v2, 0);
}

{
  v14 = v0;
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[136];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[145];
    v7 = v0[144];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v13);
    _os_log_impl(&dword_264F1F000, v4, v5, "AddMembersOperation returning operation result { identifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = v0[145];
  v11 = v0[136];
  swift_retain_n();

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1032);

  swift_getErrorValue();
  v7 = *(v0 + 848);
  v8 = Error.readableDescription.getter(*(v0 + 856), *(v0 + 864));
  closure #1 in MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(v8, v9, v5, v3, v2, "AddMembersOperation failed to save pending members { identifier: %s, error: %s }");

  swift_getErrorValue();
  v10 = *(v0 + 872);
  v11 = Error.readableDescription.getter(*(v0 + 880), *(v0 + 888));
  *(v0 + 1336) = v11;
  *(v0 + 1344) = v12;
  *(v0 + 896) = 8;
  *(v0 + 904) = v11;
  *(v0 + 912) = v12;
  *(v0 + 1352) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[169];
  v2 = v0[168];
  v3 = v0[167];
  v20 = v0[162];
  v21 = v0[163];
  v18 = v0[160];
  v19 = v0[161];
  v16 = v0[158];
  v17 = v0[159];
  v4 = v0[157];
  v5 = v0[156];
  v6 = v0[155];
  v7 = v0[154];
  v8 = v0[153];
  v9 = v0[152];
  v10 = v0[151];
  swift_allocError();
  *v11 = 8;
  *(v11 + 8) = v3;
  *(v11 + 16) = v2;

  outlined consume of Data._Representation(v9, v8);
  outlined consume of MLS.OutgoingMessage?(v7, v6, v5, v4);
  outlined consume of Data._Representation(v16, v17);
  outlined consume of Data?(v18, v19);
  outlined consume of Data._Representation(v20, v21);
  outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined destroy of MLS.OutgoingEventState((v0 + 78));
  outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  v12 = v0[139];
  v13 = v0[138];

  v14 = v0[1];

  return v14();
}

{
  v1 = *(v0 + 1080);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 1360) = v4;
  *v4 = v0;
  v4[1] = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 920, v3, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1360);
  v8 = *v1;
  *(*v1 + 1368) = v0;

  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState(v2 + 624);
    v4 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v5 = *(v2 + 1160);
    v6 = *(v2 + 1088);

    v4 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v33 = *(v0 + 196);
  v34 = *(v0 + 1376);
  v1 = *(v0 + 1304);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1272);
  v6 = *(v0 + 1264);
  v28 = *(v0 + 1248);
  v29 = *(v0 + 1256);
  v7 = *(v0 + 1232);
  v30 = *(v0 + 1216);
  v31 = *(v0 + 1224);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1208);
  v35 = *(v0 + 1112);
  v36 = *(v0 + 1104);
  v32 = *(v0 + 1080);
  v8 = *(v0 + 1072);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of MLS.OutgoingMessage?(v7, v26, v28, v29);

  outlined consume of Data._Representation(v30, v31);
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 64);
  *(v8 + 32) = *(v0 + 48);
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  v12 = *(v0 + 80);
  v13 = *(v0 + 96);
  v14 = *(v0 + 128);
  *(v8 + 96) = *(v0 + 112);
  *(v8 + 112) = v14;
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  v15 = *(v0 + 144);
  v16 = *(v0 + 160);
  v17 = *(v0 + 176);
  *(v8 + 176) = *(v0 + 192);
  *(v8 + 144) = v16;
  *(v8 + 160) = v17;
  *(v8 + 128) = v15;
  *(v8 + 184) = *(v0 + 552);
  v18 = *(v0 + 568);
  v19 = *(v0 + 584);
  v20 = *(v0 + 600);
  *(v8 + 248) = *(v0 + 616);
  *(v8 + 232) = v20;
  *(v8 + 216) = v19;
  *(v8 + 200) = v18;
  *(v8 + 256) = 0;
  *(v8 + 264) = v33;
  *(v8 + 272) = v33;
  *(v8 + 280) = v34;
  *(v8 + 288) = *(v0 + 624);
  v21 = *(v0 + 640);
  v22 = *(v0 + 656);
  v23 = *(v0 + 672);
  *(v8 + 352) = *(v0 + 688);
  *(v8 + 320) = v22;
  *(v8 + 336) = v23;
  *(v8 + 304) = v21;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v32, v8 + 368);
  *(v8 + 408) = 0;
  *(v8 + 416) = *(v0 + 1032);
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 768));

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 1368);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1032);

  swift_getErrorValue();
  v7 = *(v0 + 944);
  v8 = Error.readableDescription.getter(*(v0 + 952), *(v0 + 960));
  closure #1 in MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(v8, v9, v5, v3, v2, "AddMembersOperation failed to obtain era { identifier: %s, error: %s }");

  swift_getErrorValue();
  v10 = *(v0 + 968);
  v11 = Error.readableDescription.getter(*(v0 + 976), *(v0 + 984));
  *(v0 + 1384) = v11;
  *(v0 + 1392) = v12;
  *(v0 + 992) = 6;
  *(v0 + 1000) = v11;
  *(v0 + 1008) = v12;
  *(v0 + 1400) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[175];
  v2 = v0[174];
  v3 = v0[173];
  v20 = v0[162];
  v21 = v0[163];
  v18 = v0[160];
  v19 = v0[161];
  v16 = v0[158];
  v17 = v0[159];
  v4 = v0[157];
  v5 = v0[156];
  v6 = v0[155];
  v7 = v0[154];
  v8 = v0[153];
  v9 = v0[152];
  v10 = v0[151];
  swift_allocError();
  *v11 = 6;
  *(v11 + 8) = v3;
  *(v11 + 16) = v2;

  outlined consume of Data._Representation(v9, v8);
  outlined consume of MLS.OutgoingMessage?(v7, v6, v5, v4);
  outlined consume of Data._Representation(v16, v17);
  outlined consume of Data?(v18, v19);
  outlined consume of Data._Representation(v20, v21);
  outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined destroy of MLS.OutgoingEventState((v0 + 78));
  outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  v12 = v0[139];
  v13 = v0[138];

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[149];
  v2 = v0[139];
  v3 = v0[138];

  v4 = v0[1];

  return v4();
}

uint64_t MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 936);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 1160);
    v9 = *(v3 + 1144);
    v10 = *(v3 + 1088);
    *(v3 + 1376) = v7;
    *(v3 + 196) = *(v3 + 928);

    a1 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
    a2 = v9;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void closure #1 in MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
{

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_264F1F000, oslog, v11, a6, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }
}

char *MLS.AddMembersOperation.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);

  outlined consume of Data?(v4, v5);

  v7 = *(v0 + 10);
  swift_unknownObjectRelease();
  v8 = *(v0 + 13);

  v9 = OBJC_IVAR____TtCO15SecureMessaging3MLS19AddMembersOperation_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  return v0;
}

uint64_t MLS.AddMembersOperation.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);

  outlined consume of Data?(v4, v5);

  v7 = *(v0 + 10);
  swift_unknownObjectRelease();
  v8 = *(v0 + 13);

  v9 = OBJC_IVAR____TtCO15SecureMessaging3MLS19AddMembersOperation_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.AddMembersOperation(uint64_t a1)
{
  v4 = *(**v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.AddMembersOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 192);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.group.getter in conformance MLS.AddMembersOperation()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

uint64_t protocol witness for MLS.GroupOperation.context.getter in conformance MLS.AddMembersOperation@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 40);
  v3 = *(*v1 + 48);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 64);
  v7 = *(v2 + 72);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  outlined copy of Data?(v5, v6);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.AddMembersOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS19AddMembersOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t outlined init with copy of MLS.OutgoingAddMember<MLS.AllMember, Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t instantiation function for generic protocol witness table for MLS.AddMembersOperation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation()
{
  result = lazy protocol witness table cache variable for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation;
  if (!lazy protocol witness table cache variable for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation)
  {
    type metadata accessor for MLS.AddMembersOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation);
  }

  return result;
}

uint64_t type metadata accessor for MLS.AddMembersOperation()
{
  result = type metadata singleton initialization cache for MLS.AddMembersOperation;
  if (!type metadata singleton initialization cache for MLS.AddMembersOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.AddMembersOperation()
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

uint64_t dispatch thunk of MLS.AddMembersOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v18;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v10 = type metadata accessor for ContinuousClock();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  v8[14] = v14;
  *v14 = v8;
  v14[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

  return v16(v8 + 21);
}

uint64_t specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
  }

  else
  {
    v3 = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3(v2);
}

{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 144);
  v5 = *v1;

  v6 = v2[13];
  v7 = v2[12];
  v8 = v2[11];
  if (!v0)
  {
    (*(v7 + 8))(v6, v8);
    v9 = swift_task_alloc();
    v3[20] = v9;
    *v9 = v5;
    v9[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
    v10 = v3[17];
    v11 = v3[9];
    v12 = v3[7];
    v13 = v3[8];
    v14 = v3[5];
    v15 = v3[6];
    v16 = v3[3];
    v17 = v3[4];
    v20 = v3[10];

    JUMPOUT(0x264FC1CA0);
  }

  (*(v7 + 8))(v6, v8);

  return MEMORY[0x2822009F8](specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v1);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4(1);
}

{

  v1 = *(v0 + 104);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3(v2);
}

void specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 56);
    v23 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
    v6 = *(v0 + 120);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 16);

    v23(v8, v7, v9, v6);
  }

  else
  {
    v10 = *(v0 + 16);
    *(v0 + 136) = v10 + 1;
    if (v10 == -1)
    {
      __break(1u);
    }

    else if (v10 > 2)
    {
      v17 = *(v0 + 72);
      if (v17)
      {
        v18 = *(v0 + 80);

        v24 = (v17 + *v17);
        v19 = v17[1];
        v20 = swift_task_alloc();
        *(v0 + 152) = v20;
        *v20 = v0;
        v20[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

        v24();
      }

      else
      {

        v21 = *(v0 + 104);

        v22 = *(v0 + 8);

        v22(1);
      }
    }

    else
    {
      v11 = *(v0 + 104);
      v12 = static Duration.seconds(_:)();
      v14 = v13;
      static Clock<>.continuous.getter();
      v15 = swift_task_alloc();
      *(v0 + 144) = v15;
      *v15 = v0;
      v15[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
      v16 = *(v0 + 104);

      specialized Clock.sleep(for:tolerance:)(v12, v14, 0, 0, 1);
    }
  }
}

{
  v1 = *(v0 + 16);
  *(v0 + 136) = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else if (v1 > 2)
  {
    v8 = *(v0 + 72);
    if (v8)
    {
      v9 = *(v0 + 80);

      v14 = (v8 + *v8);
      v10 = v8[1];
      v11 = swift_task_alloc();
      *(v0 + 152) = v11;
      *v11 = v0;
      v11[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

      v14();
    }

    else
    {

      v12 = *(v0 + 104);

      v13 = *(v0 + 8);

      v13(1);
    }
  }

  else
  {
    v2 = *(v0 + 104);
    v3 = static Duration.seconds(_:)();
    v5 = v4;
    static Clock<>.continuous.getter();
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
    v7 = *(v0 + 104);

    specialized Clock.sleep(for:tolerance:)(v3, v5, 0, 0, 1);
  }
}

{
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
  v2 = v0[17];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v11 = v0[10];

  JUMPOUT(0x264FC1CA0);
}

uint64_t specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v6 = *v1;

  *(v3 + 168) = a1 & 1;

  return MEMORY[0x2822009F8](specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

uint64_t performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t a8)
{
  v10 = v8;
  *(v10 + 112) = v22;
  *(v10 + 80) = v20;
  *(v10 + 96) = v21;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12 = type metadata accessor for ContinuousClock();
  *(v10 + 120) = v12;
  v13 = *(v12 - 8);
  *(v10 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v10 + 136) = swift_task_alloc();
  v18 = (a7 + *a7);
  v15 = a7[1];
  v16 = swift_task_alloc();
  *(v10 + 144) = v16;
  *v16 = v10;
  v16[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

  return v18(a1);
}

uint64_t performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
  }

  else
  {
    v4 = v3[17];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 80);
    v24 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
    v6 = *(v0 + 152);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 24);

    return v24(v8, v7, v9, v6);
  }

  else
  {
    result = *(v0 + 24);
    *(v0 + 168) = result + 1;
    if (result == -1)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v0 + 56);
      if ((*(v0 + 48))())
      {
        v12 = *(v0 + 136);
        v13 = static Duration.seconds(_:)();
        v15 = v14;
        static Clock<>.continuous.getter();
        v16 = swift_task_alloc();
        *(v0 + 176) = v16;
        *v16 = v0;
        v16[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
        v17 = *(v0 + 136);

        return specialized Clock.sleep(for:tolerance:)(v13, v15, 0, 0, 1);
      }

      else
      {
        v18 = *(v0 + 96);
        if (v18)
        {
          v19 = *(v0 + 104);

          v25 = (v18 + *v18);
          v20 = v18[1];
          v21 = swift_task_alloc();
          *(v0 + 192) = v21;
          *v21 = v0;
          v21[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

          return v25();
        }

        else
        {

          (*(*(*(v0 + 112) - 8) + 56))(*(v0 + 16), 1, 1);
          v22 = *(v0 + 136);

          v23 = *(v0 + 8);

          return v23();
        }
      }
    }
  }

  return result;
}

{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{
  result = *(v0 + 24);
  *(v0 + 168) = result + 1;
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    if ((*(v0 + 48))())
    {
      v3 = *(v0 + 136);
      v4 = static Duration.seconds(_:)();
      v6 = v5;
      static Clock<>.continuous.getter();
      v7 = swift_task_alloc();
      *(v0 + 176) = v7;
      *v7 = v0;
      v7[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
      v8 = *(v0 + 136);

      return specialized Clock.sleep(for:tolerance:)(v4, v6, 0, 0, 1);
    }

    else
    {
      v9 = *(v0 + 96);
      if (v9)
      {
        v10 = *(v0 + 104);

        v15 = (v9 + *v9);
        v11 = v9[1];
        v12 = swift_task_alloc();
        *(v0 + 192) = v12;
        *v12 = v0;
        v12[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

        return v15();
      }

      else
      {

        (*(*(*(v0 + 112) - 8) + 56))(*(v0 + 16), 1, 1);
        v13 = *(v0 + 136);

        v14 = *(v0 + 8);

        return v14();
      }
    }
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
    v6 = *(v2 + 128);
    v5 = *(v2 + 136);
    v7 = *(v2 + 120);

    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
  }

  else
  {
    (*(*(v2 + 128) + 8))(*(v2 + 136), *(v2 + 120));
    v8 = swift_task_alloc();
    *(v2 + 184) = v8;
    *v8 = v4;
    v8[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
    v9 = *(v2 + 168);
    v10 = *(v2 + 64);
    v11 = *(v2 + 72);
    v12 = *(v2 + 48);
    v13 = *(v2 + 56);
    v14 = *(v2 + 32);
    v15 = *(v2 + 40);
    v16 = *(v2 + 16);
    v21 = *(v2 + 112);
    v19 = *(v2 + 80);
    v20 = *(v2 + 96);

    return performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(v16, v9, v14, v15, v12, v13, v10, v11);
  }
}

{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
  v2 = *(v0 + 168);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  v14 = *(v0 + 112);
  v12 = *(v0 + 80);
  v13 = *(v0 + 96);

  return performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(v9, v2, v7, v8, v5, v6, v3, v4);
}

{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{

  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v1);
  (*(*(*(v0 + 112) - 8) + 56))(*(v0 + 16), 1, 1);
  v3 = *(v0 + 136);

  v4 = *(v0 + 8);

  return v4();
}