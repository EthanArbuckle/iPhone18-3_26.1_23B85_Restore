uint64_t closure #2 in closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)@<X0>(__int128 *a1@<X0>, unsigned int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a4 + 48);
  v58 = *(a4 + 32);
  v59 = v10;
  v60 = *(a4 + 64);
  v11 = *(a4 + 16);
  v56 = *a4;
  v57 = v11;
  specialized MLS.OutgoingEventType.commit.getter(&v44);
  if (!*(&v44 + 1))
  {
    v23 = a1[9];
    v52 = a1[8];
    v53 = v23;
    v54 = a1[10];
    v55 = *(a1 + 176);
    v24 = a1[5];
    v48 = a1[4];
    v49 = v24;
    v25 = a1[7];
    v50 = a1[6];
    v51 = v25;
    v26 = a1[1];
    v44 = *a1;
    v45 = v26;
    v27 = a1[3];
    v46 = a1[2];
    v47 = v27;
    result = _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(&v44);
    if (result != 3)
    {
      *a5 = 1;
      *(a5 + 8) = 0u;
      *(a5 + 24) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 56) = 0u;
      *(a5 + 72) = 0u;
      *(a5 + 88) = 0;
      *(a5 + 96) = 3;
      return result;
    }

    result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(&v44, v28);
    v22 = a3 + 1;
    if (a3 != -1)
    {
      v20 = v56;
      *(a5 + 40) = v57;
      v29 = v59;
      *(a5 + 56) = v58;
      *(a5 + 72) = v29;
      *a5 = a2;
      *(a5 + 8) = a2;
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  outlined consume of MLS.OutgoingMessage?(v44, *(&v44 + 1), v45, *(&v45 + 1));
  v12 = a1[9];
  v52 = a1[8];
  v53 = v12;
  v54 = a1[10];
  v55 = *(a1 + 176);
  v13 = a1[5];
  v48 = a1[4];
  v49 = v13;
  v14 = a1[7];
  v50 = a1[6];
  v51 = v14;
  v15 = a1[1];
  v44 = *a1;
  v45 = v15;
  v16 = a1[3];
  v46 = a1[2];
  v47 = v16;
  if (_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(&v44) != 9)
  {
    v31 = a1[9];
    v42[8] = a1[8];
    v42[9] = v31;
    v42[10] = a1[10];
    v43 = *(a1 + 176);
    v32 = a1[5];
    v42[4] = a1[4];
    v42[5] = v32;
    v33 = a1[7];
    v42[6] = a1[6];
    v42[7] = v33;
    v34 = a1[1];
    v42[0] = *a1;
    v42[1] = v34;
    v35 = a1[3];
    v42[2] = a1[2];
    v42[3] = v35;
    result = _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v42);
    if (result == 14)
    {
      result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v42, v36);
      if (a3 == -1)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v37 = v56;
      *(a5 + 40) = v57;
      v38 = v59;
      *(a5 + 56) = v58;
      *(a5 + 72) = v38;
      *a5 = a2;
      *(a5 + 8) = a2;
      *(a5 + 16) = a3 + 1;
      *(a5 + 88) = v60;
      *(a5 + 24) = v37;
      *(a5 + 96) = 1;
    }

    else
    {
      if (a3 == -1)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      v39 = v56;
      *(a5 + 40) = v57;
      v40 = v59;
      *(a5 + 56) = v58;
      *(a5 + 72) = v40;
      *a5 = a2;
      *(a5 + 8) = a2;
      *(a5 + 16) = a3 + 1;
      *(a5 + 88) = v60;
      *(a5 + 24) = v39;
      *(a5 + 96) = 0;
    }

    v30 = &v41;
    return outlined init with copy of MLS.OutgoingEventState?(a4, v30, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  }

  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(&v44, v17);
  v19 = a2 + 1;
  if (a2 == -1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v56;
  *(a5 + 40) = v57;
  v21 = v59;
  *(a5 + 56) = v58;
  *(a5 + 72) = v21;
  *a5 = v19;
  *(a5 + 8) = v19;
  v22 = 1;
LABEL_8:
  *(a5 + 16) = v22;
  *(a5 + 88) = v60;
  *(a5 + 24) = v20;
  *(a5 + 96) = 0;
  v30 = v42;
  return outlined init with copy of MLS.OutgoingEventState?(a4, v30, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
}

uint64_t closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v12;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a1;
  v8[21] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[26] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v9, 0);
}

uint64_t closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v21 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  outlined init with copy of MLS.OutgoingEventState(v2, v0 + 16);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of MLS.OutgoingEventState(v2);

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315650;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v20);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v7 + 40), *(v7 + 48), &v20);
    *(v8 + 22) = 2080;
    *(v8 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v20);
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator queued loaded outgoing event state firing retry { clientIdentifier: %s, event: %s, group: %s }", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = *(v0 + 176);
  *(v0 + 88) = *v10;
  v12 = *(v10 + 32);
  v11 = *(v10 + 48);
  v13 = *(v10 + 64);
  *(v0 + 104) = *(v10 + 16);
  *(v0 + 152) = v13;
  *(v0 + 136) = v11;
  *(v0 + 120) = v12;
  v14 = swift_task_alloc();
  *(v0 + 216) = v14;
  *v14 = v0;
  v14[1] = closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  v15 = *(v0 + 192);
  v16 = *(v0 + 200);
  v17 = *(v0 + 184);
  v18 = *(v0 + 160);

  return MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(v18, v0 + 88, v17, v15);
}

{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {
    v4 = v3[26];

    return MEMORY[0x2822009F8](closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  v1 = *(v0 + 224);
  return (*(v0 + 8))();
}

uint64_t MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = type metadata accessor for MLS.Client.KeyPackage();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  v8[14] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:), v12, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v1[3];
  v0[15] = v8;
  v0[16] = v1[4];
  v14 = __swift_project_boxed_opaque_existential_1(v1, v8);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  v0[18] = v10;
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v3;
  v10[5] = v6;
  v10[6] = v5;
  v11 = *(v8 - 8);
  v0[19] = v11;
  v0[20] = *(v11 + 64);
  v0[21] = swift_task_alloc();

  v12 = swift_task_alloc();
  v0[22] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
  *v12 = v0;
  v12[1] = MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:);

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 2), &async function pointer to partial apply for implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:), v9, v14, partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:), v10, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v13 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = v2[14];

    v6 = MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:);
    v7 = v5;
  }

  else
  {
    v8 = v2[21];
    v10 = v2[17];
    v9 = v2[18];
    v11 = v2[14];

    v6 = MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:);
    v7 = v11;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v115 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v110 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v104 = v1;
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v113[0] = v3;
    *v2 = 136315650;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v113);
    *(v2 + 12) = 2080;
    *(v2 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v113);
    *(v2 + 22) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v113);

    *(v2 + 24) = v14;
    v1 = v104;
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator %s retrieved KeyPackages { identifier: %s, keyPackages: %s }", v2, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v3, -1, -1);
    MEMORY[0x266755550](v2, -1, -1);
  }

  v15 = *(*(v0 + 32) + 16);
  if (*(v4 + 16) < v15)
  {
    v16 = *(v0 + 64);
    v17 = *(v0 + 48);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = *(v0 + 56);
      v20 = *(v0 + 64);
      v22 = *(v0 + 40);
      v107 = *(v0 + 48);
      v111 = *(v0 + 32);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v113[0] = v24;
      *v23 = 136315906;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v113);
      *(v23 + 12) = 2080;
      *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v107, v113);
      *(v23 + 22) = 2048;
      v25 = *(v4 + 16);

      *(v23 + 24) = v25;

      *(v23 + 32) = 2048;
      *(v23 + 34) = v15;

      _os_log_impl(&dword_264F1F000, v18, v19, "SwiftMLSClientCoordinator %s missing KeyPackage { identifier: %s, keyPackageCount: %ld, otherMembersCount: %ld }", v23, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266755550](v24, -1, -1);
      MEMORY[0x266755550](v23, -1, -1);
    }

    else
    {
      v67 = *(v0 + 32);
      swift_bridgeObjectRelease_n();
    }

    v68 = *(v0 + 72);
    v69 = v68[3];
    v70 = v68[4];
    v71 = __swift_project_boxed_opaque_existential_1(v68, v69);
    v72 = *(v69 - 8);
    v73 = *(v72 + 64) + 15;
    v74 = swift_task_alloc();
    (*(v72 + 16))(v74, v71, v69);
    v75 = *(*(v70 + 8) + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v72 + 8))(v74, v69);
    }

    else
    {
      swift_allocError();
      (*(v72 + 32))(v76, v74, v69);
    }

    swift_willThrow();
    goto LABEL_50;
  }

  v26 = 0;
  v28 = v4 + 64;
  v27 = *(v4 + 64);
  v29 = -1;
  v30 = -1 << *(v4 + 32);
  if (-v30 < 64)
  {
    v29 = ~(-1 << -v30);
  }

  v31 = v29 & v27;
  v32 = (63 - v30) >> 6;
  v33 = v29 & v27;
LABEL_9:
  if (v33)
  {
    v34 = v26;
    goto LABEL_15;
  }

  while (1)
  {
    v34 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v34 >= v32)
    {
      break;
    }

    v33 = *(v28 + 8 * v34);
    ++v26;
    if (v33)
    {
      v26 = v34;
LABEL_15:
      v35 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v36 = v35 | (v34 << 6);
      if (!*(*(*(v4 + 56) + 8 * v36) + 16))
      {
        v37 = *(v0 + 64);
        v38 = *(v0 + 48);
        v39 = *(v4 + 48) + 32 * v36;
        v40 = *v39;
        v41 = *(v39 + 8);
        v42 = *(v39 + 16);
        v43 = *(v39 + 24);
        outlined copy of MLS.AllMember();

        outlined copy of MLS.AllMember();
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        outlined consume of MLS.AllMember();
        if (os_log_type_enabled(v44, v45))
        {
          v47 = *(v0 + 56);
          v46 = *(v0 + 64);
          v102 = *(v0 + 40);
          v105 = *(v0 + 48);
          v48 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v112 = v108;
          *v48 = 136315650;
          *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &v112);
          *(v48 + 12) = 2080;
          *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v105, &v112);
          *(v48 + 22) = 2080;
          v113[0] = v40;
          v113[1] = v41;
          v113[2] = v42;
          v114 = v43;
          v49 = MLS.AllMember.description.getter();
          v51 = v50;
          outlined consume of MLS.AllMember();
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v112);

          *(v48 + 24) = v52;
          _os_log_impl(&dword_264F1F000, v44, v45, "SwiftMLSClientCoordinator %s missing KeyPackage for member { identifier: %s, member: %s }", v48, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266755550](v108, -1, -1);
          MEMORY[0x266755550](v48, -1, -1);
        }

        else
        {

          outlined consume of MLS.AllMember();
        }

        v93 = *(v0 + 72);
        v95 = v93[3];
        v94 = v93[4];
        v96 = __swift_project_boxed_opaque_existential_1(v93, v95);
        v97 = *(v95 - 8);
        v98 = *(v97 + 64) + 15;
        v99 = swift_task_alloc();
        (*(v97 + 16))(v99, v96, v95);
        v100 = *(*(v94 + 8) + 8);
        if (_getErrorEmbeddedNSError<A>(_:)())
        {
          (*(v97 + 8))(v99, v95);
        }

        else
        {
          swift_allocError();
          (*(v97 + 32))(v101, v99, v95);
        }

        swift_willThrow();

LABEL_50:

LABEL_51:
        v77 = *(v0 + 104);

        v78 = *(v0 + 8);

        return v78();
      }

      goto LABEL_9;
    }
  }

  swift_bridgeObjectRetain_n();
  v6 = 0;
  v2 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
LABEL_20:
      if (v31)
      {
        goto LABEL_25;
      }

      do
      {
        v26 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_73;
        }

        if (v26 >= v32)
        {

          v6 = *(v2 + 16);
          v60 = MEMORY[0x277D84F90];
          if (!v6)
          {
            goto LABEL_56;
          }

          v3 = *(v0 + 96);
          v113[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
          v26 = *(v2 + 16);
          if (!v26)
          {
            goto LABEL_77;
          }

          v110 = v6;
          v60 = v113[0];
          v61 = *(v0 + 184);
          v62 = *(v0 + 112);
          v63 = *(v2 + 32);
          v64 = *(v2 + 40);
          outlined copy of Data._Representation(v63, v64);
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            v65 = *(v0 + 112);
            swift_task_reportUnexpectedExecutor();
          }

          v66 = *(v0 + 104);
          outlined copy of Data._Representation(v63, v64);
          MLS.Client.KeyPackage.init(fromRaw:)();
          if (!v61)
          {
            outlined consume of Data._Representation(v63, v64);
            v1 = *(v60 + 16);
            v26 = *(v60 + 24);
            v6 = v1 + 1;
            if (v1 >= v26 >> 1)
            {
              goto LABEL_79;
            }

            goto LABEL_55;
          }

          outlined consume of Data._Representation(v63, v64);

          goto LABEL_51;
        }

        v31 = *(v28 + 8 * v26);
        ++v6;
      }

      while (!v31);
      v6 = v26;
LABEL_25:
      v53 = *(v0 + 112);
      v3 = *(*(v4 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v31)))));

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v54 = *(v0 + 112);
        swift_task_reportUnexpectedExecutor();
      }

      v1 = *(v3 + 16);
      v55 = *(v2 + 16);
      v4 = v55 + v1;
      if (__OFADD__(v55, v1))
      {
        goto LABEL_74;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v4 > *(v2 + 24) >> 1)
      {
        if (v55 <= v4)
        {
          v57 = v55 + v1;
        }

        else
        {
          v57 = v55;
        }

        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v57, 1, v2);
      }

      v4 = v110;
      v31 &= v31 - 1;
      if (*(v3 + 16))
      {
        break;
      }

      if (v1)
      {
        goto LABEL_75;
      }
    }

    v26 = *(v2 + 16);
    if (((*(v2 + 24) >> 1) - v26) < v1)
    {
      goto LABEL_76;
    }

    swift_arrayInitWithCopy();
  }

  while (!v1);
  v58 = *(v2 + 16);
  v59 = __OFADD__(v58, v1);
  v26 = v58 + v1;
  if (!v59)
  {
    *(v2 + 16) = v26;
    goto LABEL_20;
  }

  while (1)
  {
    __break(1u);
LABEL_79:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v6, 1);
    v60 = v113[0];
LABEL_55:
    v80 = *(v0 + 104);
    v81 = *(v0 + 88);
    *(v60 + 16) = v6;
    v109 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v103 = *(v3 + 32);
    v106 = *(v3 + 72);
    v103(v60 + v109 + v106 * v1, v80, v81);
    if (v110 == 1)
    {
      break;
    }

    v84 = (v2 + 56);
    v3 = 1;
    while (1)
    {
      v26 = *(v2 + 16);
      if (v3 >= v26)
      {
        break;
      }

      v85 = *(v0 + 112);
      v86 = *(v84 - 1);
      v87 = *v84;
      outlined copy of Data._Representation(v86, *v84);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v88 = *(v0 + 112);
        swift_task_reportUnexpectedExecutor();
      }

      v89 = *(v0 + 104);
      outlined copy of Data._Representation(v86, v87);
      MLS.Client.KeyPackage.init(fromRaw:)();
      outlined consume of Data._Representation(v86, v87);
      v113[0] = v60;
      v1 = *(v60 + 16);
      v90 = *(v60 + 24);
      v6 = v1 + 1;
      if (v1 >= v90 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v90 > 1, v1 + 1, 1);
        v60 = v113[0];
      }

      ++v3;
      v91 = *(v0 + 104);
      v92 = *(v0 + 88);
      *(v60 + 16) = v6;
      v103(v60 + v109 + v106 * v1, v91, v92);
      v84 += 2;
      if (v110 == v3)
      {
        goto LABEL_56;
      }
    }

LABEL_77:
    __break(1u);
  }

LABEL_56:
  v82 = *(v0 + 104);
  **(v0 + 24) = v4;

  v83 = *(v0 + 8);

  return v83(v2, v60);
}

{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[20] + 15;
  v6 = swift_task_alloc();
  v7 = *(v2 + 32);
  v7(v6, v1, v4);
  v8 = *(*(v3 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0[19] + 8))(v6, v0[15]);
  }

  else
  {
    v9 = v0[15];
    swift_allocError();
    v7(v10, v6, v9);
  }

  v11 = v0[21];
  v12 = v0[17];

  v13 = v0[13];

  v14 = v0[1];

  return v14();
}

uint64_t implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:), 0, 0);
}

uint64_t implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)()
{
  v1 = *(v0 + 24);
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
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

void closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
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
    _os_log_impl(&dword_264F1F000, oslog, v13, "SwiftMLSClientCoordinator %s failed to retrieve KeyPackages { identifier: %s, error: %s }", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 800) = v5;
  *(v6 + 792) = a4;
  *(v6 + 784) = a3;
  *(v6 + 776) = a2;
  *(v6 + 768) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  *(v6 + 808) = swift_task_alloc();
  v9 = *(a5 + 48);
  *(v6 + 344) = *(a5 + 32);
  *(v6 + 360) = v9;
  *(v6 + 376) = *(a5 + 64);
  v10 = *(a5 + 16);
  *(v6 + 312) = *a5;
  *(v6 + 328) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v6 + 816) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v11, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)()
{
  v44 = v0;
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = swift_allocObject();
  *(v0 + 824) = v4;
  v5 = *(v0 + 344);
  v41 = v4;
  *(v4 + 16) = v5;
  *(v0 + 752) = v5;
  v6 = swift_allocObject();
  *(v0 + 832) = v6;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0;
  *(v0 + 840) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MetricCollector(v0 + 752, v0 + 760);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 312, v0 + 384, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 312, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v7, v8))
  {
    v37 = *(v0 + 784);
    v39 = *(v0 + 792);
    v35 = *(v0 + 776);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v43 = v10;
    *v9 = 136315650;
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v43);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v43);
    *(v9 + 22) = 2080;
    v14 = MEMORY[0x266754630](v39, &type metadata for MLS.AllMember);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v43);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator createGroup enqueueing event { identifier: %s, group: %s, otherMembers: %s }", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v17 = *(v0 + 808);
  v18 = *(v0 + 800);
  v36 = *(v0 + 792);
  v19 = *(v0 + 784);
  v20 = *(v0 + 776);
  Date.init()();
  v21 = type metadata accessor for MetricCollector.Event();
  v22 = *(v21 + 20);
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v17 + v22, 1, 1, v23);
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  specialized Dictionary.subscript.setter(v17, 0x676E6975657551, 0xE700000000000000);
  v24 = *(v18 + 96);
  v38 = *(v0 + 320);
  v40 = *(v0 + 312);
  *(v0 + 848) = v40;
  *(v0 + 856) = v38;
  v25 = swift_allocObject();
  v26 = *(v0 + 328);
  *(v25 + 24) = *(v0 + 312);
  v27 = *(v0 + 344);
  *(v25 + 72) = *(v0 + 360);
  *(v25 + 56) = v27;
  *(v0 + 864) = v25;
  *(v25 + 16) = v18;
  v28 = *(v0 + 376);
  *(v25 + 40) = v26;
  *(v25 + 88) = v28;
  *(v25 + 96) = v41;
  *(v25 + 104) = v20;
  *(v25 + 112) = v19;
  *(v25 + 120) = v36;
  *(v25 + 128) = v6;
  v29 = *(*v24 + 320);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 312, v0 + 456, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v42 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  *(v0 + 872) = v31;
  *v31 = v0;
  v31[1] = MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v32 = *(v0 + 784);
  v33 = *(v0 + 776);

  return (v42)(v33, v32, v40, v38, 0, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v25);
}

{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v9 = *v1;
  *(*v1 + 880) = v0;

  if (v0)
  {
    v4 = *(v2 + 816);
    v5 = MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v6 = *(v2 + 864);
    v7 = *(v2 + 816);

    v5 = MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v45 = v0;
  v1 = *(v0 + 832);
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *(v0 + 32) = *(v1 + 32);
  *(v0 + 48) = v2;
  *(v0 + 16) = v3;
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  *(v0 + 112) = *(v1 + 112);
  *(v0 + 80) = v5;
  *(v0 + 96) = v6;
  *(v0 + 64) = v4;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v1 + 48);
  *(v0 + 224) = *(v1 + 32);
  *(v0 + 240) = v9;
  v11 = *(v1 + 80);
  v10 = *(v1 + 96);
  v12 = *(v1 + 64);
  *(v0 + 304) = *(v1 + 112);
  *(v0 + 272) = v11;
  *(v0 + 288) = v10;
  *(v0 + 256) = v12;
  if (v7)
  {
    v13 = *(v0 + 840);
    v14 = *(v0 + 800);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 312, v0 + 600, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 120, &_s15SecureMessaging3MLSO5GroupVSgMd, &_s15SecureMessaging3MLSO5GroupVSgMR);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 312, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 856);
      v18 = *(v0 + 848);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v44);
      _os_log_impl(&dword_264F1F000, v15, v16, "SwiftMLSClientCoordinator createGroup returning processedContext to caller { identifier: %s }", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x266755550](v20, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    v21 = *(v0 + 832);
    v22 = *(v0 + 824);
    v23 = *(v0 + 808);
    v24 = *(v0 + 768);
    *(v0 + 720) = *(v0 + 328);
    swift_beginAccess();
    v25 = *(v22 + 16);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 720, v0 + 736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    *v24 = *(v0 + 720);
    *(v24 + 16) = v8;
    *(v24 + 24) = v7;
    v26 = *(v0 + 240);
    *(v24 + 32) = *(v0 + 224);
    *(v24 + 48) = v26;
    v27 = *(v0 + 256);
    v28 = *(v0 + 288);
    v29 = *(v0 + 304);
    *(v24 + 80) = *(v0 + 272);
    *(v24 + 96) = v28;
    *(v24 + 64) = v27;
    *(v24 + 112) = v29;
    *(v24 + 120) = v25;

    v30 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 840);
    v32 = *(v0 + 800);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 312, v0 + 528, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    outlined destroy of NSObject?(v0 + 312, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 856);
      v36 = *(v0 + 848);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, v44);
      _os_log_impl(&dword_264F1F000, v33, v34, "SwiftMLSClientCoordinator performed queue operation, but no group returned { identifier: %s }", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266755550](v38, -1, -1);
      MEMORY[0x266755550](v37, -1, -1);
    }

    v39 = *(v0 + 832);
    v40 = *(v0 + 824);
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v41 = 4;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    swift_willThrow();

    v42 = *(v0 + 808);

    v30 = *(v0 + 8);
  }

  return v30();
}

{
  v1 = v0[108];
  v2 = v0[104];
  v3 = v0[103];

  v4 = v0[110];
  v5 = v0[101];

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 8072) = v34;
  *(v8 + 8088) = v35;
  *(v8 + 8064) = a8;
  *(v8 + 8056) = a7;
  *(v8 + 8048) = a6;
  *(v8 + 8040) = a5;
  *(v8 + 8032) = a1;
  v9 = type metadata accessor for MLS.MLSError();
  *(v8 + 8096) = v9;
  v10 = *(v9 - 8);
  *(v8 + 8104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 8112) = swift_task_alloc();
  *(v8 + 8120) = swift_task_alloc();
  *(v8 + 8128) = swift_task_alloc();
  *(v8 + 8136) = swift_task_alloc();
  *(v8 + 8144) = swift_task_alloc();
  *(v8 + 8152) = swift_task_alloc();
  *(v8 + 8160) = swift_task_alloc();
  *(v8 + 8168) = swift_task_alloc();
  *(v8 + 8176) = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.GroupInfo();
  *(v8 + 8184) = v12;
  v13 = *(v12 - 8);
  *(v8 + 0x2000) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 8200) = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  *(v8 + 8208) = v15;
  v16 = *(v15 - 8);
  *(v8 + 8216) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 8224) = swift_task_alloc();
  v18 = type metadata accessor for MLS.Group.Group.ResurrectionInput();
  *(v8 + 8232) = v18;
  v19 = *(v18 - 8);
  *(v8 + 8240) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 8248) = swift_task_alloc();
  *(v8 + 8256) = swift_task_alloc();
  v21 = type metadata accessor for MLS.Group.Group.ReplaceExpiredCredentialInput();
  *(v8 + 8264) = v21;
  v22 = *(v21 - 8);
  *(v8 + 8272) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 8280) = swift_task_alloc();
  *(v8 + 8288) = swift_task_alloc();
  *(v8 + 8296) = swift_task_alloc();
  NewEraInput = type metadata accessor for MLS.Group.Group.CreateNewEraInput();
  *(v8 + 8304) = NewEraInput;
  v25 = *(NewEraInput - 8);
  *(v8 + 8312) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 8320) = swift_task_alloc();
  *(v8 + 8328) = swift_task_alloc();
  v27 = type metadata accessor for Date();
  *(v8 + 8336) = v27;
  v28 = *(v27 - 8);
  *(v8 + 8344) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 8352) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  *(v8 + 8360) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v31 = static MLSActor.shared;
  *(v8 + 8368) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v31, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)()
{
  v1 = v0[1006];
  v2 = v0[1005];
  v0[1047] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 452), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[1006];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), &v20);
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator createGroup event dequeued { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = v0[1007];
  v9 = v0[1006];
  v10 = v0[1005];
  swift_beginAccess();
  v11._countAndFlagsBits = 0x676E6975657551;
  v11._object = 0xE700000000000000;
  MetricCollector.end(label:)(v11);
  swift_endAccess();
  v12 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v0[1048] = v12;
  v0[1049] = *v9;
  v0[1050] = v9[1];
  v13 = *(*v12 + 192);
  v19 = v13 + *v13;
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[1051] = v15;
  v16 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v15 = v0;
  v15[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v17 = v0[1009];
  v18 = v0[1008];
  v22 = 0;
  v23 = 0;
  v25 = v16;
  v26 = v0 + 792;
  v24 = &type metadata for MLS.GroupOperationError;

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[1117] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[750];
    v2 = v0[751];
    __swift_project_boxed_opaque_existential_1(v0 + 747, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[1118] = v5;
    *v5 = v0;
    v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v6 = v0[1025];

    v7(v6, v1, v2);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 8408);
  v9 = *v1;
  *(*v1 + 8416) = v0;

  if (v0)
  {
    v4 = *(v2 + 8368);
    v5 = *(v2 + 6352);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v4;
  }

  else
  {
    v7 = *(v2 + 8368);
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v11 = *(v0 + 8392);
  v12 = *(v0 + 8400);
  v1 = *(v0 + 8360);
  v2 = *(v0 + 8344);
  v3 = *(v0 + 8336);
  v4 = *(v0 + 8072);
  v5 = *(v0 + 8064);
  v6 = *(v0 + 8056);
  v7 = *(v0 + 8040);
  *(v0 + 5456) = 0u;
  *(v0 + 5472) = 0u;
  *(v0 + 5488) = 0;
  outlined destroy of NSObject?(v0 + 5456, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  swift_beginAccess();
  Date.init()();
  v8 = type metadata accessor for MetricCollector.Event();
  (*(v2 + 56))(v1 + *(v8 + 20), 1, 1, v3);
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  specialized Dictionary.subscript.setter(v1, 0xD000000000000010, 0x80000002651E7900);
  swift_endAccess();
  *(v0 + 8424) = MLS.SwiftMLSClientCoordinator.uuidToUse(identifier:eventIdentifier:)(v5, v4, v11, v12);
  *(v0 + 8432) = v9;
  swift_retain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  outlined init with copy of MLS.SwiftMLSClientPicker(*(v0 + 8040) + 16, v0 + 5128);
  if (*(v0 + 5168))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 5128), v0 + 5776);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 5128), v0 + 5216);
    v1 = *(v0 + 5240);
    v2 = *(v0 + 5248);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 5216), v1);
    *(v0 + 5800) = v1;
    *(v0 + 5808) = *(v2 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 5776));
    (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v3, v1);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5216));
  }

  v5 = *(v0 + 5800);
  v6 = *(v0 + 5808);
  __swift_project_boxed_opaque_existential_1((v0 + 5776), v5);
  v7 = *(v6 + 64);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 8440) = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v10 = *(v0 + 8432);
  v11 = *(v0 + 8424);

  return v13(v0 + 5736, v11, v10, v5, v6);
}

{
  v2 = *(*v1 + 8440);
  v5 = *v1;
  *(*v1 + 8448) = v0;

  if (v0)
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[1046];
  v2 = v0[1005];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 722);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v1 = *(v0 + 8384);
  v2 = *(v0 + 8056);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 5736), v0 + 5696);
  swift_beginAccess();
  v3._object = 0x80000002651E7900;
  v3._countAndFlagsBits = 0xD000000000000010;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = *(*v1 + 160);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 8456) = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v7 = *(v0 + 8384);
  v8 = *(v0 + 8072);
  v9 = *(v0 + 8064);

  return v11(v0 + 5696, v9, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 8456);
  v4 = *v1;
  *(*v1 + 8464) = v0;

  v5 = *(v2 + 8368);
  if (v0)
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 8448);
  v2 = *(v0 + 8368);
  v3 = *(v0 + 8040);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5776));
  swift_getErrorValue();
  v4 = *(v0 + 6480);
  v5 = Error.readableDescription.getter(*(v0 + 6488), *(v0 + 6496));
  closure #2 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v5, v6, v3, "SwiftMLS failed to create group: %s");

  swift_getErrorValue();
  v7 = *(v0 + 6528);
  v8 = Error.readableDescription.getter(*(v0 + 6536), *(v0 + 6544));
  *(v0 + 8472) = v8;
  *(v0 + 8480) = v9;
  *(v0 + 6624) = 4;
  *(v0 + 6632) = v8;
  *(v0 + 6640) = v9;
  *(v0 + 8488) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v1 = v0[1061];
  v2 = v0[1060];
  v3 = v0[1059];
  v4 = v0[1054];
  v5 = v0[1053];
  swift_allocError();
  *v6 = 4;
  *(v6 + 8) = v3;
  *(v6 + 16) = v2;
  outlined consume of Data?(v5, v4);
  v7 = v0[1045];
  v8 = v0[1044];
  v9 = v0[1041];
  v10 = v0[1040];
  v11 = v0[1037];
  v12 = v0[1036];
  v13 = v0[1035];
  v14 = v0[1032];
  v15 = v0[1031];
  v16 = v0[1028];
  v19 = v0[1025];
  v20 = v0[1022];
  v21 = v0[1021];
  v22 = v0[1020];
  v23 = v0[1019];
  v24 = v0[1018];
  v25 = v0[1017];
  v26 = v0[1016];
  v27 = v0[1015];
  v28 = v0[1014];

  v17 = v0[1];

  return v17();
}

{
  v18 = v0;
  v1 = *(v0 + 8376);
  v2 = *(v0 + 8072);
  v3 = *(v0 + 8048);
  v4 = *(v0 + 8040);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 5456), v0 + 5496);
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 3544, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 8400);
    v8 = *(v0 + 8392);
    v9 = *(v0 + 8072);
    v10 = *(v0 + 8064);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v17);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v17);
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator createGroup found existing group { identifier: %s, group: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = *(v0 + 8072);
  v14 = *(v0 + 8048);
  v15 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v14, v0 + 4912, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v14, v0 + 3472, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[690];
  v2 = v0[691];
  __swift_project_boxed_opaque_existential_1(v0 + 687, v1);
  v3 = *(v2 + 40);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[1062] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return v7(v1, v2);
}

{
  v1 = v0[1046];
  v2 = v0[1009];
  v3 = v0[1006];
  v4 = v0[1005];

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v60 = v0;
  v1 = *(v0 + 8376);
  v2 = *(v0 + 8072);
  v3 = *(v0 + 8048);
  v4 = *(v0 + 8040);
  if (*(v0 + 193))
  {
    outlined init with copy of MLS.OutgoingEventState?(*(v0 + 8048), v0 + 2896, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 8400);
      v8 = *(v0 + 8392);
      v9 = *(v0 + 8072);
      v10 = *(v0 + 8064);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v59[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v59);
      *(v11 + 12) = 2080;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v59);
      _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator createGroup resurrect group { identifier: %s, group: %s }", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v12, -1, -1);
      MEMORY[0x266755550](v11, -1, -1);
    }

    outlined init with take of MLS.KeyUpdatePolicy((v0 + 5496), v0 + 5696);
    v13 = *(v0 + 8360);
    v14 = *(v0 + 8344);
    v15 = *(v0 + 8336);
    v16 = *(v0 + 8056);
    swift_beginAccess();
    Date.init()();
    v17 = type metadata accessor for MetricCollector.Event();
    *(v0 + 8624) = v17;
    v18 = *(v17 + 20);
    v19 = *(v14 + 56);
    *(v0 + 8632) = v19;
    *(v0 + 8640) = (v14 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v19(v13 + v18, 1, 1, v15);
    v20 = *(v17 - 8);
    v21 = *(v20 + 56);
    *(v0 + 8648) = v21;
    *(v0 + 8656) = (v20 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v21(v13, 0, 1, v17);
    specialized Dictionary.subscript.setter(v13, 0xD000000000000013, 0x80000002651E7920);
    swift_endAccess();
    *(v0 + 5680) = &type metadata for MLS.GroupCreationError;
    v22 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    *(v0 + 8664) = v22;
    *(v0 + 5688) = v22;
    *(v0 + 5656) = 5;
    *(v0 + 5664) = 0u;
    v23 = swift_task_alloc();
    *(v0 + 8672) = v23;
    *v23 = v0;
    v23[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v24 = *(v0 + 8400);
    v25 = *(v0 + 8392);
    v26 = *(v0 + 8080);
    v27 = *(v0 + 8040);

    return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v0 + 7872, v26, v25, v24, 0x7247657461657263, 0xEB0000000070756FLL, v0 + 5656);
  }

  else
  {
    outlined init with copy of MLS.OutgoingEventState?(*(v0 + 8048), v0 + 4984, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 8400);
      v32 = *(v0 + 8392);
      v33 = *(v0 + 8072);
      v34 = *(v0 + 8064);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v59[0] = v36;
      *v35 = 136315394;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, v59);
      *(v35 + 12) = 2080;
      *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, v59);
      _os_log_impl(&dword_264F1F000, v29, v30, "SwiftMLSClientCoordinator createGroup failed because group already exists { identifier: %s, group: %s }", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v36, -1, -1);
      MEMORY[0x266755550](v35, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v37 = 13;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5496));
    v38 = *(v0 + 8360);
    v39 = *(v0 + 8352);
    v40 = *(v0 + 8328);
    v41 = *(v0 + 8320);
    v42 = *(v0 + 8296);
    v43 = *(v0 + 8288);
    v44 = *(v0 + 8280);
    v45 = *(v0 + 8256);
    v46 = *(v0 + 8248);
    v47 = *(v0 + 8224);
    v49 = *(v0 + 8200);
    v50 = *(v0 + 8176);
    v51 = *(v0 + 8168);
    v52 = *(v0 + 8160);
    v53 = *(v0 + 8152);
    v54 = *(v0 + 8144);
    v55 = *(v0 + 8136);
    v56 = *(v0 + 8128);
    v57 = *(v0 + 8120);
    v58 = *(v0 + 8112);

    v48 = *(v0 + 8);

    return v48();
  }
}

{
  v1 = *(v0 + 8504);
  v2 = *(v0 + 8368);
  v3 = *(v0 + 8072);
  v4 = *(v0 + 8064);
  v5 = *(v0 + 8048);
  v6 = *(v0 + 8040);
  swift_getErrorValue();
  v7 = *(v0 + 6264);
  v8 = Error.readableDescription.getter(*(v0 + 6272), *(v0 + 6280));
  closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v8, v9, v6, v5, v4, v3);

  swift_getErrorValue();
  v10 = *(v0 + 6216);
  v11 = Error.readableDescription.getter(*(v0 + 6224), *(v0 + 6232));
  *(v0 + 8512) = v11;
  *(v0 + 8520) = v12;
  *(v0 + 6168) = 16;
  *(v0 + 6176) = v11;
  *(v0 + 6184) = v12;
  *(v0 + 8528) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v5, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v5, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v1 = v0[1066];
  v2 = v0[1065];
  v3 = v0[1064];
  swift_allocError();
  *v4 = 16;
  *(v4 + 8) = v3;
  *(v4 + 16) = v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 687);
  v5 = v0[1045];
  v6 = v0[1044];
  v7 = v0[1041];
  v8 = v0[1040];
  v9 = v0[1037];
  v10 = v0[1036];
  v11 = v0[1035];
  v12 = v0[1032];
  v13 = v0[1031];
  v14 = v0[1028];
  v17 = v0[1025];
  v18 = v0[1022];
  v19 = v0[1021];
  v20 = v0[1020];
  v21 = v0[1019];
  v22 = v0[1018];
  v23 = v0[1017];
  v24 = v0[1016];
  v25 = v0[1015];
  v26 = v0[1014];

  v15 = v0[1];

  return v15();
}

{
  v1 = *(v0 + 8040);
  swift_retain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[1046];
  v2 = v0[1005];
  v3 = v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[1067] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[1068] = *(v3 + 8);
  v0[1069] = *(v2 + 80);
  v0[1070] = *(v2 + 88);
  outlined init with copy of ServerBag.MLS(v2 + 144, (v0 + 732));
  v0[1071] = type metadata accessor for MLS.KeyUpdateTracker();
  v0[1072] = swift_allocObject();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v1 = v0[1072];
  v16 = v0[1070];
  v2 = v0[1069];
  v3 = v0[1068];
  v4 = v0[1067];
  v5 = v0[1009];
  v1[6] = v0[1008];
  v1[7] = v5;
  v1[4] = v4;
  v1[5] = v3;
  v1[2] = v2;
  v1[3] = v16;
  outlined init with copy of ServerBag.MLS((v0 + 732), (v1 + 11));
  ObjectType = swift_getObjectType();
  v0[965] = v4;
  v0[966] = v3;
  v7 = *(v16 + 144);

  swift_unknownObjectRetain();
  v15 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[1073] = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v10 = v0[1070];
  v11 = v0[1069];
  v12 = v0[1009];
  v13 = v0[1008];

  return (v15)(v0 + 936, v13, v12, v0 + 965, ObjectType, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 8584);
  v7 = *v1;
  *(*v1 + 8592) = v0;

  v4 = *(v2 + 8368);
  if (v0)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  LODWORD(v1) = *(v0 + 7504);
  if (v1 == 2)
  {
    v1 = *(v0 + 8352);
    v2 = *(v0 + 8344);
    v3 = *(v0 + 8336);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v5 = v4;
    (*(v2 + 8))(v1, v3);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5856));
    v6 = 0;
    LOBYTE(v1) = 1;
  }

  else
  {
    v5 = *(v0 + 7496);
    v6 = *(v0 + 7488);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5856));
  }

  v7 = *(v0 + 8576);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  *(v7 + 80) = v1 & 1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[1072];
  v2 = v0[1071];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 732);
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[5];

  v5 = v1[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 11);
  swift_deallocPartialClassInstance();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = *(v0 + 8592);
  v2 = *(v0 + 8368);
  v3 = *(v0 + 8040);
  swift_getErrorValue();
  v4 = *(v0 + 6768);
  v5 = Error.readableDescription.getter(*(v0 + 6776), *(v0 + 6784));
  closure #2 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v5, v6, v3, "Failed to load in KeyUpdateTracker: %s");

  swift_getErrorValue();
  v7 = *(v0 + 7152);
  v8 = Error.readableDescription.getter(*(v0 + 7160), *(v0 + 7168));
  *(v0 + 8600) = v8;
  *(v0 + 8608) = v9;
  *(v0 + 7296) = 10;
  *(v0 + 7304) = v8;
  *(v0 + 7312) = v9;
  *(v0 + 8616) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v1 = v0[1077];
  v2 = v0[1076];
  v3 = v0[1075];
  v4 = v0[1054];
  v5 = v0[1053];
  swift_allocError();
  *v6 = 10;
  *(v6 + 8) = v3;
  *(v6 + 16) = v2;
  outlined consume of Data?(v5, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v7 = v0[1045];
  v8 = v0[1044];
  v9 = v0[1041];
  v10 = v0[1040];
  v11 = v0[1037];
  v12 = v0[1036];
  v13 = v0[1035];
  v14 = v0[1032];
  v15 = v0[1031];
  v16 = v0[1028];
  v19 = v0[1025];
  v20 = v0[1022];
  v21 = v0[1021];
  v22 = v0[1020];
  v23 = v0[1019];
  v24 = v0[1018];
  v25 = v0[1017];
  v26 = v0[1016];
  v27 = v0[1015];
  v28 = v0[1014];

  v17 = v0[1];

  return v17();
}

{
  v1 = *(v0 + 8368);
  v2 = *(v0 + 8040);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v1 = *(v0 + 8576);
  v2 = *(v0 + 8432);
  v3 = *(v0 + 8424);
  v4 = *(v0 + 8072);
  v5 = *(v0 + 8064);
  v6 = *(**(v0 + 8040) + 256);

  v7 = v6(v0 + 6136);
  v9 = v8;
  v10 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v9;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v5, v4, isUniquelyReferenced_nonNull_native);

  *v9 = v28;
  v7(v0 + 6136, 0);
  outlined consume of Data?(v3, v2);
  v12 = *(v0 + 8360);
  v13 = *(v0 + 8344);
  v14 = *(v0 + 8336);
  v15 = *(v0 + 8056);
  swift_beginAccess();
  Date.init()();
  v16 = type metadata accessor for MetricCollector.Event();
  *(v0 + 8624) = v16;
  v17 = *(v16 + 20);
  v18 = *(v13 + 56);
  *(v0 + 8632) = v18;
  *(v0 + 8640) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v12 + v17, 1, 1, v14);
  v19 = *(v16 - 8);
  v20 = *(v19 + 56);
  *(v0 + 8648) = v20;
  *(v0 + 8656) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v12, 0, 1, v16);
  specialized Dictionary.subscript.setter(v12, 0xD000000000000013, 0x80000002651E7920);
  swift_endAccess();
  *(v0 + 5680) = &type metadata for MLS.GroupCreationError;
  v21 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  *(v0 + 8664) = v21;
  *(v0 + 5688) = v21;
  *(v0 + 5656) = 5;
  *(v0 + 5664) = 0u;
  v22 = swift_task_alloc();
  *(v0 + 8672) = v22;
  *v22 = v0;
  v22[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v23 = *(v0 + 8400);
  v24 = *(v0 + 8392);
  v25 = *(v0 + 8080);
  v26 = *(v0 + 8040);

  return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v0 + 7872, v25, v24, v23, 0x7247657461657263, 0xEB0000000070756FLL, v0 + 5656);
}

{
  v56 = v0;
  v1 = *(v0 + 8416);
  v2 = *(v0 + 8056);
  v3 = *(v0 + 8048);
  v4 = *(v0 + 7872);
  *(v0 + 8704) = v4;
  swift_beginAccess();
  v5._object = 0x80000002651E7920;
  v5._countAndFlagsBits = 0xD000000000000013;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  *(v0 + 7560) = *(v3 + 16);
  if (v1)
  {
    v6 = *(v0 + 8376);
    v7 = *(v0 + 8048);
    v8 = *(v0 + 8040);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7624, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined init with copy of MLS.OutgoingEventState?(v7, v0 + 3760, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v7, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 8400);
      v12 = *(v0 + 8392);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v55 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v55);
      _os_log_impl(&dword_264F1F000, v9, v10, "SwiftMLSClientCoordinator createGroup adding KeyPackages to group { identifier: %s }", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266755550](v14, -1, -1);
      MEMORY[0x266755550](v13, -1, -1);
    }

    v15 = *(v0 + 8656);
    v16 = *(v0 + 8648);
    v17 = *(v0 + 8640);
    v18 = *(v0 + 8632);
    v19 = *(v0 + 8624);
    v20 = *(v0 + 8360);
    v21 = *(v0 + 8336);
    v22 = *(v0 + 8056);
    swift_beginAccess();
    Date.init()();
    v18(v20 + *(v19 + 20), 1, 1, v21);
    v16(v20, 0, 1, v19);
    specialized Dictionary.subscript.setter(v20, 0x534C4D7466697753, 0xEE0074696D6D6F43);
    swift_endAccess();
    v23 = *(v0 + 5720);
    v24 = *(v0 + 5728);
    __swift_project_boxed_opaque_existential_1((v0 + 5696), v23);
    v25 = *(v24 + 184);
    v53 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    *(v0 + 8832) = v27;
    *v27 = v0;
    v27[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v28 = *(v0 + 8688);

    return v53(v0 + 5376, v28, v23, v24);
  }

  else
  {
    v30 = *(v0 + 8688);
    v31 = *(v0 + 8376);
    v32 = *(v0 + 8048);
    v33 = *(v0 + 8040);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7512, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined init with copy of MLS.OutgoingEventState?(v32, v0 + 4840, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 8400);
      v37 = *(v0 + 8392);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55 = v39;
      *v38 = 136315138;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v55);
      _os_log_impl(&dword_264F1F000, v34, v35, "SwiftMLSClientCoordinator createGroup resurrecting group { identifier: %s }", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266755550](v39, -1, -1);
      MEMORY[0x266755550](v38, -1, -1);
    }

    v40 = *(v0 + 8656);
    v41 = *(v0 + 8648);
    v42 = *(v0 + 8640);
    v43 = *(v0 + 8632);
    v44 = *(v0 + 8624);
    v45 = *(v0 + 8360);
    v46 = *(v0 + 8336);
    v47 = *(v0 + 8056);
    v54 = *(v0 + 8040);
    swift_beginAccess();
    Date.init()();
    v43(v45 + *(v44 + 20), 1, 1, v46);
    v41(v45, 0, 1, v44);
    specialized Dictionary.subscript.setter(v45, 0x534C4D7466697753, 0xEE0074696D6D6F43);
    swift_endAccess();
    outlined init with copy of ServerBag.MLS(v0 + 5696, v0 + 5296);
    v48 = *(v0 + 5320);
    *(v0 + 8712) = v48;
    *(v0 + 8720) = *(v0 + 5328);
    *(v0 + 8728) = __swift_project_boxed_opaque_existential_1((v0 + 5296), v48);
    *(v0 + 7856) = v4;
    v49 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 8736) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v50 = (v54 + v49);
    v51 = v50[1];
    *(v0 + 7688) = *v50;
    *(v0 + 7696) = v51;
    *(v0 + 8744) = direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider;

    v52 = swift_task_alloc();
    *(v0 + 8752) = v52;
    *v52 = v0;
    v52[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

    return MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(v0 + 7672, 1);
  }
}

{
  v2 = *(*v1 + 8752);
  v3 = *v1;
  *(v3 + 8760) = v0;

  if (v0)
  {
    v4 = *(v3 + 8680);
    v5 = *(v3 + 8368);

    outlined destroy of NSObject?(v3 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = *(v3 + 7696);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v5, 0);
  }

  else
  {
    v7 = *(v3 + 7680);
    *(v3 + 7640) = *(v3 + 7672);
    *(v3 + 7648) = v7;
    v8 = swift_task_alloc();
    *(v3 + 8768) = v8;
    v9 = lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    *(v3 + 8776) = v9;
    *v8 = v3;
    v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v10 = *(v3 + 8728);
    v11 = *(v3 + 8720);
    v12 = *(v3 + 8712);

    return MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)((v3 + 7856), (v3 + 7688), (v3 + 7640), v12, &type metadata for MLS.AllMember, v11, v9);
  }
}

{
  v151 = v0;
  v1 = *(v0 + 194);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5296));
  if (v1 == 1)
  {
    v2 = *(v0 + 8784);
    v3 = *(v0 + 8376);
    v4 = *(v0 + 8048);
    v5 = *(v0 + 8040);

    outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 2824, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 8400);
      v9 = *(v0 + 8392);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v150[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v150);
      _os_log_impl(&dword_264F1F000, v6, v7, "SwiftMLSClientCoordinator createGroup detected replacement of own and other key package. Advancing era instead { identifier: %s }", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x266755550](v11, -1, -1);
      MEMORY[0x266755550](v10, -1, -1);
    }

    v12 = *(v0 + 8792);
    specialized MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(*(v0 + 8704));
    if (v12)
    {
      v13 = v12;
      v14 = (v0 + 7896);
      v15 = *(v0 + 8704);

      v16 = *(v0 + 8176);
      v17 = *(v0 + 8096);
      *(v0 + 7896) = v13;
      v18 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 8040);
        (*(*(v0 + 8104) + 32))(*(v0 + 8168), *(v0 + 8176), *(v0 + 8096));
        if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 5)
        {
          v20 = *(v0 + 8376);
          v21 = *(v0 + 8168);
          v22 = *(v0 + 8160);
          v23 = *(v0 + 8104);
          v24 = *(v0 + 8096);
          v25 = *(v0 + 8048);
          v26 = *(v0 + 8040);

          v147 = *(v23 + 16);
          v147(v22, v21, v24);
          outlined init with copy of MLS.OutgoingEventState?(v25, v0 + 3904, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.error.getter();
          outlined destroy of NSObject?(v25, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
          if (os_log_type_enabled(v27, v28))
          {
            v138 = *(v0 + 8400);
            v29 = *(v0 + 8392);
            v30 = *(v0 + 8160);
            v31 = *(v0 + 8104);
            v32 = *(v0 + 8096);
            v33 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v150[0] = v144;
            *v33 = 136315394;
            *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v138, v150);
            *(v33 + 12) = 2112;
            lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
            swift_allocError();
            v147(v34, v30, v32);
            v35 = _swift_stdlib_bridgeErrorToNSError();
            v36 = *(v31 + 8);
            v36(v30, v32);
            *(v33 + 14) = v35;
            *v141 = v35;
            _os_log_impl(&dword_264F1F000, v27, v28, "SwiftMLSClientCoordinator createGroup era advancement failed. Refetching KeyPackage { identifier: %s, error: %@ }", v33, 0x16u);
            outlined destroy of NSObject?(v141, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x266755550](v141, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v144);
            MEMORY[0x266755550](v144, -1, -1);
            MEMORY[0x266755550](v33, -1, -1);
          }

          else
          {
            v114 = *(v0 + 8160);
            v115 = *(v0 + 8104);
            v116 = *(v0 + 8096);

            v36 = *(v115 + 8);
            v36(v114, v116);
          }

          *(v0 + 9264) = v36;
          v117 = *(v0 + 8664);
          *(v0 + 5920) = &type metadata for MLS.GroupCreationError;
          *(v0 + 5928) = v117;
          *(v0 + 5896) = 5;
          *(v0 + 5904) = 0u;
          v118 = swift_task_alloc();
          *(v0 + 9272) = v118;
          *v118 = v0;
          v118[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
          v119 = *(v0 + 8400);
          v120 = *(v0 + 8392);
          v121 = *(v0 + 8080);
          v122 = *(v0 + 8040);
          v123 = v0 + 7912;
          v124 = v0 + 5896;
LABEL_33:

          return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v123, v121, v120, v119, 0x7247657461657263, 0xEB0000000070756FLL, v124);
        }

        v81 = *(v0 + 8680);
        v46 = *(v0 + 8168);
LABEL_23:
        v83 = *(v0 + 8104);
        v84 = *(v0 + 8096);

        outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        (*(v83 + 8))(v46, v84);
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    v65 = *(v0 + 8704);
    v66 = *(v0 + 8328);

    MLS.Group.Group.CreateNewEraInput.init(packages:)();
    v67 = *(v0 + 5720);
    v68 = *(v0 + 5728);
    __swift_project_boxed_opaque_existential_1((v0 + 5696), v67);
    v69 = *(v68 + 168);
    v148 = (v69 + *v69);
    v70 = v69[1];
    v71 = swift_task_alloc();
    *(v0 + 8800) = v71;
    *v71 = v0;
    v71[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v72 = *(v0 + 8328);

    return v148(v0 + 6016, v72, v67, v68);
  }

  else
  {
    v37 = *(v0 + 8792);
    v38 = *(v0 + 8784);
    v39 = *(v0 + 8704);
    v40 = *(v0 + 8296);

    MLS.Group.Group.ReplaceExpiredCredentialInput.init(replacements:)();
    if (v37)
    {
      v13 = v37;
      v14 = (v0 + 7760);
      v41 = *(v0 + 8152);
      v42 = *(v0 + 8096);
      *(v0 + 7760) = v13;
      v43 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        v44 = *(v0 + 8040);
        (*(*(v0 + 8104) + 32))(*(v0 + 8144), *(v0 + 8152), *(v0 + 8096));
        v45 = MLS.SwiftMLSClientCoordinator.healingMethod(error:)();
        v46 = *(v0 + 8144);
        if (v45 == 5)
        {
          v47 = *(v0 + 8376);
          v48 = *(v0 + 8136);
          v49 = *(v0 + 8104);
          v50 = *(v0 + 8096);
          v51 = *(v0 + 8048);
          v52 = *(v0 + 8040);

          v145 = *(v49 + 16);
          v145(v48, v46, v50);
          outlined init with copy of MLS.OutgoingEventState?(v51, v0 + 4552, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();
          outlined destroy of NSObject?(v51, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
          if (os_log_type_enabled(v53, v54))
          {
            v139 = *(v0 + 8400);
            v55 = *(v0 + 8392);
            v56 = *(v0 + 8136);
            v57 = *(v0 + 8104);
            v58 = *(v0 + 8096);
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            v150[0] = v142;
            *v59 = 136315394;
            *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v139, v150);
            *(v59 + 12) = 2112;
            lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
            swift_allocError();
            v145(v61, v56, v58);
            v62 = _swift_stdlib_bridgeErrorToNSError();
            v63 = *(v57 + 8);
            v63(v56, v58);
            *(v59 + 14) = v62;
            *v60 = v62;
            _os_log_impl(&dword_264F1F000, v53, v54, "SwiftMLSClientCoordinator createGroup resurrection failed. Refetching KeyPackage { identifier: %s, error: %@ }", v59, 0x16u);
            outlined destroy of NSObject?(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x266755550](v60, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v142);
            MEMORY[0x266755550](v142, -1, -1);
            MEMORY[0x266755550](v59, -1, -1);
          }

          else
          {
            v125 = *(v0 + 8136);
            v126 = *(v0 + 8104);
            v127 = *(v0 + 8096);

            v63 = *(v126 + 8);
            v63(v125, v127);
          }

          *(v0 + 9304) = v63;
          v128 = *(v0 + 8664);
          *(v0 + 5360) = &type metadata for MLS.GroupCreationError;
          *(v0 + 5368) = v128;
          *(v0 + 5336) = 5;
          *(v0 + 5344) = 0u;
          v129 = swift_task_alloc();
          *(v0 + 9312) = v129;
          *v129 = v0;
          v129[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
          v119 = *(v0 + 8400);
          v120 = *(v0 + 8392);
          v121 = *(v0 + 8080);
          v130 = *(v0 + 8040);
          v123 = v0 + 7752;
          v124 = v0 + 5336;
          goto LABEL_33;
        }

        v82 = *(v0 + 8680);
        goto LABEL_23;
      }

LABEL_14:
      v64 = *(v0 + 8680);
      outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

LABEL_24:

      v85 = *(v0 + 8376);
      v86 = *(v0 + 8048);
      v87 = *(v0 + 8040);
      outlined init with copy of MLS.OutgoingEventState?(v86, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v88 = v13;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v86, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      if (os_log_type_enabled(v89, v90))
      {
        v91 = *(v0 + 8400);
        v92 = *(v0 + 8392);
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v150[0] = v95;
        *v93 = 136315394;
        *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v91, v150);
        *(v93 + 12) = 2112;
        v96 = v13;
        v97 = _swift_stdlib_bridgeErrorToNSError();
        *(v93 + 14) = v97;
        *v94 = v97;
        _os_log_impl(&dword_264F1F000, v89, v90, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v93, 0x16u);
        outlined destroy of NSObject?(v94, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v94, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v95);
        MEMORY[0x266755550](v95, -1, -1);
        MEMORY[0x266755550](v93, -1, -1);
      }

      swift_getErrorValue();
      v98 = *(v0 + 7392);
      v99 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
      v101 = v100;
      lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
      swift_allocError();
      *v102 = 15;
      *(v102 + 8) = v99;
      *(v102 + 16) = v101;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
      v103 = *(v0 + 8360);
      v104 = *(v0 + 8352);
      v105 = *(v0 + 8328);
      v106 = *(v0 + 8320);
      v107 = *(v0 + 8296);
      v108 = *(v0 + 8288);
      v109 = *(v0 + 8280);
      v110 = *(v0 + 8256);
      v111 = *(v0 + 8248);
      v112 = *(v0 + 8224);
      v131 = *(v0 + 8200);
      v132 = *(v0 + 8176);
      v133 = *(v0 + 8168);
      v134 = *(v0 + 8160);
      v135 = *(v0 + 8152);
      v136 = *(v0 + 8144);
      v137 = *(v0 + 8136);
      v140 = *(v0 + 8128);
      v143 = *(v0 + 8120);
      v146 = *(v0 + 8112);

      v113 = *(v0 + 8);

      return v113();
    }

    v74 = *(v0 + 8256);
    (*(*(v0 + 8272) + 16))(*(v0 + 8288), *(v0 + 8296), *(v0 + 8264));
    MLS.Group.Group.ResurrectionInput.init(replaceExpired:)();
    v75 = *(v0 + 5720);
    v76 = *(v0 + 5728);
    __swift_project_boxed_opaque_existential_1((v0 + 5696), v75);
    v77 = *(v76 + 176);
    v149 = (v77 + *v77);
    v78 = v77[1];
    v79 = swift_task_alloc();
    *(v0 + 8816) = v79;
    *v79 = v0;
    v79[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v80 = *(v0 + 8256);

    return v149(v0 + 5816, v80, v75, v76);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 8800);
  v4 = *v1;
  *(*v1 + 8808) = v0;

  v5 = *(v2 + 8368);
  if (v0)
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v165 = v0;
  v1 = *(v0 + 8328);
  v2 = *(v0 + 8312);
  v3 = *(v0 + 8304);
  v4 = *(v0 + 6040);
  v5 = *(v0 + 6048);
  __swift_project_boxed_opaque_existential_1((v0 + 6016), v4);
  (*(v5 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6016));
  v150 = *(v0 + 8808);
  v6 = *(v0 + 8376);
  v7 = *(v0 + 8056);
  v8 = *(v0 + 8048);
  v9 = *(v0 + 8040);
  swift_beginAccess();
  v10._countAndFlagsBits = 0x534C4D7466697753;
  v10._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v10);
  swift_endAccess();
  outlined init with copy of ServerBag.MLS(v0 + 6096, v0 + 5616);
  outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 3400, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 8400);
    v14 = *(v0 + 8392);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v153 = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v153);
    *(v15 + 12) = 2080;
    v17 = *(v0 + 5640);
    __swift_project_boxed_opaque_existential_1((v0 + 5616), v17);
    v18 = *(v17 - 8);
    v19 = *(v18 + 64) + 15;
    swift_task_alloc();
    (*(v18 + 16))();
    v20 = String.init<A>(describing:)();
    v22 = v21;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v153);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_264F1F000, v11, v12, "SwiftMLSClientCoordinator createGroup resurrected to group { identifier: %s, commitOutput: %s }", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
  }

  v24 = *(v0 + 8072);
  v25 = *(v0 + 8064);
  v26 = *(v0 + 8048);
  v27 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v26, v0 + 3328, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v26, v0 + 3184, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v27(v152, &v153, v25, v24, v0 + 6096);
  if (v150)
  {
    v28 = *(v0 + 8680);
    v29 = *(v0 + 8048);
    v30 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v31 = *(v0 + 7272);
    v32 = Error.readableDescription.getter(*(v0 + 7280), *(v0 + 7288));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v32, v33, v30, v29, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v34 = *(v0 + 7248);
    v35 = Error.readableDescription.getter(*(v0 + 7256), *(v0 + 7264));
    v37 = v36;
    *(v0 + 7224) = 8;
    *(v0 + 7232) = v35;
    *(v0 + 7240) = v36;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v29, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v29, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v38 = 8;
    *(v38 + 8) = v35;
    *(v38 + 16) = v37;
    v45 = (v0 + 6096);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
    v46 = *(v0 + 8360);
    v47 = *(v0 + 8352);
    v48 = *(v0 + 8328);
    v49 = *(v0 + 8320);
    v50 = *(v0 + 8296);
    v51 = *(v0 + 8288);
    v52 = *(v0 + 8280);
    v53 = *(v0 + 8256);
    v54 = *(v0 + 8248);
    v55 = *(v0 + 8224);
    v133 = *(v0 + 8200);
    v135 = *(v0 + 8176);
    v136 = *(v0 + 8168);
    v137 = *(v0 + 8160);
    v140 = *(v0 + 8152);
    v142 = *(v0 + 8144);
    v144 = *(v0 + 8136);
    v145 = *(v0 + 8128);
    v147 = *(v0 + 8120);
    v149 = *(v0 + 8112);

    v56 = *(v0 + 8);

    return v56();
  }

  v39 = *(v0 + 8048);
  v40 = *(v0 + 8040);

  outlined destroy of NSObject?(v39, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v39, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v41 = v152[2];
  v146 = v152[1];
  v148 = v152[3];
  v151 = v153;
  v139 = v152[0];
  v141 = *(&v153 + 1);
  v143 = v154;
  v42 = *(*v40 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v39, v0 + 3112, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v39, v0 + 3040, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v42(&v153, v0 + 6096);
  v43 = *(v0 + 8048);
  v44 = *(v0 + 8040);
  v58 = *(&v153 + 1);
  v131 = v154;
  v132 = v153;
  v138 = *(&v154 + 1);
  v59 = v155;
  v60 = *(v0 + 194);

  outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v134 = v58;
  if (v60)
  {
    if (v138 >> 60 == 15)
    {
      v61 = *(v0 + 8680);
      v62 = *(v0 + 8376);
      v63 = *(v0 + 8072);
      v64 = *(v0 + 8048);
      v65 = v41;
      v66 = *(v0 + 8040);
      v67 = v65;
      outlined copy of Data._Representation(v65, v148);
      outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      outlined init with copy of MLS.OutgoingEventState?(v64, v0 + 5056, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v64, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      if (os_log_type_enabled(v68, v69))
      {
        v70 = *(v0 + 8400);
        v71 = *(v0 + 8392);
        v72 = *(v0 + 8072);
        v73 = *(v0 + 8064);
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v152[0] = v75;
        *v74 = 136315394;
        *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v70, v152);
        *(v74 + 12) = 2080;
        *(v74 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v72, v152);
        _os_log_impl(&dword_264F1F000, v68, v69, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, group: %s }", v74, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v75, -1, -1);
        MEMORY[0x266755550](v74, -1, -1);
      }

      lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
      swift_allocError();
      *v76 = 19;
      *(v76 + 8) = 0;
      *(v76 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v67, v148);

      outlined consume of Data._Representation(v143, *(&v143 + 1));
      outlined consume of Data._Representation(v132, v134);
      outlined consume of Data._Representation(v59, *(&v59 + 1));

      outlined consume of Data._Representation(v67, v148);
      v45 = (v0 + 6096);
      goto LABEL_7;
    }

    v77 = (v0 + 16);
    v90 = *(v0 + 8400);
    v130 = *(v0 + 8392);
    v91 = *(v0 + 8224);
    v92 = *(v0 + 8216);
    v93 = *(v0 + 8208);
    v94 = *(v0 + 8080);
    v95 = *(v0 + 8056);
    outlined copy of Data._Representation(v41, v148);

    UUID.init()();
    v96 = UUID.uuidString.getter();
    v126 = v97;
    v128 = v96;
    (*(v92 + 8))(v91, v93);
    swift_beginAccess();
    v98 = *(v95 + 16);
    v88 = v148;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7656, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v100 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v99);

    *(v0 + 48) = *(v0 + 7560);
    *(v0 + 16) = v130;
    *(v0 + 24) = v90;
    *(v0 + 32) = v128;
    *(v0 + 40) = v126;
    *(v0 + 64) = v98;
    *(v0 + 72) = v139;
    *(v0 + 80) = v146;
    *(v0 + 88) = v41;
    *(v0 + 96) = v148;
    *(v0 + 104) = v151;
    *(v0 + 112) = v141;
    *(v0 + 120) = v143;
    *(v0 + 136) = v100;
    *(v0 + 144) = v132;
    *(v0 + 152) = v58;
    *(v0 + 160) = v131;
    *(v0 + 168) = v138;
    *(v0 + 176) = v59;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(v0 + 16);
  }

  else
  {
    v77 = (v0 + 1672);
    v78 = *(v0 + 8400);
    v129 = *(v0 + 8392);
    v79 = *(v0 + 8224);
    v80 = *(v0 + 8216);
    v81 = *(v0 + 8208);
    v82 = *(v0 + 8080);
    v83 = v41;
    v84 = *(v0 + 8056);
    outlined copy of Data._Representation(v83, v148);

    UUID.init()();
    v85 = UUID.uuidString.getter();
    v125 = v86;
    v127 = v85;
    (*(v80 + 8))(v79, v81);
    swift_beginAccess();
    v87 = *(v84 + 16);
    v41 = v83;
    v88 = v148;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v89 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v82);

    *(v0 + 1704) = *(v0 + 7560);
    *(v0 + 1672) = v129;
    *(v0 + 1680) = v78;
    *(v0 + 1688) = v127;
    *(v0 + 1696) = v125;
    *(v0 + 1720) = v87;
    *(v0 + 1728) = v139;
    *(v0 + 1736) = v146;
    *(v0 + 1744) = v41;
    *(v0 + 1752) = v148;
    *(v0 + 1760) = v151;
    *(v0 + 1768) = v141;
    *(v0 + 1776) = v143;
    *(v0 + 1792) = v89;
    *(v0 + 1800) = v132;
    *(v0 + 1808) = v58;
    *(v0 + 1816) = v131;
    *(v0 + 1824) = v138;
    *(v0 + 1832) = v59;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi7_(v0 + 1672);
  }

  v101 = v77[9];
  v161 = v77[8];
  v162 = v101;
  v163 = v77[10];
  v164 = *(v77 + 176);
  v102 = v77[5];
  v157 = v77[4];
  v158 = v102;
  v103 = v77[7];
  v159 = v77[6];
  v160 = v103;
  v104 = v77[1];
  v153 = *v77;
  v154 = v104;
  v105 = v77[3];
  v155 = v77[2];
  v156 = v105;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6096));
  v106 = v162;
  *(v0 + 1616) = v161;
  *(v0 + 1632) = v106;
  *(v0 + 1648) = v163;
  *(v0 + 1664) = v164;
  v107 = v158;
  *(v0 + 1552) = v157;
  *(v0 + 1568) = v107;
  v108 = v160;
  *(v0 + 1584) = v159;
  *(v0 + 1600) = v108;
  v109 = v154;
  *(v0 + 1488) = v153;
  *(v0 + 1504) = v109;
  v110 = v156;
  *(v0 + 1520) = v155;
  *(v0 + 1536) = v110;
  *(v0 + 8856) = v88;
  *(v0 + 8848) = v41;
  v111 = *(v0 + 8680);
  v112 = *(v0 + 8400);
  v113 = *(v0 + 8080);
  v114 = *(v0 + 8040);
  v115 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v115;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v116 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v116;
  v117 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v117;
  v118 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v118;
  v119 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v119;
  v120 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v122 = v121;
  v123 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v120;
  *(v0 + 4200) = v122;
  *(v0 + 4208) = v111;
  *(v0 + 4216) = v113;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v123;
  *(v0 + 4240) = v124;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 8816);
  v4 = *v1;
  *(*v1 + 8824) = v0;

  v5 = *(v2 + 8368);
  if (v0)
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v168 = v0;
  v1 = *(v0 + 8296);
  v2 = *(v0 + 8272);
  v3 = *(v0 + 8264);
  v4 = *(v0 + 8256);
  v5 = *(v0 + 8240);
  v6 = *(v0 + 8232);
  v7 = *(v0 + 5840);
  v8 = *(v0 + 5848);
  __swift_project_boxed_opaque_existential_1((v0 + 5816), v7);
  (*(v8 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5816));
  v153 = *(v0 + 8824);
  v9 = *(v0 + 8376);
  v10 = *(v0 + 8056);
  v11 = *(v0 + 8048);
  v12 = *(v0 + 8040);
  swift_beginAccess();
  v13._countAndFlagsBits = 0x534C4D7466697753;
  v13._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v13);
  swift_endAccess();
  outlined init with copy of ServerBag.MLS(v0 + 6096, v0 + 5616);
  outlined init with copy of MLS.OutgoingEventState?(v11, v0 + 3400, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 8400);
    v17 = *(v0 + 8392);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v156 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v156);
    *(v18 + 12) = 2080;
    v20 = *(v0 + 5640);
    __swift_project_boxed_opaque_existential_1((v0 + 5616), v20);
    v21 = *(v20 - 8);
    v22 = *(v21 + 64) + 15;
    swift_task_alloc();
    (*(v21 + 16))();
    v23 = String.init<A>(describing:)();
    v25 = v24;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v156);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_264F1F000, v14, v15, "SwiftMLSClientCoordinator createGroup resurrected to group { identifier: %s, commitOutput: %s }", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v18, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
  }

  v27 = *(v0 + 8072);
  v28 = *(v0 + 8064);
  v29 = *(v0 + 8048);
  v30 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v29, v0 + 3328, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v29, v0 + 3184, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v30(v155, &v156, v28, v27, v0 + 6096);
  if (v153)
  {
    v31 = *(v0 + 8680);
    v32 = *(v0 + 8048);
    v33 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v34 = *(v0 + 7272);
    v35 = Error.readableDescription.getter(*(v0 + 7280), *(v0 + 7288));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v35, v36, v33, v32, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v37 = *(v0 + 7248);
    v38 = Error.readableDescription.getter(*(v0 + 7256), *(v0 + 7264));
    v40 = v39;
    *(v0 + 7224) = 8;
    *(v0 + 7232) = v38;
    *(v0 + 7240) = v39;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v41 = 8;
    *(v41 + 8) = v38;
    *(v41 + 16) = v40;
    v48 = (v0 + 6096);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
    v49 = *(v0 + 8360);
    v50 = *(v0 + 8352);
    v51 = *(v0 + 8328);
    v52 = *(v0 + 8320);
    v53 = *(v0 + 8296);
    v54 = *(v0 + 8288);
    v55 = *(v0 + 8280);
    v56 = *(v0 + 8256);
    v57 = *(v0 + 8248);
    v58 = *(v0 + 8224);
    v136 = *(v0 + 8200);
    v138 = *(v0 + 8176);
    v139 = *(v0 + 8168);
    v140 = *(v0 + 8160);
    v143 = *(v0 + 8152);
    v145 = *(v0 + 8144);
    v147 = *(v0 + 8136);
    v148 = *(v0 + 8128);
    v150 = *(v0 + 8120);
    v152 = *(v0 + 8112);

    v59 = *(v0 + 8);

    return v59();
  }

  v42 = *(v0 + 8048);
  v43 = *(v0 + 8040);

  outlined destroy of NSObject?(v42, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v42, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v44 = v155[2];
  v149 = v155[1];
  v151 = v155[3];
  v154 = v156;
  v142 = v155[0];
  v144 = *(&v156 + 1);
  v146 = v157;
  v45 = *(*v43 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v42, v0 + 3112, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v42, v0 + 3040, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v45(&v156, v0 + 6096);
  v46 = *(v0 + 8048);
  v47 = *(v0 + 8040);
  v61 = *(&v156 + 1);
  v134 = v157;
  v135 = v156;
  v141 = *(&v157 + 1);
  v62 = v158;
  v63 = *(v0 + 194);

  outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v137 = v61;
  if (v63)
  {
    if (v141 >> 60 == 15)
    {
      v64 = *(v0 + 8680);
      v65 = *(v0 + 8376);
      v66 = *(v0 + 8072);
      v67 = *(v0 + 8048);
      v68 = v44;
      v69 = *(v0 + 8040);
      v70 = v68;
      outlined copy of Data._Representation(v68, v151);
      outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      outlined init with copy of MLS.OutgoingEventState?(v67, v0 + 5056, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v67, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      if (os_log_type_enabled(v71, v72))
      {
        v73 = *(v0 + 8400);
        v74 = *(v0 + 8392);
        v75 = *(v0 + 8072);
        v76 = *(v0 + 8064);
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v155[0] = v78;
        *v77 = 136315394;
        *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, v155);
        *(v77 + 12) = 2080;
        *(v77 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v75, v155);
        _os_log_impl(&dword_264F1F000, v71, v72, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, group: %s }", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v78, -1, -1);
        MEMORY[0x266755550](v77, -1, -1);
      }

      lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
      swift_allocError();
      *v79 = 19;
      *(v79 + 8) = 0;
      *(v79 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v70, v151);

      outlined consume of Data._Representation(v146, *(&v146 + 1));
      outlined consume of Data._Representation(v135, v137);
      outlined consume of Data._Representation(v62, *(&v62 + 1));

      outlined consume of Data._Representation(v70, v151);
      v48 = (v0 + 6096);
      goto LABEL_7;
    }

    v80 = (v0 + 16);
    v93 = *(v0 + 8400);
    v133 = *(v0 + 8392);
    v94 = *(v0 + 8224);
    v95 = *(v0 + 8216);
    v96 = *(v0 + 8208);
    v97 = *(v0 + 8080);
    v98 = *(v0 + 8056);
    outlined copy of Data._Representation(v44, v151);

    UUID.init()();
    v99 = UUID.uuidString.getter();
    v129 = v100;
    v131 = v99;
    (*(v95 + 8))(v94, v96);
    swift_beginAccess();
    v101 = *(v98 + 16);
    v91 = v151;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7656, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v103 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v102);

    *(v0 + 48) = *(v0 + 7560);
    *(v0 + 16) = v133;
    *(v0 + 24) = v93;
    *(v0 + 32) = v131;
    *(v0 + 40) = v129;
    *(v0 + 64) = v101;
    *(v0 + 72) = v142;
    *(v0 + 80) = v149;
    *(v0 + 88) = v44;
    *(v0 + 96) = v151;
    *(v0 + 104) = v154;
    *(v0 + 112) = v144;
    *(v0 + 120) = v146;
    *(v0 + 136) = v103;
    *(v0 + 144) = v135;
    *(v0 + 152) = v61;
    *(v0 + 160) = v134;
    *(v0 + 168) = v141;
    *(v0 + 176) = v62;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(v0 + 16);
  }

  else
  {
    v80 = (v0 + 1672);
    v81 = *(v0 + 8400);
    v132 = *(v0 + 8392);
    v82 = *(v0 + 8224);
    v83 = *(v0 + 8216);
    v84 = *(v0 + 8208);
    v85 = *(v0 + 8080);
    v86 = v44;
    v87 = *(v0 + 8056);
    outlined copy of Data._Representation(v86, v151);

    UUID.init()();
    v88 = UUID.uuidString.getter();
    v128 = v89;
    v130 = v88;
    (*(v83 + 8))(v82, v84);
    swift_beginAccess();
    v90 = *(v87 + 16);
    v44 = v86;
    v91 = v151;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v92 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v85);

    *(v0 + 1704) = *(v0 + 7560);
    *(v0 + 1672) = v132;
    *(v0 + 1680) = v81;
    *(v0 + 1688) = v130;
    *(v0 + 1696) = v128;
    *(v0 + 1720) = v90;
    *(v0 + 1728) = v142;
    *(v0 + 1736) = v149;
    *(v0 + 1744) = v44;
    *(v0 + 1752) = v151;
    *(v0 + 1760) = v154;
    *(v0 + 1768) = v144;
    *(v0 + 1776) = v146;
    *(v0 + 1792) = v92;
    *(v0 + 1800) = v135;
    *(v0 + 1808) = v61;
    *(v0 + 1816) = v134;
    *(v0 + 1824) = v141;
    *(v0 + 1832) = v62;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi7_(v0 + 1672);
  }

  v104 = v80[9];
  v164 = v80[8];
  v165 = v104;
  v166 = v80[10];
  v167 = *(v80 + 176);
  v105 = v80[5];
  v160 = v80[4];
  v161 = v105;
  v106 = v80[7];
  v162 = v80[6];
  v163 = v106;
  v107 = v80[1];
  v156 = *v80;
  v157 = v107;
  v108 = v80[3];
  v158 = v80[2];
  v159 = v108;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6096));
  v109 = v165;
  *(v0 + 1616) = v164;
  *(v0 + 1632) = v109;
  *(v0 + 1648) = v166;
  *(v0 + 1664) = v167;
  v110 = v161;
  *(v0 + 1552) = v160;
  *(v0 + 1568) = v110;
  v111 = v163;
  *(v0 + 1584) = v162;
  *(v0 + 1600) = v111;
  v112 = v157;
  *(v0 + 1488) = v156;
  *(v0 + 1504) = v112;
  v113 = v159;
  *(v0 + 1520) = v158;
  *(v0 + 1536) = v113;
  *(v0 + 8856) = v91;
  *(v0 + 8848) = v44;
  v114 = *(v0 + 8680);
  v115 = *(v0 + 8400);
  v116 = *(v0 + 8080);
  v117 = *(v0 + 8040);
  v118 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v118;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v119 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v119;
  v120 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v120;
  v121 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v121;
  v122 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v122;
  v123 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v125 = v124;
  v126 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v123;
  *(v0 + 4200) = v125;
  *(v0 + 4208) = v114;
  *(v0 + 4216) = v116;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v126;
  *(v0 + 4240) = v127;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 8832);
  v4 = *v1;
  *(*v1 + 8840) = v0;

  v5 = *(v2 + 8688);
  v6 = *(v2 + 8368);

  if (v0)
  {
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v133 = v0;
  v1 = *(v0 + 8056);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 5376), v0 + 5536);
  swift_beginAccess();
  v2._countAndFlagsBits = 0x534C4D7466697753;
  v2._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v2);
  swift_endAccess();
  v124 = *(v0 + 8840);
  v3 = *(v0 + 8376);
  v4 = *(v0 + 8048);
  v5 = *(v0 + 8040);
  outlined init with copy of ServerBag.MLS(v0 + 5536, v0 + 5176);
  outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 4768, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 8400);
    v9 = *(v0 + 8392);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v127 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v127);
    *(v10 + 12) = 2080;
    v12 = *(v0 + 5200);
    __swift_project_boxed_opaque_existential_1((v0 + 5176), v12);
    v13 = *(v12 - 8);
    v14 = *(v13 + 64) + 15;
    swift_task_alloc();
    (*(v13 + 16))();
    v15 = String.init<A>(describing:)();
    v17 = v16;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5176));
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v127);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v6, v7, "SwiftMLSClientCoordinator createGroup added KeyPackages to group { identifier: %s, commitOutput: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5176));
  }

  v19 = *(v0 + 8072);
  v20 = *(v0 + 8064);
  v21 = *(v0 + 8048);
  v22 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v21, v0 + 4480, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v21, v0 + 4408, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v22(v126, &v127, v20, v19, v0 + 5536);
  if (v124)
  {
    v23 = *(v0 + 8680);
    v24 = *(v0 + 8048);
    v25 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v26 = *(v0 + 6648);
    v27 = Error.readableDescription.getter(*(v0 + 6656), *(v0 + 6664));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v27, v28, v25, v24, "SwiftMLSClientCoordinator createGroup add member commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v29 = *(v0 + 6600);
    v30 = Error.readableDescription.getter(*(v0 + 6608), *(v0 + 6616));
    v32 = v31;
    *(v0 + 6504) = 8;
    *(v0 + 6512) = v30;
    *(v0 + 6520) = v31;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v33 = 8;
    *(v33 + 8) = v30;
    *(v33 + 16) = v32;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
    v58 = *(v0 + 8360);
    v59 = *(v0 + 8352);
    v60 = *(v0 + 8328);
    v61 = *(v0 + 8320);
    v62 = *(v0 + 8296);
    v63 = *(v0 + 8288);
    v64 = *(v0 + 8280);
    v65 = *(v0 + 8256);
    v66 = *(v0 + 8248);
    v67 = *(v0 + 8224);
    v105 = *(v0 + 8200);
    v107 = *(v0 + 8176);
    v109 = *(v0 + 8168);
    v111 = *(v0 + 8160);
    v113 = *(v0 + 8152);
    v115 = *(v0 + 8144);
    v117 = *(v0 + 8136);
    v119 = *(v0 + 8128);
    v121 = *(v0 + 8120);
    v123 = *(v0 + 8112);

    v68 = *(v0 + 8);

    return v68();
  }

  v34 = *(v0 + 8048);
  v35 = *(v0 + 8040);

  outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v118 = v126[1];
  v120 = v126[2];
  v122 = v126[3];
  v125 = v126[0];
  v36 = v127;
  v112 = v128;
  v114 = v129;
  v116 = v130;
  v37 = *(*v35 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v34, v0 + 3832, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v34, v0 + 3688, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v37(&v127, v0 + 5536);
  v103 = v36;
  v104 = v127;
  v106 = v128;
  v39 = v129;
  v38 = v130;
  v41 = v131;
  v40 = v132;
  v42 = *(v0 + 8048);
  v43 = *(v0 + 8040);

  outlined destroy of NSObject?(v42, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v42, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v108 = v41;
  v110 = v40;
  if (v38 >> 60 == 15)
  {
    v44 = *(v0 + 8680);
    v45 = *(v0 + 8376);
    v46 = *(v0 + 8072);
    v47 = *(v0 + 8048);
    v48 = *(v0 + 8040);
    outlined copy of Data._Representation(v120, v122);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined init with copy of MLS.OutgoingEventState?(v47, v0 + 2968, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v47, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v0 + 8400);
      v52 = *(v0 + 8392);
      v53 = *(v0 + 8072);
      v54 = *(v0 + 8064);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v127 = v56;
      *v55 = 136315394;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v127);
      *(v55 + 12) = 2080;
      *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, &v127);
      _os_log_impl(&dword_264F1F000, v49, v50, "SwiftMLSClientCoordinator createGroup add member commit yielded unexpected output { identifier: %s, group: %s }", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v56, -1, -1);
      MEMORY[0x266755550](v55, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v57 = 19;
    *(v57 + 8) = 0;
    *(v57 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v120, v122);

    outlined consume of Data._Representation(v114, v116);
    outlined consume of Data._Representation(v104, v106);
    outlined consume of Data._Representation(v108, v110);

    outlined consume of Data._Representation(v120, v122);
    goto LABEL_10;
  }

  v100 = *(v0 + 8400);
  v101 = *(v0 + 8392);
  v70 = *(v0 + 8224);
  v71 = *(v0 + 8216);
  v72 = *(v0 + 8208);
  v73 = *(v0 + 8080);
  v102 = v39;
  v74 = *(v0 + 8056);

  outlined copy of Data._Representation(v120, v122);
  UUID.init()();
  v75 = UUID.uuidString.getter();
  v98 = v76;
  v99 = v75;
  (*(v71 + 8))(v70, v72);
  swift_beginAccess();
  v77 = *(v74 + 16);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  v78 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v73);

  *(v0 + 600) = *(v0 + 7560);
  *(v0 + 568) = v101;
  *(v0 + 576) = v100;
  *(v0 + 584) = v99;
  *(v0 + 592) = v98;
  *(v0 + 616) = v77;
  *(v0 + 624) = v125;
  *(v0 + 632) = v118;
  *(v0 + 640) = v120;
  *(v0 + 648) = v122;
  *(v0 + 656) = v103;
  *(v0 + 664) = v112;
  *(v0 + 672) = v114;
  *(v0 + 680) = v116;
  *(v0 + 688) = v78;
  *(v0 + 696) = v104;
  *(v0 + 704) = v106;
  *(v0 + 712) = v102;
  *(v0 + 720) = v38;
  *(v0 + 728) = v41;
  *(v0 + 736) = v110;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi_(v0 + 568);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5536));
  v79 = *(v0 + 712);
  *(v0 + 1616) = *(v0 + 696);
  *(v0 + 1632) = v79;
  *(v0 + 1648) = *(v0 + 728);
  *(v0 + 1664) = *(v0 + 744);
  v80 = *(v0 + 648);
  *(v0 + 1552) = *(v0 + 632);
  *(v0 + 1568) = v80;
  v81 = *(v0 + 680);
  *(v0 + 1584) = *(v0 + 664);
  *(v0 + 1600) = v81;
  v82 = *(v0 + 584);
  *(v0 + 1488) = *(v0 + 568);
  *(v0 + 1504) = v82;
  v83 = *(v0 + 616);
  *(v0 + 1520) = *(v0 + 600);
  *(v0 + 1536) = v83;
  *(v0 + 8856) = v122;
  *(v0 + 8848) = v120;
  v84 = *(v0 + 8680);
  v85 = *(v0 + 8400);
  v86 = *(v0 + 8080);
  v87 = *(v0 + 8040);
  v88 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v88;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v89 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v89;
  v90 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v90;
  v91 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v91;
  v92 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v92;
  v93 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v95 = v94;
  v96 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v93;
  *(v0 + 4200) = v95;
  *(v0 + 4208) = v84;
  *(v0 + 4216) = v86;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v96;
  *(v0 + 4240) = v97;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[1009];
  v2 = v0[1005];
  outlined init with copy of ServerBag.MLS((v0 + 712), (v0 + 747));
  v0[1108] = *(v2 + 80);
  v0[1109] = *(v2 + 88);
  v3 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[1110] = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v4 = (v2 + v3);
  v0[1111] = *v4;
  v0[1112] = v4[1];
  v5 = v0[750];
  v6 = v0[751];
  __swift_project_boxed_opaque_existential_1(v0 + 747, v5);
  v7 = *(v6 + 32);

  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[1113] = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return v11(v5, v6);
}

{
  v1 = v0[750];
  v2 = v0[751];
  __swift_project_boxed_opaque_existential_1(v0 + 747, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[1116] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return v7(v1, v2);
}

{
  v1 = *(v0 + 8912);
  v2 = *(v0 + 8072);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));

  v3 = *(v0 + 8400);
  v4 = *(v0 + 8392);
  v5 = *(v0 + 8368);
  v6 = *(v0 + 8040);
  swift_getErrorValue();
  v7 = *(v0 + 6288);
  v8 = Error.readableDescription.getter(*(v0 + 6296), *(v0 + 6304));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v8, v9, v6, v4, v3, "SwiftMLSClientCoordinator createGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v10 = *(v0 + 6240);
  v11 = Error.readableDescription.getter(*(v0 + 6248), *(v0 + 6256));
  *(v0 + 9072) = v11;
  *(v0 + 9080) = v12;
  *(v0 + 7440) = 9;
  *(v0 + 7448) = v11;
  *(v0 + 7456) = v12;
  *(v0 + 9088) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v5, 0);
}

{
  v2 = *(*v1 + 8944);
  v5 = *v1;
  *(*v1 + 8952) = v0;

  if (v0)
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[1025];
  v2 = v0[1024];
  v3 = v0[1023];
  v0[1120] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[1121] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[750];
  v6 = v0[751];
  __swift_project_boxed_opaque_existential_1(v0 + 747, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[1122] = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return v11(v5, v6);
}

{
  v1 = v0[750];
  v2 = v0[751];
  __swift_project_boxed_opaque_existential_1(v0 + 747, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[1125] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return v7(v1, v2);
}

{
  v1 = *(v0 + 8952);
  v2 = *(v0 + 8072);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));

  v3 = *(v0 + 8400);
  v4 = *(v0 + 8392);
  v5 = *(v0 + 8368);
  v6 = *(v0 + 8040);
  swift_getErrorValue();
  v7 = *(v0 + 6288);
  v8 = Error.readableDescription.getter(*(v0 + 6296), *(v0 + 6304));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v8, v9, v6, v4, v3, "SwiftMLSClientCoordinator createGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v10 = *(v0 + 6240);
  v11 = Error.readableDescription.getter(*(v0 + 6248), *(v0 + 6256));
  *(v0 + 9072) = v11;
  *(v0 + 9080) = v12;
  *(v0 + 7440) = 9;
  *(v0 + 7448) = v11;
  *(v0 + 7456) = v12;
  *(v0 + 9088) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v5, 0);
}

{
  v1 = *(v0 + 9008);
  v2 = *(v0 + 8992);
  v3 = *(v0 + 8968);
  v4 = *(v0 + 8960);
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = *(v0 + 8992);
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 8984);
  }

  v7 = *(v0 + 8072);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v8 = *(v0 + 8400);
  v9 = *(v0 + 8392);
  v10 = *(v0 + 8368);
  v11 = *(v0 + 8040);
  swift_getErrorValue();
  v12 = *(v0 + 6288);
  v13 = Error.readableDescription.getter(*(v0 + 6296), *(v0 + 6304));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v13, v14, v11, v9, v8, "SwiftMLSClientCoordinator createGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v15 = *(v0 + 6240);
  v16 = Error.readableDescription.getter(*(v0 + 6248), *(v0 + 6256));
  *(v0 + 9072) = v16;
  *(v0 + 9080) = v17;
  *(v0 + 7440) = 9;
  *(v0 + 7448) = v16;
  *(v0 + 7456) = v17;
  *(v0 + 9088) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v10, 0);
}

{
  v1 = *(v0 + 9064);
  v2 = *(v0 + 9056);
  v3 = *(v0 + 9016);
  v4 = *(v0 + 8992);
  v5 = *(v0 + 8968);
  v6 = *(v0 + 8960);
  v19 = v6;
  v20 = v5;
  v7 = *(v0 + 8936);
  v18 = v7;
  v8 = *(v0 + 8920);
  v9 = *(v0 + 8400);
  v22 = *(v0 + 8368);
  v10 = *(v0 + 8072);
  v11 = *(v0 + 8064);
  v21 = *(v0 + 8040);
  if (v3 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 9016);
  }

  if (v3 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 9024);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 8992);
  }

  if (v4 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 8984);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v8;
  }

  *(v0 + 1856) = v11;
  *(v0 + 1864) = v10;
  *(v0 + 1872) = v16;
  *(v0 + 1880) = v16;
  *(v0 + 1888) = v7;
  *(v0 + 1896) = v6;
  *(v0 + 1904) = v5;
  *(v0 + 1912) = v15;
  *(v0 + 1920) = v14;
  *(v0 + 1928) = v13;
  *(v0 + 1936) = v12;
  *(v0 + 1944) = v1;
  *(v0 + 1952) = v2;
  outlined init with copy of MLS.Group(v0 + 1856, v0 + 2064);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));
  *(v0 + 2272) = v11;
  *(v0 + 2280) = v10;
  *(v0 + 2288) = v16;
  *(v0 + 2296) = v16;
  *(v0 + 2304) = v18;
  *(v0 + 2312) = v19;
  *(v0 + 2320) = v20;
  *(v0 + 2328) = v15;
  *(v0 + 2336) = v14;
  *(v0 + 2344) = v13;
  *(v0 + 2352) = v12;
  *(v0 + 2360) = v1;
  *(v0 + 2368) = v2;
  outlined destroy of MLS.Group(v0 + 2272);

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v22, 0);
}

{
  v14 = v0;
  v1 = v0[1050];
  v2 = v0[1047];
  v3 = v0[1005];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[1050];
    v7 = v0[1049];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v13);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator createGroup sending event { identifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = v0[1050];
  v11 = v0[1005];
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  outlined init with copy of MLS.OutgoingEventState?((v0 + 186), (v0 + 25), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = *(v0 + 9048);
  v2 = *(v0 + 9016);
  v3 = *(v0 + 8992);
  v4 = *(v0 + 8968);
  v5 = *(v0 + 8960);
  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = *(v0 + 9016);
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 9024);
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = *(v0 + 8992);
  }

  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 8984);
  }

  v10 = *(v0 + 8072);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v11 = *(v0 + 8400);
  v12 = *(v0 + 8392);
  v13 = *(v0 + 8368);
  v14 = *(v0 + 8040);
  swift_getErrorValue();
  v15 = *(v0 + 6288);
  v16 = Error.readableDescription.getter(*(v0 + 6296), *(v0 + 6304));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v16, v17, v14, v12, v11, "SwiftMLSClientCoordinator createGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v18 = *(v0 + 6240);
  v19 = Error.readableDescription.getter(*(v0 + 6248), *(v0 + 6256));
  *(v0 + 9072) = v19;
  *(v0 + 9080) = v20;
  *(v0 + 7440) = 9;
  *(v0 + 7448) = v19;
  *(v0 + 7456) = v20;
  *(v0 + 9088) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v13, 0);
}

{
  v1 = v0[1136];
  v2 = v0[1135];
  v3 = v0[1134];
  v4 = v0[1107];
  v5 = v0[1106];
  swift_allocError();
  *v6 = 9;
  *(v6 + 8) = v3;
  *(v6 + 16) = v2;
  outlined consume of Data._Representation(v5, v4);
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v7 = v0[1045];
  v8 = v0[1044];
  v9 = v0[1041];
  v10 = v0[1040];
  v11 = v0[1037];
  v12 = v0[1036];
  v13 = v0[1035];
  v14 = v0[1032];
  v15 = v0[1031];
  v16 = v0[1028];
  v19 = v0[1025];
  v20 = v0[1022];
  v21 = v0[1021];
  v22 = v0[1020];
  v23 = v0[1019];
  v24 = v0[1018];
  v25 = v0[1017];
  v26 = v0[1016];
  v27 = v0[1015];
  v28 = v0[1014];

  v17 = v0[1];

  return v17();
}

{
  v1 = *(*(v0 + 8040) + 96);
  v2 = *(v0 + 1080);
  *(v0 + 512) = *(v0 + 1064);
  *(v0 + 528) = v2;
  *(v0 + 544) = *(v0 + 1096);
  *(v0 + 560) = *(v0 + 1112);
  v3 = *(v0 + 1016);
  *(v0 + 448) = *(v0 + 1000);
  *(v0 + 464) = v3;
  v4 = *(v0 + 1048);
  *(v0 + 480) = *(v0 + 1032);
  *(v0 + 496) = v4;
  v5 = *(v0 + 952);
  *(v0 + 384) = *(v0 + 936);
  *(v0 + 400) = v5;
  v6 = *(v0 + 984);
  *(v0 + 416) = *(v0 + 968);
  *(v0 + 432) = v6;
  v7 = *(v0 + 1904);
  v8 = *(v0 + 1936);
  *(v0 + 2024) = *(v0 + 1920);
  *(v0 + 2040) = v8;
  *(v0 + 2056) = *(v0 + 1952);
  v9 = *(v0 + 1872);
  *(v0 + 1960) = *(v0 + 1856);
  *(v0 + 1976) = v9;
  *(v0 + 1992) = *(v0 + 1888);
  *(v0 + 2008) = v7;
  v10 = *(v0 + 4192);
  v11 = *(v0 + 4208);
  v12 = *(v0 + 4224);
  v13 = *(v0 + 4240);
  *(v0 + 2648) = *(v0 + 4256);
  *(v0 + 2616) = v12;
  *(v0 + 2632) = v13;
  *(v0 + 2584) = v10;
  *(v0 + 2600) = v11;
  *(v0 + 2656) = 1;
  v14 = *(*v1 + 368);
  outlined init with copy of MLS.OutgoingEventState(v0 + 4192, v0 + 3256);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 9096) = v16;
  *v16 = v0;
  v16[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return (v18)(v0 + 384, v0 + 1960, v0 + 2584, 1, 0, 0);
}

{
  v1 = v0[1139];
  v2 = v0[1050];
  v3 = v0[1046];
  v4 = v0[1005];

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v3, 0);
}

{
  v1 = *(v0 + 8048);
  v2 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 3976, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 4048, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[1109];
  v2 = (v0[1005] + v0[1110]);
  v3 = v2[1];
  v0[963] = *v2;
  v0[964] = v3;
  v4 = *(v1 + 104);

  v13 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[1140] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v7 = v0[1129];
  v8 = v0[1109];
  v9 = v0[1108];
  v10 = v0[1009];
  v11 = v0[1008];

  return (v13)(v11, v10, v0 + 963, v7, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 9120);
  v7 = *v1;
  *(*v1 + 9128) = v0;

  v4 = *(v2 + 7712);

  if (v0)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 9104);
  v2 = *(v0 + 8400);
  v3 = *(v0 + 8392);
  v4 = *(v0 + 8368);
  v5 = *(v0 + 8040);
  swift_getErrorValue();
  v6 = *(v0 + 7464);
  v7 = Error.readableDescription.getter(*(v0 + 7472), *(v0 + 7480));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v7, v8, v5, v3, v2, "SwiftMLSClientCoordinator createGroup failed to save event { identifier: %s, error: %s }");

  swift_getErrorValue();
  v9 = *(v0 + 6552);
  v10 = Error.readableDescription.getter(*(v0 + 6560), *(v0 + 6568));
  *(v0 + 9136) = v10;
  *(v0 + 9144) = v11;
  *(v0 + 6576) = 11;
  *(v0 + 6584) = v10;
  *(v0 + 6592) = v11;
  *(v0 + 9152) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v4, 0);
}

{
  v1 = v0[1144];
  v2 = v0[1143];
  v3 = v0[1142];
  v4 = v0[1107];
  v5 = v0[1106];
  swift_allocError();
  *v6 = 11;
  *(v6 + 8) = v3;
  *(v6 + 16) = v2;
  outlined consume of Data._Representation(v5, v4);
  outlined destroy of MLS.Group((v0 + 232));
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v7 = v0[1045];
  v8 = v0[1044];
  v9 = v0[1041];
  v10 = v0[1040];
  v11 = v0[1037];
  v12 = v0[1036];
  v13 = v0[1035];
  v14 = v0[1032];
  v15 = v0[1031];
  v16 = v0[1028];
  v19 = v0[1025];
  v20 = v0[1022];
  v21 = v0[1021];
  v22 = v0[1020];
  v23 = v0[1019];
  v24 = v0[1018];
  v25 = v0[1017];
  v26 = v0[1016];
  v27 = v0[1015];
  v28 = v0[1014];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[1046];
  v2 = v0[1006];
  v3 = v0[1005];

  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v1 = *(v0 + 8400);
  v2 = *(v0 + 8040);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[1010];

  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v2);
  v0[1145] = v3;

  v4 = swift_task_alloc();
  v0[1146] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v5 = v0[1009];
  v6 = v0[1008];
  v7 = v0[1005];

  return MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:)(v6, v5, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 9168);
  v9 = *v1;
  *(*v1 + 9176) = v0;

  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v5 = v2[1145];
    v6 = v2[1050];
    v7 = v2[1005];

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 9128);
  v2 = *(v0 + 8368);
  v3 = *(v0 + 8048);
  v4 = *(v0 + 8040);
  swift_getErrorValue();
  v5 = *(v0 + 6744);
  v6 = Error.readableDescription.getter(*(v0 + 6752), *(v0 + 6760));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v6, v7, v4, v3, "SwiftMLSClientCoordinator createGroup failed to reset group persist state { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = *(v0 + 6792);
  v9 = Error.readableDescription.getter(*(v0 + 6800), *(v0 + 6808));
  *(v0 + 9184) = v9;
  *(v0 + 9192) = v10;
  *(v0 + 6816) = 11;
  *(v0 + 6824) = v9;
  *(v0 + 6832) = v10;
  *(v0 + 9200) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v1 = v0[1150];
  v2 = v0[1149];
  v3 = v0[1148];
  v4 = v0[1107];
  v5 = v0[1106];
  swift_allocError();
  *v6 = 11;
  *(v6 + 8) = v3;
  *(v6 + 16) = v2;
  outlined consume of Data._Representation(v5, v4);
  outlined destroy of MLS.Group((v0 + 232));
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v7 = v0[1045];
  v8 = v0[1044];
  v9 = v0[1041];
  v10 = v0[1040];
  v11 = v0[1037];
  v12 = v0[1036];
  v13 = v0[1035];
  v14 = v0[1032];
  v15 = v0[1031];
  v16 = v0[1028];
  v19 = v0[1025];
  v20 = v0[1022];
  v21 = v0[1021];
  v22 = v0[1020];
  v23 = v0[1019];
  v24 = v0[1018];
  v25 = v0[1017];
  v26 = v0[1016];
  v27 = v0[1015];
  v28 = v0[1014];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[1050];
  v2 = v0[1046];
  v3 = v0[1005];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v41 = v0;
  v1 = *(v0 + 8400);
  v2 = *(v0 + 8376);
  v3 = *(v0 + 8088);
  v4 = *(v0 + 8040);
  *(v0 + 2528) = *(v0 + 1904);
  *(v0 + 2544) = *(v0 + 1920);
  *(v0 + 2560) = *(v0 + 1936);
  *(v0 + 2576) = *(v0 + 1952);
  *(v0 + 2480) = *(v0 + 1856);
  *(v0 + 2496) = *(v0 + 1872);
  *(v0 + 2512) = *(v0 + 1888);
  swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v3 + 48);
  *(v0 + 2392) = *(v3 + 32);
  *(v0 + 2408) = v6;
  *(v0 + 2376) = v5;
  v7 = *(v3 + 64);
  v8 = *(v3 + 80);
  v9 = *(v3 + 96);
  *(v0 + 2472) = *(v3 + 112);
  *(v0 + 2440) = v8;
  *(v0 + 2456) = v9;
  *(v0 + 2424) = v7;
  v10 = *(v0 + 2544);
  v11 = *(v0 + 2560);
  v12 = *(v0 + 2528);
  *(v3 + 112) = *(v0 + 2576);
  *(v3 + 80) = v10;
  *(v3 + 96) = v11;
  *(v3 + 64) = v12;
  v13 = *(v0 + 2480);
  v14 = *(v0 + 2512);
  *(v3 + 32) = *(v0 + 2496);
  *(v3 + 48) = v14;
  *(v3 + 16) = v13;
  outlined init with copy of MLS.Group(v0 + 1856, v0 + 2168);
  outlined destroy of NSObject?(v0 + 2376, &_s15SecureMessaging3MLSO5GroupVSgMd, &_s15SecureMessaging3MLSO5GroupVSgMR);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 8400);
    v18 = *(v0 + 8392);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v40);
    _os_log_impl(&dword_264F1F000, v15, v16, "SwiftMLSClientCoordinator createGroup returning from queue operation { identifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266755550](v20, -1, -1);
    MEMORY[0x266755550](v19, -1, -1);
  }

  v21 = *(v0 + 1632);
  *(v0 + 1432) = *(v0 + 1616);
  *(v0 + 1448) = v21;
  *(v0 + 1464) = *(v0 + 1648);
  *(v0 + 1480) = *(v0 + 1664);
  v22 = *(v0 + 1568);
  *(v0 + 1368) = *(v0 + 1552);
  *(v0 + 1384) = v22;
  v23 = *(v0 + 1600);
  *(v0 + 1400) = *(v0 + 1584);
  *(v0 + 1416) = v23;
  v24 = *(v0 + 1504);
  *(v0 + 1304) = *(v0 + 1488);
  *(v0 + 1320) = v24;
  v25 = *(v0 + 1536);
  *(v0 + 1336) = *(v0 + 1520);
  *(v0 + 1352) = v25;
  v26 = _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v0 + 1304);
  v28 = *(v0 + 8040);
  if (v26 == 9)
  {
    destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 1304, v27);
    v29 = *(*v28 + 344);
    v39 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    *(v0 + 9248) = v31;
    *v31 = v0;
    v31[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v32 = *(v0 + 8040);
    v33 = v0 + 7104;
  }

  else
  {
    v34 = *(*v28 + 344);
    v39 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 9232) = v36;
    *v36 = v0;
    v36[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v37 = *(v0 + 8040);
    v33 = v0 + 7080;
  }

  return v39(v33, v0 + 5696);
}

{
  v1 = *(v0 + 9176);
  v2 = *(v0 + 9160);
  v3 = *(v0 + 8400);
  v4 = *(v0 + 8392);
  v5 = *(v0 + 8368);
  v6 = *(v0 + 8040);

  swift_getErrorValue();
  v7 = *(v0 + 6864);
  v8 = Error.readableDescription.getter(*(v0 + 6872), *(v0 + 6880));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v8, v9, v6, v4, v3, "SwiftMLSClientCoordinator createGroup failed to save pending members { identifier: %s, error: %s }");

  swift_getErrorValue();
  v10 = *(v0 + 6912);
  v11 = Error.readableDescription.getter(*(v0 + 6920), *(v0 + 6928));
  *(v0 + 9208) = v11;
  *(v0 + 9216) = v12;
  *(v0 + 6936) = 11;
  *(v0 + 6944) = v11;
  *(v0 + 6952) = v12;
  *(v0 + 9224) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v5, 0);
}

{
  v1 = v0[1153];
  v2 = v0[1152];
  v3 = v0[1151];
  v4 = v0[1107];
  v5 = v0[1106];
  swift_allocError();
  *v6 = 11;
  *(v6 + 8) = v3;
  *(v6 + 16) = v2;
  outlined consume of Data._Representation(v5, v4);
  outlined destroy of MLS.Group((v0 + 232));
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v7 = v0[1045];
  v8 = v0[1044];
  v9 = v0[1041];
  v10 = v0[1040];
  v11 = v0[1037];
  v12 = v0[1036];
  v13 = v0[1035];
  v14 = v0[1032];
  v15 = v0[1031];
  v16 = v0[1028];
  v19 = v0[1025];
  v20 = v0[1022];
  v21 = v0[1021];
  v22 = v0[1020];
  v23 = v0[1019];
  v24 = v0[1018];
  v25 = v0[1017];
  v26 = v0[1016];
  v27 = v0[1015];
  v28 = v0[1014];

  v17 = v0[1];

  return v17();
}

{
  v2 = *v1;
  v3 = *(*v1 + 9232);
  v4 = *v1;
  *(*v1 + 9240) = v0;

  v5 = *(v2 + 8368);
  if (v0)
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 9248);
  v4 = *v1;
  *(*v1 + 9256) = v0;

  v5 = *(v2 + 8368);
  if (v0)
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 8856);
  v2 = *(v0 + 8848);
  outlined destroy of NSObject?(v0 + 1488, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  result = outlined destroy of MLS.Group(v0 + 1856);
  v4 = *(v0 + 7112);
  v5 = __CFADD__(v4, 1);
  v6 = (v4 + 1);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v0 + 8032);
    *v7 = v6;
    *(v7 + 8) = v6;
    *(v7 + 16) = 1;
    *(v7 + 24) = *(v0 + 4192);
    v8 = *(v0 + 4208);
    v9 = *(v0 + 4224);
    v10 = *(v0 + 4240);
    *(v7 + 88) = *(v0 + 4256);
    *(v7 + 72) = v10;
    *(v7 + 56) = v9;
    *(v7 + 40) = v8;
    *(v7 + 96) = 0;
    v11 = *(v0 + 8360);
    v12 = *(v0 + 8352);
    v13 = *(v0 + 8328);
    v14 = *(v0 + 8320);
    v15 = *(v0 + 8296);
    v16 = *(v0 + 8288);
    v17 = *(v0 + 8280);
    v18 = *(v0 + 8256);
    v19 = *(v0 + 8248);
    v21 = *(v0 + 8224);
    v22 = *(v0 + 8200);
    v23 = *(v0 + 8176);
    v24 = *(v0 + 8168);
    v25 = *(v0 + 8160);
    v26 = *(v0 + 8152);
    v27 = *(v0 + 8144);
    v28 = *(v0 + 8136);
    v29 = *(v0 + 8128);
    v30 = *(v0 + 8120);
    v31 = *(v0 + 8112);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v20 = *(v0 + 8);

    return v20();
  }

  return result;
}

{
  v1 = *(v0 + 8856);
  v2 = *(v0 + 8848);
  outlined destroy of NSObject?(v0 + 1488, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  result = outlined destroy of MLS.Group(v0 + 1856);
  v4 = *(v0 + 7096);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v0 + 8032);
    v8 = *(v0 + 7088);
    *v7 = v8;
    *(v7 + 8) = v8;
    *(v7 + 16) = v6;
    *(v7 + 24) = *(v0 + 4192);
    v9 = *(v0 + 4208);
    v10 = *(v0 + 4224);
    v11 = *(v0 + 4240);
    *(v7 + 88) = *(v0 + 4256);
    *(v7 + 72) = v11;
    *(v7 + 56) = v10;
    *(v7 + 40) = v9;
    *(v7 + 96) = 0;
    v12 = *(v0 + 8360);
    v13 = *(v0 + 8352);
    v14 = *(v0 + 8328);
    v15 = *(v0 + 8320);
    v16 = *(v0 + 8296);
    v17 = *(v0 + 8288);
    v18 = *(v0 + 8280);
    v19 = *(v0 + 8256);
    v20 = *(v0 + 8248);
    v22 = *(v0 + 8224);
    v23 = *(v0 + 8200);
    v24 = *(v0 + 8176);
    v25 = *(v0 + 8168);
    v26 = *(v0 + 8160);
    v27 = *(v0 + 8152);
    v28 = *(v0 + 8144);
    v29 = *(v0 + 8136);
    v30 = *(v0 + 8128);
    v31 = *(v0 + 8120);
    v32 = *(v0 + 8112);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v21 = *(v0 + 8);

    return v21();
  }

  return result;
}

{
  outlined consume of Data?(v0[1053], v0[1054]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v23 = v0[1058];
  v1 = v0[1045];
  v2 = v0[1044];
  v3 = v0[1041];
  v4 = v0[1040];
  v5 = v0[1037];
  v6 = v0[1036];
  v7 = v0[1035];
  v8 = v0[1032];
  v9 = v0[1031];
  v10 = v0[1028];
  v13 = v0[1025];
  v14 = v0[1022];
  v15 = v0[1021];
  v16 = v0[1020];
  v17 = v0[1019];
  v18 = v0[1018];
  v19 = v0[1017];
  v20 = v0[1016];
  v21 = v0[1015];
  v22 = v0[1014];

  v11 = v0[1];

  return v11();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 707);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v23 = v0[1087];
  v1 = v0[1045];
  v2 = v0[1044];
  v3 = v0[1041];
  v4 = v0[1040];
  v5 = v0[1037];
  v6 = v0[1036];
  v7 = v0[1035];
  v8 = v0[1032];
  v9 = v0[1031];
  v10 = v0[1028];
  v13 = v0[1025];
  v14 = v0[1022];
  v15 = v0[1021];
  v16 = v0[1020];
  v17 = v0[1019];
  v18 = v0[1018];
  v19 = v0[1017];
  v20 = v0[1016];
  v21 = v0[1015];
  v22 = v0[1014];

  v11 = v0[1];

  return v11();
}

{
  v44 = v0;
  v1 = v0[1088];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 662);
  v2 = v0[1095];
  v3 = v0[1047];
  v4 = v0[1006];
  v5 = v0[1005];
  outlined init with copy of MLS.OutgoingEventState?(v4, (v0 + 533), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[1050];
    v10 = v0[1049];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v43);
    *(v11 + 12) = 2112;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  swift_getErrorValue();
  v16 = v0[924];
  v17 = Error.readableDescription.getter(v0[925], v0[926]);
  v19 = v18;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v20 = 15;
  *(v20 + 8) = v17;
  *(v20 + 16) = v19;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v21 = v0[1045];
  v22 = v0[1044];
  v23 = v0[1041];
  v24 = v0[1040];
  v25 = v0[1037];
  v26 = v0[1036];
  v27 = v0[1035];
  v28 = v0[1032];
  v29 = v0[1031];
  v30 = v0[1028];
  v33 = v0[1025];
  v34 = v0[1022];
  v35 = v0[1021];
  v36 = v0[1020];
  v37 = v0[1019];
  v38 = v0[1018];
  v39 = v0[1017];
  v40 = v0[1016];
  v41 = v0[1015];
  v42 = v0[1014];

  v31 = v0[1];

  return v31();
}

{
  v44 = v0;
  v1 = v0[1088];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 662);
  v2 = v0[1099];
  v3 = v0[1047];
  v4 = v0[1006];
  v5 = v0[1005];
  outlined init with copy of MLS.OutgoingEventState?(v4, (v0 + 533), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[1050];
    v10 = v0[1049];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v43);
    *(v11 + 12) = 2112;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  swift_getErrorValue();
  v16 = v0[924];
  v17 = Error.readableDescription.getter(v0[925], v0[926]);
  v19 = v18;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v20 = 15;
  *(v20 + 8) = v17;
  *(v20 + 16) = v19;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v21 = v0[1045];
  v22 = v0[1044];
  v23 = v0[1041];
  v24 = v0[1040];
  v25 = v0[1037];
  v26 = v0[1036];
  v27 = v0[1035];
  v28 = v0[1032];
  v29 = v0[1031];
  v30 = v0[1028];
  v33 = v0[1025];
  v34 = v0[1022];
  v35 = v0[1021];
  v36 = v0[1020];
  v37 = v0[1019];
  v38 = v0[1018];
  v39 = v0[1017];
  v40 = v0[1016];
  v41 = v0[1015];
  v42 = v0[1014];

  v31 = v0[1];

  return v31();
}

{
  v2 = *v1;
  v3 = (*v1)[1159];
  v10 = *v1;
  (*v1)[1160] = v0;

  if (v0)
  {
    v4 = v2[1085];
    v5 = v2[1046];
    outlined destroy of NSObject?((v2 + 945), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v5;
  }

  else
  {
    v8 = v2[1046];

    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 737);
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v57 = v0;
  v1 = *(v0 + 9280);
  specialized MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(*(v0 + 7912));
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 9264);
    v4 = *(v0 + 8680);
    v5 = *(v0 + 8168);
    v6 = *(v0 + 8104);
    v7 = *(v0 + 8096);

    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v3(v5, v7);

    v8 = *(v0 + 8376);
    v9 = *(v0 + 8048);
    v10 = *(v0 + 8040);
    outlined init with copy of MLS.OutgoingEventState?(v9, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v9, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 8400);
      v15 = *(v0 + 8392);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v56 = v18;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v56);
      *(v16 + 12) = 2112;
      v19 = v2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_264F1F000, v12, v13, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v16, 0x16u);
      outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v16, -1, -1);
    }

    swift_getErrorValue();
    v21 = *(v0 + 7392);
    v22 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
    v24 = v23;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v25 = 15;
    *(v25 + 8) = v22;
    *(v25 + 16) = v24;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
    v26 = *(v0 + 8360);
    v27 = *(v0 + 8352);
    v28 = *(v0 + 8328);
    v29 = *(v0 + 8320);
    v30 = *(v0 + 8296);
    v31 = *(v0 + 8288);
    v32 = *(v0 + 8280);
    v33 = *(v0 + 8256);
    v34 = *(v0 + 8248);
    v35 = *(v0 + 8224);
    v45 = *(v0 + 8200);
    v46 = *(v0 + 8176);
    v47 = *(v0 + 8168);
    v48 = *(v0 + 8160);
    v49 = *(v0 + 8152);
    v50 = *(v0 + 8144);
    v51 = *(v0 + 8136);
    v52 = *(v0 + 8128);
    v53 = *(v0 + 8120);
    v54 = *(v0 + 8112);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v38 = *(v0 + 8320);

    MLS.Group.Group.CreateNewEraInput.init(packages:)();
    v39 = *(v0 + 5720);
    v40 = *(v0 + 5728);
    __swift_project_boxed_opaque_existential_1((v0 + 5696), v39);
    v41 = *(v40 + 168);
    v55 = (v41 + *v41);
    v42 = v41[1];
    v43 = swift_task_alloc();
    *(v0 + 9288) = v43;
    *v43 = v0;
    v43[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v44 = *(v0 + 8320);

    return v55(v0 + 5936, v44, v39, v40);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 9288);
  v9 = *v1;
  *(*v1 + 9296) = v0;

  if (v0)
  {
    v4 = *(v2 + 8680);
    v5 = *(v2 + 8368);
    outlined destroy of NSObject?(v2 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 8368);
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v169 = v0;
  v153 = *(v0 + 9264);
  v1 = *(v0 + 8320);
  v2 = *(v0 + 8312);
  v3 = *(v0 + 8304);
  v4 = *(v0 + 8168);
  v5 = *(v0 + 8104);
  v6 = *(v0 + 8096);
  v7 = *(v0 + 5960);
  v8 = *(v0 + 5968);
  __swift_project_boxed_opaque_existential_1((v0 + 5936), v7);
  (*(v8 + 8))(v7, v8);
  (*(v2 + 8))(v1, v3);
  v153(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5936));

  v154 = *(v0 + 9296);
  v9 = *(v0 + 8376);
  v10 = *(v0 + 8056);
  v11 = *(v0 + 8048);
  v12 = *(v0 + 8040);
  swift_beginAccess();
  v13._countAndFlagsBits = 0x534C4D7466697753;
  v13._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v13);
  swift_endAccess();
  outlined init with copy of ServerBag.MLS(v0 + 6096, v0 + 5616);
  outlined init with copy of MLS.OutgoingEventState?(v11, v0 + 3400, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 8400);
    v17 = *(v0 + 8392);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v157 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v157);
    *(v18 + 12) = 2080;
    v20 = *(v0 + 5640);
    __swift_project_boxed_opaque_existential_1((v0 + 5616), v20);
    v21 = *(v20 - 8);
    v22 = *(v21 + 64) + 15;
    swift_task_alloc();
    (*(v21 + 16))();
    v23 = String.init<A>(describing:)();
    v25 = v24;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v157);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_264F1F000, v14, v15, "SwiftMLSClientCoordinator createGroup resurrected to group { identifier: %s, commitOutput: %s }", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v18, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
  }

  v27 = *(v0 + 8072);
  v28 = *(v0 + 8064);
  v29 = *(v0 + 8048);
  v30 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v29, v0 + 3328, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v29, v0 + 3184, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v30(v156, &v157, v28, v27, v0 + 6096);
  if (v154)
  {
    v31 = *(v0 + 8680);
    v32 = *(v0 + 8048);
    v33 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v34 = *(v0 + 7272);
    v35 = Error.readableDescription.getter(*(v0 + 7280), *(v0 + 7288));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v35, v36, v33, v32, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v37 = *(v0 + 7248);
    v38 = Error.readableDescription.getter(*(v0 + 7256), *(v0 + 7264));
    v40 = v39;
    *(v0 + 7224) = 8;
    *(v0 + 7232) = v38;
    *(v0 + 7240) = v39;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v41 = 8;
    *(v41 + 8) = v38;
    *(v41 + 16) = v40;
    v48 = (v0 + 6096);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
    v49 = *(v0 + 8360);
    v50 = *(v0 + 8352);
    v51 = *(v0 + 8328);
    v52 = *(v0 + 8320);
    v53 = *(v0 + 8296);
    v54 = *(v0 + 8288);
    v55 = *(v0 + 8280);
    v56 = *(v0 + 8256);
    v57 = *(v0 + 8248);
    v58 = *(v0 + 8224);
    v136 = *(v0 + 8200);
    v138 = *(v0 + 8176);
    v139 = *(v0 + 8168);
    v140 = *(v0 + 8160);
    v143 = *(v0 + 8152);
    v145 = *(v0 + 8144);
    v147 = *(v0 + 8136);
    v148 = *(v0 + 8128);
    v150 = *(v0 + 8120);
    v152 = *(v0 + 8112);

    v59 = *(v0 + 8);

    return v59();
  }

  v42 = *(v0 + 8048);
  v43 = *(v0 + 8040);

  outlined destroy of NSObject?(v42, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v42, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v44 = v156[2];
  v149 = v156[1];
  v151 = v156[3];
  v155 = v157;
  v142 = v156[0];
  v144 = *(&v157 + 1);
  v146 = v158;
  v45 = *(*v43 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v42, v0 + 3112, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v42, v0 + 3040, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v45(&v157, v0 + 6096);
  v46 = *(v0 + 8048);
  v47 = *(v0 + 8040);
  v61 = *(&v157 + 1);
  v134 = v158;
  v135 = v157;
  v141 = *(&v158 + 1);
  v62 = v159;
  v63 = *(v0 + 194);

  outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v137 = v61;
  if (v63)
  {
    if (v141 >> 60 == 15)
    {
      v64 = *(v0 + 8680);
      v65 = *(v0 + 8376);
      v66 = *(v0 + 8072);
      v67 = *(v0 + 8048);
      v68 = v44;
      v69 = *(v0 + 8040);
      v70 = v68;
      outlined copy of Data._Representation(v68, v151);
      outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      outlined init with copy of MLS.OutgoingEventState?(v67, v0 + 5056, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v67, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      if (os_log_type_enabled(v71, v72))
      {
        v73 = *(v0 + 8400);
        v74 = *(v0 + 8392);
        v75 = *(v0 + 8072);
        v76 = *(v0 + 8064);
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v156[0] = v78;
        *v77 = 136315394;
        *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, v156);
        *(v77 + 12) = 2080;
        *(v77 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v75, v156);
        _os_log_impl(&dword_264F1F000, v71, v72, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, group: %s }", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v78, -1, -1);
        MEMORY[0x266755550](v77, -1, -1);
      }

      lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
      swift_allocError();
      *v79 = 19;
      *(v79 + 8) = 0;
      *(v79 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v70, v151);

      outlined consume of Data._Representation(v146, *(&v146 + 1));
      outlined consume of Data._Representation(v135, v137);
      outlined consume of Data._Representation(v62, *(&v62 + 1));

      outlined consume of Data._Representation(v70, v151);
      v48 = (v0 + 6096);
      goto LABEL_7;
    }

    v80 = (v0 + 16);
    v93 = *(v0 + 8400);
    v133 = *(v0 + 8392);
    v94 = *(v0 + 8224);
    v95 = *(v0 + 8216);
    v96 = *(v0 + 8208);
    v97 = *(v0 + 8080);
    v98 = *(v0 + 8056);
    outlined copy of Data._Representation(v44, v151);

    UUID.init()();
    v99 = UUID.uuidString.getter();
    v129 = v100;
    v131 = v99;
    (*(v95 + 8))(v94, v96);
    swift_beginAccess();
    v101 = *(v98 + 16);
    v91 = v151;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7656, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v103 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v102);

    *(v0 + 48) = *(v0 + 7560);
    *(v0 + 16) = v133;
    *(v0 + 24) = v93;
    *(v0 + 32) = v131;
    *(v0 + 40) = v129;
    *(v0 + 64) = v101;
    *(v0 + 72) = v142;
    *(v0 + 80) = v149;
    *(v0 + 88) = v44;
    *(v0 + 96) = v151;
    *(v0 + 104) = v155;
    *(v0 + 112) = v144;
    *(v0 + 120) = v146;
    *(v0 + 136) = v103;
    *(v0 + 144) = v135;
    *(v0 + 152) = v61;
    *(v0 + 160) = v134;
    *(v0 + 168) = v141;
    *(v0 + 176) = v62;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(v0 + 16);
  }

  else
  {
    v80 = (v0 + 1672);
    v81 = *(v0 + 8400);
    v132 = *(v0 + 8392);
    v82 = *(v0 + 8224);
    v83 = *(v0 + 8216);
    v84 = *(v0 + 8208);
    v85 = *(v0 + 8080);
    v86 = v44;
    v87 = *(v0 + 8056);
    outlined copy of Data._Representation(v86, v151);

    UUID.init()();
    v88 = UUID.uuidString.getter();
    v128 = v89;
    v130 = v88;
    (*(v83 + 8))(v82, v84);
    swift_beginAccess();
    v90 = *(v87 + 16);
    v44 = v86;
    v91 = v151;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v92 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v85);

    *(v0 + 1704) = *(v0 + 7560);
    *(v0 + 1672) = v132;
    *(v0 + 1680) = v81;
    *(v0 + 1688) = v130;
    *(v0 + 1696) = v128;
    *(v0 + 1720) = v90;
    *(v0 + 1728) = v142;
    *(v0 + 1736) = v149;
    *(v0 + 1744) = v44;
    *(v0 + 1752) = v151;
    *(v0 + 1760) = v155;
    *(v0 + 1768) = v144;
    *(v0 + 1776) = v146;
    *(v0 + 1792) = v92;
    *(v0 + 1800) = v135;
    *(v0 + 1808) = v61;
    *(v0 + 1816) = v134;
    *(v0 + 1824) = v141;
    *(v0 + 1832) = v62;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi7_(v0 + 1672);
  }

  v104 = v80[9];
  v165 = v80[8];
  v166 = v104;
  v167 = v80[10];
  v168 = *(v80 + 176);
  v105 = v80[5];
  v161 = v80[4];
  v162 = v105;
  v106 = v80[7];
  v163 = v80[6];
  v164 = v106;
  v107 = v80[1];
  v157 = *v80;
  v158 = v107;
  v108 = v80[3];
  v159 = v80[2];
  v160 = v108;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6096));
  v109 = v166;
  *(v0 + 1616) = v165;
  *(v0 + 1632) = v109;
  *(v0 + 1648) = v167;
  *(v0 + 1664) = v168;
  v110 = v162;
  *(v0 + 1552) = v161;
  *(v0 + 1568) = v110;
  v111 = v164;
  *(v0 + 1584) = v163;
  *(v0 + 1600) = v111;
  v112 = v158;
  *(v0 + 1488) = v157;
  *(v0 + 1504) = v112;
  v113 = v160;
  *(v0 + 1520) = v159;
  *(v0 + 1536) = v113;
  *(v0 + 8856) = v91;
  *(v0 + 8848) = v44;
  v114 = *(v0 + 8680);
  v115 = *(v0 + 8400);
  v116 = *(v0 + 8080);
  v117 = *(v0 + 8040);
  v118 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v118;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v119 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v119;
  v120 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v120;
  v121 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v121;
  v122 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v122;
  v123 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v125 = v124;
  v126 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v123;
  *(v0 + 4200) = v125;
  *(v0 + 4208) = v114;
  *(v0 + 4216) = v116;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v126;
  *(v0 + 4240) = v127;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v82 = v0;
  (*(*(v0 + 8312) + 8))(*(v0 + 8328), *(v0 + 8304));
  v1 = *(v0 + 8808);
  v2 = *(v0 + 8176);
  v3 = *(v0 + 8096);
  *(v0 + 7896) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 8040);
    (*(*(v0 + 8104) + 32))(*(v0 + 8168), *(v0 + 8176), *(v0 + 8096));
    v6 = MLS.SwiftMLSClientCoordinator.healingMethod(error:)();
    v7 = *(v0 + 8168);
    if (v6 == 5)
    {
      v8 = *(v0 + 8376);
      v9 = *(v0 + 8160);
      v10 = *(v0 + 8104);
      v11 = *(v0 + 8096);
      v12 = *(v0 + 8048);
      v13 = *(v0 + 8040);

      v14 = *(v10 + 16);
      v14(v9, v7, v11);
      outlined init with copy of MLS.OutgoingEventState?(v12, v0 + 3904, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v15, v16))
      {
        v76 = *(v0 + 8400);
        v17 = *(v0 + 8392);
        v18 = *(v0 + 8160);
        v19 = *(v0 + 8104);
        v20 = *(v0 + 8096);
        v21 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v81[0] = v80;
        *v21 = 136315394;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v76, v81);
        *(v21 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
        swift_allocError();
        v14(v22, v18, v20);
        v23 = _swift_stdlib_bridgeErrorToNSError();
        v24 = *(v19 + 8);
        v24(v18, v20);
        *(v21 + 14) = v23;
        *v78 = v23;
        _os_log_impl(&dword_264F1F000, v15, v16, "SwiftMLSClientCoordinator createGroup era advancement failed. Refetching KeyPackage { identifier: %s, error: %@ }", v21, 0x16u);
        outlined destroy of NSObject?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v78, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x266755550](v80, -1, -1);
        MEMORY[0x266755550](v21, -1, -1);
      }

      else
      {
        v59 = *(v0 + 8160);
        v60 = *(v0 + 8104);
        v61 = *(v0 + 8096);

        v24 = *(v60 + 8);
        v24(v59, v61);
      }

      *(v0 + 9264) = v24;
      v62 = *(v0 + 8664);
      *(v0 + 5920) = &type metadata for MLS.GroupCreationError;
      *(v0 + 5928) = v62;
      *(v0 + 5896) = 5;
      *(v0 + 5904) = 0u;
      v63 = swift_task_alloc();
      *(v0 + 9272) = v63;
      *v63 = v0;
      v63[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
      v64 = *(v0 + 8400);
      v65 = *(v0 + 8392);
      v66 = *(v0 + 8080);
      v67 = *(v0 + 8040);

      return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v0 + 7912, v66, v65, v64, 0x7247657461657263, 0xEB0000000070756FLL, v0 + 5896);
    }

    v26 = *(v0 + 8680);
    v27 = *(v0 + 8104);
    v28 = *(v0 + 8096);

    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    (*(v27 + 8))(v7, v28);
  }

  else
  {
    v25 = *(v0 + 8680);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  }

  v29 = *(v0 + 8376);
  v30 = *(v0 + 8048);
  v31 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v30, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v32 = v1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v30, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 8400);
    v36 = *(v0 + 8392);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v81[0] = v39;
    *v37 = 136315394;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, v81);
    *(v37 + 12) = 2112;
    v40 = v1;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v41;
    *v38 = v41;
    _os_log_impl(&dword_264F1F000, v33, v34, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v37, 0x16u);
    outlined destroy of NSObject?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266755550](v39, -1, -1);
    MEMORY[0x266755550](v37, -1, -1);
  }

  swift_getErrorValue();
  v42 = *(v0 + 7392);
  v43 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v45 = v44;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v46 = 15;
  *(v46 + 8) = v43;
  *(v46 + 16) = v45;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v47 = *(v0 + 8360);
  v48 = *(v0 + 8352);
  v49 = *(v0 + 8328);
  v50 = *(v0 + 8320);
  v51 = *(v0 + 8296);
  v52 = *(v0 + 8288);
  v53 = *(v0 + 8280);
  v54 = *(v0 + 8256);
  v55 = *(v0 + 8248);
  v56 = *(v0 + 8224);
  v68 = *(v0 + 8200);
  v69 = *(v0 + 8176);
  v70 = *(v0 + 8168);
  v71 = *(v0 + 8160);
  v72 = *(v0 + 8152);
  v73 = *(v0 + 8144);
  v74 = *(v0 + 8136);
  v75 = *(v0 + 8128);
  v77 = *(v0 + 8120);
  v79 = *(v0 + 8112);

  v57 = *(v0 + 8);

  return v57();
}

{
  v44 = v0;
  v1 = *(v0 + 8104) + 8;
  (*(v0 + 9264))(*(v0 + 8168), *(v0 + 8096));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5896));

  v2 = *(v0 + 9280);
  v3 = *(v0 + 8376);
  v4 = *(v0 + 8048);
  v5 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 8400);
    v10 = *(v0 + 8392);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v43);
    *(v11 + 12) = 2112;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  swift_getErrorValue();
  v16 = *(v0 + 7392);
  v17 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v19 = v18;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v20 = 15;
  *(v20 + 8) = v17;
  *(v20 + 16) = v19;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v21 = *(v0 + 8360);
  v22 = *(v0 + 8352);
  v23 = *(v0 + 8328);
  v24 = *(v0 + 8320);
  v25 = *(v0 + 8296);
  v26 = *(v0 + 8288);
  v27 = *(v0 + 8280);
  v28 = *(v0 + 8256);
  v29 = *(v0 + 8248);
  v30 = *(v0 + 8224);
  v33 = *(v0 + 8200);
  v34 = *(v0 + 8176);
  v35 = *(v0 + 8168);
  v36 = *(v0 + 8160);
  v37 = *(v0 + 8152);
  v38 = *(v0 + 8144);
  v39 = *(v0 + 8136);
  v40 = *(v0 + 8128);
  v41 = *(v0 + 8120);
  v42 = *(v0 + 8112);

  v31 = *(v0 + 8);

  return v31();
}

{
  v47 = v0;
  v1 = *(v0 + 9264);
  v2 = *(v0 + 8168);
  v3 = *(v0 + 8104);
  v4 = *(v0 + 8096);
  (*(*(v0 + 8312) + 8))(*(v0 + 8320), *(v0 + 8304));
  v1(v2, v4);

  v5 = *(v0 + 9296);
  v6 = *(v0 + 8376);
  v7 = *(v0 + 8048);
  v8 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v7, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v9 = v5;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v7, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 8400);
    v13 = *(v0 + 8392);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v46 = v16;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v46);
    *(v14 + 12) = 2112;
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_264F1F000, v10, v11, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v14, 0x16u);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  swift_getErrorValue();
  v19 = *(v0 + 7392);
  v20 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v22 = v21;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v23 = 15;
  *(v23 + 8) = v20;
  *(v23 + 16) = v22;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v24 = *(v0 + 8360);
  v25 = *(v0 + 8352);
  v26 = *(v0 + 8328);
  v27 = *(v0 + 8320);
  v28 = *(v0 + 8296);
  v29 = *(v0 + 8288);
  v30 = *(v0 + 8280);
  v31 = *(v0 + 8256);
  v32 = *(v0 + 8248);
  v33 = *(v0 + 8224);
  v36 = *(v0 + 8200);
  v37 = *(v0 + 8176);
  v38 = *(v0 + 8168);
  v39 = *(v0 + 8160);
  v40 = *(v0 + 8152);
  v41 = *(v0 + 8144);
  v42 = *(v0 + 8136);
  v43 = *(v0 + 8128);
  v44 = *(v0 + 8120);
  v45 = *(v0 + 8112);

  v34 = *(v0 + 8);

  return v34();
}

{
  v2 = *v1;
  v3 = (*v1)[1164];
  v10 = *v1;
  (*v1)[1165] = v0;

  if (v0)
  {
    v4 = v2[1085];
    v5 = v2[1046];
    outlined destroy of NSObject?((v2 + 945), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v5;
  }

  else
  {
    v8 = v2[1046];

    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 667);
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v1 = *(v0 + 8744);
  v2 = (*(v0 + 8040) + *(v0 + 8736));
  v3 = *(v0 + 7752);
  *(v0 + 9328) = v3;
  outlined init with copy of ServerBag.MLS(v0 + 5696, v0 + 5416);
  v4 = *(v0 + 5440);
  *(v0 + 9336) = v4;
  *(v0 + 9352) = __swift_project_boxed_opaque_existential_1((v0 + 5416), v4);
  *(v0 + 7920) = v3;
  v5 = v2[1];
  *(v0 + 7576) = *v2;
  *(v0 + 7584) = v5;

  v6 = swift_task_alloc();
  *(v0 + 9360) = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(v0 + 7592, 1);
}

{
  v2 = *(*v1 + 9360);
  v3 = *v1;
  *(v3 + 9368) = v0;

  if (v0)
  {
    v4 = *(v3 + 8680);
    v5 = *(v3 + 8368);

    outlined destroy of NSObject?(v3 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = *(v3 + 7584);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v5, 0);
  }

  else
  {
    v7 = *(v3 + 7600);
    *(v3 + 7608) = *(v3 + 7592);
    *(v3 + 7616) = v7;
    v8 = swift_task_alloc();
    *(v3 + 9376) = v8;
    *v8 = v3;
    v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v9 = *(v3 + 9352);
    v10 = *(v3 + 9344);
    v11 = *(v3 + 9336);
    v12 = *(v3 + 8776);

    return MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)((v3 + 7920), (v3 + 7576), (v3 + 7608), v11, &type metadata for MLS.AllMember, v10, v12);
  }
}

{
  v59 = v0;
  v1 = *(v0 + 9392);
  v2 = *(v0 + 9384);
  v3 = *(v0 + 8280);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5416));
  MLS.Group.Group.ReplaceExpiredCredentialInput.init(replacements:)();
  if (v2)
  {
    v4 = v2;
    v5 = *(v0 + 9304);
    v6 = *(v0 + 8680);
    v7 = *(v0 + 8144);
    v8 = *(v0 + 8104);
    v9 = *(v0 + 8096);

    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v5(v7, v9);

    v10 = *(v0 + 8376);
    v11 = *(v0 + 8048);
    v12 = *(v0 + 8040);
    outlined init with copy of MLS.OutgoingEventState?(v11, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v13 = v4;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 8400);
      v17 = *(v0 + 8392);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v58 = v20;
      *v18 = 136315394;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v58);
      *(v18 + 12) = 2112;
      v21 = v4;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_264F1F000, v14, v15, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v18, 0x16u);
      outlined destroy of NSObject?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x266755550](v20, -1, -1);
      MEMORY[0x266755550](v18, -1, -1);
    }

    swift_getErrorValue();
    v23 = *(v0 + 7392);
    v24 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
    v26 = v25;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v27 = 15;
    *(v27 + 8) = v24;
    *(v27 + 16) = v26;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
    v28 = *(v0 + 8360);
    v29 = *(v0 + 8352);
    v30 = *(v0 + 8328);
    v31 = *(v0 + 8320);
    v32 = *(v0 + 8296);
    v33 = *(v0 + 8288);
    v34 = *(v0 + 8280);
    v35 = *(v0 + 8256);
    v36 = *(v0 + 8248);
    v37 = *(v0 + 8224);
    v47 = *(v0 + 8200);
    v48 = *(v0 + 8176);
    v49 = *(v0 + 8168);
    v50 = *(v0 + 8160);
    v51 = *(v0 + 8152);
    v52 = *(v0 + 8144);
    v53 = *(v0 + 8136);
    v54 = *(v0 + 8128);
    v55 = *(v0 + 8120);
    v56 = *(v0 + 8112);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v40 = *(v0 + 8248);
    (*(*(v0 + 8272) + 16))(*(v0 + 8288), *(v0 + 8280), *(v0 + 8264));
    MLS.Group.Group.ResurrectionInput.init(replaceExpired:)();
    v41 = *(v0 + 5720);
    v42 = *(v0 + 5728);
    __swift_project_boxed_opaque_existential_1((v0 + 5696), v41);
    v43 = *(v42 + 176);
    v57 = (v43 + *v43);
    v44 = v43[1];
    v45 = swift_task_alloc();
    *(v0 + 9400) = v45;
    *v45 = v0;
    v45[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v46 = *(v0 + 8248);

    return v57(v0 + 5576, v46, v41, v42);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 9400);
  v9 = *v1;
  *(*v1 + 9408) = v0;

  if (v0)
  {
    v4 = *(v2 + 8680);
    v5 = *(v2 + 8368);
    outlined destroy of NSObject?(v2 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 8368);
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v172 = v0;
  v153 = *(v0 + 8280);
  v156 = *(v0 + 9304);
  v1 = *(v0 + 8272);
  v2 = *(v0 + 8248);
  v3 = *(v0 + 8240);
  v4 = *(v0 + 8232);
  v148 = *(v0 + 8264);
  v150 = *(v0 + 8144);
  v5 = *(v0 + 8104);
  v6 = *(v0 + 8096);
  v7 = *(v0 + 5600);
  v8 = *(v0 + 5608);
  __swift_project_boxed_opaque_existential_1((v0 + 5576), v7);
  (*(v8 + 8))(v7, v8);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v153, v148);
  v156(v150, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5576));

  v157 = *(v0 + 9408);
  v9 = *(v0 + 8376);
  v10 = *(v0 + 8056);
  v11 = *(v0 + 8048);
  v12 = *(v0 + 8040);
  swift_beginAccess();
  v13._countAndFlagsBits = 0x534C4D7466697753;
  v13._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v13);
  swift_endAccess();
  outlined init with copy of ServerBag.MLS(v0 + 6096, v0 + 5616);
  outlined init with copy of MLS.OutgoingEventState?(v11, v0 + 3400, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 8400);
    v17 = *(v0 + 8392);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v160 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v160);
    *(v18 + 12) = 2080;
    v20 = *(v0 + 5640);
    __swift_project_boxed_opaque_existential_1((v0 + 5616), v20);
    v21 = *(v20 - 8);
    v22 = *(v21 + 64) + 15;
    swift_task_alloc();
    (*(v21 + 16))();
    v23 = String.init<A>(describing:)();
    v25 = v24;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v160);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_264F1F000, v14, v15, "SwiftMLSClientCoordinator createGroup resurrected to group { identifier: %s, commitOutput: %s }", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v18, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
  }

  v27 = *(v0 + 8072);
  v28 = *(v0 + 8064);
  v29 = *(v0 + 8048);
  v30 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v29, v0 + 3328, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v29, v0 + 3184, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v30(v159, &v160, v28, v27, v0 + 6096);
  if (v157)
  {
    v31 = *(v0 + 8680);
    v32 = *(v0 + 8048);
    v33 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v34 = *(v0 + 7272);
    v35 = Error.readableDescription.getter(*(v0 + 7280), *(v0 + 7288));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v35, v36, v33, v32, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v37 = *(v0 + 7248);
    v38 = Error.readableDescription.getter(*(v0 + 7256), *(v0 + 7264));
    v40 = v39;
    *(v0 + 7224) = 8;
    *(v0 + 7232) = v38;
    *(v0 + 7240) = v39;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v41 = 8;
    *(v41 + 8) = v38;
    *(v41 + 16) = v40;
    v48 = (v0 + 6096);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
    v49 = *(v0 + 8360);
    v50 = *(v0 + 8352);
    v51 = *(v0 + 8328);
    v52 = *(v0 + 8320);
    v53 = *(v0 + 8296);
    v54 = *(v0 + 8288);
    v55 = *(v0 + 8280);
    v56 = *(v0 + 8256);
    v57 = *(v0 + 8248);
    v58 = *(v0 + 8224);
    v136 = *(v0 + 8200);
    v138 = *(v0 + 8176);
    v139 = *(v0 + 8168);
    v140 = *(v0 + 8160);
    v143 = *(v0 + 8152);
    v145 = *(v0 + 8144);
    v147 = *(v0 + 8136);
    v149 = *(v0 + 8128);
    v152 = *(v0 + 8120);
    v155 = *(v0 + 8112);

    v59 = *(v0 + 8);

    return v59();
  }

  v42 = *(v0 + 8048);
  v43 = *(v0 + 8040);

  outlined destroy of NSObject?(v42, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v42, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v44 = v159[2];
  v151 = v159[1];
  v154 = v159[3];
  v158 = v160;
  v142 = v159[0];
  v144 = *(&v160 + 1);
  v146 = v161;
  v45 = *(*v43 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v42, v0 + 3112, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v42, v0 + 3040, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v45(&v160, v0 + 6096);
  v46 = *(v0 + 8048);
  v47 = *(v0 + 8040);
  v61 = *(&v160 + 1);
  v134 = v161;
  v135 = v160;
  v141 = *(&v161 + 1);
  v62 = v162;
  v63 = *(v0 + 194);

  outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v137 = v61;
  if (v63)
  {
    if (v141 >> 60 == 15)
    {
      v64 = *(v0 + 8680);
      v65 = *(v0 + 8376);
      v66 = *(v0 + 8072);
      v67 = *(v0 + 8048);
      v68 = v44;
      v69 = *(v0 + 8040);
      v70 = v68;
      outlined copy of Data._Representation(v68, v154);
      outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      outlined init with copy of MLS.OutgoingEventState?(v67, v0 + 5056, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v67, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      if (os_log_type_enabled(v71, v72))
      {
        v73 = *(v0 + 8400);
        v74 = *(v0 + 8392);
        v75 = *(v0 + 8072);
        v76 = *(v0 + 8064);
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v159[0] = v78;
        *v77 = 136315394;
        *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, v159);
        *(v77 + 12) = 2080;
        *(v77 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v75, v159);
        _os_log_impl(&dword_264F1F000, v71, v72, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, group: %s }", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v78, -1, -1);
        MEMORY[0x266755550](v77, -1, -1);
      }

      lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
      swift_allocError();
      *v79 = 19;
      *(v79 + 8) = 0;
      *(v79 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v70, v154);

      outlined consume of Data._Representation(v146, *(&v146 + 1));
      outlined consume of Data._Representation(v135, v137);
      outlined consume of Data._Representation(v62, *(&v62 + 1));

      outlined consume of Data._Representation(v70, v154);
      v48 = (v0 + 6096);
      goto LABEL_7;
    }

    v80 = (v0 + 16);
    v93 = *(v0 + 8400);
    v133 = *(v0 + 8392);
    v94 = *(v0 + 8224);
    v95 = *(v0 + 8216);
    v96 = *(v0 + 8208);
    v97 = *(v0 + 8080);
    v98 = *(v0 + 8056);
    outlined copy of Data._Representation(v44, v154);

    UUID.init()();
    v99 = UUID.uuidString.getter();
    v129 = v100;
    v131 = v99;
    (*(v95 + 8))(v94, v96);
    swift_beginAccess();
    v101 = *(v98 + 16);
    v91 = v154;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7656, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v103 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v102);

    *(v0 + 48) = *(v0 + 7560);
    *(v0 + 16) = v133;
    *(v0 + 24) = v93;
    *(v0 + 32) = v131;
    *(v0 + 40) = v129;
    *(v0 + 64) = v101;
    *(v0 + 72) = v142;
    *(v0 + 80) = v151;
    *(v0 + 88) = v44;
    *(v0 + 96) = v154;
    *(v0 + 104) = v158;
    *(v0 + 112) = v144;
    *(v0 + 120) = v146;
    *(v0 + 136) = v103;
    *(v0 + 144) = v135;
    *(v0 + 152) = v61;
    *(v0 + 160) = v134;
    *(v0 + 168) = v141;
    *(v0 + 176) = v62;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(v0 + 16);
  }

  else
  {
    v80 = (v0 + 1672);
    v81 = *(v0 + 8400);
    v132 = *(v0 + 8392);
    v82 = *(v0 + 8224);
    v83 = *(v0 + 8216);
    v84 = *(v0 + 8208);
    v85 = *(v0 + 8080);
    v86 = v44;
    v87 = *(v0 + 8056);
    outlined copy of Data._Representation(v86, v154);

    UUID.init()();
    v88 = UUID.uuidString.getter();
    v128 = v89;
    v130 = v88;
    (*(v83 + 8))(v82, v84);
    swift_beginAccess();
    v90 = *(v87 + 16);
    v44 = v86;
    v91 = v154;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v92 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v85);

    *(v0 + 1704) = *(v0 + 7560);
    *(v0 + 1672) = v132;
    *(v0 + 1680) = v81;
    *(v0 + 1688) = v130;
    *(v0 + 1696) = v128;
    *(v0 + 1720) = v90;
    *(v0 + 1728) = v142;
    *(v0 + 1736) = v151;
    *(v0 + 1744) = v44;
    *(v0 + 1752) = v154;
    *(v0 + 1760) = v158;
    *(v0 + 1768) = v144;
    *(v0 + 1776) = v146;
    *(v0 + 1792) = v92;
    *(v0 + 1800) = v135;
    *(v0 + 1808) = v61;
    *(v0 + 1816) = v134;
    *(v0 + 1824) = v141;
    *(v0 + 1832) = v62;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi7_(v0 + 1672);
  }

  v104 = v80[9];
  v168 = v80[8];
  v169 = v104;
  v170 = v80[10];
  v171 = *(v80 + 176);
  v105 = v80[5];
  v164 = v80[4];
  v165 = v105;
  v106 = v80[7];
  v166 = v80[6];
  v167 = v106;
  v107 = v80[1];
  v160 = *v80;
  v161 = v107;
  v108 = v80[3];
  v162 = v80[2];
  v163 = v108;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6096));
  v109 = v169;
  *(v0 + 1616) = v168;
  *(v0 + 1632) = v109;
  *(v0 + 1648) = v170;
  *(v0 + 1664) = v171;
  v110 = v165;
  *(v0 + 1552) = v164;
  *(v0 + 1568) = v110;
  v111 = v167;
  *(v0 + 1584) = v166;
  *(v0 + 1600) = v111;
  v112 = v161;
  *(v0 + 1488) = v160;
  *(v0 + 1504) = v112;
  v113 = v163;
  *(v0 + 1520) = v162;
  *(v0 + 1536) = v113;
  *(v0 + 8856) = v91;
  *(v0 + 8848) = v44;
  v114 = *(v0 + 8680);
  v115 = *(v0 + 8400);
  v116 = *(v0 + 8080);
  v117 = *(v0 + 8040);
  v118 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v118;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v119 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v119;
  v120 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v120;
  v121 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v121;
  v122 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v122;
  v123 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v125 = v124;
  v126 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v123;
  *(v0 + 4200) = v125;
  *(v0 + 4208) = v114;
  *(v0 + 4216) = v116;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v126;
  *(v0 + 4240) = v127;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v85 = v0;
  v1 = *(v0 + 8296);
  v2 = *(v0 + 8272);
  v3 = *(v0 + 8264);
  (*(*(v0 + 8240) + 8))(*(v0 + 8256), *(v0 + 8232));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 8824);
  v5 = *(v0 + 8152);
  v6 = *(v0 + 8096);
  *(v0 + 7760) = v4;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 8040);
    (*(*(v0 + 8104) + 32))(*(v0 + 8144), *(v0 + 8152), *(v0 + 8096));
    v9 = MLS.SwiftMLSClientCoordinator.healingMethod(error:)();
    v10 = *(v0 + 8144);
    if (v9 == 5)
    {
      v11 = *(v0 + 8376);
      v12 = *(v0 + 8136);
      v13 = *(v0 + 8104);
      v14 = *(v0 + 8096);
      v15 = *(v0 + 8048);
      v16 = *(v0 + 8040);

      v83 = *(v13 + 16);
      v83(v12, v10, v14);
      outlined init with copy of MLS.OutgoingEventState?(v15, v0 + 4552, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v15, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v17, v18))
      {
        v79 = *(v0 + 8400);
        v19 = *(v0 + 8392);
        v20 = *(v0 + 8136);
        v21 = *(v0 + 8104);
        v22 = *(v0 + 8096);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v84[0] = v81;
        *v23 = 136315394;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v79, v84);
        *(v23 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
        swift_allocError();
        v83(v25, v20, v22);
        v26 = _swift_stdlib_bridgeErrorToNSError();
        v27 = *(v21 + 8);
        v27(v20, v22);
        *(v23 + 14) = v26;
        *v24 = v26;
        _os_log_impl(&dword_264F1F000, v17, v18, "SwiftMLSClientCoordinator createGroup resurrection failed. Refetching KeyPackage { identifier: %s, error: %@ }", v23, 0x16u);
        outlined destroy of NSObject?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v24, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        MEMORY[0x266755550](v81, -1, -1);
        MEMORY[0x266755550](v23, -1, -1);
      }

      else
      {
        v62 = *(v0 + 8136);
        v63 = *(v0 + 8104);
        v64 = *(v0 + 8096);

        v27 = *(v63 + 8);
        v27(v62, v64);
      }

      *(v0 + 9304) = v27;
      v65 = *(v0 + 8664);
      *(v0 + 5360) = &type metadata for MLS.GroupCreationError;
      *(v0 + 5368) = v65;
      *(v0 + 5336) = 5;
      *(v0 + 5344) = 0u;
      v66 = swift_task_alloc();
      *(v0 + 9312) = v66;
      *v66 = v0;
      v66[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
      v67 = *(v0 + 8400);
      v68 = *(v0 + 8392);
      v69 = *(v0 + 8080);
      v70 = *(v0 + 8040);

      return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v0 + 7752, v69, v68, v67, 0x7247657461657263, 0xEB0000000070756FLL, v0 + 5336);
    }

    v29 = *(v0 + 8680);
    v30 = *(v0 + 8104);
    v31 = *(v0 + 8096);

    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    (*(v30 + 8))(v10, v31);
  }

  else
  {
    v28 = *(v0 + 8680);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  }

  v32 = *(v0 + 8376);
  v33 = *(v0 + 8048);
  v34 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v33, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v35 = v4;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v33, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v36, v37))
  {
    v38 = *(v0 + 8400);
    v39 = *(v0 + 8392);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v84[0] = v42;
    *v40 = 136315394;
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, v84);
    *(v40 + 12) = 2112;
    v43 = v4;
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v44;
    *v41 = v44;
    _os_log_impl(&dword_264F1F000, v36, v37, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v40, 0x16u);
    outlined destroy of NSObject?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x266755550](v42, -1, -1);
    MEMORY[0x266755550](v40, -1, -1);
  }

  swift_getErrorValue();
  v45 = *(v0 + 7392);
  v46 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v48 = v47;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v49 = 15;
  *(v49 + 8) = v46;
  *(v49 + 16) = v48;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v50 = *(v0 + 8360);
  v51 = *(v0 + 8352);
  v52 = *(v0 + 8328);
  v53 = *(v0 + 8320);
  v54 = *(v0 + 8296);
  v55 = *(v0 + 8288);
  v56 = *(v0 + 8280);
  v57 = *(v0 + 8256);
  v58 = *(v0 + 8248);
  v59 = *(v0 + 8224);
  v71 = *(v0 + 8200);
  v72 = *(v0 + 8176);
  v73 = *(v0 + 8168);
  v74 = *(v0 + 8160);
  v75 = *(v0 + 8152);
  v76 = *(v0 + 8144);
  v77 = *(v0 + 8136);
  v78 = *(v0 + 8128);
  v80 = *(v0 + 8120);
  v82 = *(v0 + 8112);

  v60 = *(v0 + 8);

  return v60();
}

{
  v44 = v0;
  v1 = *(v0 + 8104) + 8;
  (*(v0 + 9304))(*(v0 + 8144), *(v0 + 8096));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5336));

  v2 = *(v0 + 9320);
  v3 = *(v0 + 8376);
  v4 = *(v0 + 8048);
  v5 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 8400);
    v10 = *(v0 + 8392);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v43);
    *(v11 + 12) = 2112;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  swift_getErrorValue();
  v16 = *(v0 + 7392);
  v17 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v19 = v18;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v20 = 15;
  *(v20 + 8) = v17;
  *(v20 + 16) = v19;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v21 = *(v0 + 8360);
  v22 = *(v0 + 8352);
  v23 = *(v0 + 8328);
  v24 = *(v0 + 8320);
  v25 = *(v0 + 8296);
  v26 = *(v0 + 8288);
  v27 = *(v0 + 8280);
  v28 = *(v0 + 8256);
  v29 = *(v0 + 8248);
  v30 = *(v0 + 8224);
  v33 = *(v0 + 8200);
  v34 = *(v0 + 8176);
  v35 = *(v0 + 8168);
  v36 = *(v0 + 8160);
  v37 = *(v0 + 8152);
  v38 = *(v0 + 8144);
  v39 = *(v0 + 8136);
  v40 = *(v0 + 8128);
  v41 = *(v0 + 8120);
  v42 = *(v0 + 8112);

  v31 = *(v0 + 8);

  return v31();
}

{
  v45 = v0;
  v1 = *(v0 + 9328);
  v2 = *(v0 + 8104) + 8;
  (*(v0 + 9304))(*(v0 + 8144), *(v0 + 8096));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5416));

  v3 = *(v0 + 9368);
  v4 = *(v0 + 8376);
  v5 = *(v0 + 8048);
  v6 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v5, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v7 = v3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v5, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 8400);
    v11 = *(v0 + 8392);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44 = v14;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v44);
    *(v12 + 12) = 2112;
    v15 = v3;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v12, 0x16u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  swift_getErrorValue();
  v17 = *(v0 + 7392);
  v18 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v20 = v19;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v21 = 15;
  *(v21 + 8) = v18;
  *(v21 + 16) = v20;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v22 = *(v0 + 8360);
  v23 = *(v0 + 8352);
  v24 = *(v0 + 8328);
  v25 = *(v0 + 8320);
  v26 = *(v0 + 8296);
  v27 = *(v0 + 8288);
  v28 = *(v0 + 8280);
  v29 = *(v0 + 8256);
  v30 = *(v0 + 8248);
  v31 = *(v0 + 8224);
  v34 = *(v0 + 8200);
  v35 = *(v0 + 8176);
  v36 = *(v0 + 8168);
  v37 = *(v0 + 8160);
  v38 = *(v0 + 8152);
  v39 = *(v0 + 8144);
  v40 = *(v0 + 8136);
  v41 = *(v0 + 8128);
  v42 = *(v0 + 8120);
  v43 = *(v0 + 8112);

  v32 = *(v0 + 8);

  return v32();
}

{
  v45 = v0;
  v1 = *(v0 + 9328);
  v2 = *(v0 + 8104) + 8;
  (*(v0 + 9304))(*(v0 + 8144), *(v0 + 8096));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5416));

  v3 = *(v0 + 9384);
  v4 = *(v0 + 8376);
  v5 = *(v0 + 8048);
  v6 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v5, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v7 = v3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v5, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 8400);
    v11 = *(v0 + 8392);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44 = v14;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v44);
    *(v12 + 12) = 2112;
    v15 = v3;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v12, 0x16u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  swift_getErrorValue();
  v17 = *(v0 + 7392);
  v18 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v20 = v19;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v21 = 15;
  *(v21 + 8) = v18;
  *(v21 + 16) = v20;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v22 = *(v0 + 8360);
  v23 = *(v0 + 8352);
  v24 = *(v0 + 8328);
  v25 = *(v0 + 8320);
  v26 = *(v0 + 8296);
  v27 = *(v0 + 8288);
  v28 = *(v0 + 8280);
  v29 = *(v0 + 8256);
  v30 = *(v0 + 8248);
  v31 = *(v0 + 8224);
  v34 = *(v0 + 8200);
  v35 = *(v0 + 8176);
  v36 = *(v0 + 8168);
  v37 = *(v0 + 8160);
  v38 = *(v0 + 8152);
  v39 = *(v0 + 8144);
  v40 = *(v0 + 8136);
  v41 = *(v0 + 8128);
  v42 = *(v0 + 8120);
  v43 = *(v0 + 8112);

  v32 = *(v0 + 8);

  return v32();
}

{
  v50 = v0;
  v1 = *(v0 + 9304);
  v2 = *(v0 + 8280);
  v3 = *(v0 + 8272);
  v4 = *(v0 + 8264);
  v5 = *(v0 + 8144);
  v6 = *(v0 + 8104);
  v7 = *(v0 + 8096);
  (*(*(v0 + 8240) + 8))(*(v0 + 8248), *(v0 + 8232));
  (*(v3 + 8))(v2, v4);
  v1(v5, v7);

  v8 = *(v0 + 9408);
  v9 = *(v0 + 8376);
  v10 = *(v0 + 8048);
  v11 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v12 = v8;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v10, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 8400);
    v16 = *(v0 + 8392);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = v19;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v49);
    *(v17 + 12) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v21;
    *v18 = v21;
    _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v17, 0x16u);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  swift_getErrorValue();
  v22 = *(v0 + 7392);
  v23 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v25 = v24;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v26 = 15;
  *(v26 + 8) = v23;
  *(v26 + 16) = v25;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v27 = *(v0 + 8360);
  v28 = *(v0 + 8352);
  v29 = *(v0 + 8328);
  v30 = *(v0 + 8320);
  v31 = *(v0 + 8296);
  v32 = *(v0 + 8288);
  v33 = *(v0 + 8280);
  v34 = *(v0 + 8256);
  v35 = *(v0 + 8248);
  v36 = *(v0 + 8224);
  v39 = *(v0 + 8200);
  v40 = *(v0 + 8176);
  v41 = *(v0 + 8168);
  v42 = *(v0 + 8160);
  v43 = *(v0 + 8152);
  v44 = *(v0 + 8144);
  v45 = *(v0 + 8136);
  v46 = *(v0 + 8128);
  v47 = *(v0 + 8120);
  v48 = *(v0 + 8112);

  v37 = *(v0 + 8);

  return v37();
}

{
  v1 = *(v0 + 8048);
  v2 = *(v0 + 8040);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 4624, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 4696, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[715];
  v2 = v0[716];
  __swift_project_boxed_opaque_existential_1(v0 + 712, v1);
  v3 = *(v2 + 184);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[1181] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v6 = v0[1179];

  return (v8)(v0 + 757, v6, v1, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 9448);
  v11 = *v1;
  *(*v1 + 9456) = v0;

  if (v0)
  {
    v4 = v2[1179];
    v5 = v2[1085];

    outlined destroy of NSObject?((v2 + 945), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v7 = v2[1179];
    v8 = v2[1006];
    v9 = v2[1005];

    outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[1046];
  v2 = v0[1006];
  v3 = v0[1005];

  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v137 = v0;
  v1 = *(v0 + 9416);
  v2 = *(v0 + 8128);
  v3 = *(v0 + 8104);
  v4 = *(v0 + 8096);
  v5 = *(v0 + 8056);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 6056), v0 + 5536);
  swift_beginAccess();
  v6._countAndFlagsBits = 0x534C4D7466697753;
  v6._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v6);
  swift_endAccess();
  v1(v2, v4);

  v128 = *(v0 + 9456);
  v7 = *(v0 + 8376);
  v8 = *(v0 + 8048);
  v9 = *(v0 + 8040);
  outlined init with copy of ServerBag.MLS(v0 + 5536, v0 + 5176);
  outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 4768, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 8400);
    v13 = *(v0 + 8392);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v131 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v131);
    *(v14 + 12) = 2080;
    v16 = *(v0 + 5200);
    __swift_project_boxed_opaque_existential_1((v0 + 5176), v16);
    v17 = *(v16 - 8);
    v18 = *(v17 + 64) + 15;
    swift_task_alloc();
    (*(v17 + 16))();
    v19 = String.init<A>(describing:)();
    v21 = v20;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5176));
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v131);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_264F1F000, v10, v11, "SwiftMLSClientCoordinator createGroup added KeyPackages to group { identifier: %s, commitOutput: %s }", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5176));
  }

  v23 = *(v0 + 8072);
  v24 = *(v0 + 8064);
  v25 = *(v0 + 8048);
  v26 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v25, v0 + 4480, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v25, v0 + 4408, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v26(v130, &v131, v24, v23, v0 + 5536);
  if (v128)
  {
    v27 = *(v0 + 8680);
    v28 = *(v0 + 8048);
    v29 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v30 = *(v0 + 6648);
    v31 = Error.readableDescription.getter(*(v0 + 6656), *(v0 + 6664));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v31, v32, v29, v28, "SwiftMLSClientCoordinator createGroup add member commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v33 = *(v0 + 6600);
    v34 = Error.readableDescription.getter(*(v0 + 6608), *(v0 + 6616));
    v36 = v35;
    *(v0 + 6504) = 8;
    *(v0 + 6512) = v34;
    *(v0 + 6520) = v35;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v28, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v28, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v37 = 8;
    *(v37 + 8) = v34;
    *(v37 + 16) = v36;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
    v62 = *(v0 + 8360);
    v63 = *(v0 + 8352);
    v64 = *(v0 + 8328);
    v65 = *(v0 + 8320);
    v66 = *(v0 + 8296);
    v67 = *(v0 + 8288);
    v68 = *(v0 + 8280);
    v69 = *(v0 + 8256);
    v70 = *(v0 + 8248);
    v71 = *(v0 + 8224);
    v109 = *(v0 + 8200);
    v111 = *(v0 + 8176);
    v113 = *(v0 + 8168);
    v115 = *(v0 + 8160);
    v117 = *(v0 + 8152);
    v119 = *(v0 + 8144);
    v121 = *(v0 + 8136);
    v123 = *(v0 + 8128);
    v125 = *(v0 + 8120);
    v127 = *(v0 + 8112);

    v72 = *(v0 + 8);

    return v72();
  }

  v38 = *(v0 + 8048);
  v39 = *(v0 + 8040);

  outlined destroy of NSObject?(v38, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v38, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v122 = v130[1];
  v124 = v130[2];
  v126 = v130[3];
  v129 = v130[0];
  v40 = v131;
  v116 = v132;
  v118 = v133;
  v120 = v134;
  v41 = *(*v39 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v38, v0 + 3832, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v38, v0 + 3688, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v41(&v131, v0 + 5536);
  v107 = v40;
  v108 = v131;
  v110 = v132;
  v43 = v133;
  v42 = v134;
  v45 = v135;
  v44 = v136;
  v46 = *(v0 + 8048);
  v47 = *(v0 + 8040);

  outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v112 = v45;
  v114 = v44;
  if (v42 >> 60 == 15)
  {
    v48 = *(v0 + 8680);
    v49 = *(v0 + 8376);
    v50 = *(v0 + 8072);
    v51 = *(v0 + 8048);
    v52 = *(v0 + 8040);
    outlined copy of Data._Representation(v124, v126);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined init with copy of MLS.OutgoingEventState?(v51, v0 + 2968, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v51, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v0 + 8400);
      v56 = *(v0 + 8392);
      v57 = *(v0 + 8072);
      v58 = *(v0 + 8064);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v131 = v60;
      *v59 = 136315394;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, &v131);
      *(v59 + 12) = 2080;
      *(v59 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, &v131);
      _os_log_impl(&dword_264F1F000, v53, v54, "SwiftMLSClientCoordinator createGroup add member commit yielded unexpected output { identifier: %s, group: %s }", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v60, -1, -1);
      MEMORY[0x266755550](v59, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v61 = 19;
    *(v61 + 8) = 0;
    *(v61 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v124, v126);

    outlined consume of Data._Representation(v118, v120);
    outlined consume of Data._Representation(v108, v110);
    outlined consume of Data._Representation(v112, v114);

    outlined consume of Data._Representation(v124, v126);
    goto LABEL_10;
  }

  v104 = *(v0 + 8400);
  v105 = *(v0 + 8392);
  v74 = *(v0 + 8224);
  v75 = *(v0 + 8216);
  v76 = *(v0 + 8208);
  v77 = *(v0 + 8080);
  v106 = v43;
  v78 = *(v0 + 8056);

  outlined copy of Data._Representation(v124, v126);
  UUID.init()();
  v79 = UUID.uuidString.getter();
  v102 = v80;
  v103 = v79;
  (*(v75 + 8))(v74, v76);
  swift_beginAccess();
  v81 = *(v78 + 16);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  v82 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v77);

  *(v0 + 600) = *(v0 + 7560);
  *(v0 + 568) = v105;
  *(v0 + 576) = v104;
  *(v0 + 584) = v103;
  *(v0 + 592) = v102;
  *(v0 + 616) = v81;
  *(v0 + 624) = v129;
  *(v0 + 632) = v122;
  *(v0 + 640) = v124;
  *(v0 + 648) = v126;
  *(v0 + 656) = v107;
  *(v0 + 664) = v116;
  *(v0 + 672) = v118;
  *(v0 + 680) = v120;
  *(v0 + 688) = v82;
  *(v0 + 696) = v108;
  *(v0 + 704) = v110;
  *(v0 + 712) = v106;
  *(v0 + 720) = v42;
  *(v0 + 728) = v45;
  *(v0 + 736) = v114;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi_(v0 + 568);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5536));
  v83 = *(v0 + 712);
  *(v0 + 1616) = *(v0 + 696);
  *(v0 + 1632) = v83;
  *(v0 + 1648) = *(v0 + 728);
  *(v0 + 1664) = *(v0 + 744);
  v84 = *(v0 + 648);
  *(v0 + 1552) = *(v0 + 632);
  *(v0 + 1568) = v84;
  v85 = *(v0 + 680);
  *(v0 + 1584) = *(v0 + 664);
  *(v0 + 1600) = v85;
  v86 = *(v0 + 584);
  *(v0 + 1488) = *(v0 + 568);
  *(v0 + 1504) = v86;
  v87 = *(v0 + 616);
  *(v0 + 1520) = *(v0 + 600);
  *(v0 + 1536) = v87;
  *(v0 + 8856) = v126;
  *(v0 + 8848) = v124;
  v88 = *(v0 + 8680);
  v89 = *(v0 + 8400);
  v90 = *(v0 + 8080);
  v91 = *(v0 + 8040);
  v92 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v92;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v93 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v93;
  v94 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v94;
  v95 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v95;
  v96 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v96;
  v97 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v99 = v98;
  v100 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v97;
  *(v0 + 4200) = v99;
  *(v0 + 4208) = v88;
  *(v0 + 4216) = v90;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v100;
  *(v0 + 4240) = v101;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = *(v0 + 9456);
  v2 = *(v0 + 8368);
  v3 = *(v0 + 8048);
  v4 = *(v0 + 8040);
  swift_getErrorValue();
  v5 = *(v0 + 7176);
  v6 = Error.readableDescription.getter(*(v0 + 7184), *(v0 + 7192));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v6, v7, v4, v3, "SwiftMLSClientCoordinator createGroup failed to add KeyPackages to group { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = *(v0 + 7032);
  v9 = Error.readableDescription.getter(*(v0 + 7040), *(v0 + 7048));
  *(v0 + 9464) = v9;
  *(v0 + 9472) = v10;
  *(v0 + 6984) = 7;
  *(v0 + 6992) = v9;
  *(v0 + 7000) = v10;
  *(v0 + 9480) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v1 = *(v0 + 9480);
  v2 = *(v0 + 9472);
  v3 = *(v0 + 9464);
  v4 = *(v0 + 9416);
  v5 = *(v0 + 8128);
  v6 = *(v0 + 8104);
  v7 = *(v0 + 8096);
  swift_allocError();
  *v8 = 7;
  *(v8 + 8) = v3;
  *(v8 + 16) = v2;
  v4(v5, v7);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v9 = *(v0 + 8360);
  v10 = *(v0 + 8352);
  v11 = *(v0 + 8328);
  v12 = *(v0 + 8320);
  v13 = *(v0 + 8296);
  v14 = *(v0 + 8288);
  v15 = *(v0 + 8280);
  v16 = *(v0 + 8256);
  v17 = *(v0 + 8248);
  v18 = *(v0 + 8224);
  v21 = *(v0 + 8200);
  v22 = *(v0 + 8176);
  v23 = *(v0 + 8168);
  v24 = *(v0 + 8160);
  v25 = *(v0 + 8152);
  v26 = *(v0 + 8144);
  v27 = *(v0 + 8136);
  v28 = *(v0 + 8128);
  v29 = *(v0 + 8120);
  v30 = *(v0 + 8112);

  v19 = *(v0 + 8);

  return v19();
}

{
  v85 = v0;
  v1 = *(v0 + 8840);
  v2 = *(v0 + 8112);
  v3 = *(v0 + 8096);
  *(v0 + 8000) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 8040);
    (*(*(v0 + 8104) + 32))(*(v0 + 8128), *(v0 + 8112), *(v0 + 8096));
    if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 5)
    {
      v6 = *(v0 + 8376);
      v7 = *(v0 + 8128);
      v8 = *(v0 + 8120);
      v9 = *(v0 + 8104);
      v10 = *(v0 + 8096);
      v11 = *(v0 + 8048);
      v12 = *(v0 + 8040);

      v83 = *(v9 + 16);
      v83(v8, v7, v10);
      outlined init with copy of MLS.OutgoingEventState?(v11, v0 + 4336, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v13, v14))
      {
        v79 = *(v0 + 8400);
        v15 = *(v0 + 8392);
        v16 = *(v0 + 8120);
        v17 = *(v0 + 8104);
        v18 = *(v0 + 8096);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v84[0] = v81;
        *v19 = 136315394;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v79, v84);
        *(v19 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
        swift_allocError();
        v83(v21, v16, v18);
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = *(v17 + 8);
        v23(v16, v18);
        *(v19 + 14) = v22;
        *v20 = v22;
        _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator createGroup failed to add KeyPackages to group. Refetching KeyPackages { identifier: %s, error: %@ }", v19, 0x16u);
        outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        MEMORY[0x266755550](v81, -1, -1);
        MEMORY[0x266755550](v19, -1, -1);
      }

      else
      {
        v62 = *(v0 + 8120);
        v63 = *(v0 + 8104);
        v64 = *(v0 + 8096);

        v23 = *(v63 + 8);
        v23(v62, v64);
      }

      *(v0 + 9416) = v23;
      v65 = *(v0 + 8664);
      *(v0 + 5280) = &type metadata for MLS.GroupCreationError;
      *(v0 + 5288) = v65;
      *(v0 + 5256) = 5;
      *(v0 + 5264) = 0u;
      v66 = swift_task_alloc();
      *(v0 + 9424) = v66;
      *v66 = v0;
      v66[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
      v67 = *(v0 + 8400);
      v68 = *(v0 + 8392);
      v69 = *(v0 + 8080);
      v70 = *(v0 + 8040);

      return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v0 + 7768, v69, v68, v67, 0x7247657461657263, 0xEB0000000070756FLL, v0 + 5256);
    }

    v25 = *(v0 + 8680);
    v26 = *(v0 + 8128);
    v27 = *(v0 + 8104);
    v28 = *(v0 + 8096);

    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v24 = *(v0 + 8680);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  }

  v29 = *(v0 + 8840);
  v30 = *(v0 + 8376);
  v31 = *(v0 + 8048);
  v32 = *(v0 + 8040);

  outlined init with copy of MLS.OutgoingEventState?(v31, v0 + 4120, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v33 = v29;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v31, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 8840);
    v37 = *(v0 + 8400);
    v38 = *(v0 + 8392);
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v84[0] = v41;
    *v39 = 136315394;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v84);
    *(v39 + 12) = 2112;
    v42 = v36;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 14) = v43;
    *v40 = v43;
    _os_log_impl(&dword_264F1F000, v34, v35, "SwiftMLSClientCoordinator createGroup failed to add KeyPackages to group { identifier: %s, error: %@ }", v39, 0x16u);
    outlined destroy of NSObject?(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x266755550](v41, -1, -1);
    MEMORY[0x266755550](v39, -1, -1);
  }

  v44 = *(v0 + 8840);
  swift_getErrorValue();
  v45 = *(v0 + 7344);
  v46 = Error.readableDescription.getter(*(v0 + 7352), *(v0 + 7360));
  v48 = v47;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v49 = 7;
  *(v49 + 8) = v46;
  *(v49 + 16) = v48;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v50 = *(v0 + 8360);
  v51 = *(v0 + 8352);
  v52 = *(v0 + 8328);
  v53 = *(v0 + 8320);
  v54 = *(v0 + 8296);
  v55 = *(v0 + 8288);
  v56 = *(v0 + 8280);
  v57 = *(v0 + 8256);
  v58 = *(v0 + 8248);
  v59 = *(v0 + 8224);
  v71 = *(v0 + 8200);
  v72 = *(v0 + 8176);
  v73 = *(v0 + 8168);
  v74 = *(v0 + 8160);
  v75 = *(v0 + 8152);
  v76 = *(v0 + 8144);
  v77 = *(v0 + 8136);
  v78 = *(v0 + 8128);
  v80 = *(v0 + 8120);
  v82 = *(v0 + 8112);

  v60 = *(v0 + 8);

  return v60();
}

{
  v1 = *(v0 + 8104) + 8;
  (*(v0 + 9416))(*(v0 + 8128), *(v0 + 8096));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5256));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));
  v24 = *(v0 + 9440);
  v2 = *(v0 + 8360);
  v3 = *(v0 + 8352);
  v4 = *(v0 + 8328);
  v5 = *(v0 + 8320);
  v6 = *(v0 + 8296);
  v7 = *(v0 + 8288);
  v8 = *(v0 + 8280);
  v9 = *(v0 + 8256);
  v10 = *(v0 + 8248);
  v11 = *(v0 + 8224);
  v14 = *(v0 + 8200);
  v15 = *(v0 + 8176);
  v16 = *(v0 + 8168);
  v17 = *(v0 + 8160);
  v18 = *(v0 + 8152);
  v19 = *(v0 + 8144);
  v20 = *(v0 + 8136);
  v21 = *(v0 + 8128);
  v22 = *(v0 + 8120);
  v23 = *(v0 + 8112);

  v12 = *(v0 + 8);

  return v12();
}

{
  outlined consume of Data._Representation(v0[1106], v0[1107]);
  outlined destroy of MLS.Group((v0 + 232));
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v23 = v0[1157];
  v1 = v0[1045];
  v2 = v0[1044];
  v3 = v0[1041];
  v4 = v0[1040];
  v5 = v0[1037];
  v6 = v0[1036];
  v7 = v0[1035];
  v8 = v0[1032];
  v9 = v0[1031];
  v10 = v0[1028];
  v13 = v0[1025];
  v14 = v0[1022];
  v15 = v0[1021];
  v16 = v0[1020];
  v17 = v0[1019];
  v18 = v0[1018];
  v19 = v0[1017];
  v20 = v0[1016];
  v21 = v0[1015];
  v22 = v0[1014];

  v11 = v0[1];

  return v11();
}

{
  outlined consume of Data._Representation(v0[1106], v0[1107]);
  outlined destroy of MLS.Group((v0 + 232));
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);
  v23 = v0[1155];
  v1 = v0[1045];
  v2 = v0[1044];
  v3 = v0[1041];
  v4 = v0[1040];
  v5 = v0[1037];
  v6 = v0[1036];
  v7 = v0[1035];
  v8 = v0[1032];
  v9 = v0[1031];
  v10 = v0[1028];
  v13 = v0[1025];
  v14 = v0[1022];
  v15 = v0[1021];
  v16 = v0[1020];
  v17 = v0[1019];
  v18 = v0[1018];
  v19 = v0[1017];
  v20 = v0[1016];
  v21 = v0[1015];
  v22 = v0[1014];

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 8496);
  v11 = *v2;
  *(*v2 + 8504) = v1;

  if (v1)
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v7 = *(v4 + 8072);
    v8 = *(v4 + 8048);
    v9 = *(v4 + 8040);

    *(v4 + 193) = a1 & 1;
    outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = (*v3)[1084];
  v10 = *v3;
  v4[1085] = a1;
  v4[1086] = a2;
  v4[1087] = v2;

  if (v2)
  {
    v6 = v4[1046];
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v8 = v4[1046];
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 707);
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 8976);
  v6 = *v2;
  *(v3 + 8984) = a1;
  *(v3 + 8992) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v6 = *(*v3 + 9000);
  v7 = *v3;
  v7[1126] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
  }

  else
  {
    v8 = v7[1112];
    v9 = v7[1111];
    v21 = v7[1109];
    v10 = v7[1108];
    v7[1127] = a2;
    v7[1128] = a1;
    ObjectType = swift_getObjectType();
    v7[1129] = ObjectType;
    v7[941] = v9;
    v7[942] = v8;
    v12 = *(v21 + 64);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[1130] = v14;
    *v14 = v7;
    v14[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v15 = v7[1109];
    v16 = v7[1108];
    v17 = v7[1009];
    v18 = v7[1008];

    return (v20)(v18, v17, v7 + 941, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 9040);
  v8 = *v3;
  *(*v3 + 9048) = v2;

  if (v2)
  {
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    *(v6 + 9056) = a2;
    *(v6 + 9064) = a1;
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v4 = *v3;
  v5 = (*v3)[1178];
  v13 = *v3;
  v4[1179] = a2;
  v4[1180] = v2;

  if (v2)
  {
    v6 = v4[1085];
    v7 = v4[1046];
    outlined destroy of NSObject?((v4 + 945), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v9 = v7;
  }

  else
  {
    v10 = v4[1046];
    v11 = v4[971];

    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 657);

    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, char a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 8768);
  v7 = *v3;
  *(v5 + 8784) = a1;
  *(v5 + 194) = a2;
  *(v5 + 8792) = v2;

  v8 = *(v4 + 8368);
  if (v2)
  {
    v9 = *(v5 + 8680);
    outlined destroy of NSObject?(v5 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined consume of Data._Representation(*(v5 + 7640), *(v5 + 7648));
    v10 = *(v5 + 7696);

    v11 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    outlined consume of Data._Representation(*(v5 + 7640), *(v5 + 7648));
    v12 = *(v5 + 7696);

    v11 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v11, v8, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 8904);
  v6 = *v2;
  *(*v2 + 8912) = v1;

  if (v1)
  {
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    *(v4 + 8920) = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 8928);
  v4 = *v1;
  *(*v1 + 8936) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v4 = *v2;
  v5 = (*v2 + 2584);
  v6 = *(*v2 + 9096);
  v33 = *v2;
  *(*v2 + 9104) = v1;

  if (v1)
  {
    *(v4 + 2744) = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    *(v4 + 2801) = *(v5 + 57);
    *(v4 + 2776) = v8;
    *(v4 + 2792) = v9;
    *(v4 + 2760) = v7;
    outlined destroy of MLS.RetryAfterGroupVersionBehavior(v4 + 2744);
    v10 = *(v4 + 432);
    v12 = *(v4 + 384);
    v11 = *(v4 + 400);
    *(v4 + 784) = *(v4 + 416);
    *(v4 + 800) = v10;
    *(v4 + 752) = v12;
    *(v4 + 768) = v11;
    v13 = *(v4 + 496);
    v15 = *(v4 + 448);
    v14 = *(v4 + 464);
    *(v4 + 848) = *(v4 + 480);
    *(v4 + 864) = v13;
    *(v4 + 816) = v15;
    *(v4 + 832) = v14;
    v17 = *(v4 + 528);
    v16 = *(v4 + 544);
    v18 = *(v4 + 512);
    *(v4 + 928) = *(v4 + 560);
    *(v4 + 896) = v17;
    *(v4 + 912) = v16;
    *(v4 + 880) = v18;
    outlined destroy of NSObject?(v4 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v19 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    *(v4 + 9112) = a1;
    *(v4 + 2664) = *v5;
    v20 = v5[1];
    v21 = v5[2];
    v22 = v5[3];
    *(v4 + 2721) = *(v5 + 57);
    *(v4 + 2696) = v21;
    *(v4 + 2712) = v22;
    *(v4 + 2680) = v20;
    outlined destroy of MLS.RetryAfterGroupVersionBehavior(v4 + 2664);
    v23 = *(v4 + 416);
    v24 = *(v4 + 432);
    v25 = *(v4 + 400);
    *(v4 + 1120) = *(v4 + 384);
    *(v4 + 1168) = v24;
    *(v4 + 1152) = v23;
    *(v4 + 1136) = v25;
    v26 = *(v4 + 480);
    v27 = *(v4 + 496);
    v28 = *(v4 + 464);
    *(v4 + 1184) = *(v4 + 448);
    *(v4 + 1232) = v27;
    *(v4 + 1216) = v26;
    *(v4 + 1200) = v28;
    v30 = *(v4 + 528);
    v29 = *(v4 + 544);
    v31 = *(v4 + 560);
    *(v4 + 1248) = *(v4 + 512);
    *(v4 + 1296) = v31;
    *(v4 + 1280) = v29;
    *(v4 + 1264) = v30;
    outlined destroy of NSObject?(v4 + 1120, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v19 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v19, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 9376);
  v15 = *v2;
  *(*v2 + 9384) = v1;

  if (v1)
  {
    v6 = v4[1085];
    v7 = v4[1046];
    outlined destroy of NSObject?((v4 + 945), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined consume of Data._Representation(v4[951], v4[952]);
    v8 = v4[948];

    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v10 = v7;
  }

  else
  {
    v11 = v4[1166];
    v12 = v4[1046];
    v4[1174] = a1;
    outlined consume of Data._Representation(v4[951], v4[952]);
    v13 = v4[948];

    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v10 = v12;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

void closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  outlined init with copy of MLS.OutgoingEventState?(a4, v15, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(a4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*a4, *(a4 + 8), v15);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, v15);
    *(v13 + 22) = 2080;
    *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v15);
    _os_log_impl(&dword_264F1F000, v11, v12, "SwiftMLSClientCoordinator createGroup failed to get endMLS state for existing group { identifier: %s, group: %s, error: %s }", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }
}

void closure #2 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, unint64_t a2, uint64_t a3, const char *a4)
{

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v11);
    _os_log_impl(&dword_264F1F000, oslog, v7, a4, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }
}

void closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  outlined init with copy of MLS.OutgoingEventState?(a4, v13, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(a4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*a4, *(a4 + 8), v13);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v13);
    _os_log_impl(&dword_264F1F000, v9, v10, a5, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  *(v7 + 248) = a4;
  *(v7 + 256) = v6;
  *(v7 + 232) = a2;
  *(v7 + 240) = a3;
  *(v7 + 224) = a1;
  v8 = a5[1];
  *(v7 + 160) = *a5;
  *(v7 + 176) = v8;
  *(v7 + 192) = a5[2];
  *(v7 + 202) = *(a5 + 42);
  v9 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v9;
  *(v7 + 80) = *(a6 + 64);
  v10 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v7 + 264) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v11, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v32 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  outlined init with copy of MLS.OutgoingEventState?((v0 + 2), (v0 + 11), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v29 = v0[31];
    v7 = v0[29];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315650;
    v11 = v0[2];
    v10 = v0[3];

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v31);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v31);
    *(v8 + 22) = 2080;
    v13 = MEMORY[0x266754630](v29, &type metadata for MLS.AllMember);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v31);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator joinGroup joining group { identifier: %s, group: %s, otherMembers: %s }", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v16 = v0[32];
  v17 = v0[29];
  v18 = *(v16 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v19 = v0[2];
  v20 = v0[3];
  v21 = swift_task_alloc();
  v0[34] = v21;
  v22 = *(v0 + 15);
  *(v21 + 16) = v0 + 2;
  *(v21 + 24) = v16;
  *(v21 + 32) = v0 + 20;
  *(v21 + 40) = v17;
  *(v21 + 48) = v22;
  v23 = *(*v18 + 152);
  v30 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  v0[35] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  *v25 = v0;
  v25[1] = MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v27 = v0[28];

  return v30(v27, v19, v20, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v21, v26);
}

{
  v2 = *(*v1 + 280);
  v3 = *v1;
  v3[36] = v0;

  if (v0)
  {
    v4 = v3[33];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v4, 0);
  }

  else
  {
    v5 = v3[34];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[34];

  v2 = v0[1];
  v3 = v0[36];

  return v2();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[461] = a7;
  v7[460] = a6;
  v7[459] = a5;
  v7[458] = a4;
  v7[457] = a3;
  v7[456] = a2;
  v7[455] = a1;
  v8 = type metadata accessor for MLS.Group.GroupInfo();
  v7[462] = v8;
  v9 = *(v8 - 8);
  v7[463] = v9;
  v10 = *(v9 + 64) + 15;
  v7[464] = swift_task_alloc();
  v7[465] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v7[466] = v11;
  v12 = *(v11 - 8);
  v7[467] = v12;
  v13 = *(v12 + 64) + 15;
  v7[468] = swift_task_alloc();
  v14 = type metadata accessor for MLS.Group.Message();
  v7[469] = v14;
  v15 = *(v14 - 8);
  v7[470] = v15;
  v16 = *(v15 + 64) + 15;
  v7[471] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR) - 8) + 64) + 15;
  v7[472] = swift_task_alloc();
  v18 = type metadata accessor for MetricCollector.Event();
  v7[473] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v7[474] = swift_task_alloc();
  v7[475] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static MLSActor.shared;
  v7[476] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v20, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v1 = v0[475];
  v2 = v0[474];
  v3 = v0[473];
  v4 = v0[467];
  v5 = v0[466];
  v6 = v0[456];
  v7 = *(v6 + 32);
  v0[454] = v7;
  v0[451] = v7;
  outlined init with copy of MetricCollector((v0 + 454), (v0 + 447));
  Date.init()();
  v8 = *(v3 + 20);
  v9 = 1;
  (*(v4 + 56))(v1 + v8, 1, 1, v5);
  outlined init with take of MLS.KeyPackageProvider(v1, v2, type metadata accessor for MetricCollector.Event);
  v10 = v0[451];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v2, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);

  v0[451] = v10;
  if (*(v6 + 64) >> 60 != 15)
  {
    v12 = v0[472];
    outlined copy of Data._Representation(*(v0[456] + 56), *(v6 + 64));
    MLS.Group.Message.init(fromRaw:)();
    v9 = 0;
  }

  v0[477] = 0;
  v13 = v0[457];
  v14 = v0[456];
  (*(v0[470] + 56))(v0[472], v9, 1, v0[469]);

  outlined init with copy of MLS.OutgoingEventState?(v14, (v0 + 294), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v14, (v0 + 276), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  outlined init with copy of MLS.SwiftMLSClientPicker(*(v0 + 3656) + 16, v0 + 2712);
  if (*(v0 + 2752))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 2712), v0 + 2800);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 2712), v0 + 2920);
    v1 = *(v0 + 2944);
    v2 = *(v0 + 2952);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 2920), v1);
    *(v0 + 2824) = v1;
    *(v0 + 2832) = *(v2 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2800));
    (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v3, v1);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2920));
  }

  v5 = *(v0 + 3816);
  v6 = *(v0 + 3768);
  v7 = *(v0 + 3664);
  v8 = *(v0 + 2824);
  v9 = *(v0 + 2832);
  __swift_project_boxed_opaque_existential_1((v0 + 2800), v8);
  outlined copy of Data._Representation(*v7, *(v7 + 8));
  MLS.Group.Message.init(fromRaw:)();
  if (v5)
  {
    v10 = *(v0 + 3808);
    v11 = *(v0 + 3656);
    v12 = *(v0 + 3648);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2800));
    v13 = *(v0 + 3608);

    swift_getErrorValue();
    v14 = *(v0 + 3120);
    v15 = Error.readableDescription.getter(*(v0 + 3128), *(v0 + 3136));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v15, v16, v11, v12, "SwiftMLSClientCoordinator joinGroup failed to join group { identifier: %s, error: %s }");

    swift_getErrorValue();
    v17 = *(v0 + 3360);
    v18 = Error.readableDescription.getter(*(v0 + 3368), *(v0 + 3376));
    *(v0 + 3880) = v18;
    *(v0 + 3888) = v19;
    *(v0 + 3336) = 4;
    *(v0 + 3344) = v18;
    *(v0 + 3352) = v19;
    *(v0 + 3896) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v10, 0);
  }

  else
  {
    v20 = *(v9 + 72);
    v26 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    *(v0 + 3824) = v22;
    *v22 = v0;
    v22[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v23 = *(v0 + 3776);
    v24 = *(v0 + 3768);

    return v26(v0 + 2760, v24, v23, v8, v9);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 3824);
  v4 = *v1;
  *(*v1 + 3832) = v0;

  (*(v2[470] + 8))(v2[471], v2[469]);
  if (v0)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = v0[476];
  v2 = v0[457];
  v3 = v0[456];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 350);

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v1, 0);
}

{
  v1 = v0[348];
  v2 = v0[349];
  __swift_project_boxed_opaque_existential_1(v0 + 345, v1);
  v3 = *(v2 + 8);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[480] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v7(v1, v2);
}

{
  v47 = v0;
  v1 = v0[460];
  v2 = v0[459];
  v3 = v0[457];
  v4 = v0[456];
  v5 = *v4;
  v0[483] = *v4;
  v6 = v4[1];
  v0[484] = v6;

  v7 = MLS.SwiftMLSClientCoordinator.uuidToUse(identifier:eventIdentifier:)(v2, v1, v5, v6);
  if (v8 >> 60 != 15)
  {
    v9 = v7;
    v10 = v8;
    if ((specialized static Data.== infix(_:_:)(v7, v8, v0[481], v0[482]) & 1) == 0)
    {
      v11 = v0[482];
      v12 = v0[481];
      v13 = v0[460];
      v43 = v11;
      v14 = v0[456];
      outlined init with copy of MLS.OutgoingEventState?(v14, (v0 + 330), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      outlined copy of Data?(v9, v10);
      outlined copy of Data._Representation(v12, v11);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();
      outlined destroy of NSObject?(v14, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      outlined consume of Data?(v9, v10);
      outlined consume of Data._Representation(v12, v43);
      if (os_log_type_enabled(v15, v16))
      {
        v40 = v0[481];
        v41 = v0[482];
        v17 = v0[460];
        v18 = v0[459];
        v42 = v16;
        v19 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v46 = v44;
        *v19 = 136315906;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v46);
        *(v19 + 12) = 2080;
        *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v46);
        *(v19 + 22) = 2080;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v21 = [(objc_class *)isa debugDescription];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v46);

        *(v19 + 24) = v25;
        *(v19 + 32) = 2080;
        v26 = Data._bridgeToObjectiveC()().super.isa;
        v27 = [(objc_class *)v26 debugDescription];

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v46);

        *(v19 + 34) = v31;
        _os_log_impl(&dword_264F1F000, v15, v42, "SwiftMLSClientCoordinator joinGroup given a mismatching identifier in welcome message { identifier: %s, groupIdentifier: %s, uuidToUse: %s, swiftMLSGroupID: %s }", v19, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266755550](v44, -1, -1);
        MEMORY[0x266755550](v19, -1, -1);
        outlined consume of Data?(v9, v10);

        goto LABEL_7;
      }
    }

    outlined consume of Data?(v9, v10);
  }

LABEL_7:
  v32 = v0[457];
  v33._countAndFlagsBits = 0x534C4D7466697753;
  v33._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v33);
  v34 = *(**(v32 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader) + 160);
  v45 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  v0[488] = v36;
  *v36 = v0;
  v36[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v37 = v0[460];
  v38 = v0[459];

  return (v45)(v0 + 345, v38, v37);
}

{
  v1 = *(v0 + 3832);
  v2 = *(v0 + 3808);
  v3 = *(v0 + 3656);
  v4 = *(v0 + 3648);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2800));
  v5 = *(v0 + 3608);

  swift_getErrorValue();
  v6 = *(v0 + 3120);
  v7 = Error.readableDescription.getter(*(v0 + 3128), *(v0 + 3136));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v7, v8, v3, v4, "SwiftMLSClientCoordinator joinGroup failed to join group { identifier: %s, error: %s }");

  swift_getErrorValue();
  v9 = *(v0 + 3360);
  v10 = Error.readableDescription.getter(*(v0 + 3368), *(v0 + 3376));
  *(v0 + 3880) = v10;
  *(v0 + 3888) = v11;
  *(v0 + 3336) = 4;
  *(v0 + 3344) = v10;
  *(v0 + 3352) = v11;
  *(v0 + 3896) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v2, 0);
}

{
  v1 = v0[487];
  v2 = v0[486];
  v3 = v0[485];
  v4 = v0[472];
  swift_allocError();
  *v5 = 4;
  *(v5 + 8) = v3;
  *(v5 + 16) = v2;
  outlined destroy of NSObject?(v4, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v6 = v0[475];
  v7 = v0[474];
  v8 = v0[472];
  v9 = v0[471];
  v10 = v0[468];
  v11 = v0[465];
  v12 = v0[464];

  v13 = v0[1];

  return v13();
}

{
  v2 = *v1;
  v3 = *(*v1 + 3904);
  v10 = *v1;
  *(*v1 + 3912) = v0;

  if (v0)
  {
    v4 = v2[484];
    v5 = v2[476];

    v6 = v2[451];

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v8 = v5;
  }

  else
  {
    v8 = v2[476];
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v1 = *(v0 + 3656);
  v2 = *(v0 + 3648);

  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 2136, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 2064, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v1 = v0[461];

  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v2);
  v0[490] = v3;

  v4 = swift_task_alloc();
  v0[491] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v5 = v0[460];
  v6 = v0[459];
  v7 = v0[457];

  return MLS.SwiftMLSClientCoordinator.replaceMembers(identifier:otherMembers:)(v6, v5, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 3928);
  v9 = *v1;
  *(*v1 + 3936) = v0;

  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v5 = v2[490];
    v6 = v2[457];
    v7 = v2[456];

    outlined destroy of NSObject?(v7, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[476];
  v2 = v0[457];
  v3 = v0[456];

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v1, 0);
}

{
  v1 = *(v0 + 3656);
  swift_retain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v1 = v0[476];
  v2 = v0[457];
  v3 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[493] = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v4 = (v2 + v3);
  v0[494] = *v4;
  v0[495] = v4[1];
  v0[496] = *(v2 + 80);
  v0[497] = *(v2 + 88);
  outlined init with copy of ServerBag.MLS(v2 + 144, (v0 + 355));
  v0[498] = type metadata accessor for MLS.KeyUpdateTracker();
  v0[499] = swift_allocObject();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v1, 0);
}

{
  v1 = v0[499];
  v16 = v0[497];
  v2 = v0[496];
  v3 = v0[495];
  v4 = v0[494];
  v5 = v0[460];
  v1[6] = v0[459];
  v1[7] = v5;
  v1[4] = v4;
  v1[5] = v3;
  v1[2] = v2;
  v1[3] = v16;
  outlined init with copy of ServerBag.MLS((v0 + 355), (v1 + 11));
  ObjectType = swift_getObjectType();
  v0[500] = ObjectType;
  v0[436] = v4;
  v0[437] = v3;
  v7 = *(v16 + 144);

  swift_unknownObjectRetain();
  v15 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[501] = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v10 = v0[497];
  v11 = v0[496];
  v12 = v0[460];
  v13 = v0[459];

  return (v15)(v0 + 423, v13, v12, v0 + 436, ObjectType, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 4008);
  v7 = *v1;
  *(*v1 + 4016) = v0;

  v4 = *(v2 + 3808);
  if (v0)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 3936);
  v2 = *(v0 + 3920);
  v3 = *(v0 + 3872);
  v4 = *(v0 + 3808);
  v5 = *(v0 + 3656);
  v6 = *(v0 + 3648);

  v7 = *(v0 + 3608);

  swift_getErrorValue();
  v8 = *(v0 + 3312);
  v9 = Error.readableDescription.getter(*(v0 + 3320), *(v0 + 3328));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v9, v10, v5, v6, "SwiftMLSClientCoordinator joinGroup failed to save members { identifier: %s, error: %s }");

  swift_getErrorValue();
  v11 = *(v0 + 3288);
  v12 = Error.readableDescription.getter(*(v0 + 3296), *(v0 + 3304));
  *(v0 + 4024) = v12;
  *(v0 + 4032) = v13;
  *(v0 + 3264) = 11;
  *(v0 + 3272) = v12;
  *(v0 + 3280) = v13;
  *(v0 + 4040) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v4, 0);
}

{
  v1 = v0[505];
  v2 = v0[504];
  v3 = v0[503];
  v4 = v0[482];
  v5 = v0[481];
  v6 = v0[472];
  swift_allocError();
  *v7 = 11;
  *(v7 + 8) = v3;
  *(v7 + 16) = v2;
  outlined consume of Data._Representation(v5, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v8 = v0[475];
  v9 = v0[474];
  v10 = v0[472];
  v11 = v0[471];
  v12 = v0[468];
  v13 = v0[465];
  v14 = v0[464];

  v15 = v0[1];

  return v15();
}

{
  LODWORD(v1) = *(v0 + 3400);
  if (v1 == 2)
  {
    v1 = *(v0 + 3744);
    v2 = *(v0 + 3736);
    v3 = *(v0 + 3728);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v5 = v4;
    (*(v2 + 8))(v1, v3);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2840));
    v6 = 0;
    LOBYTE(v1) = 1;
  }

  else
  {
    v5 = *(v0 + 3392);
    v6 = *(v0 + 3384);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2840));
  }

  v7 = *(v0 + 3992);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  *(v7 + 80) = v1 & 1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v1 = v0[499];
  v2 = v0[498];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 355);
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[5];

  v5 = v1[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 11);
  swift_deallocPartialClassInstance();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v1 = *(v0 + 4016);
  v2 = *(v0 + 3872);
  v3 = *(v0 + 3808);
  v4 = *(v0 + 3656);

  v5 = *(v0 + 3608);

  swift_getErrorValue();
  v6 = *(v0 + 3240);
  v7 = Error.readableDescription.getter(*(v0 + 3248), *(v0 + 3256));
  closure #2 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v7, v8, v4, "Failed to load in KeyUpdateTracker: %s");

  swift_getErrorValue();
  v9 = *(v0 + 3216);
  v10 = Error.readableDescription.getter(*(v0 + 3224), *(v0 + 3232));
  *(v0 + 4048) = v10;
  *(v0 + 4056) = v11;
  *(v0 + 3192) = 10;
  *(v0 + 3200) = v10;
  *(v0 + 3208) = v11;
  *(v0 + 4064) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v3, 0);
}

{
  v1 = v0[508];
  v2 = v0[507];
  v3 = v0[506];
  v4 = v0[482];
  v5 = v0[481];
  v6 = v0[472];
  swift_allocError();
  *v7 = 10;
  *(v7 + 8) = v3;
  *(v7 + 16) = v2;
  outlined consume of Data._Representation(v5, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v8 = v0[475];
  v9 = v0[474];
  v10 = v0[472];
  v11 = v0[471];
  v12 = v0[468];
  v13 = v0[465];
  v14 = v0[464];

  v15 = v0[1];

  return v15();
}

{
  v1 = *(v0 + 3808);
  v2 = *(v0 + 3656);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v1, 0);
}

{
  v1 = *(v0 + 3992);
  v2 = *(v0 + 3680);
  v3 = *(v0 + 3672);
  v4 = *(v0 + 3648);
  v5 = *(**(v0 + 3656) + 256);

  v6 = v5(v0 + 3000);
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v8;
  *v8 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v3, v2, isUniquelyReferenced_nonNull_native);

  *v8 = v12;
  v6(v0 + 3000, 0);

  outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 2424, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 2496, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v1 = v0[460];
  v2 = (v0[457] + v0[493]);
  outlined init with copy of ServerBag.MLS((v0 + 345), (v0 + 360));
  v0[509] = *v2;
  v0[510] = v2[1];
  v3 = v0[363];
  v4 = v0[364];
  __swift_project_boxed_opaque_existential_1(v0 + 360, v3);
  v5 = *(v4 + 32);

  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[511] = v7;
  *v7 = v0;
  v7[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v9(v3, v4);
}

{
  v1 = v0[363];
  v2 = v0[364];
  __swift_project_boxed_opaque_existential_1(v0 + 360, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[514] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v7(v1, v2);
}

{
  v1 = *(v0 + 4096);
  v2 = *(v0 + 3680);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2880));

  v3 = *(v0 + 3872);
  v4 = *(v0 + 3808);
  v5 = *(v0 + 3656);
  v6 = *(v0 + 3648);

  v7 = *(v0 + 3608);

  swift_getErrorValue();
  v8 = *(v0 + 3096);
  v9 = Error.readableDescription.getter(*(v0 + 3104), *(v0 + 3112));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v9, v10, v5, v6, "SwiftMLSClientCoordinator joinGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v11 = *(v0 + 3168);
  v12 = Error.readableDescription.getter(*(v0 + 3176), *(v0 + 3184));
  *(v0 + 4280) = v12;
  *(v0 + 4288) = v13;
  *(v0 + 3144) = 9;
  *(v0 + 3152) = v12;
  *(v0 + 3160) = v13;
  *(v0 + 4296) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v4, 0);
}

{
  v2 = *(*v1 + 4128);
  v5 = *v1;
  *(*v1 + 4136) = v0;

  if (v0)
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[465];
  v2 = v0[463];
  v3 = v0[462];
  v0[518] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[519] = v4;
  v5 = *(v2 + 8);
  v0[520] = v5;
  v0[521] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = v0[363];
  v7 = v0[364];
  __swift_project_boxed_opaque_existential_1(v0 + 360, v6);
  v8 = *(v7 + 56);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[522] = v10;
  *v10 = v0;
  v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v12(v6, v7);
}

{
  v1 = v0[363];
  v2 = v0[364];
  __swift_project_boxed_opaque_existential_1(v0 + 360, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[525] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v7(v1, v2);
}

{
  v1 = *(v0 + 4136);
  v2 = *(v0 + 3680);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2880));

  v3 = *(v0 + 3872);
  v4 = *(v0 + 3808);
  v5 = *(v0 + 3656);
  v6 = *(v0 + 3648);

  v7 = *(v0 + 3608);

  swift_getErrorValue();
  v8 = *(v0 + 3096);
  v9 = Error.readableDescription.getter(*(v0 + 3104), *(v0 + 3112));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v9, v10, v5, v6, "SwiftMLSClientCoordinator joinGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v11 = *(v0 + 3168);
  v12 = Error.readableDescription.getter(*(v0 + 3176), *(v0 + 3184));
  *(v0 + 4280) = v12;
  *(v0 + 4288) = v13;
  *(v0 + 3144) = 9;
  *(v0 + 3152) = v12;
  *(v0 + 3160) = v13;
  *(v0 + 4296) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v4, 0);
}

{
  v1 = *(v0 + 4208);
  v2 = *(v0 + 4192);
  v3 = *(v0 + 4152);
  v4 = *(v0 + 4144);
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = *(v0 + 4192);
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 4184);
  }

  v7 = *(v0 + 3680);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2880));

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v8 = *(v0 + 3872);
  v9 = *(v0 + 3808);
  v10 = *(v0 + 3656);
  v11 = *(v0 + 3648);

  v12 = *(v0 + 3608);

  swift_getErrorValue();
  v13 = *(v0 + 3096);
  v14 = Error.readableDescription.getter(*(v0 + 3104), *(v0 + 3112));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v14, v15, v10, v11, "SwiftMLSClientCoordinator joinGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v16 = *(v0 + 3168);
  v17 = Error.readableDescription.getter(*(v0 + 3176), *(v0 + 3184));
  *(v0 + 4280) = v17;
  *(v0 + 4288) = v18;
  *(v0 + 3144) = 9;
  *(v0 + 3152) = v17;
  *(v0 + 3160) = v18;
  *(v0 + 4296) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v9, 0);
}

{
  v1 = *(v0 + 4272);
  v2 = *(v0 + 4264);
  v3 = *(v0 + 4216);
  v4 = *(v0 + 4192);
  v5 = *(v0 + 4152);
  v6 = *(v0 + 4144);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 4120);
  v17 = v7;
  v8 = *(v0 + 4104);
  v9 = *(v0 + 3680);
  v10 = *(v0 + 3672);
  v20 = *(v0 + 3656);
  v21 = *(v0 + 3648);
  v22 = *(v0 + 3808);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 4216);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 4224);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 4192);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 4184);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 120) = v10;
  *(v0 + 128) = v9;
  *(v0 + 136) = v15;
  *(v0 + 144) = v15;
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;
  *(v0 + 168) = v5;
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  *(v0 + 192) = v12;
  *(v0 + 200) = v11;
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  outlined init with copy of MLS.Group(v0 + 120, v0 + 1056);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2880));
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v15;
  *(v0 + 40) = v15;
  *(v0 + 48) = v17;
  *(v0 + 56) = v18;
  *(v0 + 64) = v19;
  *(v0 + 72) = v14;
  *(v0 + 80) = v13;
  *(v0 + 88) = v12;
  *(v0 + 96) = v11;
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  outlined destroy of MLS.Group(v0 + 16);

  outlined destroy of NSObject?(v21, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v21, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v22, 0);
}

{
  v52 = v0;
  v1 = *(v0 + 3656);
  v2 = *(v0 + 3648);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 2568, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.Group(v0 + 120, v0 + 1160);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  outlined destroy of MLS.Group(v0 + 120);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3872);
    v6 = *(v0 + 3864);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v45);
    *(v7 + 12) = 2080;
    v9 = *(v0 + 168);
    v10 = *(v0 + 200);
    v49 = *(v0 + 184);
    v50 = v10;
    v51 = *(v0 + 216);
    v11 = *(v0 + 136);
    *v46 = *(v0 + 120);
    *&v46[16] = v11;
    v47 = *(v0 + 152);
    v48 = v9;
    outlined init with copy of MLS.Group(v0 + 120, v0 + 952);
    v12 = MLS.Group.description.getter();
    v14 = v13;
    v15 = v50;
    *(v0 + 288) = v49;
    *(v0 + 304) = v15;
    *(v0 + 320) = v51;
    v16 = *&v46[16];
    *(v0 + 224) = *v46;
    *(v0 + 240) = v16;
    v17 = v48;
    *(v0 + 256) = v47;
    *(v0 + 272) = v17;
    outlined destroy of MLS.Group(v0 + 224);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v45);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator joinGroup returning processedContext to caller { identifier: %s, group: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v19 = *(v0 + 3648);
  *(v0 + 3408) = *(v19 + 40);
  v20 = *(v0 + 3416);
  if (v20 >> 60 == 15)
  {
    v21 = *(v0 + 3872);
    v22 = *(v0 + 3864);
    v23 = *(v0 + 3688);
    v24 = *(v0 + 3664);
    v25 = *(v0 + 3656);
    v26 = (v25 + *(v0 + 3944));
    *(v0 + 3424) = *(v19 + 16);
    v27 = *(v24 + 32);
    *(v0 + 3041) = *(v24 + 41);
    *(v0 + 3032) = v27;

    outlined init with copy of MLS.OutgoingEventState?(v0 + 3424, v0 + 3440, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 3032, v0 + 3064);
    v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v23);

    *(v0 + 2296) = *(v0 + 3032);
    *(v0 + 2305) = *(v0 + 3041);
    *&v46[7] = *(v0 + 3424);
    *(v0 + 2280) = v22;
    *(v0 + 2288) = v21;
    *(v0 + 2321) = *v46;
    *(v0 + 2336) = *&v46[15];
    *(v0 + 2344) = v28;
    *(v0 + 4320) = *(v25 + 96);
    v29 = *(v0 + 2328);
    *(v0 + 1608) = *(v0 + 2312);
    *(v0 + 1624) = v29;
    *(v0 + 1640) = v28;
    v30 = *(v0 + 2296);
    *(v0 + 1576) = *(v0 + 2280);
    *(v0 + 1592) = v30;
    *(v0 + 1672) = 1;
    outlined init with copy of ServerBag.MLS(v0 + 2760, v0 + 2960);
    *(v0 + 4328) = *v26;
    *(v0 + 4336) = v26[1];
    outlined init with copy of MLS.OutgoingEventState?(v0 + 2280, v0 + 1992, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
  }

  else
  {
    v31 = *(v0 + 3976);
    v32 = (*(v0 + 3656) + *(v0 + 3944));
    v33 = *(v0 + 3408);
    v34 = v32[1];
    *(v0 + 3472) = *v32;
    *(v0 + 3480) = v34;
    v35 = *(v31 + 56);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 3408, v0 + 3456, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v44 = (v35 + *v35);
    v36 = v35[1];
    v37 = swift_task_alloc();
    *(v0 + 4304) = v37;
    *v37 = v0;
    v37[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v38 = *(v0 + 4000);
    v39 = *(v0 + 3976);
    v40 = *(v0 + 3968);
    v41 = *(v0 + 3680);
    v42 = *(v0 + 3672);

    return v44(v33, v20, v42, v41, v0 + 3472, v38, v39);
  }
}

{
  v1 = *(v0 + 4256);
  v2 = *(v0 + 4216);
  v3 = *(v0 + 4192);
  v4 = *(v0 + 4152);
  v5 = *(v0 + 4144);
  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = *(v0 + 4216);
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 4224);
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = *(v0 + 4192);
  }

  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 4184);
  }

  v10 = *(v0 + 3680);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2880));

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v11 = *(v0 + 3872);
  v12 = *(v0 + 3808);
  v13 = *(v0 + 3656);
  v14 = *(v0 + 3648);

  v15 = *(v0 + 3608);

  swift_getErrorValue();
  v16 = *(v0 + 3096);
  v17 = Error.readableDescription.getter(*(v0 + 3104), *(v0 + 3112));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v17, v18, v13, v14, "SwiftMLSClientCoordinator joinGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v19 = *(v0 + 3168);
  v20 = Error.readableDescription.getter(*(v0 + 3176), *(v0 + 3184));
  *(v0 + 4280) = v20;
  *(v0 + 4288) = v21;
  *(v0 + 3144) = 9;
  *(v0 + 3152) = v20;
  *(v0 + 3160) = v21;
  *(v0 + 4296) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v14, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v14, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v12, 0);
}

{
  v1 = v0[537];
  v2 = v0[536];
  v3 = v0[535];
  v4 = v0[482];
  v5 = v0[481];
  v6 = v0[472];
  swift_allocError();
  *v7 = 9;
  *(v7 + 8) = v3;
  *(v7 + 16) = v2;
  outlined consume of Data._Representation(v5, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v8 = v0[475];
  v9 = v0[474];
  v10 = v0[472];
  v11 = v0[471];
  v12 = v0[468];
  v13 = v0[465];
  v14 = v0[464];

  v15 = v0[1];

  return v15();
}

{
  v2 = *v1;
  v3 = *(*v1 + 4304);
  v11 = *v1;
  *(*v1 + 4312) = v0;

  if (v0)
  {
    v4 = v2[484];
    v5 = v2[476];

    v6 = v2[435];

    v7 = v2[451];

    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v5 = v2[476];
    v9 = v2[435];

    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v8, v5, 0);
}

{
  outlined destroy of NSObject?(v0 + 3408, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v11 = *(v0 + 3872);
  v1 = *(v0 + 3864);
  v2 = *(v0 + 3688);
  v3 = *(v0 + 3664);
  v4 = *(v0 + 3656);
  v5 = (v4 + *(v0 + 3944));
  *(v0 + 3424) = *(*(v0 + 3648) + 16);
  v6 = *(v3 + 32);
  *(v0 + 3041) = *(v3 + 41);
  *(v0 + 3032) = v6;

  outlined init with copy of MLS.OutgoingEventState?(v0 + 3424, v0 + 3440, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  outlined init with copy of MLS.AllMember(v0 + 3032, v0 + 3064);
  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v2);

  *(v0 + 2296) = *(v0 + 3032);
  *(v0 + 2305) = *(v0 + 3041);
  *&v12[7] = *(v0 + 3424);
  *(v0 + 2280) = v1;
  *(v0 + 2288) = v11;
  *(v0 + 2321) = *v12;
  *(v0 + 2336) = *&v12[15];
  *(v0 + 2344) = v7;
  *(v0 + 4320) = *(v4 + 96);
  v8 = *(v0 + 2328);
  *(v0 + 1608) = *(v0 + 2312);
  *(v0 + 1624) = v8;
  *(v0 + 1640) = v7;
  v9 = *(v0 + 2296);
  *(v0 + 1576) = *(v0 + 2280);
  *(v0 + 1592) = v9;
  *(v0 + 1672) = 1;
  outlined init with copy of ServerBag.MLS(v0 + 2760, v0 + 2960);
  *(v0 + 4328) = *v5;
  *(v0 + 4336) = v5[1];
  outlined init with copy of MLS.OutgoingEventState?(v0 + 2280, v0 + 1992, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v1 = v0[460];
  v2 = v0[373];
  v3 = v0[374];
  __swift_project_boxed_opaque_existential_1(v0 + 370, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[543] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v8(v2, v3);
}

{
  v1 = v0[373];
  v2 = v0[374];
  __swift_project_boxed_opaque_existential_1(v0 + 370, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[546] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v7(v1, v2);
}

{
  v0[565] = v0[544];
  v1 = v0[460];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 370);

  v2 = v0[476];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 4384);
  v10 = *v1;
  *(*v1 + 4392) = v0;

  if (v0)
  {
    v4 = *(v2 + 1608);
    *(v2 + 1936) = *(v2 + 1624);
    v5 = *(v2 + 1656);
    *(v2 + 1952) = *(v2 + 1640);
    *(v2 + 1968) = v5;
    v6 = *(v2 + 1592);
    *(v2 + 1888) = *(v2 + 1576);
    *(v2 + 1904) = v6;
    *(v2 + 1984) = *(v2 + 1672);
    *(v2 + 1920) = v4;
    outlined destroy of NSObject?(v2 + 1888, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v7 = *(v2 + 3608);

    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = v0[521];
  v2 = v0[520];
  v3 = v0[464];
  v4 = v0[462];
  v0[550] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[551] = v5;
  v2(v3, v4);
  v6 = v0[373];
  v7 = v0[374];
  __swift_project_boxed_opaque_existential_1(v0 + 370, v6);
  v8 = *(v7 + 56);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[552] = v10;
  *v10 = v0;
  v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v12(v6, v7);
}

{
  v1 = v0[373];
  v2 = v0[374];
  __swift_project_boxed_opaque_existential_1(v0 + 370, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[555] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v7(v1, v2);
}

{
  v0[565] = v0[549];
  v1 = v0[460];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 370);

  v2 = v0[476];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v2, 0);
}

{
  v1 = v0[554];
  v2 = v0[551];
  v3 = v0[550];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[554];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[553];
  }

  v0[565] = v0[556];
  v6 = v0[460];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 370);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[476];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v7, 0);
}

{
  v1 = *(v0 + 4496);
  v2 = (v0 + 536);
  v3 = *(v0 + 4488);
  v27 = v3;
  v28 = v1;
  v4 = *(v0 + 4456);
  v5 = *(v0 + 4432);
  v6 = *(v0 + 4408);
  v7 = *(v0 + 4400);
  v25 = v7;
  v26 = v6;
  v8 = *(v0 + 4376);
  v24 = v8;
  v9 = *(v0 + 4360);
  v30 = *(v0 + 4320);
  v10 = *(v0 + 3680);
  v11 = *(v0 + 3672);
  if (v4 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 4456);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 4464);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 4432);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 4424);
  }

  if ((v9 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v9;
  }

  *(v0 + 744) = v11;
  *(v0 + 752) = v10;
  *(v0 + 760) = v16;
  *(v0 + 768) = v16;
  *(v0 + 776) = v8;
  *(v0 + 784) = v7;
  *(v0 + 792) = v6;
  *(v0 + 800) = v15;
  *(v0 + 808) = v14;
  *(v0 + 816) = v13;
  *(v0 + 824) = v12;
  *(v0 + 832) = v1;
  *(v0 + 840) = v3;
  outlined init with copy of MLS.Group(v0 + 744, v0 + 640);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2960));
  *(v0 + 848) = v11;
  *(v0 + 856) = v10;
  *(v0 + 864) = v16;
  *(v0 + 872) = v16;
  *(v0 + 880) = v24;
  *(v0 + 888) = v25;
  *(v0 + 896) = v26;
  *(v0 + 904) = v15;
  *(v0 + 912) = v14;
  *(v0 + 920) = v13;
  *(v0 + 928) = v12;
  *(v0 + 936) = v28;
  *(v0 + 944) = v27;
  outlined destroy of MLS.Group(v0 + 848);
  v17 = *(v0 + 760);
  *v2 = *(v0 + 744);
  *(v0 + 552) = v17;
  *(v0 + 632) = *(v0 + 840);
  v18 = *(v0 + 824);
  *(v0 + 600) = *(v0 + 808);
  *(v0 + 616) = v18;
  v19 = *(v0 + 792);
  *(v0 + 568) = *(v0 + 776);
  *(v0 + 584) = v19;
  v29 = (*v30 + 384);
  v31 = (*v29 + **v29);
  v20 = (*v29)[1];
  v21 = swift_task_alloc();
  *(v0 + 4504) = v21;
  *v21 = v0;
  v21[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v22 = *(v0 + 4320);

  return (v31)(v0 + 1576, v2, 1, 0);
}

{
  v2 = *v1;
  v3 = *v1 + 536;
  v4 = *v1 + 1576;
  v5 = *(*v1 + 4504);
  v32 = *v1;
  *(*v1 + 4512) = v0;

  if (v0)
  {
    v6 = *(v2 + 3808);
    v8 = *(v3 + 16);
    v7 = *(v3 + 32);
    *(v2 + 432) = *v3;
    *(v2 + 448) = v8;
    *(v2 + 464) = v7;
    v10 = *(v3 + 64);
    v9 = *(v3 + 80);
    v11 = *(v3 + 48);
    *(v2 + 528) = *(v3 + 96);
    *(v2 + 496) = v10;
    *(v2 + 512) = v9;
    *(v2 + 480) = v11;
    outlined destroy of MLS.Group(v2 + 432);
    v13 = *(v4 + 16);
    v12 = *(v4 + 32);
    *(v2 + 1784) = *v4;
    *(v2 + 1800) = v13;
    *(v2 + 1816) = v12;
    v15 = *(v4 + 64);
    v14 = *(v4 + 80);
    v16 = *(v4 + 48);
    *(v2 + 1880) = *(v4 + 96);
    *(v2 + 1848) = v15;
    *(v2 + 1864) = v14;
    *(v2 + 1832) = v16;
    outlined destroy of NSObject?(v2 + 1784, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v17 = *(v2 + 3608);

    v18 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v19 = v6;
  }

  else
  {
    v20 = *(v2 + 3808);
    v22 = *(v3 + 16);
    v21 = *(v3 + 32);
    *(v2 + 328) = *v3;
    *(v2 + 344) = v22;
    *(v2 + 360) = v21;
    v24 = *(v3 + 64);
    v23 = *(v3 + 80);
    v25 = *(v3 + 48);
    *(v2 + 424) = *(v3 + 96);
    *(v2 + 392) = v24;
    *(v2 + 408) = v23;
    *(v2 + 376) = v25;
    outlined destroy of MLS.Group(v2 + 328);
    v27 = *(v4 + 16);
    v26 = *(v4 + 32);
    *(v2 + 1680) = *v4;
    *(v2 + 1696) = v27;
    *(v2 + 1712) = v26;
    v29 = *(v4 + 64);
    v28 = *(v4 + 80);
    v30 = *(v4 + 96);
    *(v2 + 1728) = *(v4 + 48);
    *(v2 + 1776) = v30;
    *(v2 + 1760) = v28;
    *(v2 + 1744) = v29;
    outlined destroy of NSObject?(v2 + 1680, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v18 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v19 = v20;
  }

  return MEMORY[0x2822009F8](v18, v19, 0);
}

{
  v1 = v0[557];
  v2 = v0[554];
  v3 = v0[551];
  v4 = v0[550];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[557];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[558];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[554];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[553];
  }

  v0[565] = v0[560];
  v9 = v0[460];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 370);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[476];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v10, 0);
}

{
  v1 = v0[472];
  outlined consume of Data._Representation(v0[481], v0[482]);
  outlined destroy of MLS.Group((v0 + 15));
  outlined destroy of NSObject?((v0 + 285), &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v2 = v0[565];
  v3 = v0[475];
  v4 = v0[474];
  v5 = v0[472];
  v6 = v0[471];
  v7 = v0[468];
  v8 = v0[465];
  v9 = v0[464];

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 3800);
  v2 = *(v0 + 3792);
  v3 = *(v0 + 3776);
  v4 = *(v0 + 3768);
  v5 = *(v0 + 3744);
  v6 = *(v0 + 3720);
  v7 = *(v0 + 3712);
  v8 = *(v0 + 3640);
  outlined consume of Data._Representation(*(v0 + 3848), *(v0 + 3856));
  outlined destroy of NSObject?(v0 + 2280, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v9 = *(v0 + 3608);
  *v8 = *(v0 + 3424);
  v10 = *(v0 + 216);
  v11 = *(v0 + 200);
  v12 = *(v0 + 184);
  *(v8 + 64) = *(v0 + 168);
  *(v8 + 80) = v12;
  *(v8 + 96) = v11;
  *(v8 + 112) = v10;
  v13 = *(v0 + 152);
  v14 = *(v0 + 136);
  *(v8 + 16) = *(v0 + 120);
  *(v8 + 32) = v14;
  *(v8 + 48) = v13;
  *(v8 + 120) = v9;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 3424, v0 + 3536, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2760));
  outlined destroy of NSObject?(v3, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = v0[472];
  outlined consume of Data._Representation(v0[481], v0[482]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v2 = v0[489];
  v3 = v0[475];
  v4 = v0[474];
  v5 = v0[472];
  v6 = v0[471];
  v7 = v0[468];
  v8 = v0[465];
  v9 = v0[464];

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[472];
  outlined consume of Data._Representation(v0[481], v0[482]);
  outlined destroy of MLS.Group((v0 + 15));
  outlined destroy of NSObject?((v0 + 426), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v2 = v0[539];
  v3 = v0[475];
  v4 = v0[474];
  v5 = v0[472];
  v6 = v0[471];
  v7 = v0[468];
  v8 = v0[465];
  v9 = v0[464];

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[472];
  outlined consume of Data._Representation(v0[481], v0[482]);
  outlined destroy of MLS.Group((v0 + 15));
  outlined destroy of NSObject?((v0 + 285), &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v2 = v0[564];
  v3 = v0[475];
  v4 = v0[474];
  v5 = v0[472];
  v6 = v0[471];
  v7 = v0[468];
  v8 = v0[465];
  v9 = v0[464];

  v10 = v0[1];

  return v10();
}