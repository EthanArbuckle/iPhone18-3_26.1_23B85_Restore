uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 21392);
  v6 = *v2;
  *(*v2 + 21400) = v1;

  if (v1)
  {
    v7 = v4[2673];
    v8 = v4[2599];

    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4[2676] = a1;
    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v2 = *(*v1 + 21416);
  v4 = *v1;
  *(*v1 + 21424) = a1;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v2 = *(*v1 + 21632);
  v3 = *(*v1 + 21296);
  v5 = *v1;
  *(*v1 + 21640) = a1;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v3, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 21648);
  v6 = *v2;
  v4[2707] = v1;

  v7 = v4[2662];
  if (v1)
  {
    v8 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4[2708] = a1;
    v8 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 21704);
  v6 = *v2;
  *(v4 + 21712) = a1;
  *(v4 + 21720) = v1;

  v7 = *(v3 + 21296);
  if (v1)
  {
    v8 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v8 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 21728);
  v6 = *v2;
  *(v4 + 21736) = a1;
  *(v4 + 21744) = v1;

  v7 = *(v3 + 21296);
  if (v1)
  {
    v8 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v8 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 22384);
  v6 = *v2;
  *(*v2 + 22392) = v1;

  if (v1)
  {
    v7 = v4[2797];
    v8 = v4[2599];

    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4[2800] = a1;
    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v2 = *(*v1 + 22408);
  v4 = *v1;
  *(*v1 + 22416) = a1;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

void closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  if ((v0[2678] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[2331];
    v2 = v0[2332];
    __swift_project_boxed_opaque_existential_1(v0 + 2328, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[2679] = v5;
    *v5 = v0;
    v5[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v6 = v0[2654];

    v7(v6, v1, v2);
  }
}

{
  if ((v0[2705] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[2597];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = *(v3 + 32);
    v7 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[2706] = v6;
    *v6 = v0;
    v6[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    v7(v2, v3);
  }
}

{
  if ((v0[2802] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[2376];
    v2 = v0[2377];
    __swift_project_boxed_opaque_existential_1(v0 + 2373, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[2803] = v5;
    *v5 = v0;
    v5[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v6 = v0[2653];

    v7(v6, v1, v2);
  }
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 21464);
  v6 = *v2;
  *(v3 + 21472) = a1;
  *(v3 + 21480) = a2;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 21488);
  v7 = *v3;
  v7[2687] = v2;

  if (v2)
  {
    v8 = v7[2673];
    v9 = v7[2599];

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v10 = v7[2673];
    v11 = v7[2672];
    v23 = v7[2671];
    v12 = v7[2670];
    v7[2688] = a2;
    v7[2689] = a1;
    ObjectType = swift_getObjectType();
    v7[2580] = v11;
    v7[2581] = v10;
    v14 = *(v23 + 64);
    v22 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v7[2690] = v16;
    *v16 = v7;
    v16[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v17 = v7[2671];
    v18 = v7[2670];
    v19 = v7[2599];
    v20 = v7[2598];

    return (v22)(v20, v19, v7 + 2580, ObjectType, v17);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 21520);
  v13 = *v3;
  *(*v3 + 21528) = v2;

  if (v2)
  {
    v8 = v6[2599];

    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v10 = v6[2673];
    v11 = v6[2599];
    v6[2692] = a2;
    v6[2693] = a1;

    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 22456);
  v6 = *v2;
  *(v3 + 22464) = a1;
  *(v3 + 22472) = a2;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 22480);
  v7 = *v3;
  v7[2811] = v2;

  if (v2)
  {
    v8 = v7[2797];
    v9 = v7[2599];

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v10 = v7[2797];
    v11 = v7[2796];
    v23 = v7[2794];
    v12 = v7[2793];
    v7[2812] = a2;
    v7[2813] = a1;
    ObjectType = swift_getObjectType();
    v7[2558] = v11;
    v7[2559] = v10;
    v14 = *(v23 + 64);
    v22 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v7[2814] = v16;
    *v16 = v7;
    v16[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v17 = v7[2794];
    v18 = v7[2793];
    v19 = v7[2599];
    v20 = v7[2598];

    return (v22)(v20, v19, v7 + 2558, ObjectType, v17);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 22512);
  v13 = *v3;
  *(*v3 + 22520) = v2;

  if (v2)
  {
    v8 = v6[2599];

    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v10 = v6[2797];
    v11 = v6[2599];
    v6[2816] = a2;
    v6[2817] = a1;

    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 21864);
  v6 = *v2;
  *(v4 + 21872) = v1;

  v7 = *(v4 + 21296);
  if (v1)
  {
    v8 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v4 + 15571) = a1 & 1;
    v8 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v70 = a4;
  v71 = a3;
  v72 = a5;
  v69 = type metadata accessor for MLS.Identity.SigningIdentity();
  isa = v69[-1].isa;
  v8 = *(isa + 8);
  MEMORY[0x28223BE20](v69);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v63 - v13;
  v15 = type metadata accessor for MLS.Group.Member();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v21 = v20;
  outlined init with copy of MLS.OutgoingEventState?(v19, v14, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  if ((*(v21 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of NSObject?(v14, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
    v22 = v70;
    v23 = v71;
LABEL_5:
    outlined init with copy of MLS.OutgoingEventState?(v23, v75, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v22, v75, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v22, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v73 = v36;
      *v35 = 136315394;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v23, *(v23 + 8), &v73);
      *(v35 + 12) = 2080;
      *v75 = *(v22 + 32);
      *&v75[9] = *(v22 + 41);
      *v76 = *(v22 + 32);
      *&v76[9] = *(v22 + 41);
      outlined init with copy of MLS.AllMember(v75, v74);
      v37 = MLS.AllMember.description.getter();
      v39 = v38;
      outlined consume of MLS.AllMember();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v73);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_264F1F000, v33, v34, "SwiftMLSClientCoordinator processIncoming failed to find member for proposer after removedFromGroup error. Returning message sender { identifier: %s, sender: %s }", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v36, -1, -1);
      MEMORY[0x266755550](v35, -1, -1);
    }

    *v76 = *(v22 + 32);
    v41 = *v76;
    *&v76[9] = *(v22 + 41);
    v42 = *&v76[9];
    v43 = v72;
    *v72 = v41;
    *(v43 + 9) = v42;
    return outlined init with copy of MLS.AllMember(v76, v74);
  }

  v67 = v21;
  v68 = v15;
  (*(v21 + 32))(v18, v14, v15);
  v24 = a2[16];
  v63 = a2[17];
  v64 = v24;
  v65 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 13, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMR);
  v25 = type metadata accessor for MLS.Identity.Credential();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2651D82E0;
  v66 = v18;
  MLS.Group.Member.identity.getter();
  MLS.Identity.SigningIdentity.credential.getter();
  (*(isa + 1))(v10, v69);
  v30 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC8SwiftMLS0F0O8IdentityO10CredentialO_Tt0g5Tf4g_n(v29);
  swift_setDeallocating();
  (*(v26 + 8))(v29 + v28, v25);
  swift_deallocClassInstance();
  v31 = (*(v63 + 8))(v30, v64);

  specialized Collection.first.getter(v31, v75);

  v32 = v75[24];
  v22 = v70;
  v23 = v71;
  if (v75[24] >= 0xFEu)
  {
    (*(v67 + 8))(v66, v68);
    goto LABEL_5;
  }

  v45 = *v75;
  v46 = *&v75[8];
  v47 = *&v75[16];
  outlined init with copy of MLS.OutgoingEventState?(v71, v75, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined copy of MLS.AllMember?(v45, v46, v47, v32);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined consume of MLS.AllMember?(v45, v46, v47, v32);
  LODWORD(v70) = v49;
  v50 = os_log_type_enabled(v48, v49);
  v51 = v68;
  v52 = v66;
  if (v50)
  {
    v53 = swift_slowAlloc();
    v69 = v48;
    v54 = v23;
    v55 = v53;
    v56 = swift_slowAlloc();
    *v76 = v56;
    *v55 = 136315394;
    *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v54, *(v54 + 8), v76);
    *(v55 + 12) = 2080;
    *v75 = v45;
    *&v75[8] = v46;
    *&v75[16] = v47;
    v75[24] = v32;
    outlined copy of MLS.AllMember();
    v57 = MLS.AllMember.description.getter();
    v59 = v58;
    outlined consume of MLS.AllMember();
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v76);

    *(v55 + 14) = v60;
    v61 = v69;
    _os_log_impl(&dword_264F1F000, v69, v70, "SwiftMLSClientCoordinator processIncoming found member for proposer after removedFromGroup error { identifier: %s, memberProposer: %s }", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v56, -1, -1);
    MEMORY[0x266755550](v55, -1, -1);

    result = (*(v67 + 8))(v52, v68);
  }

  else
  {

    result = (*(v67 + 8))(v52, v51);
  }

  v62 = v72;
  *v72 = v45;
  *(v62 + 1) = v46;
  *(v62 + 2) = v47;
  *(v62 + 24) = v32;
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v5 = a5;
  v10 = *(a5 + 40);
  Hasher.init(_seed:)();
  if ((a4 & 0x80) == 0)
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v11 = 0;
LABEL_8:
    MEMORY[0x266754DE0](v11);
    goto LABEL_9;
  }

  MEMORY[0x266754DE0](1);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if ((a4 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v11 = a3;
    goto LABEL_8;
  }

  Hasher._combine(_:)(0);
LABEL_9:
  v13 = Hasher._finalize()();
  v14 = -1 << *(v5 + 32);
  v15 = v13 & ~v14;
  v31 = v5 + 56;
  if (((*(v5 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v29 = ~v14;
  v30 = v5;
  while (1)
  {
    v16 = *(v5 + 48) + 32 * v15;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    if ((v20 & 0x80000000) == 0)
    {
      break;
    }

    if ((a4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    if (v18 == a1 && v17 == a2)
    {
      outlined copy of MLS.AllMember();
      outlined copy of MLS.AllMember();
      outlined consume of MLS.AllMember();
      outlined consume of MLS.AllMember();
      if (v20)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v26 = *v16;
      v27 = *(v16 + 8);
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of MLS.AllMember();
      outlined copy of MLS.AllMember();
      outlined consume of MLS.AllMember();
      outlined consume of MLS.AllMember();
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }

      if (v20)
      {
LABEL_28:
        if (a4)
        {
          return 1;
        }

        goto LABEL_13;
      }
    }

    if ((a4 & 1) == 0 && v19 == a3)
    {
      return 1;
    }

LABEL_13:
    v5 = v30;
    v15 = (v15 + 1) & v29;
    if (((*(v31 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  if (a4 < 0)
  {
LABEL_12:
    outlined copy of MLS.AllMember();
    outlined copy of MLS.AllMember();
    outlined consume of MLS.AllMember();
    outlined consume of MLS.AllMember();
    goto LABEL_13;
  }

  if (v18 != a1 || v17 != a2)
  {
    v22 = *v16;
    v23 = *(v16 + 8);
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of MLS.AllMember();
    outlined copy of MLS.AllMember();
    outlined consume of MLS.AllMember();
    outlined consume of MLS.AllMember();
    if (v24)
    {
      return 1;
    }

    goto LABEL_13;
  }

  outlined copy of MLS.AllMember();
  outlined copy of MLS.AllMember();
  outlined consume of MLS.AllMember();
  outlined consume of MLS.AllMember();
  return 1;
}

uint64_t closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1432) = v20;
  *(v8 + 1416) = v19;
  *(v8 + 1400) = v18;
  *(v8 + 1392) = a8;
  *(v8 + 1384) = a7;
  *(v8 + 1376) = a6;
  *(v8 + 1368) = a5;
  *(v8 + 1360) = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  *(v8 + 1440) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1448) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 1456) = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.Message();
  *(v8 + 1464) = v12;
  v13 = *(v12 - 8);
  *(v8 + 1472) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 1480) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  *(v8 + 1488) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v15, 0);
}

uint64_t closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v60 = v0;
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1368);
  *(v0 + 1496) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 384, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1376);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v55[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v55);
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator processIncoming sending committed proposal { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = *(v0 + 1480);
  v9 = *(v0 + 1472);
  v10 = *(v0 + 1464);
  v11 = *(v0 + 1384);
  v12 = *(v0 + 1368);
  MLS.Group.CommitOutput.commitMessage.getter();
  v53 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v54 = v13;
  *(v0 + 1504) = v53;
  *(v0 + 1512) = v13;
  (*(v9 + 8))(v8, v10);
  v14 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v15 = [v14 UUIDString];

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v52 = v17;
  *(v0 + 1520) = v17;
  v18 = type metadata accessor for MLS.Group.CommitOutput();
  *(v0 + 1208) = v18;
  *(v0 + 1216) = &protocol witness table for MLS.Group.CommitOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1184));
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v11, v18);
  (*(*v12 + 360))(v55, v0 + 1184);
  v20 = v55[0];
  v21 = v55[1];
  *(v0 + 1528) = v55[0];
  *(v0 + 1536) = v21;
  v22 = v56;
  v23 = v57;
  *(v0 + 1544) = v56;
  *(v0 + 1552) = v23;
  v24 = v58;
  v25 = v59;
  *(v0 + 1560) = v58;
  *(v0 + 1568) = v25;
  v49 = *(v0 + 1432);
  v26 = *(v0 + 1408);
  v27 = *(v0 + 1400);
  v44 = v27;
  v45 = *(v0 + 1376);
  v47 = *(v0 + 1392);
  v48 = *(v0 + 1368);
  v50 = v20;
  v46 = v22;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1184));
  v28 = objc_allocWithZone(MEMORY[0x277CCAD78]);

  v29 = [v28 init];
  v30 = [v29 UUIDString];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v0 + 1312) = *(v45 + 16);
  swift_beginAccess();
  v34 = *(v26 + 16);
  *(v0 + 584) = *(v0 + 1312);
  *(v0 + 552) = v47;
  *(v0 + 560) = v44;
  *(v0 + 568) = v31;
  *(v0 + 576) = v33;
  *(v0 + 600) = v34;
  *(v0 + 608) = v51;
  *(v0 + 616) = v52;
  *(v0 + 624) = v53;
  *(v0 + 632) = v54;
  *(v0 + 640) = v50;
  *(v0 + 648) = v21;
  *(v0 + 656) = v46;
  *(v0 + 664) = v23;
  *(v0 + 672) = v24;
  *(v0 + 680) = v25;
  v35 = *(v0 + 552);
  v36 = *(v0 + 568);
  v37 = *(v0 + 600);
  *(v0 + 48) = *(v0 + 584);
  *(v0 + 64) = v37;
  *(v0 + 16) = v35;
  *(v0 + 32) = v36;
  v38 = *(v0 + 616);
  v39 = *(v0 + 632);
  v40 = *(v0 + 648);
  v41 = *(v0 + 664);
  *(v0 + 144) = v25;
  *(v0 + 112) = v40;
  *(v0 + 128) = v41;
  *(v0 + 80) = v38;
  *(v0 + 96) = v39;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi13_(v0 + 16);
  outlined init with copy of ServerBag.MLS(v49, v0 + 1224);
  *(v0 + 1576) = *(v48 + 80);
  *(v0 + 1584) = *(v48 + 88);
  v42 = v48 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 1592) = *(v48 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 1600) = *(v42 + 8);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1312, v0 + 1328, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  outlined copy of Data._Representation(v53, v54);
  outlined copy of Data._Representation(v50, v21);
  outlined copy of Data?(v46, v23);
  outlined copy of Data._Representation(v24, v25);

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v1 = v0[178];
  v2 = v0[156];
  v3 = v0[157];
  __swift_project_boxed_opaque_existential_1(v0 + 153, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[201] = v6;
  *v6 = v0;
  v6[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[156];
  v2 = v0[157];
  __swift_project_boxed_opaque_existential_1(v0 + 153, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[204] = v5;
  *v5 = v0;
  v5[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[223] = v0[202];
  v1 = v0[178];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 153);

  v2 = v0[186];

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v2, 0);
}

{
  v2 = *(*v1 + 1648);
  v5 = *v1;
  *(*v1 + 1656) = v0;

  if (v0)
  {
    v3 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v3 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[182];
  v2 = v0[181];
  v3 = v0[180];
  v0[208] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[209] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[156];
  v6 = v0[157];
  __swift_project_boxed_opaque_existential_1(v0 + 153, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[210] = v9;
  *v9 = v0;
  v9[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v11(v5, v6);
}

{
  v1 = v0[156];
  v2 = v0[157];
  __swift_project_boxed_opaque_existential_1(v0 + 153, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[213] = v5;
  *v5 = v0;
  v5[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[223] = v0[207];
  v1 = v0[178];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 153);

  v2 = v0[186];

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v2, 0);
}

{
  v1 = v0[212];
  v2 = v0[209];
  v3 = v0[208];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[212];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[211];
  }

  v0[223] = v0[214];
  v6 = v0[178];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 153);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[186];

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v7, 0);
}

{
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1696);
  v5 = *(v0 + 1672);
  v6 = *(v0 + 1664);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 1640);
  v17 = v7;
  v8 = *(v0 + 1624);
  v20 = *(v0 + 1488);
  v9 = *(v0 + 1424);
  v10 = *(v0 + 1416);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 1720);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1728);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 1696);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1688);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 792) = v10;
  *(v0 + 800) = v9;
  *(v0 + 808) = v15;
  *(v0 + 816) = v15;
  *(v0 + 824) = v7;
  *(v0 + 832) = v6;
  *(v0 + 840) = v5;
  *(v0 + 848) = v14;
  *(v0 + 856) = v13;
  *(v0 + 864) = v12;
  *(v0 + 872) = v11;
  *(v0 + 880) = v1;
  *(v0 + 888) = v2;
  outlined init with copy of MLS.Group(v0 + 792, v0 + 896);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1224));
  *(v0 + 688) = v10;
  *(v0 + 696) = v9;
  *(v0 + 704) = v15;
  *(v0 + 712) = v15;
  *(v0 + 720) = v17;
  *(v0 + 728) = v18;
  *(v0 + 736) = v19;
  *(v0 + 744) = v14;
  *(v0 + 752) = v13;
  *(v0 + 760) = v12;
  *(v0 + 768) = v11;
  *(v0 + 776) = v1;
  *(v0 + 784) = v2;
  outlined destroy of MLS.Group(v0 + 688);

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v20, 0);
}

{
  v1 = *(*(v0 + 1368) + 96);
  v2 = *(v0 + 160);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v2;
  *(v0 + 360) = *(v0 + 176);
  *(v0 + 376) = *(v0 + 192);
  v3 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v3;
  v4 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v4;
  v5 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v5;
  v6 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  *(v0 + 248) = v6;
  v7 = *(v0 + 872);
  *(v0 + 1064) = *(v0 + 856);
  *(v0 + 1080) = v7;
  *(v0 + 1096) = *(v0 + 888);
  v8 = *(v0 + 808);
  *(v0 + 1000) = *(v0 + 792);
  *(v0 + 1016) = v8;
  v9 = *(v0 + 840);
  *(v0 + 1032) = *(v0 + 824);
  *(v0 + 1048) = v9;
  *(v0 + 1104) = 0u;
  *(v0 + 1120) = 0u;
  *(v0 + 1136) = 0u;
  *(v0 + 1152) = 0u;
  *(v0 + 1168) = 0;
  *(v0 + 1176) = 2;
  v13 = (*v1 + 368);
  v14 = (*v13 + **v13);
  v10 = (*v13)[1];
  v11 = swift_task_alloc();
  *(v0 + 1768) = v11;
  *v11 = v0;
  v11[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return (v14)(v0 + 200, v0 + 1000, v0 + 1104, 1, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1768);
  v4 = *v1;
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v5 = *(v2 + 1488);
    v6 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v7 = *(v2 + 1488);

    v6 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[215];
  v2 = v0[212];
  v3 = v0[209];
  v4 = v0[208];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[215];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[216];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[212];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[211];
  }

  v0[223] = v0[218];
  v9 = v0[178];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 153);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[186];

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v10, 0);
}

{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[189];
  v9 = v0[188];

  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of NSObject?((v0 + 69), &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMR);
  v10 = v0[223];
  v11 = v0[185];
  v12 = v0[182];

  v13 = v0[1];

  return v13();
}

{
  v18 = v0;
  v1 = v0[187];
  v2 = v0[175];
  v3 = v0[171];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[175];
    v7 = v0[174];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v17);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming sent committed proposal { identifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = *(*v0[171] + 344);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[224] = v12;
  *v12 = v0;
  v12[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v13 = v0[179];
  v14 = v0[171];

  return (v16)(v0 + 161, v13);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1792);
  v4 = *v1;
  *(*v1 + 1800) = v0;

  v5 = *(v2 + 1488);
  if (v0)
  {
    v6 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1560);
  v3 = *(v0 + 1552);
  v4 = *(v0 + 1544);
  v5 = *(v0 + 1536);
  v6 = *(v0 + 1528);
  v7 = *(v0 + 1520);
  v8 = *(v0 + 1512);
  v9 = *(v0 + 1504);

  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of MLS.Group(v0 + 792);
  result = outlined destroy of NSObject?(v0 + 552, &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMR);
  v11 = *(v0 + 1304);
  v12 = __CFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v0 + 1480);
    v15 = *(v0 + 1456);
    v16 = *(v0 + 1360);
    v17 = *(v0 + 1296);
    *v16 = v17;
    *(v16 + 8) = v17;
    *(v16 + 16) = v13;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 88) = 0;
    *(v16 + 96) = 1;

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[189];
  v9 = v0[188];

  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of MLS.Group((v0 + 99));
  outlined destroy of NSObject?((v0 + 69), &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMR);
  v10 = v0[222];
  v11 = v0[185];
  v12 = v0[182];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[189];
  v9 = v0[188];

  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of MLS.Group((v0 + 99));
  outlined destroy of NSObject?((v0 + 69), &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMR);
  v10 = v0[225];
  v11 = v0[185];
  v12 = v0[182];

  v13 = v0[1];

  return v13();
}

uint64_t closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1608);
  v6 = *v2;
  *(*v2 + 1616) = v1;

  if (v1)
  {
    v7 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v4 + 1624) = a1;
    v7 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 1632);
  v4 = *v1;
  *(*v1 + 1640) = a1;

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

void closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  if ((v0[205] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[156];
    v2 = v0[157];
    __swift_project_boxed_opaque_existential_1(v0 + 153, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[206] = v5;
    *v5 = v0;
    v5[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v6 = v0[182];

    v7(v6, v1, v2);
  }
}

uint64_t closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1680);
  v6 = *v2;
  *(v3 + 1688) = a1;
  *(v3 + 1696) = a2;

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 1704);
  v7 = *v3;
  v7[214] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v8 = v7[200];
    v9 = v7[199];
    v21 = v7[198];
    v10 = v7[197];
    v7[215] = a2;
    v7[216] = a1;
    ObjectType = swift_getObjectType();
    v7[168] = v9;
    v7[169] = v8;
    v12 = *(v21 + 64);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[217] = v14;
    *v14 = v7;
    v14[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v15 = v7[198];
    v16 = v7[197];
    v17 = v7[178];
    v18 = v7[177];

    return (v20)(v18, v17, v7 + 168, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 1736);
  v8 = *v3;
  *(*v3 + 1744) = v2;

  if (v2)
  {
    v9 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v6 + 1752) = a2;
    *(v6 + 1760) = a1;
    v9 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void closure #8 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of MLS.OutgoingEventState?(a4, v11, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(a4, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*a4, *(a4 + 8), v11);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v11);
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator processIncoming signed message does not match expected data { identifier: %s, error: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[370] = v18;
  v8[369] = a8;
  v8[368] = a7;
  v8[367] = a6;
  v8[366] = a5;
  v8[365] = a4;
  v8[364] = a3;
  v8[363] = a2;
  v8[362] = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v8[371] = v9;
  v10 = *(v9 - 8);
  v8[372] = v10;
  v11 = *(v10 + 64) + 15;
  v8[373] = swift_task_alloc();
  v12 = type metadata accessor for MLS.MLSError();
  v8[374] = v12;
  v13 = *(v12 - 8);
  v8[375] = v13;
  v14 = *(v13 + 64) + 15;
  v8[376] = swift_task_alloc();
  v8[377] = swift_task_alloc();
  v8[378] = swift_task_alloc();
  v8[379] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  v8[380] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v15, 0);
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v120 = v0;
  v1 = (v0 + 1808);
  v2 = *(v0 + 2904);
  if (*(v2 + 57) == 1)
  {
    v3 = *(v0 + 2912);
    v4 = *(v2 + 41);
    *(v0 + 2632) = *(v2 + 32);
    *(v0 + 2641) = v4;
    *(v0 + 2800) = *(v2 + 16);
    *(v0 + 2752) = *(v3 + 16);
    v5 = *(v2 + 41);
    v6 = *(v2 + 16);
    *v117 = *(v2 + 32);
    *&v117[9] = v5;
    v7 = *(v3 + 16);
    v118 = v6;
    v119 = v7;
    outlined init with copy of MLS.AllMember(v0 + 2632, v0 + 2664);
    outlined init with copy of String(v0 + 2800, v0 + 2864);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 2752, v0 + 2880, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v8 = *&v117[16];
    *v1 = *v117;
    *(v0 + 1824) = v8;
    v9 = v119;
    *(v0 + 1840) = v118;
    *(v0 + 1856) = v9;
  }

  else
  {
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *v1 = 0u;
    *(v0 + 1824) = 0u;
  }

  v10 = *(v0 + 2928);
  v11 = *(v0 + 2920);
  if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 1)
  {
    v12 = *(v0 + 2920);
    v13 = *(v0 + 2912);
    v14 = *(*(v0 + 3000) + 16);
    v14(*(v0 + 3032), *(v0 + 2928), *(v0 + 2992));
    outlined init with copy of MLS.OutgoingEventState?(v13, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v13, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 3032);
    v19 = *(v0 + 3000);
    v20 = *(v0 + 2992);
    if (v17)
    {
      v107 = v14;
      v21 = *(v0 + 2912);
      v22 = swift_slowAlloc();
      log = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v115 = v111;
      *v22 = 136315394;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v21, *(v21 + 8), &v115);
      *(v22 + 12) = 2112;
      lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
      swift_allocError();
      v107(v23, v18, v20);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      (*(v19 + 8))(v18, v20);
      *(v22 + 14) = v24;
      log->isa = v24;
      _os_log_impl(&dword_264F1F000, v15, v16, "SwiftMLSClientCoordinator processIncoming performing self heal { identifier: %s, error: %@ }", v22, 0x16u);
      outlined destroy of NSObject?(log, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](log, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      MEMORY[0x266755550](v111, -1, -1);
      MEMORY[0x266755550](v22, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    outlined init with copy of ServerBag.MLS(*(v0 + 2952), v0 + 2488);
    v40 = *(v0 + 1824);
    *(v0 + 2064) = *v1;
    *(v0 + 2080) = v40;
    v41 = *(v0 + 1856);
    *(v0 + 2096) = *(v0 + 1840);
    *(v0 + 2112) = v41;
    v42 = swift_task_alloc();
    *(v0 + 3048) = v42;
    *v42 = v0;
    v42[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v43 = *(v0 + 2944);
    v44 = *(v0 + 2936);
    v45 = *(v0 + 2920);

    return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v44, v43, v0 + 2488, (v0 + 2064), 1);
  }

  v25 = *(v0 + 2928);
  v26 = *(v0 + 2920);
  if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 2)
  {
    v27 = *(v0 + 2920);
    v28 = *(v0 + 2912);
    v29 = *(*(v0 + 3000) + 16);
    v29(*(v0 + 3024), *(v0 + 2928), *(v0 + 2992));
    outlined init with copy of MLS.OutgoingEventState?(v28, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v28, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 3024);
    v34 = *(v0 + 3000);
    v35 = *(v0 + 2992);
    if (v32)
    {
      v108 = v29;
      v36 = *(v0 + 2912);
      v37 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v115 = v112;
      *v37 = 136315394;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v36, *(v36 + 8), &v115);
      *(v37 + 12) = 2112;
      lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
      swift_allocError();
      v108(v38, v33, v35);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      (*(v34 + 8))(v33, v35);
      *(v37 + 14) = v39;
      loga->isa = v39;
      _os_log_impl(&dword_264F1F000, v30, v31, "SwiftMLSClientCoordinator processIncoming performing era advancement { identifier: %s, error: %@ }", v37, 0x16u);
      outlined destroy of NSObject?(loga, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](loga, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v112);
      MEMORY[0x266755550](v112, -1, -1);
      MEMORY[0x266755550](v37, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v64 = *(v0 + 1824);
    *(v0 + 2192) = *v1;
    *(v0 + 2208) = v64;
    v65 = *(v0 + 1856);
    *(v0 + 2224) = *(v0 + 1840);
    *(v0 + 2240) = v65;
    v66 = swift_task_alloc();
    *(v0 + 3064) = v66;
    *v66 = v0;
    v66[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v67 = *(v0 + 2952);
    v68 = *(v0 + 2944);
    v69 = *(v0 + 2936);
    v70 = *(v0 + 2920);

    return MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v69, v68, v67, (v0 + 2192), 1);
  }

  v47 = *(v0 + 1824);
  *(v0 + 2528) = *v1;
  *(v0 + 2544) = v47;
  *(v0 + 2560) = *(v0 + 1840);
  v48 = *(v0 + 1848);
  *(v0 + 2816) = *(v0 + 1856);
  if (v48)
  {
    v49 = *(v0 + 2928);
    v50 = *(v0 + 2920);
    v51 = *(v0 + 1824);
    *(v0 + 2128) = *v1;
    *(v0 + 2144) = v51;
    v52 = *(v0 + 1856);
    *(v0 + 2160) = *(v0 + 1840);
    *(v0 + 2176) = v52;
    outlined init with copy of MLS.QueuedFTDInfo(v0 + 2128, v0 + 1936);
    if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 3)
    {
      v53 = *(v0 + 2920);
      v54 = *(v0 + 2912);
      v113 = *(*(v0 + 3000) + 16);
      v113(*(v0 + 3016), *(v0 + 2928), *(v0 + 2992));
      outlined init with copy of MLS.OutgoingEventState?(v54, v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v55 = Logger.logObject.getter();
      LOBYTE(v53) = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v54, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v109 = v53;
      v56 = os_log_type_enabled(v55, v53);
      v57 = *(v0 + 3016);
      v58 = *(v0 + 3000);
      v59 = *(v0 + 2992);
      if (v56)
      {
        logb = v55;
        v60 = *(v0 + 2912);
        v61 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v115 = v102;
        *v61 = 136315394;
        *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v60, *(v60 + 8), &v115);
        *(v61 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
        swift_allocError();
        v113(v62, v57, v59);
        v63 = _swift_stdlib_bridgeErrorToNSError();
        (*(v58 + 8))(v57, v59);
        *(v61 + 14) = v63;
        *v101 = v63;
        _os_log_impl(&dword_264F1F000, logb, v109, "SwiftMLSClientCoordinator processIncoming sending FTD without self healing { identifier: %s, error: %@ }", v61, 0x16u);
        outlined destroy of NSObject?(v101, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v101, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v102);
        MEMORY[0x266755550](v102, -1, -1);
        MEMORY[0x266755550](v61, -1, -1);
      }

      else
      {

        (*(v58 + 8))(v57, v59);
      }

      v96 = *(v0 + 2544);
      *(v0 + 1872) = *(v0 + 2528);
      *(v0 + 1888) = v96;
      *(v0 + 1904) = *(v0 + 2560);
      *(v0 + 1912) = v48;
      *(v0 + 1920) = *(v0 + 2816);
      v97 = swift_task_alloc();
      *(v0 + 3080) = v97;
      *v97 = v0;
      v97[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v98 = *(v0 + 2944);
      v99 = *(v0 + 2936);
      v100 = *(v0 + 2920);

      return MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(v99, v98, (v0 + 1872), 1);
    }

    outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  }

  v71 = *(v0 + 2920);
  v72 = *(v0 + 2912);
  v73 = *(*(v0 + 3000) + 16);
  v73(*(v0 + 3008), *(v0 + 2928), *(v0 + 2992));
  outlined init with copy of MLS.OutgoingEventState?(v72, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v72, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v76 = os_log_type_enabled(v74, v75);
  v77 = *(v0 + 3008);
  v78 = *(v0 + 3000);
  v79 = *(v0 + 2992);
  if (v76)
  {
    v110 = v73;
    v80 = *(v0 + 2912);
    v81 = swift_slowAlloc();
    logc = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v115 = v114;
    *v81 = 136315394;
    *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v80, *(v80 + 8), &v115);
    *(v81 + 12) = 2112;
    lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
    swift_allocError();
    v110(v82, v77, v79);
    v83 = _swift_stdlib_bridgeErrorToNSError();
    (*(v78 + 8))(v77, v79);
    *(v81 + 14) = v83;
    logc->isa = v83;
    _os_log_impl(&dword_264F1F000, v74, v75, "SwiftMLSClientCoordinator processIncoming SwiftMLS failed with unhealable error { identifier: %s, error: %@ }", v81, 0x16u);
    outlined destroy of NSObject?(logc, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](logc, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    MEMORY[0x266755550](v114, -1, -1);
    MEMORY[0x266755550](v81, -1, -1);
  }

  else
  {

    (*(v78 + 8))(v77, v79);
  }

  v84 = *(v0 + 2992);
  v85 = *(v0 + 2928);
  v115 = 0;
  v116 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v86 = v116;
  *(v0 + 2832) = v115;
  *(v0 + 2840) = v86;
  MEMORY[0x2667545A0](0x534C4D7466697753, 0xEE002E726F727245);
  _print_unlocked<A, B>(_:_:)();
  v87 = *(v0 + 2832);
  v88 = *(v0 + 2840);
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v89 = 9;
  *(v89 + 8) = v87;
  *(v89 + 16) = v88;
  swift_willThrow();
  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v90 = *(v0 + 3032);
  v91 = *(v0 + 3024);
  v92 = *(v0 + 3016);
  v93 = *(v0 + 3008);
  v94 = *(v0 + 2984);

  v95 = *(v0 + 8);

  return v95();
}

{
  v2 = *v1;
  v3 = *(*v1 + 3048);
  v7 = *v1;
  *(*v1 + 3056) = v0;

  if (v0)
  {
    v4 = *(v2 + 3040);
    outlined destroy of NSObject?(v2 + 2488, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = *(v2 + 3040);
    outlined destroy of NSObject?(v2 + 2488, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v20 = v0;
  v1 = *(v0 + 2944);
  v2 = *(v0 + 2920);
  v3 = *(v0 + 2912);
  *(v0 + 3096) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1808, v0 + 2000, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 2944);
    v7 = *(v0 + 2936);
    v8 = *(v0 + 2912);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v8, *(v8 + 8), &v19);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v9 + 22) = 2080;
    v11 = *(v0 + 1824);
    *(v0 + 2384) = *(v0 + 1808);
    *(v0 + 2400) = v11;
    v12 = *(v0 + 1856);
    *(v0 + 2416) = *(v0 + 1840);
    *(v0 + 2432) = v12;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1808, v0 + 2320, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming healed successfully { identifier: %s, groupID: %s, ftdInfo: %s }", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v16 = *(v0 + 2920);
  outlined init with copy of ServerBag.MLS(*(v0 + 2952), v0 + 2448);
  *(v0 + 3104) = *(v16 + 80);
  *(v0 + 3112) = *(v16 + 88);
  v17 = v16 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 3120) = *(v16 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 3128) = *(v17 + 8);

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 3064);
  v7 = *v1;
  *(*v1 + 3072) = v0;

  v4 = *(v2 + 3040);
  if (v0)
  {
    v5 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v5 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 3080);
  v4 = *v1;
  *(v2 + 3088) = v0;

  v5 = *(v2 + 3040);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    v6 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v20 = v0;
  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v1 = *(v0 + 2944);
  v2 = *(v0 + 2920);
  v3 = *(v0 + 2912);
  *(v0 + 3096) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1808, v0 + 2000, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 2944);
    v7 = *(v0 + 2936);
    v8 = *(v0 + 2912);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v8, *(v8 + 8), &v19);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v9 + 22) = 2080;
    v11 = *(v0 + 1824);
    *(v0 + 2384) = *(v0 + 1808);
    *(v0 + 2400) = v11;
    v12 = *(v0 + 1856);
    *(v0 + 2416) = *(v0 + 1840);
    *(v0 + 2432) = v12;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1808, v0 + 2320, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming healed successfully { identifier: %s, groupID: %s, ftdInfo: %s }", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v16 = *(v0 + 2920);
  outlined init with copy of ServerBag.MLS(*(v0 + 2952), v0 + 2448);
  *(v0 + 3104) = *(v16 + 80);
  *(v0 + 3112) = *(v16 + 88);
  v17 = v16 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 3120) = *(v16 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 3128) = *(v17 + 8);

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v1 = v0[368];
  v2 = v0[309];
  v3 = v0[310];
  __swift_project_boxed_opaque_existential_1(v0 + 306, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[392] = v6;
  *v6 = v0;
  v6[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[309];
  v2 = v0[310];
  __swift_project_boxed_opaque_existential_1(v0 + 306, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[395] = v5;
  *v5 = v0;
  v5[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[412] = v0[393];
  v1 = v0[368];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 306);

  v2 = v0[380];

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v2, 0);
}

{
  v2 = *(*v1 + 3176);
  v5 = *v1;
  *(*v1 + 3184) = v0;

  if (v0)
  {
    v3 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v3 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[373];
  v2 = v0[372];
  v3 = v0[371];
  v0[399] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[400] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[309];
  v6 = v0[310];
  __swift_project_boxed_opaque_existential_1(v0 + 306, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[401] = v9;
  *v9 = v0;
  v9[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v11(v5, v6);
}

{
  v1 = v0[309];
  v2 = v0[310];
  __swift_project_boxed_opaque_existential_1(v0 + 306, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[404] = v5;
  *v5 = v0;
  v5[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[412] = v0[398];
  v1 = v0[368];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 306);

  v2 = v0[380];

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v2, 0);
}

{
  v1 = v0[403];
  v2 = v0[400];
  v3 = v0[399];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[403];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[402];
  }

  v0[412] = v0[405];
  v6 = v0[368];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 306);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[380];

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v7, 0);
}

{
  v1 = *(v0 + 3288);
  v2 = *(v0 + 3280);
  v3 = *(v0 + 3248);
  v4 = *(v0 + 3224);
  v5 = *(v0 + 3200);
  v6 = *(v0 + 3192);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 3168);
  v17 = v7;
  v8 = *(v0 + 3152);
  v20 = *(v0 + 3040);
  v9 = *(v0 + 2944);
  v10 = *(v0 + 2936);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 3248);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 3256);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 3224);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 3216);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 1400) = v10;
  *(v0 + 1408) = v9;
  *(v0 + 1416) = v15;
  *(v0 + 1424) = v15;
  *(v0 + 1432) = v7;
  *(v0 + 1440) = v6;
  *(v0 + 1448) = v5;
  *(v0 + 1456) = v14;
  *(v0 + 1464) = v13;
  *(v0 + 1472) = v12;
  *(v0 + 1480) = v11;
  *(v0 + 1488) = v1;
  *(v0 + 1496) = v2;
  outlined init with copy of MLS.Group(v0 + 1400, v0 + 1296);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2448));
  *(v0 + 1504) = v10;
  *(v0 + 1512) = v9;
  *(v0 + 1520) = v15;
  *(v0 + 1528) = v15;
  *(v0 + 1536) = v17;
  *(v0 + 1544) = v18;
  *(v0 + 1552) = v19;
  *(v0 + 1560) = v14;
  *(v0 + 1568) = v13;
  *(v0 + 1576) = v12;
  *(v0 + 1584) = v11;
  *(v0 + 1592) = v1;
  *(v0 + 1600) = v2;
  outlined destroy of MLS.Group(v0 + 1504);

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v20, 0);
}

{
  v45 = v0;
  v1 = (v0 + 1400);
  if (*(v0 + 1848))
  {
    outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    v2 = *(v0 + 3032);
    v3 = *(v0 + 3024);
    v4 = *(v0 + 3016);
    v5 = *(v0 + 3008);
    v6 = *(v0 + 2984);
    v7 = *(v0 + 2960);
    v8 = *(v0 + 2896);
    *(v0 + 2784) = *(*(v0 + 2912) + 16);
    swift_beginAccess();
    v9 = *v7;
    *v8 = *(v0 + 2784);
    v10 = *(v0 + 1496);
    v11 = *(v0 + 1448);
    v12 = *(v0 + 1480);
    *(v8 + 80) = *(v0 + 1464);
    *(v8 + 96) = v12;
    *(v8 + 64) = v11;
    v13 = *(v0 + 1432);
    v14 = *v1;
    *(v8 + 32) = *(v0 + 1416);
    *(v8 + 48) = v13;
    *(v8 + 16) = v14;
    *(v8 + 112) = v10;
    *(v8 + 120) = v9;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 2784, v0 + 2768, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v40 = *(v0 + 2920);
    v42 = *(v0 + 3096);
    v17 = *(v0 + 2912);
    v18 = *(v0 + 2904);
    v19 = *v17;
    *(v0 + 3304) = *v17;
    v20 = *(v17 + 8);
    *(v0 + 3312) = v20;
    v21 = *(v18 + 32);
    *(v0 + 2577) = *(v18 + 41);
    *(v0 + 2568) = v21;
    *(v0 + 2720) = *(v17 + 16);
    v22 = *(v18 + 32);
    *(v0 + 2281) = *(v18 + 41);
    *(v0 + 2272) = v22;
    *(v44 + 7) = *(v17 + 16);
    *(v0 + 2256) = v19;
    *(v0 + 2264) = v20;
    *(v0 + 2312) = *(&v44[1] + 7);
    *(v0 + 2297) = *v44;
    v23 = *(v0 + 2272);
    *(v0 + 1712) = *(v0 + 2256);
    *(v0 + 1728) = v23;
    v24 = *(v0 + 2304);
    *(v0 + 1744) = *(v0 + 2288);
    *(v0 + 1760) = v24;
    outlined init with copy of MLS.OutgoingEventState?(v17, v0 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.AllMember(v0 + 2568, v0 + 2600);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 2720, v0 + 2736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v44);
      _os_log_impl(&dword_264F1F000, v25, v26, "SwiftMLSClientCoordinator processIncoming sending internal message event after self heal { identifier: %s }", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x266755550](v28, -1, -1);
      MEMORY[0x266755550](v27, -1, -1);
    }

    v29 = *(*(v0 + 2920) + 96);
    v30 = *(v0 + 1760);
    *(v0 + 1640) = *(v0 + 1744);
    *(v0 + 1656) = v30;
    v31 = *(v0 + 1792);
    *(v0 + 1672) = *(v0 + 1776);
    *(v0 + 1688) = v31;
    v32 = *(v0 + 1728);
    *(v0 + 1608) = *(v0 + 1712);
    *(v0 + 1624) = v32;
    *(v0 + 1704) = 9;
    v33 = *(v0 + 1416);
    *(v0 + 1192) = *v1;
    *(v0 + 1208) = v33;
    v34 = *(v0 + 1432);
    v35 = *(v0 + 1448);
    v36 = *(v0 + 1464);
    v37 = *(v0 + 1480);
    *(v0 + 1288) = *(v0 + 1496);
    *(v0 + 1256) = v36;
    *(v0 + 1272) = v37;
    *(v0 + 1224) = v34;
    *(v0 + 1240) = v35;
    v41 = (*v29 + 384);
    v43 = (*v41 + **v41);
    v38 = (*v41)[1];
    v39 = swift_task_alloc();
    *(v0 + 3320) = v39;
    *v39 = v0;
    v39[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return (v43)(v0 + 1608, v0 + 1192, 1, 0);
  }
}

{
  v1 = v0[406];
  v2 = v0[403];
  v3 = v0[400];
  v4 = v0[399];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[406];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[407];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[403];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[402];
  }

  v0[412] = v0[409];
  v9 = v0[368];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 306);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[380];

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v10, 0);
}

{
  outlined destroy of NSObject?((v0 + 226), &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v1 = v0[412];
  v2 = v0[379];
  v3 = v0[378];
  v4 = v0[377];
  v5 = v0[376];
  v6 = v0[373];

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  v3 = *(*v1 + 3320);
  v7 = *v1;
  *(*v1 + 3328) = v0;

  v4 = *(v2 + 3040);
  if (v0)
  {
    v5 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v5 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 3096);
  v2 = *(v0 + 2920);
  v3 = *(v0 + 2912);
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3312);
    v7 = *(v0 + 3304);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v25);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming internal message returning processedContext to caller after self heal { identifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  outlined destroy of NSObject?(v0 + 2256, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  v10 = *(v0 + 3032);
  v11 = *(v0 + 3024);
  v12 = *(v0 + 3016);
  v13 = *(v0 + 3008);
  v14 = *(v0 + 2984);
  v15 = *(v0 + 2960);
  v16 = *(v0 + 2896);
  *(v0 + 2784) = *(*(v0 + 2912) + 16);
  swift_beginAccess();
  v17 = *v15;
  *v16 = *(v0 + 2784);
  v18 = *(v0 + 1496);
  v19 = *(v0 + 1448);
  v20 = *(v0 + 1480);
  *(v16 + 80) = *(v0 + 1464);
  *(v16 + 96) = v20;
  *(v16 + 64) = v19;
  v21 = *(v0 + 1432);
  v22 = *(v0 + 1400);
  *(v16 + 32) = *(v0 + 1416);
  *(v16 + 48) = v21;
  *(v16 + 16) = v22;
  *(v16 + 112) = v18;
  *(v16 + 120) = v17;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 2784, v0 + 2768, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  v23 = *(v0 + 8);

  return v23();
}

{
  outlined destroy of NSObject?((v0 + 226), &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v1 = v0[382];
  v2 = v0[379];
  v3 = v0[378];
  v4 = v0[377];
  v5 = v0[376];
  v6 = v0[373];

  v7 = v0[1];

  return v7();
}

{
  outlined destroy of NSObject?((v0 + 226), &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v1 = v0[384];
  v2 = v0[379];
  v3 = v0[378];
  v4 = v0[377];
  v5 = v0[376];
  v6 = v0[373];

  v7 = v0[1];

  return v7();
}

{
  outlined destroy of NSObject?((v0 + 226), &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v1 = v0[386];
  v2 = v0[379];
  v3 = v0[378];
  v4 = v0[377];
  v5 = v0[376];
  v6 = v0[373];

  v7 = v0[1];

  return v7();
}

{
  outlined destroy of MLS.Group((v0 + 175));
  outlined destroy of NSObject?((v0 + 282), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = v0[416];
  v2 = v0[379];
  v3 = v0[378];
  v4 = v0[377];
  v5 = v0[376];
  v6 = v0[373];

  v7 = v0[1];

  return v7();
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3136);
  v6 = *v2;
  *(*v2 + 3144) = v1;

  if (v1)
  {
    v7 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v4 + 3152) = a1;
    v7 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 3160);
  v4 = *v1;
  *(*v1 + 3168) = a1;

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

void closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  if ((v0[396] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[309];
    v2 = v0[310];
    __swift_project_boxed_opaque_existential_1(v0 + 306, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[397] = v5;
    *v5 = v0;
    v5[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v6 = v0[373];

    v7(v6, v1, v2);
  }
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3208);
  v6 = *v2;
  *(v3 + 3216) = a1;
  *(v3 + 3224) = a2;

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 3232);
  v7 = *v3;
  v7[405] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v8 = v7[391];
    v9 = v7[390];
    v21 = v7[389];
    v10 = v7[388];
    v7[406] = a2;
    v7[407] = a1;
    ObjectType = swift_getObjectType();
    v7[356] = v9;
    v7[357] = v8;
    v12 = *(v21 + 64);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[408] = v14;
    *v14 = v7;
    v14[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v15 = v7[389];
    v16 = v7[388];
    v17 = v7[368];
    v18 = v7[367];

    return (v20)(v18, v17, v7 + 356, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 3264);
  v8 = *v3;
  *(*v3 + 3272) = v2;

  if (v2)
  {
    v9 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v6 + 3280) = a2;
    *(v6 + 3288) = a1;
    v9 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 240) = a6;
  *(v7 + 248) = v6;
  *(v7 + 224) = a4;
  *(v7 + 232) = a5;
  *(v7 + 208) = a2;
  *(v7 + 216) = a3;
  v9 = type metadata accessor for MLS.MLSError();
  *(v7 + 256) = v9;
  v10 = *(v9 - 8);
  *(v7 + 264) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v7 + 288) = v12;
  v13 = *(v12 - 8);
  *(v7 + 296) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 304) = swift_task_alloc();
  v15 = a1[1];
  *(v7 + 16) = *a1;
  *(v7 + 32) = v15;
  *(v7 + 48) = a1[2];
  *(v7 + 58) = *(a1 + 42);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static MLSActor.shared;
  *(v7 + 312) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:), v16, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:)()
{
  v55 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v49 = *(v0 + 248);
  v8 = *(v0 + 232);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v53 = v9;
  *(v0 + 320) = v9;
  *(v0 + 328) = v10;
  (*(v2 + 8))(v1, v3);
  *(v0 + 336) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  v12 = *(v6 + 16);
  v12(v4, v7, v5);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 280);
  v18 = *(v0 + 256);
  v17 = *(v0 + 264);
  if (v15)
  {
    v50 = v12;
    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v45 = v14;
    v21 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v54);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v11, &v54);
    *(v21 + 22) = 2112;
    lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
    swift_allocError();
    v50(v22, v16, v18);
    v23 = _swift_stdlib_bridgeErrorToNSError();
    (*(v17 + 8))(v16, v18);
    *(v21 + 24) = v23;
    *v43 = v23;
    v12 = v50;
    _os_log_impl(&dword_264F1F000, v13, v45, "SwiftMLSClientCoordinator sendNegativeDelivery enqueueing a negative delivery for commit { identifier: %s, negativeDeliveryID: %s, error: %@ }", v21, 0x20u);
    outlined destroy of NSObject?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v43, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v47, -1, -1);
    MEMORY[0x266755550](v21, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v24 = *(v0 + 264);
  v25 = *(v0 + 272);
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);
  v28 = *(v0 + 224);
  v48 = v28;
  v51 = *(v0 + 232);
  v46 = *(v0 + 216);
  v44 = *(v0 + 208);
  v12(v25, *(v0 + 240), v27);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 80, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v29 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);
  v30 = type metadata accessor for MLS.NegativeDeliveryOperation();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  *(v0 + 344) = v33;

  Logger.init(subsystem:category:)();
  v34 = *(v0 + 32);
  *(v33 + 16) = *(v0 + 16);
  *(v33 + 32) = v34;
  *(v33 + 48) = *(v0 + 48);
  *(v33 + 58) = *(v0 + 58);
  *(v33 + 80) = v44;
  *(v33 + 88) = v46;
  *(v33 + 96) = v48;
  *(v33 + 104) = v51;
  (*(v24 + 32))(v33 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError, v25, v27);
  v35 = v33 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context;
  *v35 = v53;
  *(v35 + 8) = v11;
  *(v35 + 16) = xmmword_2651B5F50;
  *(v35 + 32) = v42;
  *(v33 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_featureFlagsStore) = v29;
  v36 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 200) = v33;
  v37 = *(*v36 + 216);

  v52 = (v37 + *v37);
  v38 = v37[1];
  v39 = swift_task_alloc();
  *(v0 + 352) = v39;
  v40 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.NegativeDeliveryOperation and conformance MLS.NegativeDeliveryOperation, type metadata accessor for MLS.NegativeDeliveryOperation);
  *v39 = v0;
  v39[1] = MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:);

  return v52(v0 + 144, v0 + 200, v30, v40, v0 + 176);
}

{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v12 = *v1;

  if (v0)
  {
    v4 = v2[39];
    v5 = MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:);
  }

  else
  {
    v6 = v2[39];
    v7 = v2[18];
    v8 = v2[19];
    v10 = v2[20];
    v9 = v2[21];
    outlined consume of Data?(v7, v8);

    v5 = MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:);
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v23 = v0;
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[31];
  v4 = v0[29];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[43];
  v9 = v0[41];
  if (v7)
  {
    v10 = v0[40];
    v12 = v0[28];
    v11 = v0[29];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v22);
    *(v13 + 12) = 2080;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v22);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator sendNegativeDelivery finished sending negative delivery for commit { identifier: %s, negativeDeliveryID: %s }", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  else
  {
    v16 = v0[43];
  }

  v17 = v0[38];
  v18 = v0[34];
  v19 = v0[35];

  v20 = v0[1];

  return v20();
}

{
  v30 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);

  v6 = *(v0 + 176);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 328);
  if (v11)
  {
    v26 = *(v0 + 320);
    v28 = v8;
    v13 = *(v0 + 224);
    v14 = *(v0 + 232);
    v15 = swift_slowAlloc();
    v27 = v6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v17;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v29);
    *(v15 + 12) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v12, &v29);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2112;
    lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
    swift_allocError();
    *v19 = v27;
    *(v19 + 8) = v28;
    *(v19 + 16) = v7;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v16 = v20;
    _os_log_impl(&dword_264F1F000, v9, v10, "SwiftMLSClientCoordinator sendNegativeDelivery failed to send a negative delivery for commit { identifier: %s, negativeDeliveryID: %s, error: %@ }", v15, 0x20u);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 304);
  v22 = *(v0 + 272);
  v23 = *(v0 + 280);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2176) = v8;
  *(v9 + 2168) = v30;
  *(v9 + 2160) = v28;
  *(v9 + 2152) = a8;
  *(v9 + 2144) = a7;
  *(v9 + 2136) = a6;
  *(v9 + 2128) = a5;
  *(v9 + 2120) = a3;
  *(v9 + 2112) = a2;
  *(v9 + 2104) = a1;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v9 + 2184) = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.GroupInfo();
  *(v9 + 2192) = v12;
  v13 = *(v12 - 8);
  *(v9 + 2200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 2208) = swift_task_alloc();
  *(v9 + 2216) = swift_task_alloc();
  v15 = *(a4 + 24);
  *(v9 + 2224) = *(a4 + 16);
  *(v9 + 2232) = v15;
  v16 = *(a4 + 40);
  *(v9 + 2240) = *(a4 + 32);
  *(v9 + 2248) = v16;
  *(v9 + 2256) = *(a4 + 48);
  *(v9 + 1721) = *(a4 + 56);
  *(v9 + 2264) = *v29;
  v17 = *(v30 + 16);
  *(v9 + 16) = *v30;
  *(v9 + 32) = v17;
  v18 = *(v30 + 32);
  v19 = *(v30 + 48);
  v20 = *(v30 + 80);
  *(v9 + 80) = *(v30 + 64);
  *(v9 + 96) = v20;
  *(v9 + 48) = v18;
  *(v9 + 64) = v19;
  v21 = *(v30 + 96);
  v22 = *(v30 + 112);
  v23 = *(v30 + 128);
  v24 = *(v30 + 144);
  *(v9 + 176) = *(v30 + 160);
  *(v9 + 144) = v23;
  *(v9 + 160) = v24;
  *(v9 + 112) = v21;
  *(v9 + 128) = v22;

  outlined copy of MLS.AllMember();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v25 = static MLSActor.shared;
  *(v9 + 2272) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v25, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)()
{
  v28 = v0;
  v1 = *(v0 + 1721);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 2232);
  v4 = *(v0 + 2224);
  v5 = *(v0 + 2176);
  v6 = *(v0 + 2168);
  v7 = *(v0 + 2136);
  v8 = *(v0 + 2128);
  v9 = *(v0 + 2120);
  v10 = *(v0 + 2112);
  v11 = *(v0 + 2240);
  *(v0 + 2024) = *(v6 + 16);
  *&v27[7] = *(v6 + 16);
  *(v0 + 1824) = v10;
  *(v0 + 1832) = v9;
  *(v0 + 1840) = v11;
  *(v0 + 1856) = v2;
  *(v0 + 1864) = v1;
  *(v0 + 1865) = *v27;
  *(v0 + 1880) = *&v27[15];
  *(v0 + 1888) = v8;
  *(v0 + 1896) = v7;
  *(v0 + 1904) = v4;
  *(v0 + 1912) = v3;
  *(v0 + 1760) = *(v0 + 1856);
  *(v0 + 1776) = *(v0 + 1872);
  *(v0 + 1792) = *(v0 + 1888);
  *(v0 + 1808) = *(v0 + 1904);
  *(v0 + 1728) = *(v0 + 1824);
  *(v0 + 1744) = *(v0 + 1840);
  *(v0 + 2280) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 2024, v0 + 2040, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 2024, v0 + 2056, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  outlined copy of Data._Representation(v8, v7);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v27 = v15;
    *v14 = 136315138;
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v27);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_264F1F000, v12, v13, "SwiftMLSClientCoordinator processIncoming sending incoming application message event { identifier: %s }", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  v19 = *(v0 + 2176);
  v20 = *(v0 + 2160);
  *(v0 + 2288) = v19[12];
  v21 = *(v0 + 1776);
  *(v0 + 1656) = *(v0 + 1760);
  *(v0 + 1672) = v21;
  v22 = *(v0 + 1808);
  *(v0 + 1688) = *(v0 + 1792);
  *(v0 + 1704) = v22;
  v23 = *(v0 + 1744);
  *(v0 + 1624) = *(v0 + 1728);
  *(v0 + 1640) = v23;
  *(v0 + 1720) = 0;
  outlined init with copy of ServerBag.MLS(v20, v0 + 1920);
  *(v0 + 2296) = v19[10];
  *(v0 + 2304) = v19[11];
  v24 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 2312) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v25 = (v19 + v24);
  *(v0 + 2320) = *v25;
  *(v0 + 2328) = v25[1];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v1 = v0[269];
  v2 = v0[243];
  v3 = v0[244];
  __swift_project_boxed_opaque_existential_1(v0 + 240, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[292] = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v8(v2, v3);
}

{
  v1 = v0[243];
  v2 = v0[244];
  __swift_project_boxed_opaque_existential_1(v0 + 240, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[295] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v7(v1, v2);
}

{
  v0[319] = v0[293];
  v1 = v0[269];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);

  v2 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2376);
  v6 = *v1;
  *(*v1 + 2384) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 2024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[277];
  v2 = v0[275];
  v3 = v0[274];
  v0[299] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[300] = v4;
  v5 = *(v2 + 8);
  v0[301] = v5;
  v0[302] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = v0[243];
  v7 = v0[244];
  __swift_project_boxed_opaque_existential_1(v0 + 240, v6);
  v8 = *(v7 + 56);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[303] = v10;
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v12(v6, v7);
}

{
  v1 = v0[243];
  v2 = v0[244];
  __swift_project_boxed_opaque_existential_1(v0 + 240, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[306] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v7(v1, v2);
}

{
  v0[319] = v0[298];
  v1 = v0[269];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);

  v2 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v2, 0);
}

{
  v1 = v0[305];
  v2 = v0[300];
  v3 = v0[299];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[305];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[304];
  }

  v0[319] = v0[307];
  v6 = v0[269];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v7, 0);
}

{
  v1 = *(v0 + 2528);
  v2 = (v0 + 1000);
  v3 = *(v0 + 2520);
  v27 = v3;
  v28 = v1;
  v4 = *(v0 + 2464);
  v5 = *(v0 + 2440);
  v6 = *(v0 + 2400);
  v7 = *(v0 + 2392);
  v25 = v7;
  v26 = v6;
  v8 = *(v0 + 2368);
  v24 = v8;
  v9 = *(v0 + 2352);
  v30 = *(v0 + 2288);
  v10 = *(v0 + 2152);
  v11 = *(v0 + 2144);
  if (v4 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 2464);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 2472);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 2440);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 2432);
  }

  if ((v9 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v9;
  }

  *(v0 + 792) = v11;
  *(v0 + 800) = v10;
  *(v0 + 808) = v16;
  *(v0 + 816) = v16;
  *(v0 + 824) = v8;
  *(v0 + 832) = v7;
  *(v0 + 840) = v6;
  *(v0 + 848) = v15;
  *(v0 + 856) = v14;
  *(v0 + 864) = v13;
  *(v0 + 872) = v12;
  *(v0 + 880) = v1;
  *(v0 + 888) = v3;
  outlined init with copy of MLS.Group(v0 + 792, v0 + 896);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1920));
  *(v0 + 688) = v11;
  *(v0 + 696) = v10;
  *(v0 + 704) = v16;
  *(v0 + 712) = v16;
  *(v0 + 720) = v24;
  *(v0 + 728) = v25;
  *(v0 + 736) = v26;
  *(v0 + 744) = v15;
  *(v0 + 752) = v14;
  *(v0 + 760) = v13;
  *(v0 + 768) = v12;
  *(v0 + 776) = v28;
  *(v0 + 784) = v27;
  outlined destroy of MLS.Group(v0 + 688);
  v17 = *(v0 + 808);
  *v2 = *(v0 + 792);
  *(v0 + 1016) = v17;
  *(v0 + 1096) = *(v0 + 888);
  v18 = *(v0 + 872);
  *(v0 + 1064) = *(v0 + 856);
  *(v0 + 1080) = v18;
  v19 = *(v0 + 840);
  *(v0 + 1032) = *(v0 + 824);
  *(v0 + 1048) = v19;
  v29 = (*v30 + 384);
  v31 = (*v29 + **v29);
  v20 = (*v29)[1];
  v21 = swift_task_alloc();
  *(v0 + 2536) = v21;
  *v21 = v0;
  v21[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  v22 = *(v0 + 2288);

  return (v31)(v0 + 1624, v2, 1, 0);
}

{
  v2 = *v1;
  v3 = *v1 + 1000;
  v4 = *(*v1 + 2536);
  v18 = *v1;
  *(*v1 + 2544) = v0;

  if (v0)
  {
    v5 = *(v2 + 2272);
    outlined destroy of NSObject?(v2 + 2024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    *(v2 + 1104) = *v3;
    *(v2 + 1120) = v7;
    *(v2 + 1136) = v6;
    v9 = *(v3 + 64);
    v8 = *(v3 + 80);
    v10 = *(v3 + 96);
    *(v2 + 1152) = *(v3 + 48);
    *(v2 + 1200) = v10;
    *(v2 + 1184) = v8;
    *(v2 + 1168) = v9;
    outlined destroy of MLS.Group(v2 + 1104);
    v11 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v5 = *(v2 + 2272);
    v13 = *(v3 + 16);
    v12 = *(v3 + 32);
    *(v2 + 1208) = *v3;
    *(v2 + 1224) = v13;
    *(v2 + 1240) = v12;
    v15 = *(v3 + 64);
    v14 = *(v3 + 80);
    v16 = *(v3 + 48);
    *(v2 + 1304) = *(v3 + 96);
    *(v2 + 1272) = v15;
    *(v2 + 1288) = v14;
    *(v2 + 1256) = v16;
    outlined destroy of MLS.Group(v2 + 1208);
    v11 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v11, v5, 0);
}

{
  v1 = v0[308];
  v2 = v0[305];
  v3 = v0[300];
  v4 = v0[299];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[308];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[309];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[305];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[304];
  }

  v0[319] = v0[314];
  v9 = v0[269];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v10, 0);
}

{
  outlined destroy of NSObject?((v0 + 228), &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = v0[319];
  v2 = v0[277];
  v3 = v0[276];
  v4 = v0[273];

  v5 = v0[1];

  return v5();
}

{
  v26 = v0;
  v1 = *(v0 + 2280);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2184);
  v4 = *(v0 + 2176);
  v5 = *(v0 + 2152);
  v6 = *(v0 + 2144);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, type metadata accessor for MLSActor);
  v9 = swift_allocObject();
  v10 = *(v0 + 112);
  *(v9 + 152) = *(v0 + 128);
  v11 = *(v0 + 160);
  *(v9 + 168) = *(v0 + 144);
  *(v9 + 184) = v11;
  v12 = *(v0 + 48);
  *(v9 + 88) = *(v0 + 64);
  v13 = *(v0 + 96);
  *(v9 + 104) = *(v0 + 80);
  *(v9 + 120) = v13;
  *(v9 + 136) = v10;
  v14 = *(v0 + 32);
  *(v9 + 40) = *(v0 + 16);
  *(v9 + 56) = v14;
  *(v9 + 16) = v2;
  *(v9 + 24) = v8;
  *(v9 + 32) = v4;
  v15 = *(v0 + 176);
  *(v9 + 72) = v12;
  *(v9 + 200) = v15;
  *(v9 + 208) = v6;
  *(v9 + 216) = v5;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v9);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    v20 = *(v0 + 16);
    v21 = *(v0 + 24);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v25);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_264F1F000, v16, v17, "SwiftMLSClientCoordinator processIncoming application message returning processedContext to caller { identifier: %s }", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v18, -1, -1);
  }

  v23 = (*(v0 + 2176) + *(v0 + 2312));
  outlined init with copy of ServerBag.MLS(*(v0 + 2160), v0 + 1960);
  *(v0 + 2560) = *v23;
  *(v0 + 2568) = v23[1];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v1 = v0[269];
  v2 = v0[248];
  v3 = v0[249];
  __swift_project_boxed_opaque_existential_1(v0 + 245, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[322] = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v8(v2, v3);
}

{
  v1 = v0[248];
  v2 = v0[249];
  __swift_project_boxed_opaque_existential_1(v0 + 245, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[324] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v7(v1, v2);
}

{
  v0[342] = v0[323];
  v1 = v0[269];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 245);

  v2 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2608);
  v6 = *v1;
  *(*v1 + 2616) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 2024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[302];
  v2 = v0[301];
  v3 = v0[276];
  v4 = v0[274];
  v0[328] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[329] = v5;
  v2(v3, v4);
  v6 = v0[248];
  v7 = v0[249];
  __swift_project_boxed_opaque_existential_1(v0 + 245, v6);
  v8 = *(v7 + 56);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[330] = v10;
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v12(v6, v7);
}

{
  v1 = v0[248];
  v2 = v0[249];
  __swift_project_boxed_opaque_existential_1(v0 + 245, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[333] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v7(v1, v2);
}

{
  v0[342] = v0[327];
  v1 = v0[269];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 245);

  v2 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v2, 0);
}

{
  v1 = v0[332];
  v2 = v0[329];
  v3 = v0[328];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[332];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[331];
  }

  v0[342] = v0[334];
  v6 = v0[269];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 245);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v7, 0);
}

{
  v1 = *(v0 + 2728);
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2680);
  v5 = *(v0 + 2656);
  v6 = *(v0 + 2632);
  v18 = v6;
  v19 = v2;
  v7 = *(v0 + 2624);
  v17 = v7;
  v8 = *(v0 + 2600);
  v20 = *(v0 + 2272);
  v9 = *(v0 + 2152);
  v10 = *(v0 + 2144);
  if ((v3 & 0x100000000) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v3;
  }

  if (v4 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 2680);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 2688);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 2656);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 2648);
  }

  *(v0 + 1416) = v10;
  *(v0 + 1424) = v9;
  *(v0 + 1432) = v11;
  *(v0 + 1440) = v11;
  *(v0 + 1448) = v8;
  *(v0 + 1456) = v7;
  *(v0 + 1464) = v6;
  *(v0 + 1472) = v15;
  *(v0 + 1480) = v14;
  *(v0 + 1488) = v13;
  *(v0 + 1496) = v12;
  *(v0 + 1504) = v1;
  *(v0 + 1512) = v2;
  outlined init with copy of MLS.Group(v0 + 1416, v0 + 1520);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1960));
  *(v0 + 1312) = v10;
  *(v0 + 1320) = v9;
  *(v0 + 1328) = v11;
  *(v0 + 1336) = v11;
  *(v0 + 1344) = v8;
  *(v0 + 1352) = v17;
  *(v0 + 1360) = v18;
  *(v0 + 1368) = v15;
  *(v0 + 1376) = v14;
  *(v0 + 1384) = v13;
  *(v0 + 1392) = v12;
  *(v0 + 1400) = v1;
  *(v0 + 1408) = v19;
  outlined destroy of MLS.Group(v0 + 1312);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v20, 0);
}

{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2216);
  v3 = *(v0 + 2208);
  v4 = *(v0 + 2184);
  v5 = *(v0 + 2104);
  outlined destroy of NSObject?(v0 + 1824, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);
  *v5 = *(v0 + 2024);
  v6 = *(v0 + 1512);
  v8 = *(v0 + 1480);
  v7 = *(v0 + 1496);
  *(v5 + 64) = *(v0 + 1464);
  *(v5 + 80) = v8;
  *(v5 + 96) = v7;
  *(v5 + 112) = v6;
  v10 = *(v0 + 1432);
  v9 = *(v0 + 1448);
  *(v5 + 16) = *(v0 + 1416);
  *(v5 + 32) = v10;
  *(v5 + 48) = v9;
  *(v5 + 120) = v1;

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[335];
  v2 = v0[332];
  v3 = v0[329];
  v4 = v0[328];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[335];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[336];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[332];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[331];
  }

  v0[342] = v0[338];
  v9 = v0[269];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 245);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v10, 0);
}

{
  outlined destroy of NSObject?((v0 + 228), &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = v0[342];
  v2 = v0[277];
  v3 = v0[276];
  v4 = v0[273];

  v5 = v0[1];

  return v5();
}

{
  outlined destroy of NSObject?((v0 + 228), &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = v0[318];
  v2 = v0[277];
  v3 = v0[276];
  v4 = v0[273];

  v5 = v0[1];

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2336);
  v6 = *v2;
  *(*v2 + 2344) = v1;

  if (v1)
  {
    outlined destroy of NSObject?(v4 + 2024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    *(v4 + 2352) = a1;
    v7 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 2360);
  v4 = *v1;
  *(*v1 + 2368) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[250] = v2;
  v4[251] = a1;
  v4[252] = v1;
  v5 = v3[322];
  v8 = *v2;
  v4[323] = v1;

  if (v1)
  {
    outlined destroy of NSObject?((v4 + 253), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v6 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v2 = *(*v1 + 2592);
  v4 = *v1;
  *(*v1 + 2600) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

void MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)()
{
  if ((v0[296] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[243];
    v2 = v0[244];
    __swift_project_boxed_opaque_existential_1(v0 + 240, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[297] = v5;
    *v5 = v0;
    v5[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
    v6 = v0[277];

    v7(v6, v1, v2);
  }
}

{
  if ((v0[325] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[248];
    v2 = v0[249];
    __swift_project_boxed_opaque_existential_1(v0 + 245, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[326] = v5;
    *v5 = v0;
    v5[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
    v6 = v0[276];

    v7(v6, v1, v2);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2424);
  v6 = *v2;
  *(v3 + 2432) = a1;
  *(v3 + 2440) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v6 = *(*v3 + 2448);
  v7 = *v3;
  v7[307] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v7 + 253), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
  }

  else
  {
    v8 = v7[291];
    v9 = v7[290];
    v21 = v7[288];
    v10 = v7[287];
    v7[308] = a2;
    v7[309] = a1;
    ObjectType = swift_getObjectType();
    v7[310] = ObjectType;
    v7[259] = v9;
    v7[260] = v8;
    v12 = *(v21 + 64);
    v7[311] = v12;
    v7[312] = (v21 + 64) & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[313] = v14;
    *v14 = v7;
    v14[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
    v15 = v7[288];
    v16 = v7[287];
    v17 = v7[269];
    v18 = v7[268];

    return (v20)(v18, v17, v7 + 259, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 2504);
  v8 = *v3;
  *(*v3 + 2512) = v2;

  if (v2)
  {
    outlined destroy of NSObject?(v6 + 2024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v9 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    *(v6 + 2520) = a2;
    *(v6 + 2528) = a1;
    v9 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 2640);
  v6 = *v2;
  *(v3 + 2648) = a1;
  *(v3 + 2656) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v6 = *(*v3 + 2664);
  v7 = *v3;
  v7[334] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v7 + 253), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
  }

  else
  {
    v8 = v7[321];
    v9 = v7[320];
    v10 = v7[312];
    v11 = v7[311];
    v7[335] = a2;
    v7[336] = a1;
    v7[261] = v9;
    v7[262] = v8;
    v21 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v7[337] = v13;
    *v13 = v7;
    v13[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
    v14 = v7[312];
    v15 = v7[310];
    v16 = v7[288];
    v17 = v7[287];
    v18 = v7[269];
    v19 = v7[268];

    return (v21)(v19, v18, v7 + 261, v15, v16);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 2696);
  v8 = *v3;
  *(*v3 + 2704) = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v6 + 253), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v9 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v6[339] = v6[251];
    v6[340] = a2;
    v6[341] = a1;
    v9 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[81] = a7;
  v7[80] = a6;
  v7[79] = a5;
  v7[78] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[82] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v8, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)()
{
  v38 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 632);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), &v37);
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator attempting key updates due to incoming application message { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v34 = *(v0 + 648);
  v8 = *(v0 + 640);
  v9 = *(v0 + 632);
  v10 = *(v0 + 624);
  outlined init with copy of ServerBag.MLS(v10 + 144, v0 + 520);
  v11 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);
  v12 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v36 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC22IncomingMessageContextVy_10Foundation4DataVGAC0gf9ProcessedK0Vy_ALGGMd, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC22IncomingMessageContextVy_10Foundation4DataVGAC0gf9ProcessedK0Vy_ALGGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = *v16;

  v33 = *(v10 + 80);
  *(v0 + 664) = v16;
  v18 = *(v17 + 184);
  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  *(v16 + 16) = v8;
  *(v16 + 24) = v34;
  *(v16 + 32) = 0;
  v19 = *v9;
  v20 = *(v9 + 16);
  *(v16 + 72) = *(v9 + 32);
  *(v16 + 56) = v20;
  *(v16 + 40) = v19;
  v21 = *(v9 + 48);
  v22 = *(v9 + 64);
  v23 = *(v9 + 80);
  *(v16 + 136) = *(v9 + 96);
  *(v16 + 120) = v23;
  *(v16 + 104) = v22;
  *(v16 + 88) = v21;
  v24 = *(v9 + 112);
  v25 = *(v9 + 128);
  v26 = *(v9 + 144);
  *(v16 + 200) = *(v9 + 160);
  *(v16 + 184) = v26;
  *(v16 + 168) = v25;
  *(v16 + 152) = v24;
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 520), v16 + 208);
  *(v16 + 248) = v11;
  *(v16 + 256) = v33;
  *(v16 + 272) = v36;
  *(v16 + 280) = v12;
  v27 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 616) = v16;
  v28 = *(*v27 + 216);
  outlined init with copy of MLS.OutgoingEventState?(v9, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v35 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 672) = v30;
  v31 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.KeyUpdateOperation<MLS.GroupOperationError, MLS.IncomingMessageContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.KeyUpdateOperation<A, B, C>, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC22IncomingMessageContextVy_10Foundation4DataVGAC0gf9ProcessedK0Vy_ALGGMd, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC22IncomingMessageContextVy_10Foundation4DataVGAC0gf9ProcessedK0Vy_ALGGMR);
  *v30 = v0;
  v30[1] = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v35(v0 + 560, v0 + 616, v13, v31, v0 + 592);
}

{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v12 = *v1;

  if (v0)
  {
    v4 = v2[82];
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v6 = v2[82];
    v7 = v2[70];
    v8 = v2[71];
    v9 = v2[72];
    v10 = v2[73];
    outlined consume of Data?(v7, v8);

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 632);
  v3 = *(v1 + 16);
  v2 = *(v1 + 32);
  *(v0 + 352) = *v1;
  *(v0 + 368) = v3;
  *(v0 + 384) = v2;
  v4 = *(v1 + 96);
  v6 = *(v1 + 48);
  v5 = *(v1 + 64);
  *(v0 + 432) = *(v1 + 80);
  *(v0 + 448) = v4;
  *(v0 + 400) = v6;
  *(v0 + 416) = v5;
  v8 = *(v1 + 128);
  v7 = *(v1 + 144);
  v9 = *(v1 + 112);
  *(v0 + 512) = *(v1 + 160);
  *(v0 + 480) = v8;
  *(v0 + 496) = v7;
  *(v0 + 464) = v9;
  v10 = swift_task_alloc();
  *(v0 + 680) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  *v10 = v0;
  v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  v12 = *(v0 + 648);
  v13 = *(v0 + 640);
  v14 = *(v0 + 624);

  return MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:)(v13, v12, v0 + 352, v11, &protocol witness table for <> MLS.IncomingMessageContext<A>);
}

{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v7 = *v1;
  *(*v1 + 688) = v0;

  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 664);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 664);
  v2 = *(v0 + 592);
  v3 = *(v0 + 600);
  v4 = *(v0 + 608);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[83];

  v2 = v0[86];
  v3 = v0[1];

  return v3();
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 2024) = v5;
  *(v6 + 2016) = a4;
  *(v6 + 2008) = a3;
  *(v6 + 2000) = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  *(v6 + 2032) = v9;
  v10 = *(v9 - 8);
  *(v6 + 2040) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 2048) = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.IncomingSignedMessage();
  *(v6 + 2056) = v12;
  v13 = *(v12 - 8);
  *(v6 + 2064) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 2072) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR) - 8) + 64) + 15;
  *(v6 + 2080) = swift_task_alloc();
  v16 = type metadata accessor for MLS.Group.Message();
  *(v6 + 2088) = v16;
  v17 = *(v16 - 8);
  *(v6 + 2096) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 2104) = swift_task_alloc();
  v19 = type metadata accessor for MLS.Group.ReceivedMessage();
  *(v6 + 2112) = v19;
  v20 = *(v19 - 8);
  *(v6 + 2120) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 2128) = swift_task_alloc();
  *(v6 + 2136) = swift_task_alloc();
  v22 = a2[1];
  *(v6 + 1656) = *a2;
  *(v6 + 1672) = v22;
  *(v6 + 1688) = a2[2];
  *(v6 + 1697) = *(a2 + 41);
  v23 = *(a5 + 144);
  *(v6 + 480) = *(a5 + 128);
  *(v6 + 496) = v23;
  *(v6 + 512) = *(a5 + 160);
  v24 = *(a5 + 80);
  *(v6 + 416) = *(a5 + 64);
  *(v6 + 432) = v24;
  v25 = *(a5 + 112);
  *(v6 + 448) = *(a5 + 96);
  *(v6 + 464) = v25;
  v26 = *(a5 + 16);
  *(v6 + 352) = *a5;
  *(v6 + 368) = v26;
  v27 = *(a5 + 48);
  *(v6 + 384) = *(a5 + 32);
  *(v6 + 400) = v27;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v28 = static MLSActor.shared;
  *(v6 + 2144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v28, 0);
}

void MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v1 = v0[253];
  v0[269] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?((v0 + 44), (v0 + 86), &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?((v0 + 44), &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    v6 = v0[44];
    v7 = v0[45];

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v17);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncomingFTD called { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v9 = *(v0[253] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v0[270] = v9;
  v10 = v0[45];
  v0[271] = v0[44];
  v0[272] = v10;
  v16 = *(*v9 + 192) + **(*v9 + 192);
  v11 = *(*(*v9 + 192) + 4);
  v12 = swift_task_alloc();
  v0[273] = v12;
  v13 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v12 = v0;
  v12[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  v14 = v0[252];
  v15 = v0[251];
  v19 = 0;
  v20 = 0;
  v23 = v0 + 238;
  v21 = &type metadata for MLS.IncomingMessageError;
  v22 = v13;

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[293] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[223];
    v2 = v0[224];
    __swift_project_boxed_opaque_existential_1(v0 + 220, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[294] = v5;
    *v5 = v0;
    v5[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v6 = v0[256];

    v7(v6, v1, v2);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 2184);
  v7 = *v1;
  *(*v1 + 2192) = v0;

  v4 = *(v2 + 2144);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v64 = v0;
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  *(v0 + 2200) = v2;
  *(v0 + 2208) = v1;
  if (v1 >> 60 == 15)
  {
    v3 = *(v0 + 2152);
    v4 = *(v0 + 2024);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 352, v0 + 856, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1656, v0 + 1592, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v0 + 1656, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 2176);
      v8 = *(v0 + 2168);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v63[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v63);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 1672), *(v0 + 1680), v63);
      _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator processIncomingFTD checking for loop { identifier: %s, message: %s }", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v10, -1, -1);
      MEMORY[0x266755550](v9, -1, -1);
    }

    v11 = *(v0 + 2160);
    v12 = *(v0 + 2024);
    v13 = *(v0 + 2016);
    v14 = *(v0 + 2008);
    v15 = swift_task_alloc();
    *(v0 + 2232) = v15;
    v15[2] = v12;
    v15[3] = v14;
    v15[4] = v13;
    v15[5] = v0 + 1656;
    v15[6] = v0 + 1800;
    v15[7] = v0 + 352;
    v16 = *(*v11 + 152);
    v61 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 2240) = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
    *v18 = v0;
    v18[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v20 = *(v0 + 2176);
    v21 = *(v0 + 2168);
    v22 = *(v0 + 2160);
    v23 = *(v0 + 2000);

    return (v61)(v23, v21, v20, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v15, v19);
  }

  else
  {
    v25 = *(v0 + 2192);
    v26 = *(v0 + 2104);
    v27 = *(v0 + 1824);
    v28 = *(v0 + 1832);
    __swift_project_boxed_opaque_existential_1((v0 + 1800), v27);
    outlined copy of Data?(v2, v1);
    outlined copy of Data._Representation(v2, v1);
    MLS.Group.Message.init(fromRaw:)();
    if (v25)
    {
      *(v0 + 2256) = v25;
      *(v0 + 1976) = v25;
      v29 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        v30 = *(v0 + 2208);
        v31 = *(v0 + 2200);

        v32 = *(v0 + 1880);
        v33 = *(v0 + 1888);
        v34 = *(v0 + 1896);
        lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
        swift_allocError();
        *v35 = v32;
        *(v35 + 8) = v33;
        *(v35 + 16) = v34;
        swift_willThrow();
        outlined consume of Data?(v31, v30);

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1800));
        v36 = *(v0 + 2136);
        v37 = *(v0 + 2128);
        v38 = *(v0 + 2104);
        v39 = *(v0 + 2080);
        v40 = *(v0 + 2072);
        v41 = *(v0 + 2048);

        v42 = *(v0 + 8);

        return v42();
      }

      else
      {
        v49 = *(v0 + 2152);
        v50 = *(v0 + 2024);

        outlined init with copy of MLS.OutgoingEventState?(v0 + 352, v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        outlined destroy of NSObject?(v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
        if (os_log_type_enabled(v51, v52))
        {
          v53 = *(v0 + 2176);
          v54 = *(v0 + 2168);
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v63[0] = v56;
          *v55 = 136315138;
          *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, v63);
          _os_log_impl(&dword_264F1F000, v51, v52, "SwiftMLSClientCoordinator processIncomingFTD failed to validate signature. Self healing { identifier: %s }", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          MEMORY[0x266755550](v56, -1, -1);
          MEMORY[0x266755550](v55, -1, -1);
        }

        outlined init with copy of ServerBag.MLS(v0 + 1800, v0 + 1720);
        *(v0 + 1336) = 0u;
        *(v0 + 1352) = 0u;
        *(v0 + 1368) = 0u;
        *(v0 + 1384) = 0u;
        v57 = swift_task_alloc();
        *(v0 + 2264) = v57;
        *v57 = v0;
        v57[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
        v58 = *(v0 + 2024);
        v59 = *(v0 + 2016);
        v60 = *(v0 + 2008);

        return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v60, v59, v0 + 1720, (v0 + 1336), 0);
      }
    }

    else
    {
      (*(*(v0 + 2096) + 56))(*(v0 + 2080), 1, 1, *(v0 + 2088));
      v43 = *(v28 + 128);
      v62 = (v43 + *v43);
      v44 = v43[1];
      v45 = swift_task_alloc();
      *(v0 + 2216) = v45;
      *v45 = v0;
      v45[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
      v46 = *(v0 + 2136);
      v47 = *(v0 + 2104);
      v48 = *(v0 + 2080);

      return v62(v46, v47, v48, v27, v28);
    }
  }
}

{
  v2 = *v1;
  v3 = (*v1)[277];
  v4 = *v1;
  (*v1)[278] = v0;

  v5 = v2[268];
  v6 = v2[263];
  v7 = v2[262];
  v8 = v2[261];
  outlined destroy of NSObject?(v2[260], &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v9 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v9 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, v5, 0);
}

{
  v122 = v0;
  v1 = v0 + 352;
  v2 = (v0 + 1800);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2120);
  v5 = *(v0 + 2112);
  (*(v4 + 16))(v3, *(v0 + 2136), v5);
  if ((*(v4 + 88))(v3, v5) != *MEMORY[0x277D6AAC0])
  {
    v29 = *(v0 + 2152);
    v30 = *(v0 + 2024);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 352, v0 + 520, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 2176);
      v34 = *(v0 + 2168);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v116 = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v116);
      _os_log_impl(&dword_264F1F000, v31, v32, "SwiftMLSClientCoordinator processIncomingFTD given a non signed message { identifier: %s }", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266755550](v36, -1, -1);
      MEMORY[0x266755550](v35, -1, -1);
    }

    v37 = *(v0 + 2136);
    v38 = *(v0 + 2128);
    v39 = *(v0 + 2120);
    v40 = *(v0 + 2112);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    v27 = swift_allocError();
    *v41 = 6;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    swift_willThrow();
    v42 = *(v39 + 8);
    v42(v37, v40);
    v42(v38, v40);
    goto LABEL_12;
  }

  v6 = *(v0 + 2128);
  v7 = *(v0 + 2072);
  v8 = *(v0 + 2064);
  v9 = *(v0 + 2056);
  (*(*(v0 + 2120) + 96))(v6, *(v0 + 2112));
  (*(v8 + 32))(v7, v6, v9);
  *(v0 + 1508) = *(v0 + 444);
  v10 = *(v0 + 432);
  *(v0 + 1480) = *(v0 + 416);
  *(v0 + 1496) = v10;
  *(v0 + 1464) = *(v0 + 400);
  v11 = *(v0 + 1480);
  v12 = *(v0 + 1496);
  v114 = v0 + 352;
  if (v11 >> 16 == 0xFFFFFFFF && (v12 & 0x3000000000000000) == 0)
  {
    v13 = *(v0 + 2152);
    v14 = *(v0 + 2024);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 352, v0 + 184, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 2176);
      v18 = *(v0 + 2168);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v116 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v116);
      _os_log_impl(&dword_264F1F000, v15, v16, "SwiftMLSClientCoordinator processIncomingFTD not given expectedSignedData { identifier: %s }", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x266755550](v20, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    v21 = *(v0 + 2136);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    v24 = *(v0 + 2072);
    v25 = *(v0 + 2064);
    v26 = *(v0 + 2056);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    v27 = swift_allocError();
    *v28 = 12;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    swift_willThrow();
    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    v1 = v0 + 352;
    goto LABEL_12;
  }

  v43 = *(v0 + 2224);
  v111 = *(v0 + 2120);
  v44 = *(v0 + 2072);
  v45 = *(v0 + 2064);
  v46 = *(v0 + 1520);
  v47 = *(v0 + 1488);
  v116 = *(v0 + 1464);
  v117 = v11;
  v118 = v47;
  v119 = v12;
  v120 = *(v0 + 1504);
  v121 = v46;
  v48 = *(v0 + 416);
  *(v0 + 1528) = *(v0 + 400);
  *(v0 + 1544) = v48;
  *(v0 + 1560) = *(v0 + 432);
  *(v0 + 1572) = *(v0 + 444);
  outlined init with copy of MLS.SigningInput(v0 + 1528, v0 + 1400);
  MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter((v0 + 1840));
  v49 = *(v0 + 1872);
  __swift_project_boxed_opaque_existential_1((v0 + 1840), *(v0 + 1864));
  v50 = MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter();
  v52 = v51;
  MLS.VerifiableDerivedContent.verifyEquals(_:)();
  v53 = (v45 + 8);
  v54 = (v111 + 8);
  if (v43)
  {
    v27 = v43;
    v112 = *(v0 + 2136);
    v55 = *(v0 + 2112);
    v56 = *(v0 + 2072);
    v57 = *(v0 + 2056);
    outlined consume of Data._Representation(v50, v52);
    outlined destroy of NSObject?(v0 + 1464, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    (*v53)(v56, v57);
    (*v54)(v112, v55);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1840));
    v2 = (v0 + 1800);
    v1 = v0 + 352;
LABEL_12:
    *(v0 + 2256) = v27;
    *(v0 + 1976) = v27;
    v58 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v59 = *(v0 + 2208);
      v60 = *(v0 + 2200);

      v61 = *(v0 + 1880);
      v62 = *(v0 + 1888);
      v63 = *(v0 + 1896);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v64 = v61;
      *(v64 + 8) = v62;
      *(v64 + 16) = v63;
      swift_willThrow();
      outlined consume of Data?(v60, v59);

      __swift_destroy_boxed_opaque_existential_1Tm(v2);
      v65 = *(v0 + 2136);
      v66 = *(v0 + 2128);
      v67 = *(v0 + 2104);
      v68 = *(v0 + 2080);
      v69 = *(v0 + 2072);
      v70 = *(v0 + 2048);

      v71 = *(v0 + 8);

      return v71();
    }

    else
    {
      v73 = *(v0 + 2152);
      v74 = *(v0 + 2024);

      outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v75, v76))
      {
        v77 = *(v0 + 2176);
        v78 = *(v0 + 2168);
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v116 = v80;
        *v79 = 136315138;
        *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v77, &v116);
        _os_log_impl(&dword_264F1F000, v75, v76, "SwiftMLSClientCoordinator processIncomingFTD failed to validate signature. Self healing { identifier: %s }", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x266755550](v80, -1, -1);
        MEMORY[0x266755550](v79, -1, -1);
      }

      outlined init with copy of ServerBag.MLS(v2, v0 + 1720);
      *(v0 + 1336) = 0u;
      *(v0 + 1352) = 0u;
      *(v0 + 1368) = 0u;
      *(v0 + 1384) = 0u;
      v81 = swift_task_alloc();
      *(v0 + 2264) = v81;
      *v81 = v0;
      v81[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
      v82 = *(v0 + 2024);
      v83 = *(v0 + 2016);
      v84 = *(v0 + 2008);

      return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v84, v83, v0 + 1720, (v0 + 1336), 0);
    }
  }

  v85 = *(v0 + 2208);
  v86 = *(v0 + 2200);
  v113 = *(v0 + 2136);
  v110 = *(v0 + 2112);
  v87 = *(v0 + 2072);
  v88 = *(v0 + 2056);
  outlined consume of Data._Representation(v50, v52);
  outlined destroy of NSObject?(v0 + 1464, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  outlined consume of Data?(v86, v85);
  (*v53)(v87, v88);
  (*v54)(v113, v110);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1840));
  v89 = *(v0 + 2152);
  v90 = *(v0 + 2024);
  outlined init with copy of MLS.OutgoingEventState?(v114, v0 + 856, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1656, v0 + 1592, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v114, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 1656, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  if (os_log_type_enabled(v91, v92))
  {
    v93 = *(v0 + 2176);
    v94 = *(v0 + 2168);
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v116 = v96;
    *v95 = 136315394;
    *(v95 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v93, &v116);
    *(v95 + 12) = 2080;
    *(v95 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 1672), *(v0 + 1680), &v116);
    _os_log_impl(&dword_264F1F000, v91, v92, "SwiftMLSClientCoordinator processIncomingFTD checking for loop { identifier: %s, message: %s }", v95, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v96, -1, -1);
    MEMORY[0x266755550](v95, -1, -1);
  }

  v97 = *(v0 + 2160);
  v98 = *(v0 + 2024);
  v99 = *(v0 + 2016);
  v100 = *(v0 + 2008);
  v101 = swift_task_alloc();
  *(v0 + 2232) = v101;
  v101[2] = v98;
  v101[3] = v100;
  v101[4] = v99;
  v101[5] = v0 + 1656;
  v101[6] = v0 + 1800;
  v101[7] = v114;
  v102 = *(*v97 + 152);
  v115 = (v102 + *v102);
  v103 = v102[1];
  v104 = swift_task_alloc();
  *(v0 + 2240) = v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  *v104 = v0;
  v104[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  v106 = *(v0 + 2176);
  v107 = *(v0 + 2168);
  v108 = *(v0 + 2160);
  v109 = *(v0 + 2000);

  return (v115)(v109, v107, v106, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v101, v105);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2240);
  v9 = *v1;
  *(*v1 + 2248) = v0;

  if (v0)
  {
    v4 = *(v2 + 2144);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v6 = *(v2 + 2232);
    v7 = *(v2 + 2144);

    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[267];
  v2 = v0[266];
  v3 = v0[263];
  v4 = v0[260];
  v5 = v0[259];
  v6 = v0[256];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 225);

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 1904);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1920);
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  v5 = *(v0 + 2136);
  v6 = *(v0 + 2128);
  v7 = *(v0 + 2104);
  v8 = *(v0 + 2080);
  v9 = *(v0 + 2072);
  v10 = *(v0 + 2048);

  v11 = *(v0 + 8);

  return v11();
}

{
  v2 = *v1;
  v3 = *(*v1 + 2264);
  v7 = *v1;
  *(*v1 + 2272) = v0;

  if (v0)
  {
    v4 = *(v2 + 2144);
    outlined destroy of NSObject?(v2 + 1720, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v4 = *(v2 + 2144);
    outlined destroy of NSObject?(v2 + 1720, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 2024);
  *(v0 + 1960) = *(v0 + 368);
  outlined init with copy of ServerBag.MLS(v0 + 1800, v0 + 1760);
  *(v0 + 2280) = *(v1 + 80);
  *(v0 + 2288) = *(v1 + 88);
  v2 = v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 2296) = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 2304) = *(v2 + 8);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1960, v0 + 1928, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

{
  v1 = v0[252];
  v2 = v0[223];
  v3 = v0[224];
  __swift_project_boxed_opaque_existential_1(v0 + 220, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[289] = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[223];
  v2 = v0[224];
  __swift_project_boxed_opaque_existential_1(v0 + 220, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[292] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v7(v1, v2);
}

{
  v0[309] = v0[290];
  v1 = v0[252];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 220);

  v2 = v0[268];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2352);
  v6 = *v1;
  *(*v1 + 2360) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 1960, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[256];
  v2 = v0[255];
  v3 = v0[254];
  v0[296] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[297] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[223];
  v6 = v0[224];
  __swift_project_boxed_opaque_existential_1(v0 + 220, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[298] = v9;
  *v9 = v0;
  v9[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v11(v5, v6);
}

{
  v1 = v0[223];
  v2 = v0[224];
  __swift_project_boxed_opaque_existential_1(v0 + 220, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[301] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v7(v1, v2);
}

{
  v0[309] = v0[295];
  v1 = v0[252];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 220);

  v2 = v0[268];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v2, 0);
}

{
  v1 = v0[300];
  v2 = v0[297];
  v3 = v0[296];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[300];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[299];
  }

  v0[309] = v0[302];
  v6 = v0[252];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 220);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[268];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v7, 0);
}

{
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2424);
  v4 = *(v0 + 2400);
  v5 = *(v0 + 2376);
  v6 = *(v0 + 2368);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 2344);
  v17 = v7;
  v8 = *(v0 + 2328);
  v20 = *(v0 + 2144);
  v9 = *(v0 + 2016);
  v10 = *(v0 + 2008);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 2424);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 2432);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 2400);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 2392);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 1128) = v10;
  *(v0 + 1136) = v9;
  *(v0 + 1144) = v15;
  *(v0 + 1152) = v15;
  *(v0 + 1160) = v7;
  *(v0 + 1168) = v6;
  *(v0 + 1176) = v5;
  *(v0 + 1184) = v14;
  *(v0 + 1192) = v13;
  *(v0 + 1200) = v12;
  *(v0 + 1208) = v11;
  *(v0 + 1216) = v1;
  *(v0 + 1224) = v2;
  outlined init with copy of MLS.Group(v0 + 1128, v0 + 1024);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1760));
  *(v0 + 1232) = v10;
  *(v0 + 1240) = v9;
  *(v0 + 1248) = v15;
  *(v0 + 1256) = v15;
  *(v0 + 1264) = v17;
  *(v0 + 1272) = v18;
  *(v0 + 1280) = v19;
  *(v0 + 1288) = v14;
  *(v0 + 1296) = v13;
  *(v0 + 1304) = v12;
  *(v0 + 1312) = v11;
  *(v0 + 1320) = v1;
  *(v0 + 1328) = v2;
  outlined destroy of MLS.Group(v0 + 1232);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v20, 0);
}

{
  v1 = *(v0 + 2208);
  v2 = *(v0 + 2200);
  v3 = *(v0 + 2000);

  outlined consume of Data?(v2, v1);
  v4 = *(v0 + 464);
  *(v0 + 1992) = v4;
  *v3 = *(v0 + 1960);
  v5 = *(v0 + 1224);
  v6 = *(v0 + 1176);
  v7 = *(v0 + 1208);
  *(v3 + 80) = *(v0 + 1192);
  *(v3 + 96) = v7;
  *(v3 + 64) = v6;
  v8 = *(v0 + 1160);
  v9 = *(v0 + 1128);
  *(v3 + 32) = *(v0 + 1144);
  *(v3 + 48) = v8;
  *(v3 + 16) = v9;
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;
  outlined init with copy of MetricCollector(v0 + 1992, v0 + 1984);
  v10 = *(v0 + 2136);
  v11 = *(v0 + 2128);
  v12 = *(v0 + 2104);
  v13 = *(v0 + 2080);
  v14 = *(v0 + 2072);
  v15 = *(v0 + 2048);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1800));

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = v0[303];
  v2 = v0[300];
  v3 = v0[297];
  v4 = v0[296];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[303];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[304];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[300];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[299];
  }

  v0[309] = v0[306];
  v9 = v0[252];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 220);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[268];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v10, 0);
}

{
  v1 = v0[282];
  outlined consume of Data?(v0[275], v0[276]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 225);
  v2 = v0[309];
  v3 = v0[267];
  v4 = v0[266];
  v5 = v0[263];
  v6 = v0[260];
  v7 = v0[259];
  v8 = v0[256];

  v9 = v0[1];

  return v9();
}

{
  v30 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2256) = v1;
  *(v0 + 1976) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 2208);
    v4 = *(v0 + 2200);

    v5 = *(v0 + 1880);
    v6 = *(v0 + 1888);
    v7 = *(v0 + 1896);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;
    swift_willThrow();
    outlined consume of Data?(v4, v3);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1800));
    v9 = *(v0 + 2136);
    v10 = *(v0 + 2128);
    v11 = *(v0 + 2104);
    v12 = *(v0 + 2080);
    v13 = *(v0 + 2072);
    v14 = *(v0 + 2048);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 2152);
    v18 = *(v0 + 2024);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 352, v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 2176);
      v22 = *(v0 + 2168);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v29);
      _os_log_impl(&dword_264F1F000, v19, v20, "SwiftMLSClientCoordinator processIncomingFTD failed to validate signature. Self healing { identifier: %s }", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x266755550](v24, -1, -1);
      MEMORY[0x266755550](v23, -1, -1);
    }

    outlined init with copy of ServerBag.MLS(v0 + 1800, v0 + 1720);
    *(v0 + 1336) = 0u;
    *(v0 + 1352) = 0u;
    *(v0 + 1368) = 0u;
    *(v0 + 1384) = 0u;
    v25 = swift_task_alloc();
    *(v0 + 2264) = v25;
    *v25 = v0;
    v25[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v26 = *(v0 + 2024);
    v27 = *(v0 + 2016);
    v28 = *(v0 + 2008);

    return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v28, v27, v0 + 1720, (v0 + 1336), 0);
  }
}

{
  v1 = v0[282];
  outlined consume of Data?(v0[275], v0[276]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 225);
  v2 = v0[284];
  v3 = v0[267];
  v4 = v0[266];
  v5 = v0[263];
  v6 = v0[260];
  v7 = v0[259];
  v8 = v0[256];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[279];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 225);
  v2 = v0[281];
  v3 = v0[267];
  v4 = v0[266];
  v5 = v0[263];
  v6 = v0[260];
  v7 = v0[259];
  v8 = v0[256];

  v9 = v0[1];

  return v9();
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2312);
  v6 = *v2;
  *(*v2 + 2320) = v1;

  if (v1)
  {
    outlined destroy of NSObject?(v4 + 1960, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    *(v4 + 2328) = a1;
    v7 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 2336);
  v4 = *v1;
  *(*v1 + 2344) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2384);
  v6 = *v2;
  *(v3 + 2392) = a1;
  *(v3 + 2400) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 2408);
  v7 = *v3;
  v7[302] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v7 + 245), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
  }

  else
  {
    v8 = v7[288];
    v9 = v7[287];
    v21 = v7[286];
    v10 = v7[285];
    v7[303] = a2;
    v7[304] = a1;
    ObjectType = swift_getObjectType();
    v7[243] = v9;
    v7[244] = v8;
    v12 = *(v21 + 64);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[305] = v14;
    *v14 = v7;
    v14[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v15 = v7[286];
    v16 = v7[285];
    v17 = v7[252];
    v18 = v7[251];

    return (v20)(v18, v17, v7 + 243, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 2440);
  v8 = *v3;
  *(*v3 + 2448) = v2;

  if (v2)
  {
    outlined destroy of NSObject?(v6 + 1960, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v9 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    *(v6 + 2456) = a2;
    *(v6 + 2464) = a1;
    v9 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[196] = a7;
  v7[195] = a6;
  v7[194] = a5;
  v7[193] = a4;
  v7[192] = a3;
  v7[191] = a2;
  v7[190] = a1;
  v8 = type metadata accessor for UUID();
  v7[197] = v8;
  v9 = *(v8 - 8);
  v7[198] = v9;
  v10 = *(v9 + 64) + 15;
  v7[199] = swift_task_alloc();
  v11 = type metadata accessor for MLS.Group.GroupInfo();
  v7[200] = v11;
  v12 = *(v11 - 8);
  v7[201] = v12;
  v13 = *(v12 + 64) + 15;
  v7[202] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  v7[203] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v14, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v1 = v0[194];
  v2 = v0[191];
  v0[204] = *(v2 + 80);
  v3 = *(v2 + 88);
  v0[205] = v3;
  ObjectType = swift_getObjectType();
  v0[206] = ObjectType;
  v5 = *(v1 + 16);
  v0[207] = v5;
  v6 = *(v1 + 24);
  v0[208] = v6;
  v7 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[209] = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v8 = (v2 + v7);
  v9 = v8[1];
  v0[178] = *v8;
  v0[179] = v9;
  v10 = *(v3 + 216);

  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[210] = v12;
  *v12 = v0;
  v12[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  v13 = v0[193];
  v14 = v0[192];

  return (v16)(v14, v13, v5, v6, v0 + 178, ObjectType, v3);
}

{
  if (*(v0 + 865))
  {
    v1 = 0;
LABEL_4:
    v2 = *(v0 + 1640);
    v3 = (*(v0 + 1528) + *(v0 + 1672));
    v4 = v3[1];
    *(v0 + 1440) = *v3;
    *(v0 + 1448) = v4;
    v5 = *(v2 + 224);

    v21 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 1704) = v7;
    *v7 = v0;
    v7[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v8 = *(v0 + 1664);
    v9 = *(v0 + 1656);
    v10 = *(v0 + 1648);
    v11 = *(v0 + 1640);
    v12 = *(v0 + 1632);
    v13 = *(v0 + 1544);
    v14 = *(v0 + 1536);

    return v21(v1 + 1, v14, v13, v9, v8, v0 + 1440, v10, v11);
  }

  v1 = *(v0 + 1688);
  if (v1 < 5)
  {
    goto LABEL_4;
  }

  v16 = *(v0 + 1664);

  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v17 = 20;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  swift_willThrow();
  v18 = *(v0 + 1616);
  v19 = *(v0 + 1592);

  v20 = *(v0 + 8);

  return v20();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1704);
  v10 = *v1;
  *(*v1 + 1712) = v0;

  if (v0)
  {
    v4 = v2[208];
    v5 = v2[203];

    v6 = v2[181];

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v5 = v2[203];
    v8 = v2[181];

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

{
  v1 = (v0[191] + v0[209]);
  outlined init with copy of ServerBag.MLS(v0[195], (v0 + 163));
  v0[215] = *v1;
  v0[216] = v1[1];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

{
  v1 = v0[193];
  v2 = v0[166];
  v3 = v0[167];
  __swift_project_boxed_opaque_existential_1(v0 + 163, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[217] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[166];
  v2 = v0[167];
  __swift_project_boxed_opaque_existential_1(v0 + 163, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[220] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v7(v1, v2);
}

{
  v0[238] = v0[218];
  v1 = v0[193];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 163);

  v2 = v0[203];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1776);
  v7 = *v1;
  *(*v1 + 1784) = v0;

  if (v0)
  {
    v4 = *(v2 + 1664);

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = v0[202];
  v2 = v0[201];
  v3 = v0[200];
  v0[224] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[225] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[166];
  v6 = v0[167];
  __swift_project_boxed_opaque_existential_1(v0 + 163, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[226] = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v11(v5, v6);
}

{
  v1 = v0[166];
  v2 = v0[167];
  __swift_project_boxed_opaque_existential_1(v0 + 163, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[229] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v7(v1, v2);
}

{
  v0[238] = v0[223];
  v1 = v0[193];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 163);

  v2 = v0[203];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v2, 0);
}

{
  v1 = v0[228];
  v2 = v0[225];
  v3 = v0[224];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[228];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[227];
  }

  v0[238] = v0[230];
  v6 = v0[193];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 163);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[203];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v7, 0);
}

{
  v1 = *(v0 + 1888);
  v2 = *(v0 + 1880);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1824);
  v5 = *(v0 + 1800);
  v6 = *(v0 + 1792);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 1768);
  v17 = v7;
  v8 = *(v0 + 1752);
  v20 = *(v0 + 1624);
  v9 = *(v0 + 1544);
  v10 = *(v0 + 1536);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 1848);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1856);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 1824);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1816);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 456) = v10;
  *(v0 + 464) = v9;
  *(v0 + 472) = v15;
  *(v0 + 480) = v15;
  *(v0 + 488) = v7;
  *(v0 + 496) = v6;
  *(v0 + 504) = v5;
  *(v0 + 512) = v14;
  *(v0 + 520) = v13;
  *(v0 + 528) = v12;
  *(v0 + 536) = v11;
  *(v0 + 544) = v1;
  *(v0 + 552) = v2;
  outlined init with copy of MLS.Group(v0 + 456, v0 + 560);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1304));
  *(v0 + 352) = v10;
  *(v0 + 360) = v9;
  *(v0 + 368) = v15;
  *(v0 + 376) = v15;
  *(v0 + 384) = v17;
  *(v0 + 392) = v18;
  *(v0 + 400) = v19;
  *(v0 + 408) = v14;
  *(v0 + 416) = v13;
  *(v0 + 424) = v12;
  *(v0 + 432) = v11;
  *(v0 + 440) = v1;
  *(v0 + 448) = v2;
  outlined destroy of MLS.Group(v0 + 352);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v20, 0);
}

{
  v36 = v0;
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1528);
  *(v0 + 1896) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 1240, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1664);
    v7 = *(v0 + 1656);
    v8 = *(v0 + 1568);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v8, *(v8 + 8), v35);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v35);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncomingFTD calling out to resend { identifier: %s, message: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v32 = *(v0 + 1656);
  v34 = *(v0 + 1664);
  v11 = *(v0 + 1592);
  v12 = *(v0 + 1584);
  v13 = *(v0 + 1576);
  v14 = *(v0 + 1568);
  v15 = *(v0 + 1552);
  v31 = *(v0 + 1528);
  UUID.init()();
  v30 = UUID.uuidString.getter();
  v17 = v16;
  (*(v12 + 8))(v11, v13);
  v18 = *(v15 + 32);
  *(v0 + 1353) = *(v15 + 41);
  *(v0 + 1344) = v18;
  *(v0 + 1408) = *(v14 + 16);
  v19 = *(v15 + 32);
  *(v0 + 1105) = *(v15 + 41);
  *(v0 + 1096) = v19;
  *(v35 + 7) = *(v14 + 16);
  *(v0 + 1080) = v30;
  *(v0 + 1088) = v17;
  *(v0 + 1136) = *(&v35[1] + 7);
  *(v0 + 1121) = *v35;
  *(v0 + 1144) = v32;
  *(v0 + 1152) = v34;
  v20 = *(v31 + 96);
  v21 = *(v0 + 1128);
  *(v0 + 800) = *(v0 + 1112);
  *(v0 + 816) = v21;
  *(v0 + 832) = *(v0 + 1144);
  v22 = *(v0 + 1096);
  *(v0 + 768) = *(v0 + 1080);
  *(v0 + 784) = v22;
  *(v0 + 864) = 8;
  v23 = *(v0 + 472);
  *(v0 + 664) = *(v0 + 456);
  *(v0 + 680) = v23;
  *(v0 + 760) = *(v0 + 552);
  v24 = *(v0 + 536);
  *(v0 + 728) = *(v0 + 520);
  *(v0 + 744) = v24;
  v25 = *(v0 + 504);
  *(v0 + 696) = *(v0 + 488);
  *(v0 + 712) = v25;
  v26 = *(*v20 + 384);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1408, v0 + 1472, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1408, v0 + 1488, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  outlined init with copy of MLS.AllMember(v0 + 1344, v0 + 1376);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1080, v0 + 1160, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);
  v33 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  *(v0 + 1912) = v28;
  *v28 = v0;
  v28[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return (v33)(v0 + 768, v0 + 664, 1, 0);
}

{
  v1 = v0[231];
  v2 = v0[228];
  v3 = v0[225];
  v4 = v0[224];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[231];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[232];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[228];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[227];
  }

  v0[238] = v0[234];
  v9 = v0[193];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 163);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[203];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v10, 0);
}

{
  v1 = v0[238];
  v2 = v0[202];
  v3 = v0[199];

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1912);
  v19 = *v1;
  *(*v1 + 1920) = v0;

  if (v0)
  {
    v4 = *(v2 + 1624);
    outlined destroy of NSObject?(v2 + 1408, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = *(v2 + 784);
    v5 = *(v2 + 800);
    *(v2 + 872) = *(v2 + 768);
    *(v2 + 888) = v6;
    *(v2 + 904) = v5;
    v8 = *(v2 + 832);
    v7 = *(v2 + 848);
    v9 = *(v2 + 816);
    *(v2 + 968) = *(v2 + 864);
    *(v2 + 936) = v8;
    *(v2 + 952) = v7;
    *(v2 + 920) = v9;
    outlined destroy of NSObject?(v2 + 872, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v11 = v4;
  }

  else
  {
    v12 = *(v2 + 1624);
    v13 = *(v2 + 784);
    *(v2 + 976) = *(v2 + 768);
    *(v2 + 992) = v13;
    v14 = *(v2 + 832);
    v15 = *(v2 + 848);
    v16 = *(v2 + 864);
    v17 = *(v2 + 816);
    *(v2 + 1008) = *(v2 + 800);
    *(v2 + 1024) = v17;
    *(v2 + 1072) = v16;
    *(v2 + 1056) = v15;
    *(v2 + 1040) = v14;
    outlined destroy of NSObject?(v2 + 976, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

{
  v21 = v0;
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1528);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 184, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1568);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), &v20);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncomingFTD returning to client { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  outlined destroy of NSObject?(v0 + 1080, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);

  v9 = *(v0 + 1616);
  v10 = *(v0 + 1592);
  v11 = *(v0 + 1520);
  v12 = *(*(v0 + 1568) + 112);
  *(v0 + 1504) = v12;
  *v11 = *(v0 + 1408);
  v13 = *(v0 + 488);
  v14 = *(v0 + 456);
  *(v11 + 32) = *(v0 + 472);
  *(v11 + 48) = v13;
  *(v11 + 16) = v14;
  v15 = *(v0 + 504);
  v16 = *(v0 + 536);
  v17 = *(v0 + 552);
  *(v11 + 80) = *(v0 + 520);
  *(v11 + 96) = v16;
  *(v11 + 64) = v15;
  *(v11 + 112) = v17;
  *(v11 + 120) = v12;
  outlined init with copy of MetricCollector(v0 + 1504, v0 + 1512);

  v18 = *(v0 + 8);

  return v18();
}

{
  v1 = v0[212];
  v2 = v0[202];
  v3 = v0[199];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[214];
  v2 = v0[202];
  v3 = v0[199];

  v4 = v0[1];

  return v4();
}

{
  outlined destroy of NSObject?((v0 + 135), &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.Group((v0 + 57));
  v1 = v0[240];
  v2 = v0[202];
  v3 = v0[199];

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 1680);
  v13 = *v3;
  *(v5 + 1688) = a1;
  *(v5 + 1696) = v2;

  if (v2)
  {
    v7 = *(v5 + 1664);
    v8 = *(v5 + 1624);

    v9 = *(v5 + 1432);

    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v8 = *(v5 + 1624);
    *(v5 + 865) = a2;
    v11 = *(v5 + 1432);

    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v10, v8, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1736);
  v6 = *v2;
  *(*v2 + 1744) = v1;

  if (v1)
  {
    v7 = *(v4 + 1664);

    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    *(v4 + 1752) = a1;
    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v2 = *(*v1 + 1760);
  v4 = *v1;
  *(*v1 + 1768) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  if ((v0[221] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[166];
    v2 = v0[167];
    __swift_project_boxed_opaque_existential_1(v0 + 163, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[222] = v5;
    *v5 = v0;
    v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v6 = v0[202];

    v7(v6, v1, v2);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1808);
  v6 = *v2;
  *(v3 + 1816) = a1;
  *(v3 + 1824) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 1832);
  v7 = *v3;
  v7[230] = v2;

  if (v2)
  {
    v8 = v7[208];

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
  }

  else
  {
    v9 = v7[216];
    v10 = v7[215];
    v11 = v7[205];
    v7[231] = a2;
    v7[232] = a1;
    v7[182] = v10;
    v7[183] = v9;
    v20 = (*(v11 + 64) + **(v11 + 64));
    v12 = *(*(v11 + 64) + 4);
    v13 = swift_task_alloc();
    v7[233] = v13;
    *v13 = v7;
    v13[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v14 = v7[206];
    v15 = v7[205];
    v16 = v7[204];
    v17 = v7[193];
    v18 = v7[192];

    return v20(v18, v17, v7 + 182, v14, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 1864);
  v8 = *v3;
  *(*v3 + 1872) = v2;

  if (v2)
  {
    v9 = v6[208];

    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v6[235] = a2;
    v6[236] = a1;
    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = v5;
  *(v6 + 96) = a1;
  *(v6 + 104) = a3;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 128) = *a5;
  *(v6 + 136) = *(a5 + 8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v6 + 152) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v8, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v95 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v94 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v94);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v94);
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator processIncoming errorMessage called { identifier: %s, group: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = *(v0 + 48);
  if (v13 <= 6)
  {
    if (*(v0 + 48) <= 3u)
    {
      if (v13 < 3)
      {
        goto LABEL_30;
      }

      goto LABEL_14;
    }

    if (v13 - 4 < 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (*(v0 + 48) > 0xAu)
    {
      if (*(v0 + 48) <= 0xDu)
      {
        if (v13 - 12 >= 2)
        {
          v15 = *(v0 + 136);
          v14 = *(v0 + 144);

          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v16, v17))
          {
            v19 = *(v0 + 128);
            v18 = *(v0 + 136);
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v94 = v21;
            *v20 = 136315138;
            *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v94);
            _os_log_impl(&dword_264F1F000, v16, v17, "SwiftMLSClientCoordinator processIncoming errorMessage detected error code that requires self heal { identifier: %s }", v20, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v21);
            MEMORY[0x266755550](v21, -1, -1);
            MEMORY[0x266755550](v20, -1, -1);
          }

          v22 = *(v0 + 32);
          v23 = *(v0 + 40);
          v24 = *(**(*(v0 + 120) + 96) + 336);
          v92 = (v24 + *v24);
          v25 = v24[1];
          v26 = swift_task_alloc();
          *(v0 + 176) = v26;
          *v26 = v0;
          v27 = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
LABEL_33:
          v26[1] = v27;
          v90 = *(v0 + 104);
          v89 = *(v0 + 112);

          return v92(v90, v89, v22, v23);
        }

        goto LABEL_20;
      }

      if (v13 == 14)
      {
        v70 = *(v0 + 136);
        v69 = *(v0 + 144);

        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v71, v72))
        {
          v74 = *(v0 + 128);
          v73 = *(v0 + 136);
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v94 = v76;
          *v75 = 136315138;
          *(v75 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, &v94);
          _os_log_impl(&dword_264F1F000, v71, v72, "SwiftMLSClientCoordinator processIncoming errorMessage detected error code that requires resurrection { identifier: %s }", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          MEMORY[0x266755550](v76, -1, -1);
          MEMORY[0x266755550](v75, -1, -1);
        }

        v22 = *(v0 + 32);
        v23 = *(v0 + 40);
        v77 = *(**(*(v0 + 120) + 96) + 336);
        v92 = (v77 + *v77);
        v78 = v77[1];
        v26 = swift_task_alloc();
        *(v0 + 184) = v26;
        *v26 = v0;
        v27 = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
        goto LABEL_33;
      }

LABEL_30:
      v80 = *(v0 + 136);
      v79 = *(v0 + 144);

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v84 = *(v0 + 128);
        v83 = *(v0 + 136);
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v94 = v86;
        *v85 = 136315138;
        *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, &v94);
        _os_log_impl(&dword_264F1F000, v81, v82, "SwiftMLSClientCoordinator processIncoming errorMessage detected error code that requires self heal { identifier: %s }", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        MEMORY[0x266755550](v86, -1, -1);
        MEMORY[0x266755550](v85, -1, -1);
      }

      v22 = *(v0 + 32);
      v23 = *(v0 + 40);
      v87 = *(**(*(v0 + 120) + 96) + 336);
      v92 = (v87 + *v87);
      v88 = v87[1];
      v26 = swift_task_alloc();
      *(v0 + 160) = v26;
      *v26 = v0;
      v27 = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
      goto LABEL_33;
    }

    if (v13 - 7 < 2)
    {
LABEL_14:
      v29 = *(v0 + 136);
      v28 = *(v0 + 144);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v33 = *(v0 + 128);
        v32 = *(v0 + 136);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v94 = v35;
        *v34 = 136315138;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v94);
        _os_log_impl(&dword_264F1F000, v30, v31, "SwiftMLSClientCoordinator processIncoming errorMessage detected error code that requires retry { identifier: %s }", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x266755550](v35, -1, -1);
        MEMORY[0x266755550](v34, -1, -1);
      }

      v36 = *(v0 + 32);
      v37 = *(v0 + 40);
      v38 = *(**(*(v0 + 120) + 96) + 344);
      v93 = (v38 + *v38);
      v39 = v38[1];
      v40 = swift_task_alloc();
      *(v0 + 168) = v40;
      *v40 = v0;
      v40[1] = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
      v41 = *(v0 + 112);
      v42 = *(v0 + 104);
      v43 = v36;
      v44 = v37;
      v45 = 0;
      v46 = 0;
      v47 = v93;
      goto LABEL_23;
    }

    if (v13 != 9)
    {
      goto LABEL_30;
    }
  }

LABEL_20:
  v49 = *(v0 + 136);
  v48 = *(v0 + 144);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v53 = *(v0 + 128);
    v52 = *(v0 + 136);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v94 = v55;
    *v54 = 136315138;
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v94);
    _os_log_impl(&dword_264F1F000, v50, v51, "SwiftMLSClientCoordinator processIncoming errorMessage detected error code that is fatal { identifier: %s }", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266755550](v55, -1, -1);
    MEMORY[0x266755550](v54, -1, -1);
  }

  v57 = *(v0 + 136);
  v56 = *(v0 + 144);
  v58 = *(v0 + 120);
  v59 = *(v0 + 128);
  v60 = *(v58 + 96);
  v61 = *(v0 + 32);
  v62 = *(v0 + 40);
  v63 = swift_allocObject();
  *(v0 + 192) = v63;
  *(v63 + 16) = v58;
  *(v63 + 24) = v59;
  *(v63 + 32) = v57;
  *(v63 + 40) = v56;
  v64 = *(v0 + 32);
  *(v63 + 48) = *(v0 + 16);
  *(v63 + 64) = v64;
  *(v63 + 80) = *(v0 + 48);
  v65 = *(*v60 + 344);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMR);
  v91 = (v65 + *v65);
  v66 = v65[1];
  v67 = swift_task_alloc();
  *(v0 + 200) = v67;
  *v67 = v0;
  v67[1] = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v41 = *(v0 + 112);
  v45 = &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v42 = *(v0 + 104);
  v43 = v61;
  v44 = v62;
  v46 = v63;
  v47 = v91;
LABEL_23:

  return v47(v42, v41, v43, v44, v45, v46);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 152);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v7, 0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 152);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v7, 0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 152);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v7, 0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 152);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v7, 0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 152);

    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[18];
  v2 = v0[12];
  *v2 = xmmword_2651B5F50;
  *(v2 + 16) = v1;

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = a8;
  *(v8 + 144) = v14;
  *(v8 + 120) = a6;
  *(v8 + 128) = a7;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  *(v8 + 88) = a1;
  *(v8 + 96) = a3;
  v9 = *(a2 + 48);
  *(v8 + 48) = *(a2 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a2 + 64);
  v10 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v8 + 152) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v11, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v14 = *(v0 + 96);
  v4 = *(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  v6 = *(v0 + 128);
  *(v5 + 16) = v3;
  *(v5 + 24) = v14;
  *(v5 + 40) = v2;
  *(v5 + 48) = v6;
  *(v5 + 64) = v1;
  *(v5 + 72) = v0 + 16;
  v7 = *(*v4 + 152);
  v15 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 88);

  return v15(v12, v10, v11, &async function pointer to partial apply for closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v5, &type metadata for MLS.EventQueue.Result);
}

{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[19];

    return MEMORY[0x2822009F8](MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:), v4, 0);
  }

  else
  {
    v5 = v3[20];

    v6 = v3[1];

    return v6();
  }
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[341] = v18;
  v8[340] = a8;
  v8[339] = a7;
  v8[338] = a6;
  v8[337] = a5;
  v8[336] = a4;
  v8[335] = a3;
  v8[334] = a2;
  v8[333] = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v8[342] = v9;
  v10 = *(v9 - 8);
  v8[343] = v10;
  v11 = *(v10 + 64) + 15;
  v8[344] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[345] = v12;
  v13 = *(v12 - 8);
  v8[346] = v13;
  v14 = *(v13 + 64) + 15;
  v8[347] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  v8[348] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v15, 0);
}

void closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v1 = *(v0[334] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v8 = *(*v1 + 192) + **(*v1 + 192);
  v2 = *(*(*v1 + 192) + 4);
  v3 = swift_task_alloc();
  v0[349] = v3;
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v4 = v0[338];
  v5 = v0[337];
  v6 = v0[336];
  v7 = v0[335];

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[359] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[326];
    v2 = v0[327];
    __swift_project_boxed_opaque_existential_1(v0 + 323, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[360] = v5;
    *v5 = v0;
    v5[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
    v6 = v0[344];

    v7(v6, v1, v2);
  }
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 2792);
  v7 = *v1;

  v4 = *(v2 + 2784);
  if (v0)
  {
    v5 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    v5 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 2776);
  v2 = *(v0 + 2768);
  v3 = *(v0 + 2760);
  v4 = *(v0 + 2728);
  v5 = *(v0 + 2720);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 8))
  {
    v11 = *(v0 + 2728);
    v13 = *(v11 + 56);
    v12 = *(v11 + 64);
    outlined copy of Data?(v13, v12);
  }

  else
  {
    v13 = 0;
    v12 = 0xF000000000000000;
  }

  v14 = *(v0 + 2712);
  v15 = *(v0 + 2672);
  *(v0 + 1488) = v7;
  *(v0 + 1496) = v6;
  *(v0 + 1504) = v8;
  *(v0 + 1512) = v10;
  *(v0 + 1520) = 0u;
  *(v0 + 1536) = 0u;
  *(v0 + 1552) = 0u;
  *(v0 + 1568) = 0u;
  *(v0 + 1584) = 0u;
  *(v0 + 1600) = 0u;
  *(v0 + 1616) = 0u;
  *(v0 + 1632) = 2;
  *(v0 + 1633) = *(v0 + 193);
  *(v0 + 1636) = *(v0 + 196);
  *(v0 + 1640) = v13;
  *(v0 + 1648) = v12;
  *(v0 + 1656) = v14;
  *(v0 + 2800) = v15[12];
  v16 = *(v0 + 1600);
  v17 = *(v0 + 1632);
  *(v0 + 144) = *(v0 + 1616);
  *(v0 + 160) = v17;
  *(v0 + 176) = *(v0 + 1648);
  v18 = *(v0 + 1536);
  v19 = *(v0 + 1568);
  *(v0 + 80) = *(v0 + 1552);
  *(v0 + 96) = v19;
  *(v0 + 112) = *(v0 + 1584);
  *(v0 + 128) = v16;
  v20 = *(v0 + 1504);
  *(v0 + 16) = *(v0 + 1488);
  *(v0 + 32) = v20;
  *(v0 + 48) = *(v0 + 1520);
  *(v0 + 64) = v18;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi15_(v0 + 16);
  v21 = *(v0 + 160);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v21;
  *(v0 + 360) = *(v0 + 176);
  v22 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v22;
  v23 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v23;
  v24 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v24;
  v25 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  *(v0 + 376) = *(v0 + 192);
  *(v0 + 248) = v25;
  outlined init with copy of ServerBag.MLS(v0 + 2544, v0 + 2584);
  *(v0 + 2808) = v15[10];
  *(v0 + 2816) = v15[11];
  v26 = v15 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 2824) = *(v15 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 2832) = *(v26 + 1);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 1488, v0 + 1664, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), 0, 0);
}

{
  v1 = v0[336];
  v2 = v0[326];
  v3 = v0[327];
  __swift_project_boxed_opaque_existential_1(v0 + 323, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[355] = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[326];
  v2 = v0[327];
  __swift_project_boxed_opaque_existential_1(v0 + 323, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[358] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);

  return v7(v1, v2);
}

{
  v0[377] = v0[356];
  v1 = v0[336];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 323);

  v2 = v0[348];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2880);
  v11 = *v1;
  *(*v1 + 2888) = v0;

  if (v0)
  {
    *(v2 + 744) = *(v2 + 376);
    v4 = *(v2 + 216);
    *(v2 + 568) = *(v2 + 200);
    *(v2 + 584) = v4;
    v5 = *(v2 + 248);
    *(v2 + 600) = *(v2 + 232);
    *(v2 + 616) = v5;
    v6 = *(v2 + 344);
    *(v2 + 696) = *(v2 + 328);
    *(v2 + 712) = v6;
    *(v2 + 728) = *(v2 + 360);
    v7 = *(v2 + 280);
    *(v2 + 632) = *(v2 + 264);
    *(v2 + 648) = v7;
    v8 = *(v2 + 312);
    *(v2 + 664) = *(v2 + 296);
    *(v2 + 680) = v8;
    outlined destroy of NSObject?(v2 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v9 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    v9 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = v0[344];
  v2 = v0[343];
  v3 = v0[342];
  v0[362] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[363] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[326];
  v6 = v0[327];
  __swift_project_boxed_opaque_existential_1(v0 + 323, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[364] = v9;
  *v9 = v0;
  v9[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);

  return v11(v5, v6);
}

{
  v1 = v0[326];
  v2 = v0[327];
  __swift_project_boxed_opaque_existential_1(v0 + 323, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[367] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);

  return v7(v1, v2);
}

{
  v0[377] = v0[361];
  v1 = v0[336];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 323);

  v2 = v0[348];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v2, 0);
}

{
  v1 = v0[366];
  v2 = v0[363];
  v3 = v0[362];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[366];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[365];
  }

  v0[377] = v0[368];
  v6 = v0[336];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 323);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[348];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v7, 0);
}

{
  v1 = *(v0 + 2992);
  v2 = (v0 + 2152);
  v3 = *(v0 + 2984);
  v27 = v3;
  v28 = v1;
  v4 = *(v0 + 2952);
  v5 = *(v0 + 2928);
  v6 = *(v0 + 2904);
  v7 = *(v0 + 2896);
  v25 = v7;
  v26 = v6;
  v8 = *(v0 + 2872);
  v24 = v8;
  v9 = *(v0 + 2856);
  v30 = *(v0 + 2800);
  v10 = *(v0 + 2688);
  v11 = *(v0 + 2680);
  if (v4 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 2952);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 2960);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 2928);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 2920);
  }

  if ((v9 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v9;
  }

  *(v0 + 1944) = v11;
  *(v0 + 1952) = v10;
  *(v0 + 1960) = v16;
  *(v0 + 1968) = v16;
  *(v0 + 1976) = v8;
  *(v0 + 1984) = v7;
  *(v0 + 1992) = v6;
  *(v0 + 2000) = v15;
  *(v0 + 2008) = v14;
  *(v0 + 2016) = v13;
  *(v0 + 2024) = v12;
  *(v0 + 2032) = v1;
  *(v0 + 2040) = v3;
  outlined init with copy of MLS.Group(v0 + 1944, v0 + 2048);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2584));
  *(v0 + 1840) = v11;
  *(v0 + 1848) = v10;
  *(v0 + 1856) = v16;
  *(v0 + 1864) = v16;
  *(v0 + 1872) = v24;
  *(v0 + 1880) = v25;
  *(v0 + 1888) = v26;
  *(v0 + 1896) = v15;
  *(v0 + 1904) = v14;
  *(v0 + 1912) = v13;
  *(v0 + 1920) = v12;
  *(v0 + 1928) = v28;
  *(v0 + 1936) = v27;
  outlined destroy of MLS.Group(v0 + 1840);
  v17 = *(v0 + 2024);
  *(v0 + 2216) = *(v0 + 2008);
  *(v0 + 2232) = v17;
  *(v0 + 2248) = *(v0 + 2040);
  v18 = *(v0 + 1960);
  *v2 = *(v0 + 1944);
  *(v0 + 2168) = v18;
  v19 = *(v0 + 1992);
  *(v0 + 2184) = *(v0 + 1976);
  *(v0 + 2200) = v19;
  *(v0 + 2464) = 1;
  *(v0 + 2472) = 0u;
  *(v0 + 2488) = 0u;
  *(v0 + 2504) = 0u;
  *(v0 + 2520) = 0u;
  *(v0 + 2536) = 2;
  v29 = (*v30 + 368);
  v31 = (*v29 + **v29);
  v20 = (*v29)[1];
  v21 = swift_task_alloc();
  *(v0 + 3000) = v21;
  *v21 = v0;
  v21[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v22 = *(v0 + 2800);

  return (v31)(v0 + 200, v2, v0 + 2464, 1, 0, 0);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 200);
  v5 = (*v1 + 2152);
  v6 = *(*v1 + 3000);
  v7 = *v1;
  *(*v1 + 3008) = v0;

  v8 = *(v2 + 2784);
  if (v0)
  {
    v9 = *v5;
    v10 = *(v3 + 2168);
    *(v3 + 2288) = *(v3 + 2184);
    *(v3 + 2272) = v10;
    *(v3 + 2256) = v9;
    v11 = *(v3 + 2200);
    v12 = *(v3 + 2216);
    v13 = *(v3 + 2232);
    *(v3 + 2352) = *(v3 + 2248);
    *(v3 + 2336) = v13;
    *(v3 + 2320) = v12;
    *(v3 + 2304) = v11;
    outlined destroy of MLS.Group(v3 + 2256);
    v14 = *(v3 + 232);
    v15 = *(v3 + 248);
    v16 = *(v3 + 216);
    *(v3 + 1120) = *v4;
    *(v3 + 1168) = v15;
    *(v3 + 1152) = v14;
    *(v3 + 1136) = v16;
    v17 = *(v3 + 296);
    v18 = *(v3 + 312);
    v19 = *(v3 + 280);
    *(v3 + 1184) = *(v3 + 264);
    *(v3 + 1232) = v18;
    *(v3 + 1216) = v17;
    *(v3 + 1200) = v19;
    v21 = *(v3 + 344);
    v20 = *(v3 + 360);
    v22 = *(v3 + 376);
    *(v3 + 1248) = *(v3 + 328);
    *(v3 + 1296) = v22;
    *(v3 + 1280) = v20;
    *(v3 + 1264) = v21;
    outlined destroy of NSObject?(v3 + 1120, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v23 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {

    v24 = *v5;
    v25 = *(v3 + 2184);
    *(v3 + 2376) = *(v3 + 2168);
    *(v3 + 2392) = v25;
    *(v3 + 2360) = v24;
    v26 = *(v3 + 2200);
    v27 = *(v3 + 2216);
    v28 = *(v3 + 2232);
    *(v3 + 2456) = *(v3 + 2248);
    *(v3 + 2424) = v27;
    *(v3 + 2440) = v28;
    *(v3 + 2408) = v26;
    outlined destroy of MLS.Group(v3 + 2360);
    v29 = *(v3 + 248);
    v31 = *v4;
    v30 = *(v3 + 216);
    *(v3 + 1336) = *(v3 + 232);
    *(v3 + 1352) = v29;
    *(v3 + 1304) = v31;
    *(v3 + 1320) = v30;
    v32 = *(v3 + 312);
    v34 = *(v3 + 264);
    v33 = *(v3 + 280);
    *(v3 + 1400) = *(v3 + 296);
    *(v3 + 1416) = v32;
    *(v3 + 1368) = v34;
    *(v3 + 1384) = v33;
    v36 = *(v3 + 344);
    v35 = *(v3 + 360);
    v37 = *(v3 + 328);
    *(v3 + 1480) = *(v3 + 376);
    *(v3 + 1448) = v36;
    *(v3 + 1464) = v35;
    *(v3 + 1432) = v37;
    outlined destroy of NSObject?(v3 + 1304, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v23 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v23, v8, 0);
}

{
  v1 = v0[369];
  v2 = v0[366];
  v3 = v0[363];
  v4 = v0[362];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[369];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[370];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[366];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[365];
  }

  v0[377] = v0[372];
  v9 = v0[336];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 323);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[348];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v10, 0);
}

{
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 318);
  v1 = v0[377];
  v2 = v0[347];
  v3 = v0[344];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[347];
  v2 = v0[344];
  v3 = v0[333];
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 318);
  *v3 = 1;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 96) = 3;

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 2624);
  v2 = *(v0 + 2632);
  v3 = *(v0 + 2640);
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  v5 = *(v0 + 2776);
  v6 = *(v0 + 2752);

  v7 = *(v0 + 8);

  return v7();
}

{
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 318);
  v1 = v0[376];
  v2 = v0[347];
  v3 = v0[344];

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2840);
  v13 = *v2;
  *(*v2 + 2848) = v1;

  if (v1)
  {
    *(v4 + 560) = *(v4 + 376);
    v6 = *(v4 + 216);
    *(v4 + 384) = *(v4 + 200);
    *(v4 + 400) = v6;
    v7 = *(v4 + 248);
    *(v4 + 416) = *(v4 + 232);
    *(v4 + 432) = v7;
    v8 = *(v4 + 344);
    *(v4 + 512) = *(v4 + 328);
    *(v4 + 528) = v8;
    *(v4 + 544) = *(v4 + 360);
    v9 = *(v4 + 280);
    *(v4 + 448) = *(v4 + 264);
    *(v4 + 464) = v9;
    v10 = *(v4 + 312);
    *(v4 + 480) = *(v4 + 296);
    *(v4 + 496) = v10;
    outlined destroy of NSObject?(v4 + 384, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v11 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    *(v4 + 2856) = a1;
    v11 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

{
  v2 = *(*v1 + 2864);
  v4 = *v1;
  *(*v1 + 2872) = a1;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), 0, 0);
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2912);
  v6 = *v2;
  *(v3 + 2920) = a1;
  *(v3 + 2928) = a2;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 2936);
  v7 = *v3;
  *(v7 + 2944) = v2;

  if (v2)
  {
    *(v7 + 928) = *(v7 + 376);
    v8 = *(v7 + 216);
    *(v7 + 752) = *(v7 + 200);
    *(v7 + 768) = v8;
    v9 = *(v7 + 248);
    *(v7 + 784) = *(v7 + 232);
    *(v7 + 800) = v9;
    v10 = *(v7 + 344);
    *(v7 + 880) = *(v7 + 328);
    *(v7 + 896) = v10;
    *(v7 + 912) = *(v7 + 360);
    v11 = *(v7 + 280);
    *(v7 + 816) = *(v7 + 264);
    *(v7 + 832) = v11;
    v12 = *(v7 + 312);
    *(v7 + 848) = *(v7 + 296);
    *(v7 + 864) = v12;
    outlined destroy of NSObject?(v7 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), 0, 0);
  }

  else
  {
    v13 = *(v7 + 2832);
    v14 = *(v7 + 2824);
    v26 = *(v7 + 2816);
    v15 = *(v7 + 2808);
    *(v7 + 2952) = a2;
    *(v7 + 2960) = a1;
    ObjectType = swift_getObjectType();
    *(v7 + 2648) = v14;
    *(v7 + 2656) = v13;
    v17 = *(v26 + 64);
    v25 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v7 + 2968) = v19;
    *v19 = v7;
    v19[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
    v20 = *(v7 + 2816);
    v21 = *(v7 + 2808);
    v22 = *(v7 + 2688);
    v23 = *(v7 + 2680);

    return v25(v23, v22, v7 + 2648, ObjectType, v20);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 2968);
  v15 = *v3;
  *(*v3 + 2976) = v2;

  if (v2)
  {
    *(v6 + 1112) = *(v6 + 376);
    v8 = *(v6 + 216);
    *(v6 + 936) = *(v6 + 200);
    *(v6 + 952) = v8;
    v9 = *(v6 + 248);
    *(v6 + 968) = *(v6 + 232);
    *(v6 + 984) = v9;
    v10 = *(v6 + 344);
    *(v6 + 1064) = *(v6 + 328);
    *(v6 + 1080) = v10;
    *(v6 + 1096) = *(v6 + 360);
    v11 = *(v6 + 280);
    *(v6 + 1000) = *(v6 + 264);
    *(v6 + 1016) = v11;
    v12 = *(v6 + 312);
    *(v6 + 1032) = *(v6 + 296);
    *(v6 + 1048) = v12;
    outlined destroy of NSObject?(v6 + 936, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v13 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    *(v6 + 2984) = a2;
    *(v6 + 2992) = a1;
    v13 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.addMembers(identifier:otherMembers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.addMembers(identifier:otherMembers:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.addMembers(identifier:otherMembers:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);
  ObjectType = swift_getObjectType();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d129Messaging3MLSO25SwiftMLSClientCoordinatorC17addPendingMembers33_4A5F1255AF5325EF77C6CF072348849210identifier05otherI0ySS_ShyAC9gh11OGtYaKFAC09I10S0VAKXEfU_Tf1cn_nTm(v1, 1294, 0);
  v0[9] = v6;
  v7 = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[2] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[3] = v7;
  v8 = *(v3 + 80);

  v15 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.addMembers(identifier:otherMembers:);
  v11 = v0[5];
  v12 = MEMORY[0x277D84F90];
  v13 = v0[4];

  return (v15)(v13, v11, v6, v12, v0 + 2, ObjectType, v3);
}

{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v5 = v3[8];
    v4 = v3[9];
    v6 = v3[3];

    return MEMORY[0x2822009F8](closure #1 in MLS.Client.update(groupDetails:forGroup:), v5, 0);
  }

  else
  {
    v7 = v3[9];
    v8 = v3[3];

    v9 = v3[1];

    return v9();
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);
  ObjectType = swift_getObjectType();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d129Messaging3MLSO25SwiftMLSClientCoordinatorC17addPendingMembers33_4A5F1255AF5325EF77C6CF072348849210identifier05otherI0ySS_ShyAC9gh11OGtYaKFAC09I10S0VAKXEfU_Tf1cn_nTm(v1, 1298, 1);
  v0[9] = v6;
  v7 = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[2] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[3] = v7;
  v8 = *(v3 + 80);

  v15 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:);
  v11 = v0[5];
  v12 = MEMORY[0x277D84F90];
  v13 = v0[4];

  return (v15)(v13, v11, v6, v12, v0 + 2, ObjectType, v3);
}

{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v5 = v3[8];
    v4 = v3[9];
    v6 = v3[3];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:), v5, 0);
  }

  else
  {
    v7 = v3[9];
    v8 = v3[3];

    v9 = v3[1];

    return v9();
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.removeMembers(identifier:otherMembers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.removeMembers(identifier:otherMembers:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.removeMembers(identifier:otherMembers:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);
  ObjectType = swift_getObjectType();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d129Messaging3MLSO25SwiftMLSClientCoordinatorC17addPendingMembers33_4A5F1255AF5325EF77C6CF072348849210identifier05otherI0ySS_ShyAC9gh11OGtYaKFAC09I10S0VAKXEfU_Tf1cn_nTm(v1, 1302, 0);
  v0[9] = v6;
  v7 = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[2] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[3] = v7;
  v8 = *(v3 + 80);

  v15 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:);
  v11 = v0[5];
  v12 = MEMORY[0x277D84F90];
  v13 = v0[4];

  return (v15)(v13, v11, v12, v6, v0 + 2, ObjectType, v3);
}

uint64_t MLS.SwiftMLSClientCoordinator.replaceMembers(identifier:otherMembers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.replaceMembers(identifier:otherMembers:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.replaceMembers(identifier:otherMembers:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);
  ObjectType = swift_getObjectType();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d129Messaging3MLSO25SwiftMLSClientCoordinatorC17addPendingMembers33_4A5F1255AF5325EF77C6CF072348849210identifier05otherI0ySS_ShyAC9gh11OGtYaKFAC09I10S0VAKXEfU_Tf1cn_nTm(v1, 1310, 0);
  v0[9] = v6;
  v7 = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[2] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[3] = v7;
  v8 = *(v3 + 88);

  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:);
  v12 = v0[4];
  v11 = v0[5];

  return (v14)(v12, v11, v6, v0 + 2, ObjectType, v3);
}

uint64_t MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:)()
{
  outlined init with copy of MLS.SwiftMLSClientPicker(*(v0 + 128) + 16, v0 + 16);
  if (*(v0 + 56))
  {
    lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError();
    swift_allocError();
    *v1 = 4;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;

    swift_willThrow();
    outlined destroy of MLS.SwiftMLSClientPicker(v0 + 16);
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 64);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v4);
    v6 = *(v5 + 16);
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);

    return v12(v11, v9, v10, v4, v5);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:);
  }

  else
  {
    v6 = MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:)()
{
  outlined init with copy of MLS.SwiftMLSClientPicker(*(v0 + 128) + 16, v0 + 16);
  if (*(v0 + 56))
  {
    lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError();
    swift_allocError();
    *v1 = 4;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;

    swift_willThrow();
    outlined destroy of MLS.SwiftMLSClientPicker(v0 + 16);
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 64);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v4);
    v6 = *(v5 + 24);
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);

    return v12(v11, v9, v10, v4, v5);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:);
  }

  else
  {
    v6 = MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

uint64_t MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  v6 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a2 + 64);
  v7 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v5 + 120) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v8, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v0[16] = v7;
  v7[2] = v1;
  v7[3] = v0 + 2;
  v7[4] = v3;
  v7[5] = v2;
  v8 = *(*v4 + 152);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v11 = v0[11];

  return (v13)(v11, v5, v6, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v7, &type metadata for MLS.EventQueue.Result);
}

{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {
    v4 = v3[15];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v4, 0);
  }

  else
  {
    v5 = v3[16];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[16];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v5[928] = a5;
  v5[927] = a4;
  v5[926] = a3;
  v5[925] = a2;
  v5[924] = a1;
  v5[929] = *a2;
  v6 = *(*(type metadata accessor for MLS.KeyPackageProvider() - 8) + 64) + 15;
  v5[930] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v5[931] = swift_task_alloc();
  v5[932] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v5[933] = v8;
  v9 = *(v8 - 8);
  v5[934] = v9;
  v10 = *(v9 + 64) + 15;
  v5[935] = swift_task_alloc();
  v5[936] = swift_task_alloc();
  v5[937] = swift_task_alloc();
  v11 = type metadata accessor for MLS.Identity.Credential();
  v5[938] = v11;
  v12 = *(v11 - 8);
  v5[939] = v12;
  v13 = *(v12 + 64) + 15;
  v5[940] = swift_task_alloc();
  v14 = type metadata accessor for MLS.Identity.SigningIdentity();
  v5[941] = v14;
  v15 = *(v14 - 8);
  v5[942] = v15;
  v16 = *(v15 + 64) + 15;
  v5[943] = swift_task_alloc();
  v17 = type metadata accessor for MLS.Client.KeyPackage();
  v5[944] = v17;
  v18 = *(v17 - 8);
  v5[945] = v18;
  v19 = *(v18 + 64) + 15;
  v5[946] = swift_task_alloc();
  v20 = type metadata accessor for MLS.Group.GroupInfo();
  v5[947] = v20;
  v21 = *(v20 - 8);
  v5[948] = v21;
  v22 = *(v21 + 64) + 15;
  v5[949] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static MLSActor.shared;
  v5[950] = static MLSActor.shared;
  v24 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v23, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = v0[926];
  v2 = v0[925];
  v0[951] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState(v1, (v0 + 636));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of MLS.OutgoingEventState(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[926];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 40), *(v5 + 48), v25);
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator retry called { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = v0[928];
  v9 = v0[927];
  v10 = v0[925];
  v11 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v12 = v0[926];
  v0[952] = v11;
  v0[953] = *(v12 + 40);
  v0[954] = *(v12 + 48);
  v13 = swift_allocObject();
  v0[955] = v13;
  *(v13 + 16) = *v12;
  v14 = *(v12 + 16);
  v15 = *(v12 + 48);
  v16 = *(v12 + 64);
  *(v13 + 48) = *(v12 + 32);
  *(v13 + 64) = v15;
  *(v13 + 32) = v14;
  *(v13 + 80) = v16;
  *(v13 + 88) = v10;
  *(v13 + 96) = v9;
  *(v13 + 104) = v8;
  v17 = *(*v11 + 192);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  outlined init with copy of MLS.OutgoingEventState(v12, (v0 + 699));

  v24 = v17 + *v17;
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[956] = v19;
  v20 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v19 = v0;
  v19[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v21 = v0[928];
  v22 = v0[927];
  v23 = *MEMORY[0x277D85DE8];
  v30 = v20;
  v31 = v0 + 860;
  v28 = v13;
  v29 = &type metadata for MLS.GroupOperationError;
  v27 = &async function pointer to partial apply for closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);

  __asm { BRAA            X9, X16 }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 7648);
  v12 = *v1;
  *(*v1 + 7656) = v0;

  if (v0)
  {
    v4 = v2[955];
    v5 = v2[954];
    v6 = v2[950];
    swift_bridgeObjectRelease_n();

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v8 = v2[955];
    v6 = v2[950];

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v321 = v0;
  v320 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 7408);
  v2 = *(v1 + 16);
  *(v0 + 7664) = v2;
  v3 = *(v1 + 24);
  *(v0 + 7672) = v3;
  v4 = *(v1 + 32);
  v5 = *(v0 + 7632);
  v6 = *(v0 + 7608);
  v7 = *(v0 + 7400);
  if (v4 <= 4)
  {
    if (*(v1 + 32) > 1u)
    {
      if (v4 == 2)
      {

        swift_bridgeObjectRelease_n();
        outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5376);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();
        outlined destroy of MLS.OutgoingEventState(v1);
        if (os_log_type_enabled(v111, v112))
        {
          v113 = *(v0 + 7632);
          v114 = *(v0 + 7624);
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *&v318[0] = v116;
          *v115 = 136315138;
          *(v115 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v113, v318);
          _os_log_impl(&dword_264F1F000, v111, v112, "SwiftMLSClientCoordinator retry retrying kick { identifier: %s }", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v116);
          MEMORY[0x266755550](v116, -1, -1);
          MEMORY[0x266755550](v115, -1, -1);
        }

        v302 = *(v0 + 7624);
        v117 = *(v0 + 7424);
        v292 = *(v0 + 7416);
        v118 = *(v0 + 7408);
        v119 = *(v0 + 7400);
        v120 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        *(v0 + 7960) = v120;
        *(v0 + 7088) = *(v118 + 56);
        v279 = *(v0 + 7096);
        v284 = *(v0 + 7088);
        outlined init with copy of ServerBag.MLS(v119 + 104, v0 + 6000);
        v121 = *(v119 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
        v275 = *(v119 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
        v122 = type metadata accessor for MLS.KickMembersOperation();
        v123 = *(v122 + 48);
        v124 = *(v122 + 52);
        v125 = swift_allocObject();
        v311 = *(v119 + 80);
        *(v0 + 7968) = v125;
        outlined init with copy of MLS.OutgoingEventState?(v0 + 7088, v0 + 6976, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

        swift_unknownObjectRetain();

        Logger.init(subsystem:category:)();
        *(v125 + 16) = v2;
        *(v125 + 24) = v292;
        *(v125 + 32) = v117;
        *(v125 + 40) = v302;
        *(v125 + 56) = v284;
        *(v125 + 64) = v279;
        *(v125 + 72) = v120;
        outlined init with take of MLS.KeyUpdatePolicy((v0 + 6000), v125 + 80);
        *(v125 + 120) = v311;
        *(v125 + 136) = v275;
        *(v125 + 144) = v121;
        v126 = *(v119 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
        *(v0 + 7376) = v125;
        *(v0 + 7384) = v120;
        outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6160);
        *(v0 + 6904) = 0;
        *(v0 + 6920) = 0;
        *(v0 + 6912) = 0;
        v127 = *(*v126 + 224);

        v300 = (v127 + *v127);
        v128 = v127[1];
        v129 = swift_task_alloc();
        *(v0 + 7976) = v129;
        v130 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.KickMembersOperation and conformance MLS.KickMembersOperation, type metadata accessor for MLS.KickMembersOperation);
        *v129 = v0;
        v129[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
        v131 = *MEMORY[0x277D85DE8];
        v33 = v130;
        v34 = v0 + 1968;
        v35 = v0 + 7376;
        v36 = v0 + 7384;
        v37 = v0 + 6160;
        v38 = v0 + 6904;
        v39 = v0 + 6856;
        v40 = v122;
        goto LABEL_63;
      }

      if (v4 == 3)
      {
        v8 = *(v0 + 7632);
        swift_bridgeObjectRelease_n();
        outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5664);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        outlined destroy of MLS.OutgoingEventState(v1);
        if (os_log_type_enabled(v9, v10))
        {
          v11 = *(v0 + 7632);
          v12 = *(v0 + 7624);
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *&v318[0] = v14;
          *v13 = 136315138;
          *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v318);
          _os_log_impl(&dword_264F1F000, v9, v10, "SwiftMLSClientCoordinator retry retrying leave { identifier: %s }", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v14);
          MEMORY[0x266755550](v14, -1, -1);
          MEMORY[0x266755550](v13, -1, -1);
        }

        v15 = *(v0 + 7632);
        v16 = *(v0 + 7624);
        v17 = *(v0 + 7616);
        v18 = *(v0 + 7432);
        v19 = *(v0 + 7424);
        v308 = *(v0 + 7416);
        v20 = *(v0 + 7408);
        v21 = *(v0 + 7400);
        v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        *(v0 + 7984) = v22;
        v298 = type metadata accessor for MLS.LeaveGroupOperation();
        *(v0 + 7072) = *(v20 + 56);
        *&v318[0] = v16;
        *(&v318[0] + 1) = v15;
        v318[1] = *(v0 + 7072);
        v319 = v22;
        v23 = *(v21 + 96);
        v24 = *(v21 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
        v317[0] = *(v21 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
        v317[1] = v24;

        outlined init with copy of MLS.OutgoingEventState?(v0 + 7072, v0 + 7024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

        v25 = *(v18 + 96);
        *(v0 + 6440) = *(v18 + 80);
        *(v0 + 6456) = v25;
        v26 = type metadata accessor for MLS.EventSender();
        v27 = specialized MLS.LeaveGroupOperation.__allocating_init(group:context:groupLoader:eventSender:clientIdentifier:)(v308, v19, v318, v17, v23, v317, v298, v26, &protocol witness table for MLS.EventSender<A, B>);
        *(v0 + 7992) = v27;
        v28 = *(v21 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
        *(v0 + 7360) = v27;
        *(v0 + 7368) = v22;
        outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 5880);
        *(v0 + 6712) = 0;
        *(v0 + 6728) = 0;
        *(v0 + 6720) = 0;
        v290 = (*(*v28 + 224) + **(*v28 + 224));
        v29 = *(*(*v28 + 224) + 4);
        v30 = swift_task_alloc();
        *(v0 + 8000) = v30;
        v31 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.LeaveGroupOperation and conformance MLS.LeaveGroupOperation, type metadata accessor for MLS.LeaveGroupOperation);
        *v30 = v0;
        v30[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
        v32 = *MEMORY[0x277D85DE8];
        v33 = v31;
        v34 = v0 + 1608;
        v35 = v0 + 7360;
        v36 = v0 + 7368;
        v37 = v0 + 5880;
        v38 = v0 + 6712;
        v39 = v0 + 6736;
        v40 = v298;
        v41 = v290;
        goto LABEL_64;
      }

      v142 = *(v0 + 7632);
      swift_bridgeObjectRelease_n();
      outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5232);
      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v1);
      if (os_log_type_enabled(v143, v144))
      {
        v145 = *(v0 + 7632);
        v146 = *(v0 + 7624);
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *&v318[0] = v148;
        *v147 = 136315138;
        *(v147 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v145, v318);
        _os_log_impl(&dword_264F1F000, v143, v144, "SwiftMLSClientCoordinator retry retrying keyUpdate { identifier: %s }", v147, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v148);
        MEMORY[0x266755550](v148, -1, -1);
        MEMORY[0x266755550](v147, -1, -1);
      }

      v303 = *(v0 + 7624);
      v149 = *(v0 + 7424);
      v293 = *(v0 + 7416);
      v150 = *(v0 + 7408);
      v151 = *(v0 + 7400);
      v152 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v0 + 8008) = v152;
      *(v0 + 7056) = *(v150 + 56);
      v280 = *(v0 + 7064);
      v285 = *(v0 + 7056);
      outlined init with copy of ServerBag.MLS(v151 + 144, v0 + 6200);
      v153 = *(v151 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);
      v154 = *(v151 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
      v276 = *(v151 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
      v156 = *(v155 + 48);
      v157 = *(v155 + 52);
      v158 = swift_allocObject();
      v159 = *v158;
      v312 = *(v151 + 80);
      *(v0 + 8016) = v158;
      v160 = *(v159 + 184);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 7056, v0 + 6928, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      swift_unknownObjectRetain();

      Logger.init(subsystem:category:)();
      *(v158 + 16) = v293;
      *(v158 + 24) = v149;
      *(v158 + 32) = 0;
      *(v158 + 40) = v303;
      *(v158 + 56) = v285;
      *(v158 + 64) = v280;
      *(v158 + 72) = v152;
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 6200), v158 + 80);
      *(v158 + 120) = v153;
      *(v158 + 128) = v312;
      *(v158 + 144) = v276;
      *(v158 + 152) = v154;
      v161 = *(v151 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
      *(v0 + 7328) = v158;
      *(v0 + 7352) = v152;
      outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6400);
      *(v0 + 6520) = 0;
      *(v0 + 6536) = 0;
      *(v0 + 6528) = 0;
      v162 = *(*v161 + 224);

      v300 = (v162 + *v162);
      v163 = v162[1];
      v164 = swift_task_alloc();
      *(v0 + 8024) = v164;
      v165 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.KeyUpdateOperation<MLS.GroupOperationError, MLS.GroupOperationContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.KeyUpdateOperation<A, B, C>, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
      *v164 = v0;
      v164[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
      v166 = *MEMORY[0x277D85DE8];
      v33 = v165;
      v34 = v0 + 2088;
      v35 = v0 + 7328;
      v36 = v0 + 7352;
      v37 = v0 + 6400;
      v38 = v0 + 6520;
      v39 = v0 + 6496;
      goto LABEL_57;
    }

    if (!*(v1 + 32))
    {
      v62 = *(v0 + 7632);
      swift_bridgeObjectRelease_n();
      outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5808);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v1);
      if (os_log_type_enabled(v63, v64))
      {
        v65 = *(v0 + 7632);
        v66 = *(v0 + 7624);
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v318[0] = v68;
        *v67 = 136315138;
        *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, v318);
        _os_log_impl(&dword_264F1F000, v63, v64, "SwiftMLSClientCoordinator retry retrying create { identifier: %s }", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x266755550](v68, -1, -1);
        MEMORY[0x266755550](v67, -1, -1);
      }

      v69 = *(v0 + 7608);
      v70 = *(v0 + 7408);
      v71 = *(v0 + 7400);
      *(v0 + 7120) = *v70;
      *(v0 + 7136) = *(v70 + 56);
      outlined init with copy of String(v0 + 7120, v0 + 7200);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 7136, v0 + 7216, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v0 + 7680) = v72;
      v73 = *(v0 + 7136);
      *(v0 + 7688) = v73;
      v74 = *(v0 + 7144);
      *(v0 + 7696) = v74;
      v310 = *(v0 + 7120);
      v75 = *(v0 + 7128);
      *(v0 + 7704) = v75;
      outlined init with copy of MLS.OutgoingEventState(v70, v0 + 5304);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v70);
      if (os_log_type_enabled(v76, v77))
      {
        v78 = *(v0 + 7632);
        v79 = *(v0 + 7624);
        v301 = v72;
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *&v318[0] = v81;
        *v80 = 136315138;
        *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v78, v318);
        _os_log_impl(&dword_264F1F000, v76, v77, "SwiftMLSClientCoordinator sending repaired { identifier: %s }", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        MEMORY[0x266755550](v81, -1, -1);
        v82 = v80;
        v72 = v301;
        MEMORY[0x266755550](v82, -1, -1);
      }

      v83 = *(v0 + 7632);
      v84 = *(v0 + 7624);
      v85 = *(v0 + 7400);
      *(v0 + 7712) = v85[12];
      *(v0 + 16) = v84;
      *(v0 + 24) = v83;
      *(v0 + 32) = v310;
      *(v0 + 40) = v75;
      *(v0 + 48) = v73;
      *(v0 + 56) = v74;
      *(v0 + 64) = v72;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi14_(v0 + 16);
      v86 = *(v0 + 160);
      v87 = *(v0 + 176);
      v88 = *(v0 + 128);
      *(v0 + 1064) = *(v0 + 144);
      *(v0 + 1080) = v86;
      *(v0 + 1096) = v87;
      v89 = *(v0 + 96);
      v90 = *(v0 + 112);
      v91 = *(v0 + 64);
      *(v0 + 1000) = *(v0 + 80);
      *(v0 + 1016) = v89;
      *(v0 + 1032) = v90;
      *(v0 + 1048) = v88;
      v92 = *(v0 + 32);
      v93 = *(v0 + 48);
      *(v0 + 936) = *(v0 + 16);
      *(v0 + 952) = v92;
      *(v0 + 1112) = *(v0 + 192);
      *(v0 + 968) = v93;
      *(v0 + 984) = v91;
      outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6120);
      *(v0 + 7720) = v85[10];
      *(v0 + 7728) = v85[11];
      v94 = v85 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
      *(v0 + 7736) = *(v85 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
      *(v0 + 7744) = *(v94 + 1);

      outlined copy of Data?(v73, v74);

      v95 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), 0, 0);
    }

    swift_bridgeObjectRelease_n();
    outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5736);
    v184 = Logger.logObject.getter();
    v185 = static os_log_type_t.default.getter();
    outlined destroy of MLS.OutgoingEventState(v1);
    if (os_log_type_enabled(v184, v185))
    {
      v186 = *(v0 + 7632);
      v187 = *(v0 + 7624);
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      *&v318[0] = v189;
      *v188 = 136315138;
      *(v188 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v186, v318);
      _os_log_impl(&dword_264F1F000, v184, v185, "SwiftMLSClientCoordinator retry retrying add { identifier: %s }", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      MEMORY[0x266755550](v189, -1, -1);
      MEMORY[0x266755550](v188, -1, -1);
    }

    v190 = MEMORY[0x277D84F90];
    v282 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v191 = v2[2];
    if (v191)
    {
      v192 = *(v0 + 7560);
      *&v318[0] = v190;

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v191, 0);
      v193 = *&v318[0];
      v194 = *(v0 + 7656);
      v195 = *(v0 + 7600);
      v196 = v2[4];
      v197 = v2[5];
      outlined copy of Data._Representation(v196, v197);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v198 = *(v0 + 7600);
        swift_task_reportUnexpectedExecutor();
      }

      v199 = *(v0 + 7568);
      outlined copy of Data._Representation(v196, v197);
      MLS.Client.KeyPackage.init(fromRaw:)();
      if (v194)
      {
        v200 = *(v0 + 7632);

        outlined consume of MLS.OutgoingEventState.EventSpecificState(v2, v3, 1u);

        outlined consume of Data._Representation(v196, v197);

LABEL_50:
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));
        v201 = *(v0 + 7592);
        v202 = *(v0 + 7568);
        v203 = *(v0 + 7544);
        v204 = *(v0 + 7520);
        v205 = *(v0 + 7496);
        v206 = *(v0 + 7488);
        v207 = *(v0 + 7480);
        v208 = *(v0 + 7456);
        v209 = *(v0 + 7448);
        v314 = *(v0 + 7440);

        v210 = *(v0 + 8);
        v211 = *MEMORY[0x277D85DE8];

        return v210();
      }

      outlined consume of Data._Representation(v196, v197);
      v241 = *(v193 + 16);
      v240 = *(v193 + 24);
      if (v241 >= v240 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v240 > 1, v241 + 1, 1);
        v193 = *&v318[0];
      }

      v242 = *(v0 + 7568);
      v243 = *(v0 + 7552);
      *(v193 + 16) = v241 + 1;
      v306 = (*(v192 + 80) + 32) & ~*(v192 + 80);
      v288 = *(v192 + 32);
      v296 = *(v192 + 72);
      v288(v193 + v306 + v296 * v241, v242, v243);
      v244 = v191 - 1;
      if (v244)
      {
        v259 = v2 + 7;
        do
        {
          v260 = *(v0 + 7600);
          v261 = *(v259 - 1);
          v262 = *v259;
          outlined copy of Data._Representation(v261, *v259);
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            v263 = *(v0 + 7600);
            swift_task_reportUnexpectedExecutor();
          }

          v264 = *(v0 + 7568);
          outlined copy of Data._Representation(v261, v262);
          MLS.Client.KeyPackage.init(fromRaw:)();
          outlined consume of Data._Representation(v261, v262);
          *&v318[0] = v193;
          v266 = *(v193 + 16);
          v265 = *(v193 + 24);
          if (v266 >= v265 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v265 > 1, v266 + 1, 1);
            v193 = *&v318[0];
          }

          v259 += 2;
          v267 = *(v0 + 7568);
          v268 = *(v0 + 7552);
          *(v193 + 16) = v266 + 1;
          v288(v193 + v306 + v296 * v266, v267, v268);
          --v244;
        }

        while (v244);
      }
    }

    else
    {

      v193 = MEMORY[0x277D84F90];
    }

    v307 = *(v0 + 7624);
    v289 = *(v0 + 7416);
    v297 = *(v0 + 7424);
    v245 = *(v0 + 7408);
    v246 = *(v0 + 7400);
    v247 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 7936) = v247;
    *(v0 + 7104) = *(v245 + 56);
    v274 = *(v0 + 7112);
    v278 = *(v0 + 7104);
    v248 = *(v246 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    v272 = *(v246 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v249 = type metadata accessor for MLS.AddMembersOperation();
    v250 = *(v249 + 48);
    v251 = *(v249 + 52);
    v270 = v249;
    v252 = swift_allocObject();

    v316 = *(v246 + 80);
    *(v0 + 7944) = v252;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7104, v0 + 7040, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_unknownObjectRetain();

    Logger.init(subsystem:category:)();
    *(v252 + 16) = v3;
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v2, v3, 1u);
    *(v252 + 24) = v289;
    *(v252 + 32) = v297;
    *(v252 + 40) = v307;
    *(v252 + 56) = v278;
    *(v252 + 64) = v274;
    *(v252 + 72) = v247;
    *(v252 + 80) = v316;
    *(v252 + 96) = v272;
    *(v252 + 104) = v248;
    v253 = *(v246 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
    *(v0 + 7344) = v252;
    *(v0 + 7336) = v247;
    outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6320);
    *(v0 + 6592) = v282;
    *(v0 + 6600) = v2;
    *(v0 + 6608) = v193;
    v254 = *(*v253 + 224);

    v300 = (v254 + *v254);
    v255 = v254[1];
    v256 = swift_task_alloc();
    *(v0 + 7952) = v256;
    v257 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation, type metadata accessor for MLS.AddMembersOperation);
    *v256 = v0;
    v256[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v258 = *MEMORY[0x277D85DE8];
    v33 = v257;
    v34 = v0 + 3288;
    v35 = v0 + 7344;
    v36 = v0 + 7336;
    v37 = v0 + 6320;
    v38 = v0 + 6592;
    v39 = v0 + 6616;
    v40 = v270;
    goto LABEL_63;
  }

  if (*(v1 + 32) <= 6u)
  {
    if (v4 != 5)
    {
      v212 = *(v0 + 7632);
      swift_bridgeObjectRelease_n();
      outlined init with copy of MLS.OutgoingEventState(v1, v0 + 4944);
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v1);
      if (os_log_type_enabled(v213, v214))
      {
        v215 = *(v0 + 7632);
        v216 = *(v0 + 7624);
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        *&v318[0] = v218;
        *v217 = 136315138;
        *(v217 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v215, v318);
        _os_log_impl(&dword_264F1F000, v213, v214, "SwiftMLSClientCoordinator retry retrying downgrade { identifier: %s }", v217, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v218);
        MEMORY[0x266755550](v218, -1, -1);
        MEMORY[0x266755550](v217, -1, -1);
      }

      v315 = *(v0 + 7624);
      v219 = *(v0 + 7424);
      v305 = *(v0 + 7416);
      v220 = *(v0 + 7408);
      v221 = *(v0 + 7400);
      v222 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v0 + 8032) = v222;
      *(v0 + 7008) = *(v220 + 56);
      v287 = *(v0 + 7016);
      v295 = *(v0 + 7008);
      v224 = *(v221 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
      v223 = *(v221 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMd, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMR);
      v226 = *(v225 + 48);
      v227 = *(v225 + 52);
      v228 = swift_allocObject();
      *(v0 + 8040) = v228;
      v229 = *(*v228 + 160);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 7008, v0 + 7152, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      Logger.init(subsystem:category:)();
      *(v228 + 16) = v305;
      *(v228 + 24) = v219;
      *(v228 + 32) = v315;
      *(v228 + 48) = v295;
      *(v228 + 56) = v287;
      *(v228 + 64) = v222;
      *(v228 + 72) = v224;
      *(v228 + 80) = v223;
      *(v228 + 88) = 0;
      v230 = *(v221 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
      *(v0 + 7312) = v228;
      *(v0 + 7320) = v222;
      outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 5960);
      *(v0 + 6568) = 0;
      *(v0 + 6584) = 0;
      *(v0 + 6576) = 0;
      v231 = *(*v230 + 224);

      v300 = (v231 + *v231);
      v232 = v231[1];
      v233 = swift_task_alloc();
      *(v0 + 8048) = v233;
      v234 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeOperation<MLS.DowngradeError, MLS.DowngradeContext<Data>, MLS.DowngradeProcessedContext<Data>> and conformance MLS.DowngradeOperation<A, B, C>, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMd, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMR);
      *v233 = v0;
      v233[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
      v235 = *MEMORY[0x277D85DE8];
      v33 = v234;
      v34 = v0 + 2208;
      v35 = v0 + 7312;
      v36 = v0 + 7320;
      v37 = v0 + 5960;
      v38 = v0 + 6568;
      v39 = v0 + 6544;
      v40 = v225;
      goto LABEL_63;
    }

    v96 = *(v0 + 7632);
    swift_bridgeObjectRelease_n();
    outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5520);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    outlined destroy of MLS.OutgoingEventState(v1);
    if (os_log_type_enabled(v97, v98))
    {
      v99 = *(v0 + 7632);
      v100 = *(v0 + 7624);
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v318[0] = v102;
      *v101 = 136315138;
      *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v99, v318);
      _os_log_impl(&dword_264F1F000, v97, v98, "SwiftMLSClientCoordinator retry retrying resync { identifier: %s }", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      MEMORY[0x266755550](v102, -1, -1);
      MEMORY[0x266755550](v101, -1, -1);
    }

    outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6080);
    v103 = swift_task_alloc();
    *(v0 + 8056) = v103;
    *v103 = v0;
    v103[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v104 = *(v0 + 7632);
    v105 = *(v0 + 7624);
    v106 = *(v0 + 7424);
    v107 = *(v0 + 7416);
    v108 = *(v0 + 7400);
    v109 = *(v0 + 7392);
    v110 = *MEMORY[0x277D85DE8];

    return MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:)(v109, v107, v106, v105, v104, v0 + 6080);
  }

  else
  {
    if (v4 != 7)
    {
      if (v4 == 8)
      {

        swift_bridgeObjectRelease_n();
        outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5016);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        outlined destroy of MLS.OutgoingEventState(v1);
        if (os_log_type_enabled(v42, v43))
        {
          v44 = *(v0 + 7632);
          v45 = *(v0 + 7624);
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v318[0] = v47;
          *v46 = 136315138;
          *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v318);
          _os_log_impl(&dword_264F1F000, v42, v43, "SwiftMLSClientCoordinator retry retrying groupName change { identifier: %s }", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);
          MEMORY[0x266755550](v47, -1, -1);
          MEMORY[0x266755550](v46, -1, -1);
        }

        v299 = *(v0 + 7624);
        v48 = *(v0 + 7424);
        v291 = *(v0 + 7416);
        v49 = *(v0 + 7408);
        v309 = *(v0 + 7400);
        v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        *(v0 + 8144) = v50;
        *(v0 + 7248) = *(v49 + 56);
        v51 = *(v0 + 7248);
        v283 = *(v0 + 7256);
        v52 = type metadata accessor for MLS.EncryptGroupNameOperation();
        v53 = *(v52 + 48);
        v54 = *(v52 + 52);
        v55 = swift_allocObject();
        *(v0 + 8152) = v55;
        outlined init with copy of MLS.OutgoingEventState?(v0 + 7248, v0 + 7184, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

        Logger.init(subsystem:category:)();
        *(v55 + 16) = v2;
        *(v55 + 24) = v3;
        *(v55 + 32) = v291;
        *(v55 + 40) = v48;
        *(v55 + 48) = v299;
        *(v55 + 64) = v51;
        *(v55 + 72) = v283;
        *(v55 + 80) = v50;
        v56 = *(v309 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
        *(v0 + 7288) = v55;
        *(v0 + 7280) = v50;
        outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 5920);
        *(v0 + 6832) = 0;
        *(v0 + 6848) = 0;
        *(v0 + 6840) = 0;
        v57 = *(*v56 + 224);

        v300 = (v57 + *v57);
        v58 = v57[1];
        v59 = swift_task_alloc();
        *(v0 + 8160) = v59;
        v60 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation, type metadata accessor for MLS.EncryptGroupNameOperation);
        *v59 = v0;
        v59[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
        v61 = *MEMORY[0x277D85DE8];
        v33 = v60;
        v34 = v0 + 1728;
        v35 = v0 + 7288;
        v36 = v0 + 7280;
        v37 = v0 + 5920;
        v38 = v0 + 6832;
        v39 = v0 + 6808;
        v40 = v52;
        goto LABEL_63;
      }

      swift_bridgeObjectRelease_n();
      outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5448);
      v167 = Logger.logObject.getter();
      v168 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v1);
      if (os_log_type_enabled(v167, v168))
      {
        v169 = *(v0 + 7632);
        v170 = *(v0 + 7624);
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        *&v318[0] = v172;
        *v171 = 136315138;
        *(v171 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v169, v318);
        _os_log_impl(&dword_264F1F000, v167, v168, "SwiftMLSClientCoordinator retry retrying replaceExpiredCerts { identifier: %s }", v171, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v172);
        MEMORY[0x266755550](v172, -1, -1);
        MEMORY[0x266755550](v171, -1, -1);
      }

      v304 = *(v0 + 7656);
      v294 = *(v0 + 7624);
      v281 = *(v0 + 7416);
      v286 = *(v0 + 7424);
      v173 = *(v0 + 7408);
      v174 = *(v0 + 7400);
      v175 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v0 + 8072) = v175;
      *(v0 + 6992) = *(v173 + 56);
      v271 = *(v0 + 7000);
      v273 = *(v0 + 6992);
      v176 = *(v174 + 96);
      v177 = *(v174 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
      v277 = *(v174 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
      v178 = *(v155 + 48);
      v179 = *(v155 + 52);
      v180 = swift_allocObject();
      v181 = *v180;
      v313 = *(v174 + 80);
      *(v0 + 8080) = v180;
      v182 = *(v181 + 168);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 6992, v0 + 7232, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      swift_unknownObjectRetain();

      Logger.init(subsystem:category:)();
      *(v180 + 16) = v281;
      *(v180 + 24) = v286;
      *(v180 + 32) = v294;
      *(v180 + 48) = v273;
      *(v180 + 56) = v271;
      *(v180 + 64) = v175;
      *(v180 + 72) = v313;
      *(v180 + 88) = v176;
      *(v180 + 96) = &protocol witness table for MLS.EventSender<A, B>;
      *(v180 + 104) = v277;
      *(v180 + 112) = v177;
      v183 = *(v174 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
      *(v0 + 7296) = v180;
      *(v0 + 7304) = v175;
      outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6280);
      *&v318[0] = v2;

      MLS.KeyPackageFetcher.FetchResult.init(retrievalResult:)(v318, (v0 + 6664));
      if (!v304)
      {
        *(v0 + 6472) = *(v0 + 6664);
        *(v0 + 6480) = *(v0 + 6672);
        v300 = (*(*v183 + 224) + **(*v183 + 224));
        v236 = *(*(*v183 + 224) + 4);
        v237 = swift_task_alloc();
        *(v0 + 8088) = v237;
        v238 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.EraAdvancementOperation<MLS.GroupOperationError, MLS.GroupOperationContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.EraAdvancementOperation<A, B, C>, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
        *v237 = v0;
        v237[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
        v239 = *MEMORY[0x277D85DE8];
        v33 = v238;
        v34 = v0 + 2808;
        v35 = v0 + 7296;
        v36 = v0 + 7304;
        v37 = v0 + 6280;
        v38 = v0 + 6472;
        v39 = v0 + 6640;
LABEL_57:
        v40 = v155;
LABEL_63:
        v41 = v300;
LABEL_64:

        return v41(v34, v35, v36, v37, v38, v40, v33, v39);
      }

      outlined destroy of NSObject?(v0 + 6280, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

      goto LABEL_50;
    }

    swift_bridgeObjectRelease_n();
    outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5160);
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();
    outlined destroy of MLS.OutgoingEventState(v1);
    if (os_log_type_enabled(v132, v133))
    {
      v134 = *(v0 + 7632);
      v135 = *(v0 + 7624);
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *&v318[0] = v137;
      *v136 = 136315138;
      *(v136 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v134, v318);
      _os_log_impl(&dword_264F1F000, v132, v133, "SwiftMLSClientCoordinator retry retrying replaceExpiredCerts { identifier: %s }", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v137);
      MEMORY[0x266755550](v137, -1, -1);
      MEMORY[0x266755550](v136, -1, -1);
    }

    *(v0 + 8096) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v138 = *(v0 + 6264);
    v139 = *(v0 + 6272);
    __swift_project_boxed_opaque_existential_1((v0 + 6240), v138);
    v140 = swift_task_alloc();
    *(v0 + 8104) = v140;
    *v140 = v0;
    v140[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v141 = *MEMORY[0x277D85DE8];

    return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v138, v139);
  }
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[928];
  v2 = v0[768];
  v3 = v0[769];
  __swift_project_boxed_opaque_existential_1(v0 + 765, v2);
  v4 = *(v3 + 32);

  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[969] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v7 = *MEMORY[0x277D85DE8];

  return v9(v2, v3);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[768];
  v2 = v0[769];
  __swift_project_boxed_opaque_existential_1(v0 + 765, v1);
  v7 = (*(v2 + 24) + **(v2 + 24));
  v3 = *(*(v2 + 24) + 4);
  v4 = swift_task_alloc();
  v0[972] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v5 = *MEMORY[0x277D85DE8];

  return v7(v1, v2);
}

{
  v9 = *MEMORY[0x277D85DE8];
  if ((v0[973] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v1 = v0[768];
  v2 = v0[769];
  __swift_project_boxed_opaque_existential_1(v0 + 765, v1);
  v8 = (*(v2 + 80) + **(v2 + 80));
  v3 = *(*(v2 + 80) + 4);
  v4 = swift_task_alloc();
  v0[974] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v5 = v0[949];
  v6 = *MEMORY[0x277D85DE8];

  return v8(v5, v1, v2);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v0[991] = v0[970];
  v1 = v0[928];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 765);

  v2 = v0[950];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v2, 0);
}

{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 7792);
  v13 = *v1;
  *(*v1 + 7800) = v0;

  if (v0)
  {
    *(v2 + 1480) = *(v2 + 1112);
    v4 = *(v2 + 1080);
    *(v2 + 1432) = *(v2 + 1064);
    *(v2 + 1448) = v4;
    *(v2 + 1464) = *(v2 + 1096);
    v5 = *(v2 + 1016);
    *(v2 + 1368) = *(v2 + 1000);
    *(v2 + 1384) = v5;
    v6 = *(v2 + 1048);
    *(v2 + 1400) = *(v2 + 1032);
    *(v2 + 1416) = v6;
    v7 = *(v2 + 952);
    *(v2 + 1304) = *(v2 + 936);
    *(v2 + 1320) = v7;
    v8 = *(v2 + 984);
    *(v2 + 1336) = *(v2 + 968);
    *(v2 + 1352) = v8;
    outlined destroy of NSObject?(v2 + 1304, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[949];
  v2 = v0[948];
  v3 = v0[947];
  v0[976] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[977] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[768];
  v6 = v0[769];
  __swift_project_boxed_opaque_existential_1(v0 + 765, v5);
  v11 = (*(v6 + 56) + **(v6 + 56));
  v7 = *(*(v6 + 56) + 4);
  v8 = swift_task_alloc();
  v0[978] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v9 = *MEMORY[0x277D85DE8];

  return v11(v5, v6);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[768];
  v2 = v0[769];
  __swift_project_boxed_opaque_existential_1(v0 + 765, v1);
  v7 = (*(v2 + 64) + **(v2 + 64));
  v3 = *(*(v2 + 64) + 4);
  v4 = swift_task_alloc();
  v0[981] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v5 = *MEMORY[0x277D85DE8];

  return v7(v1, v2);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v0[991] = v0[975];
  v1 = v0[928];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 765);

  v2 = v0[950];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v2, 0);
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[980];
  v2 = v0[977];
  v3 = v0[976];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[980];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[979];
  }

  v0[991] = v0[982];
  v6 = v0[928];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 765);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[950];
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v7, 0);
}

{
  v33 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 3512);
  v2 = *(v0 + 7904);
  v3 = *(v0 + 7896);
  v29 = v3;
  v30 = v2;
  v4 = *(v0 + 7864);
  v5 = *(v0 + 7840);
  v6 = *(v0 + 7816);
  v7 = *(v0 + 7808);
  v27 = v7;
  v28 = v6;
  v8 = *(v0 + 7784);
  v26 = v8;
  v9 = *(v0 + 7768);
  v32 = *(v0 + 7712);
  v10 = *(v0 + 7424);
  v11 = *(v0 + 7416);
  if (v4 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 7864);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 7872);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 7840);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 7832);
  }

  if ((v9 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v9;
  }

  *(v0 + 3720) = v11;
  *(v0 + 3728) = v10;
  *(v0 + 3736) = v16;
  *(v0 + 3744) = v16;
  *(v0 + 3752) = v8;
  *(v0 + 3760) = v7;
  *(v0 + 3768) = v6;
  *(v0 + 3776) = v15;
  *(v0 + 3784) = v14;
  *(v0 + 3792) = v13;
  *(v0 + 3800) = v12;
  *(v0 + 3808) = v2;
  *(v0 + 3816) = v3;
  outlined init with copy of MLS.Group(v0 + 3720, v0 + 3616);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6120));
  *(v0 + 3928) = v11;
  *(v0 + 3936) = v10;
  *(v0 + 3944) = v16;
  *(v0 + 3952) = v16;
  *(v0 + 3960) = v26;
  *(v0 + 3968) = v27;
  *(v0 + 3976) = v28;
  *(v0 + 3984) = v15;
  *(v0 + 3992) = v14;
  *(v0 + 4000) = v13;
  *(v0 + 4008) = v12;
  *(v0 + 4016) = v30;
  *(v0 + 4024) = v29;
  outlined destroy of MLS.Group(v0 + 3928);
  v17 = *(v0 + 3800);
  *(v0 + 3576) = *(v0 + 3784);
  *(v0 + 3592) = v17;
  *(v0 + 3608) = *(v0 + 3816);
  v18 = *(v0 + 3736);
  *v1 = *(v0 + 3720);
  *(v0 + 3528) = v18;
  v19 = *(v0 + 3768);
  *(v0 + 3544) = *(v0 + 3752);
  *(v0 + 3560) = v19;
  *(v0 + 4864) = 1;
  *(v0 + 4872) = 0u;
  *(v0 + 4888) = 0u;
  *(v0 + 4904) = 0u;
  *(v0 + 4920) = 0u;
  *(v0 + 4936) = 2;
  v20 = (*v32 + 368);
  v31 = (*v20 + **v20);
  v21 = (*v20)[1];
  v22 = swift_task_alloc();
  *(v0 + 7912) = v22;
  *v22 = v0;
  v22[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v23 = *(v0 + 7712);
  v24 = *MEMORY[0x277D85DE8];

  return (v31)(v0 + 936, v1, v0 + 4864, 1, 0, 0);
}

{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 936);
  v5 = (*v1 + 3512);
  v6 = *(*v1 + 7912);
  v7 = *v1;
  *(*v1 + 7920) = v0;

  v8 = *(v2 + 7600);
  if (v0)
  {
    v9 = *v5;
    v10 = *(v3 + 3528);
    *(v3 + 3440) = *(v3 + 3544);
    *(v3 + 3424) = v10;
    *(v3 + 3408) = v9;
    v11 = *(v3 + 3560);
    v12 = *(v3 + 3576);
    v13 = *(v3 + 3592);
    *(v3 + 3504) = *(v3 + 3608);
    *(v3 + 3488) = v13;
    *(v3 + 3472) = v12;
    *(v3 + 3456) = v11;
    outlined destroy of MLS.Group(v3 + 3408);
    v14 = *(v3 + 984);
    v16 = *v4;
    v15 = *(v3 + 952);
    *(v3 + 416) = *(v3 + 968);
    *(v3 + 432) = v14;
    *(v3 + 384) = v16;
    *(v3 + 400) = v15;
    v17 = *(v3 + 1048);
    v19 = *(v3 + 1000);
    v18 = *(v3 + 1016);
    *(v3 + 480) = *(v3 + 1032);
    *(v3 + 496) = v17;
    *(v3 + 448) = v19;
    *(v3 + 464) = v18;
    v21 = *(v3 + 1080);
    v20 = *(v3 + 1096);
    v22 = *(v3 + 1064);
    *(v3 + 560) = *(v3 + 1112);
    *(v3 + 528) = v21;
    *(v3 + 544) = v20;
    *(v3 + 512) = v22;
    outlined destroy of NSObject?(v3 + 384, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v23 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {

    v24 = *v5;
    v25 = *(v3 + 3528);
    *(v3 + 3856) = *(v3 + 3544);
    *(v3 + 3840) = v25;
    *(v3 + 3824) = v24;
    v26 = *(v3 + 3560);
    v27 = *(v3 + 3576);
    v28 = *(v3 + 3592);
    *(v3 + 3920) = *(v3 + 3608);
    *(v3 + 3904) = v28;
    *(v3 + 3888) = v27;
    *(v3 + 3872) = v26;
    outlined destroy of MLS.Group(v3 + 3824);
    v29 = *(v3 + 968);
    v30 = *(v3 + 984);
    v31 = *(v3 + 952);
    *(v3 + 200) = *v4;
    *(v3 + 248) = v30;
    *(v3 + 232) = v29;
    *(v3 + 216) = v31;
    v32 = *(v3 + 1048);
    v34 = *(v3 + 1000);
    v33 = *(v3 + 1016);
    *(v3 + 296) = *(v3 + 1032);
    *(v3 + 312) = v32;
    *(v3 + 264) = v34;
    *(v3 + 280) = v33;
    v36 = *(v3 + 1080);
    v35 = *(v3 + 1096);
    v37 = *(v3 + 1064);
    *(v3 + 376) = *(v3 + 1112);
    *(v3 + 344) = v36;
    *(v3 + 360) = v35;
    *(v3 + 328) = v37;
    outlined destroy of NSObject?(v3 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v23 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v38 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v23, v8, 0);
}

{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[983];
  v2 = v0[980];
  v3 = v0[977];
  v4 = v0[976];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[983];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[984];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[980];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[979];
  }

  v0[991] = v0[986];
  v9 = v0[928];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 765);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[950];
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v10, 0);
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = v0[963];
  v2 = v0[962];
  v3 = v0[961];
  v4 = v0[960];
  v5 = v0[954];

  outlined consume of Data?(v3, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 780);
  v19 = v0[991];
  v6 = v0[949];
  v7 = v0[946];
  v8 = v0[943];
  v9 = v0[940];
  v10 = v0[937];
  v11 = v0[936];
  v12 = v0[935];
  v13 = v0[932];
  v14 = v0[931];
  v15 = v0[930];

  v16 = v0[1];
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = v0[963];
  v2 = v0[962];
  v3 = v0[961];
  v4 = v0[960];
  v5 = v0[954];
  v6 = v0[924];

  outlined consume of Data?(v3, v2);

  *v6 = 1;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0;
  *(v6 + 96) = 3;
  v7 = v0[949];
  v8 = v0[946];
  v9 = v0[943];
  v10 = v0[940];
  v11 = v0[937];
  v12 = v0[936];
  v13 = v0[935];
  v14 = v0[932];
  v15 = v0[931];
  v19 = v0[930];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 780);

  v16 = v0[1];
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = (*v1)[994];
  v14 = *v1;

  if (v0)
  {
    v4 = v2[950];
    v5 = v2[825];
    v6 = v2[826];
    outlined consume of MLS.KeyPackageFetcher.FetchResult?(v2[824]);
    outlined destroy of NSObject?((v2 + 790), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v8 = v2[992];
    v4 = v2[950];
    v9 = v2[825];
    v10 = v2[826];
    outlined consume of MLS.KeyPackageFetcher.FetchResult?(v2[824]);
    outlined destroy of NSObject?((v2 + 790), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v4, 0);
}

{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 7944);
  v2 = *(v0 + 7392);

  v3 = *(v0 + 3368);
  *(v0 + 2392) = *(v0 + 3352);
  *(v0 + 2408) = v3;
  *(v0 + 2424) = *(v0 + 3384);
  *(v0 + 2440) = *(v0 + 3400);
  v4 = *(v0 + 3304);
  *(v0 + 2328) = *(v0 + 3288);
  *(v0 + 2344) = v4;
  v5 = *(v0 + 3336);
  *(v0 + 2360) = *(v0 + 3320);
  *(v0 + 2376) = v5;
  outlined init with copy of MLS.EventQueue.Result(v0 + 2336, v0 + 4136);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 2328);
  v6 = *(v0 + 2368);
  v7 = *(v0 + 2352);
  *v2 = *(v0 + 2336);
  *(v2 + 16) = v7;
  *(v2 + 32) = v6;
  v8 = *(v0 + 2400);
  v9 = *(v0 + 2416);
  v10 = *(v0 + 2384);
  *(v2 + 96) = *(v0 + 2432);
  *(v2 + 64) = v8;
  *(v2 + 80) = v9;
  *(v2 + 48) = v10;
  v11 = *(v0 + 7592);
  v12 = *(v0 + 7568);
  v13 = *(v0 + 7544);
  v14 = *(v0 + 7520);
  v15 = *(v0 + 7496);
  v16 = *(v0 + 7488);
  v17 = *(v0 + 7480);
  v18 = *(v0 + 7456);
  v19 = *(v0 + 7448);
  v23 = *(v0 + 7440);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 7976);
  v10 = *v1;

  if (v0)
  {
    v4 = *(v2 + 7600);
    outlined destroy of NSObject?(v2 + 6160, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v6 = *(v2 + 7960);
    v4 = *(v2 + 7600);
    outlined destroy of NSObject?(v2 + 6160, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 7968);
  v2 = *(v0 + 7392);

  *(v0 + 2752) = *(v0 + 2032);
  *(v0 + 2768) = *(v0 + 2048);
  *(v0 + 2784) = *(v0 + 2064);
  *(v0 + 2800) = *(v0 + 2080);
  *(v0 + 2688) = *(v0 + 1968);
  *(v0 + 2704) = *(v0 + 1984);
  *(v0 + 2720) = *(v0 + 2000);
  *(v0 + 2736) = *(v0 + 2016);
  outlined init with copy of MLS.EventQueue.Result(v0 + 2696, v0 + 4656);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 2688);
  v4 = *(v0 + 2712);
  v3 = *(v0 + 2728);
  *v2 = *(v0 + 2696);
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  v6 = *(v0 + 2760);
  v5 = *(v0 + 2776);
  v7 = *(v0 + 2744);
  *(v2 + 96) = *(v0 + 2792);
  *(v2 + 64) = v6;
  *(v2 + 80) = v5;
  *(v2 + 48) = v7;
  v8 = *(v0 + 7592);
  v9 = *(v0 + 7568);
  v10 = *(v0 + 7544);
  v11 = *(v0 + 7520);
  v12 = *(v0 + 7496);
  v13 = *(v0 + 7488);
  v14 = *(v0 + 7480);
  v15 = *(v0 + 7456);
  v16 = *(v0 + 7448);
  v20 = *(v0 + 7440);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 8000);
  v10 = *v1;

  if (v0)
  {
    v4 = *(v2 + 7600);
    outlined destroy of NSObject?(v2 + 5880, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v6 = *(v2 + 7984);
    v4 = *(v2 + 7600);
    outlined destroy of NSObject?(v2 + 5880, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 7992);
  v2 = *(v0 + 7392);

  v3 = *(v0 + 1688);
  *(v0 + 1552) = *(v0 + 1672);
  *(v0 + 1568) = v3;
  *(v0 + 1584) = *(v0 + 1704);
  v4 = *(v0 + 1624);
  *(v0 + 1488) = *(v0 + 1608);
  *(v0 + 1504) = v4;
  v5 = *(v0 + 1656);
  *(v0 + 1520) = *(v0 + 1640);
  *(v0 + 1600) = *(v0 + 1720);
  *(v0 + 1536) = v5;
  outlined init with copy of MLS.EventQueue.Result(v0 + 1496, v0 + 4344);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 1488);
  v7 = *(v0 + 1512);
  v6 = *(v0 + 1528);
  *v2 = *(v0 + 1496);
  *(v2 + 16) = v7;
  *(v2 + 32) = v6;
  v9 = *(v0 + 1560);
  v8 = *(v0 + 1576);
  v10 = *(v0 + 1544);
  *(v2 + 96) = *(v0 + 1592);
  *(v2 + 64) = v9;
  *(v2 + 80) = v8;
  *(v2 + 48) = v10;
  v11 = *(v0 + 7592);
  v12 = *(v0 + 7568);
  v13 = *(v0 + 7544);
  v14 = *(v0 + 7520);
  v15 = *(v0 + 7496);
  v16 = *(v0 + 7488);
  v17 = *(v0 + 7480);
  v18 = *(v0 + 7456);
  v19 = *(v0 + 7448);
  v23 = *(v0 + 7440);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 8024);
  v10 = *v1;

  if (v0)
  {
    v4 = *(v2 + 7600);
    outlined destroy of NSObject?(v2 + 6400, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v6 = *(v2 + 8008);
    v4 = *(v2 + 7600);
    outlined destroy of NSObject?(v2 + 6400, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8016);
  v2 = *(v0 + 7392);

  v3 = *(v0 + 2168);
  *(v0 + 3112) = *(v0 + 2152);
  *(v0 + 3128) = v3;
  *(v0 + 3144) = *(v0 + 2184);
  *(v0 + 3160) = *(v0 + 2200);
  v4 = *(v0 + 2104);
  *(v0 + 3048) = *(v0 + 2088);
  *(v0 + 3064) = v4;
  v5 = *(v0 + 2136);
  *(v0 + 3080) = *(v0 + 2120);
  *(v0 + 3096) = v5;
  outlined init with copy of MLS.EventQueue.Result(v0 + 3056, v0 + 4032);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 3048);
  v6 = *(v0 + 3088);
  v7 = *(v0 + 3072);
  *v2 = *(v0 + 3056);
  *(v2 + 16) = v7;
  *(v2 + 32) = v6;
  v8 = *(v0 + 3120);
  v9 = *(v0 + 3136);
  v10 = *(v0 + 3104);
  *(v2 + 96) = *(v0 + 3152);
  *(v2 + 64) = v8;
  *(v2 + 80) = v9;
  *(v2 + 48) = v10;
  v11 = *(v0 + 7592);
  v12 = *(v0 + 7568);
  v13 = *(v0 + 7544);
  v14 = *(v0 + 7520);
  v15 = *(v0 + 7496);
  v16 = *(v0 + 7488);
  v17 = *(v0 + 7480);
  v18 = *(v0 + 7456);
  v19 = *(v0 + 7448);
  v23 = *(v0 + 7440);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 8048);
  v10 = *v1;

  if (v0)
  {
    v4 = *(v2 + 7600);
    outlined destroy of NSObject?(v2 + 5960, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v6 = *(v2 + 8032);
    v4 = *(v2 + 7600);
    outlined destroy of NSObject?(v2 + 5960, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8040);
  v2 = *(v0 + 7392);

  v3 = *(v0 + 2288);
  *(v0 + 1912) = *(v0 + 2272);
  *(v0 + 1928) = v3;
  *(v0 + 1944) = *(v0 + 2304);
  *(v0 + 1960) = *(v0 + 2320);
  v4 = *(v0 + 2224);
  *(v0 + 1848) = *(v0 + 2208);
  *(v0 + 1864) = v4;
  v5 = *(v0 + 2256);
  *(v0 + 1880) = *(v0 + 2240);
  *(v0 + 1896) = v5;
  outlined init with copy of MLS.EventQueue.Result(v0 + 1856, v0 + 4240);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 1848);
  v6 = *(v0 + 1888);
  v7 = *(v0 + 1872);
  *v2 = *(v0 + 1856);
  *(v2 + 16) = v7;
  *(v2 + 32) = v6;
  v8 = *(v0 + 1920);
  v9 = *(v0 + 1936);
  v10 = *(v0 + 1904);
  *(v2 + 96) = *(v0 + 1952);
  *(v2 + 64) = v8;
  *(v2 + 80) = v9;
  *(v2 + 48) = v10;
  v11 = *(v0 + 7592);
  v12 = *(v0 + 7568);
  v13 = *(v0 + 7544);
  v14 = *(v0 + 7520);
  v15 = *(v0 + 7496);
  v16 = *(v0 + 7488);
  v17 = *(v0 + 7480);
  v18 = *(v0 + 7456);
  v19 = *(v0 + 7448);
  v23 = *(v0 + 7440);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 8056);
  v4 = *v1;
  *(v2 + 8064) = v0;

  v5 = *(v2 + 7600);
  outlined destroy of NSObject?(v2 + 6080, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[949];
  v2 = v0[946];
  v3 = v0[943];
  v4 = v0[940];
  v5 = v0[937];
  v6 = v0[936];
  v7 = v0[935];
  v8 = v0[932];
  v9 = v0[931];
  v13 = v0[930];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 780);

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = (*v1)[1011];
  v14 = *v1;

  if (v0)
  {
    v4 = v2[950];
    v5 = v2[810];
    v6 = v2[811];
    outlined consume of MLS.KeyPackageFetcher.FetchResult?(v2[809]);
    outlined destroy of NSObject?((v2 + 785), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v8 = v2[1009];
    v4 = v2[950];
    v9 = v2[810];
    v10 = v2[811];
    outlined consume of MLS.KeyPackageFetcher.FetchResult?(v2[809]);
    outlined destroy of NSObject?((v2 + 785), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v4, 0);
}

{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8080);
  v2 = *(v0 + 7392);

  v3 = *(v0 + 2888);
  *(v0 + 2512) = *(v0 + 2872);
  *(v0 + 2528) = v3;
  *(v0 + 2544) = *(v0 + 2904);
  v4 = *(v0 + 2824);
  *(v0 + 2448) = *(v0 + 2808);
  *(v0 + 2464) = v4;
  v5 = *(v0 + 2856);
  *(v0 + 2480) = *(v0 + 2840);
  *(v0 + 2560) = *(v0 + 2920);
  *(v0 + 2496) = v5;
  outlined init with copy of MLS.EventQueue.Result(v0 + 2456, v0 + 4552);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 2448);
  v7 = *(v0 + 2472);
  v6 = *(v0 + 2488);
  *v2 = *(v0 + 2456);
  *(v2 + 16) = v7;
  *(v2 + 32) = v6;
  v9 = *(v0 + 2520);
  v8 = *(v0 + 2536);
  v10 = *(v0 + 2504);
  *(v2 + 96) = *(v0 + 2552);
  *(v2 + 64) = v9;
  *(v2 + 80) = v8;
  *(v2 + 48) = v10;
  v11 = *(v0 + 7592);
  v12 = *(v0 + 7568);
  v13 = *(v0 + 7544);
  v14 = *(v0 + 7520);
  v15 = *(v0 + 7496);
  v16 = *(v0 + 7488);
  v17 = *(v0 + 7480);
  v18 = *(v0 + 7456);
  v19 = *(v0 + 7448);
  v23 = *(v0 + 7440);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = (*v1)[1017];
  v14 = *v1;

  if (v0)
  {
    v4 = v2[950];
    v5 = v2[846];
    v6 = v2[847];
    outlined consume of MLS.KeyPackageFetcher.FetchResult?(v2[845]);
    outlined destroy of NSObject?((v2 + 795), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v8 = v2[1012];
    v4 = v2[950];
    v9 = v2[846];
    v10 = v2[847];
    outlined consume of MLS.KeyPackageFetcher.FetchResult?(v2[845]);
    outlined destroy of NSObject?((v2 + 795), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v4, 0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8128);
  v2 = *(v0 + 7392);

  *(v0 + 2992) = *(v0 + 3232);
  *(v0 + 3008) = *(v0 + 3248);
  *(v0 + 3024) = *(v0 + 3264);
  *(v0 + 3040) = *(v0 + 3280);
  *(v0 + 2928) = *(v0 + 3168);
  *(v0 + 2944) = *(v0 + 3184);
  *(v0 + 2960) = *(v0 + 3200);
  *(v0 + 2976) = *(v0 + 3216);
  outlined init with copy of MLS.EventQueue.Result(v0 + 2936, v0 + 4448);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 2928);
  v4 = *(v0 + 2952);
  v3 = *(v0 + 2968);
  *v2 = *(v0 + 2936);
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  v6 = *(v0 + 3000);
  v5 = *(v0 + 3016);
  v7 = *(v0 + 2984);
  *(v2 + 96) = *(v0 + 3032);
  *(v2 + 64) = v6;
  *(v2 + 80) = v5;
  *(v2 + 48) = v7;
  v8 = *(v0 + 7592);
  v9 = *(v0 + 7568);
  v10 = *(v0 + 7544);
  v11 = *(v0 + 7520);
  v12 = *(v0 + 7496);
  v13 = *(v0 + 7488);
  v14 = *(v0 + 7480);
  v15 = *(v0 + 7456);
  v16 = *(v0 + 7448);
  v20 = *(v0 + 7440);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 8160);
  v10 = *v1;

  if (v0)
  {
    v4 = *(v2 + 7600);
    outlined destroy of NSObject?(v2 + 5920, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v6 = *(v2 + 8144);
    v4 = *(v2 + 7600);
    outlined destroy of NSObject?(v2 + 5920, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8152);
  v2 = *(v0 + 7392);

  v3 = *(v0 + 1808);
  *(v0 + 2632) = *(v0 + 1792);
  *(v0 + 2648) = v3;
  *(v0 + 2664) = *(v0 + 1824);
  *(v0 + 2680) = *(v0 + 1840);
  v4 = *(v0 + 1744);
  *(v0 + 2568) = *(v0 + 1728);
  *(v0 + 2584) = v4;
  v5 = *(v0 + 1776);
  *(v0 + 2600) = *(v0 + 1760);
  *(v0 + 2616) = v5;
  outlined init with copy of MLS.EventQueue.Result(v0 + 2576, v0 + 4760);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 2568);
  v6 = *(v0 + 2608);
  v7 = *(v0 + 2592);
  *v2 = *(v0 + 2576);
  *(v2 + 16) = v7;
  *(v2 + 32) = v6;
  v8 = *(v0 + 2640);
  v9 = *(v0 + 2656);
  v10 = *(v0 + 2624);
  *(v2 + 96) = *(v0 + 2672);
  *(v2 + 64) = v8;
  *(v2 + 80) = v9;
  *(v2 + 48) = v10;
  v11 = *(v0 + 7592);
  v12 = *(v0 + 7568);
  v13 = *(v0 + 7544);
  v14 = *(v0 + 7520);
  v15 = *(v0 + 7496);
  v16 = *(v0 + 7488);
  v17 = *(v0 + 7480);
  v18 = *(v0 + 7456);
  v19 = *(v0 + 7448);
  v23 = *(v0 + 7440);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 6880);
  v2 = *(v0 + 6888);
  v3 = *(v0 + 6896);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  v5 = *(v0 + 7592);
  v6 = *(v0 + 7568);
  v7 = *(v0 + 7544);
  v8 = *(v0 + 7520);
  v9 = *(v0 + 7496);
  v10 = *(v0 + 7488);
  v11 = *(v0 + 7480);
  v12 = *(v0 + 7456);
  v13 = *(v0 + 7448);
  v14 = *(v0 + 7440);

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = v0[963];
  v2 = v0[962];
  v3 = v0[961];
  v4 = v0[960];
  v5 = v0[954];

  outlined consume of Data?(v3, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 780);
  v19 = v0[990];
  v6 = v0[949];
  v7 = v0[946];
  v8 = v0[943];
  v9 = v0[940];
  v10 = v0[937];
  v11 = v0[936];
  v12 = v0[935];
  v13 = v0[932];
  v14 = v0[931];
  v15 = v0[930];

  v16 = v0[1];
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 7944);
  v2 = *(v0 + 7936);
  v3 = *(v0 + 6616);
  v4 = *(v0 + 6624);
  v5 = *(v0 + 6632);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));
  v7 = *(v0 + 7592);
  v8 = *(v0 + 7568);
  v9 = *(v0 + 7544);
  v10 = *(v0 + 7520);
  v11 = *(v0 + 7496);
  v12 = *(v0 + 7488);
  v13 = *(v0 + 7480);
  v14 = *(v0 + 7456);
  v15 = *(v0 + 7448);
  v16 = *(v0 + 7440);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 7968);
  v2 = *(v0 + 7960);
  v3 = *(v0 + 6856);
  v4 = *(v0 + 6864);
  v5 = *(v0 + 6872);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));
  v7 = *(v0 + 7592);
  v8 = *(v0 + 7568);
  v9 = *(v0 + 7544);
  v10 = *(v0 + 7520);
  v11 = *(v0 + 7496);
  v12 = *(v0 + 7488);
  v13 = *(v0 + 7480);
  v14 = *(v0 + 7456);
  v15 = *(v0 + 7448);
  v16 = *(v0 + 7440);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 7992);
  v2 = *(v0 + 7984);
  v3 = *(v0 + 6736);
  v4 = *(v0 + 6744);
  v5 = *(v0 + 6752);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));
  v7 = *(v0 + 7592);
  v8 = *(v0 + 7568);
  v9 = *(v0 + 7544);
  v10 = *(v0 + 7520);
  v11 = *(v0 + 7496);
  v12 = *(v0 + 7488);
  v13 = *(v0 + 7480);
  v14 = *(v0 + 7456);
  v15 = *(v0 + 7448);
  v16 = *(v0 + 7440);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8016);
  v2 = *(v0 + 8008);
  v3 = *(v0 + 6496);
  v4 = *(v0 + 6504);
  v5 = *(v0 + 6512);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));
  v7 = *(v0 + 7592);
  v8 = *(v0 + 7568);
  v9 = *(v0 + 7544);
  v10 = *(v0 + 7520);
  v11 = *(v0 + 7496);
  v12 = *(v0 + 7488);
  v13 = *(v0 + 7480);
  v14 = *(v0 + 7456);
  v15 = *(v0 + 7448);
  v16 = *(v0 + 7440);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8040);
  v2 = *(v0 + 8032);
  v3 = *(v0 + 6544);
  v4 = *(v0 + 6552);
  v5 = *(v0 + 6560);
  lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));
  v7 = *(v0 + 7592);
  v8 = *(v0 + 7568);
  v9 = *(v0 + 7544);
  v10 = *(v0 + 7520);
  v11 = *(v0 + 7496);
  v12 = *(v0 + 7488);
  v13 = *(v0 + 7480);
  v14 = *(v0 + 7456);
  v15 = *(v0 + 7448);
  v16 = *(v0 + 7440);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v15 = *MEMORY[0x277D85DE8];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 780);
  v14 = v0[1008];
  v1 = v0[949];
  v2 = v0[946];
  v3 = v0[943];
  v4 = v0[940];
  v5 = v0[937];
  v6 = v0[936];
  v7 = v0[935];
  v8 = v0[932];
  v9 = v0[931];
  v10 = v0[930];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8080);
  v2 = *(v0 + 8072);
  v3 = *(v0 + 6640);
  v4 = *(v0 + 6648);
  v5 = *(v0 + 6656);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));
  v7 = *(v0 + 7592);
  v8 = *(v0 + 7568);
  v9 = *(v0 + 7544);
  v10 = *(v0 + 7520);
  v11 = *(v0 + 7496);
  v12 = *(v0 + 7488);
  v13 = *(v0 + 7480);
  v14 = *(v0 + 7456);
  v15 = *(v0 + 7448);
  v16 = *(v0 + 7440);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v15 = *MEMORY[0x277D85DE8];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 780);
  v14 = v0[1015];
  v1 = v0[949];
  v2 = v0[946];
  v3 = v0[943];
  v4 = v0[940];
  v5 = v0[937];
  v6 = v0[936];
  v7 = v0[935];
  v8 = v0[932];
  v9 = v0[931];
  v10 = v0[930];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8128);
  v2 = *(v0 + 8096);
  v3 = *(v0 + 6688);
  v4 = *(v0 + 6696);
  v5 = *(v0 + 6704);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));
  v7 = *(v0 + 7592);
  v8 = *(v0 + 7568);
  v9 = *(v0 + 7544);
  v10 = *(v0 + 7520);
  v11 = *(v0 + 7496);
  v12 = *(v0 + 7488);
  v13 = *(v0 + 7480);
  v14 = *(v0 + 7456);
  v15 = *(v0 + 7448);
  v16 = *(v0 + 7440);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8152);
  v2 = *(v0 + 8144);
  v3 = *(v0 + 6808);
  v4 = *(v0 + 6816);
  v5 = *(v0 + 6824);
  lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  swift_allocError();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));
  v7 = *(v0 + 7592);
  v8 = *(v0 + 7568);
  v9 = *(v0 + 7544);
  v10 = *(v0 + 7520);
  v11 = *(v0 + 7496);
  v12 = *(v0 + 7488);
  v13 = *(v0 + 7480);
  v14 = *(v0 + 7456);
  v15 = *(v0 + 7448);
  v16 = *(v0 + 7440);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}