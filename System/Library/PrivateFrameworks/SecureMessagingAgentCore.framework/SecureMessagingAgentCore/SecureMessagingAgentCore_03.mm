uint64_t DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[32] = v6;
  v7 = *(v6 - 8);
  v5[33] = v7;
  v8 = *(v7 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v5[36] = v9;
  v10 = *(v9 - 8);
  v5[37] = v10;
  v11 = *(v10 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[42] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[43] = v13;
  v5[44] = v12;

  return MEMORY[0x2822009F8](DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:), v13, v12);
}

uint64_t DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:)()
{
  v145 = v0;
  v1 = *(v0 + 296);
  v2 = (*(**(v0 + 248) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 288);
  if (v2)
  {
    v5 = *(v0 + 280);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 232);
    v8 = *(v0 + 240);
    v3(*(v0 + 328), *(v0 + 216), v4);
    v133 = *(v7 + 16);
    v133(v5, v8, v6);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 328);
    v140 = v3;
    if (v12)
    {
      v14 = *(v0 + 320);
      v130 = v11;
      v15 = *(v0 + 288);
      v16 = *(v0 + 296);
      v124 = *(v0 + 280);
      v126 = *(v0 + 264);
      v122 = *(v0 + 232);
      v123 = *(v0 + 256);
      v121 = *(v0 + 224);
      v17 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v144[0] = v128;
      *v17 = 136315650;
      v3(v14, v13, v15);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      v132 = *(v16 + 8);
      v132(v13, v15);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v144);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, v144);
      *(v17 + 22) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v25 = *(v126 + 8);
      v25(v124, v123);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v144);

      *(v17 + 24) = v26;
      _os_log_impl(&dword_26524C000, v10, v130, "DaemonPersister saveIncomingEvent using persistence mode { incomingEvent: %s, group: %s, client: %s }", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v128, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {
      v40 = *(v0 + 288);
      v41 = *(v0 + 296);
      v42 = *(v0 + 280);
      v43 = *(v0 + 256);
      v44 = *(v0 + 264);

      v25 = *(v44 + 8);
      v25(v42, v43);
      v132 = *(v41 + 8);
      v27 = (v132)(v13, v40);
    }

    if ((*(**(v0 + 248) + 192))(v27))
    {
      v45 = *(v0 + 256);
      v46 = *(v0 + 240);
      v47 = *(*(v0 + 248) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 360) = v48;
      *(v0 + 368) = v49;
      v90 = v48;
      v91 = v49;
      v92 = *(v0 + 232);
      *(v0 + 184) = *(v0 + 224);
      *(v0 + 192) = v92;
      v93 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 376) = v93;
      *(v0 + 384) = v94;
      v102 = v93;
      v103 = v94;
      v104 = *(v0 + 288);
      v105 = *(v0 + 216);
      lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingEventType<MLS.AllMember, Data> and conformance MLS.IncomingEventType<A, B>, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      v106 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 392) = v106;
      *(v0 + 400) = v107;
      v139 = v106;
      v143 = v107;
      v108 = *(v0 + 288);
      v109 = *(v0 + 216);
      *(v0 + 200) = MLS.IncomingEventType.identifier.getter();
      *(v0 + 208) = v110;
      v111 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 408) = v111;
      *(v0 + 416) = v112;
      v113 = *(v0 + 248);
      v114 = v111;
      v115 = v112;

      *(v0 + 16) = v90;
      *(v0 + 24) = v91;
      *(v0 + 32) = v102;
      *(v0 + 40) = v103;
      *(v0 + 48) = v139;
      *(v0 + 56) = v143;
      *(v0 + 64) = v114;
      *(v0 + 72) = v115;
      v138 = *(v113 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 168) = &type metadata for IncomingEventModel;
      *(v0 + 176) = &protocol witness table for IncomingEventModel;
      v116 = swift_allocObject();
      *(v0 + 144) = v116;
      v117 = *(v0 + 32);
      v118 = *(v0 + 48);
      v116[1] = *(v0 + 16);
      v116[2] = v117;
      v119 = *(v0 + 64);
      v116[3] = v118;
      v116[4] = v119;
      outlined copy of Data._Representation(v90, v91);
      outlined copy of Data._Representation(v102, v103);
      outlined copy of Data._Representation(v139, v143);
      outlined copy of Data._Representation(v114, v115);
      outlined init with copy of IncomingEventModel(v0 + 16, v0 + 80);
      v120 = swift_task_alloc();
      *(v0 + 424) = v120;
      *v120 = v0;
      v120[1] = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);

      return SqliteStore.insert(_:)(v0 + 144);
    }

    else
    {
      v60 = *(v0 + 336);
      v61 = *(v0 + 312);
      v62 = *(v0 + 288);
      v63 = *(v0 + 272);
      v64 = *(v0 + 256);
      v66 = *(v0 + 232);
      v65 = *(v0 + 240);
      v67 = *(v0 + 216);

      v140(v61, v67, v62);
      v133(v63, v65, v64);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v135 = v25;
        v70 = *(v0 + 312);
        v71 = *(v0 + 320);
        v73 = *(v0 + 288);
        v72 = *(v0 + 296);
        v134 = *(v0 + 264);
        v129 = *(v0 + 256);
        v131 = *(v0 + 272);
        v125 = *(v0 + 224);
        v127 = *(v0 + 232);
        v74 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v144[0] = v137;
        *v74 = 136315650;
        v140(v71, v70, v73);
        v75 = String.init<A>(describing:)();
        v77 = v76;
        v132(v70, v73);
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, v144);

        *(v74 + 4) = v78;
        *(v74 + 12) = 2080;
        *(v74 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, v144);
        *(v74 + 22) = 2080;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v80;
        v135(v131, v129);
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v144);

        *(v74 + 24) = v82;
        _os_log_impl(&dword_26524C000, v68, v69, "DaemonPersister saveIncomingEvent called outside atomically block { incomingEvent: %s, group: %s, client: %s }", v74, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v137, -1, -1);
        MEMORY[0x2667577B0](v74, -1, -1);
      }

      else
      {
        v83 = *(v0 + 312);
        v84 = *(v0 + 288);
        v85 = *(v0 + 296);
        v87 = *(v0 + 264);
        v86 = *(v0 + 272);
        v88 = *(v0 + 256);

        v25(v86, v88);
        v132(v83, v84);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v89 = 6;
      *(v89 + 8) = 0;
      *(v89 + 16) = 0;
      swift_willThrow();
      v96 = *(v0 + 320);
      v95 = *(v0 + 328);
      v98 = *(v0 + 304);
      v97 = *(v0 + 312);
      v100 = *(v0 + 272);
      v99 = *(v0 + 280);

      v101 = *(v0 + 8);

      return v101();
    }
  }

  else
  {
    v3(*(v0 + 304), *(v0 + 216), v4);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v141 = v3;
      v30 = *(v0 + 320);
      v32 = *(v0 + 296);
      v31 = *(v0 + 304);
      v33 = *(v0 + 288);
      v34 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v144[0] = v136;
      *v34 = 136315138;
      v141(v30, v31, v33);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      (*(v32 + 8))(v31, v33);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v144);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_26524C000, v28, v29, "DaemonPersister saveIncomingEvent using inMemory mode { incomingEvent: %s }", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v136);
      MEMORY[0x2667577B0](v136, -1, -1);
      MEMORY[0x2667577B0](v34, -1, -1);
    }

    else
    {
      v51 = *(v0 + 296);
      v50 = *(v0 + 304);
      v52 = *(v0 + 288);

      v39 = (*(v51 + 8))(v50, v52);
    }

    *(v0 + 440) = (*(**(v0 + 248) + 168))(v39);
    v53 = *(MEMORY[0x277D4CE70] + 4);
    v142 = (*MEMORY[0x277D4CE70] + MEMORY[0x277D4CE70]);
    v54 = swift_task_alloc();
    *(v0 + 448) = v54;
    *v54 = v0;
    v54[1] = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);
    v55 = *(v0 + 232);
    v56 = *(v0 + 240);
    v58 = *(v0 + 216);
    v57 = *(v0 + 224);

    return v142(v58, v57, v55, v56);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v14 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v5 = v2[49];
    v4 = v2[50];
    v7 = v2[47];
    v6 = v2[48];
    v9 = v2[45];
    v8 = v2[46];
    outlined consume of Data._Representation(v2[51], v2[52]);
    outlined consume of Data._Representation(v5, v4);
    outlined consume of Data._Representation(v7, v6);
    outlined consume of Data._Representation(v9, v8);
    v10 = v2[43];
    v11 = v2[44];
    v12 = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v10 = v2[43];
    v11 = v2[44];
    v12 = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

{
  v1 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[42];

  outlined destroy of IncomingEventModel((v0 + 2));
  outlined consume of Data._Representation(v1, v2);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v8, v7);
  v11 = v0[40];
  v10 = v0[41];
  v13 = v0[38];
  v12 = v0[39];
  v15 = v0[34];
  v14 = v0[35];

  v16 = v0[1];

  return v16();
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v9 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = v2[43];
    v5 = v2[44];
    v6 = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);
  }

  else
  {
    v7 = v2[55];

    v4 = v2[43];
    v5 = v2[44];
    v6 = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[42];

  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[34];
  v6 = v0[35];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[55];
  v2 = v0[42];

  v3 = v0[57];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
  v9 = v0[34];
  v8 = v0[35];

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[42];
  outlined destroy of IncomingEventModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v2 = v0[54];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[34];
  v7 = v0[35];

  v9 = v0[1];

  return v9();
}

uint64_t DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[32] = v6;
  v7 = *(v6 - 8);
  v5[33] = v7;
  v8 = *(v7 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v5[36] = v9;
  v10 = *(v9 - 8);
  v5[37] = v10;
  v11 = *(v10 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[42] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[43] = v13;
  v5[44] = v12;

  return MEMORY[0x2822009F8](DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:), v13, v12);
}

uint64_t DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:)()
{
  v145 = v0;
  v1 = *(v0 + 296);
  v2 = (*(**(v0 + 248) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 288);
  if (v2)
  {
    v5 = *(v0 + 280);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 232);
    v8 = *(v0 + 240);
    v3(*(v0 + 328), *(v0 + 216), v4);
    v133 = *(v7 + 16);
    v133(v5, v8, v6);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 328);
    v140 = v3;
    if (v12)
    {
      v14 = *(v0 + 320);
      v130 = v11;
      v15 = *(v0 + 288);
      v16 = *(v0 + 296);
      v124 = *(v0 + 280);
      v126 = *(v0 + 264);
      v122 = *(v0 + 232);
      v123 = *(v0 + 256);
      v121 = *(v0 + 224);
      v17 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v144[0] = v128;
      *v17 = 136315650;
      v3(v14, v13, v15);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      v132 = *(v16 + 8);
      v132(v13, v15);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v144);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, v144);
      *(v17 + 22) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v25 = *(v126 + 8);
      v25(v124, v123);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v144);

      *(v17 + 24) = v26;
      _os_log_impl(&dword_26524C000, v10, v130, "DaemonPersister deleteIncomingEvent using persistence mode { incomingEvent: %s, group: %s, client: %s }", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v128, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {
      v40 = *(v0 + 288);
      v41 = *(v0 + 296);
      v42 = *(v0 + 280);
      v43 = *(v0 + 256);
      v44 = *(v0 + 264);

      v25 = *(v44 + 8);
      v25(v42, v43);
      v132 = *(v41 + 8);
      v27 = (v132)(v13, v40);
    }

    if ((*(**(v0 + 248) + 192))(v27))
    {
      v45 = *(v0 + 256);
      v46 = *(v0 + 240);
      v47 = *(*(v0 + 248) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 360) = v48;
      *(v0 + 368) = v49;
      v90 = v48;
      v91 = v49;
      v92 = *(v0 + 232);
      *(v0 + 184) = *(v0 + 224);
      *(v0 + 192) = v92;
      v93 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 376) = v93;
      *(v0 + 384) = v94;
      v102 = v93;
      v103 = v94;
      v104 = *(v0 + 288);
      v105 = *(v0 + 216);
      lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingEventType<MLS.AllMember, Data> and conformance MLS.IncomingEventType<A, B>, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      v106 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 392) = v106;
      *(v0 + 400) = v107;
      v139 = v106;
      v143 = v107;
      v108 = *(v0 + 288);
      v109 = *(v0 + 216);
      *(v0 + 200) = MLS.IncomingEventType.identifier.getter();
      *(v0 + 208) = v110;
      v111 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 408) = v111;
      *(v0 + 416) = v112;
      v113 = *(v0 + 248);
      v114 = v111;
      v115 = v112;

      *(v0 + 16) = v90;
      *(v0 + 24) = v91;
      *(v0 + 32) = v102;
      *(v0 + 40) = v103;
      *(v0 + 48) = v139;
      *(v0 + 56) = v143;
      *(v0 + 64) = v114;
      *(v0 + 72) = v115;
      v138 = *(v113 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 168) = &type metadata for IncomingEventModel;
      *(v0 + 176) = &protocol witness table for IncomingEventModel;
      v116 = swift_allocObject();
      *(v0 + 144) = v116;
      v117 = *(v0 + 32);
      v118 = *(v0 + 48);
      v116[1] = *(v0 + 16);
      v116[2] = v117;
      v119 = *(v0 + 64);
      v116[3] = v118;
      v116[4] = v119;
      outlined copy of Data._Representation(v90, v91);
      outlined copy of Data._Representation(v102, v103);
      outlined copy of Data._Representation(v139, v143);
      outlined copy of Data._Representation(v114, v115);
      outlined init with copy of IncomingEventModel(v0 + 16, v0 + 80);
      v120 = swift_task_alloc();
      *(v0 + 424) = v120;
      *v120 = v0;
      v120[1] = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);

      return SqliteStore.delete(_:)(v0 + 144);
    }

    else
    {
      v60 = *(v0 + 336);
      v61 = *(v0 + 312);
      v62 = *(v0 + 288);
      v63 = *(v0 + 272);
      v64 = *(v0 + 256);
      v66 = *(v0 + 232);
      v65 = *(v0 + 240);
      v67 = *(v0 + 216);

      v140(v61, v67, v62);
      v133(v63, v65, v64);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v135 = v25;
        v70 = *(v0 + 312);
        v71 = *(v0 + 320);
        v73 = *(v0 + 288);
        v72 = *(v0 + 296);
        v134 = *(v0 + 264);
        v129 = *(v0 + 256);
        v131 = *(v0 + 272);
        v125 = *(v0 + 224);
        v127 = *(v0 + 232);
        v74 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v144[0] = v137;
        *v74 = 136315650;
        v140(v71, v70, v73);
        v75 = String.init<A>(describing:)();
        v77 = v76;
        v132(v70, v73);
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, v144);

        *(v74 + 4) = v78;
        *(v74 + 12) = 2080;
        *(v74 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, v144);
        *(v74 + 22) = 2080;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v80;
        v135(v131, v129);
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v144);

        *(v74 + 24) = v82;
        _os_log_impl(&dword_26524C000, v68, v69, "DaemonPersister deleteIncomingEvent called outside atomically block { incomingEvent: %s, group: %s, client: %s }", v74, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v137, -1, -1);
        MEMORY[0x2667577B0](v74, -1, -1);
      }

      else
      {
        v83 = *(v0 + 312);
        v84 = *(v0 + 288);
        v85 = *(v0 + 296);
        v87 = *(v0 + 264);
        v86 = *(v0 + 272);
        v88 = *(v0 + 256);

        v25(v86, v88);
        v132(v83, v84);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v89 = 6;
      *(v89 + 8) = 0;
      *(v89 + 16) = 0;
      swift_willThrow();
      v96 = *(v0 + 320);
      v95 = *(v0 + 328);
      v98 = *(v0 + 304);
      v97 = *(v0 + 312);
      v100 = *(v0 + 272);
      v99 = *(v0 + 280);

      v101 = *(v0 + 8);

      return v101();
    }
  }

  else
  {
    v3(*(v0 + 304), *(v0 + 216), v4);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v141 = v3;
      v30 = *(v0 + 320);
      v32 = *(v0 + 296);
      v31 = *(v0 + 304);
      v33 = *(v0 + 288);
      v34 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v144[0] = v136;
      *v34 = 136315138;
      v141(v30, v31, v33);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      (*(v32 + 8))(v31, v33);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v144);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_26524C000, v28, v29, "DaemonPersister deleteIncomingEvent using inMemory mode { incomingEvent: %s }", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v136);
      MEMORY[0x2667577B0](v136, -1, -1);
      MEMORY[0x2667577B0](v34, -1, -1);
    }

    else
    {
      v51 = *(v0 + 296);
      v50 = *(v0 + 304);
      v52 = *(v0 + 288);

      v39 = (*(v51 + 8))(v50, v52);
    }

    *(v0 + 440) = (*(**(v0 + 248) + 168))(v39);
    v53 = *(MEMORY[0x277D4CEB0] + 4);
    v142 = (*MEMORY[0x277D4CEB0] + MEMORY[0x277D4CEB0]);
    v54 = swift_task_alloc();
    *(v0 + 448) = v54;
    *v54 = v0;
    v54[1] = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);
    v55 = *(v0 + 232);
    v56 = *(v0 + 240);
    v58 = *(v0 + 216);
    v57 = *(v0 + 224);

    return v142(v58, v57, v55, v56);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v14 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v5 = v2[49];
    v4 = v2[50];
    v7 = v2[47];
    v6 = v2[48];
    v9 = v2[45];
    v8 = v2[46];
    outlined consume of Data._Representation(v2[51], v2[52]);
    outlined consume of Data._Representation(v5, v4);
    outlined consume of Data._Representation(v7, v6);
    outlined consume of Data._Representation(v9, v8);
    v10 = v2[43];
    v11 = v2[44];
    v12 = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v10 = v2[43];
    v11 = v2[44];
    v12 = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v9 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = v2[43];
    v5 = v2[44];
    v6 = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);
  }

  else
  {
    v7 = v2[55];

    v4 = v2[43];
    v5 = v2[44];
    v6 = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  Update = type metadata accessor for MLS.EventsSinceLastUpdate();
  v5[12] = Update;
  v7 = *(Update - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[18] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[19] = v10;
  v5[20] = v9;

  return MEMORY[0x2822009F8](DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:), v10, v9);
}

uint64_t DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)()
{
  v106 = v0;
  v1 = *(v0 + 104);
  v2 = (*(**(v0 + 88) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v2)
  {
    v3(*(v0 + 136), v6, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 136);
    v102 = v3;
    if (v9)
    {
      log = v7;
      v11 = *(v0 + 128);
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v93 = *(v0 + 64);
      v94 = *(v0 + 72);
      v14 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v105[0] = v95;
      *v14 = 136315394;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v105);
      *(v14 + 12) = 2080;
      v3(v11, v10, v13);
      v15 = String.init<A>(describing:)();
      v17 = v16;
      v18 = v13;
      v19 = *(v12 + 8);
      v19(v10, v18);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v105);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_26524C000, log, v8, "DaemonPersister saveEventsSinceLastKeyUpdate using persistence mode { identifier: %s, eventsSinceLastKeyUpdate: %s }", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v95, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    else
    {
      v35 = *(v0 + 96);
      v36 = *(v0 + 104);

      v19 = *(v36 + 8);
      v21 = (v19)(v10, v35);
    }

    if ((*(**(v0 + 88) + 192))(v21))
    {
      v37 = *(v0 + 80);
      v38 = *(*(v0 + 88) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
      type metadata accessor for MLS.UniqueClientIdentifier();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 168) = v39;
      *(v0 + 176) = v40;
      v77 = v39;
      v78 = v40;
      v79 = *(v0 + 72);
      v80 = *(v0 + 56);

      outlined copy of Data._Representation(v77, v78);
      v81 = MLS.EventsSinceLastUpdate.messages.getter();
      result = MLS.EventsSinceLastUpdate.timeOfLastUpdate.getter();
      if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v83 > -1.0)
      {
        if (v83 < 1.84467441e19)
        {
          v84 = *(v0 + 88);
          v86 = *(v0 + 64);
          v85 = *(v0 + 72);
          v87 = *(v0 + 56);
          v88 = v83;
          v89 = MLS.EventsSinceLastUpdate.isFirstKeyUpdate.getter();
          v90 = *(v84 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
          *(v0 + 40) = &type metadata for KeyUpdateModel;
          *(v0 + 48) = &protocol witness table for KeyUpdateModel;
          v91 = swift_allocObject();
          *(v0 + 16) = v91;
          *(v91 + 16) = v77;
          *(v91 + 24) = v78;
          *(v91 + 32) = v86;
          *(v91 + 40) = v85;
          *(v91 + 48) = v81;
          *(v91 + 56) = v88;
          *(v91 + 64) = v89 & 1;
          outlined copy of Data._Representation(v77, v78);

          v92 = swift_task_alloc();
          *(v0 + 184) = v92;
          *v92 = v0;
          v92[1] = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);

          return SqliteStore.insert(_:)(v0 + 16);
        }

LABEL_27:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_27;
    }

    v50 = *(v0 + 144);
    v51 = *(v0 + 120);
    v52 = *(v0 + 96);
    v53 = *(v0 + 72);
    v54 = *(v0 + 56);

    v102(v51, v54, v52);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v58 = *(v0 + 120);
      v57 = *(v0 + 128);
      v59 = *(v0 + 96);
      logb = *(v0 + 104);
      v101 = v19;
      v61 = *(v0 + 64);
      v60 = *(v0 + 72);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v105[0] = v63;
      *v62 = 136315394;
      *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, v105);
      *(v62 + 12) = 2080;
      v102(v57, v58, v59);
      v64 = String.init<A>(describing:)();
      v66 = v65;
      v101(v58, v59);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v105);

      *(v62 + 14) = v67;
      _os_log_impl(&dword_26524C000, v55, v56, "DaemonPersister saveEventsSinceLastKeyUpdate called outside atomically block { identifier: %s, eventsSinceLastKeyUpdate: %s }", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v63, -1, -1);
      MEMORY[0x2667577B0](v62, -1, -1);
    }

    else
    {
      v68 = *(v0 + 120);
      v69 = *(v0 + 96);
      v70 = *(v0 + 104);

      v19(v68, v69);
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v71 = 6;
    *(v71 + 8) = 0;
    *(v71 + 16) = 0;
    swift_willThrow();
    v73 = *(v0 + 128);
    v72 = *(v0 + 136);
    v75 = *(v0 + 112);
    v74 = *(v0 + 120);

    v76 = *(v0 + 8);

    return v76();
  }

  else
  {
    v3(*(v0 + 112), v6, v4);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v103 = v3;
      v24 = *(v0 + 128);
      loga = v23;
      v26 = *(v0 + 104);
      v25 = *(v0 + 112);
      v27 = *(v0 + 96);
      v28 = *(v0 + 64);
      v96 = *(v0 + 72);
      v29 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v105[0] = v100;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v96, v105);
      *(v29 + 12) = 2080;
      v103(v24, v25, v27);
      v30 = String.init<A>(describing:)();
      v32 = v31;
      (*(v26 + 8))(v25, v27);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v105);

      *(v29 + 14) = v33;
      _os_log_impl(&dword_26524C000, v22, loga, "DaemonPersister saveEventsSinceLastKeyUpdate using inMemory mode { identifier: %s, eventsSinceLastKeyUpdate: %s }", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v100, -1, -1);
      MEMORY[0x2667577B0](v29, -1, -1);
    }

    else
    {
      v42 = *(v0 + 104);
      v41 = *(v0 + 112);
      v43 = *(v0 + 96);

      v34 = (*(v42 + 8))(v41, v43);
    }

    *(v0 + 200) = (*(**(v0 + 88) + 168))(v34);
    v44 = *(MEMORY[0x277D4CE98] + 4);
    v104 = (*MEMORY[0x277D4CE98] + MEMORY[0x277D4CE98]);
    v45 = swift_task_alloc();
    *(v0 + 208) = v45;
    *v45 = v0;
    v45[1] = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);
    v46 = *(v0 + 72);
    v47 = *(v0 + 80);
    v49 = *(v0 + 56);
    v48 = *(v0 + 64);

    return v104(v49, v48, v46, v47);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[21], v2[22]);
    v4 = v2[19];
    v5 = v2[20];
    v6 = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v4 = v2[19];
    v5 = v2[20];
    v6 = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[9];

  outlined consume of Data._Representation(v1, v2);

  outlined consume of Data._Representation(v1, v2);
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];

  v9 = v0[1];

  return v9();
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);
  }

  else
  {
    v7 = v2[25];

    v4 = v2[19];
    v5 = v2[20];
    v6 = DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[18];

  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[25];
  v2 = v0[18];

  v3 = v0[27];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[18];
  v2 = v0[9];
  outlined consume of Data._Representation(v0[21], v0[22]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[24];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MLSActor();
  v5[7] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:), v7, v6);
}

uint64_t DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)()
{
  v33 = v0;
  v1 = *(v0 + 32);
  v2 = (*(**(v0 + 48) + 264))();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v7 = *(v0 + 24);
      v6 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v32);
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister loadEventsSinceLastKeyUpdate using persistence mode { identifier: %s }", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2667577B0](v9, -1, -1);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    v10 = *(v0 + 40);
    v11 = *(*(v0 + 48) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 80) = v12;
    *(v0 + 88) = v13;
    v25 = *(*(v0 + 48) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    v26 = *(v0 + 32);
    v27 = v12;
    v28 = v13;

    v29 = swift_task_alloc();
    *(v0 + 96) = v29;
    *v29 = v0;
    v29[1] = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
    v20 = *(v0 + 24);
    v21 = *(v0 + 32);
    v22 = v27;
    v23 = v28;
    v24 = specialized SqliteStore.query<A>(_:);
  }

  else
  {
    if (v5)
    {
      v15 = *(v0 + 24);
      v14 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v32);
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister loadEventsSinceLastKeyUpdate using inMemory mode { identifier: %s }", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2667577B0](v17, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    *(v0 + 120) = (*(**(v0 + 48) + 168))();
    v18 = *(MEMORY[0x277D4CE50] + 4);
    v31 = (*MEMORY[0x277D4CE50] + MEMORY[0x277D4CE50]);
    v19 = swift_task_alloc();
    *(v0 + 128) = v19;
    *v19 = v0;
    v19[1] = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v22 = *(v0 + 16);
    v23 = *(v0 + 24);
    v24 = v31;
  }

  return v24(v22, v23, v20, v21);
}

{
  v1 = v0[13];
  v2 = v0[7];

  v3 = *(v1 + 16);
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[4];
  v8 = v0[2];
  if (v3)
  {
    v9 = *(v4 + 32);
    v10 = *(v4 + 40);
    v11 = *(v4 + 56);
    v12 = *(v4 + 64);
    v13 = *(v4 + 80);
    v14 = *(v4 + 72);
    v19 = v0[11];
    outlined copy of Data._Representation(v9, v10);

    MLS.EventsSinceLastUpdate.init(messages:timeOfLastUpdate:isFirstKeyUpdate:)();
    outlined consume of Data._Representation(v6, v19);

    outlined consume of Data._Representation(v9, v10);
    v15 = 0;
  }

  else
  {

    outlined consume of Data._Representation(v6, v5);
    v15 = 1;
  }

  Update = type metadata accessor for MLS.EventsSinceLastUpdate();
  (*(*(Update - 8) + 56))(v8, v15, 1, Update);
  v17 = v0[1];

  return v17();
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
  }

  else
  {
    v7 = v2[15];

    v4 = v2[8];
    v5 = v2[9];
    v6 = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[15];
  v2 = v0[7];

  v3 = v0[17];
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[4];

  outlined consume of Data._Representation(v1, v2);

  v5 = v0[14];
  v6 = v0[1];

  return v6();
}

uint64_t DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v7 = *(v3 + 72);
  v8 = *(v3 + 64);
  if (v1)
  {
    v9 = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
  }

  else
  {
    v9 = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t DaemonPersister.loadClientIdentifiersWithEvents()()
{
  v1[2] = v0;
  type metadata accessor for MLSActor();
  v1[3] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](DaemonPersister.loadClientIdentifiersWithEvents(), v3, v2);
}

{
  v1 = (*(**(v0 + 16) + 264))();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister loadClientIdentifiersWithEvents using persistence mode", v5, 2u);
      MEMORY[0x2667577B0](v5, -1, -1);
    }

    v6 = *(v0 + 16);

    *(v0 + 48) = *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    v13 = specialized SqliteStore.query<A>(_:);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v8 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  else
  {
    if (v4)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister loadClientIdentifiersWithEvents using inMemory mode", v9, 2u);
      MEMORY[0x2667577B0](v9, -1, -1);
    }

    v10 = *(v0 + 16);

    *(v0 + 104) = (*(*v10 + 168))();
    v11 = *(MEMORY[0x277D4CE58] + 4);
    v13 = (*MEMORY[0x277D4CE58] + MEMORY[0x277D4CE58]);
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v8 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  v7[1] = v8;

  return v13();
}

{
  v1 = v0[9];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v5 = v0[2];
  v4 = v0[3];

  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DataV_SayAFGTt0g5Tf4g_n(v3);

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DataV_SayAFGTt0g5Tf4g_n(v1);

  v8 = specialized Set.union<A>(_:)(v7, v6);

  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4DataVG_15SecureMessaging3MLSO22UniqueClientIdentifierVsAE_pTg504_s24fg33AgentCore15DaemonPersisterC31loadj35IdentifiersWithEventsSay0aB03MLSO06i3H10k22VGyYaKFAI10Foundation4E7VKXEfU_0fgM4Core0oP0CTf1cn_nTf4ng_n(v8, v5);

  v11 = v0[1];
  if (!v2)
  {
    v10 = v9;
  }

  return v11(v10);
}

{
  v1 = v0[11];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[3];

  v2 = v0[16];
  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t DaemonPersister.loadClientIdentifiersWithEvents()(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];

    return MEMORY[0x2822009F8](DaemonPersister.loadClientIdentifiersWithEvents(), v5, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[10] = v7;
    *v7 = v4;
    v7[1] = DaemonPersister.loadClientIdentifiersWithEvents();
    v8 = v4[6];

    return specialized SqliteStore.query<A>(_:)();
  }
}

{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v11 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v6 = v4[8];

    v7 = v4[4];
    v8 = v4[5];
    v9 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  else
  {
    v4[12] = a1;
    v7 = v4[4];
    v8 = v4[5];
    v9 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  else
  {
    v10 = v4[13];

    v4[16] = a1;
    v7 = v4[4];
    v8 = v4[5];
    v9 = DaemonPersister.loadClientIdentifiersWithEvents();
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
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
  for (i = (v5 + 63) >> 6; v7; result = outlined consume of Data._Representation(v14[0], v14[1]))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    outlined copy of Data._Representation(*v11, v13);
    specialized Set._Variant.insert(_:)(v14, v12, v13);
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

uint64_t DaemonPersister.loadEvents(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
  v3[49] = v4;
  v5 = *(v4 - 8);
  v3[50] = v5;
  v6 = *(v5 + 64) + 15;
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR) - 8) + 64) + 15;
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v8 = type metadata accessor for MLS.OutgoingEventState();
  v3[55] = v8;
  v9 = *(v8 - 8);
  v3[56] = v9;
  v10 = *(v9 + 64) + 15;
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v11 = type metadata accessor for MLS.GroupVersion();
  v3[59] = v11;
  v12 = *(v11 - 8);
  v3[60] = v12;
  v13 = *(v12 + 64) + 15;
  v3[61] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v3[62] = v14;
  v15 = *(v14 - 8);
  v3[63] = v15;
  v16 = *(v15 + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v3[68] = v17;
  v18 = *(v17 - 8);
  v3[69] = v18;
  v19 = *(v18 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v20 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[74] = v20;
  v21 = *(v20 - 8);
  v3[75] = v21;
  v22 = *(v21 + 64) + 15;
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[84] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[85] = v24;
  v3[86] = v23;

  return MEMORY[0x2822009F8](DaemonPersister.loadEvents(clientIdentifier:), v24, v23);
}

uint64_t DaemonPersister.loadEvents(clientIdentifier:)()
{
  v70 = v0;
  v1 = *(v0 + 600);
  v2 = (*(**(v0 + 384) + 264))();
  *(v0 + 696) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
  v3 = *(v1 + 16);
  *(v0 + 704) = v3;
  *(v0 + 712) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = *(v0 + 592);
  v5 = *(v0 + 376);
  if (v2)
  {
    v3(*(v0 + 664), v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 664);
    v10 = *(v0 + 600);
    v11 = *(v0 + 592);
    if (v8)
    {
      v63 = v3;
      v12 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v69[0] = v65;
      *v12 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v7;
      v15 = v14;
      v16 = v11;
      v17 = *(v10 + 8);
      v17(v9, v16);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v69);

      v19 = v12;
      v3 = v63;
      *(v19 + 1) = v18;
      v20 = v19;
      _os_log_impl(&dword_26524C000, v6, v62, "DaemonPersister loadEventsClientIdentifier using persistence mode { identifier: %s }", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x2667577B0](v65, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    else
    {

      v33 = v11;
      v17 = *(v10 + 8);
      v17(v9, v33);
    }

    *(v0 + 720) = v17;
    v34 = *(v0 + 592);
    v35 = *(v0 + 376);
    v36 = *(*(v0 + 384) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v37 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 728) = v37;
    *(v0 + 736) = v38;
    v68 = v38;
    v64 = v37;
    v3(*(v0 + 656), *(v0 + 376), *(v0 + 592));
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 656);
    v48 = *(v0 + 600);
    v49 = *(v0 + 592);
    if (v46)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v69[0] = v51;
      *v50 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v17;
      v54 = v52;
      v56 = v55;
      v53(v47, v49);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v69);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_26524C000, v44, v45, "DaemonPersister loadEventsClientIdentifier loading incoming events { identifier: %s }", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x2667577B0](v51, -1, -1);
      MEMORY[0x2667577B0](v50, -1, -1);
    }

    else
    {

      v17(v47, v49);
    }

    v58 = *(v0 + 384);
    v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 744) = v59;
    *(v0 + 352) = v59;
    *(v0 + 752) = *(v58 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    outlined copy of Data._Representation(v64, v68);
    v60 = swift_task_alloc();
    *(v0 + 760) = v60;
    *v60 = v0;
    v60[1] = DaemonPersister.loadEvents(clientIdentifier:);
    v41 = v64;
    v42 = v68;
    v43 = specialized SqliteStore.query<A>(_:);
  }

  else
  {
    v3(*(v0 + 608), v5, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 608);
    v25 = *(v0 + 600);
    v26 = *(v0 + 592);
    if (v23)
    {
      v27 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69[0] = v66;
      *v27 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v25 + 8))(v24, v26);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v69);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_26524C000, v21, v22, "DaemonPersister loadEventsClientIdentifier using inMemory mode { identifier: %s }", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x2667577B0](v66, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    else
    {

      v32 = (*(v25 + 8))(v24, v26);
    }

    *(v0 + 824) = (*(**(v0 + 384) + 168))(v32);
    v39 = *(MEMORY[0x277D4CDF0] + 4);
    v67 = (*MEMORY[0x277D4CDF0] + MEMORY[0x277D4CDF0]);
    v40 = swift_task_alloc();
    *(v0 + 832) = v40;
    *v40 = v0;
    v40[1] = DaemonPersister.loadEvents(clientIdentifier:);
    v41 = *(v0 + 368);
    v42 = *(v0 + 376);
    v43 = v67;
  }

  return v43(v41, v42);
}

{
  v277 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 672);

  v269 = v1;
  v258 = *(v1 + 16);
  if (v258)
  {
    v4 = 0;
    v218 = (v0 + 272);
    v219 = (v0 + 240);
    v5 = (*(v0 + 808) + 32);
    v6 = *(v0 + 448);
    v216 = (v6 + 56);
    v217 = (v6 + 16);
    v7 = *(v0 + 504);
    v240 = (v7 + 16);
    v8 = *(v0 + 480);
    v215 = (v8 + 16);
    v255 = *(v0 + 600) + 8;
    v200 = (v6 + 8);
    v237 = (v7 + 8);
    v228 = (v8 + 8);
    v213 = *(v0 + 392);
    v214 = *(v0 + 400);
    v9 = *(v0 + 816);
    while (1)
    {
      if (v4 >= *(v269 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v0 + 784);
      v11 = *(v0 + 384);
      v13 = v5[2];
      v12 = v5[3];
      v14 = v5[4];
      *(v0 + 96) = v5[5];
      v15 = v5[1];
      *(v0 + 16) = *v5;
      *(v0 + 32) = v15;
      *(v0 + 64) = v12;
      *(v0 + 80) = v14;
      *(v0 + 48) = v13;
      v16 = *(v0 + 96);
      v17 = *(v0 + 104);
      v18 = *(v11 + v10);
      outlined init with copy of OutgoingEventModel(v0 + 16, v0 + 112);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v9)
      {
        v178 = *(v0 + 808);
        v179 = *(v0 + 736);
        v180 = *(v0 + 728);
        outlined consume of Data._Representation(v180, v179);
        outlined consume of Data._Representation(v180, v179);
        outlined consume of Data._Representation(v180, v179);
        outlined destroy of OutgoingEventModel(v0 + 16);

        v181 = *(v0 + 360);

        v182 = *(v0 + 352);

        v183 = *(v0 + 664);
        v184 = *(v0 + 656);
        v185 = *(v0 + 648);
        v186 = *(v0 + 640);
        v187 = *(v0 + 632);
        v188 = *(v0 + 624);
        v189 = *(v0 + 616);
        v190 = *(v0 + 608);
        v191 = *(v0 + 584);
        v231 = *(v0 + 576);
        v236 = *(v0 + 568);
        v239 = *(v0 + 560);
        v242 = *(v0 + 536);
        v245 = *(v0 + 528);
        v247 = *(v0 + 520);
        v250 = *(v0 + 512);
        v254 = *(v0 + 488);
        v257 = *(v0 + 464);
        v260 = *(v0 + 456);
        v264 = *(v0 + 432);
        v268 = *(v0 + 424);
        v271 = *(v0 + 416);
        v275 = *(v0 + 408);

        v177 = *(v0 + 8);
        goto LABEL_38;
      }

      v19 = *(v0 + 56);
      v20 = *(v0 + 328);
      if (v19 >> 60 == 15 || (v21 = *(v0 + 72), v21 >> 60 == 15))
      {
        v265 = *(v0 + 320);
        v22 = *(v0 + 712);
        v23 = *(v0 + 696);
        v24 = *(v0 + 384);
        (*(v0 + 704))(*(v0 + 616), *(v0 + 376), *(v0 + 592));

        v25 = Logger.logObject.getter();
        LOBYTE(v23) = static os_log_type_t.default.getter();

        v261 = v23;
        v26 = os_log_type_enabled(v25, v23);
        v27 = *(v0 + 720);
        v28 = *(v0 + 616);
        v29 = *(v0 + 592);
        if (v26)
        {
          v272 = v4;
          v30 = swift_slowAlloc();
          v251 = swift_slowAlloc();
          v276[0] = v251;
          *v30 = 136315394;
          _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v32 = v5;
          v34 = v33;
          v27(v28, v29);
          v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v34, v276);
          v5 = v32;

          *(v30 + 4) = v35;
          *(v30 + 12) = 2080;
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v265, v20, v276);

          *(v30 + 14) = v36;
          _os_log_impl(&dword_26524C000, v25, v261, "DaemonPersister loadEventsClientIdentifier loading outgoing events - skip nil event { identifier: %s, event: %s }", v30, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2667577B0](v251, -1, -1);
          v37 = v30;
          v4 = v272;
          MEMORY[0x2667577B0](v37, -1, -1);

          result = outlined destroy of OutgoingEventModel(v0 + 16);
        }

        else
        {

          outlined destroy of OutgoingEventModel(v0 + 16);

          result = (v27)(v28, v29);
        }

        goto LABEL_4;
      }

      v248 = v5;
      v38 = *(v0 + 40);
      v39 = *(v0 + 64);
      v40 = *(v0 + 32);
      v262 = *(v0 + 48);
      v266 = *(v0 + 56);
      outlined copy of Data?(v262, v19);
      v252 = v39;
      outlined copy of Data?(v39, v21);

      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v273 = v4;
      v41 = *(v0 + 336);
      v42 = *(v0 + 344);
      v43 = *(v0 + 360);
      if (!*(v43 + 16) || (v44 = *(v0 + 360), specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 336), *(v0 + 344)), (v45 & 1) == 0))
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v276[0] = v43;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x277D84F90], v41, v42, isUniquelyReferenced_nonNull_native);

        *(v0 + 360) = v276[0];
      }

      v47 = *(v0 + 536);
      v48 = *(v0 + 496);
      lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v49 = *(v0 + 488);
      v50 = *(v0 + 472);
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion, MEMORY[0x277D4CC78]);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v51 = *(v0 + 88);
      v243 = v21;
      v229 = v41;
      if (v51 >> 60 != 15)
      {
        break;
      }

      v52 = specialized Dictionary.subscript.modify(v219, v41, v42);
      if (*v53)
      {
        v54 = v53;
        v220 = v52;
        v232 = v42;
        v55 = *(v0 + 536);
        v57 = *(v0 + 488);
        v56 = *(v0 + 496);
        v58 = *(v0 + 472);
        v59 = *(v0 + 424);
        v60 = *(v0 + 408);
        (*v216)(v59, 1, 1, *(v0 + 440));
        v61 = *(v213 + 48);
        v62 = *(v213 + 64);
        type = *v240;
        (*v240)(v60, v55, v56);
        outlined init with take of MLS.OutgoingEventState?(v59, v60 + v61, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        (*v215)(v60 + v62, v57, v58);
        v63 = *v54;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        *v54 = v63;
        if ((v64 & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
          *v54 = v63;
        }

        v66 = v63[2];
        v65 = v63[3];
        if (v66 >= v65 >> 1)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1, v63);
          *v54 = v63;
        }

        v42 = v232;
        v67 = *(v0 + 408);
        v63[2] = v66 + 1;
        outlined init with take of MLS.OutgoingEventState?(v67, v63 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v66, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
        v220();
        v68 = type;
      }

      else
      {
        (v52)(v219, 0);
        v68 = *v240;
      }

      v90 = *(v0 + 712);
      v91 = *(v0 + 704);
      v92 = *(v0 + 696);
      v93 = *(v0 + 624);
      v94 = *(v0 + 592);
      v95 = *(v0 + 376);
      v96 = *(v0 + 384);
      typeb = v68;
      v68(*(v0 + 512), *(v0 + 536), *(v0 + 496));
      v91(v93, v95, v94);

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();

      v99 = os_log_type_enabled(v97, v98);
      v234 = *(v0 + 720);
      v221 = *(v0 + 624);
      v100 = *(v0 + 592);
      v101 = *(v0 + 536);
      if (!v99)
      {
        v117 = *(v0 + 512);
        v119 = *(v0 + 488);
        v118 = *(v0 + 496);
        v120 = *(v0 + 472);
        outlined consume of Data?(v262, v266);
        outlined consume of Data?(v252, v243);

        outlined destroy of OutgoingEventModel(v0 + 16);

        v234(v221, v100);
        v121 = *v237;
        (*v237)(v117, v118);
        (*v228)(v119, v120);
        result = (v121)(v101, v118);
LABEL_35:
        v4 = v273;
        v5 = v248;
        goto LABEL_4;
      }

      v102 = *(v0 + 520);
      v212 = *(v0 + 536);
      v103 = v42;
      v104 = *(v0 + 512);
      loga = v97;
      v105 = *(v0 + 496);
      v206 = *(v0 + 472);
      v210 = *(v0 + 488);
      v106 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v276[0] = v198;
      *v106 = 136315650;
      typeb(v102, v104, v105);
      typed = v98;
      v107 = String.init<A>(describing:)();
      v109 = v108;
      v110 = *v237;
      (*v237)(v104, v105);
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, v276);

      *(v106 + 4) = v111;
      *(v106 + 12) = 2080;
      v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v103, v276);

      *(v106 + 14) = v112;
      *(v106 + 22) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v113 = dispatch thunk of CustomStringConvertible.description.getter();
      v115 = v114;
      v234(v221, v100);
      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, v276);

      *(v106 + 24) = v116;
      _os_log_impl(&dword_26524C000, loga, typed, "DaemonPersister loadEventsClientIdentifier loaded outgoing event { outgoingEvent: %s, for group: %s, for client: %s }", v106, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v198, -1, -1);
      MEMORY[0x2667577B0](v106, -1, -1);
      outlined consume of Data?(v262, v266);
      outlined consume of Data?(v252, v243);

      outlined destroy of OutgoingEventModel(v0 + 16);
      (*v228)(v210, v206);
      result = (v110)(v212, v105);
      v4 = v273;
      v5 = v248;
LABEL_4:
      v9 = 0;
      ++v4;
      v5 += 6;
      if (v258 == v4)
      {
        goto LABEL_36;
      }
    }

    v69 = v42;
    v70 = *(v0 + 80);
    v71 = *(v0 + 464);
    v72 = *(v0 + 440);
    outlined copy of Data._Representation(v70, v51);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.OutgoingEventState and conformance MLS.OutgoingEventState, MEMORY[0x277D4CF20]);
    v209 = v70;
    v211 = v51;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v233 = v69;
    v73 = specialized Dictionary.subscript.modify(v218, v41, v69);
    if (*v74)
    {
      v75 = v74;
      v76 = *(v0 + 536);
      v78 = *(v0 + 488);
      v77 = *(v0 + 496);
      v203 = *(v0 + 472);
      v205 = v73;
      v80 = *(v0 + 432);
      v79 = *(v0 + 440);
      v81 = *(v0 + 416);
      (*v217)(v80, *(v0 + 464), v79);
      (*v216)(v80, 0, 1, v79);
      v82 = *(v213 + 48);
      v83 = *(v213 + 64);
      *typea = *v240;
      (*v240)(v81, v76, v77);
      outlined init with take of MLS.OutgoingEventState?(v80, v81 + v82, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
      (*v215)(v81 + v83, v78, v203);
      v84 = *v75;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v75 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84[2] + 1, 1, v84);
        *v75 = v84;
      }

      v87 = v84[2];
      v86 = v84[3];
      if (v87 >= v86 >> 1)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v87 + 1, 1, v84);
        *v75 = v84;
      }

      v88 = *(v0 + 416);
      v84[2] = v87 + 1;
      outlined init with take of MLS.OutgoingEventState?(v88, v84 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v87, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
      v205();
      v89 = *typea;
    }

    else
    {
      (v73)(v218, 0);
      v89 = *v240;
    }

    v122 = *(v0 + 712);
    v123 = *(v0 + 704);
    v207 = *(v0 + 696);
    v124 = *(v0 + 632);
    v125 = *(v0 + 592);
    v127 = *(v0 + 456);
    v126 = *(v0 + 464);
    v128 = *(v0 + 440);
    v129 = *(v0 + 376);
    v130 = *(v0 + 384);
    typec = v89;
    v89(*(v0 + 528), *(v0 + 536), *(v0 + 496));
    (*v217)(v127, v126, v128);
    v123(v124, v129, v125);

    v131 = Logger.logObject.getter();
    LOBYTE(v124) = static os_log_type_t.default.getter();

    v132 = v124;
    v133 = os_log_type_enabled(v131, v124);
    v134 = *(v0 + 720);
    log = *(v0 + 592);
    v204 = *(v0 + 632);
    v208 = *(v0 + 536);
    v135 = *(v0 + 528);
    if (v133)
    {
      v194 = *(v0 + 720);
      v136 = *(v0 + 520);
      v137 = *(v0 + 496);
      v197 = *(v0 + 472);
      v199 = *(v0 + 488);
      v196 = *(v0 + 464);
      v192 = *(v0 + 456);
      v138 = *(v0 + 440);
      v139 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v276[0] = v195;
      *v139 = 136315906;
      typec(v136, v135, v137);
      v140 = String.init<A>(describing:)();
      v142 = v141;
      v193 = *v237;
      typee = v132;
      (*v237)(v135, v137);
      v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v142, v276);

      *(v139 + 4) = v143;
      *(v139 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.OutgoingEventState and conformance MLS.OutgoingEventState, MEMORY[0x277D4CF20]);
      v144 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v145;
      v147 = *v200;
      (*v200)(v192, v138);
      v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, v276);

      *(v139 + 14) = v148;
      *(v139 + 22) = 2080;
      v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v233, v276);

      *(v139 + 24) = v149;
      *(v139 + 32) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v150 = dispatch thunk of CustomStringConvertible.description.getter();
      v152 = v151;
      v194(v204, log);
      v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v152, v276);

      *(v139 + 34) = v153;
      _os_log_impl(&dword_26524C000, v131, typee, "DaemonPersister loadEventsClientIdentifier loaded outgoing event { outgoingEvent: %s, state: %s,for group: %s, for client: %s }", v139, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v195, -1, -1);
      MEMORY[0x2667577B0](v139, -1, -1);
      outlined consume of Data?(v262, v266);
      outlined consume of Data?(v209, v211);
      outlined consume of Data?(v252, v243);

      outlined destroy of OutgoingEventModel(v0 + 16);
      v147(v196, v138);
      (*v228)(v199, v197);
      result = (v193)(v208, v137);
    }

    else
    {
      v154 = *(v0 + 496);
      v230 = *(v0 + 488);
      v156 = *(v0 + 464);
      v155 = *(v0 + 472);
      v157 = *(v0 + 456);
      v158 = *(v0 + 440);
      outlined consume of Data?(v262, v266);
      outlined consume of Data?(v209, v211);
      outlined consume of Data?(v252, v243);

      outlined destroy of OutgoingEventModel(v0 + 16);

      v134(v204, log);
      v159 = *v200;
      (*v200)(v157, v158);
      v160 = *v237;
      (*v237)(v135, v154);
      v159(v156, v158);
      (*v228)(v230, v155);
      result = (v160)(v208, v154);
    }

    goto LABEL_35;
  }

LABEL_36:
  v161 = *(v0 + 808);
  v162 = *(v0 + 736);
  v163 = *(v0 + 728);
  v164 = *(v0 + 368);
  outlined consume of Data._Representation(v163, v162);

  v166 = *(v0 + 352);
  v165 = *(v0 + 360);

  MLS.StoredEvents.init(groupToOutgoingEvents:groupToIncomingEvents:)();
  outlined consume of Data._Representation(v163, v162);
  outlined consume of Data._Representation(v163, v162);

  v167 = *(v0 + 664);
  v168 = *(v0 + 656);
  v169 = *(v0 + 648);
  v170 = *(v0 + 640);
  v171 = *(v0 + 632);
  v172 = *(v0 + 624);
  v173 = *(v0 + 616);
  v174 = *(v0 + 608);
  v175 = *(v0 + 584);
  v176 = *(v0 + 576);
  v235 = *(v0 + 568);
  v238 = *(v0 + 560);
  v241 = *(v0 + 536);
  v244 = *(v0 + 528);
  v246 = *(v0 + 520);
  v249 = *(v0 + 512);
  v253 = *(v0 + 488);
  v256 = *(v0 + 464);
  v259 = *(v0 + 456);
  v263 = *(v0 + 432);
  v267 = *(v0 + 424);
  v270 = *(v0 + 416);
  v274 = *(v0 + 408);

  v177 = *(v0 + 8);
LABEL_38:

  return v177();
}

{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v9 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v4 = v2[86];
    v5 = v2[85];
    v6 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  else
  {
    v7 = v2[103];

    v4 = v2[86];
    v5 = v2[85];
    v6 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[84];

  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[73];
  v11 = v0[72];
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[67];
  v17 = v0[66];
  v18 = v0[65];
  v19 = v0[64];
  v20 = v0[61];
  v21 = v0[58];
  v22 = v0[57];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[51];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[103];
  v2 = v0[84];

  v28 = v0[105];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];
  v10 = v0[76];
  v11 = v0[73];
  v12 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v17 = v0[67];
  v18 = v0[66];
  v19 = v0[65];
  v20 = v0[64];
  v21 = v0[61];
  v22 = v0[58];
  v23 = v0[57];
  v24 = v0[54];
  v25 = v0[53];
  v26 = v0[52];
  v27 = v0[51];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[84];

  outlined consume of Data._Representation(v3, v2);

  v30 = v0[97];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[73];
  v14 = v0[72];
  v17 = v0[71];
  v18 = v0[70];
  v19 = v0[67];
  v20 = v0[66];
  v21 = v0[65];
  v22 = v0[64];
  v23 = v0[61];
  v24 = v0[58];
  v25 = v0[57];
  v26 = v0[54];
  v27 = v0[53];
  v28 = v0[52];
  v29 = v0[51];

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[99];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[84];
  outlined consume of Data._Representation(v3, v2);

  outlined consume of Data._Representation(v3, v2);

  v5 = v0[44];

  v31 = v0[102];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[78];
  v12 = v0[77];
  v13 = v0[76];
  v14 = v0[73];
  v15 = v0[72];
  v18 = v0[71];
  v19 = v0[70];
  v20 = v0[67];
  v21 = v0[66];
  v22 = v0[65];
  v23 = v0[64];
  v24 = v0[61];
  v25 = v0[58];
  v26 = v0[57];
  v27 = v0[54];
  v28 = v0[53];
  v29 = v0[52];
  v30 = v0[51];

  v16 = v0[1];

  return v16();
}

uint64_t DaemonPersister.loadEvents(clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 760);
  v9 = *v2;
  v3[96] = a1;
  v3[97] = v1;

  if (v1)
  {
    outlined consume of Data._Representation(v3[91], v3[92]);
    v5 = v3[86];
    v6 = v3[85];
    v7 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  else
  {
    v5 = v3[86];
    v6 = v3[85];
    v7 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v3 = *v2;
  v4 = *(*v2 + 800);
  v9 = *v2;
  v3[101] = a1;
  v3[102] = v1;

  if (v1)
  {
    outlined consume of Data._Representation(v3[91], v3[92]);
    v5 = v3[86];
    v6 = v3[85];
    v7 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  else
  {
    v5 = v3[86];
    v6 = v3[85];
    v7 = DaemonPersister.loadEvents(clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void DaemonPersister.loadEvents(clientIdentifier:)()
{
  v149 = v0;
  v1 = v0[96];
  v2 = v0[48];
  v116 = *(v1 + 16);
  v117 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_decoder;
  v0[98] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_decoder;
  if (v116)
  {
    v3 = 0;
    v115 = (v0 + 26);
    v4 = v0[69];
    v106 = v4;
    v111 = v0[75] + 8;
    v112 = (v4 + 16);
    v123 = (v4 + 8);
    v5 = v0[97];
    v6 = (v1 + 48);
    v113 = v1;
    v114 = v2;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v129 = v3;
      v9 = *v6;
      v10 = v6[1];
      v12 = v6[2];
      v11 = v6[3];
      v14 = v6[4];
      v13 = v6[5];
      v131 = v6;
      v15 = *(v2 + v117);
      v133 = *(v6 - 2);
      v135 = *(v6 - 1);
      outlined copy of Data._Representation(v133, v135);
      outlined copy of Data._Representation(v9, v10);
      v143 = v12;
      v145 = v11;
      outlined copy of Data._Representation(v12, v11);
      v141 = v14;
      outlined copy of Data._Representation(v14, v13);
      v137 = v9;
      v139 = v10;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v5)
      {
        break;
      }

      v16 = v0[38];
      v17 = v0[39];
      v18 = v0[44];
      v127 = v13;
      if (!*(v18 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v16, v17), (v19 & 1) == 0))
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v148[0] = v18;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x277D84F90], v16, v17, isUniquelyReferenced_nonNull_native);

        v0[44] = v148[0];
      }

      v21 = v0[73];
      v22 = v0[68];
      lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingEventType<MLS.AllMember, Data> and conformance MLS.IncomingEventType<A, B>, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v24 = specialized Dictionary.subscript.modify(v115, v16, v17);
      v121 = v16;
      v125 = v17;
      if (*v23)
      {
        v25 = v23;
        v118 = *v112;
        (*v112)(v0[72], v0[73], v0[68]);
        v26 = *v25;
        v27 = swift_isUniquelyReferenced_nonNull_native();
        *v25 = v26;
        if ((v27 & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
          *v25 = v26;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v26);
          *v25 = v26;
        }

        v30 = v0[72];
        v31 = v0[68];
        v26[2] = v29 + 1;
        (*(v106 + 32))(v26 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v29, v30, v31);
        (v24)(v115, 0);
        v32 = v118;
      }

      else
      {
        (v24)(v115, 0);
        v32 = *v112;
      }

      v33 = v0[89];
      v34 = v0[88];
      v35 = v0[87];
      v36 = v0[81];
      v37 = v0[74];
      v38 = v0[47];
      v39 = v0[48];
      v32(v0[71], v0[73], v0[68]);
      v34(v36, v38, v37);

      v40 = Logger.logObject.getter();
      LOBYTE(v36) = static os_log_type_t.default.getter();

      v41 = v36;
      v42 = os_log_type_enabled(v40, v36);
      v43 = v0[90];
      v44 = v0[81];
      v45 = v0[74];
      v46 = v0[73];
      v47 = v0[71];
      if (v42)
      {
        v107 = v0[74];
        v108 = v0[90];
        v48 = v0[70];
        v49 = v0[68];
        log = v40;
        v50 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v148[0] = v110;
        *v50 = 136315650;
        v32(v48, v47, v49);
        v51 = String.init<A>(describing:)();
        v119 = v46;
        v53 = v52;
        v54 = *v123;
        (*v123)(v47, v49);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v148);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2080;
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v125, v148);

        *(v50 + 14) = v56;
        *(v50 + 22) = 2080;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        v108(v44, v107);
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v148);

        *(v50 + 24) = v60;
        _os_log_impl(&dword_26524C000, log, v41, "DaemonPersister loadEventsClientIdentifier loaded incoming event { incomingEvent: %s, for group: %s, for client: %s }", v50, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v110, -1, -1);
        MEMORY[0x2667577B0](v50, -1, -1);

        outlined consume of Data._Representation(v133, v135);
        outlined consume of Data._Representation(v137, v139);
        outlined consume of Data._Representation(v143, v145);
        outlined consume of Data._Representation(v141, v127);
        v54(v119, v49);
      }

      else
      {
        v7 = v0[68];

        outlined consume of Data._Representation(v133, v135);
        outlined consume of Data._Representation(v137, v139);
        outlined consume of Data._Representation(v143, v145);
        outlined consume of Data._Representation(v141, v127);

        v43(v44, v45);
        v8 = *v123;
        (*v123)(v47, v7);
        v8(v46, v7);
      }

      v1 = v113;
      v2 = v114;
      v5 = 0;
      v3 = v129 + 1;
      v6 = v131 + 8;
      if (v116 == v129 + 1)
      {
        v77 = v0[96];
        v78 = v0[48];
        goto LABEL_23;
      }
    }

    v61 = v0[96];
    v62 = v13;
    v63 = v0[92];
    v64 = v0[91];
    v65 = v0[84];
    outlined consume of Data._Representation(v64, v63);

    outlined consume of Data._Representation(v64, v63);
    outlined consume of Data._Representation(v133, v135);
    outlined consume of Data._Representation(v137, v10);
    outlined consume of Data._Representation(v12, v145);
    outlined consume of Data._Representation(v141, v62);

    v66 = v0[44];

    v67 = v0[83];
    v68 = v0[82];
    v69 = v0[81];
    v70 = v0[80];
    v71 = v0[79];
    v72 = v0[78];
    v73 = v0[77];
    v74 = v0[76];
    v75 = v0[73];
    v120 = v0[72];
    v122 = v0[71];
    v124 = v0[70];
    v126 = v0[67];
    v128 = v0[66];
    v130 = v0[65];
    v132 = v0[64];
    v134 = v0[61];
    v136 = v0[58];
    v138 = v0[57];
    v140 = v0[54];
    v142 = v0[53];
    v144 = v0[52];
    v146 = v0[51];

    v76 = v0[1];

    v76();
  }

  else
  {
LABEL_23:
    v79 = v0[89];
    v80 = v0[88];
    v81 = v0;
    v82 = v0[87];
    v83 = v0[80];
    v84 = v0[74];
    v85 = v0[47];

    v80(v83, v85, v84);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    v88 = os_log_type_enabled(v86, v87);
    v89 = v0[90];
    v90 = v0[80];
    v91 = v0[75];
    v92 = v0[74];
    if (v88)
    {
      v93 = v0[90];
      v94 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v148[0] = v147;
      *v94 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v93(v90, v92);
      v0 = v81;
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v148);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_26524C000, v86, v87, "DaemonPersister loadEventsClientIdentifier loading outgoing events { identifier: %s }", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v147);
      MEMORY[0x2667577B0](v147, -1, -1);
      MEMORY[0x2667577B0](v94, -1, -1);
    }

    else
    {

      v89(v90, v92);
    }

    v99 = v0[92];
    v100 = v0[91];
    v101 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v0[99] = v101;
    v0[45] = v101;
    outlined copy of Data._Representation(v100, v99);
    v102 = swift_task_alloc();
    v0[100] = v102;
    *v102 = v0;
    v102[1] = DaemonPersister.loadEvents(clientIdentifier:);
    v103 = v0[94];
    v104 = v0[92];
    v105 = v0[91];

    (specialized SqliteStore.query<A>(_:))(v105, v104);
  }
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t DaemonPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = type metadata accessor for MLS.OutgoingEventState();
  v3[38] = v4;
  v5 = *(v4 - 8);
  v3[39] = v5;
  v6 = *(v5 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v7 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[43] = v7;
  v8 = *(v7 - 8);
  v3[44] = v8;
  v9 = *(v8 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[50] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[51] = v11;
  v3[52] = v10;

  return MEMORY[0x2822009F8](DaemonPersister.loadRetriableEventStates(clientIdentifier:), v11, v10);
}

uint64_t DaemonPersister.loadRetriableEventStates(clientIdentifier:)()
{
  v51 = v0;
  v1 = *(v0 + 352);
  v2 = (*(**(v0 + 296) + 264))();
  *(v0 + 424) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
  v3 = *(v1 + 16);
  *(v0 + 432) = v3;
  *(v0 + 440) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = *(v0 + 344);
  v5 = *(v0 + 288);
  if (v2)
  {
    v3(*(v0 + 392), v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 392);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50[0] = v47;
      *v12 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v16 = *(v11 + 8);
      v16(v9, v10);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v50);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister loadRetriableEventStatesClientIdentifier using persistence mode { identifier: %s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x2667577B0](v47, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);
    }

    else
    {

      v16 = *(v11 + 8);
      v16(v9, v10);
    }

    *(v0 + 448) = v16;
    v30 = *(v0 + 344);
    v32 = *(v0 + 288);
    v31 = *(v0 + 296);
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO18OutgoingEventStateVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 456) = v33;
    *(v0 + 272) = v33;
    v34 = *(v31 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 464) = v35;
    *(v0 + 472) = v36;
    v42 = *(*(v0 + 296) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    v43 = v35;
    v44 = v36;
    outlined copy of Data._Representation(v35, v36);
    v45 = swift_task_alloc();
    *(v0 + 480) = v45;
    *v45 = v0;
    v45[1] = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
    v39 = v43;
    v40 = v44;
    v41 = specialized SqliteStore.query<A>(_:);
  }

  else
  {
    v3(*(v0 + 360), v5, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 352);
    v21 = *(v0 + 360);
    v23 = *(v0 + 344);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50[0] = v48;
      *v24 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v50);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_26524C000, v18, v19, "DaemonPersister loadRetriableEventStatesClientIdentifier using inMemory mode { identifier: %s }", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x2667577B0](v48, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    else
    {

      v29 = (*(v22 + 8))(v21, v23);
    }

    *(v0 + 504) = (*(**(v0 + 296) + 168))(v29);
    v37 = *(MEMORY[0x277D4CE40] + 4);
    v49 = (*MEMORY[0x277D4CE40] + MEMORY[0x277D4CE40]);
    v38 = swift_task_alloc();
    *(v0 + 512) = v38;
    *v38 = v0;
    v38[1] = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
    v39 = *(v0 + 280);
    v40 = *(v0 + 288);
    v41 = v49;
  }

  return v41(v39, v40);
}

{
  v159 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 400);
  v156 = *(v0 + 296);

  v157 = v1;
  v154 = *(v1 + 16);
  if (v154)
  {
    v4 = 0;
    v138 = (v0 + 208);
    v5 = *(v0 + 496);
    v6 = (*(v0 + 488) + 32);
    v7 = *(v0 + 312);
    v153 = *(v0 + 352) + 8;
    v137 = (v7 + 16);
    v155 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_decoder;
    v130 = v7;
    v136 = (v7 + 8);
    while (v4 < *(v157 + 16))
    {
      v8 = v6[2];
      v9 = v6[3];
      v10 = v6[4];
      *(v0 + 96) = v6[5];
      v11 = v6[1];
      *(v0 + 16) = *v6;
      *(v0 + 32) = v11;
      *(v0 + 64) = v9;
      *(v0 + 80) = v10;
      *(v0 + 48) = v8;
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v156 + v155);
      outlined init with copy of OutgoingEventModel(v0 + 16, v0 + 112);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v5)
      {
        v118 = *(v0 + 488);
        v120 = *(v0 + 464);
        v119 = *(v0 + 472);
        outlined consume of Data._Representation(v120, v119);
        outlined consume of Data._Representation(v120, v119);
        outlined destroy of OutgoingEventModel(v0 + 16);

        v121 = *(v0 + 272);

        v123 = *(v0 + 384);
        v122 = *(v0 + 392);
        v125 = *(v0 + 368);
        v124 = *(v0 + 376);
        v126 = *(v0 + 360);
        v128 = *(v0 + 328);
        v127 = *(v0 + 336);
        v129 = *(v0 + 320);

        v117 = *(v0 + 8);
        goto LABEL_31;
      }

      v15 = *(v0 + 88);
      v16 = *(v0 + 240);
      v17 = *(v0 + 248);
      if (v15 >> 60 == 15)
      {
        v18 = *(v0 + 440);
        v19 = *(v0 + 424);
        v20 = *(v0 + 296);
        (*(v0 + 432))(*(v0 + 368), *(v0 + 288), *(v0 + 344));

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        v23 = os_log_type_enabled(v21, v22);
        v24 = *(v0 + 448);
        v25 = *(v0 + 368);
        v26 = *(v0 + 344);
        if (v23)
        {
          v143 = v16;
          v27 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v158[0] = v150;
          *v27 = 136315394;
          _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
          v140 = v22;
          v28 = v4;
          v29 = dispatch thunk of CustomStringConvertible.description.getter();
          loga = v21;
          v30 = v6;
          v32 = v31;
          v24(v25, v26);
          v33 = v29;
          v4 = v28;
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, v158);
          v6 = v30;

          *(v27 + 4) = v34;
          *(v27 + 12) = 2080;
          v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v17, v158);

          *(v27 + 14) = v35;
          _os_log_impl(&dword_26524C000, loga, v140, "DaemonPersister loadRetriableEventStatesClientIdentifier loading outgoing events - skip nil event state { identifier: %s, event: %s }", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2667577B0](v150, -1, -1);
          MEMORY[0x2667577B0](v27, -1, -1);

          result = outlined destroy of OutgoingEventModel(v0 + 16);
        }

        else
        {

          outlined destroy of OutgoingEventModel(v0 + 16);

          result = (v24)(v25, v26);
        }
      }

      else
      {
        v36 = *(v0 + 80);
        v152 = v6;
        v151 = *(v0 + 88);
        if (*(v0 + 56) >> 60 == 15)
        {
          v37 = *(v0 + 32);
          v38 = *(v0 + 40);
          outlined copy of Data._Representation(v36, v15);

          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          v39 = v36;
          v40 = *(v0 + 256);
          v41 = *(v0 + 264);
          v42 = *(v0 + 272);
          v141 = v40;
          log = v39;
          if (!*(v42 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v40, v41), (v43 & 1) == 0))
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v158[0] = v42;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x277D84F90], v40, v41, isUniquelyReferenced_nonNull_native);

            *(v0 + 272) = v158[0];
          }

          v45 = *(v0 + 336);
          v46 = *(v0 + 304);
          _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.OutgoingEventState and conformance MLS.OutgoingEventState, MEMORY[0x277D4CF20]);
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          v48 = specialized Dictionary.subscript.modify(v138, v141, v41);
          v139 = v4;
          if (*v47)
          {
            v49 = v47;
            v144 = *v137;
            (*v137)(*(v0 + 328), *(v0 + 336), *(v0 + 304));
            v50 = *v49;
            v51 = swift_isUniquelyReferenced_nonNull_native();
            *v49 = v50;
            if ((v51 & 1) == 0)
            {
              v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
              *v49 = v50;
            }

            v53 = v50[2];
            v52 = v50[3];
            if (v53 >= v52 >> 1)
            {
              v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v50);
              *v49 = v50;
            }

            v54 = *(v0 + 328);
            v55 = *(v0 + 304);
            v50[2] = v53 + 1;
            (*(v130 + 32))(v50 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v53, v54, v55);
            v48();
            v56 = v144;
          }

          else
          {
            (v48)(v138, 0);
            v56 = *v137;
          }

          v75 = *(v0 + 432);
          v74 = *(v0 + 440);
          v76 = *(v0 + 424);
          v77 = *(v0 + 376);
          v78 = *(v0 + 344);
          v79 = *(v0 + 296);
          v80 = *(v0 + 288);
          v56(*(v0 + 320), *(v0 + 336), *(v0 + 304));
          v75(v77, v80, v78);

          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();

          v83 = os_log_type_enabled(v81, v82);
          v84 = *(v0 + 448);
          v85 = *(v0 + 376);
          v86 = *(v0 + 336);
          v87 = *(v0 + 344);
          v88 = *(v0 + 320);
          v89 = *(v0 + 304);
          if (v83)
          {
            v132 = v82;
            v90 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v158[0] = v133;
            *v90 = 136315650;
            _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.OutgoingEventState and conformance MLS.OutgoingEventState, MEMORY[0x277D4CF20]);
            v131 = v84;
            v91 = dispatch thunk of CustomStringConvertible.description.getter();
            v146 = v86;
            v93 = v92;
            v94 = v89;
            v135 = v89;
            v95 = v41;
            v96 = *v136;
            (*v136)(v88, v94);
            v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v158);

            *(v90 + 4) = v97;
            *(v90 + 12) = 2080;
            v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v95, v158);

            *(v90 + 14) = v98;
            *(v90 + 22) = 2080;
            _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
            v99 = dispatch thunk of CustomStringConvertible.description.getter();
            v101 = v100;
            v131(v85, v87);
            v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v158);

            *(v90 + 24) = v102;
            _os_log_impl(&dword_26524C000, v81, v132, "DaemonPersister loadRetriableEventStatesClientIdentifier loaded outgoing event state { outgoingEvent: %s, for group: %s, for client: %s }", v90, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x2667577B0](v133, -1, -1);
            MEMORY[0x2667577B0](v90, -1, -1);
            outlined consume of Data?(log, v151);

            outlined destroy of OutgoingEventModel(v0 + 16);
            result = (v96)(v146, v135);
          }

          else
          {
            outlined consume of Data?(log, v151);

            outlined destroy of OutgoingEventModel(v0 + 16);

            v84(v85, v87);
            v103 = *v136;
            (*v136)(v88, v89);
            result = (v103)(v86, v89);
          }

          v4 = v139;
          v6 = v152;
        }

        else
        {
          v57 = *(v0 + 440);
          v58 = *(v0 + 424);
          v59 = *(v0 + 296);
          (*(v0 + 432))(*(v0 + 384), *(v0 + 288), *(v0 + 344));
          outlined copy of Data?(v36, v15);

          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.default.getter();

          v62 = os_log_type_enabled(v60, v61);
          v63 = *(v0 + 448);
          v64 = *(v0 + 384);
          v65 = *(v0 + 344);
          if (v62)
          {
            v145 = v16;
            v66 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            v158[0] = v142;
            *v66 = 136315394;
            _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
            v134 = v60;
            v67 = v4;
            v68 = dispatch thunk of CustomStringConvertible.description.getter();
            logb = v36;
            v70 = v69;
            v63(v64, v65);
            v71 = v68;
            v4 = v67;
            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v70, v158);

            *(v66 + 4) = v72;
            *(v66 + 12) = 2080;
            v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v17, v158);

            *(v66 + 14) = v73;
            _os_log_impl(&dword_26524C000, v134, v61, "DaemonPersister loadRetriableEventStatesClientIdentifier loading outgoing events - skip non-retryable event { identifier: %s, event: %s }", v66, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2667577B0](v142, -1, -1);
            MEMORY[0x2667577B0](v66, -1, -1);
            outlined consume of Data?(logb, v151);

            result = outlined destroy of OutgoingEventModel(v0 + 16);
          }

          else
          {

            outlined consume of Data?(v36, v151);
            outlined destroy of OutgoingEventModel(v0 + 16);

            result = (v63)(v64, v65);
          }

          v6 = v152;
        }
      }

      v5 = 0;
      ++v4;
      v6 += 6;
      if (v154 == v4)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    v104 = *(v0 + 488);
    v105 = *(v0 + 464);
    v106 = *(v0 + 472);
    v107 = *(v0 + 280);

    v108 = *(v0 + 272);

    MLS.StoredEventStates.init(groupToOutgoingEventStates:)();
    outlined consume of Data._Representation(v105, v106);
    outlined consume of Data._Representation(v105, v106);

    v110 = *(v0 + 384);
    v109 = *(v0 + 392);
    v112 = *(v0 + 368);
    v111 = *(v0 + 376);
    v113 = *(v0 + 360);
    v115 = *(v0 + 328);
    v114 = *(v0 + 336);
    v116 = *(v0 + 320);

    v117 = *(v0 + 8);
LABEL_31:

    return v117();
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v9 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = v2[51];
    v5 = v2[52];
    v6 = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
  }

  else
  {
    v7 = v2[63];

    v4 = v2[51];
    v5 = v2[52];
    v6 = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[50];

  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[40];

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[63];
  v2 = v0[50];

  v3 = v0[65];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[45];
  v10 = v0[41];
  v9 = v0[42];
  v11 = v0[40];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[50];

  outlined consume of Data._Representation(v1, v2);

  v5 = v0[62];
  v7 = v0[48];
  v6 = v0[49];
  v9 = v0[46];
  v8 = v0[47];
  v10 = v0[45];
  v12 = v0[41];
  v11 = v0[42];
  v13 = v0[40];

  v14 = v0[1];

  return v14();
}

uint64_t DaemonPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v9 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {
    outlined consume of Data._Representation(v3[58], v3[59]);
    v5 = v3[51];
    v6 = v3[52];
    v7 = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
  }

  else
  {
    v5 = v3[51];
    v6 = v3[52];
    v7 = DaemonPersister.loadRetriableEventStates(clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t DaemonPersister.read(clientUUID:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v2[14] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v7;
  v2[16] = v6;

  return MEMORY[0x2822009F8](DaemonPersister.read(clientUUID:), v7, v6);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v7 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v8 = *(v3 + 128);
  v9 = *(v3 + 120);
  if (v1)
  {
    v10 = DaemonPersister.read(clientUUID:);
  }

  else
  {
    v10 = DaemonPersister.read(clientUUID:);
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t DaemonPersister.read(clientUUID:)()
{
  v46 = v0;
  v1 = *(v0 + 72);
  v2 = (*(**(v0 + 56) + 264))();
  *(v0 + 136) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
  v3 = *(v1 + 16);
  *(v0 + 144) = v3;
  *(v0 + 152) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  if (v2)
  {
    v3(*(v0 + 104), v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v12 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v16 = *(v11 + 8);
      v16(v9, v10);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v45);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister readClientUUID using persistence mode. { uuid: %s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x2667577B0](v42, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);
    }

    else
    {

      v16 = *(v11 + 8);
      v16(v9, v10);
    }

    *(v0 + 160) = v16;
    v31 = *(v0 + 48);
    v32 = *(*(v0 + 56) + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    v33 = UUID.uuidString.getter();
    v35 = v34;
    *(v0 + 168) = v34;
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = DaemonPersister.read(clientUUID:);

    return specialized SqliteStore.query<A>(_:)(v33, v35);
  }

  else
  {
    v3(*(v0 + 88), v5, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 88);
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v24 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v41 = v19;
      v28 = *(v22 + 8);
      v28(v21, v23);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v45);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_26524C000, v18, v41, "DaemonPersister readClientUUID using inMemory mode { uuid: %s }", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x2667577B0](v43, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    else
    {

      v28 = *(v22 + 8);
      v30 = (v28)(v21, v23);
    }

    *(v0 + 200) = v28;
    *(v0 + 208) = (*(**(v0 + 56) + 168))(v30);
    v38 = *(MEMORY[0x277D4CE60] + 4);
    v44 = (*MEMORY[0x277D4CE60] + MEMORY[0x277D4CE60]);
    v39 = swift_task_alloc();
    *(v0 + 216) = v39;
    *v39 = v0;
    v39[1] = DaemonPersister.read(clientUUID:);
    v40 = *(v0 + 48);

    return v44(v40);
  }
}

{
  v36 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 112);

  v3 = *(v0 + 184);
  if (*(v1 + 16))
  {
    v5 = v3[5];
    v4 = v3[6];
    v6 = v3[7];

    outlined copy of Data._Representation(v4, v6);

    outlined copy of Data._Representation(v4, v6);

    outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    v7 = *(v0 + 184);

    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v10 = *(v0 + 56);
  (*(v0 + 144))(*(v0 + 96), *(v0 + 48), *(v0 + 64));
  outlined copy of Data?(v4, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined consume of Data?(v4, v6);
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 160);
  v15 = *(v0 + 96);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  if (v13)
  {
    log = v11;
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v18 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v12;
    v21 = v20;
    v14(v15, v17);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v35);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v0 + 32) = v4;
    *(v0 + 40) = v6;
    outlined copy of Data?(v4, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v35);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_26524C000, log, v32, "DaemonPersister readClientUUID returning { uuid: %s, data: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v34, -1, -1);
    MEMORY[0x2667577B0](v18, -1, -1);
  }

  else
  {

    v14(v15, v17);
  }

  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v29 = *(v0 + 80);
  v28 = *(v0 + 88);

  v30 = *(v0 + 8);

  return v30(v4, v6);
}

{
  v41 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  v4(v7, v10, v8);
  outlined copy of Data?(v2, v1);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[28];
    v13 = v0[29];
    v15 = v0[10];
    v37 = v0[9];
    v38 = v0[25];
    v16 = v0[8];
    v17 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v17 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v38(v15, v16);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v40);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v0[2] = v14;
    v0[3] = v13;
    outlined copy of Data?(v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v40);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_26524C000, v11, v12, "DaemonPersister readClientUUID returning { uuid: %s, data: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v39, -1, -1);
    MEMORY[0x2667577B0](v17, -1, -1);
  }

  else
  {
    v25 = v0[25];
    v27 = v0[9];
    v26 = v0[10];
    v28 = v0[8];

    v25(v26, v28);
  }

  v29 = v0[28];
  v30 = v0[29];
  v32 = v0[12];
  v31 = v0[13];
  v34 = v0[10];
  v33 = v0[11];

  v35 = v0[1];

  return v35(v29, v30);
}

{
  v1 = v0[26];

  v2 = v0[30];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[24];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t DaemonPersister.read(clientUUID:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 216);
  v11 = *v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[30] = v2;

  if (v2)
  {
    v6 = v4[15];
    v7 = v4[16];
    v8 = DaemonPersister.read(clientUUID:);
  }

  else
  {
    v9 = v4[26];

    v6 = v4[15];
    v7 = v4[16];
    v8 = DaemonPersister.read(clientUUID:);
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t DaemonPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v4[16] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v9;
  v4[18] = v8;

  return MEMORY[0x2822009F8](DaemonPersister.write(clientUUID:clientState:), v9, v8);
}

uint64_t DaemonPersister.write(clientUUID:clientState:)()
{
  v92 = v0;
  v1 = *(v0 + 96);
  v2 = (*(**(v0 + 80) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  if (v2)
  {
    v86 = *(v1 + 16);
    v3(*(v0 + 120), v7, v4);
    outlined copy of Data._Representation(v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v6, v5);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 120);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    if (v10)
    {
      v81 = *(v0 + 64);
      v82 = *(v0 + 72);
      v14 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v91[0] = v83;
      *v14 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v84 = *(v12 + 8);
      v84(v11, v13);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v91);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = Data.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v91);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26524C000, v8, v9, "DaemonPersister writeClientUUID using persistence mode { uuid: %s, clientState: %s }", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v83, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    else
    {

      v84 = *(v12 + 8);
      v22 = (v84)(v11, v13);
    }

    if ((*(**(v0 + 80) + 192))(v22))
    {
      v39 = *(v0 + 72);
      v40 = *(v0 + 80);
      v41 = *(v0 + 56);
      v42 = *(v0 + 64);
      v43 = UUID.uuidString.getter();
      v45 = v44;
      *(v0 + 152) = v44;
      v46 = *(v40 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 40) = &type metadata for ClientStateModel;
      *(v0 + 48) = &protocol witness table for ClientStateModel;
      v47 = swift_allocObject();
      *(v0 + 16) = v47;
      v47[2] = v43;
      v47[3] = v45;
      v47[4] = v42;
      v47[5] = v39;
      outlined copy of Data._Representation(v42, v39);

      outlined copy of Data._Representation(v42, v39);
      v48 = swift_task_alloc();
      *(v0 + 160) = v48;
      *v48 = v0;
      v48[1] = DaemonPersister.write(clientUUID:clientState:);

      return SqliteStore.insert(_:)(v0 + 16);
    }

    else
    {
      v55 = *(v0 + 128);
      v56 = *(v0 + 112);
      v57 = *(v0 + 88);
      v59 = *(v0 + 64);
      v58 = *(v0 + 72);
      v60 = *(v0 + 56);

      v86(v56, v60, v57);
      outlined copy of Data._Representation(v59, v58);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.fault.getter();
      outlined consume of Data._Representation(v59, v58);
      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 112);
      v66 = *(v0 + 88);
      v65 = *(v0 + 96);
      if (v63)
      {
        v88 = *(v0 + 64);
        v90 = *(v0 + 72);
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v91[0] = v68;
        *v67 = 136315394;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v70;
        v84(v64, v66);
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v91);

        *(v67 + 4) = v72;
        *(v67 + 12) = 2080;
        v73 = Data.description.getter();
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v91);

        *(v67 + 14) = v75;
        _os_log_impl(&dword_26524C000, v61, v62, "DaemonPersister writeClientUUID called outside atomically block { uuid: %s, clientState: %s }", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v68, -1, -1);
        MEMORY[0x2667577B0](v67, -1, -1);
      }

      else
      {

        v84(v64, v66);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v76 = 6;
      *(v76 + 8) = 0;
      *(v76 + 16) = 0;
      swift_willThrow();
      v78 = *(v0 + 112);
      v77 = *(v0 + 120);
      v79 = *(v0 + 104);

      v80 = *(v0 + 8);

      return v80();
    }
  }

  else
  {
    v3(*(v0 + 104), v7, v4);
    outlined copy of Data._Representation(v6, v5);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v6, v5);
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 88);
    if (v25)
    {
      v85 = *(v0 + 64);
      v87 = *(v0 + 72);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v91[0] = v30;
      *v29 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v26 + 8))(v27, v28);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v91);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      v35 = Data.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v91);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_26524C000, v23, v24, "DaemonPersister writeClientUUID using inMemory mode { uuid: %s, clientState: %s }", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v30, -1, -1);
      MEMORY[0x2667577B0](v29, -1, -1);
    }

    else
    {

      v38 = (*(v26 + 8))(v27, v28);
    }

    *(v0 + 176) = (*(**(v0 + 80) + 168))(v38);
    v50 = *(MEMORY[0x277D4CEA0] + 4);
    v89 = (*MEMORY[0x277D4CEA0] + MEMORY[0x277D4CEA0]);
    v51 = swift_task_alloc();
    *(v0 + 184) = v51;
    *v51 = v0;
    v51[1] = DaemonPersister.write(clientUUID:clientState:);
    v52 = *(v0 + 64);
    v53 = *(v0 + 72);
    v54 = *(v0 + 56);

    return v89(v54, v52, v53);
  }
}

{
  v2 = *v1;
  v3 = (*v1)[20];
  v8 = *v1;
  (*v1)[21] = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = DaemonPersister.write(clientUUID:clientState:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v4 = v2[17];
    v5 = v2[18];
    v6 = DaemonPersister.write(clientUUID:clientState:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[19];
  v2 = v0[16];
  v4 = v0[8];
  v3 = v0[9];

  outlined consume of Data._Representation(v4, v3);
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = DaemonPersister.write(clientUUID:clientState:);
  }

  else
  {
    v7 = v2[22];

    v4 = v2[17];
    v5 = v2[18];
    v6 = DaemonPersister.write(clientUUID:clientState:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[16];

  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[22];
  v2 = v0[16];

  v3 = v0[24];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[19];
  v2 = v0[16];
  v4 = v0[8];
  v3 = v0[9];

  outlined consume of Data._Representation(v4, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[21];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[116] = v4;
  v5[115] = a4;
  v5[114] = a3;
  v5[113] = a2;
  v5[112] = a1;
  v6 = type metadata accessor for MLS.EpochKey();
  v5[117] = v6;
  v7 = *(v6 - 8);
  v5[118] = v7;
  v8 = *(v7 + 64) + 15;
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Record();
  v5[121] = v9;
  v10 = *(v9 - 8);
  v5[122] = v10;
  v11 = *(v10 + 64) + 15;
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v12 = type metadata accessor for MLS.WriteGroupData();
  v5[125] = v12;
  v13 = *(v12 - 8);
  v5[126] = v13;
  v14 = *(v13 + 64) + 15;
  v5[127] = swift_task_alloc();
  v15 = type metadata accessor for MLS.Storage.EpochRecord();
  v5[128] = v15;
  v16 = *(v15 - 8);
  v5[129] = v16;
  v17 = *(v16 + 64) + 15;
  v5[130] = swift_task_alloc();
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v18 = type metadata accessor for MLS.Storage.GroupStateUpdate();
  v5[133] = v18;
  v19 = *(v18 - 8);
  v5[134] = v19;
  v20 = *(v19 + 64) + 15;
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[139] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v22 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[140] = v22;
  v5[141] = v21;

  return MEMORY[0x2822009F8](DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:), v22, v21);
}

uint64_t DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:)()
{
  v250 = v0;
  if ((*(*v0[116] + 264))())
  {
    v1 = v0[115];
    v2 = *(v0[116] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[142] = v3;
    v0[143] = v4;
    v51 = v4;
    v245 = v3;
    v52 = v0[138];
    v53 = v0[134];
    v54 = v0[133];
    v55 = v0[116];
    v56 = v0[114];
    v57 = v0[113];
    v58 = v0[112];
    v0[144] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v59 = *(v53 + 16);
    v59(v52, v56, v54);
    outlined copy of Data._Representation(v58, v57);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v58, v57);
    v62 = os_log_type_enabled(v60, v61);
    v63 = v0[138];
    v241 = v51;
    v231 = v59;
    if (v62)
    {
      v228 = v0[137];
      v224 = v61;
      v64 = v0[134];
      v65 = v0[133];
      v66 = v0[113];
      v67 = v0[112];
      v68 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v249[0] = v221;
      *v68 = 136315394;
      v69 = Data.description.getter();
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v249);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2080;
      v59(v228, v63, v65);
      v72 = String.init<A>(describing:)();
      v74 = v73;
      v75 = v65;
      v51 = v241;
      v229 = *(v64 + 8);
      v229(v63, v75);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v249);

      *(v68 + 14) = v76;
      _os_log_impl(&dword_26524C000, v60, v224, "DaemonPersister groupStateUpdate using persistence mode { groupID: %s, groupStateUpdate: %s }", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v221, -1, -1);
      MEMORY[0x2667577B0](v68, -1, -1);
    }

    else
    {
      v113 = v0[134];
      v114 = v0[133];

      v229 = *(v113 + 8);
      v77 = (v229)(v63, v114);
    }

    v115 = v245;
    if ((*(*v0[116] + 192))(v77))
    {
      v116 = v0[114];
      v117 = v0[113];
      v118 = v0[112];
      outlined copy of Data._Representation(v245, v51);
      v119 = MLS.Storage.GroupStateUpdate.groupState.getter();
      v217 = v120;
      v218 = v119;
      v0[145] = v119;
      v0[146] = v120;
      outlined copy of Data._Representation(v118, v117);
      v121 = MLS.Storage.GroupStateUpdate.epochInserts.getter();
      v122 = *(v121 + 16);
      v236 = v0;
      if (v122)
      {
        v123 = v0[129];
        v225 = *(v123 + 16);
        v124 = v121 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
        v219 = *(v123 + 72);
        v222 = (v123 + 8);
        v125 = v122 - 1;
        v126 = MEMORY[0x277D84F90];
        while (1)
        {
          v127 = v0[132];
          v128 = v0[128];
          v129 = v0[113];
          v130 = v0[112];
          v232 = v124;
          v225(v127);
          outlined copy of Data._Representation(v245, v51);
          v131 = MLS.Storage.EpochRecord.epochID.getter();
          v132 = MLS.Storage.EpochRecord.data.getter();
          v134 = v133;
          (*v222)(v127, v128);
          outlined copy of Data._Representation(v130, v129);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v126 + 2) + 1, 1, v126);
          }

          v136 = *(v126 + 2);
          v135 = *(v126 + 3);
          v0 = v236;
          if (v136 >= v135 >> 1)
          {
            v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1, v126);
          }

          v137 = &v126[80 * v136];
          v138 = *(v236 + 56);
          *(v126 + 2) = v136 + 1;
          *(v137 + 4) = v245;
          *(v137 + 5) = v241;
          *(v137 + 6) = v131;
          v137[56] = 0;
          *(v137 + 15) = *&v248[3];
          *(v137 + 57) = *v248;
          *(v137 + 8) = 1;
          v137[72] = 0;
          v139 = v249[0];
          *(v137 + 19) = *(v249 + 3);
          *(v137 + 73) = v139;
          *(v137 + 5) = v138;
          *(v137 + 12) = v132;
          *(v137 + 13) = v134;
          if (!v125)
          {
            break;
          }

          --v125;
          v124 = v232 + v219;
          v51 = v241;
        }

        v51 = v241;
      }

      else
      {

        v126 = MEMORY[0x277D84F90];
      }

      v0[147] = v126;
      v176 = v0[114];
      v177 = MLS.Storage.GroupStateUpdate.epochUpdates.getter();
      v178 = *(v177 + 16);
      if (v178)
      {
        v179 = v0[129];
        v227 = *(v179 + 16);
        v180 = v177 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
        v220 = *(v179 + 72);
        v223 = (v179 + 8);
        v181 = v178 - 1;
        v182 = MEMORY[0x277D84F90];
        while (1)
        {
          v183 = v0[131];
          v184 = v0[128];
          v185 = v0[113];
          v186 = v0[112];
          v233 = v180;
          v227(v183);
          outlined copy of Data._Representation(v245, v51);
          v187 = MLS.Storage.EpochRecord.epochID.getter();
          v188 = MLS.Storage.EpochRecord.data.getter();
          v190 = v189;
          (*v223)(v183, v184);
          outlined copy of Data._Representation(v186, v185);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v182 + 2) + 1, 1, v182);
          }

          v192 = *(v182 + 2);
          v191 = *(v182 + 3);
          v0 = v236;
          if (v192 >= v191 >> 1)
          {
            v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v191 > 1), v192 + 1, 1, v182);
          }

          v193 = &v182[80 * v192];
          v194 = *(v236 + 56);
          *(v182 + 2) = v192 + 1;
          *(v193 + 4) = v245;
          *(v193 + 5) = v241;
          *(v193 + 6) = v187;
          v193[56] = 0;
          *(v193 + 15) = *&v248[3];
          *(v193 + 57) = *v248;
          *(v193 + 8) = 1;
          v193[72] = 0;
          v195 = v249[0];
          *(v193 + 19) = *(v249 + 3);
          *(v193 + 73) = v195;
          *(v193 + 5) = v194;
          *(v193 + 12) = v188;
          *(v193 + 13) = v190;
          if (!v181)
          {
            break;
          }

          --v181;
          v180 = v233 + v220;
          v51 = v241;
        }

        v51 = v241;
      }

      else
      {

        v182 = MEMORY[0x277D84F90];
      }

      v0[148] = v182;
      v196 = v0[114];
      v197 = MLS.Storage.GroupStateUpdate.epochDeletes.getter();
      v198 = *(v197 + 16);
      if (v198)
      {
        v199 = MEMORY[0x277D84F90];
        v200 = v198 - 1;
        v201 = 32;
        v202 = v245;
        while (1)
        {
          v203 = *(v197 + v201);
          outlined copy of Data._Representation(v236[112], v236[113]);
          outlined copy of Data._Representation(v202, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v199 + 2) + 1, 1, v199);
          }

          v205 = *(v199 + 2);
          v204 = *(v199 + 3);
          if (v205 >= v204 >> 1)
          {
            v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v204 > 1), v205 + 1, 1, v199);
          }

          v206 = &v199[80 * v205];
          v207 = *(v236 + 56);
          *(v199 + 2) = v205 + 1;
          v202 = v245;
          *(v206 + 4) = v245;
          *(v206 + 5) = v51;
          *(v206 + 6) = v203;
          v206[56] = 0;
          *(v206 + 15) = *&v248[3];
          *(v206 + 57) = *v248;
          *(v206 + 8) = 1;
          v206[72] = 0;
          v208 = v249[0];
          *(v206 + 19) = *(v249 + 3);
          *(v206 + 73) = v208;
          *(v206 + 5) = v207;
          *(v206 + 6) = xmmword_265343890;
          if (!v200)
          {
            break;
          }

          --v200;
          v201 += 8;
        }

        outlined consume of Data._Representation(v245, v51);
        v0 = v236;
      }

      else
      {

        v202 = v245;
        outlined consume of Data._Representation(v245, v51);
        v199 = MEMORY[0x277D84F90];
      }

      v0[149] = v199;
      v209 = Logger.logObject.getter();
      v210 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v209, v210))
      {
        v211 = swift_slowAlloc();
        *v211 = 0;
        _os_log_impl(&dword_26524C000, v209, v210, "DaemonPersister groupStateUpdate inserting group state", v211, 2u);
        MEMORY[0x2667577B0](v211, -1, -1);
      }

      v212 = v0[116];
      v213 = v0[113];
      v214 = v0[112];

      v0[150] = *(v212 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      v0[95] = &type metadata for GroupStateModel;
      v0[96] = &protocol witness table for GroupStateModel;
      v215 = swift_allocObject();
      v0[92] = v215;
      v215[2] = v202;
      v215[3] = v51;
      v215[4] = v214;
      v215[5] = v213;
      v215[6] = v218;
      v215[7] = v217;
      outlined copy of Data._Representation(v202, v51);
      outlined copy of Data._Representation(v214, v213);
      outlined copy of Data._Representation(v218, v217);
      v216 = swift_task_alloc();
      v0[151] = v216;
      *v216 = v0;
      v216[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);

      return SqliteStore.insert(_:)((v0 + 92));
    }

    else
    {
      v140 = v0[139];
      v141 = v0[136];
      v142 = v0[133];
      v143 = v0[114];
      v144 = v0[113];
      v145 = v0[112];

      v231(v141, v143, v142);
      outlined copy of Data._Representation(v145, v144);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.fault.getter();
      outlined consume of Data._Representation(v145, v144);
      if (os_log_type_enabled(v146, v147))
      {
        v148 = v0[137];
        v149 = v0[136];
        v226 = v0[134];
        v150 = v0[133];
        v151 = v0[113];
        v152 = v0[112];
        v153 = swift_slowAlloc();
        v237 = swift_slowAlloc();
        v249[0] = v237;
        *v153 = 136315394;
        v154 = Data.description.getter();
        v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, v249);

        *(v153 + 4) = v156;
        *(v153 + 12) = 2080;
        v231(v148, v149, v150);
        v51 = v241;
        v157 = String.init<A>(describing:)();
        v159 = v158;
        v160 = v149;
        v115 = v245;
        v229(v160, v150);
        v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v159, v249);

        *(v153 + 14) = v161;
        _os_log_impl(&dword_26524C000, v146, v147, "DaemonPersister groupStateUpdate called outside atomically block { groupID: %s, groupStateUpdate: %s }", v153, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v237, -1, -1);
        MEMORY[0x2667577B0](v153, -1, -1);
      }

      else
      {
        v162 = v0[136];
        v163 = v0[134];
        v164 = v0[133];

        v229(v162, v164);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v165 = 6;
      *(v165 + 8) = 0;
      *(v165 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v115, v51);
      v166 = v0[138];
      v167 = v0[137];
      v168 = v0[136];
      v169 = v0[135];
      v170 = v0[132];
      v171 = v0[131];
      v172 = v0[130];
      v173 = v0[127];
      v174 = v0[124];
      v238 = v0[123];
      v243 = v0[120];
      v247 = v0[119];

      v175 = v0[1];

      return v175();
    }
  }

  else
  {
    v5 = v0[135];
    v6 = v0[133];
    v7 = v0[116];
    v8 = v0[114];
    v9 = v0[113];
    v10 = v0;
    v11 = v0[112];
    v12 = *(v0[134] + 16);
    v12(v5, v8, v6);
    outlined copy of Data._Representation(v11, v9);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v11, v9);
    if (os_log_type_enabled(v13, v14))
    {
      v230 = v10[137];
      v239 = v10[135];
      v15 = v10[134];
      v16 = v10[133];
      v17 = v10[113];
      v18 = v10[112];
      v19 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      v249[0] = v244;
      *v19 = 136315394;
      v20 = Data.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v249);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v12(v230, v239, v16);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      (*(v15 + 8))(v239, v16);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v249);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_26524C000, v13, v14, "DaemonPersister groupStateUpdate using inMemory mode { groupID: %s, groupStateUpdate: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v244, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {
      v28 = v10[135];
      v29 = v10[134];
      v30 = v10[133];

      v27 = (*(v29 + 8))(v28, v30);
    }

    v31 = v10;
    v32 = v10[114];
    v10[165] = (*(*v10[116] + 168))(v27);
    MLS.Storage.GroupStateUpdate.groupState.getter();
    v33 = MLS.Storage.GroupStateUpdate.epochInserts.getter();
    v34 = *(v33 + 16);
    v35 = MEMORY[0x277D84F90];
    if (v34)
    {
      v36 = v10[129];
      v37 = v10[122];
      v249[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
      v38 = v249[0];
      v39 = *(v36 + 16);
      v36 += 16;
      v40 = v33 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
      v234 = *(v36 + 56);
      v240 = v39;
      v41 = (v36 - 8);
      do
      {
        v42 = v31[130];
        v43 = v31[128];
        v44 = v31[124];
        v45 = v31;
        v46 = v31[120];
        v240(v42, v40, v43);
        MLS.Storage.EpochRecord.epochID.getter();
        MLS.EpochKey.init(era:epochID:)();
        MLS.Storage.EpochRecord.data.getter();
        MLS.Record.init(epochKey:data:)();
        (*v41)(v42, v43);
        v249[0] = v38;
        v48 = *(v38 + 16);
        v47 = *(v38 + 24);
        if (v48 >= v47 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1);
          v38 = v249[0];
        }

        v49 = v45[124];
        v50 = v45[121];
        *(v38 + 16) = v48 + 1;
        (*(v37 + 32))(v38 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v48, v49, v50);
        v40 += v234;
        --v34;
        v31 = v45;
      }

      while (v34);

      v35 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v78 = v31[114];
    v79 = MLS.Storage.GroupStateUpdate.epochUpdates.getter();
    v80 = *(v79 + 16);
    if (v80)
    {
      v81 = v31[129];
      v82 = v31[122];
      v249[0] = v35;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80, 0);
      v83 = v249[0];
      v84 = *(v81 + 16);
      v81 += 16;
      v85 = v79 + ((*(v81 + 64) + 32) & ~*(v81 + 64));
      v235 = *(v81 + 56);
      v242 = v84;
      v86 = (v81 - 8);
      do
      {
        v87 = v31[130];
        v88 = v31[128];
        v89 = v31[123];
        v90 = v31[120];
        v242(v87, v85, v88);
        MLS.Storage.EpochRecord.epochID.getter();
        MLS.EpochKey.init(era:epochID:)();
        MLS.Storage.EpochRecord.data.getter();
        MLS.Record.init(epochKey:data:)();
        (*v86)(v87, v88);
        v249[0] = v83;
        v92 = *(v83 + 16);
        v91 = *(v83 + 24);
        if (v92 >= v91 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, v92 + 1, 1);
          v83 = v249[0];
        }

        v93 = v31[123];
        v94 = v31[121];
        *(v83 + 16) = v92 + 1;
        (*(v82 + 32))(v83 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v92, v93, v94);
        v85 += v235;
        --v80;
      }

      while (v80);

      v35 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v95 = v31[114];
    v96 = MLS.Storage.GroupStateUpdate.epochDeletes.getter();
    v97 = *(v96 + 16);
    if (v97)
    {
      v98 = v31[118];
      v249[0] = v35;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97, 0);
      v99 = v249[0];
      v100 = 32;
      do
      {
        v101 = v31[119];
        v102 = *(v96 + v100);
        MLS.EpochKey.init(era:epochID:)();
        v249[0] = v99;
        v104 = *(v99 + 16);
        v103 = *(v99 + 24);
        if (v104 >= v103 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v103 > 1, v104 + 1, 1);
          v99 = v249[0];
        }

        v105 = v31[119];
        v106 = v31[117];
        *(v99 + 16) = v104 + 1;
        (*(v98 + 32))(v99 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v104, v105, v106);
        v100 += 8;
        --v97;
      }

      while (v97);
    }

    v107 = v31[127];
    outlined copy of Data._Representation(v31[112], v31[113]);
    MLS.WriteGroupData.init(groupID:groupState:epochInsertRecords:epochUpdateRecords:epochDeleteKeys:)();
    v108 = *(MEMORY[0x277D4CEA8] + 4);
    v246 = (*MEMORY[0x277D4CEA8] + MEMORY[0x277D4CEA8]);
    v109 = swift_task_alloc();
    v31[166] = v109;
    *v109 = v31;
    v109[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
    v110 = v31[115];
    v111 = v31[127];

    return v246(v111, v110);
  }
}

{
  v2 = *v1;
  v3 = (*v1)[151];
  v11 = *v1;
  (*v1)[152] = v0;

  if (v0)
  {
    v4 = v2[149];
    v5 = v2[148];
    v6 = v2[147];

    v7 = v2[141];
    v8 = v2[140];
    v9 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 92);
    v7 = v2[141];
    v8 = v2[140];
    v9 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v2 = *v1;
  v3 = (*v1)[155];
  v11 = *v1;
  (*v1)[156] = v0;

  if (v0)
  {
    v4 = v2[149];
    v5 = v2[148];
    v6 = v2[147];

    v7 = v2[141];
    v8 = v2[140];
    v9 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 97);
    v7 = v2[141];
    v8 = v2[140];
    v9 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v2 = *v1;
  v3 = (*v1)[159];
  v10 = *v1;
  (*v1)[160] = v0;

  if (v0)
  {
    v4 = v2[149];
    v5 = v2[148];

    v6 = v2[141];
    v7 = v2[140];
    v8 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 102);
    v6 = v2[141];
    v7 = v2[140];
    v8 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v2 = *v1;
  v3 = (*v1)[163];
  v9 = *v1;
  (*v1)[164] = v0;

  if (v0)
  {
    v4 = v2[149];

    v5 = v2[141];
    v6 = v2[140];
    v7 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 107);
    v5 = v2[141];
    v6 = v2[140];
    v7 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1296) + 1;
  result = outlined destroy of EpochModel(v0 + 496);
  if (v2 == v1)
  {
    v4 = *(v0 + 1192);
    v5 = *(v0 + 1168);
    v6 = *(v0 + 1160);
    v7 = *(v0 + 1144);
    v8 = *(v0 + 1136);
    v9 = *(v0 + 1112);
    v10 = *(v0 + 904);
    v11 = *(v0 + 896);

    outlined consume of Data._Representation(v8, v7);
    outlined consume of Data._Representation(v11, v10);
    outlined consume of Data._Representation(v6, v5);

    v12 = *(v0 + 1104);
    v13 = *(v0 + 1096);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 1056);
    v17 = *(v0 + 1048);
    v18 = *(v0 + 1040);
    v19 = *(v0 + 1016);
    v20 = *(v0 + 992);
    v21 = *(v0 + 984);
    v32 = *(v0 + 960);
    v33 = *(v0 + 952);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v23 = *(v0 + 1296) + 1;
    *(v0 + 1296) = v23;
    v24 = *(v0 + 1192);
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = (v24 + 80 * v23);
      *(v0 + 496) = v25[2];
      v26 = v25[3];
      v27 = v25[4];
      v28 = v25[6];
      *(v0 + 544) = v25[5];
      *(v0 + 560) = v28;
      *(v0 + 512) = v26;
      *(v0 + 528) = v27;
      *(v0 + 880) = &type metadata for EpochModel;
      *(v0 + 888) = &protocol witness table for EpochModel;
      v29 = swift_allocObject();
      *(v0 + 856) = v29;
      memmove((v29 + 16), v25 + 2, 0x50uLL);
      outlined init with copy of EpochModel(v0 + 496, v0 + 576);
      outlined init with copy of EpochModel(v0 + 496, v0 + 656);
      v30 = swift_task_alloc();
      *(v0 + 1304) = v30;
      *v30 = v0;
      v30[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
      v31 = *(v0 + 1200);

      return SqliteStore.delete(_:)(v0 + 856);
    }
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 1328);
  v4 = *v1;
  *(*v1 + 1336) = v0;

  v5 = v2[165];
  (*(v2[126] + 8))(v2[127], v2[125]);

  v6 = v2[141];
  v7 = v2[140];
  if (v0)
  {
    v8 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  else
  {
    v8 = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v1 = v0[139];

  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[132];
  v7 = v0[131];
  v8 = v0[130];
  v9 = v0[127];
  v10 = v0[124];
  v11 = v0[123];
  v14 = v0[120];
  v15 = v0[119];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[139];

  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[132];
  v7 = v0[131];
  v8 = v0[130];
  v9 = v0[127];
  v10 = v0[124];
  v11 = v0[123];
  v14 = v0[120];
  v15 = v0[119];
  v16 = v0[167];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[139];
  v4 = v0[113];
  v5 = v0[112];
  outlined consume of Data._Representation(v0[142], v0[143]);
  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v2, v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 92);
  v6 = v0[138];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[135];
  v10 = v0[132];
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[127];
  v14 = v0[124];
  v15 = v0[123];
  v18 = v0[120];
  v19 = v0[119];
  v20 = v0[152];

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[139];
  v4 = v0[113];
  v5 = v0[112];
  outlined consume of Data._Representation(v0[142], v0[143]);
  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of EpochModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 97);
  v6 = v0[138];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[135];
  v10 = v0[132];
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[127];
  v14 = v0[124];
  v15 = v0[123];
  v18 = v0[120];
  v19 = v0[119];
  v20 = v0[156];

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[139];
  v4 = v0[113];
  v5 = v0[112];
  outlined consume of Data._Representation(v0[142], v0[143]);
  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of EpochModel((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 102);
  v6 = v0[138];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[135];
  v10 = v0[132];
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[127];
  v14 = v0[124];
  v15 = v0[123];
  v18 = v0[120];
  v19 = v0[119];
  v20 = v0[160];

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[139];
  v4 = v0[113];
  v5 = v0[112];
  outlined consume of Data._Representation(v0[142], v0[143]);
  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of EpochModel((v0 + 62));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 107);
  v6 = v0[138];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[135];
  v10 = v0[132];
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[127];
  v14 = v0[124];
  v15 = v0[123];
  v18 = v0[120];
  v19 = v0[119];
  v20 = v0[164];

  v16 = v0[1];

  return v16();
}

void DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:)()
{
  v1 = *(v0 + 928) + *(v0 + 1152);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister groupStateUpdate inserting epoch records", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = *(v0 + 1176);

  v6 = *(v5 + 16);
  *(v0 + 1224) = v6;
  v7 = *(v0 + 1176);
  if (v6)
  {
    *(v0 + 1232) = 0;
    if (*(v7 + 2))
    {
      *(v0 + 16) = v7[2];
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[6];
      *(v0 + 64) = v7[5];
      *(v0 + 80) = v10;
      *(v0 + 32) = v8;
      *(v0 + 48) = v9;
      *(v0 + 800) = &type metadata for EpochModel;
      *(v0 + 808) = &protocol witness table for EpochModel;
      v11 = swift_allocObject();
      *(v0 + 776) = v11;
      memmove((v11 + 16), v7 + 2, 0x50uLL);
      outlined init with copy of EpochModel(v0 + 16, v0 + 96);
      outlined init with copy of EpochModel(v0 + 16, v0 + 176);
      v12 = swift_task_alloc();
      *(v0 + 1240) = v12;
      *v12 = v0;
      v12[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
      v13 = *(v0 + 1200);

      SqliteStore.insert(_:)(v0 + 776);
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v0 + 1152);
  v15 = *(v0 + 928);
  v16 = *(v0 + 1176);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26524C000, v17, v18, "DaemonPersister groupStateUpdate updating epoch records", v19, 2u);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  v20 = *(v0 + 1184);

  v21 = *(v20 + 16);
  *(v0 + 1256) = v21;
  v22 = *(v0 + 1184);
  if (v21)
  {
    *(v0 + 1264) = 0;
    if (!*(v22 + 16))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *(v0 + 256) = *(v22 + 32);
    v23 = *(v22 + 48);
    v24 = *(v22 + 64);
    v25 = *(v22 + 96);
    *(v0 + 304) = *(v22 + 80);
    *(v0 + 320) = v25;
    *(v0 + 272) = v23;
    *(v0 + 288) = v24;
    *(v0 + 840) = &type metadata for EpochModel;
    *(v0 + 848) = &protocol witness table for EpochModel;
    v26 = swift_allocObject();
    *(v0 + 816) = v26;
    memmove((v26 + 16), (v22 + 32), 0x50uLL);
    outlined init with copy of EpochModel(v0 + 256, v0 + 336);
    outlined init with copy of EpochModel(v0 + 256, v0 + 416);
    v27 = swift_task_alloc();
    *(v0 + 1272) = v27;
    *v27 = v0;
    v27[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
    v28 = *(v0 + 1200);

    SqliteStore.update(_:)(v0 + 816);
  }

  else
  {
    v29 = *(v0 + 1152);
    v30 = *(v0 + 928);
    v31 = *(v0 + 1184);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26524C000, v32, v33, "DaemonPersister groupStateUpdate deleting epoch records", v34, 2u);
      MEMORY[0x2667577B0](v34, -1, -1);
    }

    v35 = *(v0 + 1192);

    v36 = *(v35 + 16);
    *(v0 + 1288) = v36;
    v37 = *(v0 + 1192);
    if (v36)
    {
      *(v0 + 1296) = 0;
      if (!*(v37 + 16))
      {
LABEL_27:
        __break(1u);
        return;
      }

      *(v0 + 496) = *(v37 + 32);
      v38 = *(v37 + 48);
      v39 = *(v37 + 64);
      v40 = *(v37 + 96);
      *(v0 + 544) = *(v37 + 80);
      *(v0 + 560) = v40;
      *(v0 + 512) = v38;
      *(v0 + 528) = v39;
      *(v0 + 880) = &type metadata for EpochModel;
      *(v0 + 888) = &protocol witness table for EpochModel;
      v41 = swift_allocObject();
      *(v0 + 856) = v41;
      memmove((v41 + 16), (v37 + 32), 0x50uLL);
      outlined init with copy of EpochModel(v0 + 496, v0 + 576);
      outlined init with copy of EpochModel(v0 + 496, v0 + 656);
      v42 = swift_task_alloc();
      *(v0 + 1304) = v42;
      *v42 = v0;
      v42[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
      v43 = *(v0 + 1200);

      SqliteStore.delete(_:)(v0 + 856);
    }

    else
    {
      v44 = *(v0 + 1168);
      v45 = *(v0 + 1160);
      v46 = *(v0 + 1144);
      v47 = *(v0 + 1136);
      v48 = *(v0 + 1112);
      v49 = *(v0 + 904);
      v50 = *(v0 + 896);
      v51 = *(v0 + 1192);

      outlined consume of Data._Representation(v47, v46);
      outlined consume of Data._Representation(v50, v49);
      outlined consume of Data._Representation(v45, v44);

      v52 = *(v0 + 1104);
      v53 = *(v0 + 1096);
      v54 = *(v0 + 1088);
      v55 = *(v0 + 1080);
      v56 = *(v0 + 1056);
      v57 = *(v0 + 1048);
      v58 = *(v0 + 1040);
      v59 = *(v0 + 1016);
      v60 = *(v0 + 992);
      v61 = *(v0 + 984);
      v63 = *(v0 + 960);
      v64 = *(v0 + 952);

      v62 = *(v0 + 8);

      v62();
    }
  }
}

{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1232) + 1;
  outlined destroy of EpochModel(v0 + 16);
  if (v2 == v1)
  {
    v3 = *(v0 + 1176);
    v4 = *(v0 + 1152);
    v5 = *(v0 + 928);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister groupStateUpdate updating epoch records", v8, 2u);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    v9 = *(v0 + 1184);

    v10 = *(v9 + 16);
    *(v0 + 1256) = v10;
    v11 = *(v0 + 1184);
    if (v10)
    {
      *(v0 + 1264) = 0;
      if (*(v11 + 2))
      {
        *(v0 + 256) = v11[2];
        v12 = v11[3];
        v13 = v11[4];
        v14 = v11[6];
        *(v0 + 304) = v11[5];
        *(v0 + 320) = v14;
        *(v0 + 272) = v12;
        *(v0 + 288) = v13;
        *(v0 + 840) = &type metadata for EpochModel;
        *(v0 + 848) = &protocol witness table for EpochModel;
        v15 = swift_allocObject();
        *(v0 + 816) = v15;
        memmove((v15 + 16), v11 + 2, 0x50uLL);
        outlined init with copy of EpochModel(v0 + 256, v0 + 336);
        outlined init with copy of EpochModel(v0 + 256, v0 + 416);
        v16 = swift_task_alloc();
        *(v0 + 1272) = v16;
        *v16 = v0;
        v16[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
        v17 = *(v0 + 1200);

        SqliteStore.update(_:)(v0 + 816);
        return;
      }

      goto LABEL_24;
    }

    v27 = *(v0 + 1152);
    v28 = *(v0 + 928);
    v29 = *(v0 + 1184);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26524C000, v30, v31, "DaemonPersister groupStateUpdate deleting epoch records", v32, 2u);
      MEMORY[0x2667577B0](v32, -1, -1);
    }

    v33 = *(v0 + 1192);

    v34 = *(v33 + 16);
    *(v0 + 1288) = v34;
    v35 = *(v0 + 1192);
    if (v34)
    {
      *(v0 + 1296) = 0;
      if (!*(v35 + 16))
      {
LABEL_25:
        __break(1u);
        return;
      }

      *(v0 + 496) = *(v35 + 32);
      v36 = *(v35 + 48);
      v37 = *(v35 + 64);
      v38 = *(v35 + 96);
      *(v0 + 544) = *(v35 + 80);
      *(v0 + 560) = v38;
      *(v0 + 512) = v36;
      *(v0 + 528) = v37;
      *(v0 + 880) = &type metadata for EpochModel;
      *(v0 + 888) = &protocol witness table for EpochModel;
      v39 = swift_allocObject();
      *(v0 + 856) = v39;
      memmove((v39 + 16), (v35 + 32), 0x50uLL);
      outlined init with copy of EpochModel(v0 + 496, v0 + 576);
      outlined init with copy of EpochModel(v0 + 496, v0 + 656);
      v40 = swift_task_alloc();
      *(v0 + 1304) = v40;
      *v40 = v0;
      v40[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
      v41 = *(v0 + 1200);

      SqliteStore.delete(_:)(v0 + 856);
    }

    else
    {
      v42 = *(v0 + 1168);
      v43 = *(v0 + 1160);
      v44 = *(v0 + 1144);
      v45 = *(v0 + 1136);
      v46 = *(v0 + 1112);
      v47 = *(v0 + 904);
      v48 = *(v0 + 896);
      v49 = *(v0 + 1192);

      outlined consume of Data._Representation(v45, v44);
      outlined consume of Data._Representation(v48, v47);
      outlined consume of Data._Representation(v43, v42);

      v50 = *(v0 + 1104);
      v51 = *(v0 + 1096);
      v52 = *(v0 + 1088);
      v53 = *(v0 + 1080);
      v54 = *(v0 + 1056);
      v55 = *(v0 + 1048);
      v56 = *(v0 + 1040);
      v57 = *(v0 + 1016);
      v58 = *(v0 + 992);
      v59 = *(v0 + 984);
      v61 = *(v0 + 960);
      v62 = *(v0 + 952);

      v60 = *(v0 + 8);

      v60();
    }
  }

  else
  {
    v18 = *(v0 + 1232) + 1;
    *(v0 + 1232) = v18;
    v19 = *(v0 + 1176);
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = (v19 + 80 * v18);
    *(v0 + 16) = v20[2];
    v21 = v20[3];
    v22 = v20[4];
    v23 = v20[6];
    *(v0 + 64) = v20[5];
    *(v0 + 80) = v23;
    *(v0 + 32) = v21;
    *(v0 + 48) = v22;
    *(v0 + 800) = &type metadata for EpochModel;
    *(v0 + 808) = &protocol witness table for EpochModel;
    v24 = swift_allocObject();
    *(v0 + 776) = v24;
    memmove((v24 + 16), v20 + 2, 0x50uLL);
    outlined init with copy of EpochModel(v0 + 16, v0 + 96);
    outlined init with copy of EpochModel(v0 + 16, v0 + 176);
    v25 = swift_task_alloc();
    *(v0 + 1240) = v25;
    *v25 = v0;
    v25[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
    v26 = *(v0 + 1200);

    SqliteStore.insert(_:)(v0 + 776);
  }
}

{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1264) + 1;
  outlined destroy of EpochModel(v0 + 256);
  if (v2 == v1)
  {
    v3 = *(v0 + 1184);
    v4 = *(v0 + 1152);
    v5 = *(v0 + 928);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister groupStateUpdate deleting epoch records", v8, 2u);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    v9 = *(v0 + 1192);

    v10 = *(v9 + 16);
    *(v0 + 1288) = v10;
    v11 = *(v0 + 1192);
    if (v10)
    {
      *(v0 + 1296) = 0;
      if (*(v11 + 2))
      {
        *(v0 + 496) = v11[2];
        v12 = v11[3];
        v13 = v11[4];
        v14 = v11[6];
        *(v0 + 544) = v11[5];
        *(v0 + 560) = v14;
        *(v0 + 512) = v12;
        *(v0 + 528) = v13;
        *(v0 + 880) = &type metadata for EpochModel;
        *(v0 + 888) = &protocol witness table for EpochModel;
        v15 = swift_allocObject();
        *(v0 + 856) = v15;
        memmove((v15 + 16), v11 + 2, 0x50uLL);
        outlined init with copy of EpochModel(v0 + 496, v0 + 576);
        outlined init with copy of EpochModel(v0 + 496, v0 + 656);
        v16 = swift_task_alloc();
        *(v0 + 1304) = v16;
        *v16 = v0;
        v16[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
        v17 = *(v0 + 1200);

        SqliteStore.delete(_:)(v0 + 856);
        return;
      }

LABEL_17:
      __break(1u);
      return;
    }

    v27 = *(v0 + 1168);
    v28 = *(v0 + 1160);
    v29 = *(v0 + 1144);
    v30 = *(v0 + 1136);
    v31 = *(v0 + 1112);
    v32 = *(v0 + 904);
    v33 = *(v0 + 896);
    v34 = *(v0 + 1192);

    outlined consume of Data._Representation(v30, v29);
    outlined consume of Data._Representation(v33, v32);
    outlined consume of Data._Representation(v28, v27);

    v35 = *(v0 + 1104);
    v36 = *(v0 + 1096);
    v37 = *(v0 + 1088);
    v38 = *(v0 + 1080);
    v39 = *(v0 + 1056);
    v40 = *(v0 + 1048);
    v41 = *(v0 + 1040);
    v42 = *(v0 + 1016);
    v43 = *(v0 + 992);
    v44 = *(v0 + 984);
    v46 = *(v0 + 960);
    v47 = *(v0 + 952);

    v45 = *(v0 + 8);

    v45();
  }

  else
  {
    v18 = *(v0 + 1264) + 1;
    *(v0 + 1264) = v18;
    v19 = *(v0 + 1184);
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v20 = (v19 + 80 * v18);
    *(v0 + 256) = v20[2];
    v21 = v20[3];
    v22 = v20[4];
    v23 = v20[6];
    *(v0 + 304) = v20[5];
    *(v0 + 320) = v23;
    *(v0 + 272) = v21;
    *(v0 + 288) = v22;
    *(v0 + 840) = &type metadata for EpochModel;
    *(v0 + 848) = &protocol witness table for EpochModel;
    v24 = swift_allocObject();
    *(v0 + 816) = v24;
    memmove((v24 + 16), v20 + 2, 0x50uLL);
    outlined init with copy of EpochModel(v0 + 256, v0 + 336);
    outlined init with copy of EpochModel(v0 + 256, v0 + 416);
    v25 = swift_task_alloc();
    *(v0 + 1272) = v25;
    *v25 = v0;
    v25[1] = DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:);
    v26 = *(v0 + 1200);

    SqliteStore.update(_:)(v0 + 816);
  }
}

uint64_t DaemonPersister.readGroupState(groupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  GroupKey = type metadata accessor for MLS.ReadGroupKey();
  v4[10] = GroupKey;
  v6 = *(GroupKey - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v4[13] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v9;
  v4[15] = v8;

  return MEMORY[0x2822009F8](DaemonPersister.readGroupState(groupID:clientIdentifier:), v9, v8);
}

uint64_t DaemonPersister.readGroupState(groupID:clientIdentifier:)()
{
  v45 = v0;
  if ((*(*v0[9] + 264))())
  {
    v1 = v0[8];
    v2 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[16] = v3;
    v0[17] = v4;
    v24 = v4;
    v25 = v3;
    v26 = v0[9];
    v28 = v0[6];
    v27 = v0[7];
    v0[18] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    outlined copy of Data._Representation(v28, v27);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v28, v27);
    if (os_log_type_enabled(v29, v30))
    {
      v33 = v0[6];
      v32 = v0[7];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44[0] = v35;
      *v34 = 136315138;
      v36 = Data.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v44);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_26524C000, v29, v30, "DaemonPersister readGroupState using persistence mode { groupID: %s }", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x2667577B0](v35, -1, -1);
      MEMORY[0x2667577B0](v34, -1, -1);
    }

    v39 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    outlined copy of Data._Representation(v0[6], v0[7]);
    outlined copy of Data._Representation(v25, v24);
    v40 = swift_task_alloc();
    v0[19] = v40;
    *v40 = v0;
    v40[1] = DaemonPersister.readGroupState(groupID:clientIdentifier:);
    v41 = v0[6];
    v42 = v0[7];

    return specialized SqliteStore.query<A>(_:)(v25, v24, v41, v42);
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    v0[22] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    outlined copy of Data._Representation(v6, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v6, v5);
    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[6];
      v9 = v0[7];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v44[0] = v12;
      *v11 = 136315138;
      v13 = Data.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v44);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_26524C000, v7, v8, "DaemonPersister readGroupState using inMemory mode { groupID: %s }", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x2667577B0](v12, -1, -1);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    v16 = v0[12];
    v18 = v0[6];
    v17 = v0[7];
    v0[23] = (*(*v0[9] + 168))();
    outlined copy of Data._Representation(v18, v17);
    MLS.ReadGroupKey.init(groupID:)();
    v19 = *(MEMORY[0x277D4CE10] + 4);
    v43 = (*MEMORY[0x277D4CE10] + MEMORY[0x277D4CE10]);
    v20 = swift_task_alloc();
    v0[24] = v20;
    *v20 = v0;
    v20[1] = DaemonPersister.readGroupState(groupID:clientIdentifier:);
    v21 = v0[12];
    v22 = v0[8];

    return v43(v21, v22);
  }
}

{
  v36 = v0;
  v1 = v0[20];
  v2 = v0[13];

  v3 = v0[20];
  if (*(v1 + 16))
  {
    v4 = v3[4];
    v5 = v3[5];
    v6 = v3[6];
    v7 = v3[7];
    v8 = v3[8];
    v9 = v3[9];
    outlined copy of Data._Representation(v4, v5);
    outlined copy of Data._Representation(v6, v7);
    outlined copy of Data._Representation(v8, v9);

    outlined copy of Data._Representation(v8, v9);
    outlined consume of Data._Representation(v4, v5);
    outlined consume of Data._Representation(v6, v7);
    outlined consume of Data._Representation(v8, v9);
  }

  else
  {
    v10 = v0[20];

    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v11 = v0[18];
  v12 = v0[9];
  v14 = v0[6];
  v13 = v0[7];
  outlined copy of Data._Representation(v14, v13);
  outlined copy of Data?(v8, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v14, v13);
  outlined consume of Data?(v8, v9);
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[16];
  v18 = v0[17];
  if (v17)
  {
    v20 = v0[6];
    v21 = v0[7];
    v34 = v0[17];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136315394;
    v24 = Data.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v35);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v0[4] = v8;
    v0[5] = v9;
    outlined copy of Data?(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v35);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_26524C000, v15, v16, "DaemonPersister readGroupState returning { groupID: %s, data: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v23, -1, -1);
    MEMORY[0x2667577B0](v22, -1, -1);
    v30 = v19;
    v18 = v34;
  }

  else
  {
    v30 = v0[16];
  }

  outlined consume of Data._Representation(v30, v18);

  v31 = v0[12];

  v32 = v0[1];

  return v32(v8, v9);
}

{
  v28 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[22];
  v4 = v0[13];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  outlined copy of Data._Representation(v7, v6);
  outlined copy of Data?(v2, v1);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v7, v6);
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[25];
    v10 = v0[26];
    v13 = v0[6];
    v12 = v0[7];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315394;
    v16 = Data.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v0[2] = v11;
    v0[3] = v10;
    outlined copy of Data?(v11, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v27);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_26524C000, v8, v9, "DaemonPersister readGroupState returning { groupID: %s, data: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v15, -1, -1);
    MEMORY[0x2667577B0](v14, -1, -1);
  }

  v22 = v0[25];
  v23 = v0[26];
  v24 = v0[12];

  v25 = v0[1];

  return v25(v22, v23);
}

{
  v1 = v0[13];

  v2 = v0[27];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[13];
  outlined consume of Data._Representation(v0[16], v0[17]);

  v2 = v0[21];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t DaemonPersister.readGroupState(groupID:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *(*v2 + 136);
  v7 = *(*v2 + 128);
  v8 = *(*v2 + 56);
  v9 = *(*v2 + 48);
  v10 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  outlined consume of Data._Representation(v7, v6);
  outlined consume of Data._Representation(v9, v8);
  v11 = *(v3 + 120);
  v12 = *(v3 + 112);
  if (v1)
  {
    v13 = DaemonPersister.readGroupState(groupID:clientIdentifier:);
  }

  else
  {
    v13 = DaemonPersister.readGroupState(groupID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t DaemonPersister.readGroupState(groupID:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 192);
  v7 = *(*v3 + 184);
  v8 = *(*v3 + 96);
  v9 = *(*v3 + 88);
  v10 = *(*v3 + 80);
  v11 = *v3;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v2;

  (*(v9 + 8))(v8, v10);

  v12 = v4[15];
  v13 = v4[14];
  if (v2)
  {
    v14 = DaemonPersister.readGroupState(groupID:clientIdentifier:);
  }

  else
  {
    v14 = DaemonPersister.readGroupState(groupID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v14, v13, v12);
}

uint64_t DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = *(*(type metadata accessor for MLS.EpochKey() - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  EpochKey = type metadata accessor for MLS.ReadEpochKey();
  v5[18] = EpochKey;
  v8 = *(EpochKey - 8);
  v5[19] = v8;
  v9 = *(v8 + 64) + 15;
  v5[20] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[21] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v11;
  v5[23] = v10;

  return MEMORY[0x2822009F8](DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:), v11, v10);
}

uint64_t DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:)()
{
  v50 = v0;
  if ((*(*v0[16] + 264))())
  {
    v1 = v0[15];
    v2 = *(v0[16] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[24] = v3;
    v0[25] = v4;
    v27 = v3;
    v28 = v4;
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    v0[26] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    outlined copy of Data._Representation(v31, v30);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v31, v30);
    if (os_log_type_enabled(v32, v33))
    {
      v35 = v0[13];
      v36 = v0[14];
      v37 = v0[12];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49[0] = v39;
      *v38 = 136315394;
      v40 = Data.description.getter();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v49);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2048;
      *(v38 + 14) = v36;
      _os_log_impl(&dword_26524C000, v32, v33, "DaemonPersister readEpochData using persistence mode { groupID: %s, epochID: %lld }", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2667577B0](v39, -1, -1);
      MEMORY[0x2667577B0](v38, -1, -1);
    }

    v43 = v0[13];
    v44 = v0[14];
    v45 = v0[12];
    v46 = *(v0[16] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    v0[2] = v27;
    v0[3] = v28;
    v0[4] = v44;
    v0[5] = 1;
    v0[6] = v45;
    v0[7] = v43;
    outlined copy of Data._Representation(v45, v43);
    outlined copy of Data._Representation(v27, v28);
    v47 = swift_task_alloc();
    v0[27] = v47;
    *v47 = v0;
    v47[1] = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);

    return specialized SqliteStore.query<A>(_:)((v0 + 2));
  }

  else
  {
    v6 = v0[12];
    v5 = v0[13];
    v0[30] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    outlined copy of Data._Representation(v6, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v6, v5);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[13];
      v10 = v0[14];
      v11 = v0[12];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v49[0] = v13;
      *v12 = 136315394;
      v14 = Data.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v49);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v10;
      _os_log_impl(&dword_26524C000, v7, v8, "DaemonPersister readEpochData using inMemory mode { groupID: %s, epochID: %lld }", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2667577B0](v13, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);
    }

    v17 = v0[20];
    v18 = v0[17];
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];
    v0[31] = (*(*v0[16] + 168))();
    outlined copy of Data._Representation(v21, v20);
    MLS.EpochKey.init(era:epochID:)();
    MLS.ReadEpochKey.init(groupID:epochKey:)();
    v22 = *(MEMORY[0x277D4CE00] + 4);
    v48 = (*MEMORY[0x277D4CE00] + MEMORY[0x277D4CE00]);
    v23 = swift_task_alloc();
    v0[32] = v23;
    *v23 = v0;
    v23[1] = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);
    v24 = v0[20];
    v25 = v0[15];

    return v48(v24, v25);
  }
}

{
  v39 = v0;
  v1 = v0[28];
  v2 = v0[21];

  v3 = v0[28];
  if (*(v1 + 16))
  {
    v4 = v3[4];
    v5 = v3[5];
    v6 = v3[10];
    v7 = v3[11];
    v8 = v3[12];
    v9 = v3[13];
    outlined copy of Data._Representation(v4, v5);
    outlined copy of Data._Representation(v6, v7);
    outlined copy of Data?(v8, v9);

    outlined copy of Data?(v8, v9);
    outlined consume of Data._Representation(v4, v5);
    outlined consume of Data._Representation(v6, v7);
    outlined consume of Data?(v8, v9);
  }

  else
  {
    v10 = v0[28];

    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v11 = v0[26];
  v12 = v0[16];
  v14 = v0[12];
  v13 = v0[13];
  outlined copy of Data._Representation(v14, v13);
  outlined copy of Data?(v8, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v14, v13);
  outlined consume of Data?(v8, v9);
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[24];
  v18 = v0[25];
  if (v17)
  {
    v21 = v0[13];
    v20 = v0[14];
    v22 = v0[12];
    v36 = v0[24];
    v37 = v0[25];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38 = v24;
    *v23 = 136315650;
    v25 = Data.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v38);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v20;
    *(v23 + 22) = 2080;
    v0[10] = v8;
    v0[11] = v9;
    outlined copy of Data?(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v38);

    *(v23 + 24) = v30;
    _os_log_impl(&dword_26524C000, v15, v16, "DaemonPersister readEpochData returning { groupID: %s, epochID: %lld, data: %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v24, -1, -1);
    MEMORY[0x2667577B0](v23, -1, -1);
    v31 = v36;
    v18 = v37;
  }

  else
  {
    v31 = v0[24];
  }

  outlined consume of Data._Representation(v31, v18);

  v32 = v0[20];
  v33 = v0[17];

  v34 = v0[1];

  return v34(v8, v9);
}

{
  v30 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[30];
  v4 = v0[21];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];

  outlined copy of Data._Representation(v7, v6);
  outlined copy of Data?(v2, v1);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v7, v6);
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[33];
    v10 = v0[34];
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315650;
    v17 = Data.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v29);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v13;
    *(v15 + 22) = 2080;
    v0[8] = v11;
    v0[9] = v10;
    outlined copy of Data?(v11, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v29);

    *(v15 + 24) = v22;
    _os_log_impl(&dword_26524C000, v8, v9, "DaemonPersister readEpochData returning { groupID: %s, epochID: %lld, data: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v16, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  v23 = v0[33];
  v24 = v0[34];
  v25 = v0[20];
  v26 = v0[17];

  v27 = v0[1];

  return v27(v23, v24);
}

{
  v1 = v0[21];

  v2 = v0[35];
  v3 = v0[20];
  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[21];
  outlined consume of Data._Representation(v0[24], v0[25]);

  v2 = v0[29];
  v3 = v0[20];
  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  v7 = v3[13];
  v8 = v3[12];
  outlined consume of Data._Representation(v3[24], v3[25]);
  outlined consume of Data._Representation(v8, v7);
  v9 = v3[23];
  v10 = v3[22];
  if (v1)
  {
    v11 = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);
  }

  else
  {
    v11 = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 256);
  v7 = *v3;
  v5[33] = a1;
  v5[34] = a2;
  v5[35] = v2;

  v8 = v4[31];
  (*(v4[19] + 8))(v4[20], v4[18]);

  v9 = v4[23];
  v10 = v4[22];
  if (v2)
  {
    v11 = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);
  }

  else
  {
    v11 = DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  GroupKey = type metadata accessor for MLS.ReadGroupKey();
  v3[9] = GroupKey;
  v5 = *(GroupKey - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[15] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v8;
  v3[17] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:), v8, v7);
}

{
  v4 = *v3;
  v5 = *(*v3 + 272);
  v11 = *v3;
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = v2;

  if (v2)
  {
    v6 = v4[16];
    v7 = v4[17];
    v8 = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);
  }

  else
  {
    v9 = v4[33];

    v6 = v4[16];
    v7 = v4[17];
    v8 = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)()
{
  v68 = v0;
  if ((*(*v0[8] + 264))())
  {
    v1 = v0[7];
    v2 = *(v0[8] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[18] = v3;
    v0[19] = v4;
    v31 = v3;
    v32 = v4;
    v33 = v0[14];
    v34 = v0[9];
    v35 = v0[10];
    v36 = v0[8];
    v37 = v0[6];
    v0[20] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v38 = *(v35 + 16);
    v0[21] = v38;
    v0[22] = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v38(v33, v37, v34);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[14];
    v43 = v0[9];
    v44 = v0[10];
    if (v41)
    {
      v63 = v0[9];
      v45 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67[0] = v66;
      *v45 = 136315138;
      Group = MLS.ReadGroupKey.groupID.getter();
      v48 = v47;
      v59 = Data.description.getter();
      v61 = v40;
      v50 = v49;
      outlined consume of Data._Representation(Group, v48);
      v51 = *(v44 + 8);
      v51(v42, v63);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v50, v67);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_26524C000, v39, v61, "DaemonPersister readGroupState using persistence mode { groupID: %s }", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x2667577B0](v66, -1, -1);
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      v51 = *(v44 + 8);
      v51(v42, v43);
    }

    v0[23] = v51;
    v53 = v0[6];
    v54 = *(v0[8] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    outlined copy of Data._Representation(v31, v32);
    v55 = MLS.ReadGroupKey.groupID.getter();
    v57 = v56;
    v0[24] = v55;
    v0[25] = v56;
    v58 = swift_task_alloc();
    v0[26] = v58;
    *v58 = v0;
    v58[1] = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);

    return specialized SqliteStore.query<A>(_:)(v31, v32, v55, v57);
  }

  else
  {
    v5 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[8];
    v9 = v0[6];
    v0[29] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v10 = *(v7 + 16);
    v0[30] = v10;
    v0[31] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v5, v9, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    if (v13)
    {
      v64 = v12;
      v17 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v67[0] = v62;
      *v17 = 136315138;
      v18 = MLS.ReadGroupKey.groupID.getter();
      v20 = v19;
      v60 = Data.description.getter();
      v22 = v21;
      outlined consume of Data._Representation(v18, v20);
      v23 = *(v15 + 8);
      v23(v14, v16);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v22, v67);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_26524C000, v11, v64, "DaemonPersister readGroupState using inMemory mode { groupID: %s }", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x2667577B0](v62, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {

      v23 = *(v15 + 8);
      v25 = (v23)(v14, v16);
    }

    v0[32] = v23;
    v0[33] = (*(*v0[8] + 168))(v25);
    v26 = *(MEMORY[0x277D4CE10] + 4);
    v65 = (*MEMORY[0x277D4CE10] + MEMORY[0x277D4CE10]);
    v27 = swift_task_alloc();
    v0[34] = v27;
    *v27 = v0;
    v27[1] = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);
    v29 = v0[6];
    v28 = v0[7];

    return v65(v29, v28);
  }
}

{
  v49 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 120);

  v3 = *(v0 + 216);
  if (*(v1 + 16))
  {
    v4 = v3[4];
    v5 = v3[5];
    v6 = v3[6];
    v7 = v3[7];
    v9 = v3[8];
    v8 = v3[9];
    outlined copy of Data._Representation(v4, v5);
    outlined copy of Data._Representation(v6, v7);
    outlined copy of Data._Representation(v9, v8);

    outlined copy of Data._Representation(v9, v8);
    outlined consume of Data._Representation(v4, v5);
    outlined consume of Data._Representation(v6, v7);
    outlined consume of Data._Representation(v9, v8);
  }

  else
  {
    v10 = *(v0 + 216);

    v9 = 0;
    v8 = 0xF000000000000000;
  }

  v11 = *(v0 + 176);
  v12 = *(v0 + 160);
  v13 = *(v0 + 64);
  (*(v0 + 168))(*(v0 + 104), *(v0 + 48), *(v0 + 72));
  outlined copy of Data?(v9, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data?(v9, v8);
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 184);
  v18 = *(v0 + 144);
  v19 = *(v0 + 104);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  if (v16)
  {
    v46 = *(v0 + 144);
    v47 = *(v0 + 152);
    v22 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v22 = 136315394;
    v42 = v17;
    Group = MLS.ReadGroupKey.groupID.getter();
    v44 = v15;
    v24 = v8;
    v25 = v9;
    v27 = v26;
    v41 = Data.description.getter();
    log = v14;
    v29 = v28;
    v30 = v27;
    v9 = v25;
    v8 = v24;
    outlined consume of Data._Representation(Group, v30);
    v42(v19, v21);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v29, &v48);

    *(v22 + 4) = v31;
    *(v22 + 12) = 2080;
    *(v0 + 32) = v9;
    *(v0 + 40) = v24;
    outlined copy of Data?(v9, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v48);

    *(v22 + 14) = v34;
    _os_log_impl(&dword_26524C000, log, v44, "DaemonPersister readGroupState returning { groupID: %s, data: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v45, -1, -1);
    MEMORY[0x2667577B0](v22, -1, -1);
    outlined consume of Data._Representation(v46, v47);
  }

  else
  {
    outlined consume of Data._Representation(*(v0 + 144), *(v0 + 152));

    v17(v19, v21);
  }

  v36 = *(v0 + 104);
  v35 = *(v0 + 112);
  v38 = *(v0 + 88);
  v37 = *(v0 + 96);

  v39 = *(v0 + 8);

  return v39(v9, v8);
}

{
  v44 = v0;
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[15];
  v7 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[6];

  v4(v7, v10, v8);
  outlined copy of Data?(v2, v1);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[35];
    v40 = v0[32];
    v41 = v0[36];
    v14 = v0[11];
    v38 = v0[10];
    v39 = v0[9];
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v15 = 136315394;
    Group = MLS.ReadGroupKey.groupID.getter();
    v18 = v17;
    v19 = Data.description.getter();
    v21 = v20;
    outlined consume of Data._Representation(Group, v18);
    v40(v14, v39);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v43);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v0[2] = v13;
    v0[3] = v41;
    outlined copy of Data?(v13, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v43);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_26524C000, v11, v12, "DaemonPersister readGroupState returning { groupID: %s, data: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v42, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  else
  {
    v26 = v0[32];
    v28 = v0[10];
    v27 = v0[11];
    v29 = v0[9];

    v26(v27, v29);
  }

  v30 = v0[35];
  v31 = v0[36];
  v33 = v0[13];
  v32 = v0[14];
  v35 = v0[11];
  v34 = v0[12];

  v36 = v0[1];

  return v36(v30, v31);
}

{
  v1 = v0[33];
  v2 = v0[15];

  v3 = v0[37];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[15];
  outlined consume of Data._Representation(v0[18], v0[19]);

  v2 = v0[28];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *(*v2 + 200);
  v7 = *(*v2 + 192);
  v8 = *(*v2 + 152);
  v9 = *(*v2 + 144);
  v10 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v11 = *(v3 + 136);
  v12 = *(v3 + 128);
  if (v1)
  {
    v13 = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);
  }

  else
  {
    v13 = DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for MLS.EpochKey();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  EpochKey = type metadata accessor for MLS.ReadEpochKey();
  v3[19] = EpochKey;
  v8 = *(EpochKey - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[33] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[34] = v11;
  v3[35] = v10;

  return MEMORY[0x2822009F8](DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:), v11, v10);
}

{
  v4 = *v3;
  v5 = *(*v3 + 432);
  v11 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {
    v6 = v4[34];
    v7 = v4[35];
    v8 = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);
  }

  else
  {
    v9 = v4[53];

    v6 = v4[34];
    v7 = v4[35];
    v8 = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)()
{
  v97 = v0;
  if ((*(*v0[14] + 264))())
  {
    v1 = v0[13];
    v2 = *(v0[14] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[36] = v3;
    v0[37] = v4;
    v92 = v4;
    v95 = v3;
    v37 = v0[31];
    v36 = v0[32];
    v38 = v0[30];
    v40 = v0[19];
    v39 = v0[20];
    v41 = v0[14];
    v42 = v0[12];
    v0[38] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v43 = *(v39 + 16);
    v0[39] = v43;
    v0[40] = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v43(v36, v42, v40);
    v43(v37, v42, v40);
    v43(v38, v42, v40);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v48 = v0[31];
    v47 = v0[32];
    v50 = v0[19];
    v49 = v0[20];
    if (v46)
    {
      v76 = v0[31];
      v51 = v0[18];
      loga = v0[16];
      v78 = v0[15];
      v82 = v0[30];
      v52 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v96[0] = v86;
      *v52 = 136315650;
      v84 = v45;
      Epoch = MLS.ReadEpochKey.groupID.getter();
      v55 = v54;
      v56 = Data.description.getter();
      v80 = v44;
      v58 = v57;
      outlined consume of Data._Representation(Epoch, v55);
      v59 = *(v49 + 8);
      v59(v47, v50);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v96);

      *(v52 + 4) = v60;
      *(v52 + 12) = 2048;
      MLS.ReadEpochKey.epochKey.getter();
      v61 = MLS.EpochKey.epochID.getter();
      isa = loga[1].isa;
      isa(v51, v78);
      v59(v76, v50);
      *(v52 + 14) = v61;
      *(v52 + 22) = 2048;
      MLS.ReadEpochKey.epochKey.getter();
      v62 = MLS.EpochKey.era.getter();
      isa(v51, v78);
      v59(v82, v50);
      *(v52 + 24) = v62;
      _os_log_impl(&dword_26524C000, v80, v84, "DaemonPersister readEpochData using persistence mode { groupID: %s, epochID: %lld, eraID: %lld }", v52, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x2667577B0](v86, -1, -1);
      MEMORY[0x2667577B0](v52, -1, -1);
    }

    else
    {
      v59 = *(v49 + 8);
      v59(v0[30], v0[19]);
      v59(v48, v50);

      v59(v47, v50);
    }

    v0[41] = v59;
    v64 = v0[17];
    v63 = v0[18];
    v66 = v0[15];
    v65 = v0[16];
    v67 = v0[12];
    logb = *(v0[14] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
    outlined copy of Data._Representation(v95, v92);
    MLS.ReadEpochKey.epochKey.getter();
    v87 = MLS.EpochKey.epochID.getter();
    v68 = *(v65 + 8);
    v0[42] = v68;
    v0[43] = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68(v63, v66);
    MLS.ReadEpochKey.epochKey.getter();
    v69 = MLS.EpochKey.era.getter();
    v68(v64, v66);
    v70 = MLS.ReadEpochKey.groupID.getter();
    v0[44] = v70;
    v0[45] = v71;
    v0[2] = v95;
    v0[3] = v92;
    v0[4] = v87;
    v0[5] = v69;
    v0[6] = v70;
    v0[7] = v71;
    v72 = swift_task_alloc();
    v0[46] = v72;
    *v72 = v0;
    v72[1] = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);

    return specialized SqliteStore.query<A>(_:)((v0 + 2));
  }

  else
  {
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[24];
    v8 = v0[19];
    v9 = v0[20];
    v10 = v0[14];
    v11 = v0[12];
    v0[49] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v12 = *(v9 + 16);
    v0[50] = v12;
    v0[51] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v5, v11, v8);
    v12(v6, v11, v8);
    v12(v7, v11, v8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[19];
    v19 = v0[20];
    if (v15)
    {
      v77 = v0[19];
      v79 = v0[18];
      v93 = v0[16];
      v81 = v0[15];
      v83 = v0[24];
      v20 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v96[0] = v91;
      *v20 = 136315650;
      log = v13;
      v21 = MLS.ReadEpochKey.groupID.getter();
      v85 = v14;
      v23 = v22;
      v73 = Data.description.getter();
      v25 = v24;
      outlined consume of Data._Representation(v21, v23);
      v26 = *(v19 + 8);
      v26(v16, v18);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v25, v96);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2048;
      MLS.ReadEpochKey.epochKey.getter();
      v28 = MLS.EpochKey.epochID.getter();
      v74 = *(v93 + 8);
      v74(v79, v81);
      v26(v17, v77);
      *(v20 + 14) = v28;
      *(v20 + 22) = 2048;
      MLS.ReadEpochKey.epochKey.getter();
      v29 = MLS.EpochKey.era.getter();
      v74(v79, v81);
      v26(v83, v77);
      *(v20 + 24) = v29;
      _os_log_impl(&dword_26524C000, log, v85, "DaemonPersister readEpochData using inMemory mode { groupID: %s, epochID: %lld, eraID: %lld }", v20, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x2667577B0](v91, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    else
    {
      v26 = *(v19 + 8);
      v26(v0[24], v0[19]);
      v26(v17, v18);

      v30 = (v26)(v16, v18);
    }

    v0[52] = v26;
    v0[53] = (*(*v0[14] + 168))(v30);
    v31 = *(MEMORY[0x277D4CE00] + 4);
    v94 = (*MEMORY[0x277D4CE00] + MEMORY[0x277D4CE00]);
    v32 = swift_task_alloc();
    v0[54] = v32;
    *v32 = v0;
    v32[1] = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);
    v34 = v0[12];
    v33 = v0[13];

    return v94(v34, v33);
  }
}

{
  v74 = v0;
  v1 = v0[47];
  v2 = v0[33];

  v3 = v0[47];
  if (*(v1 + 16))
  {
    v4 = v3[4];
    v5 = v3[5];
    v6 = v3[10];
    v7 = v3[11];
    v9 = v3[12];
    v8 = v3[13];
    outlined copy of Data._Representation(v4, v5);
    outlined copy of Data._Representation(v6, v7);
    outlined copy of Data?(v9, v8);

    outlined copy of Data?(v9, v8);
    outlined consume of Data._Representation(v4, v5);
    outlined consume of Data._Representation(v6, v7);
    v72 = v8;
    outlined consume of Data?(v9, v8);
  }

  else
  {
    v10 = v0[47];

    v9 = 0;
    v72 = 0xF000000000000000;
  }

  v12 = v0[39];
  v11 = v0[40];
  v13 = v0[38];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[19];
  v17 = v0[14];
  v18 = v0[12];
  v12(v0[29], v18, v16);
  v12(v14, v18, v16);
  v12(v15, v18, v16);
  outlined copy of Data?(v9, v72);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  outlined consume of Data?(v9, v72);
  v71 = v9;
  if (os_log_type_enabled(v19, v20))
  {
    v58 = v0[42];
    v59 = v0[43];
    v67 = v0[37];
    v69 = v0[41];
    v65 = v0[36];
    v63 = v20;
    v21 = v0[29];
    v60 = v0[27];
    v22 = v0[19];
    v23 = v0[20];
    v24 = v0[18];
    v56 = v0[28];
    v57 = v0[15];
    log = v19;
    v25 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v73 = v62;
    *v25 = 136315906;
    Epoch = MLS.ReadEpochKey.groupID.getter();
    v28 = v27;
    v29 = Data.description.getter();
    v31 = v30;
    outlined consume of Data._Representation(Epoch, v28);
    v69(v21, v22);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v73);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2048;
    MLS.ReadEpochKey.epochKey.getter();
    v33 = MLS.EpochKey.epochID.getter();
    v58(v24, v57);
    v69(v56, v22);
    *(v25 + 14) = v33;
    *(v25 + 22) = 2048;
    MLS.ReadEpochKey.epochKey.getter();
    v34 = MLS.EpochKey.era.getter();
    v58(v24, v57);
    v69(v60, v22);
    *(v25 + 24) = v34;
    *(v25 + 32) = 2080;
    v0[10] = v71;
    v0[11] = v72;
    outlined copy of Data?(v71, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v35 = String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v73);

    *(v25 + 34) = v37;
    _os_log_impl(&dword_26524C000, log, v63, "DaemonPersister readEpochData returning { groupID: %s, epochID: %lld, eraID: %lld, data: %s", v25, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v62, -1, -1);
    MEMORY[0x2667577B0](v25, -1, -1);
    outlined consume of Data._Representation(v65, v67);
  }

  else
  {
    v38 = v0[41];
    v39 = v0[36];
    v40 = v0[37];
    v42 = v0[28];
    v41 = v0[29];
    v43 = v0[19];
    v38(v0[27], v43);
    v38(v42, v43);
    outlined consume of Data._Representation(v39, v40);

    v38(v41, v43);
  }

  v45 = v0[31];
  v44 = v0[32];
  v47 = v0[29];
  v46 = v0[30];
  v49 = v0[27];
  v48 = v0[28];
  v51 = v0[25];
  v50 = v0[26];
  v52 = v0[23];
  v53 = v0[24];
  v64 = v0[22];
  v66 = v0[21];
  v68 = v0[18];
  v70 = v0[17];

  v54 = v0[1];

  return v54(v71, v72);
}

{
  v67 = v0;
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[33];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[21];
  v9 = v0[19];
  v60 = v0[14];
  v63 = v0[49];
  v10 = v0[12];

  v4(v7, v10, v9);
  v4(v6, v10, v9);
  v4(v8, v10, v9);
  outlined copy of Data?(v2, v1);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v11, v12))
  {
    v52 = v0[55];
    v54 = v0[56];
    v64 = v0[52];
    v61 = v12;
    v13 = v0[23];
    v14 = v0[20];
    log = v11;
    v16 = v0[18];
    v15 = v0[19];
    v48 = v0[22];
    v49 = v0[16];
    v50 = v0[15];
    v51 = v0[21];
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v66 = v56;
    *v17 = 136315906;
    Epoch = MLS.ReadEpochKey.groupID.getter();
    v20 = v19;
    v21 = Data.description.getter();
    v23 = v22;
    outlined consume of Data._Representation(Epoch, v20);
    v64(v13, v15);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v66);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2048;
    MLS.ReadEpochKey.epochKey.getter();
    v25 = MLS.EpochKey.epochID.getter();
    v26 = *(v49 + 8);
    v26(v16, v50);
    v64(v48, v15);
    *(v17 + 14) = v25;
    *(v17 + 22) = 2048;
    MLS.ReadEpochKey.epochKey.getter();
    v27 = MLS.EpochKey.era.getter();
    v26(v16, v50);
    v64(v51, v15);
    *(v17 + 24) = v27;
    *(v17 + 32) = 2080;
    v0[8] = v52;
    v0[9] = v54;
    outlined copy of Data?(v52, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v66);

    *(v17 + 34) = v30;
    _os_log_impl(&dword_26524C000, log, v61, "DaemonPersister readEpochData returning { groupID: %s, epochID: %lld, eraID: %lld, data: %s", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v56, -1, -1);
    MEMORY[0x2667577B0](v17, -1, -1);
  }

  else
  {
    v31 = v0[52];
    v33 = v0[22];
    v32 = v0[23];
    v34 = v0[19];
    v35 = v0[20] + 8;
    v31(v0[21], v34);
    v31(v33, v34);

    v31(v32, v34);
  }

  v62 = v0[55];
  v65 = v0[56];
  v37 = v0[31];
  v36 = v0[32];
  v39 = v0[29];
  v38 = v0[30];
  v41 = v0[27];
  v40 = v0[28];
  v43 = v0[25];
  v42 = v0[26];
  v44 = v0[23];
  v45 = v0[24];
  v53 = v0[22];
  v55 = v0[21];
  v57 = v0[18];
  loga = v0[17];

  v46 = v0[1];

  return v46(v62, v65);
}

{
  v1 = v0[53];
  v2 = v0[33];

  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[23];
  v12 = v0[24];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[57];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[33];
  outlined consume of Data._Representation(v0[36], v0[37]);

  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[23];
  v11 = v0[24];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[48];

  v12 = v0[1];

  return v12();
}

uint64_t DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  v7 = v3[45];
  v8 = v3[44];
  outlined consume of Data._Representation(v3[36], v3[37]);
  outlined consume of Data._Representation(v8, v7);
  v9 = v3[35];
  v10 = v3[34];
  if (v1)
  {
    v11 = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);
  }

  else
  {
    v11 = DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[144] = v2;
  v3[143] = a2;
  v3[142] = a1;
  v4 = type metadata accessor for MLS.EpochKey();
  v3[145] = v4;
  v5 = *(v4 - 8);
  v3[146] = v5;
  v6 = *(v5 + 64) + 15;
  v3[147] = swift_task_alloc();
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v7 = type metadata accessor for MLS.Record();
  v3[150] = v7;
  v8 = *(v7 - 8);
  v3[151] = v8;
  v9 = *(v8 + 64) + 15;
  v3[152] = swift_task_alloc();
  v3[153] = swift_task_alloc();
  v10 = type metadata accessor for MLS.WriteGroupData();
  v3[154] = v10;
  v11 = *(v10 - 8);
  v3[155] = v11;
  v12 = *(v11 + 64) + 15;
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();
  v3[158] = swift_task_alloc();
  v3[159] = swift_task_alloc();
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  v3[162] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[163] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[164] = v14;
  v3[165] = v13;

  return MEMORY[0x2822009F8](DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:), v14, v13);
}

uint64_t DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:)()
{
  v242 = v0;
  if ((*(*v0[144] + 264))())
  {
    v1 = v0[143];
    v2 = *(v0[144] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[166] = v3;
    v0[167] = v4;
    v39 = v3;
    v40 = v4;
    v41 = v0[162];
    v42 = v0[161];
    v43 = v0[155];
    v44 = v0[154];
    v45 = v39;
    v46 = v0[144];
    v47 = v0[142];
    v0[168] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v48 = *(v43 + 16);
    v48(v41, v47, v44);
    v48(v42, v47, v44);
    v49 = v45;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[162];
    log = v0[161];
    v234 = v40;
    v238 = v45;
    v218 = v48;
    if (v52)
    {
      v201 = v0[160];
      v54 = v0[155];
      v213 = v51;
      v55 = v0[154];
      v204 = v50;
      v56 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v241[0] = v209;
      *v56 = 136315394;
      v57 = MLS.WriteGroupData.groupID.getter();
      v59 = v58;
      v198 = Data.description.getter();
      v61 = v60;
      outlined consume of Data._Representation(v57, v59);
      v62 = *(v54 + 8);
      v62(v53, v55);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v61, v241);

      *(v56 + 4) = v63;
      *(v56 + 12) = 2080;
      v48(v201, log, v55);
      v64 = String.init<A>(describing:)();
      v66 = v65;
      v62(log, v55);
      v40 = v234;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v241);

      *(v56 + 14) = v67;
      _os_log_impl(&dword_26524C000, v204, v213, "DaemonPersister writeGroupID using persistence mode { groupID: %s, swiftMLSGroupWrite: %s }", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v209, -1, -1);
      v49 = v238;
      MEMORY[0x2667577B0](v56, -1, -1);
    }

    else
    {
      v69 = v0[155];
      v70 = v0[154];

      v62 = *(v69 + 8);
      v62(log, v70);
      v68 = (v62)(v53, v70);
    }

    if ((*(*v0[144] + 192))(v68))
    {
      v71 = v0[142];
      v72 = MLS.WriteGroupData.groupState.getter();
      v74 = v73;
      v0[169] = v72;
      v0[170] = v73;
      outlined copy of Data._Representation(v49, v40);
      v75 = MLS.WriteGroupData.groupID.getter();
      v0[171] = v75;
      v0[172] = v76;
      if (v74 >> 60 == 15)
      {
        v0[191] = *(v0[144] + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
        v0[115] = &type metadata for GroupStateModel;
        v0[116] = &protocol witness table for GroupStateModel;
        v77 = v75;
        v78 = v76;
        v79 = swift_allocObject();
        v0[112] = v79;
        *(v79 + 16) = v49;
        *(v79 + 24) = v40;
        *(v79 + 32) = v77;
        *(v79 + 40) = v78;
        *(v79 + 48) = xmmword_265343890;
        outlined copy of Data._Representation(v49, v40);
        outlined copy of Data._Representation(v77, v78);
        outlined copy of Data._Representation(0, 0xC000000000000000);
        v80 = swift_task_alloc();
        v0[192] = v80;
        *v80 = v0;
        v80[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

        return SqliteStore.delete(_:)((v0 + 112));
      }

      else
      {
        v192 = v74;
        v193 = v72;
        v194 = v75;
        v195 = v76;
        v104 = v0[142];
        v105 = MLS.WriteGroupData.epochInsertRecords.getter();
        v106 = *(v105 + 16);
        v232 = v0;
        if (v106)
        {
          v107 = v0[151];
          v206 = *(v107 + 16);
          v108 = v105 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
          v202 = (v0[146] + 8);
          v196 = *(v107 + 72);
          v199 = (v107 + 8);
          v229 = v106 - 1;
          v109 = MEMORY[0x277D84F90];
          while (1)
          {
            v110 = v232[153];
            v111 = v232[150];
            v112 = v232[149];
            v113 = v232[148];
            v114 = v232[145];
            v115 = v232[142];
            v215 = v108;
            (v206)(v110);
            outlined copy of Data._Representation(v238, v40);
            MLS.Record.epochKey.getter();
            loga = MLS.EpochKey.epochID.getter();
            v116 = *v202;
            (*v202)(v112, v114);
            MLS.Record.epochKey.getter();
            v219 = MLS.EpochKey.era.getter();
            v116(v113, v114);
            v117 = MLS.WriteGroupData.groupID.getter();
            v119 = v118;
            v120 = MLS.Record.data.getter();
            v122 = v121;
            (*v199)(v110, v111);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v109 + 2) + 1, 1, v109);
            }

            v124 = *(v109 + 2);
            v123 = *(v109 + 3);
            v40 = v234;
            if (v124 >= v123 >> 1)
            {
              v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1, v109);
            }

            *(v109 + 2) = v124 + 1;
            v125 = &v109[80 * v124];
            *(v125 + 4) = v238;
            *(v125 + 5) = v234;
            *(v125 + 6) = loga;
            v125[56] = 0;
            *(v125 + 15) = *&v240[3];
            *(v125 + 57) = *v240;
            *(v125 + 8) = v219;
            v125[72] = 0;
            v126 = v241[0];
            *(v125 + 19) = *(v241 + 3);
            *(v125 + 73) = v126;
            *(v125 + 10) = v117;
            *(v125 + 11) = v119;
            *(v125 + 12) = v120;
            *(v125 + 13) = v122;
            if (!v229)
            {
              break;
            }

            --v229;
            v108 = v215 + v196;
          }
        }

        else
        {

          v109 = MEMORY[0x277D84F90];
        }

        v232[173] = v109;
        v142 = v232;
        v143 = v232[142];
        v144 = MLS.WriteGroupData.epochUpdateRecords.getter();
        v145 = *(v144 + 16);
        if (v145)
        {
          v146 = v232[151];
          v207 = *(v146 + 16);
          v147 = v144 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
          v203 = (v232[146] + 8);
          v197 = *(v146 + 72);
          v200 = (v146 + 8);
          v231 = v145 - 1;
          v148 = MEMORY[0x277D84F90];
          while (1)
          {
            v149 = v142[152];
            v150 = v142[150];
            v151 = v142[149];
            v152 = v142[148];
            v153 = v142[145];
            v154 = v142[142];
            v216 = v147;
            (v207)(v149);
            outlined copy of Data._Representation(v238, v40);
            MLS.Record.epochKey.getter();
            logb = MLS.EpochKey.epochID.getter();
            v155 = *v203;
            (*v203)(v151, v153);
            MLS.Record.epochKey.getter();
            v220 = MLS.EpochKey.era.getter();
            v155(v152, v153);
            v156 = MLS.WriteGroupData.groupID.getter();
            v158 = v157;
            v159 = MLS.Record.data.getter();
            v161 = v160;
            (*v200)(v149, v150);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v148 + 2) + 1, 1, v148);
            }

            v163 = *(v148 + 2);
            v162 = *(v148 + 3);
            v40 = v234;
            v142 = v232;
            if (v163 >= v162 >> 1)
            {
              v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1, v148);
            }

            *(v148 + 2) = v163 + 1;
            v164 = &v148[80 * v163];
            *(v164 + 4) = v238;
            *(v164 + 5) = v234;
            *(v164 + 6) = logb;
            v164[56] = 0;
            *(v164 + 15) = *&v240[3];
            *(v164 + 57) = *v240;
            *(v164 + 8) = v220;
            v164[72] = 0;
            v165 = v241[0];
            *(v164 + 19) = *(v241 + 3);
            *(v164 + 73) = v165;
            *(v164 + 10) = v156;
            *(v164 + 11) = v158;
            *(v164 + 12) = v159;
            *(v164 + 13) = v161;
            if (!v231)
            {
              break;
            }

            --v231;
            v147 = v216 + v197;
          }
        }

        else
        {

          v148 = MEMORY[0x277D84F90];
        }

        v142[174] = v148;
        v166 = v142[142];
        v167 = MLS.WriteGroupData.epochDeleteKeys.getter();
        v168 = *(v167 + 16);
        if (v168)
        {
          v169 = v142[146];
          logc = *(v169 + 16);
          v170 = v167 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
          v211 = *(v169 + 72);
          v221 = (v169 + 8);
          v171 = v168 - 1;
          v172 = MEMORY[0x277D84F90];
          v173 = v238;
          while (1)
          {
            v174 = v142[147];
            v175 = v142[145];
            v176 = v142[142];
            (logc)(v174, v170, v175);
            outlined copy of Data._Representation(v173, v234);
            v177 = MLS.EpochKey.epochID.getter();
            v178 = MLS.EpochKey.era.getter();
            (*v221)(v174, v175);
            v179 = MLS.WriteGroupData.groupID.getter();
            v181 = v180;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v172 + 2) + 1, 1, v172);
            }

            v183 = *(v172 + 2);
            v182 = *(v172 + 3);
            if (v183 >= v182 >> 1)
            {
              v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v182 > 1), v183 + 1, 1, v172);
            }

            *(v172 + 2) = v183 + 1;
            v184 = &v172[80 * v183];
            v173 = v238;
            *(v184 + 4) = v238;
            *(v184 + 5) = v234;
            *(v184 + 6) = v177;
            v184[56] = 0;
            *(v184 + 15) = *&v240[3];
            *(v184 + 57) = *v240;
            *(v184 + 8) = v178;
            v184[72] = 0;
            v185 = v241[0];
            *(v184 + 19) = *(v241 + 3);
            *(v184 + 73) = v185;
            *(v184 + 10) = v179;
            *(v184 + 11) = v181;
            *(v184 + 6) = xmmword_265343890;
            if (!v171)
            {
              break;
            }

            --v171;
            v170 += v211;
          }

          v40 = v234;
          outlined consume of Data._Representation(v238, v234);
        }

        else
        {

          v173 = v238;
          outlined consume of Data._Representation(v238, v40);
          v172 = MEMORY[0x277D84F90];
        }

        v142[175] = v172;
        v186 = Logger.logObject.getter();
        v187 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v186, v187))
        {
          v188 = swift_slowAlloc();
          *v188 = 0;
          _os_log_impl(&dword_26524C000, v186, v187, "DaemonPersister writeGroupID inserting group state", v188, 2u);
          MEMORY[0x2667577B0](v188, -1, -1);
        }

        v189 = v142[144];

        v142[176] = *(v189 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
        v142[125] = &type metadata for GroupStateModel;
        v142[126] = &protocol witness table for GroupStateModel;
        v190 = swift_allocObject();
        v142[122] = v190;
        v190[2] = v173;
        v190[3] = v40;
        v190[4] = v194;
        v190[5] = v195;
        v190[6] = v193;
        v190[7] = v192;
        outlined copy of Data._Representation(v173, v40);
        outlined copy of Data._Representation(v194, v195);
        outlined copy of Data._Representation(v193, v192);
        v191 = swift_task_alloc();
        v142[177] = v191;
        *v191 = v142;
        v191[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);

        return SqliteStore.insert(_:)((v142 + 122));
      }
    }

    else
    {
      v81 = v49;
      v82 = v0[163];
      v83 = v0[159];
      v84 = v0[158];
      v85 = v0[154];
      v86 = v0[142];

      v218(v83, v86, v85);
      v218(v84, v86, v85);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v228 = v88;
        v89 = v0[159];
        v210 = v0[158];
        v214 = v0[160];
        v205 = v0[155];
        v90 = v0[154];
        v91 = swift_slowAlloc();
        loge = swift_slowAlloc();
        v241[0] = loge;
        *v91 = 136315394;
        v92 = MLS.WriteGroupData.groupID.getter();
        v94 = v93;
        v95 = Data.description.getter();
        v97 = v96;
        outlined consume of Data._Representation(v92, v94);
        v62(v89, v90);
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v241);

        *(v91 + 4) = v98;
        *(v91 + 12) = 2080;
        v218(v214, v210, v90);
        v99 = String.init<A>(describing:)();
        v101 = v100;
        v102 = v90;
        v81 = v238;
        v62(v210, v102);
        v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v241);

        *(v91 + 14) = v103;
        _os_log_impl(&dword_26524C000, v87, v228, "DaemonPersister groupStateUpdate called outside atomically block { groupID: %s, swiftMLSGroupWrite: %s }", v91, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](loge, -1, -1);
        MEMORY[0x2667577B0](v91, -1, -1);
      }

      else
      {
        v127 = v0[159];
        v128 = v0[158];
        v129 = v0[155];
        v130 = v0[154];

        v62(v128, v130);
        v62(v127, v130);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v131 = 6;
      *(v131 + 8) = 0;
      *(v131 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v81, v234);
      v132 = v0[162];
      v133 = v0[161];
      v134 = v0[160];
      v135 = v0[159];
      v136 = v0[158];
      v137 = v0[157];
      v138 = v0[156];
      v139 = v0[153];
      v140 = v0[152];
      v230 = v0[149];
      v235 = v0[148];
      v239 = v0[147];

      v141 = v0[1];

      return v141();
    }
  }

  else
  {
    v5 = v0[156];
    v6 = v0[154];
    v7 = v0[144];
    v8 = v0[142];
    v9 = *(v0[155] + 16);
    v9(v0[157], v8, v6);
    v9(v5, v8, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v217 = v0[160];
      v12 = v0[157];
      v208 = v12;
      v212 = v0[156];
      v13 = v0[155];
      v14 = v0[154];
      v15 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      v241[0] = v236;
      *v15 = 136315394;
      v233 = v11;
      logd = v10;
      v16 = MLS.WriteGroupData.groupID.getter();
      v18 = v17;
      v19 = Data.description.getter();
      v21 = v20;
      outlined consume of Data._Representation(v16, v18);
      v22 = *(v13 + 8);
      v22(v208, v14);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v241);

      *(v15 + 4) = v23;
      *(v15 + 12) = 2080;
      v9(v217, v212, v14);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      v22(v212, v14);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v241);

      *(v15 + 14) = v27;
      _os_log_impl(&dword_26524C000, logd, v233, "DaemonPersister writeGroupID using inMemory mode { groupID: %s, swiftMLSGroupWrite: %s }", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v236, -1, -1);
      MEMORY[0x2667577B0](v15, -1, -1);
    }

    else
    {
      v29 = v0[157];
      v30 = v0[156];
      v31 = v0[155];
      v32 = v0[154];

      v33 = *(v31 + 8);
      v33(v30, v32);
      v28 = (v33)(v29, v32);
    }

    v0[196] = (*(*v0[144] + 168))(v28);
    v34 = *(MEMORY[0x277D4CEA8] + 4);
    v237 = (*MEMORY[0x277D4CEA8] + MEMORY[0x277D4CEA8]);
    v35 = swift_task_alloc();
    v0[197] = v35;
    *v35 = v0;
    v35[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
    v36 = v0[143];
    v37 = v0[142];

    return v237(v37, v36);
  }
}

{
  v2 = *v1;
  v3 = (*v1)[177];
  v11 = *v1;
  (*v1)[178] = v0;

  if (v0)
  {
    v4 = v2[175];
    v5 = v2[174];
    v6 = v2[173];

    v7 = v2[165];
    v8 = v2[164];
    v9 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 122);
    v7 = v2[165];
    v8 = v2[164];
    v9 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v2 = *v1;
  v3 = (*v1)[181];
  v11 = *v1;
  (*v1)[182] = v0;

  if (v0)
  {
    v4 = v2[175];
    v5 = v2[174];
    v6 = v2[173];

    v7 = v2[165];
    v8 = v2[164];
    v9 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 127);
    v7 = v2[165];
    v8 = v2[164];
    v9 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v2 = *v1;
  v3 = (*v1)[185];
  v10 = *v1;
  (*v1)[186] = v0;

  if (v0)
  {
    v4 = v2[175];
    v5 = v2[174];

    v6 = v2[165];
    v7 = v2[164];
    v8 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 132);
    v6 = v2[165];
    v7 = v2[164];
    v8 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v2 = *v1;
  v3 = (*v1)[189];
  v9 = *v1;
  (*v1)[190] = v0;

  if (v0)
  {
    v4 = v2[175];

    v5 = v2[165];
    v6 = v2[164];
    v7 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 137);
    v5 = v2[165];
    v6 = v2[164];
    v7 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1504) + 1;
  result = outlined destroy of EpochModel(v0 + 656);
  if (v2 == v1)
  {
    v4 = *(v0 + 1400);
    v5 = *(v0 + 1376);
    v6 = *(v0 + 1368);
    v7 = *(v0 + 1360);
    v8 = *(v0 + 1352);
    v9 = *(v0 + 1336);
    v10 = *(v0 + 1328);
    v11 = *(v0 + 1304);

    outlined consume of Data._Representation(v10, v9);
    outlined consume of Data._Representation(v6, v5);
    outlined consume of Data._Representation(v8, v7);

    v12 = *(v0 + 1296);
    v13 = *(v0 + 1288);
    v14 = *(v0 + 1280);
    v15 = *(v0 + 1272);
    v16 = *(v0 + 1264);
    v17 = *(v0 + 1256);
    v18 = *(v0 + 1248);
    v19 = *(v0 + 1224);
    v20 = *(v0 + 1216);
    v21 = *(v0 + 1192);
    v32 = *(v0 + 1184);
    v33 = *(v0 + 1176);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v23 = *(v0 + 1504) + 1;
    *(v0 + 1504) = v23;
    v24 = *(v0 + 1400);
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = (v24 + 80 * v23);
      *(v0 + 656) = v25[2];
      v26 = v25[3];
      v27 = v25[4];
      v28 = v25[6];
      *(v0 + 704) = v25[5];
      *(v0 + 720) = v28;
      *(v0 + 672) = v26;
      *(v0 + 688) = v27;
      *(v0 + 1120) = &type metadata for EpochModel;
      *(v0 + 1128) = &protocol witness table for EpochModel;
      v29 = swift_allocObject();
      *(v0 + 1096) = v29;
      memmove((v29 + 16), v25 + 2, 0x50uLL);
      outlined init with copy of EpochModel(v0 + 656, v0 + 736);
      outlined init with copy of EpochModel(v0 + 656, v0 + 816);
      v30 = swift_task_alloc();
      *(v0 + 1512) = v30;
      *v30 = v0;
      v30[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
      v31 = *(v0 + 1408);

      return SqliteStore.delete(_:)(v0 + 1096);
    }
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 1536);
  v8 = *v1;
  *(*v1 + 1544) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[166], v2[167]);
    v4 = v2[165];
    v5 = v2[164];
    v6 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 112);
    v4 = v2[165];
    v5 = v2[164];
    v6 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1328);
  v3 = *(v0 + 1136);
  outlined copy of Data._Representation(v2, v1);
  v4 = MLS.WriteGroupData.groupID.getter();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = xmmword_2653419D0;
  *(v0 + 960) = &type metadata for EpochModel;
  *(v0 + 968) = &protocol witness table for EpochModel;
  v6 = swift_allocObject();
  *(v0 + 936) = v6;
  v7 = *(v0 + 32);
  v8 = *(v0 + 64);
  v9 = *(v0 + 80);
  v6[3] = *(v0 + 48);
  v6[4] = v8;
  v6[5] = v9;
  v6[1] = *(v0 + 16);
  v6[2] = v7;
  outlined init with copy of EpochModel(v0 + 16, v0 + 96);
  v10 = swift_task_alloc();
  *(v0 + 1552) = v10;
  *v10 = v0;
  v10[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  v11 = *(v0 + 1528);

  return SqliteStore.delete(_:)(v0 + 936);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1552);
  v8 = *v1;
  *(*v1 + 1560) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[166], v2[167]);
    v4 = v2[165];
    v5 = v2[164];
    v6 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 117);
    v4 = v2[165];
    v5 = v2[164];
    v6 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[167];
  v4 = v0[166];
  v5 = v0[163];

  outlined destroy of EpochModel((v0 + 2));
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(0, 0xC000000000000000);
  outlined consume of Data._Representation(v4, v3);
  v6 = v0[162];
  v7 = v0[161];
  v8 = v0[160];
  v9 = v0[159];
  v10 = v0[158];
  v11 = v0[157];
  v12 = v0[156];
  v13 = v0[153];
  v14 = v0[152];
  v15 = v0[149];
  v18 = v0[148];
  v19 = v0[147];

  v16 = v0[1];

  return v16();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1576);
  v9 = *v1;
  *(*v1 + 1584) = v0;

  if (v0)
  {
    v4 = v2[165];
    v5 = v2[164];
    v6 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  else
  {
    v7 = v2[196];

    v4 = v2[165];
    v5 = v2[164];
    v6 = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[163];

  v2 = v0[162];
  v3 = v0[161];
  v4 = v0[160];
  v5 = v0[159];
  v6 = v0[158];
  v7 = v0[157];
  v8 = v0[156];
  v9 = v0[153];
  v10 = v0[152];
  v11 = v0[149];
  v14 = v0[148];
  v15 = v0[147];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[196];
  v2 = v0[163];

  v3 = v0[162];
  v4 = v0[161];
  v5 = v0[160];
  v6 = v0[159];
  v7 = v0[158];
  v8 = v0[157];
  v9 = v0[156];
  v10 = v0[153];
  v11 = v0[152];
  v12 = v0[149];
  v15 = v0[148];
  v16 = v0[147];
  v17 = v0[198];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[163];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(0, 0xC000000000000000);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);
  v4 = v0[162];
  v5 = v0[161];
  v6 = v0[160];
  v7 = v0[159];
  v8 = v0[158];
  v9 = v0[157];
  v10 = v0[156];
  v11 = v0[153];
  v12 = v0[152];
  v13 = v0[149];
  v16 = v0[148];
  v17 = v0[147];
  v18 = v0[193];

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[163];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(0, 0xC000000000000000);
  outlined destroy of EpochModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 117);
  v4 = v0[162];
  v5 = v0[161];
  v6 = v0[160];
  v7 = v0[159];
  v8 = v0[158];
  v9 = v0[157];
  v10 = v0[156];
  v11 = v0[153];
  v12 = v0[152];
  v13 = v0[149];
  v16 = v0[148];
  v17 = v0[147];
  v18 = v0[195];

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[163];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 122);
  v6 = v0[162];
  v7 = v0[161];
  v8 = v0[160];
  v9 = v0[159];
  v10 = v0[158];
  v11 = v0[157];
  v12 = v0[156];
  v13 = v0[153];
  v14 = v0[152];
  v15 = v0[149];
  v18 = v0[148];
  v19 = v0[147];
  v20 = v0[178];

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[163];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined destroy of EpochModel((v0 + 22));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 127);
  v6 = v0[162];
  v7 = v0[161];
  v8 = v0[160];
  v9 = v0[159];
  v10 = v0[158];
  v11 = v0[157];
  v12 = v0[156];
  v13 = v0[153];
  v14 = v0[152];
  v15 = v0[149];
  v18 = v0[148];
  v19 = v0[147];
  v20 = v0[182];

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[163];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined destroy of EpochModel((v0 + 52));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 132);
  v6 = v0[162];
  v7 = v0[161];
  v8 = v0[160];
  v9 = v0[159];
  v10 = v0[158];
  v11 = v0[157];
  v12 = v0[156];
  v13 = v0[153];
  v14 = v0[152];
  v15 = v0[149];
  v18 = v0[148];
  v19 = v0[147];
  v20 = v0[186];

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[163];
  outlined consume of Data._Representation(v0[166], v0[167]);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined destroy of EpochModel((v0 + 82));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 137);
  v6 = v0[162];
  v7 = v0[161];
  v8 = v0[160];
  v9 = v0[159];
  v10 = v0[158];
  v11 = v0[157];
  v12 = v0[156];
  v13 = v0[153];
  v14 = v0[152];
  v15 = v0[149];
  v18 = v0[148];
  v19 = v0[147];
  v20 = v0[190];

  v16 = v0[1];

  return v16();
}

void DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:)()
{
  v1 = *(v0 + 1152) + *(v0 + 1344);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister writeGroupID inserting epoch records", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = *(v0 + 1384);

  v6 = *(v5 + 16);
  *(v0 + 1432) = v6;
  v7 = *(v0 + 1384);
  if (v6)
  {
    *(v0 + 1440) = 0;
    if (*(v7 + 2))
    {
      *(v0 + 176) = v7[2];
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[6];
      *(v0 + 224) = v7[5];
      *(v0 + 240) = v10;
      *(v0 + 192) = v8;
      *(v0 + 208) = v9;
      *(v0 + 1040) = &type metadata for EpochModel;
      *(v0 + 1048) = &protocol witness table for EpochModel;
      v11 = swift_allocObject();
      *(v0 + 1016) = v11;
      memmove((v11 + 16), v7 + 2, 0x50uLL);
      outlined init with copy of EpochModel(v0 + 176, v0 + 256);
      outlined init with copy of EpochModel(v0 + 176, v0 + 336);
      v12 = swift_task_alloc();
      *(v0 + 1448) = v12;
      *v12 = v0;
      v12[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
      v13 = *(v0 + 1408);

      SqliteStore.insert(_:)(v0 + 1016);
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v0 + 1344);
  v15 = *(v0 + 1152);
  v16 = *(v0 + 1384);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26524C000, v17, v18, "DaemonPersister writeGroupID updating epoch records", v19, 2u);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  v20 = *(v0 + 1392);

  v21 = *(v20 + 16);
  *(v0 + 1464) = v21;
  v22 = *(v0 + 1392);
  if (v21)
  {
    *(v0 + 1472) = 0;
    if (!*(v22 + 16))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *(v0 + 416) = *(v22 + 32);
    v23 = *(v22 + 48);
    v24 = *(v22 + 64);
    v25 = *(v22 + 96);
    *(v0 + 464) = *(v22 + 80);
    *(v0 + 480) = v25;
    *(v0 + 432) = v23;
    *(v0 + 448) = v24;
    *(v0 + 1080) = &type metadata for EpochModel;
    *(v0 + 1088) = &protocol witness table for EpochModel;
    v26 = swift_allocObject();
    *(v0 + 1056) = v26;
    memmove((v26 + 16), (v22 + 32), 0x50uLL);
    outlined init with copy of EpochModel(v0 + 416, v0 + 496);
    outlined init with copy of EpochModel(v0 + 416, v0 + 576);
    v27 = swift_task_alloc();
    *(v0 + 1480) = v27;
    *v27 = v0;
    v27[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
    v28 = *(v0 + 1408);

    SqliteStore.update(_:)(v0 + 1056);
  }

  else
  {
    v29 = *(v0 + 1344);
    v30 = *(v0 + 1152);
    v31 = *(v0 + 1392);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26524C000, v32, v33, "DaemonPersister writeGroupID deleting epoch records", v34, 2u);
      MEMORY[0x2667577B0](v34, -1, -1);
    }

    v35 = *(v0 + 1400);

    v36 = *(v35 + 16);
    *(v0 + 1496) = v36;
    v37 = *(v0 + 1400);
    if (v36)
    {
      *(v0 + 1504) = 0;
      if (!*(v37 + 16))
      {
LABEL_27:
        __break(1u);
        return;
      }

      *(v0 + 656) = *(v37 + 32);
      v38 = *(v37 + 48);
      v39 = *(v37 + 64);
      v40 = *(v37 + 96);
      *(v0 + 704) = *(v37 + 80);
      *(v0 + 720) = v40;
      *(v0 + 672) = v38;
      *(v0 + 688) = v39;
      *(v0 + 1120) = &type metadata for EpochModel;
      *(v0 + 1128) = &protocol witness table for EpochModel;
      v41 = swift_allocObject();
      *(v0 + 1096) = v41;
      memmove((v41 + 16), (v37 + 32), 0x50uLL);
      outlined init with copy of EpochModel(v0 + 656, v0 + 736);
      outlined init with copy of EpochModel(v0 + 656, v0 + 816);
      v42 = swift_task_alloc();
      *(v0 + 1512) = v42;
      *v42 = v0;
      v42[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
      v43 = *(v0 + 1408);

      SqliteStore.delete(_:)(v0 + 1096);
    }

    else
    {
      v44 = *(v0 + 1376);
      v45 = *(v0 + 1368);
      v46 = *(v0 + 1360);
      v47 = *(v0 + 1352);
      v48 = *(v0 + 1336);
      v49 = *(v0 + 1328);
      v50 = *(v0 + 1304);
      v51 = *(v0 + 1400);

      outlined consume of Data._Representation(v49, v48);
      outlined consume of Data._Representation(v45, v44);
      outlined consume of Data._Representation(v47, v46);

      v52 = *(v0 + 1296);
      v53 = *(v0 + 1288);
      v54 = *(v0 + 1280);
      v55 = *(v0 + 1272);
      v56 = *(v0 + 1264);
      v57 = *(v0 + 1256);
      v58 = *(v0 + 1248);
      v59 = *(v0 + 1224);
      v60 = *(v0 + 1216);
      v61 = *(v0 + 1192);
      v63 = *(v0 + 1184);
      v64 = *(v0 + 1176);

      v62 = *(v0 + 8);

      v62();
    }
  }
}

{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1440) + 1;
  outlined destroy of EpochModel(v0 + 176);
  if (v2 == v1)
  {
    v3 = *(v0 + 1384);
    v4 = *(v0 + 1344);
    v5 = *(v0 + 1152);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister writeGroupID updating epoch records", v8, 2u);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    v9 = *(v0 + 1392);

    v10 = *(v9 + 16);
    *(v0 + 1464) = v10;
    v11 = *(v0 + 1392);
    if (v10)
    {
      *(v0 + 1472) = 0;
      if (*(v11 + 2))
      {
        *(v0 + 416) = v11[2];
        v12 = v11[3];
        v13 = v11[4];
        v14 = v11[6];
        *(v0 + 464) = v11[5];
        *(v0 + 480) = v14;
        *(v0 + 432) = v12;
        *(v0 + 448) = v13;
        *(v0 + 1080) = &type metadata for EpochModel;
        *(v0 + 1088) = &protocol witness table for EpochModel;
        v15 = swift_allocObject();
        *(v0 + 1056) = v15;
        memmove((v15 + 16), v11 + 2, 0x50uLL);
        outlined init with copy of EpochModel(v0 + 416, v0 + 496);
        outlined init with copy of EpochModel(v0 + 416, v0 + 576);
        v16 = swift_task_alloc();
        *(v0 + 1480) = v16;
        *v16 = v0;
        v16[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
        v17 = *(v0 + 1408);

        SqliteStore.update(_:)(v0 + 1056);
        return;
      }

      goto LABEL_24;
    }

    v27 = *(v0 + 1344);
    v28 = *(v0 + 1152);
    v29 = *(v0 + 1392);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26524C000, v30, v31, "DaemonPersister writeGroupID deleting epoch records", v32, 2u);
      MEMORY[0x2667577B0](v32, -1, -1);
    }

    v33 = *(v0 + 1400);

    v34 = *(v33 + 16);
    *(v0 + 1496) = v34;
    v35 = *(v0 + 1400);
    if (v34)
    {
      *(v0 + 1504) = 0;
      if (!*(v35 + 16))
      {
LABEL_25:
        __break(1u);
        return;
      }

      *(v0 + 656) = *(v35 + 32);
      v36 = *(v35 + 48);
      v37 = *(v35 + 64);
      v38 = *(v35 + 96);
      *(v0 + 704) = *(v35 + 80);
      *(v0 + 720) = v38;
      *(v0 + 672) = v36;
      *(v0 + 688) = v37;
      *(v0 + 1120) = &type metadata for EpochModel;
      *(v0 + 1128) = &protocol witness table for EpochModel;
      v39 = swift_allocObject();
      *(v0 + 1096) = v39;
      memmove((v39 + 16), (v35 + 32), 0x50uLL);
      outlined init with copy of EpochModel(v0 + 656, v0 + 736);
      outlined init with copy of EpochModel(v0 + 656, v0 + 816);
      v40 = swift_task_alloc();
      *(v0 + 1512) = v40;
      *v40 = v0;
      v40[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
      v41 = *(v0 + 1408);

      SqliteStore.delete(_:)(v0 + 1096);
    }

    else
    {
      v42 = *(v0 + 1376);
      v43 = *(v0 + 1368);
      v44 = *(v0 + 1360);
      v45 = *(v0 + 1352);
      v46 = *(v0 + 1336);
      v47 = *(v0 + 1328);
      v48 = *(v0 + 1304);
      v49 = *(v0 + 1400);

      outlined consume of Data._Representation(v47, v46);
      outlined consume of Data._Representation(v43, v42);
      outlined consume of Data._Representation(v45, v44);

      v50 = *(v0 + 1296);
      v51 = *(v0 + 1288);
      v52 = *(v0 + 1280);
      v53 = *(v0 + 1272);
      v54 = *(v0 + 1264);
      v55 = *(v0 + 1256);
      v56 = *(v0 + 1248);
      v57 = *(v0 + 1224);
      v58 = *(v0 + 1216);
      v59 = *(v0 + 1192);
      v61 = *(v0 + 1184);
      v62 = *(v0 + 1176);

      v60 = *(v0 + 8);

      v60();
    }
  }

  else
  {
    v18 = *(v0 + 1440) + 1;
    *(v0 + 1440) = v18;
    v19 = *(v0 + 1384);
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = (v19 + 80 * v18);
    *(v0 + 176) = v20[2];
    v21 = v20[3];
    v22 = v20[4];
    v23 = v20[6];
    *(v0 + 224) = v20[5];
    *(v0 + 240) = v23;
    *(v0 + 192) = v21;
    *(v0 + 208) = v22;
    *(v0 + 1040) = &type metadata for EpochModel;
    *(v0 + 1048) = &protocol witness table for EpochModel;
    v24 = swift_allocObject();
    *(v0 + 1016) = v24;
    memmove((v24 + 16), v20 + 2, 0x50uLL);
    outlined init with copy of EpochModel(v0 + 176, v0 + 256);
    outlined init with copy of EpochModel(v0 + 176, v0 + 336);
    v25 = swift_task_alloc();
    *(v0 + 1448) = v25;
    *v25 = v0;
    v25[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
    v26 = *(v0 + 1408);

    SqliteStore.insert(_:)(v0 + 1016);
  }
}

{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1472) + 1;
  outlined destroy of EpochModel(v0 + 416);
  if (v2 == v1)
  {
    v3 = *(v0 + 1392);
    v4 = *(v0 + 1344);
    v5 = *(v0 + 1152);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister writeGroupID deleting epoch records", v8, 2u);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    v9 = *(v0 + 1400);

    v10 = *(v9 + 16);
    *(v0 + 1496) = v10;
    v11 = *(v0 + 1400);
    if (v10)
    {
      *(v0 + 1504) = 0;
      if (*(v11 + 2))
      {
        *(v0 + 656) = v11[2];
        v12 = v11[3];
        v13 = v11[4];
        v14 = v11[6];
        *(v0 + 704) = v11[5];
        *(v0 + 720) = v14;
        *(v0 + 672) = v12;
        *(v0 + 688) = v13;
        *(v0 + 1120) = &type metadata for EpochModel;
        *(v0 + 1128) = &protocol witness table for EpochModel;
        v15 = swift_allocObject();
        *(v0 + 1096) = v15;
        memmove((v15 + 16), v11 + 2, 0x50uLL);
        outlined init with copy of EpochModel(v0 + 656, v0 + 736);
        outlined init with copy of EpochModel(v0 + 656, v0 + 816);
        v16 = swift_task_alloc();
        *(v0 + 1512) = v16;
        *v16 = v0;
        v16[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
        v17 = *(v0 + 1408);

        SqliteStore.delete(_:)(v0 + 1096);
        return;
      }

LABEL_17:
      __break(1u);
      return;
    }

    v27 = *(v0 + 1376);
    v28 = *(v0 + 1368);
    v29 = *(v0 + 1360);
    v30 = *(v0 + 1352);
    v31 = *(v0 + 1336);
    v32 = *(v0 + 1328);
    v33 = *(v0 + 1304);
    v34 = *(v0 + 1400);

    outlined consume of Data._Representation(v32, v31);
    outlined consume of Data._Representation(v28, v27);
    outlined consume of Data._Representation(v30, v29);

    v35 = *(v0 + 1296);
    v36 = *(v0 + 1288);
    v37 = *(v0 + 1280);
    v38 = *(v0 + 1272);
    v39 = *(v0 + 1264);
    v40 = *(v0 + 1256);
    v41 = *(v0 + 1248);
    v42 = *(v0 + 1224);
    v43 = *(v0 + 1216);
    v44 = *(v0 + 1192);
    v46 = *(v0 + 1184);
    v47 = *(v0 + 1176);

    v45 = *(v0 + 8);

    v45();
  }

  else
  {
    v18 = *(v0 + 1472) + 1;
    *(v0 + 1472) = v18;
    v19 = *(v0 + 1392);
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v20 = (v19 + 80 * v18);
    *(v0 + 416) = v20[2];
    v21 = v20[3];
    v22 = v20[4];
    v23 = v20[6];
    *(v0 + 464) = v20[5];
    *(v0 + 480) = v23;
    *(v0 + 432) = v21;
    *(v0 + 448) = v22;
    *(v0 + 1080) = &type metadata for EpochModel;
    *(v0 + 1088) = &protocol witness table for EpochModel;
    v24 = swift_allocObject();
    *(v0 + 1056) = v24;
    memmove((v24 + 16), v20 + 2, 0x50uLL);
    outlined init with copy of EpochModel(v0 + 416, v0 + 496);
    outlined init with copy of EpochModel(v0 + 416, v0 + 576);
    v25 = swift_task_alloc();
    *(v0 + 1480) = v25;
    *v25 = v0;
    v25[1] = DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:);
    v26 = *(v0 + 1408);

    SqliteStore.update(_:)(v0 + 1056);
  }
}

uint64_t DaemonPersister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[22] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DaemonPersister.getSwiftMLSPersister(forClientIdentifier:), v8, v7);
}

uint64_t DaemonPersister.getSwiftMLSPersister(forClientIdentifier:)()
{
  v27 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v4 = (*(*v2 + 216))(v3);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 136)), (v6 & 1) != 0))
  {
    v7 = *(v0 + 128);
    outlined init with copy of SMAUserDefaultsProtocol(*(v4 + 56) + 40 * v5, v0 + 56);

    outlined init with take of MLS.SwiftMLSPersisterProtocol((v0 + 56), v0 + 16);
    outlined init with take of MLS.SwiftMLSPersisterProtocol((v0 + 16), v7);
  }

  else
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v24 = v11;
    v12 = *(v0 + 136);
    v25 = *(v0 + 128);

    v13 = *(v8 + 16);
    v13(v9, v12, v11);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister);
    v14 = type metadata accessor for MLS.SwiftMLSPersister();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();

    v17 = MLS.SwiftMLSPersister.init(clientIdentifier:delegatePersister:)();
    v13(v9, v12, v24);
    v26[3] = v14;
    v18 = _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister, MEMORY[0x277D4CEE0]);
    v26[4] = v18;
    v26[0] = v17;
    v19 = *(*v10 + 232);

    v20 = v19(v0 + 96);
    specialized Dictionary.subscript.setter(v26, v9);
    v20(v0 + 96, 0);
    v25[3] = v14;
    v25[4] = v18;
    *v25 = v17;
  }

  v21 = *(v0 + 168);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t DaemonPersister.deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister);

  v4 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);

  v5 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir + 8);

  v6 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName + 8);

  v7 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder);

  v8 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_decoder);

  v9 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_featureFlagStore;
  v10 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_clientIDToSwiftMLSPersister);

  v12 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue);

  return v0;
}

uint64_t DaemonPersister.__deallocating_deinit()
{
  DaemonPersister.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for MLS.Persister.atomically<A>(with:do:rollback:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 304);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for MLS.Persister.save(swiftMLSClientID:forIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 312);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.loadSwiftMLSClientID(identifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 320);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 328);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 336);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 344);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance DaemonPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t protocol witness for MLS.Persister.save(groupClientContextBlob:forIdentifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 352);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadGroupClientContextBlob(identifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 360);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 368);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for MLS.Persister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:) in conformance DaemonPersister;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:) in conformance DaemonPersister(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t protocol witness for MLS.Persister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 376);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.replaceGroupMembers(identifier:newMembers:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 384);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.deleteGroup(identifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 408);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.deleteSecureMessagingGroup(identifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 416);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.save(outgoingEventUpdate:forGroup:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 424);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.save(incomingEvent:forGroup:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 432);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.delete(incomingEvent:forGroup:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 440);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 448);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 456);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance DaemonPersister()
{
  v2 = *(*v0 + 464);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance DaemonPersister;

  return v6();
}

uint64_t protocol witness for MLS.Persister.loadEvents(clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 472);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.loadRetriableEventStates(clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 480);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.readGroupState(swiftMLSGroupRead:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 528);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.readEpochData(swiftMLSEpochRead:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 536);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.write(swiftMLSGroupWrite:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 544);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.Persister.read(clientUUID:) in conformance DaemonPersister(uint64_t a1)
{
  v4 = *(*v1 + 488);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return v8(a1);
}

uint64_t protocol witness for MLS.Persister.write(clientUUID:clientState:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 496);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3);
}