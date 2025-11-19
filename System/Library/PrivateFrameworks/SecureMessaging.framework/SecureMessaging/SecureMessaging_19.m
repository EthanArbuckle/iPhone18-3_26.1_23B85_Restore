uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 7752);
  v15 = *v2;
  *(*v2 + 7760) = v1;

  if (v1)
  {
    v6 = *(v4 + 1080);
    *(v4 + 1248) = *(v4 + 1064);
    *(v4 + 1264) = v6;
    *(v4 + 1280) = *(v4 + 1096);
    v7 = *(v4 + 1016);
    *(v4 + 1184) = *(v4 + 1000);
    *(v4 + 1200) = v7;
    v8 = *(v4 + 1048);
    *(v4 + 1216) = *(v4 + 1032);
    *(v4 + 1232) = v8;
    v9 = *(v4 + 952);
    *(v4 + 1120) = *(v4 + 936);
    *(v4 + 1136) = v9;
    v10 = *(v4 + 984);
    *(v4 + 1152) = *(v4 + 968);
    *(v4 + 1296) = *(v4 + 1112);
    *(v4 + 1168) = v10;
    outlined destroy of NSObject?(v4 + 1120, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v11 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    *(v4 + 7768) = a1;
    v11 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v11, 0, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 7776);
  v6 = *v1;
  *(*v1 + 7784) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), 0, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 8104);
  v16 = *v2;
  v3[1014] = a1;
  v3[1015] = v1;

  if (v1)
  {
    v5 = v3[1012];
    v6 = v3[959];
    v7 = v3[958];
    v8 = v3[954];
    v9 = v3[950];

    outlined consume of MLS.OutgoingEventState.EventSpecificState(v7, v6, 7u);

    v10 = *MEMORY[0x277D85DE8];
    v11 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v12 = v9;
  }

  else
  {
    v12 = v3[950];
    v13 = *MEMORY[0x277D85DE8];
    v11 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

{
  v121 = v1;
  v120[2] = *MEMORY[0x277D85DE8];
  v2 = 6240;
  v3 = *(v1 + 8112);
  v4 = *(v3 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = v3;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_39;
  }

  while (2)
  {
    v103 = v5;
    v105 = &v102;
    v2 = *(v1 + 7536);
    v7 = *(v1 + 7512);
    v8 = *(v1 + 7472);
    MEMORY[0x28223BE20](a1);
    v104 = &v102 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v104, v9);
    v106 = 0;
    v10 = 0;
    v5 = v6 + 56;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v119 = (v8 + 48);
    v110 = (v8 + 8);
    v111 = (v8 + 32);
    v113 = v2 + 16;
    *&v114 = v7 + 8;
    v115 = (v2 + 8);
    v116 = v2;
    v15 = *(v1 + 8120);
    v112 = v6;
    v108 = v14;
    v109 = v6 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v18 = (v13 - 1) & v13;
LABEL_14:
      v21 = v17 | (v10 << 6);
      v118 = v18;
      v22 = *(v1 + 7600);
      v23 = *(v1 + 7544);
      v24 = *(v1 + 7528);
      v25 = *(v6 + 48);
      v26 = *(v116 + 72);
      v107 = v21;
      (*(v116 + 16))(v23, v25 + v26 * v21, v24);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v27 = *(v1 + 7600);
        swift_task_reportUnexpectedExecutor();
      }

      v28 = *(v1 + 7544);
      v29 = *(v1 + 7520);
      v30 = *(v1 + 7464);
      v2 = *(v1 + 7456);
      MLS.Identity.SigningIdentity.credential.getter();
      MLS.Identity.Credential.credentialNotAfter.getter();
      v31 = *v119;
      if ((*v119)(v2, 1, v30) == 1)
      {
        outlined destroy of NSObject?(*(v1 + 7456), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v32 = *(v1 + 7496);
        v33 = *(v1 + 7488);
        v2 = *(v1 + 7464);
        (*v111)(v32, *(v1 + 7456), v2);
        Date.init()();
        v34 = static Date.< infix(_:_:)();
        v35 = *v110;
        (*v110)(v33, v2);
        v35(v32, v2);
        v5 = v109;
        v6 = v112;
        if (v34)
        {
          v14 = v108;
          v13 = v118;
          goto LABEL_24;
        }
      }

      v36 = *(v1 + 7520);
      v37 = *(v1 + 7448);
      MLS.Identity.Credential.participantInfoNotAfter.getter();
      if (v15)
      {
        v89 = *(v1 + 8112);
        v90 = *(v1 + 7544);
        v91 = *(v1 + 7528);
        (*v114)(*(v1 + 7520), *(v1 + 7504));
        (*v115)(v90, v91);

        swift_willThrow();
        v2 = 6240;
        goto LABEL_37;
      }

      v38 = *(v1 + 7464);
      v39 = *(v1 + 7448);
      v40 = v31(v39, 1, v38);
      v117 = 0;
      if (v40 == 1)
      {
        outlined destroy of NSObject?(v39, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v14 = v108;
        v13 = v118;
        goto LABEL_6;
      }

      v41 = *(v1 + 7488);
      v2 = *(v1 + 7480);
      (*v111)(v2, v39, v38);
      Date.init()();
      v42 = static Date.< infix(_:_:)();
      v43 = *v110;
      (*v110)(v41, v38);
      v43(v2, v38);
      v14 = v108;
      v5 = v109;
      v6 = v112;
      v13 = v118;
      if (v42)
      {
        v15 = 0;
LABEL_24:
        v3 = *(v1 + 7544);
        v44 = *(v1 + 7528);
        (*v114)(*(v1 + 7520), *(v1 + 7504));
        (*v115)(v3, v44);
        *&v104[(v107 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v107;
        if (__OFADD__(v106++, 1))
        {
          __break(1u);
LABEL_27:
          v117 = specialized _NativeSet.extractSubset(using:count:)(v104, v103, v106, *(v1 + 8112));
          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:
        v3 = *(v1 + 7544);
        v16 = *(v1 + 7528);
        (*v114)(*(v1 + 7520), *(v1 + 7504));
        (*v115)(v3, v16);
        v15 = 0;
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_27;
      }

      v20 = *(v5 + 8 * v10);
      ++v19;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v18 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_39:

    if (swift_stdlib_isStackAllocationSafe())
    {
      v96 = *(v1 + 8112);

      v6 = *(v1 + 8112);
      continue;
    }

    break;
  }

  v97 = *(v1 + 8120);
  v98 = *(v1 + 8112);
  v99 = swift_slowAlloc();
  v15 = v97;
  v100 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy8SwiftMLS0J0O8IdentityO07SigningK0VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_8i8MLS0G0O8k3O07L7H0V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(v99, v5, v98, closure #3 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:));
  v101 = *(v1 + 8112);

  MEMORY[0x266755550](v99, -1, -1);
  if (v15)
  {
LABEL_37:
    v117 = v15;
    v92 = *(v1 + 8096);
    v93 = *(v1 + 7672);
    v94 = *(v1 + 7664);
    v95 = *(v1 + 7632);

    outlined consume of MLS.OutgoingEventState.EventSpecificState(v94, v93, 7u);
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + v2));
    v67 = *(v1 + 7592);
    v68 = *(v1 + 7568);
    v69 = *(v1 + 7544);
    v70 = *(v1 + 7520);
    v71 = *(v1 + 7496);
    v72 = *(v1 + 7488);
    v73 = *(v1 + 7480);
    v74 = *(v1 + 7456);
    v75 = *(v1 + 7448);
    v76 = *(v1 + 7440);

    v77 = *(v1 + 8);
    v78 = *MEMORY[0x277D85DE8];

    return v77();
  }

  else
  {
    v117 = v100;
LABEL_28:
    v46 = *(v1 + 8096);
    v47 = *(v1 + 7672);
    v118 = *(v1 + 7664);
    v119 = v47;
    v114 = *(v1 + 7624);
    v116 = *(v1 + 7440);
    v48 = v116;
    v49 = *(v1 + 7424);
    v112 = *(v1 + 7416);
    v113 = v49;
    v50 = *(v1 + 7400);
    *(v1 + 6960) = *(*(v1 + 7408) + 56);
    v51 = *(v1 + 6960);
    v110 = *(v1 + 6968);
    v111 = v51;
    outlined init with copy of ServerBag.MLS(v50 + 104, v1 + 6040);
    v52 = *(v50 + 96);
    v53 = *(v50 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    v115 = *(v50 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    outlined init with copy of MLS.KeyPackageProvider(v50 + direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider, v48);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationCy_AC05GroupI5ErrorVAC0jI7ContextVy_10Foundation4DataVGAC0ji9ProcessedL0Vy_ALGGMd, &_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationCy_AC05GroupI5ErrorVAC0jI7ContextVy_10Foundation4DataVGAC0ji9ProcessedL0Vy_ALGGMR);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    v57 = swift_allocObject();
    *(v1 + 8128) = v57;
    v58 = *(*v57 + 144);
    outlined init with copy of MLS.OutgoingEventState?(v1 + 6960, v1 + 6944, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    Logger.init(subsystem:category:)();
    v59 = v113;
    *(v57 + 16) = v112;
    *(v57 + 24) = v59;
    *(v57 + 32) = v114;
    v60 = v110;
    *(v57 + 48) = v111;
    *(v57 + 56) = v60;
    *(v57 + 64) = v46;
    *(v57 + *(*v57 + 152)) = v117;
    outlined init with take of MLS.KeyUpdatePolicy((v1 + 6040), v57 + *(*v57 + 160));
    v61 = (v57 + *(*v57 + 168));
    *v61 = v52;
    v61[1] = &protocol witness table for MLS.EventSender<A, B>;
    v62 = (v57 + *(*v57 + 176));
    v63 = v116;
    *v62 = v115;
    v62[1] = v53;
    outlined init with take of MLS.KeyPackageProvider(v63, v57 + *(*v57 + 184), type metadata accessor for MLS.KeyPackageProvider);

    outlined consume of MLS.OutgoingEventState.EventSpecificState(v64, v119, 7u);
    v65 = *(v50 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
    *(v1 + 7264) = v57;
    *(v1 + 7272) = v46;
    v2 = 6240;
    outlined init with copy of ServerBag.MLS(v1 + 6240, v1 + 6360);
    v120[0] = v64;
    MLS.KeyPackageFetcher.FetchResult.init(retrievalResult:)(v120, (v1 + 6784));
    if (v15)
    {
      v117 = v15;
      v66 = *(v1 + 8096);
      outlined destroy of NSObject?(v1 + 6360, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

      goto LABEL_30;
    }

    v80 = v54;
    v81 = *(v1 + 6800);
    *(v1 + 6760) = *(v1 + 6784);
    *(v1 + 6776) = v81;
    v82 = *(*v65 + 224);
    v83 = (*v65 + 224);
    v118 = v82 + *v82;
    v119 = v83;
    v84 = v82[1];
    v85 = swift_task_alloc();
    *(v1 + 8136) = v85;
    v86 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.UpdateOtherExpiredKeyPackagesOperation<MLS.GroupOperationError, MLS.GroupOperationContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>, &_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationCy_AC05GroupI5ErrorVAC0jI7ContextVy_10Foundation4DataVGAC0ji9ProcessedL0Vy_ALGGMd, &_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationCy_AC05GroupI5ErrorVAC0jI7ContextVy_10Foundation4DataVGAC0ji9ProcessedL0Vy_ALGGMR);
    *v85 = v1;
    v85[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v87 = *MEMORY[0x277D85DE8];
    v88 = v118;

    return v88(v1 + 3168, v1 + 7264, v1 + 7272, v1 + 6360, v1 + 6760, v80, v86, v1 + 6688);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 7824);
  v8 = *v2;
  *(v3 + 7832) = a1;
  *(v3 + 7840) = a2;

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), 0, 0);
}

{
  v28 = *MEMORY[0x277D85DE8];
  v6 = *(*v3 + 7848);
  v7 = *v3;
  *(v7 + 7856) = v2;

  if (v2)
  {
    *(v7 + 928) = *(v7 + 1112);
    v8 = *(v7 + 1080);
    *(v7 + 880) = *(v7 + 1064);
    *(v7 + 896) = v8;
    *(v7 + 912) = *(v7 + 1096);
    v9 = *(v7 + 1016);
    *(v7 + 816) = *(v7 + 1000);
    *(v7 + 832) = v9;
    v10 = *(v7 + 1048);
    *(v7 + 848) = *(v7 + 1032);
    *(v7 + 864) = v10;
    v11 = *(v7 + 952);
    *(v7 + 752) = *(v7 + 936);
    *(v7 + 768) = v11;
    v12 = *(v7 + 984);
    *(v7 + 784) = *(v7 + 968);
    *(v7 + 800) = v12;
    outlined destroy of NSObject?(v7 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v13 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), 0, 0);
  }

  else
  {
    v14 = *(v7 + 7744);
    v15 = *(v7 + 7736);
    v27 = *(v7 + 7728);
    v16 = *(v7 + 7720);
    *(v7 + 7864) = a2;
    *(v7 + 7872) = a1;
    ObjectType = swift_getObjectType();
    *(v7 + 7168) = v15;
    *(v7 + 7176) = v14;
    v26 = (*(v27 + 64) + **(v27 + 64));
    v18 = *(*(v27 + 64) + 4);
    v19 = swift_task_alloc();
    *(v7 + 7880) = v19;
    *v19 = v7;
    v19[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v20 = *(v7 + 7728);
    v21 = *(v7 + 7720);
    v22 = *(v7 + 7424);
    v23 = *MEMORY[0x277D85DE8];
    v24 = *(v7 + 7416);

    return v26(v24, v22, v7 + 7168, ObjectType, v20);
  }
}

{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 7880);
  v17 = *v3;
  *(*v3 + 7888) = v2;

  if (v2)
  {
    *(v6 + 744) = *(v6 + 1112);
    v8 = *(v6 + 1080);
    *(v6 + 696) = *(v6 + 1064);
    *(v6 + 712) = v8;
    *(v6 + 728) = *(v6 + 1096);
    v9 = *(v6 + 1016);
    *(v6 + 632) = *(v6 + 1000);
    *(v6 + 648) = v9;
    v10 = *(v6 + 1048);
    *(v6 + 664) = *(v6 + 1032);
    *(v6 + 680) = v10;
    v11 = *(v6 + 952);
    *(v6 + 568) = *(v6 + 936);
    *(v6 + 584) = v11;
    v12 = *(v6 + 984);
    *(v6 + 600) = *(v6 + 968);
    *(v6 + 616) = v12;
    outlined destroy of NSObject?(v6 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v13 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    *(v6 + 7896) = a2;
    *(v6 + 7904) = a1;
    v13 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[86] = a4;
  v4[85] = a3;
  v4[84] = a2;
  v4[83] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[87] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v5, 0);
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v25 = v0;
  v1 = v0[83];
  v2 = v1[1];
  v0[2] = *v1;
  v3 = v0[86];
  v4 = v0[84];
  v0[88] = v2;
  v0[3] = v2;
  _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi0_((v0 + 2));

  outlined init with copy of MLS.OutgoingEventState(v1, (v0 + 72));

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  outlined destroy of MLS.OutgoingEventState(v1);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[86];
    v8 = v0[85];
    v9 = v0[83];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + 40), *(v9 + 48), &v24);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v24);
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator retry called on missing group { identifier: %s, group: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v12 = v0[84];
  v13 = *(v12 + 80);
  v14 = *(v12 + 88);
  ObjectType = swift_getObjectType();
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  v16 = *(v12 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[81] = *(v12 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[82] = v16;
  v17 = *(v14 + 112);

  v23 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[89] = v19;
  *v19 = v0;
  v19[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v20 = v0[86];
  v21 = v0[85];

  return (v23)(v0 + 37, v21, v20, v0 + 81, ObjectType, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 696);

    v6 = *(v2 + 656);

    v7 = v5;
  }

  else
  {
    v8 = *(v2 + 696);
    v9 = *(v2 + 656);

    v7 = v8;
  }

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v7, 0);
}

{
  v1 = *(v0 + 704);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #3 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v0 = type metadata accessor for MLS.Identity.Credential();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  MLS.Identity.SigningIdentity.credential.getter();
  v5 = MLS.Identity.Credential.isExpired.getter();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[70] = v6;
  v7[69] = a6;
  v7[68] = a5;
  v7[67] = a4;
  v7[66] = a3;
  v7[65] = a2;
  v7[64] = a1;
  v8 = *(*(type metadata accessor for MLS.KeyPackageProvider() - 8) + 64) + 15;
  v7[71] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v7[72] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:), v9, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:)()
{
  v46 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = *(v0 + 528);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 544);
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    v9 = *(v0 + 520);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v45);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v45);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator sendSelfHeal { identifier: %s, groupIdentifier: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v12 = *(v0 + 568);
  v13 = *(v0 + 560);
  v33 = *(v0 + 544);
  v40 = *(v0 + 536);
  v38 = v12;
  v39 = *(v0 + 528);
  v37 = *(v0 + 520);
  v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + 584) = v34;
  outlined init with copy of MLS.SwiftMLSClientPicker(v13 + 16, v0 + 360);
  v32 = *(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v35 = *(v13 + 96);
  v44 = *(v13 + 80);
  outlined init with copy of MLS.KeyPackageProvider(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider, v12);
  outlined init with copy of ServerBag.MLS(v13 + 104, v0 + 408);
  v14 = *(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
  v15 = *(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
  v16 = *(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
  v42 = *(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v36 = *(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v17 = *(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17SelfHealOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO17SelfHealOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
  v18 = *(v41 + 48);
  v19 = *(v41 + 52);
  v20 = swift_allocObject();
  *(v0 + 592) = v20;
  v31 = *(*v20 + 208);

  swift_unknownObjectRetain();

  outlined copy of MLS.AllMember();

  Logger.init(subsystem:category:)();
  *(v20 + 48) = xmmword_2651B5F50;
  v21 = *(v0 + 376);
  *(v20 + 72) = *(v0 + 360);
  *(v20 + 16) = v37;
  *(v20 + 24) = v39;
  *(v20 + 32) = v40;
  *(v20 + 40) = v33;
  *(v20 + 64) = v34;
  *(v20 + 88) = v21;
  *(v20 + 97) = *(v0 + 385);
  *(v20 + 120) = v32;
  *(v20 + 128) = v44;
  *(v20 + 144) = v35;
  *(v20 + 152) = &protocol witness table for MLS.EventSender<A, B>;
  outlined init with take of MLS.KeyPackageProvider(v38, v20 + *(*v20 + 176), type metadata accessor for MLS.KeyPackageProvider);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 408), v20 + *(*v20 + 184));
  v22 = v20 + *(*v20 + 192);
  *v22 = v14;
  *(v22 + 8) = v15;
  *(v22 + 16) = v16;
  *(v22 + 24) = v17;
  v23 = (v20 + *(*v20 + 200));
  *v23 = v42;
  v23[1] = v36;
  v24 = *(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 496) = v20;
  *(v0 + 504) = v34;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 448) = 0;
  v25 = *(*v24 + 224);

  v43 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 600) = v27;
  v28 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.SelfHealOperation<MLS.GroupOperationError, MLS.GroupOperationContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.SelfHealOperation<A, B, C>, &_s15SecureMessaging3MLSO17SelfHealOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO17SelfHealOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
  *v27 = v0;
  v27[1] = MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:);
  v29 = *(v0 + 552);

  return v43(v0 + 16, v0 + 496, v0 + 504, v29, v0 + 448, v41, v28, v0 + 472);
}

{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v9 = *v1;

  if (v0)
  {
    v4 = *(v2 + 576);
    v5 = MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:);
  }

  else
  {
    v6 = *(v2 + 584);
    v7 = *(v2 + 576);

    v5 = MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 592);
  v2 = *(v0 + 568);
  v3 = *(v0 + 512);

  v4 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v4;
  *(v0 + 232) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v5;
  v6 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 248) = *(v0 + 128);
  *(v0 + 184) = v6;
  outlined init with copy of MLS.EventQueue.Result(v0 + 144, v0 + 256);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 136);
  v8 = *(v0 + 160);
  v7 = *(v0 + 176);
  *v3 = *(v0 + 144);
  *(v3 + 16) = v8;
  *(v3 + 32) = v7;
  v10 = *(v0 + 208);
  v9 = *(v0 + 224);
  v11 = *(v0 + 192);
  *(v3 + 96) = *(v0 + 240);
  *(v3 + 64) = v10;
  *(v3 + 80) = v9;
  *(v3 + 48) = v11;

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 568);
  v4 = *(v0 + 472);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v7 = v4;
  *(v7 + 8) = v5;
  *(v7 + 16) = v6;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[63] = a6;
  v7[64] = v6;
  v7[61] = a4;
  v7[62] = a5;
  v7[59] = a2;
  v7[60] = a3;
  v7[58] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[65] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:), v8, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:)()
{
  v37 = v0;
  v1 = v0[64];
  v2 = v0[62];
  v3 = v0[60];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[61];
    v6 = v0[62];
    v9 = v0[59];
    v8 = v0[60];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v36);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v36);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator sendNewEra { identifier: %s, groupIdentifier: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v12 = v0[64];
  v13 = v0[62];
  v33 = v0[61];
  v35 = v0[63];
  v32 = v0[60];
  v30 = v0[59];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0[66] = v14;
  v15 = *(v12 + 96);
  v16 = *(v12 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v31 = *(v12 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = *v20;

  v29 = *(v12 + 80);
  v0[67] = v20;
  v22 = *(v21 + 168);
  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  *(v20 + 16) = v30;
  *(v20 + 24) = v32;
  *(v20 + 32) = v33;
  *(v20 + 40) = v13;
  *(v20 + 48) = xmmword_2651B5F50;
  *(v20 + 64) = v14;
  *(v20 + 72) = v29;
  *(v20 + 88) = v15;
  *(v20 + 96) = &protocol witness table for MLS.EventSender<A, B>;
  *(v20 + 104) = v31;
  *(v20 + 112) = v16;
  v23 = *(v12 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  v0[56] = v20;
  v0[57] = v14;
  outlined init with copy of ServerBag.MLS(v35, (v0 + 45));
  v0[51] = 0;
  v0[52] = 0;
  v0[50] = 0;
  v24 = *(*v23 + 224);

  v34 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[68] = v26;
  v27 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.EraAdvancementOperation<MLS.GroupOperationError, MLS.GroupOperationContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.EraAdvancementOperation<A, B, C>, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
  *v26 = v0;
  v26[1] = MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:);

  return (v34)(v0 + 2, v0 + 56, v0 + 57, v0 + 45, v0 + 50, v17, v27, v0 + 53);
}

{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v10 = *v1;

  if (v0)
  {
    v4 = *(v2 + 520);
    outlined destroy of NSObject?(v2 + 360, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:);
    v6 = v4;
  }

  else
  {
    v7 = *(v2 + 528);
    v8 = *(v2 + 520);
    outlined destroy of NSObject?(v2 + 360, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v5 = MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:);
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

{
  v1 = *(v0 + 536);
  v2 = *(v0 + 464);

  v3 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v3;
  *(v0 + 232) = *(v0 + 112);
  v4 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v4;
  v5 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 248) = *(v0 + 128);
  *(v0 + 184) = v5;
  outlined init with copy of MLS.EventQueue.Result(v0 + 144, v0 + 256);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 136);
  v7 = *(v0 + 160);
  v6 = *(v0 + 176);
  *v2 = *(v0 + 144);
  *(v2 + 16) = v7;
  *(v2 + 32) = v6;
  v9 = *(v0 + 208);
  v8 = *(v0 + 224);
  v10 = *(v0 + 192);
  *(v2 + 96) = *(v0 + 240);
  *(v2 + 64) = v9;
  *(v2 + 80) = v8;
  *(v2 + 48) = v10;
  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 2816) = v4;
  *(v5 + 2808) = a3;
  *(v5 + 2800) = a2;
  *(v5 + 2792) = a1;
  v7 = type metadata accessor for MLS.Group.GroupInfo();
  *(v5 + 2824) = v7;
  v8 = *(v7 - 8);
  *(v5 + 2832) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 2840) = swift_task_alloc();
  v10 = a4[1];
  *(v5 + 2480) = *a4;
  *(v5 + 2496) = v10;
  v11 = a4[3];
  *(v5 + 2512) = a4[2];
  *(v5 + 2528) = v11;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v5 + 2848) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), v12, 0);
}

void MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)()
{
  v1 = *(v0 + 2816);
  *(v0 + 2856) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator sendFailureToDecrypt", v4, 2u);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v28 = *(v0 + 2816);

  v5 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v6 = [v5 UUIDString];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v0 + 2864) = v7;
  *(v0 + 2872) = v9;
  v10 = *(v0 + 2528);
  v11 = *(v0 + 2536);
  swift_bridgeObjectRetain_n();
  outlined copy of Data?(v10, v11);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v13 = *(v0 + 2480);
  v24 = *(v0 + 2488);
  v25 = v12;
  v14 = *(v0 + 2496);
  v15 = *(v0 + 2512);
  v16 = *(v0 + 2520);
  v17 = *(v0 + 2504);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2651D82E0;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v0 + 1488) = v7;
  *(v0 + 1496) = v9;
  *(v0 + 1504) = v7;
  *(v0 + 1512) = v9;
  *(v0 + 1520) = v10;
  *(v0 + 1528) = v11;
  *(v0 + 1536) = v25;
  *(v0 + 1544) = v13;
  *(v0 + 1552) = v24;
  *(v0 + 1560) = v14;
  *(v0 + 1568) = v17;
  *(v0 + 1576) = v15;
  *(v0 + 1584) = v16;
  *(v0 + 1592) = v18;
  v19 = *(**(v28 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader) + 192);
  swift_bridgeObjectRetain_n();
  outlined copy of MLS.AllMember();
  v26 = v19 + *v19;
  v20 = v19[1];
  v21 = swift_task_alloc();
  *(v0 + 2880) = v21;
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v21 = v0;
  v21[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  v22 = *(v0 + 2808);
  v23 = *(v0 + 2800);

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[370] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[337];
    v2 = v0[338];
    __swift_project_boxed_opaque_existential_1(v0 + 334, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[371] = v5;
    *v5 = v0;
    v5[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
    v6 = v0[355];

    v7(v6, v1, v2);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)()
{
  v2 = *v1;
  v3 = *(*v1 + 2880);
  v9 = *v1;

  if (v0)
  {
    v4 = *(v2 + 2872);
    v5 = *(v2 + 2848);

    v6 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 2848);
    v6 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 2872);
  v2 = *(v0 + 2856);
  v3 = *(v0 + 2816);

  outlined init with copy of MLS.QueuedFTDInfo(v0 + 2480, v0 + 2544);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  outlined destroy of MLS.QueuedFTDInfo(v0 + 2480);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 2872);
    v7 = *(v0 + 2864);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315394;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v26);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = *(v0 + 2496);
    *(v0 + 2608) = *(v0 + 2480);
    *(v0 + 2624) = v11;
    v12 = *(v0 + 2528);
    *(v0 + 2640) = *(v0 + 2512);
    *(v0 + 2656) = v12;
    outlined init with copy of MLS.QueuedFTDInfo(v0 + 2480, v0 + 2416);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v26);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator sendFailureToDecrypt sending outgoing event { eventUUID: %s, ftdInfo: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
    v16 = *(v0 + 2872);
  }

  v17 = *(v0 + 2816);
  *(v0 + 2888) = v17[12];
  *(v0 + 248) = *(v0 + 1536);
  v18 = *(v0 + 1568);
  *(v0 + 264) = *(v0 + 1552);
  *(v0 + 280) = v18;
  *(v0 + 296) = *(v0 + 1584);
  *(v0 + 200) = *(v0 + 1488);
  *(v0 + 216) = *(v0 + 1504);
  *(v0 + 232) = *(v0 + 1520);
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi5_(v0 + 200);
  v19 = *(v0 + 344);
  *(v0 + 512) = *(v0 + 328);
  *(v0 + 528) = v19;
  *(v0 + 544) = *(v0 + 360);
  *(v0 + 560) = *(v0 + 376);
  v20 = *(v0 + 280);
  *(v0 + 448) = *(v0 + 264);
  *(v0 + 464) = v20;
  v21 = *(v0 + 312);
  *(v0 + 480) = *(v0 + 296);
  *(v0 + 496) = v21;
  v22 = *(v0 + 216);
  *(v0 + 384) = *(v0 + 200);
  *(v0 + 400) = v22;
  v23 = *(v0 + 248);
  *(v0 + 416) = *(v0 + 232);
  *(v0 + 432) = v23;
  outlined init with copy of ServerBag.MLS(v0 + 2712, v0 + 2672);
  *(v0 + 2896) = v17[10];
  *(v0 + 2904) = v17[11];
  v24 = v17 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 2912) = *(v17 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 2920) = *(v24 + 1);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1488, v0 + 1600, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), 0, 0);
}

{
  v1 = v0[351];
  v2 = v0[337];
  v3 = v0[338];
  __swift_project_boxed_opaque_existential_1(v0 + 334, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[366] = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);

  return v8(v2, v3);
}

{
  v1 = v0[337];
  v2 = v0[338];
  __swift_project_boxed_opaque_existential_1(v0 + 334, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[369] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);

  return v7(v1, v2);
}

{
  v0[388] = v0[367];
  v1 = v0[351];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 334);

  v2 = v0[356];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2968);
  v11 = *v1;
  *(*v1 + 2976) = v0;

  if (v0)
  {
    v4 = *(v2 + 528);
    *(v2 + 1064) = *(v2 + 512);
    *(v2 + 1080) = v4;
    *(v2 + 1096) = *(v2 + 544);
    *(v2 + 1112) = *(v2 + 560);
    v5 = *(v2 + 464);
    *(v2 + 1000) = *(v2 + 448);
    *(v2 + 1016) = v5;
    v6 = *(v2 + 496);
    *(v2 + 1032) = *(v2 + 480);
    *(v2 + 1048) = v6;
    v7 = *(v2 + 400);
    *(v2 + 936) = *(v2 + 384);
    *(v2 + 952) = v7;
    v8 = *(v2 + 432);
    *(v2 + 968) = *(v2 + 416);
    *(v2 + 984) = v8;
    outlined destroy of NSObject?(v2 + 936, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v9 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  else
  {
    v9 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = v0[355];
  v2 = v0[354];
  v3 = v0[353];
  v0[373] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[374] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[337];
  v6 = v0[338];
  __swift_project_boxed_opaque_existential_1(v0 + 334, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[375] = v9;
  *v9 = v0;
  v9[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);

  return v11(v5, v6);
}

{
  v1 = v0[337];
  v2 = v0[338];
  __swift_project_boxed_opaque_existential_1(v0 + 334, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[378] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);

  return v7(v1, v2);
}

{
  v0[388] = v0[372];
  v1 = v0[351];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 334);

  v2 = v0[356];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), v2, 0);
}

{
  v1 = v0[377];
  v2 = v0[374];
  v3 = v0[373];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[377];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[376];
  }

  v0[388] = v0[379];
  v6 = v0[351];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 334);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[356];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), v7, 0);
}

{
  v1 = *(v0 + 3080);
  v2 = *(v0 + 3072);
  v3 = *(v0 + 3040);
  v4 = *(v0 + 3016);
  v5 = *(v0 + 2992);
  v6 = *(v0 + 2984);
  v21 = v6;
  v22 = v5;
  v7 = *(v0 + 2960);
  v20 = v7;
  v8 = *(v0 + 2944);
  v24 = *(v0 + 2888);
  v9 = *(v0 + 2808);
  v10 = *(v0 + 2800);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 3040);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 3048);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 3016);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 3008);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 2128) = v10;
  *(v0 + 2136) = v9;
  *(v0 + 2144) = v15;
  *(v0 + 2152) = v15;
  *(v0 + 2160) = v7;
  *(v0 + 2168) = v6;
  *(v0 + 2176) = v5;
  *(v0 + 2184) = v14;
  *(v0 + 2192) = v13;
  *(v0 + 2200) = v12;
  *(v0 + 2208) = v11;
  *(v0 + 2216) = v1;
  *(v0 + 2224) = v2;
  outlined init with copy of MLS.Group(v0 + 2128, v0 + 2232);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2672));
  *(v0 + 2024) = v10;
  *(v0 + 2032) = v9;
  *(v0 + 2040) = v15;
  *(v0 + 2048) = v15;
  *(v0 + 2056) = v20;
  *(v0 + 2064) = v21;
  *(v0 + 2072) = v22;
  *(v0 + 2080) = v14;
  *(v0 + 2088) = v13;
  *(v0 + 2096) = v12;
  *(v0 + 2104) = v11;
  *(v0 + 2112) = v1;
  *(v0 + 2120) = v2;
  outlined destroy of MLS.Group(v0 + 2024);
  *(v0 + 1760) = *(v0 + 2176);
  *(v0 + 1776) = *(v0 + 2192);
  *(v0 + 1792) = *(v0 + 2208);
  *(v0 + 1808) = *(v0 + 2224);
  *(v0 + 1712) = *(v0 + 2128);
  *(v0 + 1728) = *(v0 + 2144);
  *(v0 + 1744) = *(v0 + 2160);
  *(v0 + 2336) = 1;
  *(v0 + 2344) = 0u;
  *(v0 + 2360) = 0u;
  *(v0 + 2376) = 0u;
  *(v0 + 2392) = 0u;
  *(v0 + 2408) = 2;
  v23 = (*v24 + 368);
  v25 = (*v23 + **v23);
  v16 = (*v23)[1];
  v17 = swift_task_alloc();
  *(v0 + 3088) = v17;
  *v17 = v0;
  v17[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  v18 = *(v0 + 2888);

  return (v25)(v0 + 384, v0 + 1712, v0 + 2336, 1, 0, 0);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 1712);
  v5 = *(*v1 + 3088);
  v6 = *v1;
  *(*v1 + 3096) = v0;

  v7 = *(v2 + 2848);
  if (v0)
  {
    v8 = *v4;
    v9 = *(v3 + 1728);
    *(v3 + 1952) = *(v3 + 1744);
    *(v3 + 1936) = v9;
    *(v3 + 1920) = v8;
    v10 = *(v3 + 1760);
    v11 = *(v3 + 1776);
    v12 = *(v3 + 1792);
    *(v3 + 2016) = *(v3 + 1808);
    *(v3 + 2000) = v12;
    *(v3 + 1984) = v11;
    *(v3 + 1968) = v10;
    outlined destroy of MLS.Group(v3 + 1920);
    v13 = *(v3 + 432);
    v15 = *(v3 + 384);
    v14 = *(v3 + 400);
    *(v3 + 600) = *(v3 + 416);
    *(v3 + 616) = v13;
    *(v3 + 568) = v15;
    *(v3 + 584) = v14;
    v16 = *(v3 + 496);
    v18 = *(v3 + 448);
    v17 = *(v3 + 464);
    *(v3 + 664) = *(v3 + 480);
    *(v3 + 680) = v16;
    *(v3 + 632) = v18;
    *(v3 + 648) = v17;
    v20 = *(v3 + 528);
    v19 = *(v3 + 544);
    v21 = *(v3 + 512);
    *(v3 + 744) = *(v3 + 560);
    *(v3 + 712) = v20;
    *(v3 + 728) = v19;
    *(v3 + 696) = v21;
    outlined destroy of NSObject?(v3 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v22 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  else
  {

    v23 = *v4;
    v24 = *(v3 + 1744);
    *(v3 + 1832) = *(v3 + 1728);
    *(v3 + 1848) = v24;
    *(v3 + 1816) = v23;
    v25 = *(v3 + 1760);
    v26 = *(v3 + 1776);
    v27 = *(v3 + 1792);
    *(v3 + 1912) = *(v3 + 1808);
    *(v3 + 1880) = v26;
    *(v3 + 1896) = v27;
    *(v3 + 1864) = v25;
    outlined destroy of MLS.Group(v3 + 1816);
    v28 = *(v3 + 432);
    v30 = *(v3 + 384);
    v29 = *(v3 + 400);
    *(v3 + 48) = *(v3 + 416);
    *(v3 + 64) = v28;
    *(v3 + 16) = v30;
    *(v3 + 32) = v29;
    v31 = *(v3 + 496);
    v33 = *(v3 + 448);
    v32 = *(v3 + 464);
    *(v3 + 112) = *(v3 + 480);
    *(v3 + 128) = v31;
    *(v3 + 80) = v33;
    *(v3 + 96) = v32;
    v35 = *(v3 + 528);
    v34 = *(v3 + 544);
    v36 = *(v3 + 512);
    *(v3 + 192) = *(v3 + 560);
    *(v3 + 160) = v35;
    *(v3 + 176) = v34;
    *(v3 + 144) = v36;
    outlined destroy of NSObject?(v3 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v22 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  return MEMORY[0x2822009F8](v22, v7, 0);
}

{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[374];
  v4 = v0[373];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[380];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[381];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[377];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[376];
  }

  v0[388] = v0[383];
  v9 = v0[351];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 334);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[356];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), v10, 0);
}

{
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 339);
  v1 = v0[388];
  v2 = v0[355];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[355];
  v2 = v0[349];
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 339);
  *v2 = 1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  *(v2 + 96) = 3;

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 2752);
  v2 = *(v0 + 2760);
  v3 = *(v0 + 2768);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  outlined destroy of NSObject?(v0 + 1488, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMR);
  v5 = *(v0 + 2840);

  v6 = *(v0 + 8);

  return v6();
}

{
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 339);
  v1 = v0[387];
  v2 = v0[355];

  v3 = v0[1];

  return v3();
}

uint64_t MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2928);
  v13 = *v2;
  *(*v2 + 2936) = v1;

  if (v1)
  {
    v6 = *(v4 + 528);
    *(v4 + 880) = *(v4 + 512);
    *(v4 + 896) = v6;
    *(v4 + 912) = *(v4 + 544);
    *(v4 + 928) = *(v4 + 560);
    v7 = *(v4 + 464);
    *(v4 + 816) = *(v4 + 448);
    *(v4 + 832) = v7;
    v8 = *(v4 + 496);
    *(v4 + 848) = *(v4 + 480);
    *(v4 + 864) = v8;
    v9 = *(v4 + 400);
    *(v4 + 752) = *(v4 + 384);
    *(v4 + 768) = v9;
    v10 = *(v4 + 432);
    *(v4 + 784) = *(v4 + 416);
    *(v4 + 800) = v10;
    outlined destroy of NSObject?(v4 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v11 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  else
  {
    *(v4 + 2944) = a1;
    v11 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

{
  v2 = *(*v1 + 2952);
  v4 = *v1;
  *(*v1 + 2960) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3000);
  v6 = *v2;
  *(v3 + 3008) = a1;
  *(v3 + 3016) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), 0, 0);
}

{
  v6 = *(*v3 + 3024);
  v7 = *v3;
  *(v7 + 3032) = v2;

  if (v2)
  {
    v8 = *(v7 + 528);
    *(v7 + 1248) = *(v7 + 512);
    *(v7 + 1264) = v8;
    *(v7 + 1280) = *(v7 + 544);
    v9 = *(v7 + 464);
    *(v7 + 1184) = *(v7 + 448);
    *(v7 + 1200) = v9;
    v10 = *(v7 + 496);
    *(v7 + 1216) = *(v7 + 480);
    *(v7 + 1232) = v10;
    v11 = *(v7 + 400);
    *(v7 + 1120) = *(v7 + 384);
    *(v7 + 1136) = v11;
    v12 = *(v7 + 432);
    *(v7 + 1152) = *(v7 + 416);
    *(v7 + 1296) = *(v7 + 560);
    *(v7 + 1168) = v12;
    outlined destroy of NSObject?(v7 + 1120, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), 0, 0);
  }

  else
  {
    v13 = *(v7 + 2920);
    v14 = *(v7 + 2912);
    v26 = *(v7 + 2904);
    v15 = *(v7 + 2896);
    *(v7 + 3040) = a2;
    *(v7 + 3048) = a1;
    ObjectType = swift_getObjectType();
    *(v7 + 2776) = v14;
    *(v7 + 2784) = v13;
    v17 = *(v26 + 64);
    v25 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v7 + 3056) = v19;
    *v19 = v7;
    v19[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
    v20 = *(v7 + 2904);
    v21 = *(v7 + 2896);
    v22 = *(v7 + 2808);
    v23 = *(v7 + 2800);

    return v25(v23, v22, v7 + 2776, ObjectType, v20);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 3056);
  v15 = *v3;
  *(*v3 + 3064) = v2;

  if (v2)
  {
    v8 = *(v6 + 528);
    *(v6 + 1432) = *(v6 + 512);
    *(v6 + 1448) = v8;
    *(v6 + 1464) = *(v6 + 544);
    *(v6 + 1480) = *(v6 + 560);
    v9 = *(v6 + 464);
    *(v6 + 1368) = *(v6 + 448);
    *(v6 + 1384) = v9;
    v10 = *(v6 + 496);
    *(v6 + 1400) = *(v6 + 480);
    *(v6 + 1416) = v10;
    v11 = *(v6 + 400);
    *(v6 + 1304) = *(v6 + 384);
    *(v6 + 1320) = v11;
    v12 = *(v6 + 432);
    *(v6 + 1336) = *(v6 + 416);
    *(v6 + 1352) = v12;
    outlined destroy of NSObject?(v6 + 1304, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v13 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  else
  {
    *(v6 + 3072) = a2;
    *(v6 + 3080) = a1;
    v13 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  *(v5 + 344) = a2;
  *(v5 + 352) = v4;
  *(v5 + 424) = a4;
  *(v5 + 336) = a1;
  v7 = type metadata accessor for UUID();
  *(v5 + 360) = v7;
  v8 = *(v7 - 8);
  *(v5 + 368) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 376) = swift_task_alloc();
  v10 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v10;
  v11 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v11;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v5 + 384) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:), v12, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)()
{
  v36 = v0;
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 344);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *(v0 + 392) = v7;
  (*(v2 + 8))(v1, v3);

  outlined init with copy of MLS.QueuedFTDInfo(v0 + 16, v0 + 80);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  outlined destroy of MLS.QueuedFTDInfo(v0 + 16);
  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 336);
    v11 = *(v0 + 344);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v35);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v35);
    *(v13 + 22) = 2080;
    v15 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v15;
    v16 = *(v0 + 64);
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 256) = v16;
    outlined init with copy of MLS.QueuedFTDInfo(v0 + 16, v0 + 272);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v35);

    *(v13 + 24) = v19;
    _os_log_impl(&dword_264F1F000, v9, v10, "performFailureToDecrypt generated identifier { identifier: %s, group: %s, ftdInfo: %s }", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  v21 = *(v0 + 344);
  v20 = *(v0 + 352);
  v22 = *(v0 + 336);
  v23 = *(v20 + 96);
  v24 = swift_allocObject();
  v25 = *(v0 + 32);
  *(v24 + 40) = *(v0 + 16);
  *(v24 + 56) = v25;
  v26 = *(v0 + 64);
  *(v24 + 72) = *(v0 + 48);
  *(v0 + 400) = v24;
  *(v24 + 16) = v20;
  *(v24 + 24) = v22;
  *(v24 + 32) = v21;
  *(v24 + 88) = v26;
  v27 = *(*v23 + 320);

  outlined init with copy of MLS.QueuedFTDInfo(v0 + 16, v0 + 144);

  v34 = (v27 + *v27);
  v28 = v27[1];
  v29 = swift_task_alloc();
  *(v0 + 408) = v29;
  *v29 = v0;
  v29[1] = MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:);
  v30 = *(v0 + 424);
  v31 = *(v0 + 344);
  v32 = *(v0 + 336);

  return v34(v32, v31, v6, v8, v30, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:), v24);
}

{
  v2 = *(*v1 + 408);
  v3 = *v1;
  v3[52] = v0;

  if (v0)
  {
    v4 = v3[48];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:), v4, 0);
  }

  else
  {
    v5 = v3[49];
    v6 = v3[50];
    v7 = v3[47];

    v8 = v3[1];

    return v8();
  }
}

{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];

  v4 = v0[1];
  v5 = v0[52];

  return v4();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v11 = v8;
  if (one-time initialization token for shared != -1)
  {
    v17 = a8;
    swift_once();
    a8 = v17;
  }

  *(v11 + 80) = static MLSActor.shared;
  v13 = a8[1];
  *(v11 + 16) = *a8;
  *(v11 + 32) = v13;
  v14 = a8[3];
  *(v11 + 48) = a8[2];
  *(v11 + 64) = v14;
  v15 = swift_task_alloc();
  *(v11 + 88) = v15;
  *v15 = v11;
  v15[1] = closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:);

  return MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)(a1, a6, a7, (v11 + 16));
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readGroupState(groupID:), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for UUID();
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v3[29] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:), v7, 0);
}

void MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:)()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = *(v0[25] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  UUID.init()();
  UUID.uuidString.getter();
  v0[30] = v5;
  (*(v2 + 8))(v1, v3);
  v6 = *(*v4 + 192);
  v12 = v6 + *v6;
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[31] = v8;
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  v9 = v0[23];
  v10 = v0[24];

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:)()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *v1;

  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  }

  else
  {
    v7 = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  outlined init with copy of ServerBag.MLS(v0 + 80, v0 + 120);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);

  return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v4, v2, v0 + 120, (v0 + 16), 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(v2 + 264) = v0;

  outlined destroy of NSObject?(v2 + 120, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[28];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);

  v2 = v0[1];

  return v2();
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  v5 = *(v0 + 224);

  v6 = *(v0 + 8);

  return v6();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  v1 = v0[33];
  v2 = v0[28];

  v3 = v0[1];

  return v3();
}

uint64_t MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, char a5)
{
  *(v6 + 296) = a5;
  *(v6 + 200) = a3;
  *(v6 + 208) = v5;
  *(v6 + 184) = a1;
  *(v6 + 192) = a2;
  v8 = type metadata accessor for UUID();
  *(v6 + 216) = v8;
  v9 = *(v8 - 8);
  *(v6 + 224) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  v11 = a4[1];
  *(v6 + 16) = *a4;
  *(v6 + 32) = v11;
  v12 = a4[3];
  *(v6 + 48) = a4[2];
  *(v6 + 64) = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v6 + 240) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v13, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)()
{
  v33 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *(v0 + 248) = v6;
  *(v0 + 256) = v7;
  (*(v2 + 8))(v1, v3);
  *(v0 + 264) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v32);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v32);
    _os_log_impl(&dword_264F1F000, v9, v10, "performSelfHeal generated identifier { identifier: %s, group: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v16 + 96);
  v20 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v20;
  v21 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v21;
  outlined init with copy of MLS.OutgoingEventState?(v15, v0 + 144, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  v22 = swift_allocObject();
  v23 = *(v0 + 160);
  *(v22 + 56) = *(v0 + 144);
  *(v0 + 272) = v22;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v17;
  *(v22 + 40) = v6;
  *(v22 + 48) = v8;
  *(v22 + 72) = v23;
  *(v22 + 88) = *(v0 + 176);
  v24 = *(*v19 + 328);

  v31 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 280) = v26;
  *v26 = v0;
  v26[1] = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:);
  v27 = *(v0 + 296);
  v28 = *(v0 + 192);
  v29 = *(v0 + 184);

  return v31(v29, v28, v6, v8, v0 + 80, v27, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v22);
}

{
  v2 = *(*v1 + 280);
  v3 = *v1;
  v3[36] = v0;

  if (v0)
  {
    v4 = v3[34];
    v5 = v3[30];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v5, 0);
  }

  else
  {
    v6 = v3[34];
    v7 = v3[32];
    v8 = v3[29];

    v9 = v3[1];

    return v9();
  }
}

{
  v27 = v0;
  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[26];
  v5 = v0[24];

  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[36];
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[23];
    v25 = v0[24];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v13 = 136315650;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, v26);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v25, v26);
    *(v13 + 22) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v14 = v18;
    _os_log_impl(&dword_264F1F000, v7, v8, "performSelfHeal enqueueSelfHeal failed { identifier: %s, group: %s, error: %@", v13, 0x20u);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  else
  {
    v19 = v0[32];
  }

  v20 = v0[36];
  v21 = v0[29];
  swift_willThrow();

  v22 = v0[1];
  v23 = v0[36];

  return v22();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8;
  v12[5] = a8;
  v12[6] = v17;
  v12[3] = a6;
  v12[4] = a7;
  v12[2] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12[7] = static MLSActor.shared;
  v14 = swift_task_alloc();
  v12[8] = v14;
  *v14 = v12;
  v14[1] = closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:);

  return MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:)(a1, a6, a7, a8, v17, v18);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  v23 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[9];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[3];
    v21 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v22);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v21, v22);
    *(v12 + 22) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "performSelfHeal sendSelfHeal failed { identifier: %s, group: %s, error: %@", v12, 0x20u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  v17 = v0[9];
  swift_willThrow();
  v18 = v0[1];
  v19 = v0[9];

  return v18();
}

uint64_t MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, char a5)
{
  *(v6 + 296) = a5;
  *(v6 + 200) = a3;
  *(v6 + 208) = v5;
  *(v6 + 184) = a1;
  *(v6 + 192) = a2;
  v8 = type metadata accessor for UUID();
  *(v6 + 216) = v8;
  v9 = *(v8 - 8);
  *(v6 + 224) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  v11 = a4[1];
  *(v6 + 16) = *a4;
  *(v6 + 32) = v11;
  v12 = a4[3];
  *(v6 + 48) = a4[2];
  *(v6 + 64) = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v6 + 240) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v13, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)()
{
  v32 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *(v0 + 248) = v6;
  *(v0 + 256) = v7;
  (*(v2 + 8))(v1, v3);
  *(v0 + 264) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v31);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v31);
    _os_log_impl(&dword_264F1F000, v9, v10, "performEraAdvancement generated identifier { identifier: %s, group: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v16 + 96);
  v20 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v20;
  v21 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v21;
  outlined init with copy of ServerBag.MLS(v15, v0 + 144);
  v22 = swift_allocObject();
  *(v0 + 272) = v22;
  v22[2] = v16;
  v22[3] = v18;
  v22[4] = v17;
  v22[5] = v6;
  v22[6] = v8;
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 144), (v22 + 7));
  v23 = *(*v19 + 328);

  v30 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 280) = v25;
  *v25 = v0;
  v25[1] = MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:);
  v26 = *(v0 + 296);
  v27 = *(v0 + 192);
  v28 = *(v0 + 184);

  return (v30)(v28, v27, v6, v8, v0 + 80, v26, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v22);
}

{
  v2 = *(*v1 + 280);
  v3 = *v1;
  v3[36] = v0;

  if (v0)
  {
    v4 = v3[34];
    v5 = v3[30];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v5, 0);
  }

  else
  {
    v6 = v3[34];
    v7 = v3[32];
    v8 = v3[29];

    v9 = v3[1];

    return v9();
  }
}

{
  v27 = v0;
  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[26];
  v5 = v0[24];

  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[36];
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[23];
    v25 = v0[24];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v13 = 136315650;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, v26);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v25, v26);
    *(v13 + 22) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v14 = v18;
    _os_log_impl(&dword_264F1F000, v7, v8, "performEraAdvancement enqueueSelfHeal failed { identifier: %s, group: %s, error: %@", v13, 0x20u);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  else
  {
    v19 = v0[32];
  }

  v20 = v0[36];
  v21 = v0[29];
  swift_willThrow();

  v22 = v0[1];
  v23 = v0[36];

  return v22();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = swift_task_alloc();
  *(v12 + 16) = v14;
  *v14 = v12;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:)(a1, a6, a7, a8, v17, v18);
}

uint64_t MLS.SwiftMLSClientCoordinator.healingMethod(error:)()
{
  v1 = MLS.MLSError.healingMethod.getter();
  v2 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);
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

uint64_t MLS.SwiftMLSClientCoordinator.uuidToUse(identifier:eventIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v80 = a4;
  v77 = a3;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v79 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v74 - v17;
  v81 = a1;
  UUID.init(uuidString:)();
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v78 = *(v20 + 48);
  v21 = v78(v18, 1, v19);
  v82 = a2;
  v74 = v20;
  v75 = v12;
  if (v21 == 1)
  {
    outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v22 = v8;
    v23 = v9;
    v24 = v19;
  }

  else
  {
    UUID.uuidString.getter();
    v76 = v8;
    String.uppercased()();
    v23 = v9;

    static String.Encoding.utf8.getter();
    v25 = String.data(using:allowLossyConversion:)();
    v27 = v26;
    a2 = v82;

    v28 = v12;
    v22 = v76;
    (*(v23 + 8))(v28, v76);
    (*(v20 + 8))(v18, v19);
    v24 = v19;
    if (v27 >> 60 != 15)
    {
      v53 = v80;

      outlined copy of Data?(v25, v27);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();

      outlined consume of Data?(v25, v27);
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = a2;
        v58 = swift_slowAlloc();
        v83 = v58;
        *v56 = 136315650;
        *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v53, &v83);
        *(v56 + 12) = 2080;
        *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v57, &v83);
        *(v56 + 22) = 2080;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v60 = [(objc_class *)isa debugDescription];

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v83);

        *(v56 + 24) = v64;
        v65 = "SwiftMLSClientCoordinator uuidToUse detected client identifier is a UUID. Setting as SwiftMLS groupID { identifier: %s, group: %s, uuid: %s }";
LABEL_14:
        _os_log_impl(&dword_264F1F000, v54, v55, v65, v56, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v58, -1, -1);
        MEMORY[0x266755550](v56, -1, -1);
      }

LABEL_15:

      return v25;
    }
  }

  v29 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2651D82F0;
  *(v30 + 32) = v81;
  *(v30 + 40) = a2;
  v76 = v5;
  v31 = v5 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
  v32 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
  v33 = *(v31 + 8);
  v34 = *(v31 + 16);
  *(v30 + 48) = *v31;
  *(v30 + 56) = v33;
  v35 = *(v31 + 24);

  outlined copy of MLS.AllMember();
  v36 = v79;
  static UUID.v5(customNamespace:inputs:)(v30, v79);

  if (v78(v36, 1, v24) != 1)
  {
    UUID.uuidString.getter();
    String.uppercased()();

    v38 = v75;
    static String.Encoding.utf8.getter();
    v25 = String.data(using:allowLossyConversion:)();
    v40 = v39;

    (*(v23 + 8))(v38, v29);
    (*(v74 + 8))(v36, v24);
    v37 = v80;
    if (v40 >> 60 == 15)
    {
      goto LABEL_7;
    }

    v66 = v82;

    outlined copy of Data?(v25, v40);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    outlined consume of Data?(v25, v40);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v83 = v58;
      *v56 = 136315650;
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v37, &v83);
      *(v56 + 12) = 2080;
      *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v66, &v83);
      *(v56 + 22) = 2080;
      v67 = Data._bridgeToObjectiveC()().super.isa;
      v68 = [(objc_class *)v67 debugDescription];

      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v83);

      *(v56 + 24) = v72;
      v65 = "SwiftMLSClientCoordinator uuidToUse created UUID out of SHA1 hash. Setting as SwiftMLS groupID { identifier: %s, group: %s, uuid: %s }";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  outlined destroy of NSObject?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v37 = v80;
LABEL_7:

  v41 = v82;

  v42 = v76;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v83 = v46;
    *v45 = 136315650;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v37, &v83);
    *(v45 + 12) = 2080;
    *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v41, &v83);
    *(v45 + 22) = 2080;
    v47 = v42 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
    v48 = *(v42 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
    v49 = *(v42 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
    v50 = *(v42 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
    v51 = *(v47 + 24);
    outlined copy of MLS.AllMember();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v83);
    outlined consume of MLS.AllMember();
    *(v45 + 24) = v52;
    _os_log_impl(&dword_264F1F000, v43, v44, "SwiftMLSClientCoordinator uuidToUse failed to make custom ID for SwiftMLS { identifier: %s, group: %s, selfMember: %s }", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v46, -1, -1);
    MEMORY[0x266755550](v45, -1, -1);
  }

  return 0;
}

void *MLS.SwiftMLSClientCoordinator.deinit()
{
  outlined destroy of MLS.SwiftMLSClientPicker((v0 + 2));
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[10];
  swift_unknownObjectRelease();
  v3 = v0[12];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v4 = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  outlined destroy of MLS.KeyPackageProvider(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for MLS.SwiftMLSClientCoordinator.bag));
  v6 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);

  v7 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
  v8 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
  v9 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
  v10 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
  outlined consume of MLS.AllMember();
  v11 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);

  v12 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);

  v13 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.groupHealer);

  v14 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);

  v15 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.identifierToKeyUpdateTracker);

  return v0;
}

uint64_t MLS.SwiftMLSClientCoordinator.__deallocating_deinit()
{
  MLS.SwiftMLSClientCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.ClientCoordinator.keyPackage.getter in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1)
{
  v4 = *(**v1 + 264);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t protocol witness for MLS.ClientCoordinator.createGroup(identifier:otherMembers:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 296);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 304);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.delete(group:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 312);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.group(identifier:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 320);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.update(groupDetails:forGroup:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 328);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.otherMembers(group:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 336);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.add(members:toGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 368);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.kick(members:fromGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 376);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.leave(group:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 392);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.downgrade(group:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 384);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationEncrypt(data:withGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 408);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationEncrypt(groupName:withGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 424);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationSign(input:withGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 416);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(message:forGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 448);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(message:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 440);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 472);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(errorMessage:withGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 480);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(groupName:forGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 432);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15SecureMessaging3MLSO9AllMemberOG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i15Messaging3MLSO9lM5O_TG5AMxSbs5Error_pRi_zRi0_zlyALIsgndzo_Tf1nc_n04_s15it137MLSO25SwiftMLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0Vy_AC9lM61OG_SSAC0hmO0Vy_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_SbASXEfU4_ShyALGTf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t specialized Set.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for MLS.Identity.SigningIdentity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 32 * result;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    *a4 = *v4;
    *(a4 + 8) = v5;
    *(a4 + 16) = v6;
    *(a4 + 24) = *(v4 + 24);
    return outlined copy of MLS.AllMember();
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t specialized MLS.SwiftMLSClientCoordinatorError.ErrorType.init(rawValue:)(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType);
  }

  return result;
}

uint64_t specialized MLS.SwiftMLSClientCoordinatorError.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30SwiftMLSClientCoordinatorErrorV10CodingKeys33_4A5F1255AF5325EF77C6CF0723488492LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30SwiftMLSClientCoordinatorErrorV10CodingKeys33_4A5F1255AF5325EF77C6CF0723488492LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[14] = 0;
    lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[15];
    v10[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t partial apply for closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26510D0B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26510D0EC()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, v8);
}

uint64_t partial apply for closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4[5];
  v14 = v4[6];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, a2, a3, a4, v14);
}

uint64_t partial apply for closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, a2, a3, v12);
}

uint64_t partial apply for closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, a2, v10);
}

uint64_t sub_26510D4E0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 191) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  outlined consume of MLS.OutgoingEventType<MLS.AllMember, Data>(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32), *(v0 + v6 + 40), *(v0 + v6 + 48), *(v0 + v6 + 56), *(v0 + v6 + 64), *(v0 + v6 + 72), *(v0 + v6 + 80), *(v0 + v6 + 88), *(v0 + v6 + 96), *(v0 + v6 + 104), *(v0 + v6 + 112), *(v0 + v6 + 120), *(v0 + v6 + 128), *(v0 + v6 + 136), *(v0 + v6 + 144), *(v0 + v6 + 152), *(v0 + v6 + 160), *(v0 + v6 + 168), *(v0 + v6 + 176));
  v9 = *(v0 + v7 + 8);

  v10 = v0 + v8;
  if (*(v0 + v8 + 8))
  {

    outlined consume of MLS.OutgoingEventState.EventSpecificState(*(v10 + 16), *(v10 + 24), *(v10 + 32));
    v11 = *(v10 + 48);

    v12 = *(v10 + 64);
    if (v12 >> 60 != 15)
    {
      outlined consume of Data._Representation(*(v10 + 56), v12);
    }
  }

  v13 = (((v8 + 79) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v13);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v14));

  return MEMORY[0x2821FE8E8](v0, v14 + 40, v3 | 7);
}

uint64_t outlined consume of MLS.OutgoingEventType<MLS.AllMember, Data>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22, char a23)
{
  result = a19;
  switch(a23)
  {
    case 0:
    case 1:
    case 8:
    case 9:
    case 13:

      outlined consume of Data?(a5, a6);

      outlined consume of Data._Representation(a10, a11);

      outlined consume of Data._Representation(a14, a15);

      outlined consume of Data._Representation(a17, a18);
      outlined consume of Data?(a19, a20);
      v28 = a21;
      goto LABEL_14;
    case 2:

      outlined consume of Data?(a5, a6);

      outlined consume of Data._Representation(a10, a11);

      outlined consume of Data._Representation(a13, a14);
      outlined consume of Data?(a15, a16);
      v28 = a17;
      a22 = a18;
      goto LABEL_14;
    case 3:
    case 10:

      outlined consume of Data?(a5, a6);

      v28 = a10;
      a22 = a11;
      goto LABEL_14;
    case 4:
    case 5:
    case 11:
    case 14:

      outlined consume of Data?(a5, a6);

      outlined consume of Data._Representation(a10, a11);
      outlined consume of Data._Representation(a12, a13);
      outlined consume of Data?(a14, a15);
      v28 = a16;
      a22 = a17;
      goto LABEL_14;
    case 6:

      outlined consume of Data?(a5, a6);

      outlined consume of MLS.AllMember();

      goto LABEL_10;
    case 7:

      outlined consume of Data?(a5, a6);

      goto LABEL_10;
    case 12:

      outlined consume of Data?(a5, a6);

      outlined consume of Data._Representation(a10, a11);
      outlined consume of Data._Representation(a12, a13);
      outlined consume of Data._Representation(a14, a15);
      outlined consume of Data._Representation(a16, a17);
      outlined consume of Data?(a18, a19);
      v28 = a20;
      a22 = a21;
LABEL_14:

      return outlined consume of Data._Representation(v28, a22);
    case 15:

      outlined consume of Data?(a5, a6);
      goto LABEL_10;
    case 16:

      outlined consume of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
      outlined consume of Data?(a20, a21);
LABEL_10:

      break;
    default:
      return result;
  }

  return result;
}

void outlined consume of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, char a15)
{
  if (a15 == 1)
  {
    outlined consume of MLS.AllMember();
    outlined consume of Data._Representation(a5, a6);

    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(a7, a8, a9, a10, a11);
  }

  else if (!a15)
  {
    outlined consume of MLS.AllMember();
    outlined consume of Data._Representation(a5, a6);
    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(a7, a8, a9, a10, a11);

    outlined consume of Data._Representation(a13, a14);
  }
}

uint64_t partial apply for closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for Logger() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v21 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 191) & 0xFFFFFFFFFFFFFFF8;
  v11 = (((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v4 + v10);
  v13 = v12[1];
  v20 = *v12;
  v14 = *(v4 + v11);
  v15 = *(v4 + v11 + 8);
  v16 = *(v4 + v11 + 16);
  v17 = *(v4 + ((v11 + 31) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v6 + 16) = v18;
  *v18 = v6;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, a2, a3, a4, v4 + v8, v4 + v21, v20, v13);
}

uint64_t sub_26510DD78()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + v5;
  v7 = *(v0 + v5 + 8);

  outlined consume of MLS.OutgoingEventState.EventSpecificState(*(v6 + 16), *(v6 + 24), *(v6 + 32));
  v8 = *(v0 + v5 + 48);

  v9 = *(v0 + v5 + 64);
  if (v9 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v6 + 56), v9);
  }

  v10 = (v5 + 79) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10 + 8);

  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v3 | 7);
}

uint64_t partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  v10 = *(type metadata accessor for Logger() - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 79) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v4 + v13);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v4 + v14);
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, a2, a3, a4, v4 + v11, v4 + v12, v16, v17);
}

uint64_t sub_26510DFD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26510E008()
{
  if (v0[3])
  {

    outlined consume of Data._Representation(v0[7], v0[8]);
    outlined consume of Data._Representation(v0[9], v0[10]);
    outlined consume of Data._Representation(v0[11], v0[12]);
    v1 = v0[14];
    if (v1 >> 60 != 15)
    {
      outlined consume of Data._Representation(v0[13], v1);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_26510E0D0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[5], v3);
  }

  v4 = v0[7];

  v5 = v0[9];
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v5);
  }

  v6 = v0[11];
  if (v6 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[10], v6);
  }

  v7 = v0[12];

  v8 = v0[14];

  v9 = v0[15];

  v10 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = *(v4 + 96);
  v12 = *(v4 + 104);
  v16 = *(v4 + 112);
  v13 = *(v4 + 128);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(a1, a2, a3, a4, v10, v4 + 24, v11, v12);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1)
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

  return closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:)(uint64_t a1)
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

  return closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError()
{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1)
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

  return closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
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

  return closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
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

  return closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
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

  return closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1)
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

  return closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_26510EAA8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(a1, a2, a3, a4, v10, v11, v12, v13);
}

unint64_t instantiation function for generic protocol witness table for MLS.SwiftMLSClientCoordinatorError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
  a1[2] = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
  a1[3] = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
  result = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
  a1[4] = result;
  return result;
}

uint64_t sub_26510EEEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t sub_26510EF38(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 248);

  return v3(v4);
}

__n128 sub_26510EF98(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t type metadata completion function for MLS.SwiftMLSClientCoordinator()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for MLS.KeyPackageProvider();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.keyPackage.getter(uint64_t a1)
{
  v4 = *(*v1 + 264);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.__allocating_init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = (*(v11 + 280) + **(v11 + 280));
  v18 = *(*(v11 + 280) + 4);
  v19 = swift_task_alloc();
  *(v12 + 16) = v19;
  *v19 = v12;
  v19[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 304);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 328);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 336);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.version(group:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 344);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 368);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 376);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 384);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 392);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 408);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 416);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 424);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 432);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 440);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 448);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 472);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 480);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 528);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 536);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t sub_2651111C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  outlined consume of MLS.AllMember();
  v7 = *(v0 + 80);

  v8 = *(v0 + 96);
  if (v8 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 88), v8);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(a1, a2, a3, a4, v10, v11, v12, (v4 + 40));
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(a1, v4, v5, v7, v6);
}

uint64_t sub_265111428()
{
  v1 = *(v0 + 24);

  outlined consume of MLS.OutgoingEventState.EventSpecificState(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 64);

  v3 = *(v0 + 80);
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 72), v3);
  }

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[13];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)((v0 + 2), v2, v3, v4);
}

uint64_t outlined consume of MLS.KeyPackageFetcher.FetchResult?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi0_(uint64_t result)
{
  *(result + 176) &= 0x1FuLL;
  *(result + 268) = 0x40000000;
  return result;
}

uint64_t sub_26511160C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 56), v4);
  }

  if (*(v0 + 88) >> 16 == 0xFFFFFFFFLL)
  {
    v5 = (*(v0 + 104) & 0x3000000000000000) == 0;
    *(v0 + 104);
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    outlined consume of Data._Representation(*(v0 + 72), *(v0 + 80));
    v6 = *(v0 + 128);
    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

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

  v9 = *(v0 + 192);
  if (v9 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 184), v9);
  }

  v10 = *(v0 + 200);

  v11 = *(v0 + 216);

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[26];
  v8 = v1[27];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t partial apply for implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(a1, v5, v4);
}

uint64_t sub_26511187C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1)
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

  return closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_265111A1C()
{
  v1 = type metadata accessor for MLS.Group.CommitOutput();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 48);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);
  if (v7 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 72), v7);
  }

  if (*(v0 + 104) >> 16 == 0xFFFFFFFFLL)
  {
    v8 = (*(v0 + 120) & 0x3000000000000000) == 0;
    *(v0 + 120);
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    outlined consume of Data._Representation(*(v0 + 88), *(v0 + 96));
    v9 = *(v0 + 144);
    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  }

  v10 = *(v0 + 160);
  if (v10 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 152), v10);
    v11 = *(v0 + 192);
    if (v11 >> 60 != 15)
    {
      outlined consume of Data._Representation(*(v0 + 184), v11);
    }
  }

  v12 = *(v0 + 208);
  if (v12 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 200), v12);
  }

  v13 = (v3 + 224) & ~v3;
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + 216);

  (*(v2 + 8))(v0 + v13, v1);
  v19 = *(v0 + v14 + 8);

  v20 = *(v0 + v15);

  v21 = *(v0 + v16 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v17));

  return MEMORY[0x2821FE8E8](v0, v17 + 40, v3 | 7);
}

uint64_t partial apply for closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for MLS.Group.CommitOutput() - 8);
  v7 = (*(v6 + 80) + 224) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v4 + 48);
  v12 = (v4 + v8);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v4 + v9);
  v16 = *(v4 + v10);
  v17 = *(v4 + v10 + 8);
  v18 = swift_task_alloc();
  *(v5 + 16) = v18;
  *v18 = v5;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(a1, a2, a3, a4, v11, v4 + 56, v4 + v7, v13);
}

uint64_t outlined init with take of MLS.Group.Member?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC8SwiftMLS0F0O8IdentityO10CredentialO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for MLS.Identity.Credential();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMR);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v21 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v23 = v11 | (v4 << 6);
    v14 = *(a3 + 48) + 32 * v23;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    outlined copy of MLS.AllMember();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v10 = specialized Set.contains(_:)(v16, v15, v17, v18, a4);
    result = outlined consume of MLS.AllMember();
    if ((v10 & 1) == 0)
    {
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v22++, 1))
      {
        goto LABEL_21;
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {

      return specialized _NativeSet.extractSubset(using:count:)(v21, a2, v22, a3);
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v4 = v3;
  v5 = a1;
  v40 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v39 = a2;

  if (v7 > 0xD)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v32 = v8;
    v33 = v4;
    v31 = &v31;
    MEMORY[0x28223BE20](v10);
    v34 = &v31 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v9);
    v35 = 0;
    v11 = 0;
    v12 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 56);
    v4 = (v13 + 63) >> 6;
    v38 = v5;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v19 = v16 | (v11 << 6);
      v20 = *(v5 + 48);
      v37 = v19;
      v21 = v20 + 32 * v19;
      v22 = *v21;
      v9 = *(v21 + 8);
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);
      outlined copy of MLS.AllMember();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8 = specialized Set.contains(_:)(v22, v9, v23, v24, v39);
      outlined consume of MLS.AllMember();
      v5 = v38;
      if ((v8 & 1) == 0)
      {
        *&v34[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v4)
      {
        v26 = specialized _NativeSet.extractSubset(using:count:)(v34, v32, v35, v5);

        goto LABEL_21;
      }

      v18 = *(v12 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v39;

  v26 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15SecureMessaging3MLSO9AllMemberOG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i15Messaging3MLSO9lM5O_TG5AMxSbs5Error_pRi_zRi0_zlyALIsgndzo_Tf1nc_n04_s15it137MLSO25SwiftMLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0Vy_AC9lM61OG_SSAC0hmO0Vy_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_SbASXEfU4_ShyALGTf1nnc_nTm(v29, v8, v5, v30);

  MEMORY[0x266755550](v29, -1, -1);

LABEL_21:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t outlined copy of MLS.AllMember?(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFDu)
  {
    return outlined copy of MLS.AllMember();
  }

  return result;
}

uint64_t sub_265112648()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = v4[6];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(a1, a2, a3, a4, v9, v10, v11, v12);
}

uint64_t sub_265112798()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = v4[6];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(a1, a2, a3, a4, v9, v10, v11, v12);
}

uint64_t lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

uint64_t specialized MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLS.Client.KeyPackage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v71 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v54 - v9;

  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8SwiftMLS0D0O6ClientO10KeyPackageVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = v10;
  v12 = 0;
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v64 = v4;
  v65 = (v5 + 16);
  v61 = v5 + 32;
  v62 = v5 + 8;
  v63 = v5;
  v60 = v5 + 40;
  v18 = v10;
  v55 = a1 + 64;
  v56 = a1;
  v54 = v17;
  if (!v16)
  {
    while (1)
    {
LABEL_5:
      v19 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_36;
      }

      if (v19 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v19);
      ++v12;
      if (v16)
      {
        v59 = v18;
        v12 = v19;
        goto LABEL_9;
      }
    }

LABEL_32:

    return v18;
  }

  while (1)
  {
    v59 = v18;
LABEL_9:
    v20 = __clz(__rbit64(v16)) | (v12 << 6);
    v21 = *(a1 + 48) + 32 * v20;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    v25 = *(*(a1 + 56) + 8 * v20);
    v73 = *v21;
    v74 = v22;
    v68 = v23;
    v69 = v24;
    outlined copy of MLS.AllMember();

    if (!v25)
    {
      v18 = v59;
      goto LABEL_32;
    }

    v57 = v16;
    v58 = v12;
    v67 = *(v25 + 16);
    if (v67)
    {
      break;
    }

    v28 = v11;
    v31 = v59;
LABEL_28:
    v16 = (v57 - 1) & v57;
    outlined consume of MLS.AllMember();

    v11 = v28;
    v18 = v31;
    v13 = v55;
    a1 = v56;
    v12 = v58;
    v17 = v54;
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  v26 = 0;
  v27 = (v25 + 40);
  v66 = v25;
  while (v26 < *(v25 + 16))
  {
    v32 = *(v27 - 1);
    v33 = *v27;
    outlined copy of Data._Representation(v32, *v27);
    outlined copy of Data._Representation(v32, v33);
    v34 = v72;
    MLS.Client.KeyPackage.init(fromRaw:)();
    if (v2)
    {
      outlined consume of MLS.AllMember();
      outlined consume of Data._Representation(v32, v33);

      return v59;
    }

    v70 = 0;
    (*v65)(v71, v34, v4);
    v36 = v73;
    v35 = v74;
    outlined copy of MLS.AllMember();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v11;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v35);
    v40 = v11[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_35;
    }

    v43 = v38;
    if (v11[3] >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v38)
        {
          goto LABEL_12;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v43)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v74);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_38;
      }

      v39 = v44;
      if (v43)
      {
LABEL_12:
        outlined consume of MLS.AllMember();
        v28 = v75;
        v29 = v63;
        v30 = v75[7] + *(v63 + 72) * v39;
        v4 = v64;
        (*(v63 + 40))(v30, v71, v64);
        outlined consume of Data._Representation(v32, v33);
        (*(v29 + 8))(v72, v4);
        goto LABEL_13;
      }
    }

    v28 = v75;
    v75[(v39 >> 6) + 8] |= 1 << v39;
    v46 = (v28[6] + 16 * v39);
    v47 = v74;
    *v46 = v73;
    v46[1] = v47;
    v48 = v63;
    v49 = v28[7] + *(v63 + 72) * v39;
    v4 = v64;
    (*(v63 + 32))(v49, v71, v64);
    outlined consume of Data._Representation(v32, v33);
    (*(v48 + 8))(v72, v4);
    v50 = v28[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_37;
    }

    v28[2] = v52;
LABEL_13:
    ++v26;
    v27 += 2;
    v31 = v28;
    v11 = v28;
    v25 = v66;
    v2 = v70;
    if (v67 == v26)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t MLS.EraAdvancementOperation.__allocating_init(group:context:persister:eventSender:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  MLS.EraAdvancementOperation.init(group:context:persister:eventSender:clientIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v19;
}

uint64_t closure #1 in MLS.EraAdvancementOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[10] = a3;
  v5[11] = a5;
  v5[8] = a1;
  v5[9] = a2;
  v7 = *a5;
  v5[12] = *a5;
  v8 = *(v7 + 88);
  v5[13] = v8;
  v9 = *(v8 - 8);
  v5[14] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a4;
  v5[15] = v11;
  v5[16] = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EraAdvancementOperation.errorHandlingPolicy.getter, v13, 0);
}

uint64_t closure #1 in MLS.EraAdvancementOperation.errorHandlingPolicy.getter()
{
  v40 = v0;
  v1 = *(v0 + 72);
  v2 = *(**(v0 + 88) + 168);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v37 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39[0] = v11;
    *v9 = 136315394;
    v12 = *(*v7 + 136);
    v13 = *(v6 + 112);
    v14 = (*(v13 + 16))(v37, v13);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v39);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_264F1F000, v4, v5, "EraAdvancementOperation hit error. Downgrading { identifier: %s, error: %@ }", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v19 = *(v0 + 96);

    v13 = *(v19 + 112);
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);
  v38 = *(v0 + 80);
  v26 = *(v0 + 64);
  v27 = *(v24 + 120);
  v28 = *(v24 + 96);
  *(v0 + 16) = *(v24 + 80);
  *(v0 + 24) = v22;
  *(v0 + 32) = v28;
  *(v0 + 48) = v13;
  *(v0 + 56) = v27;
  v29 = type metadata accessor for MLS.DowngradeOperation();
  v30 = *(v25 + 2);
  v31 = *(v25 + 3);
  (*(v23 + 16))(v20, &v25[*(*v25 + 136)], v22);
  v32 = &v25[*(*v25 + 160)];
  v33 = v32[1];
  v39[0] = *v32;
  v39[1] = v33;

  v34 = MLS.DowngradeOperation.__allocating_init(group:context:clientIdentifier:shouldHeal:)(v30, v31, v20, v39, 0);
  *(v26 + 24) = v29;
  *(v26 + 32) = swift_getWitnessTable();
  *v26 = v34;
  outlined init with copy of MLS.OutgoingEventState?(v38, v26 + 40, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  *(v26 + 408) = 2;
  *(v26 + 424) = 0;
  *(v26 + 432) = 0;
  *(v26 + 416) = v21;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t MLS.EraAdvancementOperation.group.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.EraAdvancementOperation.persister.getter()
{
  v1 = (v0 + *(*v0 + 144));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t MLS.EraAdvancementOperation.eventSender.getter()
{
  v1 = (v0 + *(*v0 + 152));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t MLS.EraAdvancementOperation.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 160));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t MLS.EraAdvancementOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 168);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *MLS.EraAdvancementOperation.init(group:context:persister:eventSender:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v15 = *v8;
  v17 = *a8;
  v16 = a8[1];
  v18 = &v8[*(*v8 + 168)];
  Logger.init(subsystem:category:)();
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  (*(*(*(v15 + 88) - 8) + 32))(&v8[*(*v8 + 136)], a3);
  v19 = &v8[*(*v8 + 144)];
  *v19 = a4;
  *(v19 + 1) = a5;
  v20 = &v8[*(*v8 + 152)];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &v8[*(*v8 + 160)];
  *v21 = v17;
  *(v21 + 1) = v16;
  return v8;
}

uint64_t partial apply for closure #1 in MLS.EraAdvancementOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EraAdvancementOperation.errorHandlingPolicy.getter(a1, a2, a3, a4, v4);
}

uint64_t MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  v1[4] = v0;
  v2 = *v0;
  v1[5] = *v0;
  v3 = *(v2 + 104);
  v1[6] = v3;
  v4 = *(v3 + 8);
  v1[7] = v4;
  v1[8] = *(v4 + 8);
  v5 = *(v2 + 80);
  v1[9] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[10] = AssociatedTypeWitness;
  v7 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = *(v5 - 8);
  v1[12] = v8;
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v1[19] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:), v10, 0);
}

{
  v25 = v0;
  v0[20] = *(*v0[4] + 168);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315394;
    v7 = *(*v4 + 136);
    v8 = (*(*(v3 + 112) + 16))(*(v3 + 88));
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v24);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 16), *(v4 + 24), &v24);
    _os_log_impl(&dword_264F1F000, v1, v2, "EraAdvancementOperation loading known members { identifier: %s, group: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v11 = v0[18];
  v12 = v0[10];
  v13 = v0[11];
  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v12, AssociatedConformanceWitness);
  VersatileError.init(type:)(v13, v14, v15);
  v18 = swift_task_alloc();
  v0[21] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3URIVGMd, &_sSay15SecureMessaging3URIVGMR);
  *v18 = v0;
  v18[1] = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v20 = v0[17];
  v19 = v0[18];
  v21 = v0[9];
  v22 = v0[4];
  v27 = v0[8];
  v28 = v20;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 2), &async function pointer to partial apply for implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:), v22, v19, 0, 0, v21);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 72);
  v7 = *v1;

  v8 = *(v5 + 8);
  v2[22] = v8;
  v2[23] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[19];
  if (v0)
  {
    v10 = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  }

  else
  {
    v10 = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

{
  v32 = v0;
  v1 = v0[20];
  v2 = v0[4];
  v3 = v0[2];
  v0[24] = v3;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315650;
    v10 = *(*v7 + 136);
    v11 = (*(*(v6 + 112) + 16))(*(v6 + 88));
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v31);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v7 + 16), *(v7 + 24), &v31);
    *(v8 + 22) = 2080;
    v14 = MEMORY[0x266754630](v3, &type metadata for URI);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v31);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_264F1F000, v4, v5, "EraAdvancementOperation fetching members { identifier: %s, group: %s, uris: %s }", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v17 = v0[16];
  v18 = v0[10];
  v19 = v0[11];
  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[6];
  v23 = v0[4];
  v24 = swift_task_alloc();
  v0[25] = v24;
  *(v24 + 16) = v23;
  *(v24 + 24) = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v18, AssociatedConformanceWitness);
  VersatileError.init(type:)(v19, v20, v21);
  v26 = swift_task_alloc();
  v0[26] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  *v26 = v0;
  v26[1] = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v28 = v0[15];
  v27 = v0[16];
  v29 = v0[9];
  v34 = v0[8];
  v35 = v28;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 3), &async function pointer to partial apply for implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:), v24, v27, 0, 0, v29);
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 176);
  v7 = *(*v1 + 128);
  v8 = *(*v1 + 72);
  v9 = *v1;

  v6(v7, v8);

  if (v0)
  {
    v10 = *(v2 + 152);
    v11 = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  }

  else
  {
    v12 = *(v2 + 200);
    v13 = *(v2 + 152);

    v11 = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
    v10 = v13;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v8 = v0[3];

  v9 = v0[1];

  return v9(v8);
}

{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 96) + 32);
  v2(*(v0 + 112), *(v0 + 136), *(v0 + 72));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 184);
    (*(v0 + 176))(*(v0 + 112), *(v0 + 72));
  }

  else
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 72);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 88);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 96) + 32);
  v2(*(v0 + 104), *(v0 + 120), *(v0 + 72));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 184);
    (*(v0 + 176))(*(v0 + 104), *(v0 + 72));
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 72);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 200);

  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v15 = *(v0 + 88);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:), 0, 0);
}

uint64_t implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  v1 = v0[5];
  v2 = *v1;
  v3 = (v1 + *(*v1 + 144));
  v5 = *v3;
  v4 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = v2;
  v8 = v1[2];
  v9 = v1[3];
  v10 = (v1 + *(v7 + 160));
  v11 = v10[1];
  v0[2] = *v10;
  v0[3] = v11;
  v12 = *(v4 + 72);

  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return (v16)(v8, v9, 1, v0 + 2, ObjectType, v4);
}

{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v16;
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      outlined copy of MLS.AllMember();
      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      v4 += 32;
      *(v16 + 16) = v10 + 1;
      v11 = v16 + 16 * v10;
      *(v11 + 32) = v5;
      *(v11 + 40) = v6;
      --v2;
    }

    while (v2);
    v12 = *(v0 + 56);
  }

  else
  {
    v13 = *(v0 + 56);

    v3 = MEMORY[0x277D84F90];
  }

  **(v0 + 32) = v3;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v1;

  v7 = *(v3 + 24);

  if (v1)
  {
    v8 = implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v8 = implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t partial apply for implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(a1, v1);
}

uint64_t implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:), 0, 0);
}

uint64_t implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  v1 = (v0[3] + *(*v0[3] + 152));
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 56);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v8 = v0[4];

  return v10(v8, ObjectType, v2);
}

uint64_t partial apply for implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(a1, v5, v4);
}

uint64_t MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5[129] = v4;
  v5[128] = a2;
  v5[127] = a1;
  v8 = *v4;
  v5[130] = *v4;
  v9 = *(v8 + 104);
  v5[131] = v9;
  v5[132] = *(*(v9 + 8) + 8);
  v10 = *(v8 + 80);
  v5[133] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[134] = AssociatedTypeWitness;
  v12 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v5[135] = swift_task_alloc();
  v13 = *(v10 - 8);
  v5[136] = v13;
  v14 = *(v13 + 64) + 15;
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  NewEraInput = type metadata accessor for MLS.Group.Group.CreateNewEraInput();
  v5[142] = NewEraInput;
  v16 = *(NewEraInput - 8);
  v5[143] = v16;
  v17 = *(v16 + 64) + 15;
  v5[144] = swift_task_alloc();
  v18 = type metadata accessor for MetricCollector.Event();
  v5[145] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = *a3;
  v5[149] = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static MLSActor.shared;
  v5[150] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:), v20, 0);
}

uint64_t MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v35 = v0;
  v1 = v0[130];
  v2 = v0[129];
  v0[125] = v0[148];
  v0[151] = *(*v2 + 136);
  v3 = *(v1 + 112);
  v0[152] = v3;
  v4 = *(v3 + 16);
  v5 = *(v1 + 88);
  v0[153] = v5;

  v6 = v4(v5, v3);
  v8 = v7;
  v0[154] = v6;
  v0[155] = v7;
  v0[156] = *(*v2 + 168);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0 + 125;
    v12 = v0[129];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, v34);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v12 + 16), *(v12 + 24), v34);
    _os_log_impl(&dword_264F1F000, v9, v10, "EraAdvancementOperation advancing era { identifier: %s, group: %s }", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  else
  {
    v11 = v0 + 148;
  }

  v15 = *v11;
  v16 = v0[149];
  v17 = v0[147];
  v18 = v0[146];
  v19 = v0[145];
  Date.init()();
  v20 = *(v19 + 20);
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v17 + v20, 1, 1, v21);
  outlined init with take of MetricCollector.Event(v17, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v23 = v34[0];
  v0[157] = v34[0];

  v0[125] = v23;
  specialized MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(v16);
  v24 = v0[144];
  v25 = v0[128];
  MLS.Group.Group.CreateNewEraInput.init(packages:)();
  v26 = v25[3];
  v27 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v28 = *(v27 + 168);
  v33 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  v0[158] = v30;
  *v30 = v0;
  v30[1] = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  v31 = v0[144];

  return (v33)(v0 + 107, v31, v26, v27);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1264);
  v10 = *v1;
  *(*v1 + 1272) = v0;

  if (v0)
  {
    v4 = v2[157];
    v5 = v2[155];
    v6 = v2[150];

    v7 = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v6;
  }

  else
  {
    v8 = v2[150];
    v7 = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v180 = v0;
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 880);
  v5 = *(v0 + 888);
  __swift_project_boxed_opaque_existential_1((v0 + 856), v4);
  (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 856));
  v6._countAndFlagsBits = 0x534C4D7466697753;
  v6._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v6);
  outlined init with copy of ServerBag.MLS(v0 + 816, v0 + 896);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1232);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v174 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v174);
    *(v11 + 12) = 2080;
    v13 = *(v0 + 920);
    __swift_project_boxed_opaque_existential_1((v0 + 896), v13);
    v14 = *(v13 - 8);
    v15 = *(v14 + 64) + 15;
    swift_task_alloc();
    (*(v14 + 16))();
    v16 = String.init<A>(describing:)();
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 896));
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v174);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_264F1F000, v7, v8, "EraAdvancementOperation creating event { identifier: %s, commitOutput: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 896));
  }

  v20 = *(v0 + 840);
  v21 = *(v0 + 848);
  __swift_project_boxed_opaque_existential_1((v0 + 816), v20);
  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v20, v21, &v174);
  v22 = v174;
  v171 = v175;
  *(v0 + 1280) = v175;
  v168 = v176;
  v169 = v177;
  *(v0 + 1288) = v176;
  *(v0 + 1296) = v169;
  v23 = *(v0 + 840);
  v24 = *(v0 + 848);
  __swift_project_boxed_opaque_existential_1((v0 + 816), v23);
  MLS.SwiftMLSCommitOutputProtocol.outgoingWelcome.getter(v23, v24, &v174);
  v26 = v174;
  v25 = v175;
  *(v0 + 1304) = v174;
  *(v0 + 1312) = v25;
  v28 = v176;
  v27 = v177;
  *(v0 + 1320) = v176;
  *(v0 + 1328) = v27;
  if (!v25)
  {
    v47 = *(v0 + 1248);
    v48 = *(v0 + 1240);
    v49 = *(v0 + 1032);
    v50 = *(v0 + 1000);

    outlined init with copy of ServerBag.MLS(v0 + 816, v0 + 936);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 1240);
    if (v53)
    {
      v55 = *(v0 + 1232);
      v56 = *(v0 + 1032);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v174 = v58;
      *v57 = 136315650;
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v174);

      *(v57 + 4) = v59;
      *(v57 + 12) = 2080;
      *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v56 + 16), *(v56 + 24), &v174);
      *(v57 + 22) = 2080;
      v60 = *(v0 + 960);
      __swift_project_boxed_opaque_existential_1((v0 + 936), v60);
      v61 = *(v60 - 8);
      v62 = *(v61 + 64) + 15;
      swift_task_alloc();
      (*(v61 + 16))();
      v63 = String.init<A>(describing:)();
      v65 = v64;

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 936));
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v174);

      *(v57 + 24) = v66;
      _os_log_impl(&dword_264F1F000, v51, v52, "EraAdvancementOperation missing welcome { identifier: %s, group: %s, commitOutput: %s }", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v58, -1, -1);
      MEMORY[0x266755550](v57, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 936));
    }

    v78 = *(v0 + 1104);
    v79 = *(v0 + 1080);
    v80 = *(v0 + 1072);
    v81 = *(v0 + 1064);
    v82 = *(v0 + 1056);
    v83 = *(v0 + 1048);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 64))(v80, AssociatedConformanceWitness);
    VersatileError.init(type:)(v79, v81, v82);
    v85 = *(*(v82 + 8) + 8);
    v86 = _getErrorEmbeddedNSError<A>(_:)();
    v87 = *(v0 + 1104);
    v88 = *(v0 + 1088);
    if (v86)
    {
      (*(v88 + 8))(*(v0 + 1104), *(v0 + 1064));
    }

    else
    {
      v89 = *(v0 + 1064);
      swift_allocError();
      (*(v88 + 32))(v90, v87, v89);
    }

    v91 = *(v0 + 1152);
    v92 = *(v0 + 1144);
    v93 = *(v0 + 1136);
    swift_willThrow();
    goto LABEL_27;
  }

  v166 = v22;
  v29 = *(v0 + 1272);
  v30 = *(v0 + 1224);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1064);
  v33 = *(v0 + 1048);
  v34 = *(v0 + 1040);
  *(v0 + 1008) = *(v0 + 1032);
  v35 = *(v34 + 96);
  v36 = *(v34 + 120);
  *(v0 + 768) = v32;
  *(v0 + 776) = v30;
  *(v0 + 784) = v35;
  *(v0 + 792) = v33;
  *(v0 + 800) = v31;
  *(v0 + 808) = v36;
  v37 = type metadata accessor for MLS.EraAdvancementOperation();
  WitnessTable = swift_getWitnessTable();
  MLS.GroupOperation.context(commitOutput:)((v0 + 816), v37, WitnessTable, &v174);
  v39 = v174;
  v40 = v175;
  *(v0 + 1336) = v174;
  *(v0 + 1344) = v40;
  v41 = v176;
  v42 = v177;
  *(v0 + 1352) = v176;
  *(v0 + 1360) = v42;
  v43 = v178;
  v44 = v179;
  *(v0 + 1368) = v178;
  *(v0 + 1376) = v44;
  if (v29)
  {
    v45 = *(v0 + 1240);
    (*(*(v0 + 1144) + 8))(*(v0 + 1152), *(v0 + 1136));

    outlined consume of Data._Representation(v168, v169);
    outlined consume of MLS.OutgoingMessage?(v26, v25, v28, v27);
    v46 = *(v0 + 1000);

LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 816));
    v143 = *(v0 + 1176);
    v144 = *(v0 + 1168);
    v145 = *(v0 + 1152);
    v146 = *(v0 + 1128);
    v147 = *(v0 + 1120);
    v148 = *(v0 + 1112);
    v149 = *(v0 + 1104);
    v150 = *(v0 + 1096);
    v151 = *(v0 + 1080);

    v152 = *(v0 + 8);

    return v152();
  }

  v162 = v44;
  v163 = v43;
  v164 = v40;
  v165 = v39;
  v67 = *(v0 + 1248);
  v68 = *(v0 + 1240);
  if (v42 >> 60 == 15)
  {
    v69 = *(v0 + 1032);
    v70 = *(v0 + 1000);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 1240);
    if (v73)
    {
      v75 = *(v0 + 1232);
      v160 = *(v0 + 1032);
      v76 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v174 = v167;
      *v76 = 136315394;
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v74, &v174);

      *(v76 + 4) = v77;
      *(v76 + 12) = 2080;
      *(v76 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v160 + 16), *(v160 + 24), &v174);
      _os_log_impl(&dword_264F1F000, v71, v72, "EraAdvancementOperation missing ratchet tree { identifier: %s, group: %s }", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v167, -1, -1);
      MEMORY[0x266755550](v76, -1, -1);
    }

    else
    {
    }

    v130 = *(v0 + 1112);
    v131 = *(v0 + 1080);
    v132 = *(v0 + 1072);
    v133 = *(v0 + 1064);
    v134 = *(v0 + 1056);
    v135 = *(v0 + 1048);
    v136 = swift_getAssociatedConformanceWitness();
    (*(v136 + 88))(v132, v136);
    VersatileError.init(type:)(v131, v133, v134);
    v137 = *(*(v134 + 8) + 8);
    v138 = _getErrorEmbeddedNSError<A>(_:)();
    v139 = *(v0 + 1112);
    v140 = *(v0 + 1088);
    if (v138)
    {
      (*(v140 + 8))(*(v0 + 1112), *(v0 + 1064));
    }

    else
    {
      v141 = *(v0 + 1064);
      swift_allocError();
      (*(v140 + 32))(v142, v139, v141);
    }

    v91 = *(v0 + 1152);
    v92 = *(v0 + 1144);
    v93 = *(v0 + 1136);
    swift_willThrow();
    outlined consume of Data._Representation(v163, v162);
    outlined consume of Data._Representation(v165, v164);
    outlined consume of MLS.OutgoingMessage?(v26, v25, v28, v27);
LABEL_27:

    outlined consume of Data._Representation(v168, v169);
    (*(v92 + 8))(v91, v93);
    goto LABEL_28;
  }

  v158 = *(v0 + 1248);
  v161 = *(v0 + 1232);
  v156 = *(v0 + 1208);
  v157 = *(v0 + 1224);
  v159 = *(v0 + 1192);
  v154 = *(v0 + 1216);
  v155 = *(v0 + 1032);
  swift_bridgeObjectRetain_n();
  outlined copy of Data?(v41, v42);
  v153 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  outlined copy of Data._Representation(v168, v169);
  outlined copy of MLS.OutgoingMessage?(v26, v25, v28, v27);

  v95 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SD4KeysVyAHSayAF14KeyPackageInfoVG_GTt0g5(v94);
  *(v0 + 200) = v161;
  *(v0 + 208) = v68;
  *(v0 + 216) = v161;
  *(v0 + 224) = v68;
  *(v0 + 232) = xmmword_2651B5F50;
  *(v0 + 248) = v153;
  *(v0 + 256) = v166;
  *(v0 + 264) = v171;
  *(v0 + 272) = v168;
  *(v0 + 280) = v169;
  *(v0 + 288) = v26;
  *(v0 + 296) = v25;
  *(v0 + 304) = v28;
  *(v0 + 312) = v27;
  *(v0 + 320) = v95;
  *(v0 + 328) = v165;
  *(v0 + 336) = v164;
  *(v0 + 344) = v41;
  *(v0 + 352) = v42;
  *(v0 + 360) = v163;
  *(v0 + 368) = v162;
  v96 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v96;
  v97 = *(v0 + 200);
  v98 = *(v0 + 216);
  v99 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v99;
  *(v0 + 16) = v97;
  *(v0 + 32) = v98;
  v100 = *(v0 + 296);
  v101 = *(v0 + 312);
  v102 = *(v0 + 360);
  *(v0 + 160) = *(v0 + 344);
  *(v0 + 176) = v102;
  v103 = *(v0 + 328);
  *(v0 + 128) = v101;
  *(v0 + 144) = v103;
  *(v0 + 112) = v100;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(v0 + 16);
  v172 = *(v154 + 8);
  outlined copy of Data?(v41, v42);

  outlined copy of Data._Representation(v165, v164);
  outlined copy of Data._Representation(v163, v162);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 376, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMR);
  swift_bridgeObjectRetain_n();
  v104 = v172(v157, v154);
  *(v0 + 624) = v161;
  *(v0 + 632) = v68;
  *(v0 + 640) = v159;
  *(v0 + 648) = 0;
  *(v0 + 656) = 9;
  *(v0 + 664) = v161;
  *(v0 + 672) = v68;
  *(v0 + 680) = v104;
  *(v0 + 688) = v105;
  v106 = *(v0 + 672);
  *(v0 + 584) = *(v0 + 656);
  *(v0 + 600) = v106;
  *(v0 + 616) = *(v0 + 688);
  v107 = *(v0 + 640);
  *(v0 + 552) = *(v0 + 624);
  *(v0 + 568) = v107;

  outlined init with copy of MLS.OutgoingEventState(v0 + 624, v0 + 696);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = *(v0 + 1240);
    v111 = *(v0 + 1232);
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v174 = v113;
    *v112 = 136315138;
    *(v112 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v110, &v174);
    _os_log_impl(&dword_264F1F000, v108, v109, "EraAdvancementOperation returning operation result { identifier: %s }", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    MEMORY[0x266755550](v113, -1, -1);
    MEMORY[0x266755550](v112, -1, -1);
  }

  v170 = *(v0 + 1232);
  v173 = *(v0 + 1240);
  v114 = *(v0 + 1128);
  v115 = *(v0 + 1080);
  v116 = *(v0 + 1072);
  v117 = *(v0 + 1064);
  v118 = *(v0 + 1056);
  v119 = *(v0 + 1048);
  v120 = *(v0 + 1032);
  v121 = *(v0 + 1024);
  v122 = swift_task_alloc();
  *(v0 + 1384) = v122;
  *(v122 + 16) = v121;
  v123 = swift_getAssociatedConformanceWitness();
  (*(v123 + 56))(v116, v123);
  VersatileError.init(type:)(v115, v117, v118);
  v124 = swift_allocObject();
  *(v0 + 1392) = v124;
  v124[2] = v120;
  v124[3] = v170;
  v124[4] = v173;

  v125 = swift_task_alloc();
  *(v0 + 1400) = v125;
  *v125 = v0;
  v125[1] = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  v126 = *(v0 + 1128);
  v127 = *(v0 + 1120);
  v128 = *(v0 + 1064);
  v182 = *(v0 + 1056);
  v183 = v127;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 976, &async function pointer to partial apply for implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:), v122, v126, partial apply for closure #1 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:), v124, v128);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1400);
  v14 = *v1;

  if (v0)
  {
    v4 = v2[174];
    v5 = v2[150];
    v6 = v2[141];
    v7 = v2[136];
    v8 = v2[133];
    outlined destroy of MLS.OutgoingEventState((v2 + 78));
    outlined destroy of NSObject?((v2 + 25), &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMR);

    v9 = *(v7 + 8);
    v2[176] = v9;
    v2[177] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);
    v10 = v2[125];

    v11 = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v12 = v2[174];
    v5 = v2[150];
    (*(v2[136] + 8))(v2[141], v2[133]);

    v11 = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v11, v5, 0);
}

{
  v43 = *(v0 + 1384);
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1352);
  v5 = *(v0 + 1336);
  v33 = *(v0 + 1320);
  v34 = *(v0 + 1328);
  v30 = *(v0 + 1344);
  v31 = *(v0 + 1312);
  v29 = *(v0 + 1304);
  v35 = *(v0 + 1288);
  v36 = *(v0 + 1296);
  v32 = *(v0 + 1280);
  v39 = *(v0 + 1176);
  v40 = *(v0 + 1168);
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1144);
  v37 = *(v0 + 1136);
  v41 = *(v0 + 1128);
  v42 = *(v0 + 1120);
  v44 = *(v0 + 1112);
  v45 = *(v0 + 1104);
  v46 = *(v0 + 1096);
  v47 = *(v0 + 1080);
  v38 = *(v0 + 1024);
  v8 = *(v0 + 1016);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v5, v30);
  outlined consume of MLS.OutgoingMessage?(v29, v31, v33, v34);

  outlined consume of Data._Representation(v35, v36);
  outlined consume of Data?(v4, v3);
  (*(v7 + 8))(v6, v37);
  v9 = *(v0 + 976);
  v10 = *(v0 + 984);
  v11 = *(v0 + 992);
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
  *(v8 + 184) = *(v0 + 552);
  v21 = *(v0 + 568);
  v22 = *(v0 + 584);
  v23 = *(v0 + 600);
  *(v8 + 248) = *(v0 + 616);
  *(v8 + 232) = v23;
  *(v8 + 216) = v22;
  *(v8 + 200) = v21;
  *(v8 + 256) = 1;
  *(v8 + 264) = v9;
  *(v8 + 272) = v10;
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v0 + 624);
  v24 = *(v0 + 640);
  v25 = *(v0 + 656);
  v26 = *(v0 + 672);
  *(v8 + 352) = *(v0 + 688);
  *(v8 + 320) = v25;
  *(v8 + 336) = v26;
  *(v8 + 304) = v24;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v38, v8 + 368);
  *(v8 + 408) = 0;
  *(v8 + 416) = *(v0 + 1000);
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 816));

  v27 = *(v0 + 8);

  return v27();
}

{
  (*(v0[143] + 8))(v0[144], v0[142]);
  v1 = v0[159];
  v2 = v0[147];
  v3 = v0[146];
  v4 = v0[144];
  v5 = v0[141];
  v6 = v0[140];
  v7 = v0[139];
  v8 = v0[138];
  v9 = v0[137];
  v10 = v0[135];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[132];
  v2 = *(v0[136] + 32);
  v2(v0[137], v0[140], v0[133]);
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v45 = v0[176];
    v47 = v0[177];
    v4 = v0[172];
    v5 = v0[171];
    v6 = v0[170];
    v7 = v0[169];
    v8 = v0[168];
    v9 = v0[167];
    v10 = v0[165];
    v11 = v0[164];
    v12 = v0[163];
    v35 = v0[166];
    v37 = v0[161];
    v33 = v0[160];
    v43 = v0[137];
    v39 = v0[162];
    v41 = v0[133];
    outlined destroy of MLS.OutgoingEventState((v0 + 78));
    outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMR);
    outlined consume of Data._Representation(v5, v4);
    outlined consume of Data?(v7, v6);
    outlined consume of Data._Representation(v9, v8);
    outlined consume of MLS.OutgoingMessage?(v12, v11, v10, v35);

    outlined consume of Data._Representation(v37, v39);
    outlined consume of Data?(v7, v6);
    v45(v43, v41);
  }

  else
  {
    v13 = v0[172];
    v14 = v0[171];
    v15 = v0[170];
    v16 = v0[169];
    v42 = v0[165];
    v44 = v0[166];
    v36 = v0[168];
    v38 = v0[164];
    v32 = v0[167];
    v34 = v0[163];
    v46 = v0[161];
    v48 = v0[162];
    v40 = v0[160];
    v17 = v0[137];
    v18 = v0[133];
    swift_allocError();
    v2(v19, v17, v18);
    outlined destroy of MLS.OutgoingEventState((v0 + 78));
    outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMR);
    outlined consume of Data._Representation(v14, v13);
    outlined consume of Data?(v16, v15);
    outlined consume of Data._Representation(v32, v36);
    outlined consume of MLS.OutgoingMessage?(v34, v38, v42, v44);

    outlined consume of Data._Representation(v46, v48);
    outlined consume of Data?(v16, v15);
  }

  v20 = v0[173];
  (*(v0[143] + 8))(v0[144], v0[142]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 102);
  v21 = v0[147];
  v22 = v0[146];
  v23 = v0[144];
  v24 = v0[141];
  v25 = v0[140];
  v26 = v0[139];
  v27 = v0[138];
  v28 = v0[137];
  v29 = v0[135];

  v30 = v0[1];

  return v30();
}

uint64_t implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(v0 + 48);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 16, v3, v2);
}

{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v3 = implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 24);
  v2 = __CFADD__(v1, 1);
  v3 = (v1 + 1);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 40);
    *v4 = v3;
    *(v4 + 8) = v3;
    *(v4 + 16) = 1;
    return (*(v0 + 8))();
  }

  return result;
}

void closure #1 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *(*a3 + 168);

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
    _os_log_impl(&dword_264F1F000, oslog, v10, "EraAdvancementOperation failed to obtain era { identifier: %s, error: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }
}

char *MLS.EraAdvancementOperation.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 136)]);
  v3 = *&v0[*(*v0 + 144)];
  swift_unknownObjectRelease();
  v4 = *&v0[*(*v0 + 152)];
  swift_unknownObjectRelease();
  v5 = *&v0[*(*v0 + 160) + 8];

  v6 = *(*v0 + 168);
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t MLS.EraAdvancementOperation.__deallocating_deinit()
{
  MLS.EraAdvancementOperation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.EraAdvancementOperation<A, B, C>(uint64_t a1)
{
  v4 = *(**v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.EraAdvancementOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 240);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.EraAdvancementOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 168);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t partial apply for implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4);
}

uint64_t sub_265117898()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t instantiation function for generic protocol witness table for MLS.EraAdvancementOperation<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.EraAdvancementOperation(uint64_t a1)
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

uint64_t dispatch thunk of MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t MLS.MLSError.mlsClientFailureReason.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.MLSError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D6ACF0])
  {
    (*(v3 + 8))(v6, v2);
    return static MLS.MlsClientFailureReason.messageFromNonMember.getter();
  }

  if (v7 == *MEMORY[0x277D6ACD0])
  {
    static MLS.MlsClientFailureReason.invalidCommit.getter();
    return (*(v3 + 8))(v6, v2);
  }

  if (v7 == *MEMORY[0x277D6AE00])
  {
    (*(v3 + 8))(v6, v2);
  }

  else if (v7 != *MEMORY[0x277D6ACA8])
  {
    if (v7 == *MEMORY[0x277D6ADC8])
    {
      return static MLS.MlsClientFailureReason.messageFromNonMember.getter();
    }

    if (v7 == *MEMORY[0x277D6AD18])
    {
      return static MLS.MlsClientFailureReason.invalidCredential.getter();
    }

    if (v7 != *MEMORY[0x277D6ADB8])
    {
      static MLS.MlsClientFailureReason.unset.getter();
      return (*(v3 + 8))(v6, v2);
    }
  }

  return static MLS.MlsClientFailureReason.failureToDecrypt.getter();
}

uint64_t MLS.MLSError.healingMethod.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.MLSError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D6ACC8])
  {
    goto LABEL_2;
  }

  if (v7 == *MEMORY[0x277D6AD48] || v7 == *MEMORY[0x277D6AD50])
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  if (v7 == *MEMORY[0x277D6AD70] || v7 == *MEMORY[0x277D6AD20] || v7 == *MEMORY[0x277D6AD08] || v7 == *MEMORY[0x277D6ACF0] || v7 == *MEMORY[0x277D6ACD0] || v7 == *MEMORY[0x277D6AD68] || v7 == *MEMORY[0x277D6AE98])
  {
LABEL_2:
    (*(v3 + 8))(v6, v2);
    return 1;
  }

  if (v7 == *MEMORY[0x277D6AD60])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x277D6AE48])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277D6AD58])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x277D6AE70])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277D6AE00])
  {
    goto LABEL_2;
  }

  v9 = v7;
  if (v7 == *MEMORY[0x277D6AD00] || v7 == *MEMORY[0x277D6ADD0])
  {
    goto LABEL_2;
  }

  if (v7 == *MEMORY[0x277D6AD28])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277D6AE68])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x277D6AE18])
  {
    (*(v3 + 96))(v6, v2);
    if ((v6[16] & 1) != 0 || *(v6 + 1) >= *v6)
    {
      return 1;
    }

    return 3;
  }

  if (v7 == *MEMORY[0x277D6ACE0])
  {
    (*(v3 + 96))(v6, v2);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O9LeafIndexVSg9committer_AF8proposerSbSg12shouldRejointMd, &_s8SwiftMLS0B0O9LeafIndexVSg9committer_AF8proposerSbSg12shouldRejointMR) + 48);
    v11 = &_s8SwiftMLS0B0O9LeafIndexVSgMd;
    v12 = &_s8SwiftMLS0B0O9LeafIndexVSgMR;
LABEL_34:
    outlined destroy of NSObject?(&v6[v10], v11, v12);
    outlined destroy of NSObject?(v6, v11, v12);
    return 0;
  }

  if (v7 == *MEMORY[0x277D6AD10])
  {
    (*(v3 + 96))(v6, v2);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR) + 48);
    v11 = &_s8SwiftMLS0B0O5GroupO6MemberVSgMd;
    v12 = &_s8SwiftMLS0B0O5GroupO6MemberVSgMR;
    goto LABEL_34;
  }

  if (v7 == *MEMORY[0x277D6AEA0])
  {
    (*(v3 + 96))(v6, v2);
    outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
    return 0;
  }

  if (v7 == *MEMORY[0x277D6AEA8])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x277D6ADB0])
  {
    return 2;
  }

  result = 1;
  if (v9 == *MEMORY[0x277D6ADE0] || v9 == *MEMORY[0x277D6ACA8] || v9 == *MEMORY[0x277D6ACF8] || v9 == *MEMORY[0x277D6AE08] || v9 == *MEMORY[0x277D6ADE8] || v9 == *MEMORY[0x277D6ADF8] || v9 == *MEMORY[0x277D6AE10] || v9 == *MEMORY[0x277D6ADC8] || v9 == *MEMORY[0x277D6AE88] || v9 == *MEMORY[0x277D6AE80] || v9 == *MEMORY[0x277D6AE60] || v9 == *MEMORY[0x277D6AD40])
  {
    return result;
  }

  if (v9 == *MEMORY[0x277D6ADF0])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x277D6ADD8])
  {
    return result;
  }

  if (v9 == *MEMORY[0x277D6ACE8])
  {
    return 2;
  }

  if (v9 != *MEMORY[0x277D6AD18] && v9 != *MEMORY[0x277D6AD78] && v9 != *MEMORY[0x277D6AE38])
  {
    if (v9 == *MEMORY[0x277D6ADA8])
    {
      return 4;
    }

    else if (v9 != *MEMORY[0x277D6AD80] && v9 != *MEMORY[0x277D6ADB8] && v9 != *MEMORY[0x277D6ADA0] && v9 != *MEMORY[0x277D6ACD8] && v9 != *MEMORY[0x277D6AD98] && v9 != *MEMORY[0x277D6AD88] && v9 != *MEMORY[0x277D6ACB0] && v9 != *MEMORY[0x277D6ACB8] && v9 != *MEMORY[0x277D6ACC0])
    {
      if (v9 == *MEMORY[0x277D6AE30])
      {
        return 5;
      }

      else if (v9 != *MEMORY[0x277D6AE90])
      {
        result = 0;
        if (v9 != *MEMORY[0x277D6AE78] && v9 != *MEMORY[0x277D6AE50])
        {
          if (v9 == *MEMORY[0x277D6AD38])
          {
            return 1;
          }

          result = 2;
          if (v9 != *MEMORY[0x277D6ADC0] && v9 != *MEMORY[0x277D6AD30])
          {
            result = 0;
            if (v9 != *MEMORY[0x277D6ACA0] && v9 != *MEMORY[0x277D6AE40] && v9 != *MEMORY[0x277D6AE20])
            {
              if (v9 == *MEMORY[0x277D6AE58])
              {
                return 1;
              }

              result = 0;
              if (v9 != *MEMORY[0x277D6AE28] && v9 != *MEMORY[0x277D6AD90])
              {
                goto LABEL_2;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::Int HealingMethod.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type HealingMethod and conformance HealingMethod()
{
  result = lazy protocol witness table cache variable for type HealingMethod and conformance HealingMethod;
  if (!lazy protocol witness table cache variable for type HealingMethod and conformance HealingMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealingMethod and conformance HealingMethod);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_SSs5NeverOTg504_s15d121Messaging3MLSO30EncryptedRCSCredentialProviderC4find17signingIdentities2inShy05SwiftC0ABO8IdentityO07SigningL0VGAO_ShyAC9gH14OGtKFSSAQXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v30 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v30;
  v4 = -1 << *(v3 + 32);
  v29 = v3 + 56;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v25 = v3 + 64;
  v26 = v1;
  v27 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v28 = *(v3 + 36);
    v10 = *(v3 + 48) + 32 * v6;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    outlined copy of MLS.AllMember();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    result = swift_task_isCurrentExecutor();
    if ((result & 1) == 0)
    {
      result = swift_task_reportUnexpectedExecutor();
    }

    v16 = *(v30 + 16);
    v15 = *(v30 + 24);
    if (v16 >= v15 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    }

    *(v30 + 16) = v16 + 1;
    v17 = v30 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v11;
    v3 = v27;
    v8 = 1 << *(v27 + 32);
    if (v6 >= v8)
    {
      goto LABEL_26;
    }

    v18 = *(v29 + 8 * v9);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_27;
    }

    if (v28 != *(v27 + 36))
    {
      goto LABEL_28;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (v25 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v6, v28, 0);
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v6, v28, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t MLS.EncryptedRCSMemberCredentialError.ErrorType.init(rawValue:)(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance MLS.EncryptedRCSMemberCredentialError.ErrorType@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EncryptedRCSMemberCredentialError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t MLS.EncryptedRCSMemberCredentialError.underlyingErrorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCSMemberCredentialError.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO33EncryptedRCSMemberCredentialErrorV10CodingKeys33_46B7670155C48EB6C84CF9E06BC36E7BLLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO33EncryptedRCSMemberCredentialErrorV10CodingKeys33_46B7670155C48EB6C84CF9E06BC36E7BLLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.EncryptedRCSMemberCredentialError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EncryptedRCSMemberCredentialError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLS.EncryptedRCSMemberCredentialError@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized MLS.EncryptedRCSMemberCredentialError.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t MLS.EncryptedRCSCredentialProvider.members(credentials:)(uint64_t a1)
{
  v2 = type metadata accessor for MLS.Identity.Credential();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v70 = v9 & *(a1 + 56);
  v10 = (v8 + 63) >> 6;
  v74 = v3 + 8;
  v75 = v3 + 16;

  v11 = 0;
  v72 = MEMORY[0x277D84FA0];
  v69 = MEMORY[0x277D84FA0];
  while (2)
  {
    v12 = v70;
    do
    {
      if (!v12)
      {
        while (1)
        {
          v15 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v15 >= v10)
          {

            return v69;
          }

          v12 = *(v7 + 8 * v15);
          ++v11;
          if (v12)
          {
            v11 = v15;
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_6:
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v3 + 16))(v6, *(a1 + 48) + *(v3 + 72) * (v13 | (v11 << 6)), v2);
      v14 = MLS.Identity.Credential.telURI.getter();
      (*(v3 + 8))(v6, v2);
    }

    while (!v14);
    v70 = v12;
    v60 = v7;
    v61 = v6;
    v62 = v3;
    v63 = v2;
    v64 = a1;
    v68 = *(v14 + 16);
    if (!v68)
    {
      v17 = v72;
      v18 = v73;
      v19 = v69;
LABEL_58:
      v73 = v18;

      v72 = v17;
      v69 = v19;
      a1 = v64;
      v2 = v63;
      v3 = v62;
      v6 = v61;
      v7 = v60;
      continue;
    }

    break;
  }

  v16 = 0;
  v67 = v14 + 32;
  v17 = v69;
  v18 = v73;
  v65 = v10;
  v66 = v14;
  while (2)
  {
    v19 = v17;
    v77 = v17;
    v78 = v17 + 56;
LABEL_15:
    if (v16 >= *(v14 + 16))
    {
      goto LABEL_63;
    }

    v20 = (v67 + 16 * v16);
    v21 = *v20;
    v22 = v20[1];

    URI.init(prefixedURI:)(v21, v22, v80);
    if (!v18)
    {
      v73 = 0;
      v71 = v16 + 1;
      v23 = v80[0];
      v24 = v80[1];
      v25 = *(v19 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266754DE0](1);
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      Hasher._combine(_:)(0);
      v26 = Hasher._finalize()();
      v76 = ~(-1 << *(v19 + 32));
      v27 = v26 & v76;
      v28 = *(v78 + (((v26 & v76) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v76);
      v79 = v23;
      if (v28)
      {
        do
        {
          v29 = *(v19 + 48) + 32 * v27;
          v30 = *(v29 + 16);
          v31 = *(v29 + 24);
          if (v31 < 0)
          {
            if (*v29 == v23 && *(v29 + 8) == v24)
            {

              outlined copy of MLS.AllMember();
              outlined consume of MLS.AllMember();
              outlined consume of MLS.AllMember();
              if (v31)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v33 = *v29;
              v34 = *(v29 + 8);
              v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

              outlined copy of MLS.AllMember();
              outlined consume of MLS.AllMember();
              outlined consume of MLS.AllMember();
              if (v35 & 1) != 0 && (v31)
              {
LABEL_30:

                v16 = v71;
                v18 = v73;
                v10 = v65;
                v14 = v66;
                v19 = v77;
                if (v71 == v68)
                {
                  v17 = v72;
                  goto LABEL_58;
                }

                goto LABEL_15;
              }
            }
          }

          else
          {

            outlined copy of MLS.AllMember();
            outlined consume of MLS.AllMember();
            outlined consume of MLS.AllMember();
          }

          v19 = v77;
          v27 = (v27 + 1) & v76;
          v23 = v79;
        }

        while (((*(v78 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
      }

      v36 = v72;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v36;
      v38 = *(v36 + 16);
      if (*(v36 + 24) <= v38)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeSet.resize(capacity:)(v38 + 1);
        }

        else
        {
          specialized _NativeSet.copyAndResize(capacity:)(v38 + 1);
        }

        v17 = v81;
        v39 = *(v81 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x266754DE0](1);
        String.hash(into:)();
        MEMORY[0x266754DE0](0);
        Hasher._combine(_:)(0);
        v40 = Hasher._finalize()();
        v41 = v17 + 56;
        v42 = -1 << *(v17 + 32);
        v27 = v40 & ~v42;
        if ((*(v17 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v77 = v17 + 56;
          v78 = ~v42;
          do
          {
            v47 = *(v17 + 48) + 32 * v27;
            v48 = *(v47 + 16);
            v49 = *(v47 + 24);
            if (v49 < 0)
            {
              if (*v47 == v79 && *(v47 + 8) == v24)
              {
                v53 = *(v47 + 16);
                v54 = *(v47 + 24);
                outlined copy of MLS.AllMember();

                outlined consume of MLS.AllMember();
                outlined consume of MLS.AllMember();
                v41 = v77;
                if (v49)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v51 = *v47;
                v52 = *(v47 + 8);
                LODWORD(v76) = _stringCompareWithSmolCheck(_:_:expecting:)();
                outlined copy of MLS.AllMember();

                outlined consume of MLS.AllMember();
                outlined consume of MLS.AllMember();
                v41 = v77;
                if (v76 & 1) != 0 && (v49)
                {
                  goto LABEL_65;
                }
              }
            }

            else
            {
              v43 = *v47;
              v44 = *(v47 + 8);
              v45 = *(v47 + 16);
              v46 = *(v47 + 24);
              outlined copy of MLS.AllMember();

              outlined consume of MLS.AllMember();
              outlined consume of MLS.AllMember();
            }

            v27 = (v27 + 1) & v78;
          }

          while (((*(v41 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
          v23 = v79;
        }
      }

      else if (isUniquelyReferenced_nonNull_native)
      {
        v17 = v72;
      }

      else
      {
        specialized _NativeSet.copy()();
        v17 = v81;
      }

      *(v17 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v27;
      v55 = *(v17 + 48) + 32 * v27;
      *v55 = v23;
      *(v55 + 8) = v24;
      *(v55 + 16) = 0;
      *(v55 + 24) = -127;
      v56 = *(v17 + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v57)
      {
        *(v17 + 16) = v58;
        v72 = v17;
        v19 = v17;
        v16 = v71;
        v18 = v73;
        v10 = v65;
        v14 = v66;
        if (v71 != v68)
        {
          continue;
        }

        goto LABEL_58;
      }

      goto LABEL_64;
    }

    break;
  }

  return v69;
}

uint64_t MLS.EncryptedRCSCredentialProvider.find(members:in:)(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v60 = type metadata accessor for MLS.Identity.Credential();
  v3 = *(v60 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for MLS.Identity.SigningIdentity();
  v6 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x277D84FA0];
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v57 = v7;
  v54 = v7 + 8;
  v55 = v7 + 16;
  v53 = (v3 + 8);

  v15 = 0;
  v51 = a2;
  while (v12)
  {
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v56;
    v19 = v57;
    v20 = v58;
    (*(v57 + 16))(v56, *(a2 + 48) + *(v57 + 72) * (v17 | (v15 << 6)), v58);
    v21 = v59;
    MLS.Identity.SigningIdentity.credential.getter();
    (*(v19 + 8))(v18, v20);
    v22 = MLS.Identity.Credential.telURI.getter();
    result = (*v53)(v21, v60);
    if (v22)
    {
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = (v22 + 40);
        do
        {
          v26 = *(v24 - 1);
          v25 = *v24;

          specialized Set._Variant.insert(_:)(&v61, v26, v25);

          v24 += 2;
          --v23;
        }

        while (v23);
      }

      a2 = v51;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  v62 = MEMORY[0x277D84FA0];
  v27 = (v52 + 56);
  v28 = 1 << *(v52 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(v52 + 56);
  v31 = (v28 + 63) >> 6;
  v32 = v63;
  v33 = v63 + 56;

  v34 = 0;
  v58 = v31;
  v59 = v27;
  while (v30)
  {
    if (!*(v32 + 16))
    {
      goto LABEL_36;
    }

LABEL_21:
    v36 = *(v52 + 48) + ((v34 << 11) | (32 * __clz(__rbit64(v30))));
    v37 = *v36;
    v38 = *(v36 + 8);
    v39 = *(v36 + 16);
    v40 = *(v36 + 24);
    v41 = *(v32 + 40);
    Hasher.init(_seed:)();
    outlined copy of MLS.AllMember();
    v60 = v39;
    outlined copy of MLS.AllMember();
    String.hash(into:)();
    v42 = Hasher._finalize()();
    v43 = -1 << *(v32 + 32);
    v44 = v42 & ~v43;
    if (((*(v33 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
    {
LABEL_35:
      outlined consume of MLS.AllMember();
      outlined consume of MLS.AllMember();
LABEL_36:

      lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
      swift_allocError();
      *v49 = 2;
      *(v49 + 8) = 0;
      *(v49 + 16) = 0;
      swift_willThrow();
    }

    v30 &= v30 - 1;
    v45 = ~v43;
    while (1)
    {
      v46 = (*(v32 + 48) + 16 * v44);
      v47 = *v46 == v37 && v38 == v46[1];
      if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v44 = (v44 + 1) & v45;
      if (((*(v33 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v35 = v60;
    outlined consume of MLS.AllMember();
    specialized Set._Variant.insert(_:)(&v61, v37, v38, v35, v40);
    result = outlined consume of MLS.AllMember();
    v31 = v58;
    v27 = v59;
  }

  while (1)
  {
    v48 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v48 >= v31)
    {

      return v62;
    }

    v30 = *&v27[8 * v48];
    ++v34;
    if (v30)
    {
      v34 = v48;
      if (*(v32 + 16))
      {
        goto LABEL_21;
      }

      goto LABEL_36;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t MLS.EncryptedRCSCredentialProvider.find(signingIdentities:in:)(uint64_t a1, uint64_t a2)
{
  v75 = type metadata accessor for MLS.Identity.Credential();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLS.Identity.SigningIdentity();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v60 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  MEMORY[0x28223BE20](v15);
  v72 = &v60 - v18;
  v19 = a2;
  v21 = v20;
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_SSs5NeverOTg504_s15d121Messaging3MLSO30EncryptedRCSCredentialProviderC4find17signingIdentities2inShy05SwiftC0ABO8IdentityO07SigningL0VGAO_ShyAC9gH14OGtKFSSAQXEfU_Tf1cn_n(v19);
  v61 = v2;
  v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v22);

  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = 1 << *(a1 + 32);
  v82 = MEMORY[0x277D84FA0];
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v81 = v23;
  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v70 = (v5 + 8);
  v71 = v9 + 32;
  v79 = v9 + 16;
  v80 = v23 + 56;
  v73 = v9;
  v68 = (v9 + 8);

  v31 = 0;
  v69 = v29;
  v64 = a1;
  v67 = v21;
  v78 = v17;
  v66 = a1 + 56;
  if (!v28)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = v72;
      v34 = v73;
      v36 = *(a1 + 48) + *(v73 + 72) * (v33 | (v31 << 6));
      v77 = *(v73 + 16);
      v77(v72, v36, v21);
      (*(v34 + 32))(v17, v35, v21);
      v37 = v74;
      MLS.Identity.SigningIdentity.credential.getter();
      v38 = v21;
      v39 = MLS.Identity.Credential.telURI.getter();
      result = (*v70)(v37, v75);
      if (v39)
      {
        break;
      }

      result = (*v68)(v17, v38);
      v29 = v69;
      v21 = v38;
      if (!v28)
      {
        goto LABEL_7;
      }
    }

    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = 0;
      v76 = v39 + 32;
      v65 = v40;
      while (v41 < *(v39 + 16))
      {
        if (*(v23 + 16))
        {
          v42 = (v76 + 16 * v41);
          v44 = *v42;
          v43 = v42[1];
          v45 = *(v23 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v46 = Hasher._finalize()();
          v47 = -1 << *(v23 + 32);
          v48 = v46 & ~v47;
          if ((*(v80 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
          {
            v49 = ~v47;
            while (1)
            {
              v50 = (*(v23 + 48) + 16 * v48);
              v51 = *v50 == v44 && v50[1] == v43;
              if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v48 = (v48 + 1) & v49;
              if (((*(v80 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            v52 = v63;
            v53 = v67;
            v77(v63, v78, v67);
            v54 = v62;
            specialized Set._Variant.insert(_:)(v62, v52);
            v55 = *v68;
            (*v68)(v54, v53);
            v56 = v44;
            v17 = v78;
            specialized Set._Variant.remove(_:)(v56, v43);

            result = v55(v17, v53);
            v21 = v53;
            a1 = v64;
            v25 = v66;
            goto LABEL_29;
          }

LABEL_14:

          v38 = v67;
          v17 = v78;
          v25 = v66;
          v40 = v65;
        }

        if (++v41 == v40)
        {
          goto LABEL_28;
        }
      }

LABEL_35:
      __break(1u);
      return result;
    }

LABEL_28:

    v21 = v38;
    result = (*v68)(v17, v38);
    a1 = v64;
LABEL_29:
    v29 = v69;
  }

  while (v28);
  while (1)
  {
LABEL_7:
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v32 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      goto LABEL_11;
    }
  }

  v57 = *(v81 + 16);

  v58 = v82;
  if (v57)
  {

    lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
    swift_allocError();
    *v59 = 2;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0;
    swift_willThrow();
  }

  return v58;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, char a5)
{
  v38 = *v5;
  v9 = *(*v5 + 40);
  Hasher.init(_seed:)();
  if ((a5 & 0x80) == 0)
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v10 = 0;
LABEL_6:
    MEMORY[0x266754DE0](v10);
    goto LABEL_7;
  }

  MEMORY[0x266754DE0](1);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if ((a5 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v10 = a4;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
LABEL_7:
  v11 = Hasher._finalize()();
  v12 = -1 << *(v38 + 32);
  v13 = v11 & ~v12;
  if (((*(v38 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_32:
    v27 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v34;
    outlined copy of MLS.AllMember();
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, a5, v13, isUniquelyReferenced_nonNull_native);
    *v34 = v40;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5;
    return 1;
  }

  v37 = ~v12;
  v36 = a5;
  while (1)
  {
    v14 = *(v38 + 48) + 32 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    if ((v18 & 0x80000000) == 0)
    {
      break;
    }

    if ((a5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    if (v15 == a2 && v16 == a3)
    {
      outlined copy of MLS.AllMember();
      outlined copy of MLS.AllMember();
      outlined consume of MLS.AllMember();
      outlined consume of MLS.AllMember();
      if (v18)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v24 = *v14;
      v25 = *(v14 + 8);
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of MLS.AllMember();
      outlined copy of MLS.AllMember();
      outlined consume of MLS.AllMember();
      a5 = v36;
      outlined consume of MLS.AllMember();
      if ((v26 & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v18)
      {
LABEL_26:
        if (a5)
        {
          goto LABEL_34;
        }

        goto LABEL_11;
      }
    }

    if ((a5 & 1) == 0 && v17 == a4)
    {
      goto LABEL_34;
    }

LABEL_11:
    v13 = (v13 + 1) & v37;
    if (((*(v38 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (a5 < 0)
  {
LABEL_10:
    outlined copy of MLS.AllMember();
    outlined copy of MLS.AllMember();
    outlined consume of MLS.AllMember();
    outlined consume of MLS.AllMember();
    goto LABEL_11;
  }

  if (v15 != a2 || v16 != a3)
  {
    v20 = *v14;
    v21 = *(v14 + 8);
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of MLS.AllMember();
    outlined copy of MLS.AllMember();
    outlined consume of MLS.AllMember();
    a5 = v36;
    outlined consume of MLS.AllMember();
    if (v22)
    {
      goto LABEL_34;
    }

    goto LABEL_11;
  }

  v30 = *(v14 + 8);

  outlined consume of MLS.AllMember();
LABEL_34:
  outlined consume of MLS.AllMember();
  v31 = *(v38 + 48) + 32 * v13;
  v32 = *(v31 + 8);
  v33 = *(v31 + 16);
  *a1 = *v31;
  *(a1 + 8) = v32;
  *(a1 + 16) = v33;
  *(a1 + 24) = *(v31 + 24);
  outlined copy of MLS.AllMember();
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MLS.Identity.Credential();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for MLS.Identity.SigningIdentity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 48);
    while (1)
    {
      v14 = (v13 + 16 * v11);
      v15 = *v14 == a2 && v14[1] == a3;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = (*(v7 + 48) + 16 * v11);
    v20 = v19[1];
    *a1 = *v19;
    a1[1] = v20;

    return 0;
  }

  else
  {
LABEL_9:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
    while (1)
    {
      if (!v11)
      {
        v17 = v7;
        while (1)
        {
          v7 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_38;
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

        v32 = 1 << *(v3 + 32);
        if (v32 >= 64)
        {
          bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v32;
        }

        v2 = v33;
        *(v3 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v35 = *(v19 + 16);
      v22 = *(v19 + 24);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v22 < 0)
      {
        MEMORY[0x266754DE0](1);
        String.hash(into:)();
        MEMORY[0x266754DE0](0);
        if (v22)
        {
          Hasher._combine(_:)(0);
          goto LABEL_23;
        }

        Hasher._combine(_:)(1u);
        v24 = v35;
      }

      else
      {
        MEMORY[0x266754DE0](0);
        String.hash(into:)();
        v24 = 0;
      }

      MEMORY[0x266754DE0](v24);
LABEL_23:
      result = Hasher._finalize()();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      v3 = v34;
      *(v15 + 16) = v35;
      *(v15 + 24) = v22;
      ++*(v6 + 16);
    }
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for MLS.Identity.Credential();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMR);
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
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88]);
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
  v41 = type metadata accessor for MLS.Identity.SigningIdentity();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMR);
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
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60]);
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
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR);
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
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
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

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, uint64_t a2, uint64_t a3, char a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_39;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_39;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v37 = *v6;
  v14 = *(*v6 + 40);
  Hasher.init(_seed:)();
  if (a4 < 0)
  {
    MEMORY[0x266754DE0](1);
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    if (a4)
    {
      Hasher._combine(_:)(0);
      goto LABEL_14;
    }

    Hasher._combine(_:)(1u);
    v15 = a3;
  }

  else
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v15 = 0;
  }

  MEMORY[0x266754DE0](v15);
LABEL_14:
  result = Hasher._finalize()();
  v16 = -1 << *(v37 + 32);
  a5 = result & ~v16;
  if ((*(v37 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v36 = ~v16;
    do
    {
      v17 = *(v37 + 48) + 32 * a5;
      v19 = *v17;
      v18 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v21 < 0)
      {
        if ((a4 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        if (v19 == v11 && v18 == a2)
        {
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          result = outlined consume of MLS.AllMember();
          if (v21)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v27 = *v17;
          v28 = *(v17 + 8);
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          result = outlined consume of MLS.AllMember();
          if ((v29 & 1) == 0)
          {
            goto LABEL_18;
          }

          if (v21)
          {
LABEL_33:
            if (a4)
            {
              goto LABEL_43;
            }

            goto LABEL_18;
          }
        }

        if ((a4 & 1) == 0 && v20 == a3)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (a4 < 0)
        {
LABEL_17:
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          result = outlined consume of MLS.AllMember();
          goto LABEL_18;
        }

        if (v19 == v11 && v18 == a2)
        {
          goto LABEL_42;
        }

        v23 = *v17;
        v24 = *(v17 + 8);
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of MLS.AllMember();
        outlined copy of MLS.AllMember();
        outlined consume of MLS.AllMember();
        result = outlined consume of MLS.AllMember();
        if (v25)
        {
          goto LABEL_43;
        }
      }

LABEL_18:
      a5 = (a5 + 1) & v36;
    }

    while (((*(v37 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_39:
  v30 = *v35;
  *(*v35 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v31 = *(v30 + 48) + 32 * a5;
  *v31 = v11;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
LABEL_42:
    outlined copy of MLS.AllMember();
    outlined copy of MLS.AllMember();
    outlined consume of MLS.AllMember();
    outlined consume of MLS.AllMember();
LABEL_43:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v34;
  }

  return result;
}