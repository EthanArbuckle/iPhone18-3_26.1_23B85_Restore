uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3840);
  v5 = *(*v2 + 3808);
  v7 = *v2;
  *(v3 + 3848) = a1;
  *(v3 + 3856) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v5, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 4176);
  v6 = *v2;
  *(v3 + 4184) = a1;
  *(v3 + 4192) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v6 = *(*v3 + 4200);
  v7 = *v3;
  v7[526] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
  }

  else
  {
    v8 = v7[510];
    v9 = v7[509];
    v10 = v7[497];
    v7[527] = a2;
    v7[528] = a1;
    v7[440] = v9;
    v7[441] = v8;
    v11 = *(v10 + 64);
    v7[529] = v11;
    v7[530] = (v10 + 64) & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
    v20 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v7[531] = v13;
    *v13 = v7;
    v13[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v14 = v7[500];
    v15 = v7[497];
    v16 = v7[496];
    v17 = v7[460];
    v18 = v7[459];

    return (v20)(v18, v17, v7 + 440, v14, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 4248);
  v8 = *v3;
  *(*v3 + 4256) = v2;

  if (v2)
  {
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    *(v6 + 4264) = a2;
    *(v6 + 4272) = a1;
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 4416);
  v6 = *v2;
  *(v3 + 4424) = a1;
  *(v3 + 4432) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v6 = *(*v3 + 4440);
  v7 = *v3;
  *(v7 + 4448) = v2;

  if (v2)
  {
    *(v7 + 1464) = *(v7 + 1672);
    v8 = *(v7 + 1656);
    *(v7 + 1432) = *(v7 + 1640);
    *(v7 + 1448) = v8;
    v9 = *(v7 + 1592);
    *(v7 + 1368) = *(v7 + 1576);
    *(v7 + 1384) = v9;
    v10 = *(v7 + 1624);
    *(v7 + 1400) = *(v7 + 1608);
    *(v7 + 1416) = v10;
    outlined destroy of NSObject?(v7 + 1368, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v11 = *(v7 + 3608);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
  }

  else
  {
    v12 = *(v7 + 4336);
    v13 = *(v7 + 4328);
    v14 = *(v7 + 4240);
    v15 = *(v7 + 4232);
    *(v7 + 4456) = a2;
    *(v7 + 4464) = a1;
    *(v7 + 3504) = v13;
    *(v7 + 3512) = v12;
    v25 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v7 + 4472) = v17;
    *v17 = v7;
    v17[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v18 = *(v7 + 4240);
    v19 = *(v7 + 4000);
    v20 = *(v7 + 3976);
    v21 = *(v7 + 3968);
    v22 = *(v7 + 3680);
    v23 = *(v7 + 3672);

    return v25(v23, v22, v7 + 3504, v19, v20);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 4472);
  v14 = *v3;
  *(*v3 + 4480) = v2;

  if (v2)
  {
    v8 = *(v6 + 1608);
    *(v6 + 1312) = *(v6 + 1624);
    v9 = *(v6 + 1656);
    *(v6 + 1328) = *(v6 + 1640);
    *(v6 + 1344) = v9;
    v10 = *(v6 + 1592);
    *(v6 + 1264) = *(v6 + 1576);
    *(v6 + 1280) = v10;
    *(v6 + 1360) = *(v6 + 1672);
    *(v6 + 1296) = v8;
    outlined destroy of NSObject?(v6 + 1264, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v11 = *(v6 + 3608);

    v12 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    *(v6 + 4488) = a2;
    *(v6 + 4496) = a1;
    v12 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 4088);
  v6 = *v2;
  *(*v2 + 4096) = v1;

  if (v1)
  {
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    *(v4 + 4104) = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 4112);
  v4 = *v1;
  *(*v1 + 4120) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 4344);
  v12 = *v2;
  *(*v2 + 4352) = v1;

  if (v1)
  {
    v6 = *(v4 + 1608);
    *(v4 + 1520) = *(v4 + 1624);
    v7 = *(v4 + 1656);
    *(v4 + 1536) = *(v4 + 1640);
    *(v4 + 1552) = v7;
    v8 = *(v4 + 1592);
    *(v4 + 1472) = *(v4 + 1576);
    *(v4 + 1488) = v8;
    *(v4 + 1568) = *(v4 + 1672);
    *(v4 + 1504) = v6;
    outlined destroy of NSObject?(v4 + 1472, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v9 = *(v4 + 3608);

    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    *(v4 + 4360) = a1;
    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  v2 = *(*v1 + 4368);
  v4 = *v1;
  *(*v1 + 4376) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)()
{
  if ((v0[515] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[363];
    v2 = v0[364];
    __swift_project_boxed_opaque_existential_1(v0 + 360, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[516] = v5;
    *v5 = v0;
    v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v6 = v0[465];

    v7(v6, v1, v2);
  }
}

{
  if ((v0[547] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[373];
    v2 = v0[374];
    __swift_project_boxed_opaque_existential_1(v0 + 370, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[548] = v5;
    *v5 = v0;
    v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v6 = v0[464];

    v7(v6, v1, v2);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(a4 + 8);
  *(v5 + 48) = *a4;
  *(v5 + 56) = v6;
  *(v5 + 64) = *(a4 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  *(v5 + 80) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.delete(group:context:), v7, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.delete(group:context:)()
{
  v29 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  outlined copy of Data?(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v28);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator delete deleting group { identifier: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v14 = *(v0 + 40);
  v25 = *(v0 + 24);
  v26 = *(v0 + 48);
  v15 = *(v14 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v25;
  *(v16 + 40) = v26;
  *(v16 + 56) = v13;
  *(v16 + 64) = v12;
  v17 = *(*v15 + 152);
  v27 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 96) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR);
  *v19 = v0;
  v19[1] = MLS.SwiftMLSClientCoordinator.delete(group:context:);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);
  v23 = *(v0 + 16);

  return v27(v23, v21, v22, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:), v16, v20);
}

{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.delete(group:context:), v4, 0);
  }

  else
  {
    v5 = v3[11];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[15] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:), v9, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:)()
{
  v1 = *(*(v0 + 64) + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  *(v0 + 40) = &type metadata for MLS.GroupDeletionError;
  *(v0 + 48) = lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v2 = *(*v1 + 168);
  v10 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  return v10(v8, v7, v0 + 16, v5, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:);
  }

  else
  {
    v6 = *(v2 + 120);
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:);
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v17 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];

  outlined copy of Data?(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v16);
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator delete deleted group. Returning processedContext to caller { identifier: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v11 = v0[13];
  v12 = v0[14];
  v13 = v0[7];
  *v13 = v11;
  v13[1] = v12;
  outlined copy of Data?(v11, v12);
  v14 = v0[1];

  return v14();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[17];

  return v1();
}

uint64_t MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = a4[1];
  v5[6] = *a4;
  v5[7] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v5[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.group(identifier:context:), v7, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.group(identifier:context:)()
{
  v27 = v0;
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[6];
    v6 = v0[7];
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v26);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v26);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator group called { identifier: %s, group: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  v24 = *(v0 + 3);
  v15 = *(v14 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v16 = swift_task_alloc();
  v0[9] = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v24;
  *(v16 + 40) = v13;
  *(v16 + 48) = v12;
  v17 = *(*v15 + 152);
  v25 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[10] = v19;
  *v19 = v0;
  v19[1] = MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  v20 = v0[6];
  v21 = v0[7];
  v22 = v0[2];

  return v25(v22, v20, v21, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v16, &type metadata for MLS.Group);
}

{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.group(identifier:context:), v4, 0);
  }

  else
  {
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[122] = a6;
  v6[121] = a5;
  v6[120] = a4;
  v6[119] = a3;
  v6[118] = a2;
  v6[117] = a1;
  v7 = type metadata accessor for MLS.Group.GroupInfo();
  v6[123] = v7;
  v8 = *(v7 - 8);
  v6[124] = v8;
  v9 = *(v8 + 64) + 15;
  v6[125] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v6[126] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v10, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)()
{
  v1 = *(**(v0[118] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader) + 192);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[127] = v3;
  lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  v4 = v0[122];
  v5 = v0[121];
  v6 = v0[120];
  v7 = v0[119];

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[141] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[88];
    v2 = v0[89];
    __swift_project_boxed_opaque_existential_1(v0 + 85, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[142] = v5;
    *v5 = v0;
    v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
    v6 = v0[125];

    v7(v6, v1, v2);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v7 = *v1;

  v4 = *(v2 + 1008);
  if (v0)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  else
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 976);
  v2 = *(v0 + 944);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), 0, 0);
}

{
  v1 = v0[83];
  v2 = v0[84];
  __swift_project_boxed_opaque_existential_1(v0 + 80, v1);
  v3 = *(v2 + 40);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[128] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  return v7(v1, v2);
}

{
  v1 = v0[126];
  v2 = v0[122];
  v3 = v0[118];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v1, 0);
}

{
  v19 = v0;
  v1 = *(v0 + 976);
  if (*(v0 + 1280) == 1)
  {
    v2 = *(v0 + 960);
    v3 = *(v0 + 944);
    v4 = *(v0 + 976);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 976);
      v8 = *(v0 + 968);
      v9 = *(v0 + 960);
      v10 = *(v0 + 952);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v18);
      *(v11 + 12) = 2080;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v18);
      _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator group fetching downgraded group { identifier: %s, group: %s }", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v12, -1, -1);
      MEMORY[0x266755550](v11, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
    swift_allocError();
    *v13 = 7;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 640));
    v14 = *(v0 + 1000);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 944);
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), 0, 0);
  }
}

{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 944);
  swift_getErrorValue();
  v6 = *(v0 + 744);
  v7 = Error.readableDescription.getter(*(v0 + 752), *(v0 + 760));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v7, v8, v5, v4, v3, "SwiftMLSClientCoordinator group failed obtaining endMLS state { identifier: %s, error: %s }");

  swift_getErrorValue();
  v9 = *(v0 + 768);
  v10 = Error.readableDescription.getter(*(v0 + 776), *(v0 + 784));
  *(v0 + 1040) = v10;
  *(v0 + 1048) = v11;
  *(v0 + 792) = 5;
  *(v0 + 800) = v10;
  *(v0 + 808) = v11;
  *(v0 + 1056) = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v2, 0);
}

{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];
  swift_allocError();
  *v4 = 5;
  *(v4 + 8) = v3;
  *(v4 + 16) = v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  v5 = v0[125];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[120];
  v2 = v0[118];
  outlined init with copy of ServerBag.MLS((v0 + 80), (v0 + 85));
  v0[133] = *(v2 + 80);
  v0[134] = *(v2 + 88);
  v3 = v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[135] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[136] = *(v3 + 8);
  v4 = v0[88];
  v5 = v0[89];
  __swift_project_boxed_opaque_existential_1(v0 + 85, v4);
  v6 = *(v5 + 32);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[137] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  return v10(v4, v5);
}

{
  v1 = v0[88];
  v2 = v0[89];
  __swift_project_boxed_opaque_existential_1(v0 + 85, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[140] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  return v7(v1, v2);
}

{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 960);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  v3 = *(v0 + 1008);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);
  v6 = *(v0 + 944);
  swift_getErrorValue();
  v7 = *(v0 + 816);
  v8 = Error.readableDescription.getter(*(v0 + 824), *(v0 + 832));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v8, v9, v6, v5, v4, "SwiftMLSClientCoordinator group failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v10 = *(v0 + 840);
  v11 = Error.readableDescription.getter(*(v0 + 848), *(v0 + 856));
  *(v0 + 1256) = v11;
  *(v0 + 1264) = v12;
  *(v0 + 864) = 5;
  *(v0 + 872) = v11;
  *(v0 + 880) = v12;
  *(v0 + 1272) = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v3, 0);
}

{
  v2 = *(*v1 + 1136);
  v5 = *v1;
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  else
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[125];
  v2 = v0[124];
  v3 = v0[123];
  v0[144] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[145] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[88];
  v6 = v0[89];
  __swift_project_boxed_opaque_existential_1(v0 + 85, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[146] = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  return v11(v5, v6);
}

{
  v1 = v0[88];
  v2 = v0[89];
  __swift_project_boxed_opaque_existential_1(v0 + 85, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[149] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  return v7(v1, v2);
}

{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 960);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  v3 = *(v0 + 1008);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);
  v6 = *(v0 + 944);
  swift_getErrorValue();
  v7 = *(v0 + 816);
  v8 = Error.readableDescription.getter(*(v0 + 824), *(v0 + 832));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v8, v9, v6, v5, v4, "SwiftMLSClientCoordinator group failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v10 = *(v0 + 840);
  v11 = Error.readableDescription.getter(*(v0 + 848), *(v0 + 856));
  *(v0 + 1256) = v11;
  *(v0 + 1264) = v12;
  *(v0 + 864) = 5;
  *(v0 + 872) = v11;
  *(v0 + 880) = v12;
  *(v0 + 1272) = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v3, 0);
}

{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1152);
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = *(v0 + 1184);
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 1176);
  }

  v7 = *(v0 + 960);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v8 = *(v0 + 1008);
  v9 = *(v0 + 976);
  v10 = *(v0 + 968);
  v11 = *(v0 + 944);
  swift_getErrorValue();
  v12 = *(v0 + 816);
  v13 = Error.readableDescription.getter(*(v0 + 824), *(v0 + 832));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v13, v14, v11, v10, v9, "SwiftMLSClientCoordinator group failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v15 = *(v0 + 840);
  v16 = Error.readableDescription.getter(*(v0 + 848), *(v0 + 856));
  *(v0 + 1256) = v16;
  *(v0 + 1264) = v17;
  *(v0 + 864) = 5;
  *(v0 + 872) = v16;
  *(v0 + 880) = v17;
  *(v0 + 1272) = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v8, 0);
}

{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1208);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1152);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 1128);
  v17 = v7;
  v8 = *(v0 + 1112);
  v21 = *(v0 + 976);
  v22 = *(v0 + 1008);
  v9 = *(v0 + 960);
  v10 = *(v0 + 952);
  v20 = *(v0 + 944);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 1208);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1216);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 1184);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1176);
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
  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));
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

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v22, 0);
}

{
  v36 = v0;
  v1 = *(v0 + 976);
  v2 = *(v0 + 944);

  outlined init with copy of MLS.Group(v0 + 120, v0 + 328);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined destroy of MLS.Group(v0 + 120);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 976);
    v6 = *(v0 + 968);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v28);
    *(v7 + 12) = 2080;
    v9 = *(v0 + 168);
    v10 = *(v0 + 200);
    v33 = *(v0 + 184);
    v34 = v10;
    v35 = *(v0 + 216);
    v11 = *(v0 + 136);
    v29 = *(v0 + 120);
    v30 = v11;
    v31 = *(v0 + 152);
    v32 = v9;
    outlined init with copy of MLS.Group(v0 + 120, v0 + 536);
    v12 = MLS.Group.description.getter();
    v14 = v13;
    v15 = v34;
    *(v0 + 496) = v33;
    *(v0 + 512) = v15;
    *(v0 + 528) = v35;
    v16 = v30;
    *(v0 + 432) = v29;
    *(v0 + 448) = v16;
    v17 = v32;
    *(v0 + 464) = v31;
    *(v0 + 480) = v17;
    outlined destroy of MLS.Group(v0 + 432);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v28);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator group returning group to caller { identifier: %s, group: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v19 = *(v0 + 1000);
  v20 = *(v0 + 936);
  v21 = *(v0 + 184);
  v22 = *(v0 + 200);
  v23 = *(v0 + 168);
  *(v20 + 96) = *(v0 + 216);
  *(v20 + 64) = v21;
  *(v20 + 80) = v22;
  *(v20 + 48) = v23;
  v24 = *(v0 + 120);
  v25 = *(v0 + 152);
  *(v20 + 16) = *(v0 + 136);
  *(v20 + 32) = v25;
  *v20 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 640));

  v26 = *(v0 + 8);

  return v26();
}

{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1152);
  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = *(v0 + 1208);
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 1216);
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = *(v0 + 1184);
  }

  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 1176);
  }

  v10 = *(v0 + 960);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v11 = *(v0 + 1008);
  v12 = *(v0 + 976);
  v13 = *(v0 + 968);
  v14 = *(v0 + 944);
  swift_getErrorValue();
  v15 = *(v0 + 816);
  v16 = Error.readableDescription.getter(*(v0 + 824), *(v0 + 832));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v16, v17, v14, v13, v12, "SwiftMLSClientCoordinator group failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v18 = *(v0 + 840);
  v19 = Error.readableDescription.getter(*(v0 + 848), *(v0 + 856));
  *(v0 + 1256) = v19;
  *(v0 + 1264) = v20;
  *(v0 + 864) = 5;
  *(v0 + 872) = v19;
  *(v0 + 880) = v20;
  *(v0 + 1272) = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v11, 0);
}

{
  v1 = v0[159];
  v2 = v0[158];
  v3 = v0[157];
  swift_allocError();
  *v4 = 5;
  *(v4 + 8) = v3;
  *(v4 + 16) = v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  v5 = v0[125];

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 720);
  v2 = *(v0 + 728);
  v3 = *(v0 + 736);
  lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  v5 = *(v0 + 1000);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1024);
  v6 = *v2;
  *(*v2 + 1032) = v1;

  if (v1)
  {
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  else
  {
    v8 = *(v4 + 976);
    v9 = *(v4 + 944);

    *(v4 + 1280) = a1 & 1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1096);
  v6 = *v2;
  *(*v2 + 1104) = v1;

  if (v1)
  {
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  else
  {
    *(v4 + 1112) = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 1120);
  v4 = *v1;
  *(*v1 + 1128) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1168);
  v6 = *v2;
  *(v3 + 1176) = a1;
  *(v3 + 1184) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), 0, 0);
}

{
  v6 = *(*v3 + 1192);
  v7 = *v3;
  v7[150] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), 0, 0);
  }

  else
  {
    v8 = v7[136];
    v9 = v7[135];
    v21 = v7[134];
    v10 = v7[133];
    v7[151] = a2;
    v7[152] = a1;
    ObjectType = swift_getObjectType();
    v7[111] = v9;
    v7[112] = v8;
    v12 = *(v21 + 64);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[153] = v14;
    *v14 = v7;
    v14[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
    v15 = v7[134];
    v16 = v7[133];
    v17 = v7[120];
    v18 = v7[119];

    return (v20)(v18, v17, v7 + 111, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 1224);
  v8 = *v3;
  *(*v3 + 1232) = v2;

  if (v2)
  {
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  else
  {
    *(v6 + 1240) = a2;
    *(v6 + 1248) = a1;
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 128) = a3;
  *(v4 + 136) = v3;
  *(v4 + 120) = a2;
  *(v4 + 144) = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  *(v4 + 160) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:)()
{
  v25 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v0[21] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v24);
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator updateGroupDetails called { group: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = v0[19];
  if (v9 >> 60 == 15)
  {
    v10 = v0[21];
    v12 = v0[16];
    v11 = v0[17];

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[15];
      v15 = v0[16];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v24);
      _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator updateGroupDetails returning to caller { group: %s }", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    v22 = v0[17];
    v21 = v0[18];
    v23 = v0[16];
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    outlined copy of Data?(v21, v9);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:), 0, 0);
  }
}

{
  v1 = v0[17];
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  ObjectType = swift_getObjectType();
  v5 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[11] = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[12] = v5;
  v6 = *(v2 + 56);

  v14 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:);
  v9 = v0[19];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[18];

  return (v14)(v12, v9, v10, v11, v0 + 11, ObjectType, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 96);

  if (v0)
  {
    v6 = MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:);
  }

  else
  {
    v6 = MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:), v1, 0);
}

{
  v13 = v0;
  outlined consume of Data?(v0[18], v0[19]);
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v12);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator updateGroupDetails returning to caller { group: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  swift_getErrorValue();
  v6 = *(v0 + 16);
  v7 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v7, v8, v4, v5, v3, "SwiftMLSClientCoordinator updateGroupDetails failed saving groupClientContextBlob { group: %s, error: %s }");

  swift_getErrorValue();
  v9 = *(v0 + 40);
  v10 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
  *(v0 + 192) = v10;
  *(v0 + 200) = v11;
  *(v0 + 64) = 4;
  *(v0 + 72) = v10;
  *(v0 + 80) = v11;
  *(v0 + 208) = lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:), v2, 0);
}

{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[18];
  v5 = v0[19];
  swift_allocError();
  *v6 = 4;
  *(v6 + 8) = v3;
  *(v6 + 16) = v2;
  outlined consume of Data?(v4, v5);
  v7 = v0[1];

  return v7();
}

void closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
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

uint64_t MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 136) = v3;
  *(v4 + 144) = v5;
  *(v4 + 152) = v6;
  *(v4 + 224) = *(a3 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  *(v4 + 160) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.otherMembers(group:context:), v7, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)()
{
  v16 = v0;
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v0[21] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[18];
    v6 = v0[19];
    v9 = v0[15];
    v8 = v0[16];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v15);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v15);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator otherMembers called { identifier: %s, group: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v12 = v0[19];
  v13 = v0[17];
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.otherMembers(group:context:), 0, 0);
}

{
  v1 = *(v0 + 136);
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  ObjectType = swift_getObjectType();
  v5 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *(v0 + 88) = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 96) = v5;
  v6 = *(v2 + 72);

  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.otherMembers(group:context:);
  v9 = *(v0 + 224);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);

  return v13(v11, v10, v9, v0 + 88, ObjectType, v2);
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.otherMembers(group:context:), v2, 0);
}

{
  v36 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 224);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v35);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v8;

    *(v11 + 18) = 2080;
    v13 = MEMORY[0x266754630](v7, &type metadata for MLS.PersistedMember);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v35);

    *(v11 + 20) = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator otherMembers returning members to caller { identifier: %s, includePendingMembers: %{BOOL}d, members: %s }", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v16 = *(v0 + 152);
  }

  v17 = *(v0 + 184);
  v18 = *(v17 + 16);
  if (v18)
  {
    v35 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v35;
    v20 = (v17 + 56);
    do
    {
      v21 = *(v0 + 160);
      v22 = *(v20 - 3);
      v23 = *(v20 - 2);
      v24 = *(v20 - 1);
      v25 = *v20;
      outlined copy of MLS.AllMember();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v26 = *(v0 + 160);
        swift_task_reportUnexpectedExecutor();
      }

      v35 = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v19 = v35;
      }

      v20 += 32;
      *(v19 + 16) = v28 + 1;
      v29 = v19 + 32 * v28;
      *(v29 + 32) = v22;
      *(v29 + 40) = v23;
      *(v29 + 48) = v24;
      *(v29 + 56) = v25;
      --v18;
    }

    while (v18);
    v30 = *(v0 + 184);
  }

  else
  {
    v31 = *(v0 + 184);

    v19 = MEMORY[0x277D84F90];
  }

  v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v19);

  v33 = *(v0 + 8);

  return v33(v32);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 224);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  swift_getErrorValue();
  v7 = *(v0 + 16);
  v8 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
  closure #1 in MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)(v8, v9, v5, v6, v4);

  swift_getErrorValue();
  v10 = *(v0 + 40);
  v11 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
  *(v0 + 200) = v11;
  *(v0 + 208) = v12;
  *(v0 + 64) = 4;
  *(v0 + 72) = v11;
  *(v0 + 80) = v12;
  *(v0 + 216) = lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.otherMembers(group:context:), v3, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  swift_allocError();
  *v4 = 4;
  *(v4 + 8) = v3;
  *(v4 + 16) = v2;
  v5 = v0[1];

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v7 = *(v3 + 96);

  if (v1)
  {
    v8 = MLS.SwiftMLSClientCoordinator.otherMembers(group:context:);
  }

  else
  {
    v8 = MLS.SwiftMLSClientCoordinator.otherMembers(group:context:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
    _os_log_impl(&dword_264F1F000, oslog, v9, "SwiftMLSClientCoordinator otherMembers failed to load group members { identifier: %s, error: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.version(group:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v2[7] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.version(group:), v3, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.version(group:)()
{
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.version(group:);

  return v8(v2, v3);
}

{
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.version(group:);

  return v8(v2, v3);
}

{
  v1 = *(v0 + 80);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    if ((v2 & 0x100000000) != 0)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    *v3 = v2;
    *(v3 + 8) = v2;
    *(v3 + 16) = v1;
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t MLS.SwiftMLSClientCoordinator.version(group:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[8];
  v6 = *v2;

  if (v1)
  {
    v7 = v6[1];

    return v7();
  }

  else
  {
    v9 = v4[7];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.version(group:), v9, 0);
  }
}

{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.version(group:), v3, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.addMessages(group:commitOutput:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a1;
  v50 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for MLS.Group.Message();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = a5[3];
  v19 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v18);
  (*(v19 + 16))(v18, v19);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of NSObject?(v9, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_264F1F000, v20, v21, "SwiftMLSClientCoordinator addMessages missing welcome message", v22, 2u);
      MEMORY[0x266755550](v22, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v23 = 4;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v25 = v17;
    (*(v11 + 32))(v17, v9, v10);
    v26 = a5[3];
    v27 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v26);
    (*(v27 + 8))(v26, v27);
    v28 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v47 = v29;
    v48 = v28;
    v46 = *(v11 + 8);
    v46(v15, v10);
    v30 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v31 = [v30 UUIDString];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v36 = v35;
    v37 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v38 = [v37 UUIDString];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    result = (v46)(v25, v10);
    v43 = v49;
    v42 = v50;
    *v49 = v45;
    v43[1] = v33;
    v44 = v47;
    v43[2] = v48;
    v43[3] = v44;
    *v42 = v39;
    v42[1] = v41;
    v42[2] = v34;
    v42[3] = v36;
  }

  return result;
}

uint64_t MLS.SwiftMLSClientCoordinator.getContextAfterCommit(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v43 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator getContextAfterCommit accessing data from commitOutput }", v10, 2u);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v44 = (*(v12 + 40))(v11, v12);
  v14 = v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 24))(v15, v16);
  v17 = type metadata accessor for MLS.Group.GroupInfo();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    outlined destroy of NSObject?(v7, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_264F1F000, v19, v20, "SwiftMLSClientCoordinator getContextAfterCommit commitOutput missing nextGroupInfo", v21, 2u);
      MEMORY[0x266755550](v21, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v22 = 19;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    swift_willThrow();
    return outlined consume of Data?(v44, v14);
  }

  v41 = v14;
  v23 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v25 = v24;
  (*(v18 + 8))(v7, v17);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v28 = *(v27 + 32);
  outlined copy of Data._Representation(v23, v25);
  v29 = v28(v26, v27);
  if (v30 >> 60 == 15)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_264F1F000, v31, v32, "SwiftMLSClientCoordinator getContextAfterCommit commitOutput missing epochAuthenticator", v33, 2u);
      MEMORY[0x266755550](v33, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v34 = 18;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v23, v25);
    outlined consume of Data._Representation(v23, v25);
    v14 = v41;
    return outlined consume of Data?(v44, v14);
  }

  v36 = v29;
  v37 = v30;
  result = outlined consume of Data._Representation(v23, v25);
  v38 = v42;
  *v42 = v36;
  v38[1] = v37;
  v39 = v41;
  v38[2] = v44;
  v38[3] = v39;
  v38[4] = v23;
  v38[5] = v25;
  return result;
}

uint64_t MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  v7 = *a5;
  v8 = a5[1];
  *(v6 + 80) = v5;
  *(v6 + 88) = v7;
  *(v6 + 96) = v8;
  *(v6 + 104) = *(a5 + 1);
  *(v6 + 120) = a5[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 128) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:), v9, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:)()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v18 = v0[8];
  v19 = v0[9];
  v17 = v0[7];
  v6 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v20 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v21 = v0[11];
  v23 = type metadata accessor for MLS.AddMembersOperation();
  v7 = *(v23 + 48);
  v8 = *(v23 + 52);
  v9 = swift_allocObject();

  v24 = *(v5 + 80);
  v0[17] = v9;
  outlined copy of Data?(v3, v2);

  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  *(v9 + 16) = v17;
  *(v9 + 24) = v18;
  *(v9 + 32) = v19;
  *(v9 + 40) = v21;
  *(v9 + 48) = v4;
  *(v9 + 56) = v3;
  *(v9 + 64) = v2;
  *(v9 + 72) = v1;
  *(v9 + 80) = v24;
  *(v9 + 96) = v20;
  *(v9 + 104) = v6;
  v10 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  v0[5] = v9;
  v11 = *(*v10 + 216);

  v22 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[18] = v13;
  v14 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation, type metadata accessor for MLS.AddMembersOperation);
  *v13 = v0;
  v13[1] = MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:);
  v15 = v0[6];

  return (v22)(v15, v0 + 5, v23, v14, v0 + 2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;

  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;
  v7 = *a5;
  v8 = a5[1];
  *(v6 + 120) = v5;
  *(v6 + 128) = v7;
  *(v6 + 136) = v8;
  *(v6 + 144) = *(a5 + 1);
  *(v6 + 160) = a5[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 168) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:), v9, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:)()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v21 = *(v0 + 128);
  v18 = *(v0 + 104);
  v19 = *(v0 + 112);
  v17 = *(v0 + 96);
  outlined init with copy of ServerBag.MLS(v5 + 104, v0 + 16);
  v6 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v20 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v23 = type metadata accessor for MLS.KickMembersOperation();
  v7 = *(v23 + 48);
  v8 = *(v23 + 52);
  v9 = swift_allocObject();

  v24 = *(v5 + 80);
  *(v0 + 176) = v9;
  outlined copy of Data?(v4, v2);

  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  *(v9 + 16) = v17;
  *(v9 + 24) = v18;
  *(v9 + 32) = v19;
  *(v9 + 40) = v21;
  *(v9 + 48) = v3;
  *(v9 + 56) = v4;
  *(v9 + 64) = v2;
  *(v9 + 72) = v1;
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v9 + 80);
  *(v9 + 120) = v24;
  *(v9 + 136) = v20;
  *(v9 + 144) = v6;
  v10 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 80) = v9;
  v11 = *(*v10 + 216);

  v22 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  v14 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.KickMembersOperation and conformance MLS.KickMembersOperation, type metadata accessor for MLS.KickMembersOperation);
  *v13 = v0;
  v13[1] = MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:);
  v15 = *(v0 + 88);

  return v22(v15, v0 + 80, v23, v14, v0 + 56);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;

  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t MLS.SwiftMLSClientCoordinator.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = *(a4 + 8);
  *(v5 + 80) = *a4;
  *(v5 + 88) = v6;
  *(v5 + 96) = *(a4 + 16);
  *(v5 + 112) = *(a4 + 32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  *(v5 + 120) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.downgrade(group:context:), v7, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.downgrade(group:context:)()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v21 = v0[10];
  v23 = v0[9];
  v18 = v0[7];
  v19 = v0[8];
  v5 = *(v23 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v20 = *(v23 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMd, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMR);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v0[16] = v9;
  v10 = *(*v9 + 160);

  outlined copy of Data?(v3, v2);

  Logger.init(subsystem:category:)();
  *(v9 + 16) = v18;
  *(v9 + 24) = v19;
  *(v9 + 32) = v21;
  *(v9 + 40) = v4;
  *(v9 + 48) = v3;
  *(v9 + 56) = v2;
  *(v9 + 64) = v1;
  *(v9 + 72) = v20;
  *(v9 + 80) = v5;
  *(v9 + 88) = 1;
  v11 = *(v23 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  v0[5] = v9;
  v12 = *(*v11 + 216);

  v22 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[17] = v14;
  v15 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeOperation<MLS.DowngradeError, MLS.DowngradeContext<Data>, MLS.DowngradeProcessedContext<Data>> and conformance MLS.DowngradeOperation<A, B, C>, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMd, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMR);
  *v14 = v0;
  v14[1] = MLS.SwiftMLSClientCoordinator.downgrade(group:context:);
  v16 = v0[6];

  return (v22)(v16, v0 + 5, v6, v15, v0 + 2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;

  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.downgrade(group:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.downgrade(group:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
  swift_allocError();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t MLS.SwiftMLSClientCoordinator.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 96) = a3;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  v6 = *a4;
  v7 = a4[1];
  *(v5 + 112) = *v4;
  *(v5 + 120) = v6;
  *(v5 + 128) = v7;
  *(v5 + 136) = *(a4 + 1);
  *(v5 + 152) = a4[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v5 + 160) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.leave(group:context:), v8, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.leave(group:context:)()
{
  v31 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v22 = *(v0 + 112);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v24 = *(v0 + 88);
  v23 = type metadata accessor for MLS.LeaveGroupOperation();
  *&v26 = v5;
  *(&v26 + 1) = v4;
  v27 = v3;
  v28 = v2;
  v8 = *(v6 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v9 = *(v6 + 96);
  v10 = *(v6 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v11 = *(v6 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v29 = v1;
  v30[0] = v10;
  v30[1] = v11;

  outlined copy of Data?(v3, v2);

  v12 = *(v22 + 96);
  *(v0 + 16) = *(v22 + 80);
  *(v0 + 32) = v12;
  v13 = type metadata accessor for MLS.EventSender();
  v14 = specialized MLS.LeaveGroupOperation.__allocating_init(group:context:groupLoader:eventSender:clientIdentifier:)(v24, v7, &v26, v8, v9, v30, v23, v13, &protocol witness table for MLS.EventSender<A, B>);
  *(v0 + 168) = v14;
  v15 = *(v6 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 72) = v14;
  v16 = *(*v15 + 216);
  v25 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 176) = v18;
  v19 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.LeaveGroupOperation and conformance MLS.LeaveGroupOperation, type metadata accessor for MLS.LeaveGroupOperation);
  *v18 = v0;
  v18[1] = MLS.SwiftMLSClientCoordinator.leave(group:context:);
  v20 = *(v0 + 80);

  return v25(v20, v0 + 72, v23, v19, v0 + 48);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;

  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.leave(group:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.leave(group:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[25] = a5;
  v6[26] = v5;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v8 = *(*(type metadata accessor for MLS.KeyPackageProvider() - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v9 = *(a4 - 8);
  v6[28] = v9;
  v10 = *(v9 + 64) + 15;
  v6[29] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  v6[30] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:), v11, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:)()
{
  v29 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v24 = v2;
  v25 = *(v0 + 168);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v10 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *(v0 + 16) = &type metadata for MLS.GroupOperationError;
  *(v0 + 24) = v5;
  *(v0 + 32) = v9;
  *(v0 + 40) = v10;
  *(v0 + 48) = v6;
  *(v0 + 56) = &protocol witness table for <> MLS.GroupOperationProcessedContext<A>;
  v11 = type metadata accessor for MLS.CheckKeyPackageExpirationOperation();
  (*(v1 + 16))(v2, v8, v5);
  v12 = v3[10];
  v13 = v3[11];
  v14 = v3[12];
  outlined init with copy of ServerBag.MLS((v3 + 13), v0 + 64);
  outlined init with copy of MLS.KeyPackageProvider(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider, v4);
  v15 = *(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v16 = *(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v27 = *(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);
  v28[0] = v15;
  v28[1] = v16;

  swift_unknownObjectRetain();

  v17 = MLS.CheckKeyPackageExpirationOperation.__allocating_init(group:context:persister:eventSender:credentialProvider:keyPackageProvider:featureFlagsStore:clientIdentifier:)(v25, v7, v24, v12, v13, v14, &protocol witness table for MLS.EventSender<A, B>, (v0 + 64), v4, &v27, v28);
  *(v0 + 248) = v17;
  v18 = *(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 160) = v17;
  v19 = *(*v18 + 216);
  v26 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  *(v0 + 256) = v21;
  WitnessTable = swift_getWitnessTable();
  *v21 = v0;
  v21[1] = MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:);

  return v26(v0 + 104, v0 + 160, v11, WitnessTable, v0 + 136);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v12 = *v1;

  if (v0)
  {
    v4 = v2[30];
    v5 = MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:);
  }

  else
  {
    v6 = v2[30];
    v7 = v2[13];
    v8 = v2[14];
    v10 = v2[15];
    v9 = v2[16];
    outlined consume of Data?(v7, v8);

    v5 = MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:);
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[27];

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v7 = v4;
  *(v7 + 8) = v5;
  *(v7 + 16) = v6;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 384) = a5;
  *(v7 + 392) = v6;
  *(v7 + 368) = a3;
  *(v7 + 376) = a4;
  *(v7 + 352) = a1;
  *(v7 + 360) = a2;
  v8 = *(a6 + 112);
  *(v7 + 112) = *(a6 + 96);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(a6 + 128);
  *(v7 + 160) = *(a6 + 144);
  v9 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v9;
  v10 = *(a6 + 80);
  *(v7 + 80) = *(a6 + 64);
  *(v7 + 96) = v10;
  v11 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v11;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v7 + 400) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:), v12, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:)()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  v6 = type metadata accessor for MLS.EncryptOperation();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v0 + 408) = v9;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 168, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  Logger.init(subsystem:category:)();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  *(v9 + 32) = v4;
  *(v9 + 40) = v1;
  v10 = *(v0 + 96);
  *(v9 + 112) = *(v0 + 80);
  *(v9 + 128) = v10;
  v11 = *(v0 + 64);
  *(v9 + 80) = *(v0 + 48);
  *(v9 + 96) = v11;
  *(v9 + 192) = *(v0 + 160);
  v12 = *(v0 + 144);
  *(v9 + 160) = *(v0 + 128);
  *(v9 + 176) = v12;
  *(v9 + 144) = *(v0 + 112);
  v13 = *(v0 + 32);
  *(v9 + 48) = *(v0 + 16);
  *(v9 + 64) = v13;
  v14 = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 344) = v9;
  v15 = *(*v14 + 216);
  outlined copy of Data._Representation(v5, v3);

  v21 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 416) = v17;
  v18 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.EncryptOperation and conformance MLS.EncryptOperation, type metadata accessor for MLS.EncryptOperation);
  *v17 = v0;
  v17[1] = MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:);
  v19 = *(v0 + 352);

  return v21(v19, v0 + 344, v6, v18, v0 + 320);
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v7 = *v1;

  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 408);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  swift_allocError();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 192) = a4;
  *(v6 + 200) = v5;
  *(v6 + 176) = a1;
  *(v6 + 184) = a3;
  v7 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = a2[2];
  *(v6 + 60) = *(a2 + 44);
  v8 = *(a5 + 8);
  *(v6 + 208) = *a5;
  *(v6 + 216) = v8;
  *(v6 + 224) = *(a5 + 16);
  *(v6 + 240) = *(a5 + 32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 248) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:), v9, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:)()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v19 = *(v0 + 208);
  v21 = *(v0 + 200);
  v5 = *(v0 + 192);
  v18 = *(v0 + 184);
  v6 = type metadata accessor for MLS.SignOperation();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v0 + 256) = v9;
  outlined init with copy of MLS.SigningInput(v0 + 16, v0 + 80);

  outlined copy of Data?(v3, v2);

  Logger.init(subsystem:category:)();
  v10 = *(v0 + 32);
  *(v9 + 16) = *(v0 + 16);
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v0 + 48);
  *(v9 + 60) = *(v0 + 60);
  *(v9 + 80) = v18;
  *(v9 + 88) = v5;
  *(v9 + 96) = v19;
  *(v9 + 104) = v4;
  *(v9 + 112) = v3;
  *(v9 + 120) = v2;
  *(v9 + 128) = v1;
  v11 = *(v21 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 168) = v9;
  v12 = *(*v11 + 216);

  v20 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 264) = v14;
  v15 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.SignOperation and conformance MLS.SignOperation, type metadata accessor for MLS.SignOperation);
  *v14 = v0;
  v14[1] = MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:);
  v16 = *(v0 + 176);

  return v20(v16, v0 + 168, v6, v15, v0 + 144);
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;

  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
  swift_allocError();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = v6;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  v8 = *(a6 + 8);
  *(v7 + 96) = *a6;
  *(v7 + 104) = v8;
  *(v7 + 112) = *(a6 + 16);
  *(v7 + 128) = *(a6 + 32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v7 + 136) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:), v9, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:)()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v20 = v0[12];
  v22 = v0[11];
  v18 = v0[9];
  v19 = v0[10];
  v5 = v0[8];
  v17 = v0[7];
  v6 = type metadata accessor for MLS.EncryptGroupNameOperation();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v0[18] = v9;

  outlined copy of Data?(v3, v2);

  Logger.init(subsystem:category:)();
  v9[2] = v17;
  v9[3] = v5;
  v9[4] = v18;
  v9[5] = v19;
  v9[6] = v20;
  v9[7] = v4;
  v9[8] = v3;
  v9[9] = v2;
  v9[10] = v1;
  v10 = *(v22 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  v0[5] = v9;
  v11 = *(*v10 + 216);

  v21 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[19] = v13;
  v14 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation, type metadata accessor for MLS.EncryptGroupNameOperation);
  *v13 = v0;
  v13[1] = MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  v15 = v0[6];

  return (v21)(v15, v0 + 5, v6, v14, v0 + 2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;

  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  swift_allocError();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 936) = v6;
  *(v7 + 928) = a5;
  *(v7 + 920) = a4;
  *(v7 + 912) = a3;
  *(v7 + 904) = a2;
  *(v7 + 896) = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  *(v7 + 944) = v9;
  v10 = *(v9 - 8);
  *(v7 + 952) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 960) = swift_task_alloc();
  v12 = type metadata accessor for MLS.MLSError();
  *(v7 + 968) = v12;
  v13 = *(v12 - 8);
  *(v7 + 976) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = swift_task_alloc();
  *(v7 + 1008) = swift_task_alloc();
  *(v7 + 1016) = swift_task_alloc();
  v15 = *(a6 + 16);
  *(v7 + 456) = *a6;
  *(v7 + 472) = v15;
  *(v7 + 488) = *(a6 + 32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static MLSActor.shared;
  *(v7 + 1024) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v16, 0);
}

void MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  v1 = v0[117];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[61];
  v0[108] = v4;
  v0[109] = v4;
  v0[129] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MetricCollector((v0 + 108), (v0 + 110));
  outlined init with copy of MLS.OutgoingEventState?((v0 + 57), (v0 + 62), &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  outlined copy of Data._Representation(v3, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?((v0 + 57), &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  outlined consume of Data._Representation(v3, v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[114];
    v8 = v0[113];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315394;
    v11 = v0[57];
    v12 = v0[58];

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = Data.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v25);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator processIncoming groupName enqueueing event { identifier: %s, groupName: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v17 = *(v0[117] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v0[130] = v17;
  v18 = v0[58];
  v0[131] = v0[57];
  v0[132] = v18;
  v24 = *(*v17 + 192) + **(*v17 + 192);
  v19 = *(*(*v17 + 192) + 4);
  v20 = swift_task_alloc();
  v0[133] = v20;
  v21 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v20 = v0;
  v20[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  v22 = v0[116];
  v23 = v0[115];
  v27 = 0;
  v28 = 0;
  v31 = v0 + 97;
  v29 = &type metadata for MLS.IncomingMessageError;
  v30 = v21;

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[151] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[85];
    v2 = v0[86];
    __swift_project_boxed_opaque_existential_1(v0 + 82, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[152] = v5;
    *v5 = v0;
    v5[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v6 = v0[120];

    v7(v6, v1, v2);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 1064);
  v7 = *v1;

  v4 = *(v2 + 1024);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[130];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[113];
  v7 = swift_task_alloc();
  v0[134] = v7;
  v7[2] = v0 + 109;
  v7[3] = v2;
  v7[4] = v0 + 57;
  v7[5] = v6;
  v7[6] = v5;
  v7[7] = v0 + 67;
  v7[8] = v4;
  v7[9] = v3;
  v8 = *(*v1 + 152);
  v17 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[135] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  v12 = v0[132];
  v13 = v0[131];
  v14 = v0[130];
  v15 = v0[112];

  return (v17)(v15, v13, v12, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v7, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1080);
  v9 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v4 = *(v2 + 1024);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v6 = *(v2 + 1072);
    v7 = *(v2 + 1024);

    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[123];
  v6 = v0[120];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  v7 = v0[109];

  v8 = v0[1];

  return v8();
}

{
  v1 = *(v0 + 776);
  v2 = *(v0 + 784);
  v3 = *(v0 + 792);
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  v5 = *(v0 + 1016);
  v6 = *(v0 + 1008);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v10 = *(v0 + 960);
  v11 = *(v0 + 872);

  v12 = *(v0 + 8);

  return v12();
}

{
  v97 = v0;
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 968);

  *(v0 + 888) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 1016);
    v7 = *(v0 + 1008);
    v8 = *(v0 + 976);
    v9 = *(v0 + 968);
    v10 = *(v0 + 936);

    (*(v8 + 32))(v7, v6, v9);
    if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 1)
    {
      v11 = *(v0 + 1032);
      v12 = *(v0 + 936);
      v13 = *(*(v0 + 976) + 16);
      v13(*(v0 + 1000), *(v0 + 1008), *(v0 + 968));
      outlined init with copy of MLS.OutgoingEventState?(v0 + 456, v0 + 696, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v0 + 456, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v14, v15))
      {
        v86 = *(v0 + 1056);
        v16 = *(v0 + 1048);
        v17 = *(v0 + 1000);
        v18 = *(v0 + 976);
        v19 = *(v0 + 968);
        v20 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v95 = v92;
        *v20 = 136315394;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v86, &v95);
        *(v20 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
        swift_allocError();
        v13(v21, v17, v19);
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = *(v18 + 8);
        v23(v17, v19);
        *(v20 + 14) = v22;
        *v89 = v22;
        _os_log_impl(&dword_264F1F000, v14, v15, "SwiftMLSClientCoordinator processIncoming groupName performing self heal { identifier: %s, error: %@ }", v20, 0x16u);
        outlined destroy of NSObject?(v89, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v89, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        MEMORY[0x266755550](v92, -1, -1);
        MEMORY[0x266755550](v20, -1, -1);
      }

      else
      {
        v53 = *(v0 + 1000);
        v54 = *(v0 + 976);
        v55 = *(v0 + 968);

        v23 = *(v54 + 8);
        v23(v53, v55);
      }

      *(v0 + 1096) = v23;
      outlined init with copy of ServerBag.MLS(v0 + 536, v0 + 736);
      *(v0 + 392) = 0u;
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
      *(v0 + 440) = 0u;
      v56 = swift_task_alloc();
      *(v0 + 1104) = v56;
      *v56 = v0;
      v56[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
      v57 = *(v0 + 936);
      v58 = *(v0 + 928);
      v59 = *(v0 + 920);

      return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v59, v58, v0 + 736, (v0 + 392), 0);
    }

    v34 = *(v0 + 1008);
    v35 = *(v0 + 976);
    v36 = *(v0 + 936);
    v37 = MLS.SwiftMLSClientCoordinator.healingMethod(error:)();
    v38 = *(v35 + 16);
    v39 = *(v0 + 1032);
    v40 = *(v0 + 1008);
    v41 = *(v0 + 968);
    v42 = *(v0 + 936);
    if (v37 == 2)
    {
      v38(*(v0 + 992), v40, v41);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 456, v0 + 616, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v0 + 456, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v43, v44))
      {
        v87 = *(v0 + 1056);
        v45 = *(v0 + 1048);
        v46 = *(v0 + 992);
        v47 = *(v0 + 976);
        v48 = *(v0 + 968);
        v49 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v95 = v93;
        *v49 = 136315394;
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v87, &v95);
        *(v49 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
        swift_allocError();
        v38(v50, v46, v48);
        v51 = _swift_stdlib_bridgeErrorToNSError();
        v52 = *(v47 + 8);
        v52(v46, v48);
        *(v49 + 14) = v51;
        *v90 = v51;
        _os_log_impl(&dword_264F1F000, v43, v44, "SwiftMLSClientCoordinator processIncoming groupName performing era advancement { identifier: %s, error: %@ }", v49, 0x16u);
        outlined destroy of NSObject?(v90, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v90, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x266755550](v93, -1, -1);
        MEMORY[0x266755550](v49, -1, -1);
      }

      else
      {
        v70 = *(v0 + 992);
        v71 = *(v0 + 976);
        v72 = *(v0 + 968);

        v52 = *(v71 + 8);
        v52(v70, v72);
      }

      *(v0 + 1120) = v52;
      *(v0 + 328) = 0u;
      *(v0 + 344) = 0u;
      *(v0 + 360) = 0u;
      *(v0 + 376) = 0u;
      v73 = swift_task_alloc();
      *(v0 + 1128) = v73;
      *v73 = v0;
      v73[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
      v74 = *(v0 + 936);
      v75 = *(v0 + 928);
      v76 = *(v0 + 920);

      return MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v76, v75, v0 + 536, (v0 + 328), 0);
    }

    v38(*(v0 + 984), v40, v41);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 456, v0 + 576, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 456, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v60, v61))
    {
      v88 = *(v0 + 1056);
      v62 = *(v0 + 1048);
      v63 = *(v0 + 984);
      v64 = *(v0 + 976);
      v65 = *(v0 + 968);
      v66 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95 = v94;
      *v66 = 136315394;
      *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v88, &v95);
      *(v66 + 12) = 2112;
      lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
      swift_allocError();
      v38(v67, v63, v65);
      v68 = _swift_stdlib_bridgeErrorToNSError();
      v69 = *(v64 + 8);
      v69(v63, v65);
      *(v66 + 14) = v68;
      *v91 = v68;
      _os_log_impl(&dword_264F1F000, v60, v61, "SwiftMLSClientCoordinator processIncoming groupName SwiftMLS failed with unhealable error { identifier: %s, error: %@ }", v66, 0x16u);
      outlined destroy of NSObject?(v91, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v91, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x266755550](v94, -1, -1);
      MEMORY[0x266755550](v66, -1, -1);
    }

    else
    {
      v77 = *(v0 + 984);
      v78 = *(v0 + 976);
      v79 = *(v0 + 968);

      v69 = *(v78 + 8);
      v69(v77, v79);
    }

    v80 = *(v0 + 1008);
    v81 = *(v0 + 968);
    v95 = 0;
    v96 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v82 = v96;
    *(v0 + 816) = v95;
    *(v0 + 824) = v82;
    MEMORY[0x2667545A0](0x534C4D7466697753, 0xEE002E726F727245);
    _print_unlocked<A, B>(_:_:)();
    v83 = *(v0 + 816);
    v84 = *(v0 + 824);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v85 = 9;
    *(v85 + 8) = v83;
    *(v85 + 16) = v84;
    swift_willThrow();
    v69(v80, v81);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    v24 = *(v0 + 1088);
  }

  v25 = *(v0 + 1016);
  v26 = *(v0 + 1008);
  v27 = *(v0 + 1000);
  v28 = *(v0 + 992);
  v29 = *(v0 + 984);
  v30 = *(v0 + 960);
  v31 = *(v0 + 872);

  v32 = *(v0 + 8);

  return v32();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v7 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v4 = *(v2 + 1024);
    outlined destroy of NSObject?(v2 + 736, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v4 = *(v2 + 1024);
    outlined destroy of NSObject?(v2 + 736, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1128);
  v7 = *v1;
  *(*v1 + 1136) = v0;

  v4 = *(v2 + 1024);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 936);
  *(v0 + 800) = *(v0 + 472);
  outlined init with copy of ServerBag.MLS(v0 + 536, v0 + 656);
  *(v0 + 1144) = *(v1 + 80);
  *(v0 + 1152) = *(v1 + 88);
  v2 = v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 1160) = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 1168) = *(v2 + 8);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 800, v0 + 832, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v1 = v0[116];
  v2 = v0[85];
  v3 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[147] = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[85];
  v2 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[150] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[167] = v0[148];
  v1 = v0[116];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);

  v2 = v0[128];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1216);
  v6 = *v1;
  *(*v1 + 1224) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 800, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[118];
  v0[154] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[155] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[85];
  v6 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[156] = v9;
  *v9 = v0;
  v9[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v11(v5, v6);
}

{
  v1 = v0[85];
  v2 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[159] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[167] = v0[153];
  v1 = v0[116];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);

  v2 = v0[128];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v2, 0);
}

{
  v1 = v0[158];
  v2 = v0[155];
  v3 = v0[154];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[158];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[157];
  }

  v0[167] = v0[160];
  v6 = v0[116];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[128];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v7, 0);
}

{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1240);
  v6 = *(v0 + 1232);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 1208);
  v17 = v7;
  v8 = *(v0 + 1192);
  v20 = *(v0 + 1024);
  v9 = *(v0 + 928);
  v10 = *(v0 + 920);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 1288);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1296);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 1264);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1256);
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
  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 656));
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

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v20, 0);
}

{
  v1 = *(v0 + 896);
  (*(*(v0 + 976) + 8))(*(v0 + 1008), *(v0 + 968));
  v2 = *(v0 + 872);
  *v1 = *(v0 + 800);
  v3 = *(v0 + 216);
  v4 = *(v0 + 168);
  v5 = *(v0 + 200);
  *(v1 + 80) = *(v0 + 184);
  *(v1 + 96) = v5;
  *(v1 + 64) = v4;
  v6 = *(v0 + 152);
  v7 = *(v0 + 120);
  *(v1 + 32) = *(v0 + 136);
  *(v1 + 48) = v6;
  *(v1 + 16) = v7;
  *(v1 + 112) = v3;
  *(v1 + 120) = v2;
  v8 = *(v0 + 888);

  v9 = *(v0 + 1016);
  v10 = *(v0 + 1008);
  v11 = *(v0 + 1000);
  v12 = *(v0 + 992);
  v13 = *(v0 + 984);
  v14 = *(v0 + 960);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
  v15 = *(v0 + 872);

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = v0[161];
  v2 = v0[158];
  v3 = v0[155];
  v4 = v0[154];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[161];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[162];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[158];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[157];
  }

  v0[167] = v0[164];
  v9 = v0[116];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[128];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v10, 0);
}

{
  (*(*(v0 + 976) + 8))(*(v0 + 1008), *(v0 + 968));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  v7 = *(v0 + 960);
  v8 = *(v0 + 872);

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 976) + 8;
  (*(v0 + 1096))(*(v0 + 1008), *(v0 + 968));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  v8 = *(v0 + 960);
  v9 = *(v0 + 872);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 976) + 8;
  (*(v0 + 1120))(*(v0 + 1008), *(v0 + 968));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  v8 = *(v0 + 960);
  v9 = *(v0 + 872);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1176);
  v6 = *v2;
  *(*v2 + 1184) = v1;

  if (v1)
  {
    outlined destroy of NSObject?(v4 + 800, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    *(v4 + 1192) = a1;
    v7 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 1200);
  v4 = *v1;
  *(*v1 + 1208) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1248);
  v6 = *v2;
  *(v3 + 1256) = a1;
  *(v3 + 1264) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 1272);
  v7 = *v3;
  v7[160] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v7 + 100), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
  }

  else
  {
    v8 = v7[146];
    v9 = v7[145];
    v21 = v7[144];
    v10 = v7[143];
    v7[161] = a2;
    v7[162] = a1;
    ObjectType = swift_getObjectType();
    v7[106] = v9;
    v7[107] = v8;
    v12 = *(v21 + 64);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[163] = v14;
    *v14 = v7;
    v14[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v15 = v7[144];
    v16 = v7[143];
    v17 = v7[116];
    v18 = v7[115];

    return (v20)(v18, v17, v7 + 106, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 1304);
  v8 = *v3;
  *(*v3 + 1312) = v2;

  if (v2)
  {
    outlined destroy of NSObject?(v6 + 800, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v9 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    *(v6 + 1320) = a2;
    *(v6 + 1328) = a1;
    v9 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[224] = v23;
  v8[223] = a8;
  v8[222] = a7;
  v8[221] = a6;
  v8[220] = a5;
  v8[219] = a4;
  v8[218] = a3;
  v8[217] = a2;
  v8[216] = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v8[225] = v9;
  v10 = *(v9 - 8);
  v8[226] = v10;
  v11 = *(v10 + 64) + 15;
  v8[227] = swift_task_alloc();
  v8[228] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR) - 8) + 64) + 15;
  v8[229] = swift_task_alloc();
  v13 = type metadata accessor for MLS.Identity.SigningIdentity();
  v8[230] = v13;
  v14 = *(v13 - 8);
  v8[231] = v14;
  v15 = *(v14 + 64) + 15;
  v8[232] = swift_task_alloc();
  v8[233] = swift_task_alloc();
  v16 = type metadata accessor for MLS.Group.Group.DecryptNameInput();
  v8[234] = v16;
  v17 = *(v16 - 8);
  v8[235] = v17;
  v18 = *(v17 + 64) + 15;
  v8[236] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v8[237] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static MLSActor.shared;
  v8[238] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v20, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  v24 = v0;
  v1 = v0[237];
  v2 = v0[219];
  v3 = v0[218];
  v4 = v0[217];
  Date.init()();
  v5 = type metadata accessor for MetricCollector.Event();
  v6 = *(v5 + 20);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  specialized Dictionary.subscript.setter(v1, 0x534C4D7466697753, 0xEE0074696D6D6F43);
  v0[239] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v2, (v0 + 194), &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[219];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v10, *(v10 + 8), &v23);
    _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator processIncoming processing groupName { identifier: %s }", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = v0[236];
  v14 = v0[222];
  outlined copy of Data._Representation(v0[220], v0[221]);
  MLS.Group.Group.DecryptNameInput.init(encryptedName:)();
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v17 = *(v16 + 232);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[240] = v19;
  *v19 = v0;
  v19[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  v20 = v0[236];

  return (v22)(v0 + 189, v20, v15, v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1920);
  v4 = *v1;
  *(*v1 + 1928) = v0;

  v5 = *(v2 + 1904);
  if (v0)
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v130 = v0;
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1768);
  v3 = *(v0 + 1760);
  v4 = *(v0 + 1752);
  v5 = *(v0 + 1744);
  v6 = *(v0 + 1736);
  v7._countAndFlagsBits = 0x534C4D7466697753;
  v7._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v7);
  outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 1392, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  outlined copy of Data._Representation(v3, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  outlined consume of Data._Representation(v3, v2);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v128 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v12, *(v12 + 8), v128);
    *(v13 + 12) = 2080;
    v15 = Data.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v128);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator processIncoming processed groupName { identifier: %s, groupName: %s }", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  v18 = *(v0 + 1536);
  v19 = *(v0 + 1544);
  __swift_project_boxed_opaque_existential_1((v0 + 1512), v18);
  v20 = (*(v19 + 8))(v18, v19);
  if (!v21)
  {
    goto LABEL_6;
  }

  v22 = v21;
  log = v20;
  v23 = *(v0 + 1848);
  v24 = *(v0 + 1840);
  v25 = *(v0 + 1832);
  v26 = *(v0 + 1536);
  v27 = *(v0 + 1544);
  __swift_project_boxed_opaque_existential_1((v0 + 1512), v26);
  (*(v27 + 16))(v26, v27);
  if ((*(v23 + 48))(v25, 1, v24) == 1)
  {
    v28 = *(v0 + 1832);

    outlined destroy of NSObject?(v28, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
LABEL_6:
    v29 = *(v0 + 1912);
    v30 = *(v0 + 1752);
    v31 = *(v0 + 1744);
    outlined init with copy of MLS.OutgoingEventState?(v30, v0 + 1352, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v30, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 1752);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v128 = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v34, *(v34 + 8), v128);
      _os_log_impl(&dword_264F1F000, v32, v33, "SwiftMLSClientCoordinator processIncoming groupName failed to decrypt groupName { identifier: %s }", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266755550](v36, -1, -1);
      MEMORY[0x266755550](v35, -1, -1);
    }

    v37 = *(v0 + 1888);
    v38 = *(v0 + 1880);
    v39 = *(v0 + 1872);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v40 = 9;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    swift_willThrow();
    (*(v38 + 8))(v37, v39);
    goto LABEL_18;
  }

  v122 = *(v0 + 1928);
  v41 = *(v0 + 1744);
  (*(*(v0 + 1848) + 32))(*(v0 + 1864), *(v0 + 1832), *(v0 + 1840));
  v42 = v41[16];
  v43 = v41[17];
  __swift_project_boxed_opaque_existential_1(v41 + 13, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMR);
  v44 = type metadata accessor for MLS.Identity.Credential();
  v45 = *(v44 - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2651D82E0;
  MLS.Identity.SigningIdentity.credential.getter();
  v49 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC8SwiftMLS0F0O8IdentityO10CredentialO_Tt0g5Tf4g_n(v48);
  swift_setDeallocating();
  (*(v45 + 8))(v48 + v47, v44);
  swift_deallocClassInstance();
  v50 = (*(v43 + 8))(v49, v42, v43);
  if (v122)
  {
    v51 = *(v0 + 1888);
    v52 = *(v0 + 1880);
    v53 = *(v0 + 1872);
    v54 = *(v0 + 1864);
    v55 = *(v0 + 1848);
    v56 = *(v0 + 1840);

    (*(v55 + 8))(v54, v56);
    (*(v52 + 8))(v51, v53);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1512));
    v103 = *(v0 + 1896);
    v104 = *(v0 + 1888);
    v105 = *(v0 + 1864);
    v106 = *(v0 + 1856);
    v107 = *(v0 + 1832);
    v108 = *(v0 + 1824);
    v109 = *(v0 + 1816);

    v110 = *(v0 + 8);

    return v110();
  }

  v57 = v50;

  specialized Collection.first.getter(v57, v0 + 1592);

  v58 = *(v0 + 1616);
  v59 = *(v0 + 1912);
  if (v58 > 0xFD)
  {
    v60 = *(v0 + 1864);
    v61 = *(v0 + 1856);
    v62 = *(v0 + 1848);
    v63 = *(v0 + 1840);
    v64 = *(v0 + 1752);
    v65 = *(v0 + 1744);

    (*(v62 + 16))(v61, v60, v63);
    outlined init with copy of MLS.OutgoingEventState?(v64, v0 + 1312, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v64, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 1856);
    v70 = *(v0 + 1848);
    v71 = *(v0 + 1840);
    if (v68)
    {
      v72 = *(v0 + 1752);
      v73 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v128 = v123;
      *v73 = 136315394;
      *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v72, *(v72 + 8), v128);
      *(v73 + 12) = 2080;
      lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60]);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v77 = *(v70 + 8);
      v77(v69, v71);
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v128);

      *(v73 + 14) = v78;
      _os_log_impl(&dword_264F1F000, v66, v67, "SwiftMLSClientCoordinator processIncoming groupName failed to find the sender member { identifier: %s, sender: %s }", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v123, -1, -1);
      MEMORY[0x266755550](v73, -1, -1);
    }

    else
    {

      v77 = *(v70 + 8);
      v77(v69, v71);
    }

    v97 = *(v0 + 1888);
    v98 = *(v0 + 1880);
    v99 = *(v0 + 1872);
    v100 = *(v0 + 1864);
    v101 = *(v0 + 1840);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v102 = 4;
    *(v102 + 8) = 0;
    *(v102 + 16) = 0;
    swift_willThrow();
    v77(v100, v101);
    (*(v98 + 8))(v97, v99);
    goto LABEL_18;
  }

  v79 = *(v0 + 1592);
  v80 = *(v0 + 1600);
  v124 = *(v0 + 1912);
  v81 = *(v0 + 1608);
  v82 = *(v0 + 1752);
  v83 = *(v0 + 1744);
  v84 = *v82;
  *(v0 + 1936) = *v82;
  v85 = *(v82 + 8);
  *(v0 + 1944) = v85;
  *(v0 + 1712) = *(v82 + 16);
  *&v128[7] = *(v82 + 16);
  v120 = v84;
  *(v0 + 1152) = v84;
  *(v0 + 1160) = v85;
  *(v0 + 1168) = v79;
  *(v0 + 1176) = v80;
  *(v0 + 1184) = v81;
  *(v0 + 1192) = v58;
  *(v0 + 1208) = *&v128[15];
  *(v0 + 1193) = *v128;
  *(v0 + 1216) = log;
  *(v0 + 1224) = v22;
  v86 = *(v0 + 1200);
  *(v0 + 1088) = *(v0 + 1184);
  *(v0 + 1104) = v86;
  *(v0 + 1120) = *(v0 + 1216);
  v87 = *(v0 + 1168);
  *(v0 + 1056) = *(v0 + 1152);
  *(v0 + 1072) = v87;
  outlined copy of MLS.AllMember?(v79, v80, v81, v58);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1712, v0 + 1680, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  outlined init with copy of MLS.OutgoingEventState?(v82, v0 + 1272, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1712, v0 + 1648, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  outlined copy of MLS.AllMember?(v79, v80, v81, v58);
  v119 = v85;

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v82, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);

  outlined consume of MLS.AllMember?(v79, v80, v81, v58);
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127 = v121;
    *v90 = 136315650;
    *(v90 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v119, &v127);
    *(v90 + 12) = 2080;
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(log, v22, &v127);
    loga = v88;
    v92 = v91;

    *(v90 + 14) = v92;
    *(v90 + 22) = 2080;
    *v128 = v79;
    *&v128[8] = v80;
    *&v128[16] = v81;
    v129 = v58;
    v93 = MLS.AllMember.description.getter();
    v95 = v94;
    outlined consume of MLS.AllMember();
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &v127);

    *(v90 + 24) = v96;
    _os_log_impl(&dword_264F1F000, loga, v89, "SwiftMLSClientCoordinator processIncoming groupName sending incoming groupNameChange event { identifier: %s, groupName: %s, sender: %s }", v90, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v121, -1, -1);
    MEMORY[0x266755550](v90, -1, -1);
  }

  else
  {

    outlined consume of MLS.AllMember?(v79, v80, v81, v58);
  }

  v112 = *(v0 + 1776);
  v113 = *(v0 + 1744);
  *(v0 + 1952) = v113[12];
  v114 = *(v0 + 1104);
  *(v0 + 984) = *(v0 + 1088);
  *(v0 + 1000) = v114;
  v115 = *(v0 + 1136);
  *(v0 + 1016) = *(v0 + 1120);
  *(v0 + 1032) = v115;
  v116 = *(v0 + 1072);
  *(v0 + 952) = *(v0 + 1056);
  *(v0 + 968) = v116;
  *(v0 + 1048) = 6;
  outlined init with copy of ServerBag.MLS(v112, v0 + 1232);
  *(v0 + 1960) = v113[10];
  *(v0 + 1968) = v113[11];
  v117 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 1976) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v118 = (v113 + v117);
  *(v0 + 1984) = *v118;
  *(v0 + 1992) = v118[1];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v1 = v0[224];
  v2 = v0[157];
  v3 = v0[158];
  __swift_project_boxed_opaque_existential_1(v0 + 154, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[250] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[157];
  v2 = v0[158];
  __swift_project_boxed_opaque_existential_1(v0 + 154, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[253] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[277] = v0[251];
  v1 = v0[224];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 154);

  v2 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2040);
  v6 = *v1;
  *(*v1 + 2048) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 1712, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[228];
  v2 = v0[226];
  v3 = v0[225];
  v0[257] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[258] = v4;
  v5 = *(v2 + 8);
  v0[259] = v5;
  v0[260] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = v0[157];
  v7 = v0[158];
  __swift_project_boxed_opaque_existential_1(v0 + 154, v6);
  v8 = *(v7 + 56);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[261] = v10;
  *v10 = v0;
  v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v12(v6, v7);
}

{
  v1 = v0[157];
  v2 = v0[158];
  __swift_project_boxed_opaque_existential_1(v0 + 154, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[264] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[277] = v0[256];
  v1 = v0[224];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 154);

  v2 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v2, 0);
}

{
  v1 = v0[263];
  v2 = v0[258];
  v3 = v0[257];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[263];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[262];
  }

  v0[277] = v0[265];
  v6 = v0[224];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 154);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v7, 0);
}

{
  v1 = *(v0 + 2192);
  v2 = *(v0 + 2184);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2104);
  v5 = *(v0 + 2064);
  v6 = *(v0 + 2056);
  v24 = v6;
  v25 = v5;
  v7 = *(v0 + 2032);
  v23 = v7;
  v8 = *(v0 + 2016);
  v27 = *(v0 + 1952);
  v9 = *(v0 + 1792);
  v10 = *(v0 + 1784);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 2128);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 2136);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 2104);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 2096);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 640) = v10;
  *(v0 + 648) = v9;
  *(v0 + 656) = v15;
  *(v0 + 664) = v15;
  *(v0 + 672) = v7;
  *(v0 + 680) = v6;
  *(v0 + 688) = v5;
  *(v0 + 696) = v14;
  *(v0 + 704) = v13;
  *(v0 + 712) = v12;
  *(v0 + 720) = v11;
  *(v0 + 728) = v1;
  *(v0 + 736) = v2;
  outlined init with copy of MLS.Group(v0 + 640, v0 + 536);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1232));
  *(v0 + 744) = v10;
  *(v0 + 752) = v9;
  *(v0 + 760) = v15;
  *(v0 + 768) = v15;
  *(v0 + 776) = v23;
  *(v0 + 784) = v24;
  *(v0 + 792) = v25;
  *(v0 + 800) = v14;
  *(v0 + 808) = v13;
  *(v0 + 816) = v12;
  *(v0 + 824) = v11;
  *(v0 + 832) = v1;
  *(v0 + 840) = v2;
  outlined destroy of MLS.Group(v0 + 744);
  v16 = *(v0 + 656);
  *(v0 + 432) = *(v0 + 640);
  *(v0 + 448) = v16;
  *(v0 + 528) = *(v0 + 736);
  v17 = *(v0 + 720);
  *(v0 + 496) = *(v0 + 704);
  *(v0 + 512) = v17;
  v18 = *(v0 + 688);
  *(v0 + 464) = *(v0 + 672);
  *(v0 + 480) = v18;
  v26 = (*v27 + 384);
  v28 = (*v26 + **v26);
  v19 = (*v26)[1];
  v20 = swift_task_alloc();
  *(v0 + 2200) = v20;
  *v20 = v0;
  v20[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  v21 = *(v0 + 1952);

  return v28(v0 + 952, v0 + 432, 1, 1);
}

{
  v2 = *v1;
  v3 = *v1 + 432;
  v4 = *(*v1 + 2200);
  v20 = *v1;
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v5 = *(v2 + 1904);
    outlined destroy of NSObject?(v2 + 1712, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    *(v2 + 328) = *v3;
    *(v2 + 344) = v7;
    *(v2 + 360) = v6;
    v9 = *(v3 + 64);
    v8 = *(v3 + 80);
    v10 = *(v3 + 48);
    *(v2 + 424) = *(v3 + 96);
    *(v2 + 392) = v9;
    *(v2 + 408) = v8;
    *(v2 + 376) = v10;
    outlined destroy of MLS.Group(v2 + 328);
    v11 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v12 = v5;
  }

  else
  {
    v13 = *(v2 + 1904);
    v15 = *(v3 + 16);
    v14 = *(v3 + 32);
    *(v2 + 224) = *v3;
    *(v2 + 240) = v15;
    *(v2 + 256) = v14;
    v17 = *(v3 + 64);
    v16 = *(v3 + 80);
    v18 = *(v3 + 48);
    *(v2 + 320) = *(v3 + 96);
    *(v2 + 288) = v17;
    *(v2 + 304) = v16;
    *(v2 + 272) = v18;
    outlined destroy of MLS.Group(v2 + 224);
    v11 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v12 = v13;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

{
  v1 = v0[266];
  v2 = v0[263];
  v3 = v0[258];
  v4 = v0[257];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[266];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[267];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[263];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[262];
  }

  v0[277] = v0[272];
  v9 = v0[224];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 154);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v10, 0);
}

{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[234];
  (*(v0[231] + 8))(v0[233], v0[230]);
  (*(v2 + 8))(v1, v3);
  outlined destroy of NSObject?((v0 + 144), &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 189);
  v4 = v0[277];
  v5 = v0[237];
  v6 = v0[236];
  v7 = v0[233];
  v8 = v0[232];
  v9 = v0[229];
  v10 = v0[228];
  v11 = v0[227];

  v12 = v0[1];

  return v12();
}

{
  v13 = v0;
  v1 = v0[239];
  v2 = v0[219];
  v3 = v0[218];
  outlined init with copy of MLS.OutgoingEventState?(v2, (v0 + 179), &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[243];
    v7 = v0[242];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v12);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming groupName returning processedContext to caller { identifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = (v0[218] + v0[247]);
  outlined init with copy of ServerBag.MLS(v0[222], (v0 + 184));
  v0[278] = *v10;
  v0[279] = v10[1];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v1 = v0[224];
  v2 = v0[187];
  v3 = v0[188];
  __swift_project_boxed_opaque_existential_1(v0 + 184, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[280] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[187];
  v2 = v0[188];
  __swift_project_boxed_opaque_existential_1(v0 + 184, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[282] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[300] = v0[281];
  v1 = v0[224];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);

  v2 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2272);
  v6 = *v1;
  *(*v1 + 2280) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 1712, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[260];
  v2 = v0[259];
  v3 = v0[227];
  v4 = v0[225];
  v0[286] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[287] = v5;
  v2(v3, v4);
  v6 = v0[187];
  v7 = v0[188];
  __swift_project_boxed_opaque_existential_1(v0 + 184, v6);
  v8 = *(v7 + 56);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[288] = v10;
  *v10 = v0;
  v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v12(v6, v7);
}

{
  v1 = v0[187];
  v2 = v0[188];
  __swift_project_boxed_opaque_existential_1(v0 + 184, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[291] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[300] = v0[285];
  v1 = v0[224];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);

  v2 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v2, 0);
}

{
  v1 = v0[290];
  v2 = v0[287];
  v3 = v0[286];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[290];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[289];
  }

  v0[300] = v0[292];
  v6 = v0[224];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v7, 0);
}

{
  v1 = *(v0 + 2392);
  v2 = *(v0 + 2384);
  v3 = *(v0 + 2376);
  v4 = *(v0 + 2344);
  v5 = *(v0 + 2320);
  v6 = *(v0 + 2296);
  v18 = v6;
  v19 = v2;
  v7 = *(v0 + 2288);
  v17 = v7;
  v8 = *(v0 + 2264);
  v20 = *(v0 + 1904);
  v9 = *(v0 + 1792);
  v10 = *(v0 + 1784);
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
    v12 = *(v0 + 2344);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 2352);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 2320);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 2312);
  }

  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v11;
  *(v0 + 40) = v11;
  *(v0 + 48) = v8;
  *(v0 + 56) = v7;
  *(v0 + 64) = v6;
  *(v0 + 72) = v15;
  *(v0 + 80) = v14;
  *(v0 + 88) = v13;
  *(v0 + 96) = v12;
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  outlined init with copy of MLS.Group(v0 + 16, v0 + 848);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1472));
  *(v0 + 120) = v10;
  *(v0 + 128) = v9;
  *(v0 + 136) = v11;
  *(v0 + 144) = v11;
  *(v0 + 152) = v8;
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  *(v0 + 176) = v15;
  *(v0 + 184) = v14;
  *(v0 + 192) = v13;
  *(v0 + 200) = v12;
  *(v0 + 208) = v1;
  *(v0 + 216) = v19;
  outlined destroy of MLS.Group(v0 + 120);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v20, 0);
}

{
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1864);
  v6 = *(v0 + 1848);
  v7 = *(v0 + 1840);
  v18 = *(v0 + 1856);
  v19 = *(v0 + 1832);
  v20 = *(v0 + 1824);
  v21 = *(v0 + 1816);
  v8 = *(v0 + 1736);
  v9 = *(v0 + 1728);
  outlined destroy of NSObject?(v0 + 1152, &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v10 = *v8;
  *v9 = *(v0 + 1712);
  v11 = *(v0 + 112);
  v12 = *(v0 + 64);
  v13 = *(v0 + 96);
  *(v9 + 80) = *(v0 + 80);
  *(v9 + 96) = v13;
  *(v9 + 64) = v12;
  v14 = *(v0 + 48);
  v15 = *(v0 + 16);
  *(v9 + 32) = *(v0 + 32);
  *(v9 + 48) = v14;
  *(v9 + 16) = v15;
  *(v9 + 112) = v11;
  *(v9 + 120) = v10;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1512));

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = v0[293];
  v2 = v0[290];
  v3 = v0[287];
  v4 = v0[286];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[293];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[294];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[290];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[289];
  }

  v0[300] = v0[296];
  v9 = v0[224];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v10, 0);
}

{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[234];
  v4 = v0[233];
  v5 = v0[231];
  v6 = v0[230];
  outlined destroy of NSObject?((v0 + 144), &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 189);
  v7 = v0[300];
  v8 = v0[237];
  v9 = v0[236];
  v10 = v0[233];
  v11 = v0[232];
  v12 = v0[229];
  v13 = v0[228];
  v14 = v0[227];

  v15 = v0[1];

  return v15();
}

{
  (*(v0[235] + 8))(v0[236], v0[234]);
  v1 = v0[241];
  v2 = v0[237];
  v3 = v0[236];
  v4 = v0[233];
  v5 = v0[232];
  v6 = v0[229];
  v7 = v0[228];
  v8 = v0[227];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[234];
  (*(v0[231] + 8))(v0[233], v0[230]);
  (*(v2 + 8))(v1, v3);
  outlined destroy of NSObject?((v0 + 144), &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 189);
  v4 = v0[276];
  v5 = v0[237];
  v6 = v0[236];
  v7 = v0[233];
  v8 = v0[232];
  v9 = v0[229];
  v10 = v0[228];
  v11 = v0[227];

  v12 = v0[1];

  return v12();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2000);
  v6 = *v2;
  *(*v2 + 2008) = v1;

  if (v1)
  {
    outlined destroy of NSObject?(v4 + 1712, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    *(v4 + 2016) = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 2024);
  v4 = *v1;
  *(*v1 + 2032) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[203] = v2;
  v4[204] = a1;
  v4[205] = v1;
  v5 = v3[280];
  v8 = *v2;
  v4[281] = v1;

  if (v1)
  {
    outlined destroy of NSObject?((v4 + 214), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v2 = *(*v1 + 2256);
  v4 = *v1;
  *(*v1 + 2264) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  if ((v0[254] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[157];
    v2 = v0[158];
    __swift_project_boxed_opaque_existential_1(v0 + 154, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[255] = v5;
    *v5 = v0;
    v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v6 = v0[228];

    v7(v6, v1, v2);
  }
}

{
  if ((v0[283] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[187];
    v2 = v0[188];
    __swift_project_boxed_opaque_existential_1(v0 + 184, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[284] = v5;
    *v5 = v0;
    v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v6 = v0[227];

    v7(v6, v1, v2);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2088);
  v6 = *v2;
  *(v3 + 2096) = a1;
  *(v3 + 2104) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 2112);
  v7 = *v3;
  v7[265] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v7 + 214), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
  }

  else
  {
    v8 = v7[249];
    v9 = v7[248];
    v21 = v7[246];
    v10 = v7[245];
    v7[266] = a2;
    v7[267] = a1;
    ObjectType = swift_getObjectType();
    v7[268] = ObjectType;
    v7[208] = v9;
    v7[209] = v8;
    v12 = *(v21 + 64);
    v7[269] = v12;
    v7[270] = (v21 + 64) & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[271] = v14;
    *v14 = v7;
    v14[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v15 = v7[246];
    v16 = v7[245];
    v17 = v7[224];
    v18 = v7[223];

    return (v20)(v18, v17, v7 + 208, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 2168);
  v8 = *v3;
  *(*v3 + 2176) = v2;

  if (v2)
  {
    outlined destroy of NSObject?(v6 + 1712, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    *(v6 + 2184) = a2;
    *(v6 + 2192) = a1;
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 2304);
  v6 = *v2;
  *(v3 + 2312) = a1;
  *(v3 + 2320) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 2328);
  v7 = *v3;
  v7[292] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v7 + 214), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
  }

  else
  {
    v8 = v7[279];
    v9 = v7[278];
    v10 = v7[270];
    v11 = v7[269];
    v7[293] = a2;
    v7[294] = a1;
    v7[212] = v9;
    v7[213] = v8;
    v21 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v7[295] = v13;
    *v13 = v7;
    v13[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v14 = v7[270];
    v15 = v7[268];
    v16 = v7[246];
    v17 = v7[245];
    v18 = v7[224];
    v19 = v7[223];

    return (v21)(v19, v18, v7 + 212, v15, v16);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 2360);
  v8 = *v3;
  *(*v3 + 2368) = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v6 + 214), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v6[297] = v6[204];
    v6[298] = a2;
    v6[299] = a1;
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(message:context:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 1072) = v3;
  *(v4 + 1064) = a1;
  v7 = type metadata accessor for MLS.MLSMessage();
  *(v4 + 1080) = v7;
  v8 = *(v7 - 8);
  *(v4 + 1088) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 1096) = swift_task_alloc();
  v10 = a2[1];
  *(v4 + 856) = *a2;
  *(v4 + 872) = v10;
  *(v4 + 888) = a2[2];
  *(v4 + 898) = *(a2 + 42);
  v11 = *(a3 + 144);
  *(v4 + 144) = *(a3 + 128);
  *(v4 + 160) = v11;
  *(v4 + 176) = *(a3 + 160);
  v12 = *(a3 + 80);
  *(v4 + 80) = *(a3 + 64);
  *(v4 + 96) = v12;
  v13 = *(a3 + 112);
  *(v4 + 112) = *(a3 + 96);
  *(v4 + 128) = v13;
  v14 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v14;
  v15 = *(a3 + 48);
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = v15;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static MLSActor.shared;
  *(v4 + 1104) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(message:context:), v16, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(message:context:)()
{
  v44 = v0;
  v1 = v0[134];
  v0[139] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?((v0 + 2), (v0 + 23), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?((v0 + 107), (v0 + 115), &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined destroy of NSObject?((v0 + 107), &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v43[0] = v5;
    *v4 = 136315394;
    v6 = v0[2];
    v7 = v0[3];

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v43);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v9 = specialized MLS.IncomingMessage.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v43);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming deprecated version called { identifier: %s, message: %s }", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v12 = v0[137];
  v13 = v0[107];
  v14 = v0[108];
  static MLS.parseMLSMessage(data:)();
  v15 = v0[137];
  v16 = MLS.MLSMessage.groupID.getter();
  v0[140] = v16;
  v0[141] = v17;
  if (v17 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?((v0 + 2), (v0 + 44), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43[0] = v21;
      *v20 = 136315138;
      v22 = v0[2];
      v23 = v0[3];

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v43);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_264F1F000, v18, v19, "SwiftMLSClientCoordinator processIncoming failed to find group ID in message { identifier: %s }", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x266755550](v21, -1, -1);
      MEMORY[0x266755550](v20, -1, -1);
    }

    v25 = v0[137];
    v26 = v0[136];
    v27 = v0[135];
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v28 = 18;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    swift_willThrow();
    (*(v26 + 8))(v25, v27);
    v29 = v0[137];

    v30 = v0[1];

    return v30();
  }

  else
  {
    v32 = v0[134];
    v34 = *(v32 + 80);
    v33 = *(v32 + 88);
    v35 = v16;
    v36 = v17;
    ObjectType = swift_getObjectType();
    v38 = *(v32 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    v0[131] = *(v32 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v0[132] = v38;
    v39 = *(v33 + 48);

    v42 = (v39 + *v39);
    v40 = v39[1];
    v41 = swift_task_alloc();
    v0[142] = v41;
    *v41 = v0;
    v41[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);

    return (v42)(v35, v36, v0 + 131, ObjectType, v33);
  }
}

{
  v43 = v0;
  v1 = *(v0 + 1152);
  if (v1)
  {
    v2 = *(v0 + 1072);
    v3 = *(v0 + 872);
    *(v0 + 984) = *(v0 + 856);
    *(v0 + 1000) = v3;
    *(v0 + 1016) = *(v0 + 888);
    *(v0 + 1026) = *(v0 + 898);
    v4 = *(v0 + 96);
    *(v0 + 752) = *(v0 + 80);
    *(v0 + 768) = v4;
    *(v0 + 848) = *(v0 + 176);
    v5 = *(v0 + 160);
    *(v0 + 816) = *(v0 + 144);
    *(v0 + 832) = v5;
    v6 = *(v0 + 128);
    *(v0 + 784) = *(v0 + 112);
    *(v0 + 800) = v6;
    v7 = *(v0 + 32);
    *(v0 + 688) = *(v0 + 16);
    *(v0 + 704) = v7;
    v8 = *(v0 + 64);
    *(v0 + 720) = *(v0 + 48);
    *(v0 + 736) = v8;
    v40 = (*v2 + 448);
    v41 = (*v40 + **v40);
    v9 = (*v40)[1];
    v10 = swift_task_alloc();
    *(v0 + 1168) = v10;
    *v10 = v0;
    v10[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);
    v11 = *(v0 + 1144);
    v12 = *(v0 + 1072);
    v13 = *(v0 + 1064);

    return v41(v13, v0 + 984, v11, v1, v0 + 688);
  }

  else
  {
    v15 = *(v0 + 1128);
    v16 = *(v0 + 1120);
    v17 = *(v0 + 1112);
    v18 = *(v0 + 1072);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v16, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined consume of Data?(v16, v15);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 1128);
      v22 = *(v0 + 1120);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42[0] = v24;
      *v23 = 136315394;
      v25 = *(v0 + 16);
      v26 = *(v0 + 24);

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v42);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      outlined copy of Data._Representation(v22, v21);
      v28 = Data.description.getter();
      v30 = v29;
      outlined consume of Data?(v22, v21);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v42);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_264F1F000, v19, v20, "SwiftMLSClientCoordinator processIncoming failed to find group id with swiftMLS ID { identifier: %s, swiftMLSGroupID: %s }", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v24, -1, -1);
      MEMORY[0x266755550](v23, -1, -1);
    }

    v32 = *(v0 + 1128);
    v33 = *(v0 + 1120);
    v34 = *(v0 + 1096);
    v35 = *(v0 + 1088);
    v36 = *(v0 + 1080);
    lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    swift_willThrow();
    outlined consume of Data?(v33, v32);
    (*(v35 + 8))(v34, v36);
    v38 = *(v0 + 1096);

    v39 = *(v0 + 8);

    return v39();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1168);
  v8 = *v1;
  *(*v1 + 1176) = v0;

  v4 = *(v2 + 1152);
  if (v0)
  {
    v5 = *(v2 + 1104);

    v6 = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);
  }

  else
  {
    v5 = *(v2 + 1104);

    v6 = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  outlined consume of Data?(v0[140], v0[141]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  outlined consume of Data?(v0[140], v0[141]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[145];
  v5 = v0[137];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  outlined consume of Data?(v0[140], v0[141]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[147];
  v5 = v0[137];

  v6 = v0[1];

  return v6();
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(message:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1136);
  v11 = *v3;
  v4[143] = a1;
  v4[144] = a2;
  v4[145] = v2;

  if (v2)
  {
    v6 = v4[138];
    v7 = v4[132];

    v8 = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);
  }

  else
  {
    v6 = v4[138];
    v9 = v4[132];

    v8 = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 864) = v5;
  *(v6 + 856) = a4;
  *(v6 + 848) = a3;
  *(v6 + 840) = a1;
  v9 = type metadata accessor for MLS.MLSError();
  *(v6 + 872) = v9;
  v10 = *(v9 - 8);
  *(v6 + 880) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();
  v12 = a2[1];
  *(v6 + 520) = *a2;
  *(v6 + 536) = v12;
  *(v6 + 552) = a2[2];
  *(v6 + 562) = *(a2 + 42);
  v13 = *(a5 + 144);
  *(v6 + 144) = *(a5 + 128);
  *(v6 + 160) = v13;
  *(v6 + 176) = *(a5 + 160);
  v14 = *(a5 + 80);
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = v14;
  v15 = *(a5 + 112);
  *(v6 + 112) = *(a5 + 96);
  *(v6 + 128) = v15;
  v16 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v16;
  v17 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v17;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v18 = static MLSActor.shared;
  *(v6 + 904) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v18, 0);
}

void MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v1 = v0[108];
  v2 = swift_allocObject();
  v0[114] = v2;
  v3 = v0[22];
  v0[102] = v3;
  *(v2 + 16) = v3;
  v0[115] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MetricCollector((v0 + 102), (v0 + 103));
  outlined init with copy of MLS.OutgoingEventState?((v0 + 2), (v0 + 23), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?((v0 + 65), (v0 + 73), &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined destroy of NSObject?((v0 + 65), &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315394;
    v8 = v0[2];
    v9 = v0[3];

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v23);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = specialized MLS.IncomingMessage.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v23);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming enqueueing event { identifier: %s, message: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v14 = *(v0[108] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v0[116] = v14;
  v15 = v0[3];
  v0[117] = v0[2];
  v0[118] = v15;
  v16 = *(*v14 + 192);
  v21 = v16 + *v16;
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[119] = v18;
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v18 = v0;
  v18[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v19 = v0[107];
  v20 = v0[106];

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v7 = *v1;

  v4 = *(v2 + 904);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 928);
  v2 = *(v0 + 912);
  v3 = *(v0 + 864);
  v15 = *(v0 + 848);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 752), v0 + 712);
  v4 = swift_task_alloc();
  *(v0 + 960) = v4;
  *(v4 + 16) = v0 + 520;
  *(v4 + 24) = v3;
  *(v4 + 32) = v0 + 16;
  *(v4 + 40) = v0 + 712;
  *(v4 + 48) = v15;
  *(v4 + 64) = v2;
  v5 = *(*v1 + 152);
  v6 = *v1 + 152;
  *(v0 + 968) = v5;
  *(v0 + 976) = v6 & 0xFFFFFFFFFFFFLL | 0xA800000000000000;
  v16 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 984) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  *(v0 + 992) = v9;
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v10 = *(v0 + 944);
  v11 = *(v0 + 936);
  v12 = *(v0 + 928);
  v13 = *(v0 + 840);

  return v16(v13, v11, v10, &async function pointer to partial apply for closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v4, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 984);
  v9 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v4 = *(v2 + 904);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = *(v2 + 960);
    v7 = *(v2 + 904);

    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 89);
  v1 = v0[114];
  v2 = v0[112];
  v3 = v0[111];

  v4 = v0[1];

  return v4();
}

{
  v34 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 864);
  v3 = *(v0 + 792);
  v4 = *(v0 + 800);
  v5 = *(v0 + 808);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v6, v7))
  {
    v31 = v4;
    v8 = *(v0 + 944);
    v9 = *(v0 + 936);
    v10 = swift_slowAlloc();
    v30 = v3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v33);
    *(v10 + 12) = 2112;
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v13 = v30;
    *(v13 + 8) = v31;
    *(v13 + 16) = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_264F1F000, v6, v7, "SwiftMLSClientCoordinator processIncoming performing self heal due to missing group { identifier: %s, error: %@ }", v10, 0x16u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 928);
  v16 = *(v0 + 864);
  v17 = *(v0 + 856);
  v18 = *(v0 + 848);
  v19 = *(v0 + 912) + 16;
  v20 = swift_task_alloc();
  *(v0 + 1008) = v20;
  v20[2] = v0 + 520;
  v20[3] = v0 + 16;
  v20[4] = v16;
  v20[5] = v18;
  v20[6] = v17;
  v20[7] = v19;
  v21 = *(*v15 + 152);
  v32 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v0 + 1016) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  *v23 = v0;
  v23[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v25 = *(v0 + 944);
  v26 = *(v0 + 936);
  v27 = *(v0 + 928);
  v28 = *(v0 + 840);

  return (v32)(v28, v26, v25, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v20, v24);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v9 = *v1;
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v4 = *(v2 + 904);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = *(v2 + 1008);
    v7 = *(v2 + 904);

    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[114];
  v2 = v0[112];
  v3 = v0[111];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[126];
  v2 = v0[114];

  v3 = v0[128];
  v4 = v0[112];
  v5 = v0[111];

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 960);
  v3 = *(v0 + 896);
  v4 = *(v0 + 872);

  *(v0 + 832) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v6 = (v0 + 520);
    v7 = *(v0 + 896);
    v8 = *(v0 + 888);
    v9 = *(v0 + 880);
    v10 = *(v0 + 872);

    (*(v9 + 32))(v8, v7, v10);
    if (*(v0 + 577) == 2)
    {
      v11 = *(v0 + 536);
      *(v0 + 648) = *v6;
      *(v0 + 664) = v11;
      *(v0 + 680) = *(v0 + 552);
      *(v0 + 690) = *(v0 + 562);
      v12 = swift_task_alloc();
      *(v0 + 1032) = v12;
      *v12 = v0;
      v12[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v13 = *(v0 + 944);
      v14 = *(v0 + 936);
      v15 = *(v0 + 888);
      v16 = *(v0 + 864);
      v17 = *(v0 + 856);
      v18 = *(v0 + 848);

      return MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:)((v0 + 648), v18, v17, v14, v13, v15);
    }

    else
    {
      v25 = *(v0 + 976);
      v26 = *(v0 + 968);
      v27 = *(v0 + 888);
      v28 = *(v0 + 864);
      v29 = *(v0 + 856);
      v30 = *(v0 + 848);
      v40 = *(v0 + 912) + 16;
      v31 = swift_task_alloc();
      *(v0 + 1040) = v31;
      v31[2] = v6;
      v31[3] = v0 + 16;
      v31[4] = v28;
      v31[5] = v27;
      v31[6] = v30;
      v31[7] = v29;
      v31[8] = v0 + 712;
      v31[9] = v40;
      v41 = (v26 + *v26);
      v32 = v26[1];
      v33 = swift_task_alloc();
      *(v0 + 1048) = v33;
      *v33 = v0;
      v33[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v34 = *(v0 + 992);
      v35 = *(v0 + 976);
      v36 = *(v0 + 944);
      v37 = *(v0 + 936);
      v38 = *(v0 + 928);
      v39 = *(v0 + 840);

      return (v41)(v39, v37, v36, &async function pointer to partial apply for closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v31, v34);
    }
  }

  else
  {
    v20 = *(v0 + 912);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));

    v21 = *(v0 + 1000);
    v22 = *(v0 + 896);
    v23 = *(v0 + 888);

    v24 = *(v0 + 8);

    return v24();
  }
}

{
  v1 = *(*v0 + 1032);
  v2 = *(*v0 + 904);
  v4 = *v0;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v2, 0);
}

{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[111];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[106];
  v7 = v0[114] + 16;
  v8 = swift_task_alloc();
  v0[130] = v8;
  v8[2] = v0 + 65;
  v8[3] = v0 + 2;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v6;
  v8[7] = v5;
  v8[8] = v0 + 89;
  v8[9] = v7;
  v18 = (v2 + *v2);
  v9 = v2[1];
  v10 = swift_task_alloc();
  v0[131] = v10;
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v11 = v0[124];
  v12 = v0[122];
  v13 = v0[118];
  v14 = v0[117];
  v15 = v0[116];
  v16 = v0[105];

  return (v18)(v16, v14, v13, &async function pointer to partial apply for closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v8, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1048);
  v9 = *v1;
  *(*v1 + 1056) = v0;

  if (v0)
  {
    v4 = *(v2 + 904);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = *(v2 + 1040);
    v7 = *(v2 + 904);

    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  (*(*(v0 + 880) + 8))(*(v0 + 888), *(v0 + 872));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));
  v1 = *(v0 + 912);
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 912);
  v3 = *(v0 + 888);
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);

  (*(v4 + 8))(v3, v5);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));

  v6 = *(v0 + 1056);
  v7 = *(v0 + 896);
  v8 = *(v0 + 888);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[214] = a7;
  v7[213] = a6;
  v7[212] = a5;
  v7[211] = a4;
  v7[210] = a3;
  v7[209] = a2;
  v7[208] = a1;
  v8 = type metadata accessor for MLS.Group.GroupInfo();
  v7[215] = v8;
  v9 = *(v8 - 8);
  v7[216] = v9;
  v10 = *(v9 + 64) + 15;
  v7[217] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  v7[218] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v11, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v1 = (v0 + 968);
  v2 = *(v0 + 1672);
  if (*(v2 + 57) == 1)
  {
    v3 = *(v0 + 1680);
    v4 = *(v2 + 41);
    *(v0 + 1344) = *(v2 + 32);
    *(v0 + 1353) = v4;
    *(v0 + 1584) = *(v2 + 16);
    *(v0 + 1568) = *(v3 + 16);
    *v6 = *(v2 + 32);
    *&v6[9] = *(v2 + 41);
    v7 = *(v2 + 16);
    v8 = *(v3 + 16);
    outlined init with copy of MLS.AllMember(v0 + 1344, v0 + 1376);
    outlined init with copy of String(v0 + 1584, v0 + 1616);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1568, v0 + 1632, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    *v1 = *v6;
    *(v0 + 984) = *&v6[16];
    *(v0 + 1000) = v7;
    *(v0 + 1016) = v8;
  }

  else
  {
    *(v0 + 1000) = 0u;
    *(v0 + 1016) = 0u;
    *v1 = 0u;
    *(v0 + 984) = 0u;
  }

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  *(v0 + 1272) = 0;
  *(v0 + 1240) = 0u;
  *(v0 + 1256) = 0u;
  v1 = *(v0 + 984);
  *(v0 + 1096) = *(v0 + 968);
  *(v0 + 1112) = v1;
  v2 = *(v0 + 1016);
  *(v0 + 1128) = *(v0 + 1000);
  *(v0 + 1144) = v2;
  v3 = swift_task_alloc();
  *(v0 + 1752) = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v4 = *(v0 + 1704);
  v5 = *(v0 + 1696);
  v6 = *(v0 + 1688);

  return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v5, v4, v0 + 1240, (v0 + 1096), 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1752);
  v6 = *v1;
  *(v2 + 1760) = v0;

  outlined destroy of NSObject?(v2 + 1240, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1744);
  swift_getErrorValue();
  v3 = *(v0 + 1480);
  Error.readableDescription.getter(*(v0 + 1488), *(v0 + 1496));

  swift_getErrorValue();
  v4 = *(v0 + 1408);
  v5 = Error.readableDescription.getter(*(v0 + 1416), *(v0 + 1424));
  *(v0 + 1768) = v5;
  *(v0 + 1776) = v6;
  *(v0 + 1432) = 25;
  *(v0 + 1440) = v5;
  *(v0 + 1448) = v6;
  *(v0 + 1784) = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v2, 0);
}

{
  v1 = v0[223];
  v2 = v0[222];
  v3 = v0[221];
  swift_allocError();
  *v4 = 25;
  *(v4 + 8) = v3;
  *(v4 + 16) = v2;
  outlined destroy of NSObject?((v0 + 121), &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v5 = v0[217];

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 1744);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1808);
  v9 = *v1;

  if (v0)
  {
    v4 = *(v2 + 1800);
    v5 = *(v2 + 1744);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 1744);
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v1 = v0[211];
  outlined init with copy of ServerBag.MLS((v0 + 150), (v0 + 145));
  v0[227] = *(v1 + 80);
  v0[228] = *(v1 + 88);
  v2 = v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[229] = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[230] = *(v2 + 8);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v1 = v0[213];
  v2 = v0[148];
  v3 = v0[149];
  __swift_project_boxed_opaque_existential_1(v0 + 145, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[231] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[148];
  v2 = v0[149];
  __swift_project_boxed_opaque_existential_1(v0 + 145, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[234] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[251] = v0[232];
  v1 = v0[213];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 145);

  v2 = v0[218];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1888);
  v7 = *v1;
  *(*v1 + 1896) = v0;

  if (v0)
  {
    v4 = *(v2 + 1800);

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = v0[217];
  v2 = v0[216];
  v3 = v0[215];
  v0[238] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[239] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[148];
  v6 = v0[149];
  __swift_project_boxed_opaque_existential_1(v0 + 145, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[240] = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v11(v5, v6);
}

{
  v1 = v0[148];
  v2 = v0[149];
  __swift_project_boxed_opaque_existential_1(v0 + 145, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[243] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v7(v1, v2);
}

{
  v0[251] = v0[237];
  v1 = v0[213];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 145);

  v2 = v0[218];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v2, 0);
}

{
  v1 = v0[242];
  v2 = v0[239];
  v3 = v0[238];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[242];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[241];
  }

  v0[251] = v0[244];
  v6 = v0[213];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 145);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[218];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v7, 0);
}

{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1992);
  v3 = *(v0 + 1960);
  v4 = *(v0 + 1936);
  v5 = *(v0 + 1912);
  v6 = *(v0 + 1904);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 1880);
  v17 = v7;
  v8 = *(v0 + 1864);
  v20 = *(v0 + 1744);
  v9 = *(v0 + 1704);
  v10 = *(v0 + 1696);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 1960);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1968);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 1936);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1928);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 560) = v10;
  *(v0 + 568) = v9;
  *(v0 + 576) = v15;
  *(v0 + 584) = v15;
  *(v0 + 592) = v7;
  *(v0 + 600) = v6;
  *(v0 + 608) = v5;
  *(v0 + 616) = v14;
  *(v0 + 624) = v13;
  *(v0 + 632) = v12;
  *(v0 + 640) = v11;
  *(v0 + 648) = v1;
  *(v0 + 656) = v2;
  outlined init with copy of MLS.Group(v0 + 560, v0 + 456);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1160));
  *(v0 + 664) = v10;
  *(v0 + 672) = v9;
  *(v0 + 680) = v15;
  *(v0 + 688) = v15;
  *(v0 + 696) = v17;
  *(v0 + 704) = v18;
  *(v0 + 712) = v19;
  *(v0 + 720) = v14;
  *(v0 + 728) = v13;
  *(v0 + 736) = v12;
  *(v0 + 744) = v11;
  *(v0 + 752) = v1;
  *(v0 + 760) = v2;
  outlined destroy of MLS.Group(v0 + 664);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v20, 0);
}

{
  v47 = v0;
  v1 = (v0 + 560);
  if (*(v0 + 1008))
  {
    v2 = *(v0 + 1800);

    outlined destroy of NSObject?(v0 + 968, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1200));
    v3 = *(v0 + 1736);
    v4 = *(v0 + 1712);
    v5 = *(v0 + 1680);
    v6 = *(v0 + 1664);
    *(v0 + 1520) = *(v5 + 16);
    v7 = *v4;
    *v6 = *(v5 + 16);
    v8 = *(v0 + 592);
    v9 = *v1;
    *(v6 + 32) = *(v0 + 576);
    *(v6 + 48) = v8;
    *(v6 + 16) = v9;
    v10 = *(v0 + 608);
    v11 = *(v0 + 640);
    v12 = *(v0 + 656);
    *(v6 + 80) = *(v0 + 624);
    *(v6 + 96) = v11;
    *(v6 + 64) = v10;
    *(v6 + 112) = v12;
    *(v6 + 120) = v7;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1520, v0 + 1600, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 1800);
    v16 = *(v0 + 1792);
    v17 = *(v0 + 1688);
    v18 = *(v0 + 1680);
    v19 = *(v0 + 1672);
    v20 = *(v19 + 32);
    *(v0 + 1321) = *(v19 + 41);
    *(v0 + 1312) = v20;
    *(v0 + 1536) = *(v18 + 16);
    v21 = *(v19 + 32);
    *(v0 + 1057) = *(v19 + 41);
    *(v0 + 1048) = v21;
    *(v46 + 7) = *(v18 + 16);
    *(v0 + 1032) = v16;
    *(v0 + 1040) = v15;
    *(v0 + 1088) = *(&v46[1] + 7);
    *(v0 + 1073) = *v46;
    v22 = *(v0 + 1048);
    *(v0 + 872) = *(v0 + 1032);
    *(v0 + 888) = v22;
    v23 = *(v0 + 1080);
    *(v0 + 904) = *(v0 + 1064);
    *(v0 + 920) = v23;
    *(v0 + 2016) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
    outlined init with copy of MLS.AllMember(v0 + 1312, v0 + 1280);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1536, v0 + 1552, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v18, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v18, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 1800);
      v27 = *(v0 + 1792);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v46);
      _os_log_impl(&dword_264F1F000, v24, v25, "SwiftMLSClientCoordinator processIncoming sending internal message event after self heal { identifier: %s }", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x266755550](v29, -1, -1);
      MEMORY[0x266755550](v28, -1, -1);
    }

    v30 = *(v0 + 1688);
    v31 = *(v30 + 96);
    v32 = *(v0 + 920);
    *(v0 + 800) = *(v0 + 904);
    *(v0 + 816) = v32;
    v33 = *(v0 + 952);
    *(v0 + 832) = *(v0 + 936);
    *(v0 + 848) = v33;
    v34 = *(v0 + 888);
    *(v0 + 768) = *(v0 + 872);
    *(v0 + 784) = v34;
    *(v0 + 864) = 9;
    v35 = *(v0 + 576);
    *(v0 + 352) = *v1;
    *(v0 + 368) = v35;
    v36 = *(v0 + 592);
    v37 = *(v0 + 608);
    v38 = *(v0 + 624);
    v39 = *(v0 + 640);
    *(v0 + 448) = *(v0 + 656);
    *(v0 + 416) = v38;
    *(v0 + 432) = v39;
    *(v0 + 384) = v36;
    *(v0 + 400) = v37;
    v40 = (v30 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
    if (*(v0 + 1312) == *v40 && *(v0 + 1320) == v40[1])
    {
      v41 = 1;
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v42 = *(*v31 + 384);
    v45 = (v42 + *v42);
    v43 = v42[1];
    v44 = swift_task_alloc();
    *(v0 + 2024) = v44;
    *v44 = v0;
    v44[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return (v45)(v0 + 768, v0 + 352, 1, v41 & 1);
  }
}

{
  v1 = v0[245];
  v2 = v0[242];
  v3 = v0[239];
  v4 = v0[238];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[245];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[246];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[242];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[241];
  }

  v0[251] = v0[248];
  v9 = v0[213];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 145);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[218];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v10, 0);
}

{
  outlined destroy of NSObject?((v0 + 121), &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 150);
  v1 = v0[251];
  v2 = v0[217];

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  v3 = *(*v1 + 2024);
  v7 = *v1;
  *(*v1 + 2032) = v0;

  v4 = *(v2 + 1744);
  if (v0)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v23 = v0;
  v1 = *(v0 + 2016);
  v2 = *(v0 + 1688);
  v3 = *(v0 + 1680);
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1800);
    v7 = *(v0 + 1792);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v22);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming internal message returning processedContext to caller after self heal { identifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  outlined destroy of NSObject?(v0 + 1032, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1200));
  v10 = *(v0 + 1736);
  v11 = *(v0 + 1712);
  v12 = *(v0 + 1680);
  v13 = *(v0 + 1664);
  *(v0 + 1520) = *(v12 + 16);
  v14 = *v11;
  *v13 = *(v12 + 16);
  v15 = *(v0 + 592);
  v16 = *(v0 + 560);
  *(v13 + 32) = *(v0 + 576);
  *(v13 + 48) = v15;
  *(v13 + 16) = v16;
  v17 = *(v0 + 608);
  v18 = *(v0 + 640);
  v19 = *(v0 + 656);
  *(v13 + 80) = *(v0 + 624);
  *(v13 + 96) = v18;
  *(v13 + 64) = v17;
  *(v13 + 112) = v19;
  *(v13 + 120) = v14;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1520, v0 + 1600, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  v20 = *(v0 + 8);

  return v20();
}

{
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1472);
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  outlined destroy of NSObject?(v0 + 968, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v5 = *(v0 + 1736);

  v6 = *(v0 + 8);

  return v6();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 150);
  outlined destroy of MLS.Group((v0 + 70));
  outlined destroy of NSObject?((v0 + 129), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = v0[254];
  v2 = v0[217];

  v3 = v0[1];

  return v3();
}

void closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v1 = v0[210];
  v2 = *(v0[211] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v0[224] = *v1;
  v0[225] = v1[1];
  v3 = *(*v2 + 192);

  v8 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[226] = v5;
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v6 = v0[213];
  v7 = v0[212];

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[235] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[148];
    v2 = v0[149];
    __swift_project_boxed_opaque_existential_1(v0 + 145, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[236] = v5;
    *v5 = v0;
    v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v6 = v0[217];

    v7(v6, v1, v2);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1848);
  v6 = *v2;
  *(*v2 + 1856) = v1;

  if (v1)
  {
    v7 = *(v4 + 1800);

    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v4 + 1864) = a1;
    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v2 = *(*v1 + 1872);
  v4 = *v1;
  *(*v1 + 1880) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1920);
  v6 = *v2;
  *(v3 + 1928) = a1;
  *(v3 + 1936) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v6 = *(*v3 + 1944);
  v7 = *v3;
  v7[244] = v2;

  if (v2)
  {
    v8 = v7[225];

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v9 = v7[230];
    v10 = v7[229];
    v22 = v7[228];
    v11 = v7[227];
    v7[245] = a2;
    v7[246] = a1;
    ObjectType = swift_getObjectType();
    v7[188] = v10;
    v7[189] = v9;
    v13 = *(v22 + 64);
    v21 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v7[247] = v15;
    *v15 = v7;
    v15[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v16 = v7[228];
    v17 = v7[227];
    v18 = v7[213];
    v19 = v7[212];

    return (v21)(v19, v18, v7 + 188, ObjectType, v16);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 1976);
  v8 = *v3;
  *(*v3 + 1984) = v2;

  if (v2)
  {
    v9 = v6[225];

    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6[249] = a2;
    v6[250] = a1;
    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2600] = a8;
  v8[2599] = a7;
  v8[2598] = a6;
  v8[2597] = a5;
  v8[2596] = a4;
  v8[2595] = a3;
  v8[2594] = a2;
  v8[2593] = a1;
  v8[2601] = *a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR) - 8) + 64) + 15;
  v8[2602] = swift_task_alloc();
  v10 = type metadata accessor for MLS.MLSError();
  v8[2603] = v10;
  v11 = *(v10 - 8);
  v8[2604] = v11;
  v12 = *(v11 + 64) + 15;
  v8[2605] = swift_task_alloc();
  v13 = type metadata accessor for MLS.Group.IncomingSignedMessage();
  v8[2606] = v13;
  v14 = *(v13 - 8);
  v8[2607] = v14;
  v15 = *(v14 + 64) + 15;
  v8[2608] = swift_task_alloc();
  v16 = type metadata accessor for MLS.Group.CommitOutput();
  v8[2609] = v16;
  v17 = *(v16 - 8);
  v8[2610] = v17;
  v8[2611] = *(v17 + 64);
  v8[2612] = swift_task_alloc();
  v8[2613] = swift_task_alloc();
  v8[2614] = swift_task_alloc();
  v8[2615] = swift_task_alloc();
  v18 = type metadata accessor for MLS.Group.Group.DecryptNameKeysInput();
  v8[2616] = v18;
  v19 = *(v18 - 8);
  v8[2617] = v19;
  v20 = *(v19 + 64) + 15;
  v8[2618] = swift_task_alloc();
  v21 = type metadata accessor for MLS.Group.RosterUpdate();
  v8[2619] = v21;
  v22 = *(v21 - 8);
  v8[2620] = v22;
  v23 = *(v22 + 64) + 15;
  v8[2621] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR) - 8) + 64) + 15;
  v8[2622] = swift_task_alloc();
  v8[2623] = swift_task_alloc();
  v8[2624] = swift_task_alloc();
  v8[2625] = swift_task_alloc();
  v8[2626] = swift_task_alloc();
  v25 = type metadata accessor for MLS.Group.IncomingApplicationMessageDetails();
  v8[2627] = v25;
  v26 = *(v25 - 8);
  v8[2628] = v26;
  v27 = *(v26 + 64) + 15;
  v8[2629] = swift_task_alloc();
  v8[2630] = swift_task_alloc();
  v8[2631] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMd, &_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMR) - 8) + 64) + 15;
  v8[2632] = swift_task_alloc();
  v8[2633] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR) - 8) + 64) + 15;
  v8[2634] = swift_task_alloc();
  v30 = type metadata accessor for MLS.Group.Message();
  v8[2635] = v30;
  v31 = *(v30 - 8);
  v8[2636] = v31;
  v32 = *(v31 + 64) + 15;
  v8[2637] = swift_task_alloc();
  v8[2638] = swift_task_alloc();
  v8[2639] = swift_task_alloc();
  v33 = type metadata accessor for MLS.Group.ReceivedMessage();
  v8[2640] = v33;
  v34 = *(v33 - 8);
  v8[2641] = v34;
  v35 = *(v34 + 64) + 15;
  v8[2642] = swift_task_alloc();
  v8[2643] = swift_task_alloc();
  v8[2644] = swift_task_alloc();
  v8[2645] = swift_task_alloc();
  v8[2646] = swift_task_alloc();
  v8[2647] = swift_task_alloc();
  v8[2648] = swift_task_alloc();
  v8[2649] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v8[2650] = swift_task_alloc();
  v37 = type metadata accessor for MLS.Group.GroupInfo();
  v8[2651] = v37;
  v38 = *(v37 - 8);
  v8[2652] = v38;
  v39 = *(v38 + 64) + 15;
  v8[2653] = swift_task_alloc();
  v8[2654] = swift_task_alloc();
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O10MLSMessageVSgMd, &_s8SwiftMLS0B0O10MLSMessageVSgMR) - 8) + 64) + 15;
  v8[2655] = swift_task_alloc();
  v8[2656] = swift_task_alloc();
  v41 = type metadata accessor for MLS.MLSMessage();
  v8[2657] = v41;
  v42 = *(v41 - 8);
  v8[2658] = v42;
  v43 = *(v42 + 64) + 15;
  v8[2659] = swift_task_alloc();
  v8[2660] = swift_task_alloc();
  v8[2661] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v44 = static MLSActor.shared;
  v8[2662] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v44, 0);
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v122 = v0;
  v1 = *(v0 + 20752);
  v2 = *(v1 + 57);
  *(v0 + 15569) = v2;
  if (v2 <= 1)
  {
    if (v2)
    {
      v17 = *(v0 + 21272);
      v18 = *v1;
      v19 = v1[1];
      static MLS.parseMLSMessage(data:)();
      v10 = 21272;
    }

    else
    {
      v7 = *(v0 + 21280);
      v8 = *v1;
      v9 = v1[1];
      static MLS.parseMLSMessage(data:)();
      v10 = 21280;
    }

    v20 = (v0 + v10);
    goto LABEL_14;
  }

  if (v2 == 2)
  {
    v11 = *v1;
    v12 = v1[1];
    v13 = static MLS.parseCommitList(data:)();
    if (*(v13 + 16))
    {
      (*(*(v0 + 21264) + 16))(*(v0 + 21248), v13 + ((*(*(v0 + 21264) + 80) + 32) & ~*(*(v0 + 21264) + 80)), *(v0 + 21256));
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v72 = *(v0 + 21264);
    v73 = *(v0 + 21256);
    v20 = (v0 + 21248);
    v74 = *(v0 + 21248);
    (*(v72 + 56))(v74, v14, 1, v73);

    if ((*(v72 + 48))(v74, 1, v73) != 1)
    {
      goto LABEL_14;
    }

    outlined destroy of NSObject?(*v20, &_s8SwiftMLS0B0O10MLSMessageVSgMd, &_s8SwiftMLS0B0O10MLSMessageVSgMR);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    v16 = 24;
LABEL_11:
    *v15 = v16;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    swift_willThrow();
LABEL_23:
    v42 = *(v0 + 21288);
    v43 = *(v0 + 21280);
    v44 = *(v0 + 21272);
    v45 = *(v0 + 21248);
    v46 = *(v0 + 21240);
    v47 = *(v0 + 21232);
    v48 = *(v0 + 21224);
    v49 = *(v0 + 21200);
    v50 = *(v0 + 21192);
    v51 = *(v0 + 21184);
    v90 = *(v0 + 21176);
    v91 = *(v0 + 21168);
    v92 = *(v0 + 21160);
    v93 = *(v0 + 21152);
    v94 = *(v0 + 21144);
    v95 = *(v0 + 21136);
    v96 = *(v0 + 21112);
    v97 = *(v0 + 21104);
    v98 = *(v0 + 21096);
    v99 = *(v0 + 21072);
    v100 = *(v0 + 21064);
    v101 = *(v0 + 21056);
    v102 = *(v0 + 21048);
    v103 = *(v0 + 21040);
    v104 = *(v0 + 21032);
    v105 = *(v0 + 21008);
    v106 = *(v0 + 21000);
    v107 = *(v0 + 20992);
    v108 = *(v0 + 20984);
    v109 = *(v0 + 20976);
    v110 = *(v0 + 20968);
    v111 = *(v0 + 20944);
    v112 = *(v0 + 20920);
    v113 = *(v0 + 20912);
    v114 = *(v0 + 20904);
    v115 = *(v0 + 20896);
    v116 = *(v0 + 20864);
    v117 = *(v0 + 20840);
    v118 = *(v0 + 20816);

    v52 = *(v0 + 8);

    return v52();
  }

  if (v2 != 3)
  {
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    v16 = 22;
    goto LABEL_11;
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = static MLS.parseProposalList(data:)();
  if (*(v5 + 16))
  {
    (*(*(v0 + 21264) + 16))(*(v0 + 21240), v5 + ((*(*(v0 + 21264) + 80) + 32) & ~*(*(v0 + 21264) + 80)), *(v0 + 21256));
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v87 = *(v0 + 21264);
  v88 = *(v0 + 21256);
  v20 = (v0 + 21240);
  v89 = *(v0 + 21240);
  (*(v87 + 56))(v89, v6, 1, v88);

  if ((*(v87 + 48))(v89, 1, v88) == 1)
  {
    outlined destroy of NSObject?(*v20, &_s8SwiftMLS0B0O10MLSMessageVSgMd, &_s8SwiftMLS0B0O10MLSMessageVSgMR);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    v16 = 23;
    goto LABEL_11;
  }

LABEL_14:
  (*(*(v0 + 21264) + 32))(*(v0 + 21288), *v20, *(v0 + 21256));
  v21 = MLS.MLSMessage.groupID.getter();
  v23 = *(v0 + 20768);
  if (v22 >> 60 == 15)
  {
    v24 = *(v0 + 20760);
    outlined init with copy of MLS.OutgoingEventState?(*(v0 + 20768), v0 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v23, v0 + 8584, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 20768);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v121[0] = v30;
      *v29 = 136315138;
      v31 = *v28;
      v32 = v28[1];

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v121);

      *(v29 + 4) = v33;
      outlined destroy of NSObject?(v28, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v28, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v25, v26, "SwiftMLSClientCoordinator processIncoming failed to find group ID in message { identifier: %s }", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266755550](v30, -1, -1);
      MEMORY[0x266755550](v29, -1, -1);
    }

    else
    {

      outlined destroy of NSObject?(v28, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v28, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v37 = *(v0 + 21288);
    v38 = *(v0 + 21264);
    v39 = *(v0 + 21256);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    v41 = 18;
    goto LABEL_22;
  }

  outlined consume of Data?(v21, v22);
  *(v0 + 21304) = *v23;
  *(v0 + 21312) = v23[1];
  if (v2 == 2)
  {
    v34 = *(v0 + 21288);
    *(v0 + 21320) = MLS.MLSMessage.messageEra.getter();
    result = MLS.MLSMessage.epoch.getter();
    *(v0 + 21328) = result;
    if (v36)
    {
      v37 = *(v0 + 21288);
      v38 = *(v0 + 21264);
      v39 = *(v0 + 21256);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      v41 = 19;
LABEL_22:
      *v40 = v41;
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      swift_willThrow();
      (*(v38 + 8))(v37, v39);
      goto LABEL_23;
    }

    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v75 = *(**(v0 + 20760) + 344);
      v119 = (v75 + *v75);
      v76 = v75[1];
      v77 = swift_task_alloc();
      *(v0 + 21336) = v77;
      *v77 = v0;
      v77[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v78 = *(v0 + 20776);
      v79 = *(v0 + 20760);

      return v119(v0 + 19728, v78);
    }
  }

  else
  {
    v53 = *(v0 + 21200);
    v54 = *(v0 + 20800);
    v55 = *(v0 + 20768);
    v56 = *(v0 + 20760);
    swift_beginAccess();
    Date.init()();
    v57 = type metadata accessor for MetricCollector.Event();
    *(v0 + 21576) = v57;
    v58 = *(v57 + 20);
    v59 = type metadata accessor for Date();
    *(v0 + 21584) = v59;
    v60 = *(v59 - 8);
    v61 = *(v60 + 56);
    *(v0 + 21592) = v61;
    *(v0 + 21600) = (v60 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v61(v53 + v58, 1, 1, v59);
    v62 = *(v57 - 8);
    v63 = *(v62 + 56);
    *(v0 + 21608) = v63;
    *(v0 + 21616) = (v62 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v63(v53, 0, 1, v57);
    specialized Dictionary.subscript.setter(v53, 0x534C4D7466697753, 0xEE0074696D6D6F43);
    swift_endAccess();
    *(v0 + 21624) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
    outlined init with copy of MLS.OutgoingEventState?(v55, v0 + 8416, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v55, v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = *(v0 + 21312);
      v67 = *(v0 + 21304);
      v68 = *(v0 + 20768);
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v121[0] = v70;
      *v69 = 136315138;

      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, v121);

      *(v69 + 4) = v71;
      outlined destroy of NSObject?(v68, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v68, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v64, v65, "SwiftMLSClientCoordinator processIncoming processing message { identifier: %s }", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x266755550](v70, -1, -1);
      MEMORY[0x266755550](v69, -1, -1);
    }

    else
    {
      v80 = *(v0 + 20768);

      outlined destroy of NSObject?(v80, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v80, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v81 = *(v0 + 20776);
    v82 = v81[3];
    v83 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v84 = *(v83 + 24);
    v120 = (v84 + *v84);
    v85 = v84[1];
    v86 = swift_task_alloc();
    *(v0 + 21632) = v86;
    *v86 = v0;
    v86[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return v120(v82, v83);
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 21336);
  v4 = *v1;
  *(*v1 + 21344) = v0;

  v5 = *(v2 + 21296);
  if (v0)
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v84 = v0;
  v1 = *(v0 + 21320);
  if ((v1 & 0x100000000) != 0)
  {
    LODWORD(v1) = 1;
  }

  v2 = *(v0 + 19736);
  v3 = *(v0 + 19744);
  v4 = *(v0 + 21328) < v3;
  v5 = v1 == v2;
  v6 = v1 < v2;
  if (!v5)
  {
    v4 = v6;
  }

  if (v4)
  {
    v7 = (v0 + 19464);
    v8 = *(v0 + 20792);
    v9 = *(v0 + 20768);
    v10 = *(v0 + 20760);
    *(v0 + 21352) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
    outlined init with copy of MLS.OutgoingEventState?(v9, v0 + 8080, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v9, v0 + 3040, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v78 = *(v0 + 21328);
      v13 = *(v0 + 21320);
      v14 = *(v0 + 21312);
      v15 = *(v0 + 21304);
      v80 = v12;
      v16 = *(v0 + 20792);
      v17 = *(v0 + 20784);
      v18 = *(v0 + 20768);
      if ((v13 & 0x100000000) != 0)
      {
        LODWORD(v13) = 1;
      }

      v77 = v13;
      v19 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v83 = v79;
      *v19 = 136315906;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v83);

      *(v19 + 4) = v20;
      outlined destroy of NSObject?(v18, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v18, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v19 + 12) = 2080;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v83);

      *(v19 + 14) = v21;
      swift_bridgeObjectRelease_n();
      *(v19 + 22) = 2080;
      *(v0 + 15572) = v77;
      v82[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v82[1] = v22;
      MEMORY[0x2667545A0](46, 0xE100000000000000);
      *(v0 + 20728) = v78;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v23);

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82[0], v82[1], &v83);

      *(v19 + 24) = v24;
      *(v19 + 32) = 2080;
      *(v0 + 15676) = v2;
      v82[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v82[1] = v25;
      MEMORY[0x2667545A0](46, 0xE100000000000000);
      *(v0 + 20736) = v3;
      v7 = (v0 + 19464);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v26);

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82[0], v82[1], &v83);

      *(v19 + 34) = v27;
      _os_log_impl(&dword_264F1F000, v11, v80, "SwiftMLSClientCoordinator processIncoming received commit for past epoch { identifier: %s, groupID: %s, mlsMessageVersion: %s, groupVersion: %s }", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266755550](v79, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    else
    {
      v47 = *(v0 + 20792);
      v48 = *(v0 + 20768);

      outlined destroy of NSObject?(v48, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v48, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      swift_bridgeObjectRelease_n();
    }

    v49 = *(v0 + 21312);
    v50 = *(v0 + 21304);
    v51 = *(v0 + 20768);
    v52 = *(v0 + 20752);
    v53 = *(v52 + 32);
    *(v7 + 9) = *(v52 + 41);
    *v7 = v53;
    *(v0 + 20608) = *(v51 + 16);
    v54 = *(v52 + 32);
    *(v0 + 18097) = *(v52 + 41);
    *(v0 + 18088) = v54;
    *(v82 + 7) = *(v51 + 16);
    *(v0 + 18072) = v50;
    *(v0 + 18080) = v49;
    *(v0 + 18113) = *v82;
    *(v0 + 18128) = *(&v82[1] + 7);
    v55 = *(v0 + 18088);
    *(v0 + 16888) = *(v0 + 18072);
    *(v0 + 16904) = v55;
    v56 = *(v0 + 18120);
    *(v0 + 16920) = *(v0 + 18104);
    *(v0 + 16936) = v56;
    outlined init with copy of MLS.OutgoingEventState?(v51, v0 + 1528, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20608, v0 + 20560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v51, v0 + 1192, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20608, v0 + 20592, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v7, v0 + 19336);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = *(v0 + 21312);
      v60 = *(v0 + 21304);
      v61 = *(v0 + 20768);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v82[0] = v63;
      *v62 = 136315138;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v59, v82);

      *(v62 + 4) = v64;
      outlined destroy of NSObject?(v61, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v61, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v57, v58, "SwiftMLSClientCoordinator processIncoming sending internal message event { identifier: %s }", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x266755550](v63, -1, -1);
      MEMORY[0x266755550](v62, -1, -1);
    }

    else
    {
      v73 = *(v0 + 20768);

      outlined destroy of NSObject?(v73, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v73, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v74 = *(v0 + 20792);
    v75 = *(v0 + 20760);
    outlined init with copy of ServerBag.MLS(*(v0 + 20776), v0 + 18624);
    *(v0 + 21360) = *(v75 + 80);
    *(v0 + 21368) = *(v75 + 88);
    v76 = v75 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 21376) = *(v75 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    *(v0 + 21384) = *(v76 + 8);

    swift_unknownObjectRetain();

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v28 = *(v0 + 21200);
    v29 = *(v0 + 20800);
    v30 = *(v0 + 20768);
    v31 = *(v0 + 20760);
    swift_beginAccess();
    Date.init()();
    v32 = type metadata accessor for MetricCollector.Event();
    *(v0 + 21576) = v32;
    v33 = *(v32 + 20);
    v34 = type metadata accessor for Date();
    *(v0 + 21584) = v34;
    v35 = *(v34 - 8);
    v36 = *(v35 + 56);
    *(v0 + 21592) = v36;
    *(v0 + 21600) = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v36(v28 + v33, 1, 1, v34);
    v37 = *(v32 - 8);
    v38 = *(v37 + 56);
    *(v0 + 21608) = v38;
    *(v0 + 21616) = (v37 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v38(v28, 0, 1, v32);
    specialized Dictionary.subscript.setter(v28, 0x534C4D7466697753, 0xEE0074696D6D6F43);
    swift_endAccess();
    *(v0 + 21624) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
    outlined init with copy of MLS.OutgoingEventState?(v30, v0 + 8416, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v30, v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 21312);
      v42 = *(v0 + 21304);
      v43 = *(v0 + 20768);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v82[0] = v45;
      *v44 = 136315138;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v82);

      *(v44 + 4) = v46;
      outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v39, v40, "SwiftMLSClientCoordinator processIncoming processing message { identifier: %s }", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266755550](v45, -1, -1);
      MEMORY[0x266755550](v44, -1, -1);
    }

    else
    {
      v65 = *(v0 + 20768);

      outlined destroy of NSObject?(v65, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v65, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v66 = *(v0 + 20776);
    v67 = v66[3];
    v68 = v66[4];
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v69 = *(v68 + 24);
    v81 = (v69 + *v69);
    v70 = v69[1];
    v71 = swift_task_alloc();
    *(v0 + 21632) = v71;
    *v71 = v0;
    v71[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return v81(v67, v68);
  }
}

{
  v1 = v0[2599];
  v2 = v0[2331];
  v3 = v0[2332];
  __swift_project_boxed_opaque_existential_1(v0 + 2328, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[2674] = v6;
  *v6 = v0;
  v6[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[2331];
  v2 = v0[2332];
  __swift_project_boxed_opaque_existential_1(v0 + 2328, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[2677] = v5;
  *v5 = v0;
  v5[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v7(v1, v2);
}

{
  v1 = v0[2670];
  swift_unknownObjectRelease();
  v0[2694] = v0[2675];
  v2 = v0[2599];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2328);

  v3 = v0[2662];
  outlined destroy of NSObject?((v0 + 2576), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v3, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 21432);
  v8 = *v1;
  *(*v1 + 21440) = v0;

  if (v0)
  {
    v4 = *(v2 + 21384);
    v5 = *(v2 + 20792);

    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[2654];
  v2 = v0[2652];
  v3 = v0[2651];
  v0[2681] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[2682] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[2331];
  v6 = v0[2332];
  __swift_project_boxed_opaque_existential_1(v0 + 2328, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[2683] = v9;
  *v9 = v0;
  v9[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v11(v5, v6);
}

{
  v1 = v0[2331];
  v2 = v0[2332];
  __swift_project_boxed_opaque_existential_1(v0 + 2328, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[2686] = v5;
  *v5 = v0;
  v5[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v7(v1, v2);
}

{
  v1 = v0[2670];
  swift_unknownObjectRelease();
  v0[2694] = v0[2680];
  v2 = v0[2599];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2328);

  v3 = v0[2662];
  outlined destroy of NSObject?((v0 + 2576), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v3, 0);
}

{
  v1 = v0[2670];
  swift_unknownObjectRelease();
  v2 = v0[2685];
  v3 = v0[2682];
  v4 = v0[2681];
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[2685];
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[2684];
  }

  v0[2694] = v0[2687];
  v7 = v0[2599];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2328);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v8 = v0[2662];
  outlined destroy of NSObject?((v0 + 2576), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v8, 0);
}

{
  v17 = *(v0 + 21536);
  v18 = *(v0 + 21544);
  v1 = *(v0 + 21512);
  v2 = *(v0 + 21504);
  v3 = *(v0 + 21480);
  v4 = *(v0 + 21456);
  v5 = *(v0 + 21448);
  v6 = *(v0 + 21424);
  v7 = *(v0 + 21408);
  v8 = *(v0 + 21360);
  v19 = *(v0 + 21296);
  v9 = *(v0 + 20792);
  v14 = v9;
  v10 = *(v0 + 20784);
  v15 = v10;
  v16 = *(v0 + 21472);
  swift_unknownObjectRelease();
  *(v0 + 15264) = v10;
  *(v0 + 15272) = v9;
  if (v2 >> 60 == 15)
  {
    v2 = 0xC000000000000000;
    v11 = 0;
  }

  else
  {
    v11 = v1;
  }

  if (v3 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
    v12 = 0;
  }

  else
  {
    v12 = v16;
  }

  if ((v7 & 0x100000000) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  *(v0 + 15280) = v7;
  *(v0 + 15288) = v7;
  *(v0 + 15296) = v6;
  *(v0 + 15304) = v5;
  *(v0 + 15312) = v4;
  *(v0 + 15320) = v12;
  *(v0 + 15328) = v3;
  *(v0 + 15336) = v11;
  *(v0 + 15344) = v2;
  *(v0 + 15352) = v18;
  *(v0 + 15360) = v17;
  outlined init with copy of MLS.Group(v0 + 15264, v0 + 15160);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18624));
  *(v0 + 14952) = v15;
  *(v0 + 14960) = v14;
  *(v0 + 14968) = v7;
  *(v0 + 14976) = v7;
  *(v0 + 14984) = v6;
  *(v0 + 14992) = v5;
  *(v0 + 15000) = v4;
  *(v0 + 15008) = v12;
  *(v0 + 15016) = v3;
  *(v0 + 15024) = v11;
  *(v0 + 15032) = v2;
  *(v0 + 15040) = v18;
  *(v0 + 15048) = v17;
  outlined destroy of MLS.Group(v0 + 14952);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v19, 0);
}

{
  v1 = *(v0 + 20760);
  v2 = *(v1 + 96);
  v3 = *(v0 + 16936);
  *(v0 + 15816) = *(v0 + 16920);
  *(v0 + 15832) = v3;
  v4 = *(v0 + 16968);
  *(v0 + 15848) = *(v0 + 16952);
  *(v0 + 15864) = v4;
  v5 = *(v0 + 16904);
  *(v0 + 15784) = *(v0 + 16888);
  *(v0 + 15800) = v5;
  *(v0 + 15880) = 9;
  v6 = *(v0 + 15264);
  v7 = *(v0 + 15280);
  *(v0 + 13008) = *(v0 + 15296);
  *(v0 + 12992) = v7;
  *(v0 + 12976) = v6;
  v8 = *(v0 + 15312);
  v9 = *(v0 + 15328);
  v10 = *(v0 + 15344);
  *(v0 + 13072) = *(v0 + 15360);
  *(v0 + 13056) = v10;
  *(v0 + 13040) = v9;
  *(v0 + 13024) = v8;
  v11 = (v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
  if (*(v0 + 19464) == *v11 && *(v0 + 19472) == v11[1])
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13 = *(*v2 + 384);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 21560) = v15;
  *v15 = v0;
  v15[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return (v17)(v0 + 15784, v0 + 12976, 1, v12 & 1);
}

{
  v1 = v0[2673];
  v2 = v0[2670];
  swift_unknownObjectRelease();

  v3 = v0[2688];
  v4 = v0[2685];
  v5 = v0[2682];
  v6 = v0[2681];
  if (v3 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[2688];
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[2689];
  }

  if (v4 >> 60 == 15)
  {
    v9 = 0xC000000000000000;
  }

  else
  {
    v9 = v0[2685];
  }

  if (v4 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = v0[2684];
  }

  v0[2694] = v0[2691];
  v11 = v0[2599];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2328);

  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v10, v9);
  outlined consume of Data._Representation(v8, v7);
  v12 = v0[2662];
  outlined destroy of NSObject?((v0 + 2576), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v12, 0);
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  outlined destroy of NSObject?((v0 + 2259), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v2 + 8))(v1, v3);
  v45 = v0[2694];
  v4 = v0[2661];
  v5 = v0[2660];
  v6 = v0[2659];
  v7 = v0[2656];
  v8 = v0[2655];
  v9 = v0[2654];
  v10 = v0[2653];
  v11 = v0[2650];
  v12 = v0[2649];
  v13 = v0[2648];
  v16 = v0[2647];
  v17 = v0[2646];
  v18 = v0[2645];
  v19 = v0[2644];
  v20 = v0[2643];
  v21 = v0[2642];
  v22 = v0[2639];
  v23 = v0[2638];
  v24 = v0[2637];
  v25 = v0[2634];
  v26 = v0[2633];
  v27 = v0[2632];
  v28 = v0[2631];
  v29 = v0[2630];
  v30 = v0[2629];
  v31 = v0[2626];
  v32 = v0[2625];
  v33 = v0[2624];
  v34 = v0[2623];
  v35 = v0[2622];
  v36 = v0[2621];
  v37 = v0[2618];
  v38 = v0[2615];
  v39 = v0[2614];
  v40 = v0[2613];
  v41 = v0[2612];
  v42 = v0[2608];
  v43 = v0[2605];
  v44 = v0[2602];

  v14 = v0[1];

  return v14();
}

{
  v2 = *v1;
  v3 = *(*v1 + 21560);
  v8 = *v1;
  *(*v1 + 21568) = v0;

  if (v0)
  {
    v4 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 20608, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v5 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 21296);
    v5 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

{
  v67 = v0;
  v1 = *(v0 + 21352);
  v2 = *(v0 + 20760);
  outlined init with copy of MLS.OutgoingEventState?(*(v0 + 20768), v0 + 8752, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 21312);
    v6 = *(v0 + 21304);
    v64 = *(v0 + 21288);
    v7 = *(v0 + 21264);
    v8 = *(v0 + 21256);
    v9 = *(v0 + 20768);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v66 = v11;
    *v10 = 136315138;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v66);

    *(v10 + 4) = v12;
    outlined destroy of NSObject?(v9, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator processIncoming internal message returning processedContext to caller { identifier: %s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
    outlined destroy of NSObject?(v0 + 18072, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

    (*(v7 + 8))(v64, v8);
  }

  else
  {
    v13 = *(v0 + 21288);
    v14 = *(v0 + 21264);
    v15 = *(v0 + 21256);
    outlined destroy of NSObject?(*(v0 + 20768), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v0 + 18072, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 20800);
  v17 = *(v0 + 20744);
  swift_beginAccess();
  v18 = *(v16 + 16);
  *v17 = *(v0 + 20608);
  v19 = *(v0 + 15360);
  v20 = *(v0 + 15312);
  v21 = *(v0 + 15344);
  *(v17 + 80) = *(v0 + 15328);
  *(v17 + 96) = v21;
  *(v17 + 64) = v20;
  v22 = *(v0 + 15296);
  v23 = *(v0 + 15264);
  *(v17 + 32) = *(v0 + 15280);
  *(v17 + 48) = v22;
  *(v17 + 16) = v23;
  *(v17 + 112) = v19;
  *(v17 + 120) = v18;

  v24 = *(v0 + 21288);
  v25 = *(v0 + 21280);
  v26 = *(v0 + 21272);
  v27 = *(v0 + 21248);
  v28 = *(v0 + 21240);
  v29 = *(v0 + 21232);
  v30 = *(v0 + 21224);
  v31 = *(v0 + 21200);
  v32 = *(v0 + 21192);
  v33 = *(v0 + 21184);
  v36 = *(v0 + 21176);
  v37 = *(v0 + 21168);
  v38 = *(v0 + 21160);
  v39 = *(v0 + 21152);
  v40 = *(v0 + 21144);
  v41 = *(v0 + 21136);
  v42 = *(v0 + 21112);
  v43 = *(v0 + 21104);
  v44 = *(v0 + 21096);
  v45 = *(v0 + 21072);
  v46 = *(v0 + 21064);
  v47 = *(v0 + 21056);
  v48 = *(v0 + 21048);
  v49 = *(v0 + 21040);
  v50 = *(v0 + 21032);
  v51 = *(v0 + 21008);
  v52 = *(v0 + 21000);
  v53 = *(v0 + 20992);
  v54 = *(v0 + 20984);
  v55 = *(v0 + 20976);
  v56 = *(v0 + 20968);
  v57 = *(v0 + 20944);
  v58 = *(v0 + 20920);
  v59 = *(v0 + 20912);
  v60 = *(v0 + 20904);
  v61 = *(v0 + 20896);
  v62 = *(v0 + 20864);
  v63 = *(v0 + 20840);
  v65 = *(v0 + 20816);

  v34 = *(v0 + 8);

  return v34();
}

{
  v143 = v0;
  v1 = *(v0 + 21656);
  v2 = *(v0 + 21112);
  outlined copy of Data._Representation(**(v0 + 20752), *(*(v0 + 20752) + 8));
  MLS.Group.Message.init(fromRaw:)();
  if (v1)
  {
    *(v0 + 22584) = v1;
    v3 = *(v0 + 20840);
    v4 = *(v0 + 20824);
    *(v0 + 20688) = v1;
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v6 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
      v7 = *(v0 + 20840);
      v8 = *(v0 + 20832);
      v9 = *(v0 + 20824);
      if (v6 == *MEMORY[0x277D6AD10])
      {
        v131 = *(v0 + 21312);
        v124 = *(v0 + 21624);
        v127 = *(v0 + 21304);
        v10 = *(v0 + 20816);
        v11 = *(v0 + 20768);
        v12 = *(v0 + 20760);
        v13 = *(v0 + 20752);
        (*(v8 + 96))(v7, v9);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
        outlined init with take of MLS.Group.Member?(v7 + *(v14 + 48), v10, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
        closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v10, v12, v11, v13, v141);
        v16 = *v141;
        v15 = *&v141[8];
        *(v0 + 22592) = *v141;
        *(v0 + 22600) = v15;
        v17 = *&v141[16];
        *(v0 + 22608) = *&v141[16];
        v18 = v142;
        *(v0 + 15673) = v142;
        *(v0 + 20064) = *(v11 + 16);
        *&v141[7] = *(v11 + 16);
        *(v0 + 17560) = v127;
        *(v0 + 17568) = v131;
        *(v0 + 17576) = v16;
        *(v0 + 17584) = v15;
        *(v0 + 17592) = v17;
        *(v0 + 17600) = v18;
        *(v0 + 17601) = *v141;
        *(v0 + 17616) = *&v141[15];
        v19 = *(v0 + 17576);
        *(v0 + 16792) = *(v0 + 17560);
        *(v0 + 16808) = v19;
        v20 = *(v0 + 17608);
        *(v0 + 16824) = *(v0 + 17592);
        *(v0 + 16840) = v20;
        outlined copy of MLS.AllMember();
        outlined init with copy of MLS.OutgoingEventState?(v11, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        outlined copy of MLS.AllMember();
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        outlined init with copy of MLS.OutgoingEventState?(v11, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        v132 = v16;
        v21 = v15;
        outlined copy of MLS.AllMember();
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v125 = v23;
          v24 = *(v0 + 21312);
          v25 = *(v0 + 21304);
          v26 = v18;
          v27 = *(v0 + 20768);
          log = v22;
          v28 = *(v0 + 20760);
          v29 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v139[0] = v122;
          *v29 = 136315650;

          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v139);

          *(v29 + 4) = v30;
          outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          *(v29 + 12) = 2080;
          *v141 = v132;
          *&v141[8] = v21;
          *&v141[16] = v17;
          v142 = v26;
          outlined copy of MLS.AllMember();
          v31 = MLS.AllMember.description.getter();
          v33 = v32;
          outlined consume of MLS.AllMember();
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v139);

          *(v29 + 14) = v34;
          outlined consume of MLS.AllMember();
          v18 = v26;
          outlined consume of MLS.AllMember();
          *(v29 + 22) = 2080;
          v35 = *(v28 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
          v36 = *(v28 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
          v37 = *(v28 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
          *v141 = *(v28 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
          *&v141[8] = v35;
          *&v141[16] = v36;
          v142 = v37;
          outlined copy of MLS.AllMember();
          v38 = MLS.AllMember.description.getter();
          v40 = v39;
          outlined consume of MLS.AllMember();
          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v139);

          *(v29 + 24) = v41;

          _os_log_impl(&dword_264F1F000, log, v125, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v29, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266755550](v122, -1, -1);
          MEMORY[0x266755550](v29, -1, -1);
        }

        else
        {
          v76 = *(v0 + 20768);
          v77 = *(v0 + 20760);

          outlined destroy of NSObject?(v76, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v76, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
        }

        v78 = *(v0 + 21664);
        v79 = *(v0 + 20792);
        v80 = *(v0 + 20760);
        if ((v78 & 0x100000000) != 0)
        {
          v78 = 1;
        }

        else
        {
          v78 = v78;
        }

        v81 = *(v0 + 21640) + 1;
        *(v0 + 14536) = *(v0 + 20784);
        *(v0 + 14544) = v79;
        *(v0 + 14552) = v78;
        *(v0 + 14560) = v78;
        *(v0 + 14568) = v81;
        *(v0 + 14576) = xmmword_2651B68A0;
        *(v0 + 14592) = xmmword_2651B68A0;
        *(v0 + 14608) = xmmword_2651B68A0;
        *(v0 + 14624) = xmmword_2651B5F50;
        v82 = *(v80 + 96);
        v83 = *(v0 + 16840);
        *(v0 + 15920) = *(v0 + 16824);
        *(v0 + 15936) = v83;
        v84 = *(v0 + 16872);
        *(v0 + 15952) = *(v0 + 16856);
        *(v0 + 15968) = v84;
        v85 = *(v0 + 16808);
        *(v0 + 15888) = *(v0 + 16792);
        *(v0 + 15904) = v85;
        v86 = *(v0 + 14584);
        *(v0 + 13424) = *(v0 + 14568);
        *(v0 + 13440) = v86;
        v87 = *(v0 + 14616);
        *(v0 + 13456) = *(v0 + 14600);
        *(v0 + 13472) = v87;
        v88 = *(v0 + 14536);
        *(v0 + 13408) = *(v0 + 14552);
        *(v0 + 15984) = 4;
        *(v0 + 13488) = *(v0 + 14632);
        *(v0 + 13392) = v88;
        v139[0] = v132;
        v139[1] = v21;
        v139[2] = v17;
        v140 = v18;
        v89 = v80 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
        v90 = *(v89 + 8);
        v91 = *(v89 + 16);
        v92 = *(v89 + 24);
        *v141 = *v89;
        *&v141[8] = v90;
        *&v141[16] = v91;
        v142 = v92;

        outlined copy of MLS.AllMember();
        v93 = specialized static MLS.AllMember.== infix(_:_:)(v139, v141);
        outlined consume of MLS.AllMember();
        v130 = (*v82 + 384);
        v138 = (*v130 + **v130);
        v94 = (*v130)[1];
        v95 = swift_task_alloc();
        *(v0 + 22616) = v95;
        *v95 = v0;
        v95[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

        return (v138)(v0 + 15888, v0 + 13392, 1, v93 & 1);
      }

      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
      (*(v8 + 8))(v7, v9);
    }

    else
    {
      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    }

    v59 = *(v0 + 21288);
    v60 = *(v0 + 21280);
    v61 = *(v0 + 21272);
    v62 = *(v0 + 21248);
    v63 = *(v0 + 21240);
    v64 = *(v0 + 21232);
    v65 = *(v0 + 21224);
    v66 = *(v0 + 21200);
    v67 = *(v0 + 21192);
    v96 = *(v0 + 21184);
    v97 = *(v0 + 21176);
    v98 = *(v0 + 21168);
    v99 = *(v0 + 21160);
    v100 = *(v0 + 21152);
    v101 = *(v0 + 21144);
    v102 = *(v0 + 21136);
    v103 = *(v0 + 21112);
    v104 = *(v0 + 21104);
    v105 = *(v0 + 21096);
    v106 = *(v0 + 21072);
    v107 = *(v0 + 21064);
    v108 = *(v0 + 21056);
    v109 = *(v0 + 21048);
    v110 = *(v0 + 21040);
    v111 = *(v0 + 21032);
    v112 = *(v0 + 21008);
    v113 = *(v0 + 21000);
    v114 = *(v0 + 20992);
    v115 = *(v0 + 20984);
    v116 = *(v0 + 20976);
    v117 = *(v0 + 20968);
    v118 = *(v0 + 20944);
    v119 = *(v0 + 20920);
    loga = *(v0 + 20912);
    v123 = *(v0 + 20904);
    v126 = *(v0 + 20896);
    v128 = *(v0 + 20864);
    v129 = *(v0 + 20840);
    v135 = *(v0 + 20816);

    v68 = *(v0 + 8);

    return v68();
  }

  else
  {
    v42 = *(v0 + 15569);
    v43 = *(v0 + 20776);
    v45 = v43[3];
    v44 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v45);
    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v134 = (v44[18] + *v44[18]);
        v53 = *(v44[18] + 4);
        v54 = swift_task_alloc();
        *(v0 + 21704) = v54;
        *v54 = v0;
        v54[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v55 = *(v0 + 21112);
        v56 = v45;
        v57 = v44;
        v58 = v134;
      }

      else
      {
        v137 = (v44[19] + *v44[19]);
        v74 = *(v44[19] + 4);
        v75 = swift_task_alloc();
        *(v0 + 21728) = v75;
        *v75 = v0;
        v75[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v55 = *(v0 + 21112);
        v56 = v45;
        v57 = v44;
        v58 = v137;
      }

      return v58(v55, v56, v57);
    }

    else if (v42)
    {
      v69 = v44[17];
      v136 = (v69 + *v69);
      v70 = v69[1];
      v71 = swift_task_alloc();
      *(v0 + 21688) = v71;
      *v71 = v0;
      v71[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v72 = *(v0 + 21176);
      v73 = *(v0 + 21112);

      return (v136)(v72, v73, v45, v44);
    }

    else
    {
      (*(*(v0 + 21088) + 56))(*(v0 + 21072), 1, 1, *(v0 + 21080));
      v46 = v44[16];
      v133 = (v46 + *v46);
      v47 = v46[1];
      v48 = swift_task_alloc();
      *(v0 + 21672) = v48;
      *v48 = v0;
      v48[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v49 = *(v0 + 21184);
      v50 = *(v0 + 21112);
      v51 = *(v0 + 21072);

      return (v133)(v49, v50, v51, v45, v44);
    }
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 21672);
  v4 = *v1;
  *(*v1 + 21680) = v0;

  v5 = *(v2 + 21296);
  outlined destroy of NSObject?(*(v2 + 21072), &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  if (v0)
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v577 = v0;
  v1 = *(v0 + 21184);
  v542 = *(v0 + 21680);
  v551 = *(v0 + 21624);
  v2 = *(v0 + 21192);
  v3 = *(v0 + 21168);
  v4 = *(v0 + 21128);
  v5 = *(v0 + 21120);
  v6 = *(v0 + 21112);
  v7 = *(v0 + 21080);
  v8 = *(v0 + 20800);
  v9 = *(v0 + 20768);
  v10 = *(v0 + 20760);
  v11 = *(*(v0 + 21088) + 8);
  *(v0 + 21752) = v11;
  v11(v6, v7);
  (*(v4 + 32))(v2, v1, v5);
  v570[0] = 7;
  swift_beginAccess();
  MetricCollector.end(metric:)(v570);
  swift_endAccess();
  v12 = *(v4 + 16);
  v12(v3, v2, v5);
  outlined init with copy of MLS.OutgoingEventState?(v9, v0 + 2200, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v9, v0 + 2368, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 21312);
    v16 = *(v0 + 21304);
    v523 = *(v0 + 21160);
    v532 = *(v0 + 21168);
    v17 = *(v0 + 21128);
    v18 = *(v0 + 21120);
    v19 = *(v0 + 20768);
    v20 = swift_slowAlloc();
    v552 = swift_slowAlloc();
    *v570 = v552;
    *v20 = 136315394;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v570);

    *(v20 + 4) = v21;
    outlined destroy of NSObject?(v19, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v19, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v20 + 12) = 2080;
    v12(v523, v532, v18);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v570);

    *(v20 + 14) = v24;
    v25 = *(v17 + 8);
    v25(v532, v18);
    _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator processIncoming processed message { identifier: %s, message: %s }", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v552, -1, -1);
    MEMORY[0x266755550](v20, -1, -1);
  }

  else
  {
    v26 = *(v0 + 21168);
    v27 = *(v0 + 21128);
    v28 = *(v0 + 21120);
    v29 = *(v0 + 20768);

    outlined destroy of NSObject?(v29, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v29, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v25 = *(v27 + 8);
    v25(v26, v28);
  }

  *(v0 + 21760) = v25;
  v30 = *(v0 + 21152);
  v31 = *(v0 + 21128);
  v32 = *(v0 + 21120);
  v12(v30, *(v0 + 21192), v32);
  v33 = (*(v31 + 88))(v30, v32);
  if (v33 == *MEMORY[0x277D6AAA8])
  {
    v34 = *(v0 + 21152);
    v35 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v34, *(v0 + 21120));
    v36 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMR) + 48));
    v37 = *v36;
    *(v0 + 21768) = *v36;
    v38 = v36[1];
    *(v0 + 21776) = v38;
    v39 = *(v0 + 20768);
    if (*(v35 + 104) >> 60 == 15)
    {
      v40 = *(v0 + 20800);
      v41 = *(v0 + 20752);
      v43 = v41[1];
      v42 = v41[2];
      v44 = *v41;
      *(v0 + 18498) = *(v41 + 42);
      *(v0 + 18472) = v43;
      *(v0 + 18488) = v42;
      *(v0 + 18456) = v44;
      swift_beginAccess();
      *(v0 + 20712) = *(v40 + 16);
      v45 = *v39;
      v46 = *(v39 + 16);
      *(v0 + 9792) = *(v39 + 32);
      *(v0 + 9776) = v46;
      *(v0 + 9760) = v45;
      v47 = *(v39 + 48);
      v48 = *(v39 + 64);
      v49 = *(v39 + 80);
      *(v0 + 9856) = *(v39 + 96);
      *(v0 + 9840) = v49;
      *(v0 + 9824) = v48;
      *(v0 + 9808) = v47;
      v50 = *(v39 + 112);
      v51 = *(v39 + 128);
      v52 = *(v39 + 144);
      *(v0 + 9920) = *(v39 + 160);
      *(v0 + 9904) = v52;
      *(v0 + 9888) = v51;
      *(v0 + 9872) = v50;

      v53 = swift_task_alloc();
      *(v0 + 21784) = v53;
      *v53 = v0;
      v53[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v54 = *(v0 + 21312);
      v55 = *(v0 + 21304);
      v56 = *(v0 + 20792);
      v57 = *(v0 + 20784);
      v58 = *(v0 + 20776);
      v59 = *(v0 + 20760);
      v60 = *(v0 + 20744);
      v580 = v0 + 20712;
      v581 = v0 + 9760;
      v579 = v58;
      v61 = v0 + 18456;
      v62 = v37;
      v63 = v38;
LABEL_68:

      return MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(v60, v55, v54, v61, v62, v63, v57, v56);
    }

    v533 = v38;
    v543 = v37;
    v72 = *(v0 + 21624);
    v73 = *(v0 + 20760);
    v12(*(v0 + 21144), *(v0 + 21192), *(v0 + 21120));
    outlined init with copy of MLS.OutgoingEventState?(v39, v0 + 10264, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v39, v0 + 10600, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v0 + 21312);
      v77 = *(v0 + 21304);
      v553 = v25;
      v78 = *(v0 + 21160);
      v79 = *(v0 + 21144);
      v516 = *(v0 + 21128);
      v508 = *(v0 + 21120);
      v80 = *(v0 + 20768);
      v81 = swift_slowAlloc();
      v524 = swift_slowAlloc();
      *v570 = v524;
      *v81 = 136315394;

      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, v570);

      *(v81 + 4) = v82;
      outlined destroy of NSObject?(v80, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v80, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v81 + 12) = 2080;
      v12(v78, v79, v508);
      v25 = v553;
      v83 = String.init<A>(describing:)();
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v570);

      *(v81 + 14) = v85;
      v553(v79, v508);
      _os_log_impl(&dword_264F1F000, v74, v75, "SwiftMLSClientCoordinator processIncoming processed message had no AAD { identifier: %s, message: %s }", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v524, -1, -1);
      MEMORY[0x266755550](v81, -1, -1);
    }

    else
    {
      v112 = *(v0 + 21144);
      v113 = *(v0 + 21128);
      v114 = *(v0 + 21120);
      v115 = *(v0 + 20768);

      outlined destroy of NSObject?(v115, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v115, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v25(v112, v114);
    }

    v116 = *(v0 + 21288);
    v117 = *(v0 + 21264);
    v118 = *(v0 + 21256);
    v119 = *(v0 + 21192);
    v120 = *(v0 + 21152);
    v121 = *(v0 + 21120);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v122 = 14;
    *(v122 + 8) = 0;
    *(v122 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v543, v533);
    v25(v119, v121);
    (*(v117 + 8))(v116, v118);
    outlined destroy of NSObject?(v120, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
    goto LABEL_114;
  }

  if (v33 == *MEMORY[0x277D6AAB0])
  {
    v64 = *(v0 + 21152);
    v65 = *(v0 + 21048);
    v66 = *(v0 + 21024);
    v67 = *(v0 + 21016);
    (*(*(v0 + 21128) + 96))(v64, *(v0 + 21120));
    (*(v66 + 32))(v65, v64, v67);
    v68 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
    v70 = v69 >> 62;
    if ((v69 >> 62) > 1)
    {
      if (v70 != 2)
      {
        outlined consume of Data._Representation(v68, v69);
        goto LABEL_39;
      }

      v107 = *(v68 + 16);
      v108 = *(v68 + 24);
      v109 = outlined consume of Data._Representation(v68, v69);
      if (!__OFSUB__(v108, v107))
      {
        if (v108 != v107)
        {
          goto LABEL_52;
        }

LABEL_39:
        v145 = *(v0 + 21048);
        v146 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
        v148 = v147 >> 62;
        if ((v147 >> 62) <= 1)
        {
          if (!v148)
          {
            v149 = BYTE6(v147);
            outlined consume of Data._Representation(v146, v147);
            if (!v149)
            {
              goto LABEL_67;
            }

            goto LABEL_52;
          }

          v163 = HIDWORD(v146);
          v164 = v146;
          v109 = outlined consume of Data._Representation(v146, v147);
          if (!__OFSUB__(v163, v164))
          {
            if (v163 == v164)
            {
              goto LABEL_67;
            }

            goto LABEL_52;
          }

          goto LABEL_120;
        }

        if (v148 != 2)
        {
          outlined consume of Data._Representation(v146, v147);
          goto LABEL_67;
        }

        v150 = *(v146 + 16);
        v151 = *(v146 + 24);
        v109 = outlined consume of Data._Representation(v146, v147);
        if (!__OFSUB__(v151, v150))
        {
          if (v151 == v150)
          {
            goto LABEL_67;
          }

          goto LABEL_52;
        }

LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        return MEMORY[0x2822009F8](v109, v110, v111);
      }

      __break(1u);
    }

    else
    {
      if (!v70)
      {
        v71 = BYTE6(v69);
        outlined consume of Data._Representation(v68, v69);
        if (!v71)
        {
          goto LABEL_39;
        }

LABEL_52:
        v165 = *(v0 + 20768);
        v166 = v165[13];
        if (v166 >> 60 == 15)
        {
          v167 = *(v0 + 21624);
          v168 = *(v0 + 20760);
          v12(*(v0 + 21136), *(v0 + 21192), *(v0 + 21120));
          outlined init with copy of MLS.OutgoingEventState?(v165, v0 + 4720, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v165, v0 + 4888, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v169 = Logger.logObject.getter();
          v170 = static os_log_type_t.default.getter();
          v555 = v25;
          if (os_log_type_enabled(v169, v170))
          {
            v535 = v12;
            v171 = *(v0 + 21312);
            v172 = *(v0 + 21304);
            v173 = *(v0 + 21160);
            v526 = *(v0 + 21136);
            v544 = *(v0 + 21128);
            v174 = *(v0 + 21120);
            v175 = *(v0 + 20768);
            v176 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            *v570 = v177;
            *v176 = 136315394;

            v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v171, v570);

            *(v176 + 4) = v178;
            outlined destroy of NSObject?(v175, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v175, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            *(v176 + 12) = 2080;
            v535(v173, v526, v174);
            v179 = String.init<A>(describing:)();
            v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v180, v570);

            *(v176 + 14) = v181;
            v555(v526, v174);
            _os_log_impl(&dword_264F1F000, v169, v170, "SwiftMLSClientCoordinator processIncoming processed message had unexpected AAD { identifier: %s, message: %s }", v176, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v177, -1, -1);
            MEMORY[0x266755550](v176, -1, -1);
          }

          else
          {
            v200 = *(v0 + 21136);
            v201 = *(v0 + 21128);
            v202 = *(v0 + 21120);
            v203 = *(v0 + 20768);

            outlined destroy of NSObject?(v203, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v203, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v25(v200, v202);
          }

          v546 = *(v0 + 21288);
          v204 = *(v0 + 21264);
          v205 = *(v0 + 21256);
          v206 = *(v0 + 21192);
          v207 = *(v0 + 21120);
          v208 = *(v0 + 21048);
          v209 = *(v0 + 21024);
          v210 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v211 = 15;
          *(v211 + 8) = 0;
          *(v211 + 16) = 0;
          swift_willThrow();
          (*(v209 + 8))(v208, v210);
          v555(v206, v207);
          (*(v204 + 8))(v546, v205);
          goto LABEL_114;
        }

        v182 = v165[12];
        v183 = v165[14];
        v184 = v165[15];
        v186 = v165[16];
        v185 = v165[17];
        v187 = *(v0 + 21048);
        outlined copy of MLS.AdditionalAuthenticatedData?(v182, v166, v183, v184, v186, v185);
        outlined copy of Data._Representation(v182, v166);
        v545 = v185;
        outlined copy of Data?(v186, v185);
        v188 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
        v190 = v189;
        v191 = specialized static Data.== infix(_:_:)(v182, v166, v188, v189);
        outlined consume of Data._Representation(v188, v190);
        if ((v191 & 1) == 0)
        {
          v556 = v25;
          v562 = *(v0 + 21624);
          v212 = *(v0 + 20768);
          v502 = *(v0 + 20760);
          (*(*(v0 + 21024) + 16))(*(v0 + 21040), *(v0 + 21048), *(v0 + 21016));
          outlined init with copy of MLS.OutgoingEventState?(v212, v0 + 5392, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined copy of MLS.AdditionalAuthenticatedData?(v182, v166, v183, v184, v186, v545);
          outlined init with copy of MLS.OutgoingEventState?(v212, v0 + 5560, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v510 = v166;
          v527 = v184;
          v537 = v183;
          v518 = v186;
          outlined copy of MLS.AdditionalAuthenticatedData?(v182, v166, v183, v184, v186, v545);
          v213 = Logger.logObject.getter();
          v214 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v213, v214))
          {
            v563 = v214;
            v215 = *(v0 + 21312);
            v216 = *(v0 + 21304);
            v481 = *(v0 + 21040);
            v495 = *(v0 + 21024);
            v503 = *(v0 + 21016);
            v217 = *(v0 + 20768);
            v218 = swift_slowAlloc();
            v488 = swift_slowAlloc();
            *v570 = v488;
            *v218 = 136315650;

            v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v215, v570);

            *(v218 + 4) = v219;
            outlined destroy of NSObject?(v217, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v217, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            log = v213;
            *(v218 + 12) = 2080;
            outlined copy of Data._Representation(v182, v510);
            v220 = Data.description.getter();
            v222 = v221;
            outlined consume of Data._Representation(v182, v510);
            v223 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v222, v570);

            *(v218 + 14) = v223;
            v224 = v545;
            outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v183, v184, v518, v545);
            outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v183, v184, v518, v545);
            *(v218 + 22) = 2080;
            v225 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
            v227 = v226;
            v228 = Data.description.getter();
            v230 = v229;
            outlined consume of Data._Representation(v225, v227);
            v231 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v228, v230, v570);

            *(v218 + 24) = v231;
            v232 = v503;
            v504 = *(v495 + 8);
            v504(v481, v232);
            _os_log_impl(&dword_264F1F000, log, v563, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD messageID { identifier: %s, clientMessageID: %s, messageID: %s }", v218, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v488, -1, -1);
            MEMORY[0x266755550](v218, -1, -1);
          }

          else
          {
            v283 = *(v0 + 21040);
            v284 = *(v0 + 21024);
            v285 = *(v0 + 21016);
            v286 = *(v0 + 20768);

            outlined destroy of NSObject?(v286, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v286, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v224 = v545;
            outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v537, v184, v518, v545);
            outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v537, v184, v518, v545);
            v504 = *(v284 + 8);
            v504(v283, v285);
          }

          v287 = *(v0 + 21264);
          v482 = *(v0 + 21256);
          v489 = *(v0 + 21288);
          v470 = *(v0 + 21128);
          v473 = *(v0 + 21120);
          loga = *(v0 + 21192);
          v288 = *(v0 + 21048);
          v289 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v290 = 16;
          *(v290 + 8) = 0;
          *(v290 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v537, v527, v518, v224);
          outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v537, v527, v518, v224);
          v504(v288, v289);
          v556(loga, v473);
          (*(v287 + 8))(v489, v482);
          goto LABEL_114;
        }

        v501 = v182;
        v192 = v545;
        if (v545 >> 60 != 15)
        {
          v536 = v183;
          v193 = *(v0 + 21048);
          outlined copy of Data._Representation(v186, v545);
          v194 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
          v196 = v195;
          v197 = specialized static Data.== infix(_:_:)(v186, v545, v194, v195);
          outlined consume of Data._Representation(v194, v196);
          if ((v197 & 1) == 0)
          {
            v528 = v184;
            v511 = v166;
            v557 = v25;
            v322 = *(v0 + 21624);
            v323 = *(v0 + 20768);
            v324 = *(v0 + 20760);
            (*(*(v0 + 21024) + 16))(*(v0 + 21032), *(v0 + 21048), *(v0 + 21016));
            outlined init with copy of MLS.OutgoingEventState?(v323, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v186, v545);
            outlined init with copy of MLS.OutgoingEventState?(v323, v0 + 9256, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v186, v545);
            v325 = Logger.logObject.getter();
            v326 = static os_log_type_t.error.getter();
            v327 = v186;
            v519 = v186;
            if (os_log_type_enabled(v325, v326))
            {
              v328 = *(v0 + 21312);
              v329 = *(v0 + 21304);
              v330 = *(v0 + 21032);
              v490 = *(v0 + 21024);
              v496 = *(v0 + 21016);
              v331 = *(v0 + 20768);
              v332 = swift_slowAlloc();
              v568 = swift_slowAlloc();
              *v570 = v568;
              *v332 = 136315650;

              v333 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v329, v328, v570);

              *(v332 + 4) = v333;
              outlined destroy of NSObject?(v331, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v331, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              v483 = v326;
              *(v332 + 12) = 2080;
              outlined copy of Data._Representation(v327, v545);
              v334 = Data.description.getter();
              v336 = v335;
              outlined consume of Data?(v327, v545);
              v337 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v334, v336, v570);

              *(v332 + 14) = v337;
              outlined consume of Data?(v327, v545);
              outlined consume of Data?(v327, v545);
              *(v332 + 22) = 2080;
              v338 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
              v340 = v339;
              v341 = Data.description.getter();
              v343 = v342;
              outlined consume of Data._Representation(v338, v340);
              v344 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v341, v343, v570);

              *(v332 + 24) = v344;
              v345 = v496;
              v497 = *(v490 + 8);
              v497(v330, v345);
              _os_log_impl(&dword_264F1F000, v325, v483, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD originalMessageID { identifier: %s, clientOriginalMessageID: %s, originalMessageID: %s }", v332, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x266755550](v568, -1, -1);
              MEMORY[0x266755550](v332, -1, -1);
            }

            else
            {
              v430 = *(v0 + 21032);
              v431 = *(v0 + 21024);
              v432 = *(v0 + 21016);
              v433 = *(v0 + 20768);

              outlined destroy of NSObject?(v433, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v433, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined consume of Data?(v186, v545);
              outlined consume of Data?(v186, v545);
              v497 = *(v431 + 8);
              v497(v430, v432);
            }

            v434 = *(v0 + 21264);
            v485 = *(v0 + 21256);
            v492 = *(v0 + 21288);
            v474 = *(v0 + 21120);
            logb = *(v0 + 21192);
            v468 = *(v0 + 21048);
            v471 = *(v0 + 21128);
            v435 = *(v0 + 21016);
            lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
            swift_allocError();
            *v436 = 16;
            *(v436 + 8) = 0;
            *(v436 + 16) = 0;
            swift_willThrow();
            outlined consume of Data?(v519, v545);
            outlined consume of MLS.AdditionalAuthenticatedData?(v501, v511, v536, v528, v519, v545);
            outlined consume of MLS.AdditionalAuthenticatedData?(v501, v511, v536, v528, v519, v545);
            v497(v468, v435);
            v557(logb, v474);
            (*(v434 + 8))(v492, v485);
            goto LABEL_114;
          }

          outlined consume of Data?(v186, v545);
          v183 = v536;
        }

        v198 = *(v0 + 21048);
        v199 = MLS.Group.IncomingApplicationMessageDetails.era.getter();
        if ((v199 & 0x100000000) == 0 && v183 != v199)
        {
          v559 = v25;
          v513 = v199;
          v569 = *(v0 + 21624);
          v398 = *(v0 + 20768);
          v399 = *(v0 + 20760);
          outlined init with copy of MLS.OutgoingEventState?(v398, v0 + 6736, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v398, v0 + 6904, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v530 = v184;
          v540 = v183;
          outlined copy of MLS.AdditionalAuthenticatedData?(v501, v166, v183, v184, v186, v545);
          v400 = Logger.logObject.getter();
          v401 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v400, v401))
          {
            v402 = *(v0 + 21312);
            v521 = v186;
            v403 = *(v0 + 21304);
            v404 = *(v0 + 20768);
            v405 = swift_slowAlloc();
            v406 = swift_slowAlloc();
            *v570 = v406;
            *v405 = 136315650;

            v407 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v403, v402, v570);

            *(v405 + 4) = v407;
            outlined destroy of NSObject?(v404, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v404, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v408 = v166;
            *(v405 + 12) = 1024;
            *(v405 + 14) = v540;
            v409 = v501;
            v410 = v521;
            v192 = v545;
            outlined consume of MLS.AdditionalAuthenticatedData?(v501, v166, v540, v530, v521, v545);
            *(v405 + 18) = 1024;
            *(v405 + 20) = v513;
            _os_log_impl(&dword_264F1F000, v400, v401, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD era { identifier: %s, clientEra: %u, era: %u }", v405, 0x18u);
            __swift_destroy_boxed_opaque_existential_1Tm(v406);
            MEMORY[0x266755550](v406, -1, -1);
            MEMORY[0x266755550](v405, -1, -1);
          }

          else
          {
            v437 = *(v0 + 20768);

            outlined destroy of NSObject?(v437, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v437, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined consume of MLS.AdditionalAuthenticatedData?(v501, v166, v183, v184, v186, v545);
            v410 = v186;
            v408 = v166;
            v409 = v501;
          }

          v438 = *(v0 + 21264);
          v506 = *(v0 + 21256);
          v514 = *(v0 + 21288);
          v493 = *(v0 + 21120);
          v499 = *(v0 + 21192);
          logc = *(v0 + 21048);
          v486 = *(v0 + 21128);
          v439 = *(v0 + 21024);
          v440 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v441 = 16;
          *(v441 + 8) = 0;
          *(v441 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v409, v408, v540, v530, v410, v192);
          outlined consume of MLS.AdditionalAuthenticatedData?(v409, v408, v540, v530, v410, v192);
          (*(v439 + 8))(logc, v440);
          v559(v499, v493);
          (*(v438 + 8))(v514, v506);
          goto LABEL_114;
        }

        outlined consume of MLS.AdditionalAuthenticatedData?(v501, v166, v183, v184, v186, v545);
        outlined consume of MLS.AdditionalAuthenticatedData?(v501, v166, v183, v184, v186, v545);
LABEL_67:
        v233 = *(v0 + 21048);
        v234 = *(v0 + 20800);
        v235 = *(v0 + 20768);
        v236 = *(v0 + 20752);
        v238 = v236[1];
        v237 = v236[2];
        v239 = *v236;
        *(v0 + 18562) = *(v236 + 42);
        *(v0 + 18536) = v238;
        *(v0 + 18552) = v237;
        *(v0 + 18520) = v239;
        v240 = MLS.Group.IncomingApplicationMessageDetails.data.getter();
        v242 = v241;
        *(v0 + 21800) = v240;
        *(v0 + 21808) = v241;
        swift_beginAccess();
        *(v0 + 20720) = *(v234 + 16);
        v243 = *v235;
        v244 = v235[1];
        *(v0 + 6432) = v235[2];
        *(v0 + 6416) = v244;
        *(v0 + 6400) = v243;
        v245 = v235[3];
        v246 = v235[4];
        v247 = v235[5];
        *(v0 + 6496) = v235[6];
        *(v0 + 6480) = v247;
        *(v0 + 6464) = v246;
        *(v0 + 6448) = v245;
        v248 = v235[7];
        v249 = v235[8];
        v250 = v235[9];
        *(v0 + 6560) = *(v235 + 20);
        *(v0 + 6544) = v250;
        *(v0 + 6528) = v249;
        *(v0 + 6512) = v248;

        v251 = swift_task_alloc();
        *(v0 + 21816) = v251;
        *v251 = v0;
        v251[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v54 = *(v0 + 21312);
        v55 = *(v0 + 21304);
        v56 = *(v0 + 20792);
        v57 = *(v0 + 20784);
        v252 = *(v0 + 20776);
        v253 = *(v0 + 20760);
        v60 = *(v0 + 20744);
        v580 = v0 + 20720;
        v581 = v0 + 6400;
        v579 = v252;
        v61 = v0 + 18520;
        v62 = v240;
        v63 = v242;
        goto LABEL_68;
      }

      v143 = HIDWORD(v68);
      v144 = v68;
      v109 = outlined consume of Data._Representation(v68, v69);
      if (!__OFSUB__(v143, v144))
      {
        if (v143 != v144)
        {
          goto LABEL_52;
        }

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_119;
  }

  if (v33 == *MEMORY[0x277D6AAC0])
  {
    v554 = v25;
    v86 = *(v0 + 21152);
    v87 = *(v0 + 20864);
    v88 = *(v0 + 20856);
    v89 = *(v0 + 20848);
    v90 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v86, *(v0 + 21120));
    (*(v88 + 32))(v87, v86, v89);
    v92 = v90[3];
    v91 = v90[4];
    v93 = v90[2];
    *(v0 + 18180) = *(v90 + 76);
    *(v0 + 18152) = v92;
    *(v0 + 18168) = v91;
    *(v0 + 18136) = v93;
    v94 = *(v0 + 18152);
    v95 = *(v0 + 18168);
    v96 = *(v0 + 21624);
    if (v94 >> 16 == 0xFFFFFFFF && (v95 & 0x3000000000000000) == 0)
    {
      v97 = *(v0 + 20768);
      v98 = *(v0 + 20760);
      outlined init with copy of MLS.OutgoingEventState?(v97, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v97, v0 + 10936, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = *(v0 + 21312);
        v102 = *(v0 + 21304);
        v103 = *(v0 + 20768);
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v570 = v105;
        *v104 = 136315138;

        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v101, v570);

        *(v104 + 4) = v106;
        outlined destroy of NSObject?(v103, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v103, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v99, v100, "SwiftMLSClientCoordinator processIncoming signed message was not given expected data { identifier: %s }", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        MEMORY[0x266755550](v105, -1, -1);
        MEMORY[0x266755550](v104, -1, -1);
      }

      else
      {
        v273 = *(v0 + 20768);

        outlined destroy of NSObject?(v273, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v273, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v274 = *(v0 + 21288);
      v275 = *(v0 + 21264);
      v276 = *(v0 + 21256);
      v277 = *(v0 + 21192);
      v278 = *(v0 + 21128);
      v279 = *(v0 + 21120);
      v547 = *(v0 + 20864);
      v280 = *(v0 + 20856);
      v281 = *(v0 + 20848);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v282 = 12;
      *(v282 + 8) = 0;
      *(v282 + 16) = 0;
      swift_willThrow();
      v554(v277, v279);
      (*(v275 + 8))(v274, v276);
      (*(v280 + 8))(v547, v281);
      goto LABEL_114;
    }

    v517 = *(v0 + 18192);
    v525 = *(v0 + 18184);
    v534 = *(v0 + 18176);
    v561 = *(v0 + 18160);
    v509 = *(v0 + 18136);
    v134 = *(v0 + 20760);
    v136 = v90[3];
    v135 = v90[4];
    v137 = v90[2];
    *(v0 + 18244) = *(v90 + 76);
    *(v0 + 18216) = v136;
    *(v0 + 18232) = v135;
    *(v0 + 18200) = v137;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18264, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18328, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.SigningInput(v0 + 18200, v0 + 18392);
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v576 = v141;
      *v140 = 136315138;
      v142 = (v95 >> 60) & 3;
      if (v142)
      {
        *v570 = v94;
        *&v570[8] = v561;
        *&v570[16] = v95 & 0xCFFFFFFFFFFFFFFFLL;
        if (v142 == 1)
        {
          v571 = v534;
          v572 = v525;
          LOWORD(v573) = v517;
          v346 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
        }

        else
        {
          v346 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
        }
      }

      else
      {
        *v570 = v94;
        *&v570[8] = v561;
        *&v570[16] = v95;
        v571 = v534;
        v572 = v525;
        LODWORD(v573) = v517;
        v346 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
      }

      v348 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v346, v347, &v576);

      *(v140 + 4) = v348;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      _os_log_impl(&dword_264F1F000, v138, v139, "SwiftMLSClientCoordinator processIncoming signed data. { expectedSignedData: %s }", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      MEMORY[0x266755550](v141, -1, -1);
      MEMORY[0x266755550](v140, -1, -1);
    }

    else
    {

      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    }

    v349 = *(v0 + 20864);
    v350 = *(v0 + 20768);
    v351 = *(v0 + 20760);
    *v570 = v509;
    *&v570[16] = v94;
    v571 = v561;
    v572 = v95;
    v573 = v534;
    v574 = v525;
    v575 = v517;
    outlined init with copy of MLS.OutgoingEventState?(v350, v0 + 10768, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v350, v0 + 10432, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter((v0 + 18824));
    v352 = *(v0 + 18856);
    __swift_project_boxed_opaque_existential_1((v0 + 18824), *(v0 + 18848));
    v353 = MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter();
    v355 = v354;
    MLS.VerifiableDerivedContent.verifyEquals(_:)();
    if (v542)
    {
      v356 = v542;
      v548 = *(v0 + 21288);
      v512 = *(v0 + 21264);
      v520 = *(v0 + 21256);
      v484 = *(v0 + 21128);
      v491 = *(v0 + 21120);
      v498 = *(v0 + 21192);
      v538 = *(v0 + 20864);
      v505 = *(v0 + 20856);
      v529 = *(v0 + 20848);
      v357 = *(v0 + 20768);
      v358 = *(v0 + 20760);
      outlined consume of Data._Representation(v353, v355);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
      swift_getErrorValue();
      v359 = *(v0 + 19776);
      v360 = Error.readableDescription.getter(*(v0 + 19784), *(v0 + 19792));
      closure #8 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v360, v361, v358, v357);

      swift_getErrorValue();
      v362 = *(v0 + 19752);
      v363 = Error.readableDescription.getter(*(v0 + 19760), *(v0 + 19768));
      v365 = v364;
      *(v0 + 19704) = 13;
      *(v0 + 19712) = v363;
      *(v0 + 19720) = v364;
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_willThrowTypedImpl();

      outlined destroy of NSObject?(v357, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined destroy of NSObject?(v357, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      swift_allocError();
      *v366 = 13;
      *(v366 + 8) = v363;
      *(v366 + 16) = v365;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      v554(v498, v491);
      (*(v512 + 8))(v548, v520);
      (*(v505 + 8))(v538, v529);
LABEL_114:
      v442 = *(v0 + 21288);
      v443 = *(v0 + 21280);
      v444 = *(v0 + 21272);
      v445 = *(v0 + 21248);
      v446 = *(v0 + 21240);
      v447 = *(v0 + 21232);
      v448 = *(v0 + 21224);
      v449 = *(v0 + 21200);
      v450 = *(v0 + 21192);
      v451 = *(v0 + 21184);
      v453 = *(v0 + 21176);
      v454 = *(v0 + 21168);
      v455 = *(v0 + 21160);
      v456 = *(v0 + 21152);
      v457 = *(v0 + 21144);
      v458 = *(v0 + 21136);
      v459 = *(v0 + 21112);
      v460 = *(v0 + 21104);
      v461 = *(v0 + 21096);
      v462 = *(v0 + 21072);
      v463 = *(v0 + 21064);
      v464 = *(v0 + 21056);
      v465 = *(v0 + 21048);
      v466 = *(v0 + 21040);
      v467 = *(v0 + 21032);
      v469 = *(v0 + 21008);
      v472 = *(v0 + 21000);
      v475 = *(v0 + 20992);
      logd = *(v0 + 20984);
      v487 = *(v0 + 20976);
      v494 = *(v0 + 20968);
      v500 = *(v0 + 20944);
      v507 = *(v0 + 20920);
      v515 = *(v0 + 20912);
      v522 = *(v0 + 20904);
      v531 = *(v0 + 20896);
      v541 = *(v0 + 20864);
      v550 = *(v0 + 20840);
      v560 = *(v0 + 20816);

      v452 = *(v0 + 8);

      return v452();
    }

    v549 = *(v0 + 21312);
    v558 = *(v0 + 21624);
    v539 = *(v0 + 21304);
    v367 = *(v0 + 20768);
    v368 = *(v0 + 20760);
    v369 = *(v0 + 20752);

    outlined destroy of NSObject?(v367, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v367, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v353, v355);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
    v370 = *(v369 + 32);
    *(v0 + 19249) = *(v369 + 41);
    *(v0 + 19240) = v370;
    *(v0 + 20272) = *(v367 + 16);
    v371 = *(v369 + 32);
    *(v0 + 17905) = *(v369 + 41);
    *(v0 + 17896) = v371;
    *&v570[7] = *(v367 + 16);
    *(v0 + 17880) = v539;
    *(v0 + 17888) = v549;
    *(v0 + 17921) = *v570;
    *(v0 + 17936) = *&v570[15];
    v372 = *(v0 + 17896);
    *(v0 + 16696) = *(v0 + 17880);
    *(v0 + 16712) = v372;
    v373 = *(v0 + 17928);
    *(v0 + 16728) = *(v0 + 17912);
    *(v0 + 16744) = v373;
    outlined init with copy of MLS.OutgoingEventState?(v367, v0 + 9592, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20384, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v367, v0 + 9424, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20368, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19240, v0 + 19624);
    v374 = Logger.logObject.getter();
    v375 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v374, v375))
    {
      v376 = *(v0 + 21312);
      v377 = *(v0 + 21304);
      v378 = *(v0 + 20768);
      v379 = swift_slowAlloc();
      v380 = swift_slowAlloc();
      *v570 = v380;
      *v379 = 136315138;

      v381 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v377, v376, v570);

      *(v379 + 4) = v381;
      outlined destroy of NSObject?(v378, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v378, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v374, v375, "SwiftMLSClientCoordinator processIncoming sending signature verified event { identifier: %s }", v379, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v380);
      MEMORY[0x266755550](v380, -1, -1);
      MEMORY[0x266755550](v379, -1, -1);
    }

    else
    {
      v382 = *(v0 + 20768);

      outlined destroy of NSObject?(v382, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v382, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v383 = *(v0 + 20760);
    v384 = v383[12];
    v385 = *(v0 + 16744);
    *(v0 + 15712) = *(v0 + 16728);
    *(v0 + 15728) = v385;
    v386 = *(v0 + 16776);
    *(v0 + 15744) = *(v0 + 16760);
    *(v0 + 15760) = v386;
    v387 = *(v0 + 16712);
    *(v0 + 15680) = *(v0 + 16696);
    v388 = *(v0 + 20792);
    v389 = *(v0 + 20776);
    *(v0 + 22256) = v384;
    *(v0 + 15696) = v387;
    *(v0 + 15776) = 7;
    outlined init with copy of ServerBag.MLS(v389, v0 + 18944);
    v390 = v383[10];
    *(v0 + 22264) = v390;
    v391 = v383[11];
    *(v0 + 22272) = v391;
    v392 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22280) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v393 = (v383 + v392);
    v394 = v393[1];
    *(v0 + 20352) = *v393;
    *(v0 + 20360) = v394;

    swift_unknownObjectRetain();

    v395 = swift_task_alloc();
    *(v0 + 22288) = v395;
    *v395 = v0;
    v395[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v396 = *(v0 + 20792);
    v397 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 13496, v397, v396, v0 + 18944, v390, v391, (v0 + 20352));
  }

  else if (v33 == *MEMORY[0x277D6AAC8])
  {
    v123 = *(v0 + 21152);
    v124 = *(v0 + 21008);
    v125 = *(v0 + 21000);
    (*(*(v0 + 21128) + 96))(v123, *(v0 + 21120));
    outlined init with take of MLS.Group.Member?(v123, v124, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v124, v125, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v126 = type metadata accessor for MLS.Group.StateUpdate();
    *(v0 + 21832) = v126;
    v127 = *(v126 - 8);
    *(v0 + 21840) = v127;
    v128 = *(v127 + 48);
    *(v0 + 21848) = v128;
    *(v0 + 21856) = (v127 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v129 = v128(v125, 1, v126);
    v130 = *(v0 + 21000);
    if (v129 == 1)
    {
      v131 = *(v0 + 20760);
      v132 = *(v0 + 20752);
      outlined destroy of NSObject?(*(v0 + 21000), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      if (*(v132 + 32) == *(v131 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember) && *(v132 + 40) == *(v131 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8))
      {
        v133 = 1;
      }

      else
      {
        v133 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v133 = MLS.Group.StateUpdate.committerWasSelf.getter();
      (*(v127 + 8))(v130, v126);
    }

    *(v0 + 15570) = v133 & 1;
    v291 = *(v0 + 20776);
    v292 = v291[3];
    v293 = v291[4];
    __swift_project_boxed_opaque_existential_1(v291, v292);
    v294 = *(v293 + 40);
    v565 = (v294 + *v294);
    v295 = v294[1];
    v296 = swift_task_alloc();
    *(v0 + 21864) = v296;
    *v296 = v0;
    v296[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return (v565)(v292, v293);
  }

  else
  {
    if (v33 != *MEMORY[0x277D6AAD0])
    {
      v255 = v25;
      v256 = *(v0 + 21624);
      if (v33 != *MEMORY[0x277D6AAB8])
      {
        v312 = *(v0 + 20768);
        v313 = *(v0 + 20760);
        outlined init with copy of MLS.OutgoingEventState?(v312, v0 + 2536, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined init with copy of MLS.OutgoingEventState?(v312, v0 + 2704, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        v314 = Logger.logObject.getter();
        v315 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v314, v315))
        {
          v316 = *(v0 + 21312);
          v317 = *(v0 + 21304);
          v318 = *(v0 + 20768);
          v319 = swift_slowAlloc();
          v320 = swift_slowAlloc();
          *v570 = v320;
          *v319 = 136315138;

          v321 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v317, v316, v570);

          *(v319 + 4) = v321;
          outlined destroy of NSObject?(v318, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v318, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          _os_log_impl(&dword_264F1F000, v314, v315, "SwiftMLSClientCoordinator processIncoming missing SwiftMLS incoming message type { identifier: %s }", v319, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v320);
          MEMORY[0x266755550](v320, -1, -1);
          MEMORY[0x266755550](v319, -1, -1);
        }

        else
        {
          v420 = *(v0 + 20768);

          outlined destroy of NSObject?(v420, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v420, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        }

        v421 = v255;
        v422 = *(v0 + 21288);
        v423 = *(v0 + 21264);
        v424 = *(v0 + 21256);
        v425 = *(v0 + 21192);
        v426 = *(v0 + 21152);
        v427 = *(v0 + 21128);
        v428 = *(v0 + 21120);
        lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
        swift_allocError();
        *v429 = 6;
        *(v429 + 8) = 0;
        *(v429 + 16) = 0;
        swift_willThrow();
        v421(v425, v428);
        (*(v423 + 8))(v422, v424);
        v421(v426, v428);
        goto LABEL_114;
      }

      v257 = *(v0 + 21312);
      v258 = *(v0 + 21304);
      v259 = *(v0 + 20768);
      v564 = *(v0 + 20760);
      v260 = *(v0 + 20752);
      v261 = *(v260 + 32);
      *(v0 + 19505) = *(v260 + 41);
      *(v0 + 19496) = v261;
      *(v0 + 20288) = *(v259 + 16);
      v262 = *(v260 + 32);
      *(v0 + 18033) = *(v260 + 41);
      *(v0 + 18024) = v262;
      *&v570[7] = *(v259 + 16);
      *(v0 + 18008) = v258;
      *(v0 + 18016) = v257;
      *(v0 + 18049) = *v570;
      *(v0 + 18064) = *&v570[15];
      v263 = *(v0 + 18024);
      *(v0 + 17080) = *(v0 + 18008);
      *(v0 + 17096) = v263;
      v264 = *(v0 + 18056);
      *(v0 + 17112) = *(v0 + 18040);
      *(v0 + 17128) = v264;
      outlined init with copy of MLS.OutgoingEventState?(v259, v0 + 2872, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20496, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v259, v0 + 3208, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20480, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.AllMember(v0 + 19496, v0 + 19432);
      v265 = Logger.logObject.getter();
      v266 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v265, v266))
      {
        v267 = *(v0 + 21312);
        v268 = *(v0 + 21304);
        v269 = *(v0 + 20768);
        v270 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        *v570 = v271;
        *v270 = 136315138;

        v272 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v268, v267, v570);

        *(v270 + 4) = v272;
        outlined destroy of NSObject?(v269, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v269, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v265, v266, "SwiftMLSClientCoordinator processIncoming sending internal message event { identifier: %s }", v270, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v271);
        MEMORY[0x266755550](v271, -1, -1);
        MEMORY[0x266755550](v270, -1, -1);
      }

      else
      {
        v411 = *(v0 + 20768);

        outlined destroy of NSObject?(v411, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v411, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v412 = *(v0 + 20792);
      v413 = *(v0 + 20776);
      v414 = *(v0 + 20760);
      *(v0 + 22336) = v414[12];
      v415 = *(v0 + 17128);
      *(v0 + 15608) = *(v0 + 17112);
      *(v0 + 15624) = v415;
      v416 = *(v0 + 17160);
      *(v0 + 15640) = *(v0 + 17144);
      *(v0 + 15656) = v416;
      v417 = *(v0 + 17096);
      *(v0 + 15576) = *(v0 + 17080);
      *(v0 + 15592) = v417;
      *(v0 + 15672) = 9;
      outlined init with copy of ServerBag.MLS(v413, v0 + 18984);
      *(v0 + 22344) = v414[10];
      *(v0 + 22352) = v414[11];
      v418 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
      *(v0 + 22360) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
      v419 = (v414 + v418);
      *(v0 + 22368) = *v419;
      *(v0 + 22376) = v419[1];

      swift_unknownObjectRetain();

      v109 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v110 = 0;
      v111 = 0;

      return MEMORY[0x2822009F8](v109, v110, v111);
    }

    v152 = *(v0 + 21624);
    v153 = *(v0 + 20768);
    v154 = *(v0 + 20760);
    outlined init with copy of MLS.OutgoingEventState?(v153, v0 + 8248, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v153, v0 + 7912, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = *(v0 + 21312);
      v158 = *(v0 + 21304);
      v159 = *(v0 + 20768);
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v570 = v161;
      *v160 = 136315138;

      v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v157, v570);

      *(v160 + 4) = v162;
      outlined destroy of NSObject?(v159, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v159, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v155, v156, "SwiftMLSClientCoordinator processIncoming committing proposal { identifier: %s }", v160, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      MEMORY[0x266755550](v161, -1, -1);
      MEMORY[0x266755550](v160, -1, -1);
    }

    else
    {
      v297 = *(v0 + 20768);

      outlined destroy of NSObject?(v297, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v297, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v566 = *(v0 + 21616);
    v298 = *(v0 + 21608);
    v299 = *(v0 + 21600);
    v300 = *(v0 + 21592);
    v301 = *(v0 + 21584);
    v302 = *(v0 + 21576);
    v303 = *(v0 + 21200);
    v304 = *(v0 + 20800);
    v305 = *(v0 + 20776);
    swift_beginAccess();
    Date.init()();
    v300(v303 + *(v302 + 20), 1, 1, v301);
    v298(v303, 0, 1, v302);
    specialized Dictionary.subscript.setter(v303, 0xD000000000000016, 0x80000002651E7960);
    swift_endAccess();
    v306 = v305[3];
    v307 = v305[4];
    __swift_project_boxed_opaque_existential_1(v305, v306);
    v308 = *(v307 + 248);
    v567 = (v308 + *v308);
    v309 = v308[1];
    v310 = swift_task_alloc();
    *(v0 + 22200) = v310;
    *v310 = v0;
    v310[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v311 = *(v0 + 20920);

    return (v567)(v311, v306, v307);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 21688);
  v4 = *v1;
  *(*v1 + 21696) = v0;

  v5 = *(v2 + 21296);
  if (v0)
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v577 = v0;
  v1 = *(v0 + 21176);
  v542 = *(v0 + 21696);
  v551 = *(v0 + 21624);
  v2 = *(v0 + 21192);
  v3 = *(v0 + 21168);
  v4 = *(v0 + 21128);
  v5 = *(v0 + 21120);
  v6 = *(v0 + 21112);
  v7 = *(v0 + 21080);
  v8 = *(v0 + 20800);
  v9 = *(v0 + 20768);
  v10 = *(v0 + 20760);
  v11 = *(*(v0 + 21088) + 8);
  *(v0 + 21752) = v11;
  v11(v6, v7);
  (*(v4 + 32))(v2, v1, v5);
  v570[0] = 7;
  swift_beginAccess();
  MetricCollector.end(metric:)(v570);
  swift_endAccess();
  v12 = *(v4 + 16);
  v12(v3, v2, v5);
  outlined init with copy of MLS.OutgoingEventState?(v9, v0 + 2200, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v9, v0 + 2368, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 21312);
    v16 = *(v0 + 21304);
    v523 = *(v0 + 21160);
    v532 = *(v0 + 21168);
    v17 = *(v0 + 21128);
    v18 = *(v0 + 21120);
    v19 = *(v0 + 20768);
    v20 = swift_slowAlloc();
    v552 = swift_slowAlloc();
    *v570 = v552;
    *v20 = 136315394;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v570);

    *(v20 + 4) = v21;
    outlined destroy of NSObject?(v19, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v19, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v20 + 12) = 2080;
    v12(v523, v532, v18);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v570);

    *(v20 + 14) = v24;
    v25 = *(v17 + 8);
    v25(v532, v18);
    _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator processIncoming processed message { identifier: %s, message: %s }", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v552, -1, -1);
    MEMORY[0x266755550](v20, -1, -1);
  }

  else
  {
    v26 = *(v0 + 21168);
    v27 = *(v0 + 21128);
    v28 = *(v0 + 21120);
    v29 = *(v0 + 20768);

    outlined destroy of NSObject?(v29, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v29, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v25 = *(v27 + 8);
    v25(v26, v28);
  }

  *(v0 + 21760) = v25;
  v30 = *(v0 + 21152);
  v31 = *(v0 + 21128);
  v32 = *(v0 + 21120);
  v12(v30, *(v0 + 21192), v32);
  v33 = (*(v31 + 88))(v30, v32);
  if (v33 == *MEMORY[0x277D6AAA8])
  {
    v34 = *(v0 + 21152);
    v35 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v34, *(v0 + 21120));
    v36 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMR) + 48));
    v37 = *v36;
    *(v0 + 21768) = *v36;
    v38 = v36[1];
    *(v0 + 21776) = v38;
    v39 = *(v0 + 20768);
    if (*(v35 + 104) >> 60 == 15)
    {
      v40 = *(v0 + 20800);
      v41 = *(v0 + 20752);
      v43 = v41[1];
      v42 = v41[2];
      v44 = *v41;
      *(v0 + 18498) = *(v41 + 42);
      *(v0 + 18472) = v43;
      *(v0 + 18488) = v42;
      *(v0 + 18456) = v44;
      swift_beginAccess();
      *(v0 + 20712) = *(v40 + 16);
      v45 = *v39;
      v46 = *(v39 + 16);
      *(v0 + 9792) = *(v39 + 32);
      *(v0 + 9776) = v46;
      *(v0 + 9760) = v45;
      v47 = *(v39 + 48);
      v48 = *(v39 + 64);
      v49 = *(v39 + 80);
      *(v0 + 9856) = *(v39 + 96);
      *(v0 + 9840) = v49;
      *(v0 + 9824) = v48;
      *(v0 + 9808) = v47;
      v50 = *(v39 + 112);
      v51 = *(v39 + 128);
      v52 = *(v39 + 144);
      *(v0 + 9920) = *(v39 + 160);
      *(v0 + 9904) = v52;
      *(v0 + 9888) = v51;
      *(v0 + 9872) = v50;

      v53 = swift_task_alloc();
      *(v0 + 21784) = v53;
      *v53 = v0;
      v53[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v54 = *(v0 + 21312);
      v55 = *(v0 + 21304);
      v56 = *(v0 + 20792);
      v57 = *(v0 + 20784);
      v58 = *(v0 + 20776);
      v59 = *(v0 + 20760);
      v60 = *(v0 + 20744);
      v580 = v0 + 20712;
      v581 = v0 + 9760;
      v579 = v58;
      v61 = v0 + 18456;
      v62 = v37;
      v63 = v38;
LABEL_68:

      return MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(v60, v55, v54, v61, v62, v63, v57, v56);
    }

    v533 = v38;
    v543 = v37;
    v72 = *(v0 + 21624);
    v73 = *(v0 + 20760);
    v12(*(v0 + 21144), *(v0 + 21192), *(v0 + 21120));
    outlined init with copy of MLS.OutgoingEventState?(v39, v0 + 10264, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v39, v0 + 10600, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v0 + 21312);
      v77 = *(v0 + 21304);
      v553 = v25;
      v78 = *(v0 + 21160);
      v79 = *(v0 + 21144);
      v516 = *(v0 + 21128);
      v508 = *(v0 + 21120);
      v80 = *(v0 + 20768);
      v81 = swift_slowAlloc();
      v524 = swift_slowAlloc();
      *v570 = v524;
      *v81 = 136315394;

      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, v570);

      *(v81 + 4) = v82;
      outlined destroy of NSObject?(v80, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v80, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v81 + 12) = 2080;
      v12(v78, v79, v508);
      v25 = v553;
      v83 = String.init<A>(describing:)();
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v570);

      *(v81 + 14) = v85;
      v553(v79, v508);
      _os_log_impl(&dword_264F1F000, v74, v75, "SwiftMLSClientCoordinator processIncoming processed message had no AAD { identifier: %s, message: %s }", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v524, -1, -1);
      MEMORY[0x266755550](v81, -1, -1);
    }

    else
    {
      v112 = *(v0 + 21144);
      v113 = *(v0 + 21128);
      v114 = *(v0 + 21120);
      v115 = *(v0 + 20768);

      outlined destroy of NSObject?(v115, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v115, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v25(v112, v114);
    }

    v116 = *(v0 + 21288);
    v117 = *(v0 + 21264);
    v118 = *(v0 + 21256);
    v119 = *(v0 + 21192);
    v120 = *(v0 + 21152);
    v121 = *(v0 + 21120);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v122 = 14;
    *(v122 + 8) = 0;
    *(v122 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v543, v533);
    v25(v119, v121);
    (*(v117 + 8))(v116, v118);
    outlined destroy of NSObject?(v120, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
    goto LABEL_114;
  }

  if (v33 == *MEMORY[0x277D6AAB0])
  {
    v64 = *(v0 + 21152);
    v65 = *(v0 + 21048);
    v66 = *(v0 + 21024);
    v67 = *(v0 + 21016);
    (*(*(v0 + 21128) + 96))(v64, *(v0 + 21120));
    (*(v66 + 32))(v65, v64, v67);
    v68 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
    v70 = v69 >> 62;
    if ((v69 >> 62) > 1)
    {
      if (v70 != 2)
      {
        outlined consume of Data._Representation(v68, v69);
        goto LABEL_39;
      }

      v107 = *(v68 + 16);
      v108 = *(v68 + 24);
      v109 = outlined consume of Data._Representation(v68, v69);
      if (!__OFSUB__(v108, v107))
      {
        if (v108 != v107)
        {
          goto LABEL_52;
        }

LABEL_39:
        v145 = *(v0 + 21048);
        v146 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
        v148 = v147 >> 62;
        if ((v147 >> 62) <= 1)
        {
          if (!v148)
          {
            v149 = BYTE6(v147);
            outlined consume of Data._Representation(v146, v147);
            if (!v149)
            {
              goto LABEL_67;
            }

            goto LABEL_52;
          }

          v163 = HIDWORD(v146);
          v164 = v146;
          v109 = outlined consume of Data._Representation(v146, v147);
          if (!__OFSUB__(v163, v164))
          {
            if (v163 == v164)
            {
              goto LABEL_67;
            }

            goto LABEL_52;
          }

          goto LABEL_120;
        }

        if (v148 != 2)
        {
          outlined consume of Data._Representation(v146, v147);
          goto LABEL_67;
        }

        v150 = *(v146 + 16);
        v151 = *(v146 + 24);
        v109 = outlined consume of Data._Representation(v146, v147);
        if (!__OFSUB__(v151, v150))
        {
          if (v151 == v150)
          {
            goto LABEL_67;
          }

          goto LABEL_52;
        }

LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        return MEMORY[0x2822009F8](v109, v110, v111);
      }

      __break(1u);
    }

    else
    {
      if (!v70)
      {
        v71 = BYTE6(v69);
        outlined consume of Data._Representation(v68, v69);
        if (!v71)
        {
          goto LABEL_39;
        }

LABEL_52:
        v165 = *(v0 + 20768);
        v166 = v165[13];
        if (v166 >> 60 == 15)
        {
          v167 = *(v0 + 21624);
          v168 = *(v0 + 20760);
          v12(*(v0 + 21136), *(v0 + 21192), *(v0 + 21120));
          outlined init with copy of MLS.OutgoingEventState?(v165, v0 + 4720, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v165, v0 + 4888, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v169 = Logger.logObject.getter();
          v170 = static os_log_type_t.default.getter();
          v555 = v25;
          if (os_log_type_enabled(v169, v170))
          {
            v535 = v12;
            v171 = *(v0 + 21312);
            v172 = *(v0 + 21304);
            v173 = *(v0 + 21160);
            v526 = *(v0 + 21136);
            v544 = *(v0 + 21128);
            v174 = *(v0 + 21120);
            v175 = *(v0 + 20768);
            v176 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            *v570 = v177;
            *v176 = 136315394;

            v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v171, v570);

            *(v176 + 4) = v178;
            outlined destroy of NSObject?(v175, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v175, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            *(v176 + 12) = 2080;
            v535(v173, v526, v174);
            v179 = String.init<A>(describing:)();
            v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v180, v570);

            *(v176 + 14) = v181;
            v555(v526, v174);
            _os_log_impl(&dword_264F1F000, v169, v170, "SwiftMLSClientCoordinator processIncoming processed message had unexpected AAD { identifier: %s, message: %s }", v176, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v177, -1, -1);
            MEMORY[0x266755550](v176, -1, -1);
          }

          else
          {
            v200 = *(v0 + 21136);
            v201 = *(v0 + 21128);
            v202 = *(v0 + 21120);
            v203 = *(v0 + 20768);

            outlined destroy of NSObject?(v203, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v203, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v25(v200, v202);
          }

          v546 = *(v0 + 21288);
          v204 = *(v0 + 21264);
          v205 = *(v0 + 21256);
          v206 = *(v0 + 21192);
          v207 = *(v0 + 21120);
          v208 = *(v0 + 21048);
          v209 = *(v0 + 21024);
          v210 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v211 = 15;
          *(v211 + 8) = 0;
          *(v211 + 16) = 0;
          swift_willThrow();
          (*(v209 + 8))(v208, v210);
          v555(v206, v207);
          (*(v204 + 8))(v546, v205);
          goto LABEL_114;
        }

        v182 = v165[12];
        v183 = v165[14];
        v184 = v165[15];
        v186 = v165[16];
        v185 = v165[17];
        v187 = *(v0 + 21048);
        outlined copy of MLS.AdditionalAuthenticatedData?(v182, v166, v183, v184, v186, v185);
        outlined copy of Data._Representation(v182, v166);
        v545 = v185;
        outlined copy of Data?(v186, v185);
        v188 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
        v190 = v189;
        v191 = specialized static Data.== infix(_:_:)(v182, v166, v188, v189);
        outlined consume of Data._Representation(v188, v190);
        if ((v191 & 1) == 0)
        {
          v556 = v25;
          v562 = *(v0 + 21624);
          v212 = *(v0 + 20768);
          v502 = *(v0 + 20760);
          (*(*(v0 + 21024) + 16))(*(v0 + 21040), *(v0 + 21048), *(v0 + 21016));
          outlined init with copy of MLS.OutgoingEventState?(v212, v0 + 5392, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined copy of MLS.AdditionalAuthenticatedData?(v182, v166, v183, v184, v186, v545);
          outlined init with copy of MLS.OutgoingEventState?(v212, v0 + 5560, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v510 = v166;
          v527 = v184;
          v537 = v183;
          v518 = v186;
          outlined copy of MLS.AdditionalAuthenticatedData?(v182, v166, v183, v184, v186, v545);
          v213 = Logger.logObject.getter();
          v214 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v213, v214))
          {
            v563 = v214;
            v215 = *(v0 + 21312);
            v216 = *(v0 + 21304);
            v481 = *(v0 + 21040);
            v495 = *(v0 + 21024);
            v503 = *(v0 + 21016);
            v217 = *(v0 + 20768);
            v218 = swift_slowAlloc();
            v488 = swift_slowAlloc();
            *v570 = v488;
            *v218 = 136315650;

            v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v215, v570);

            *(v218 + 4) = v219;
            outlined destroy of NSObject?(v217, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v217, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            log = v213;
            *(v218 + 12) = 2080;
            outlined copy of Data._Representation(v182, v510);
            v220 = Data.description.getter();
            v222 = v221;
            outlined consume of Data._Representation(v182, v510);
            v223 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v222, v570);

            *(v218 + 14) = v223;
            v224 = v545;
            outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v183, v184, v518, v545);
            outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v183, v184, v518, v545);
            *(v218 + 22) = 2080;
            v225 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
            v227 = v226;
            v228 = Data.description.getter();
            v230 = v229;
            outlined consume of Data._Representation(v225, v227);
            v231 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v228, v230, v570);

            *(v218 + 24) = v231;
            v232 = v503;
            v504 = *(v495 + 8);
            v504(v481, v232);
            _os_log_impl(&dword_264F1F000, log, v563, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD messageID { identifier: %s, clientMessageID: %s, messageID: %s }", v218, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v488, -1, -1);
            MEMORY[0x266755550](v218, -1, -1);
          }

          else
          {
            v283 = *(v0 + 21040);
            v284 = *(v0 + 21024);
            v285 = *(v0 + 21016);
            v286 = *(v0 + 20768);

            outlined destroy of NSObject?(v286, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v286, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v224 = v545;
            outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v537, v184, v518, v545);
            outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v537, v184, v518, v545);
            v504 = *(v284 + 8);
            v504(v283, v285);
          }

          v287 = *(v0 + 21264);
          v482 = *(v0 + 21256);
          v489 = *(v0 + 21288);
          v470 = *(v0 + 21128);
          v473 = *(v0 + 21120);
          loga = *(v0 + 21192);
          v288 = *(v0 + 21048);
          v289 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v290 = 16;
          *(v290 + 8) = 0;
          *(v290 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v537, v527, v518, v224);
          outlined consume of MLS.AdditionalAuthenticatedData?(v182, v510, v537, v527, v518, v224);
          v504(v288, v289);
          v556(loga, v473);
          (*(v287 + 8))(v489, v482);
          goto LABEL_114;
        }

        v501 = v182;
        v192 = v545;
        if (v545 >> 60 != 15)
        {
          v536 = v183;
          v193 = *(v0 + 21048);
          outlined copy of Data._Representation(v186, v545);
          v194 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
          v196 = v195;
          v197 = specialized static Data.== infix(_:_:)(v186, v545, v194, v195);
          outlined consume of Data._Representation(v194, v196);
          if ((v197 & 1) == 0)
          {
            v528 = v184;
            v511 = v166;
            v557 = v25;
            v322 = *(v0 + 21624);
            v323 = *(v0 + 20768);
            v324 = *(v0 + 20760);
            (*(*(v0 + 21024) + 16))(*(v0 + 21032), *(v0 + 21048), *(v0 + 21016));
            outlined init with copy of MLS.OutgoingEventState?(v323, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v186, v545);
            outlined init with copy of MLS.OutgoingEventState?(v323, v0 + 9256, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v186, v545);
            v325 = Logger.logObject.getter();
            v326 = static os_log_type_t.error.getter();
            v327 = v186;
            v519 = v186;
            if (os_log_type_enabled(v325, v326))
            {
              v328 = *(v0 + 21312);
              v329 = *(v0 + 21304);
              v330 = *(v0 + 21032);
              v490 = *(v0 + 21024);
              v496 = *(v0 + 21016);
              v331 = *(v0 + 20768);
              v332 = swift_slowAlloc();
              v568 = swift_slowAlloc();
              *v570 = v568;
              *v332 = 136315650;

              v333 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v329, v328, v570);

              *(v332 + 4) = v333;
              outlined destroy of NSObject?(v331, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v331, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              v483 = v326;
              *(v332 + 12) = 2080;
              outlined copy of Data._Representation(v327, v545);
              v334 = Data.description.getter();
              v336 = v335;
              outlined consume of Data?(v327, v545);
              v337 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v334, v336, v570);

              *(v332 + 14) = v337;
              outlined consume of Data?(v327, v545);
              outlined consume of Data?(v327, v545);
              *(v332 + 22) = 2080;
              v338 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
              v340 = v339;
              v341 = Data.description.getter();
              v343 = v342;
              outlined consume of Data._Representation(v338, v340);
              v344 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v341, v343, v570);

              *(v332 + 24) = v344;
              v345 = v496;
              v497 = *(v490 + 8);
              v497(v330, v345);
              _os_log_impl(&dword_264F1F000, v325, v483, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD originalMessageID { identifier: %s, clientOriginalMessageID: %s, originalMessageID: %s }", v332, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x266755550](v568, -1, -1);
              MEMORY[0x266755550](v332, -1, -1);
            }

            else
            {
              v430 = *(v0 + 21032);
              v431 = *(v0 + 21024);
              v432 = *(v0 + 21016);
              v433 = *(v0 + 20768);

              outlined destroy of NSObject?(v433, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v433, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined consume of Data?(v186, v545);
              outlined consume of Data?(v186, v545);
              v497 = *(v431 + 8);
              v497(v430, v432);
            }

            v434 = *(v0 + 21264);
            v485 = *(v0 + 21256);
            v492 = *(v0 + 21288);
            v474 = *(v0 + 21120);
            logb = *(v0 + 21192);
            v468 = *(v0 + 21048);
            v471 = *(v0 + 21128);
            v435 = *(v0 + 21016);
            lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
            swift_allocError();
            *v436 = 16;
            *(v436 + 8) = 0;
            *(v436 + 16) = 0;
            swift_willThrow();
            outlined consume of Data?(v519, v545);
            outlined consume of MLS.AdditionalAuthenticatedData?(v501, v511, v536, v528, v519, v545);
            outlined consume of MLS.AdditionalAuthenticatedData?(v501, v511, v536, v528, v519, v545);
            v497(v468, v435);
            v557(logb, v474);
            (*(v434 + 8))(v492, v485);
            goto LABEL_114;
          }

          outlined consume of Data?(v186, v545);
          v183 = v536;
        }

        v198 = *(v0 + 21048);
        v199 = MLS.Group.IncomingApplicationMessageDetails.era.getter();
        if ((v199 & 0x100000000) == 0 && v183 != v199)
        {
          v559 = v25;
          v513 = v199;
          v569 = *(v0 + 21624);
          v398 = *(v0 + 20768);
          v399 = *(v0 + 20760);
          outlined init with copy of MLS.OutgoingEventState?(v398, v0 + 6736, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v398, v0 + 6904, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v530 = v184;
          v540 = v183;
          outlined copy of MLS.AdditionalAuthenticatedData?(v501, v166, v183, v184, v186, v545);
          v400 = Logger.logObject.getter();
          v401 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v400, v401))
          {
            v402 = *(v0 + 21312);
            v521 = v186;
            v403 = *(v0 + 21304);
            v404 = *(v0 + 20768);
            v405 = swift_slowAlloc();
            v406 = swift_slowAlloc();
            *v570 = v406;
            *v405 = 136315650;

            v407 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v403, v402, v570);

            *(v405 + 4) = v407;
            outlined destroy of NSObject?(v404, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v404, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v408 = v166;
            *(v405 + 12) = 1024;
            *(v405 + 14) = v540;
            v409 = v501;
            v410 = v521;
            v192 = v545;
            outlined consume of MLS.AdditionalAuthenticatedData?(v501, v166, v540, v530, v521, v545);
            *(v405 + 18) = 1024;
            *(v405 + 20) = v513;
            _os_log_impl(&dword_264F1F000, v400, v401, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD era { identifier: %s, clientEra: %u, era: %u }", v405, 0x18u);
            __swift_destroy_boxed_opaque_existential_1Tm(v406);
            MEMORY[0x266755550](v406, -1, -1);
            MEMORY[0x266755550](v405, -1, -1);
          }

          else
          {
            v437 = *(v0 + 20768);

            outlined destroy of NSObject?(v437, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v437, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined consume of MLS.AdditionalAuthenticatedData?(v501, v166, v183, v184, v186, v545);
            v410 = v186;
            v408 = v166;
            v409 = v501;
          }

          v438 = *(v0 + 21264);
          v506 = *(v0 + 21256);
          v514 = *(v0 + 21288);
          v493 = *(v0 + 21120);
          v499 = *(v0 + 21192);
          logc = *(v0 + 21048);
          v486 = *(v0 + 21128);
          v439 = *(v0 + 21024);
          v440 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v441 = 16;
          *(v441 + 8) = 0;
          *(v441 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v409, v408, v540, v530, v410, v192);
          outlined consume of MLS.AdditionalAuthenticatedData?(v409, v408, v540, v530, v410, v192);
          (*(v439 + 8))(logc, v440);
          v559(v499, v493);
          (*(v438 + 8))(v514, v506);
          goto LABEL_114;
        }

        outlined consume of MLS.AdditionalAuthenticatedData?(v501, v166, v183, v184, v186, v545);
        outlined consume of MLS.AdditionalAuthenticatedData?(v501, v166, v183, v184, v186, v545);
LABEL_67:
        v233 = *(v0 + 21048);
        v234 = *(v0 + 20800);
        v235 = *(v0 + 20768);
        v236 = *(v0 + 20752);
        v238 = v236[1];
        v237 = v236[2];
        v239 = *v236;
        *(v0 + 18562) = *(v236 + 42);
        *(v0 + 18536) = v238;
        *(v0 + 18552) = v237;
        *(v0 + 18520) = v239;
        v240 = MLS.Group.IncomingApplicationMessageDetails.data.getter();
        v242 = v241;
        *(v0 + 21800) = v240;
        *(v0 + 21808) = v241;
        swift_beginAccess();
        *(v0 + 20720) = *(v234 + 16);
        v243 = *v235;
        v244 = v235[1];
        *(v0 + 6432) = v235[2];
        *(v0 + 6416) = v244;
        *(v0 + 6400) = v243;
        v245 = v235[3];
        v246 = v235[4];
        v247 = v235[5];
        *(v0 + 6496) = v235[6];
        *(v0 + 6480) = v247;
        *(v0 + 6464) = v246;
        *(v0 + 6448) = v245;
        v248 = v235[7];
        v249 = v235[8];
        v250 = v235[9];
        *(v0 + 6560) = *(v235 + 20);
        *(v0 + 6544) = v250;
        *(v0 + 6528) = v249;
        *(v0 + 6512) = v248;

        v251 = swift_task_alloc();
        *(v0 + 21816) = v251;
        *v251 = v0;
        v251[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v54 = *(v0 + 21312);
        v55 = *(v0 + 21304);
        v56 = *(v0 + 20792);
        v57 = *(v0 + 20784);
        v252 = *(v0 + 20776);
        v253 = *(v0 + 20760);
        v60 = *(v0 + 20744);
        v580 = v0 + 20720;
        v581 = v0 + 6400;
        v579 = v252;
        v61 = v0 + 18520;
        v62 = v240;
        v63 = v242;
        goto LABEL_68;
      }

      v143 = HIDWORD(v68);
      v144 = v68;
      v109 = outlined consume of Data._Representation(v68, v69);
      if (!__OFSUB__(v143, v144))
      {
        if (v143 != v144)
        {
          goto LABEL_52;
        }

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_119;
  }

  if (v33 == *MEMORY[0x277D6AAC0])
  {
    v554 = v25;
    v86 = *(v0 + 21152);
    v87 = *(v0 + 20864);
    v88 = *(v0 + 20856);
    v89 = *(v0 + 20848);
    v90 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v86, *(v0 + 21120));
    (*(v88 + 32))(v87, v86, v89);
    v92 = v90[3];
    v91 = v90[4];
    v93 = v90[2];
    *(v0 + 18180) = *(v90 + 76);
    *(v0 + 18152) = v92;
    *(v0 + 18168) = v91;
    *(v0 + 18136) = v93;
    v94 = *(v0 + 18152);
    v95 = *(v0 + 18168);
    v96 = *(v0 + 21624);
    if (v94 >> 16 == 0xFFFFFFFF && (v95 & 0x3000000000000000) == 0)
    {
      v97 = *(v0 + 20768);
      v98 = *(v0 + 20760);
      outlined init with copy of MLS.OutgoingEventState?(v97, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v97, v0 + 10936, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = *(v0 + 21312);
        v102 = *(v0 + 21304);
        v103 = *(v0 + 20768);
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v570 = v105;
        *v104 = 136315138;

        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v101, v570);

        *(v104 + 4) = v106;
        outlined destroy of NSObject?(v103, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v103, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v99, v100, "SwiftMLSClientCoordinator processIncoming signed message was not given expected data { identifier: %s }", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        MEMORY[0x266755550](v105, -1, -1);
        MEMORY[0x266755550](v104, -1, -1);
      }

      else
      {
        v273 = *(v0 + 20768);

        outlined destroy of NSObject?(v273, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v273, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v274 = *(v0 + 21288);
      v275 = *(v0 + 21264);
      v276 = *(v0 + 21256);
      v277 = *(v0 + 21192);
      v278 = *(v0 + 21128);
      v279 = *(v0 + 21120);
      v547 = *(v0 + 20864);
      v280 = *(v0 + 20856);
      v281 = *(v0 + 20848);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v282 = 12;
      *(v282 + 8) = 0;
      *(v282 + 16) = 0;
      swift_willThrow();
      v554(v277, v279);
      (*(v275 + 8))(v274, v276);
      (*(v280 + 8))(v547, v281);
      goto LABEL_114;
    }

    v517 = *(v0 + 18192);
    v525 = *(v0 + 18184);
    v534 = *(v0 + 18176);
    v561 = *(v0 + 18160);
    v509 = *(v0 + 18136);
    v134 = *(v0 + 20760);
    v136 = v90[3];
    v135 = v90[4];
    v137 = v90[2];
    *(v0 + 18244) = *(v90 + 76);
    *(v0 + 18216) = v136;
    *(v0 + 18232) = v135;
    *(v0 + 18200) = v137;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18264, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18328, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.SigningInput(v0 + 18200, v0 + 18392);
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v576 = v141;
      *v140 = 136315138;
      v142 = (v95 >> 60) & 3;
      if (v142)
      {
        *v570 = v94;
        *&v570[8] = v561;
        *&v570[16] = v95 & 0xCFFFFFFFFFFFFFFFLL;
        if (v142 == 1)
        {
          v571 = v534;
          v572 = v525;
          LOWORD(v573) = v517;
          v346 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
        }

        else
        {
          v346 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
        }
      }

      else
      {
        *v570 = v94;
        *&v570[8] = v561;
        *&v570[16] = v95;
        v571 = v534;
        v572 = v525;
        LODWORD(v573) = v517;
        v346 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
      }

      v348 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v346, v347, &v576);

      *(v140 + 4) = v348;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      _os_log_impl(&dword_264F1F000, v138, v139, "SwiftMLSClientCoordinator processIncoming signed data. { expectedSignedData: %s }", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      MEMORY[0x266755550](v141, -1, -1);
      MEMORY[0x266755550](v140, -1, -1);
    }

    else
    {

      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    }

    v349 = *(v0 + 20864);
    v350 = *(v0 + 20768);
    v351 = *(v0 + 20760);
    *v570 = v509;
    *&v570[16] = v94;
    v571 = v561;
    v572 = v95;
    v573 = v534;
    v574 = v525;
    v575 = v517;
    outlined init with copy of MLS.OutgoingEventState?(v350, v0 + 10768, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v350, v0 + 10432, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter((v0 + 18824));
    v352 = *(v0 + 18856);
    __swift_project_boxed_opaque_existential_1((v0 + 18824), *(v0 + 18848));
    v353 = MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter();
    v355 = v354;
    MLS.VerifiableDerivedContent.verifyEquals(_:)();
    if (v542)
    {
      v356 = v542;
      v548 = *(v0 + 21288);
      v512 = *(v0 + 21264);
      v520 = *(v0 + 21256);
      v484 = *(v0 + 21128);
      v491 = *(v0 + 21120);
      v498 = *(v0 + 21192);
      v538 = *(v0 + 20864);
      v505 = *(v0 + 20856);
      v529 = *(v0 + 20848);
      v357 = *(v0 + 20768);
      v358 = *(v0 + 20760);
      outlined consume of Data._Representation(v353, v355);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
      swift_getErrorValue();
      v359 = *(v0 + 19776);
      v360 = Error.readableDescription.getter(*(v0 + 19784), *(v0 + 19792));
      closure #8 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v360, v361, v358, v357);

      swift_getErrorValue();
      v362 = *(v0 + 19752);
      v363 = Error.readableDescription.getter(*(v0 + 19760), *(v0 + 19768));
      v365 = v364;
      *(v0 + 19704) = 13;
      *(v0 + 19712) = v363;
      *(v0 + 19720) = v364;
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_willThrowTypedImpl();

      outlined destroy of NSObject?(v357, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined destroy of NSObject?(v357, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      swift_allocError();
      *v366 = 13;
      *(v366 + 8) = v363;
      *(v366 + 16) = v365;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      v554(v498, v491);
      (*(v512 + 8))(v548, v520);
      (*(v505 + 8))(v538, v529);
LABEL_114:
      v442 = *(v0 + 21288);
      v443 = *(v0 + 21280);
      v444 = *(v0 + 21272);
      v445 = *(v0 + 21248);
      v446 = *(v0 + 21240);
      v447 = *(v0 + 21232);
      v448 = *(v0 + 21224);
      v449 = *(v0 + 21200);
      v450 = *(v0 + 21192);
      v451 = *(v0 + 21184);
      v453 = *(v0 + 21176);
      v454 = *(v0 + 21168);
      v455 = *(v0 + 21160);
      v456 = *(v0 + 21152);
      v457 = *(v0 + 21144);
      v458 = *(v0 + 21136);
      v459 = *(v0 + 21112);
      v460 = *(v0 + 21104);
      v461 = *(v0 + 21096);
      v462 = *(v0 + 21072);
      v463 = *(v0 + 21064);
      v464 = *(v0 + 21056);
      v465 = *(v0 + 21048);
      v466 = *(v0 + 21040);
      v467 = *(v0 + 21032);
      v469 = *(v0 + 21008);
      v472 = *(v0 + 21000);
      v475 = *(v0 + 20992);
      logd = *(v0 + 20984);
      v487 = *(v0 + 20976);
      v494 = *(v0 + 20968);
      v500 = *(v0 + 20944);
      v507 = *(v0 + 20920);
      v515 = *(v0 + 20912);
      v522 = *(v0 + 20904);
      v531 = *(v0 + 20896);
      v541 = *(v0 + 20864);
      v550 = *(v0 + 20840);
      v560 = *(v0 + 20816);

      v452 = *(v0 + 8);

      return v452();
    }

    v549 = *(v0 + 21312);
    v558 = *(v0 + 21624);
    v539 = *(v0 + 21304);
    v367 = *(v0 + 20768);
    v368 = *(v0 + 20760);
    v369 = *(v0 + 20752);

    outlined destroy of NSObject?(v367, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v367, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v353, v355);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
    v370 = *(v369 + 32);
    *(v0 + 19249) = *(v369 + 41);
    *(v0 + 19240) = v370;
    *(v0 + 20272) = *(v367 + 16);
    v371 = *(v369 + 32);
    *(v0 + 17905) = *(v369 + 41);
    *(v0 + 17896) = v371;
    *&v570[7] = *(v367 + 16);
    *(v0 + 17880) = v539;
    *(v0 + 17888) = v549;
    *(v0 + 17921) = *v570;
    *(v0 + 17936) = *&v570[15];
    v372 = *(v0 + 17896);
    *(v0 + 16696) = *(v0 + 17880);
    *(v0 + 16712) = v372;
    v373 = *(v0 + 17928);
    *(v0 + 16728) = *(v0 + 17912);
    *(v0 + 16744) = v373;
    outlined init with copy of MLS.OutgoingEventState?(v367, v0 + 9592, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20384, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v367, v0 + 9424, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20368, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19240, v0 + 19624);
    v374 = Logger.logObject.getter();
    v375 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v374, v375))
    {
      v376 = *(v0 + 21312);
      v377 = *(v0 + 21304);
      v378 = *(v0 + 20768);
      v379 = swift_slowAlloc();
      v380 = swift_slowAlloc();
      *v570 = v380;
      *v379 = 136315138;

      v381 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v377, v376, v570);

      *(v379 + 4) = v381;
      outlined destroy of NSObject?(v378, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v378, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v374, v375, "SwiftMLSClientCoordinator processIncoming sending signature verified event { identifier: %s }", v379, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v380);
      MEMORY[0x266755550](v380, -1, -1);
      MEMORY[0x266755550](v379, -1, -1);
    }

    else
    {
      v382 = *(v0 + 20768);

      outlined destroy of NSObject?(v382, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v382, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v383 = *(v0 + 20760);
    v384 = v383[12];
    v385 = *(v0 + 16744);
    *(v0 + 15712) = *(v0 + 16728);
    *(v0 + 15728) = v385;
    v386 = *(v0 + 16776);
    *(v0 + 15744) = *(v0 + 16760);
    *(v0 + 15760) = v386;
    v387 = *(v0 + 16712);
    *(v0 + 15680) = *(v0 + 16696);
    v388 = *(v0 + 20792);
    v389 = *(v0 + 20776);
    *(v0 + 22256) = v384;
    *(v0 + 15696) = v387;
    *(v0 + 15776) = 7;
    outlined init with copy of ServerBag.MLS(v389, v0 + 18944);
    v390 = v383[10];
    *(v0 + 22264) = v390;
    v391 = v383[11];
    *(v0 + 22272) = v391;
    v392 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22280) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v393 = (v383 + v392);
    v394 = v393[1];
    *(v0 + 20352) = *v393;
    *(v0 + 20360) = v394;

    swift_unknownObjectRetain();

    v395 = swift_task_alloc();
    *(v0 + 22288) = v395;
    *v395 = v0;
    v395[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v396 = *(v0 + 20792);
    v397 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 13496, v397, v396, v0 + 18944, v390, v391, (v0 + 20352));
  }

  else if (v33 == *MEMORY[0x277D6AAC8])
  {
    v123 = *(v0 + 21152);
    v124 = *(v0 + 21008);
    v125 = *(v0 + 21000);
    (*(*(v0 + 21128) + 96))(v123, *(v0 + 21120));
    outlined init with take of MLS.Group.Member?(v123, v124, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v124, v125, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v126 = type metadata accessor for MLS.Group.StateUpdate();
    *(v0 + 21832) = v126;
    v127 = *(v126 - 8);
    *(v0 + 21840) = v127;
    v128 = *(v127 + 48);
    *(v0 + 21848) = v128;
    *(v0 + 21856) = (v127 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v129 = v128(v125, 1, v126);
    v130 = *(v0 + 21000);
    if (v129 == 1)
    {
      v131 = *(v0 + 20760);
      v132 = *(v0 + 20752);
      outlined destroy of NSObject?(*(v0 + 21000), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      if (*(v132 + 32) == *(v131 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember) && *(v132 + 40) == *(v131 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8))
      {
        v133 = 1;
      }

      else
      {
        v133 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v133 = MLS.Group.StateUpdate.committerWasSelf.getter();
      (*(v127 + 8))(v130, v126);
    }

    *(v0 + 15570) = v133 & 1;
    v291 = *(v0 + 20776);
    v292 = v291[3];
    v293 = v291[4];
    __swift_project_boxed_opaque_existential_1(v291, v292);
    v294 = *(v293 + 40);
    v565 = (v294 + *v294);
    v295 = v294[1];
    v296 = swift_task_alloc();
    *(v0 + 21864) = v296;
    *v296 = v0;
    v296[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return (v565)(v292, v293);
  }

  else
  {
    if (v33 != *MEMORY[0x277D6AAD0])
    {
      v255 = v25;
      v256 = *(v0 + 21624);
      if (v33 != *MEMORY[0x277D6AAB8])
      {
        v312 = *(v0 + 20768);
        v313 = *(v0 + 20760);
        outlined init with copy of MLS.OutgoingEventState?(v312, v0 + 2536, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined init with copy of MLS.OutgoingEventState?(v312, v0 + 2704, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        v314 = Logger.logObject.getter();
        v315 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v314, v315))
        {
          v316 = *(v0 + 21312);
          v317 = *(v0 + 21304);
          v318 = *(v0 + 20768);
          v319 = swift_slowAlloc();
          v320 = swift_slowAlloc();
          *v570 = v320;
          *v319 = 136315138;

          v321 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v317, v316, v570);

          *(v319 + 4) = v321;
          outlined destroy of NSObject?(v318, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v318, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          _os_log_impl(&dword_264F1F000, v314, v315, "SwiftMLSClientCoordinator processIncoming missing SwiftMLS incoming message type { identifier: %s }", v319, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v320);
          MEMORY[0x266755550](v320, -1, -1);
          MEMORY[0x266755550](v319, -1, -1);
        }

        else
        {
          v420 = *(v0 + 20768);

          outlined destroy of NSObject?(v420, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v420, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        }

        v421 = v255;
        v422 = *(v0 + 21288);
        v423 = *(v0 + 21264);
        v424 = *(v0 + 21256);
        v425 = *(v0 + 21192);
        v426 = *(v0 + 21152);
        v427 = *(v0 + 21128);
        v428 = *(v0 + 21120);
        lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
        swift_allocError();
        *v429 = 6;
        *(v429 + 8) = 0;
        *(v429 + 16) = 0;
        swift_willThrow();
        v421(v425, v428);
        (*(v423 + 8))(v422, v424);
        v421(v426, v428);
        goto LABEL_114;
      }

      v257 = *(v0 + 21312);
      v258 = *(v0 + 21304);
      v259 = *(v0 + 20768);
      v564 = *(v0 + 20760);
      v260 = *(v0 + 20752);
      v261 = *(v260 + 32);
      *(v0 + 19505) = *(v260 + 41);
      *(v0 + 19496) = v261;
      *(v0 + 20288) = *(v259 + 16);
      v262 = *(v260 + 32);
      *(v0 + 18033) = *(v260 + 41);
      *(v0 + 18024) = v262;
      *&v570[7] = *(v259 + 16);
      *(v0 + 18008) = v258;
      *(v0 + 18016) = v257;
      *(v0 + 18049) = *v570;
      *(v0 + 18064) = *&v570[15];
      v263 = *(v0 + 18024);
      *(v0 + 17080) = *(v0 + 18008);
      *(v0 + 17096) = v263;
      v264 = *(v0 + 18056);
      *(v0 + 17112) = *(v0 + 18040);
      *(v0 + 17128) = v264;
      outlined init with copy of MLS.OutgoingEventState?(v259, v0 + 2872, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20496, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v259, v0 + 3208, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20480, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.AllMember(v0 + 19496, v0 + 19432);
      v265 = Logger.logObject.getter();
      v266 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v265, v266))
      {
        v267 = *(v0 + 21312);
        v268 = *(v0 + 21304);
        v269 = *(v0 + 20768);
        v270 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        *v570 = v271;
        *v270 = 136315138;

        v272 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v268, v267, v570);

        *(v270 + 4) = v272;
        outlined destroy of NSObject?(v269, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v269, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v265, v266, "SwiftMLSClientCoordinator processIncoming sending internal message event { identifier: %s }", v270, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v271);
        MEMORY[0x266755550](v271, -1, -1);
        MEMORY[0x266755550](v270, -1, -1);
      }

      else
      {
        v411 = *(v0 + 20768);

        outlined destroy of NSObject?(v411, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v411, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v412 = *(v0 + 20792);
      v413 = *(v0 + 20776);
      v414 = *(v0 + 20760);
      *(v0 + 22336) = v414[12];
      v415 = *(v0 + 17128);
      *(v0 + 15608) = *(v0 + 17112);
      *(v0 + 15624) = v415;
      v416 = *(v0 + 17160);
      *(v0 + 15640) = *(v0 + 17144);
      *(v0 + 15656) = v416;
      v417 = *(v0 + 17096);
      *(v0 + 15576) = *(v0 + 17080);
      *(v0 + 15592) = v417;
      *(v0 + 15672) = 9;
      outlined init with copy of ServerBag.MLS(v413, v0 + 18984);
      *(v0 + 22344) = v414[10];
      *(v0 + 22352) = v414[11];
      v418 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
      *(v0 + 22360) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
      v419 = (v414 + v418);
      *(v0 + 22368) = *v419;
      *(v0 + 22376) = v419[1];

      swift_unknownObjectRetain();

      v109 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v110 = 0;
      v111 = 0;

      return MEMORY[0x2822009F8](v109, v110, v111);
    }

    v152 = *(v0 + 21624);
    v153 = *(v0 + 20768);
    v154 = *(v0 + 20760);
    outlined init with copy of MLS.OutgoingEventState?(v153, v0 + 8248, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v153, v0 + 7912, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = *(v0 + 21312);
      v158 = *(v0 + 21304);
      v159 = *(v0 + 20768);
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v570 = v161;
      *v160 = 136315138;

      v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v157, v570);

      *(v160 + 4) = v162;
      outlined destroy of NSObject?(v159, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v159, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v155, v156, "SwiftMLSClientCoordinator processIncoming committing proposal { identifier: %s }", v160, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      MEMORY[0x266755550](v161, -1, -1);
      MEMORY[0x266755550](v160, -1, -1);
    }

    else
    {
      v297 = *(v0 + 20768);

      outlined destroy of NSObject?(v297, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v297, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v566 = *(v0 + 21616);
    v298 = *(v0 + 21608);
    v299 = *(v0 + 21600);
    v300 = *(v0 + 21592);
    v301 = *(v0 + 21584);
    v302 = *(v0 + 21576);
    v303 = *(v0 + 21200);
    v304 = *(v0 + 20800);
    v305 = *(v0 + 20776);
    swift_beginAccess();
    Date.init()();
    v300(v303 + *(v302 + 20), 1, 1, v301);
    v298(v303, 0, 1, v302);
    specialized Dictionary.subscript.setter(v303, 0xD000000000000016, 0x80000002651E7960);
    swift_endAccess();
    v306 = v305[3];
    v307 = v305[4];
    __swift_project_boxed_opaque_existential_1(v305, v306);
    v308 = *(v307 + 248);
    v567 = (v308 + *v308);
    v309 = v308[1];
    v310 = swift_task_alloc();
    *(v0 + 22200) = v310;
    *v310 = v0;
    v310[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v311 = *(v0 + 20920);

    return (v567)(v311, v306, v307);
  }
}

{
  v655 = v0;
  v1 = *(v0 + 21712);
  if (*(v1 + 16))
  {
    (*(*(v0 + 21128) + 16))(*(v0 + 21064), v1 + ((*(*(v0 + 21128) + 80) + 32) & ~*(*(v0 + 21128) + 80)), *(v0 + 21120));
    v2 = 0;
    v3 = *(v0 + 21712);
  }

  else
  {
    v2 = 1;
  }

  v4 = *(v0 + 21128);
  v5 = *(v0 + 21120);
  v6 = *(v0 + 21064);
  (*(v4 + 56))(v6, v2, 1, v5);

  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    v7 = *(v0 + 21112);
    v8 = *(v0 + 21088);
    v9 = *(v0 + 21080);
    outlined destroy of NSObject?(*(v0 + 21064), &_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMd, &_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMR);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    v10 = swift_allocError();
    *v11 = 24;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    *(v0 + 22584) = v10;
    v12 = *(v0 + 20840);
    v13 = *(v0 + 20824);
    *(v0 + 20688) = v10;
    v14 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v15 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
      v16 = *(v0 + 20840);
      v17 = *(v0 + 20832);
      v18 = *(v0 + 20824);
      if (v15 == *MEMORY[0x277D6AD10])
      {
        v604 = *(v0 + 21624);
        v623 = *(v0 + 21304);
        v635 = *(v0 + 21312);
        v19 = *(v0 + 20816);
        v20 = *(v0 + 20768);
        v21 = *(v0 + 20760);
        v615 = *(v0 + 20752);
        (*(v17 + 96))(v16, v18);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
        outlined init with take of MLS.Group.Member?(v16 + *(v22 + 48), v19, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
        closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v19, v21, v20, v615, v649);
        v24 = *v649;
        v23 = *&v649[8];
        *(v0 + 22592) = *v649;
        *(v0 + 22600) = v23;
        v25 = *&v649[16];
        *(v0 + 22608) = *&v649[16];
        v26 = v650;
        *(v0 + 15673) = v650;
        *(v0 + 20064) = *(v20 + 16);
        *&v649[7] = *(v20 + 16);
        *(v0 + 17560) = v623;
        *(v0 + 17568) = v635;
        *(v0 + 17576) = v24;
        *(v0 + 17584) = v23;
        *(v0 + 17592) = v25;
        *(v0 + 17600) = v26;
        *(v0 + 17601) = *v649;
        *(v0 + 17616) = *&v649[15];
        v27 = *(v0 + 17576);
        *(v0 + 16792) = *(v0 + 17560);
        *(v0 + 16808) = v27;
        v28 = *(v0 + 17608);
        *(v0 + 16824) = *(v0 + 17592);
        *(v0 + 16840) = v28;
        outlined copy of MLS.AllMember();
        outlined init with copy of MLS.OutgoingEventState?(v20, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        outlined copy of MLS.AllMember();
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        outlined init with copy of MLS.OutgoingEventState?(v20, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        v636 = v24;
        v29 = v23;
        outlined copy of MLS.AllMember();
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = *(v0 + 21312);
          v33 = *(v0 + 21304);
          v34 = *(v0 + 20768);
          v593 = *(v0 + 20760);
          v35 = swift_slowAlloc();
          v605 = swift_slowAlloc();
          v647[0] = v605;
          *v35 = 136315650;

          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, v647);

          *(v35 + 4) = v36;
          outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          *(v35 + 12) = 2080;
          *v649 = v636;
          *&v649[8] = v29;
          *&v649[16] = v25;
          LOBYTE(v650) = v26;
          outlined copy of MLS.AllMember();
          v37 = MLS.AllMember.description.getter();
          v39 = v38;
          outlined consume of MLS.AllMember();
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v647);

          *(v35 + 14) = v40;
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
          *(v35 + 22) = 2080;
          v41 = *(v593 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
          v42 = *(v593 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
          v43 = *(v593 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
          *v649 = *(v593 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
          *&v649[8] = v41;
          *&v649[16] = v42;
          LOBYTE(v650) = v43;
          outlined copy of MLS.AllMember();
          v44 = MLS.AllMember.description.getter();
          v46 = v45;
          outlined consume of MLS.AllMember();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v647);

          *(v35 + 24) = v47;

          _os_log_impl(&dword_264F1F000, v30, v31, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v35, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266755550](v605, -1, -1);
          MEMORY[0x266755550](v35, -1, -1);
        }

        else
        {
          v154 = *(v0 + 20768);
          v155 = *(v0 + 20760);

          outlined destroy of NSObject?(v154, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v154, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
        }

        v156 = *(v0 + 21664);
        v157 = *(v0 + 20792);
        v158 = *(v0 + 20760);
        if ((v156 & 0x100000000) != 0)
        {
          v156 = 1;
        }

        else
        {
          v156 = v156;
        }

        v159 = *(v0 + 21640) + 1;
        *(v0 + 14536) = *(v0 + 20784);
        *(v0 + 14544) = v157;
        *(v0 + 14552) = v156;
        *(v0 + 14560) = v156;
        *(v0 + 14568) = v159;
        *(v0 + 14576) = xmmword_2651B68A0;
        *(v0 + 14592) = xmmword_2651B68A0;
        *(v0 + 14608) = xmmword_2651B68A0;
        *(v0 + 14624) = xmmword_2651B5F50;
        v160 = *(v158 + 96);
        v161 = *(v0 + 16840);
        *(v0 + 15920) = *(v0 + 16824);
        *(v0 + 15936) = v161;
        v162 = *(v0 + 16872);
        *(v0 + 15952) = *(v0 + 16856);
        *(v0 + 15968) = v162;
        v163 = *(v0 + 16808);
        *(v0 + 15888) = *(v0 + 16792);
        *(v0 + 15904) = v163;
        v164 = *(v0 + 14584);
        *(v0 + 13424) = *(v0 + 14568);
        *(v0 + 13440) = v164;
        v165 = *(v0 + 14616);
        *(v0 + 13456) = *(v0 + 14600);
        *(v0 + 13472) = v165;
        v166 = *(v0 + 14536);
        *(v0 + 13408) = *(v0 + 14552);
        *(v0 + 15984) = 4;
        *(v0 + 13488) = *(v0 + 14632);
        *(v0 + 13392) = v166;
        v647[0] = v636;
        v647[1] = v29;
        v647[2] = v25;
        v648 = v26;
        v167 = v158 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
        v168 = *(v167 + 8);
        v169 = *(v167 + 16);
        v170 = *(v167 + 24);
        *v649 = *v167;
        *&v649[8] = v168;
        *&v649[16] = v169;
        LOBYTE(v650) = v170;

        outlined copy of MLS.AllMember();
        v171 = specialized static MLS.AllMember.== infix(_:_:)(v647, v649);
        outlined consume of MLS.AllMember();
        v628 = (*v160 + 384);
        v637 = (*v628 + **v628);
        v172 = (*v628)[1];
        v173 = swift_task_alloc();
        *(v0 + 22616) = v173;
        *v173 = v0;
        v173[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

        return (v637)(v0 + 15888, v0 + 13392, 1, v171 & 1);
      }

      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    }

    goto LABEL_132;
  }

  v606 = *(v0 + 21720);
  v48 = *(v0 + 21064);
  v624 = *(v0 + 21624);
  v49 = *(v0 + 21192);
  v50 = *(v0 + 21168);
  v51 = *(v0 + 21128);
  v52 = *(v0 + 21120);
  v53 = *(v0 + 21112);
  v54 = *(v0 + 21080);
  v55 = *(v0 + 20800);
  v56 = *(v0 + 20768);
  v57 = *(v0 + 20760);
  v58 = *(*(v0 + 21088) + 8);
  *(v0 + 21752) = v58;
  v58(v53, v54);
  (*(v51 + 32))(v49, v48, v52);
  v649[0] = 7;
  swift_beginAccess();
  MetricCollector.end(metric:)(v649);
  swift_endAccess();
  v59 = *(v51 + 16);
  v59(v50, v49, v52);
  outlined init with copy of MLS.OutgoingEventState?(v56, v0 + 2200, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v56, v0 + 2368, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = *(v0 + 21312);
    v63 = *(v0 + 21304);
    v585 = *(v0 + 21160);
    v594 = *(v0 + 21168);
    v64 = *(v0 + 21128);
    v65 = *(v0 + 21120);
    v66 = *(v0 + 20768);
    v67 = swift_slowAlloc();
    v625 = swift_slowAlloc();
    *v649 = v625;
    *v67 = 136315394;

    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, v649);

    *(v67 + 4) = v68;
    outlined destroy of NSObject?(v66, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v66, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v67 + 12) = 2080;
    v59(v585, v594, v65);
    v69 = String.init<A>(describing:)();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v649);

    *(v67 + 14) = v71;
    v72 = *(v64 + 8);
    v72(v594, v65);
    _os_log_impl(&dword_264F1F000, v60, v61, "SwiftMLSClientCoordinator processIncoming processed message { identifier: %s, message: %s }", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v625, -1, -1);
    MEMORY[0x266755550](v67, -1, -1);
  }

  else
  {
    v73 = *(v0 + 21168);
    v74 = *(v0 + 21128);
    v75 = *(v0 + 21120);
    v76 = *(v0 + 20768);

    outlined destroy of NSObject?(v76, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v76, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v72 = *(v74 + 8);
    v72(v73, v75);
  }

  *(v0 + 21760) = v72;
  v77 = *(v0 + 21152);
  v78 = *(v0 + 21128);
  v79 = *(v0 + 21120);
  v59(v77, *(v0 + 21192), v79);
  v80 = (*(v78 + 88))(v77, v79);
  if (v80 == *MEMORY[0x277D6AAA8])
  {
    v81 = *(v0 + 21152);
    v82 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v81, *(v0 + 21120));
    v83 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMR) + 48));
    v84 = *v83;
    *(v0 + 21768) = *v83;
    v85 = v83[1];
    *(v0 + 21776) = v85;
    v86 = *(v0 + 20768);
    if (*(v82 + 104) >> 60 == 15)
    {
      v87 = *(v0 + 20800);
      v88 = *(v0 + 20752);
      v90 = v88[1];
      v89 = v88[2];
      v91 = *v88;
      *(v0 + 18498) = *(v88 + 42);
      *(v0 + 18472) = v90;
      *(v0 + 18488) = v89;
      *(v0 + 18456) = v91;
      swift_beginAccess();
      *(v0 + 20712) = *(v87 + 16);
      v92 = *v86;
      v93 = *(v86 + 16);
      *(v0 + 9792) = *(v86 + 32);
      *(v0 + 9776) = v93;
      *(v0 + 9760) = v92;
      v94 = *(v86 + 48);
      v95 = *(v86 + 64);
      v96 = *(v86 + 80);
      *(v0 + 9856) = *(v86 + 96);
      *(v0 + 9840) = v96;
      *(v0 + 9824) = v95;
      *(v0 + 9808) = v94;
      v97 = *(v86 + 112);
      v98 = *(v86 + 128);
      v99 = *(v86 + 144);
      *(v0 + 9920) = *(v86 + 160);
      *(v0 + 9904) = v99;
      *(v0 + 9888) = v98;
      *(v0 + 9872) = v97;

      v100 = swift_task_alloc();
      *(v0 + 21784) = v100;
      *v100 = v0;
      v100[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v101 = *(v0 + 21312);
      v102 = *(v0 + 21304);
      v103 = *(v0 + 20792);
      v104 = *(v0 + 20784);
      v105 = *(v0 + 20776);
      v106 = *(v0 + 20760);
      v107 = *(v0 + 20744);
      v658 = v0 + 20712;
      v659 = v0 + 9760;
      v657 = v105;
      v108 = v0 + 18456;
      v109 = v84;
      v110 = v85;
LABEL_86:

      return MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(v107, v102, v101, v108, v109, v110, v104, v103);
    }

    v607 = v85;
    v616 = v84;
    v119 = *(v0 + 21624);
    v120 = *(v0 + 20760);
    v59(*(v0 + 21144), *(v0 + 21192), *(v0 + 21120));
    outlined init with copy of MLS.OutgoingEventState?(v86, v0 + 10264, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v86, v0 + 10600, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = *(v0 + 21312);
      v124 = *(v0 + 21304);
      v626 = v72;
      v125 = *(v0 + 21160);
      v126 = *(v0 + 21144);
      v577 = *(v0 + 21120);
      v586 = *(v0 + 21128);
      v127 = *(v0 + 20768);
      v128 = swift_slowAlloc();
      v595 = swift_slowAlloc();
      *v649 = v595;
      *v128 = 136315394;

      v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v123, v649);

      *(v128 + 4) = v129;
      outlined destroy of NSObject?(v127, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v127, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v128 + 12) = 2080;
      v59(v125, v126, v577);
      v72 = v626;
      v130 = String.init<A>(describing:)();
      v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, v649);

      *(v128 + 14) = v132;
      v626(v126, v577);
      _os_log_impl(&dword_264F1F000, v121, v122, "SwiftMLSClientCoordinator processIncoming processed message had no AAD { identifier: %s, message: %s }", v128, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v595, -1, -1);
      MEMORY[0x266755550](v128, -1, -1);
    }

    else
    {
      v180 = *(v0 + 21144);
      v181 = *(v0 + 21128);
      v182 = *(v0 + 21120);
      v183 = *(v0 + 20768);

      outlined destroy of NSObject?(v183, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v183, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v72(v180, v182);
    }

    v184 = *(v0 + 21288);
    v185 = *(v0 + 21264);
    v186 = *(v0 + 21256);
    v187 = *(v0 + 21192);
    v188 = *(v0 + 21152);
    v189 = *(v0 + 21120);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v190 = 14;
    *(v190 + 8) = 0;
    *(v190 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v616, v607);
    v72(v187, v189);
    (*(v185 + 8))(v184, v186);
    outlined destroy of NSObject?(v188, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
LABEL_132:
    v510 = *(v0 + 21288);
    v511 = *(v0 + 21280);
    v512 = *(v0 + 21272);
    v513 = *(v0 + 21248);
    v514 = *(v0 + 21240);
    v515 = *(v0 + 21232);
    v516 = *(v0 + 21224);
    v517 = *(v0 + 21200);
    v518 = *(v0 + 21192);
    v519 = *(v0 + 21184);
    v521 = *(v0 + 21176);
    v522 = *(v0 + 21168);
    v523 = *(v0 + 21160);
    v524 = *(v0 + 21152);
    v525 = *(v0 + 21144);
    v526 = *(v0 + 21136);
    v527 = *(v0 + 21112);
    v528 = *(v0 + 21104);
    v529 = *(v0 + 21096);
    v530 = *(v0 + 21072);
    v531 = *(v0 + 21064);
    v532 = *(v0 + 21056);
    v533 = *(v0 + 21048);
    v534 = *(v0 + 21040);
    v535 = *(v0 + 21032);
    v537 = *(v0 + 21008);
    v540 = *(v0 + 21000);
    v543 = *(v0 + 20992);
    logd = *(v0 + 20984);
    v555 = *(v0 + 20976);
    v562 = *(v0 + 20968);
    v568 = *(v0 + 20944);
    v576 = *(v0 + 20920);
    v584 = *(v0 + 20912);
    v592 = *(v0 + 20904);
    v603 = *(v0 + 20896);
    v614 = *(v0 + 20864);
    v622 = *(v0 + 20840);
    v634 = *(v0 + 20816);

    v520 = *(v0 + 8);

    return v520();
  }

  if (v80 == *MEMORY[0x277D6AAB0])
  {
    v111 = *(v0 + 21152);
    v112 = *(v0 + 21048);
    v113 = *(v0 + 21024);
    v114 = *(v0 + 21016);
    (*(*(v0 + 21128) + 96))(v111, *(v0 + 21120));
    (*(v113 + 32))(v112, v111, v114);
    v115 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
    v117 = v116 >> 62;
    if ((v116 >> 62) > 1)
    {
      if (v117 != 2)
      {
        outlined consume of Data._Representation(v115, v116);
LABEL_57:
        v213 = *(v0 + 21048);
        v214 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
        v216 = v215 >> 62;
        if ((v215 >> 62) <= 1)
        {
          if (!v216)
          {
            v217 = BYTE6(v215);
            outlined consume of Data._Representation(v214, v215);
            v218 = v217;
            goto LABEL_69;
          }

          v232 = HIDWORD(v214);
          v233 = v214;
          v177 = outlined consume of Data._Representation(v214, v215);
          LODWORD(v218) = v232 - v233;
          if (!__OFSUB__(v232, v233))
          {
            v218 = v218;
            goto LABEL_69;
          }

          goto LABEL_137;
        }

        if (v216 != 2)
        {
          outlined consume of Data._Representation(v214, v215);
          goto LABEL_85;
        }

        v219 = *(v214 + 16);
        v220 = *(v214 + 24);
        v80 = outlined consume of Data._Representation(v214, v215);
        v218 = v220 - v219;
        if (!__OFSUB__(v220, v219))
        {
LABEL_69:
          if (!v218)
          {
            goto LABEL_85;
          }

          goto LABEL_70;
        }

        __break(1u);
        goto LABEL_64;
      }

      v175 = *(v115 + 16);
      v176 = *(v115 + 24);
      v177 = outlined consume of Data._Representation(v115, v116);
      if (!__OFSUB__(v176, v175))
      {
        if (v176 == v175)
        {
          goto LABEL_57;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    else
    {
      if (!v117)
      {
        v118 = BYTE6(v116);
        outlined consume of Data._Representation(v115, v116);
        if (!v118)
        {
          goto LABEL_57;
        }

LABEL_70:
        v234 = *(v0 + 20768);
        v235 = v234[13];
        if (v235 >> 60 == 15)
        {
          v236 = *(v0 + 21624);
          v237 = *(v0 + 20760);
          v59(*(v0 + 21136), *(v0 + 21192), *(v0 + 21120));
          outlined init with copy of MLS.OutgoingEventState?(v234, v0 + 4720, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v234, v0 + 4888, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v238 = Logger.logObject.getter();
          v239 = static os_log_type_t.default.getter();
          v629 = v72;
          if (os_log_type_enabled(v238, v239))
          {
            v608 = v59;
            v240 = *(v0 + 21312);
            v241 = *(v0 + 21304);
            v242 = *(v0 + 21160);
            v597 = *(v0 + 21136);
            v617 = *(v0 + 21128);
            v243 = *(v0 + 21120);
            v244 = *(v0 + 20768);
            v245 = swift_slowAlloc();
            v246 = swift_slowAlloc();
            *v649 = v246;
            *v245 = 136315394;

            v247 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v241, v240, v649);

            *(v245 + 4) = v247;
            outlined destroy of NSObject?(v244, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v244, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            *(v245 + 12) = 2080;
            v608(v242, v597, v243);
            v248 = String.init<A>(describing:)();
            v250 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v248, v249, v649);

            *(v245 + 14) = v250;
            v629(v597, v243);
            _os_log_impl(&dword_264F1F000, v238, v239, "SwiftMLSClientCoordinator processIncoming processed message had unexpected AAD { identifier: %s, message: %s }", v245, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v246, -1, -1);
            MEMORY[0x266755550](v245, -1, -1);
          }

          else
          {
            v269 = *(v0 + 21136);
            v270 = *(v0 + 21128);
            v271 = *(v0 + 21120);
            v272 = *(v0 + 20768);

            outlined destroy of NSObject?(v272, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v272, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v72(v269, v271);
          }

          v619 = *(v0 + 21288);
          v273 = *(v0 + 21264);
          v274 = *(v0 + 21256);
          v275 = *(v0 + 21192);
          v276 = *(v0 + 21120);
          v277 = *(v0 + 21048);
          v278 = *(v0 + 21024);
          v279 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v280 = 15;
          *(v280 + 8) = 0;
          *(v280 + 16) = 0;
          swift_willThrow();
          (*(v278 + 8))(v277, v279);
          v629(v275, v276);
          (*(v273 + 8))(v619, v274);
          goto LABEL_132;
        }

        v251 = v234[12];
        v252 = v234[14];
        v253 = v234[15];
        v255 = v234[16];
        v254 = v234[17];
        v256 = *(v0 + 21048);
        outlined copy of MLS.AdditionalAuthenticatedData?(v251, v235, v252, v253, v255, v254);
        outlined copy of Data._Representation(v251, v235);
        v618 = v254;
        outlined copy of Data?(v255, v254);
        v257 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
        v259 = v258;
        v260 = specialized static Data.== infix(_:_:)(v251, v235, v257, v258);
        outlined consume of Data._Representation(v257, v259);
        if ((v260 & 1) == 0)
        {
          v630 = v72;
          v639 = *(v0 + 21624);
          v281 = *(v0 + 20768);
          v571 = *(v0 + 20760);
          (*(*(v0 + 21024) + 16))(*(v0 + 21040), *(v0 + 21048), *(v0 + 21016));
          outlined init with copy of MLS.OutgoingEventState?(v281, v0 + 5392, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined copy of MLS.AdditionalAuthenticatedData?(v251, v235, v252, v253, v255, v618);
          outlined init with copy of MLS.OutgoingEventState?(v281, v0 + 5560, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v579 = v235;
          v610 = v252;
          v588 = v255;
          v598 = v253;
          outlined copy of MLS.AdditionalAuthenticatedData?(v251, v235, v252, v253, v255, v618);
          v282 = Logger.logObject.getter();
          v283 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v282, v283))
          {
            v640 = v283;
            v284 = *(v0 + 21312);
            v285 = *(v0 + 21304);
            v549 = *(v0 + 21040);
            v563 = *(v0 + 21024);
            v572 = *(v0 + 21016);
            v286 = *(v0 + 20768);
            v287 = swift_slowAlloc();
            v556 = swift_slowAlloc();
            *v649 = v556;
            *v287 = 136315650;

            v288 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v285, v284, v649);

            *(v287 + 4) = v288;
            outlined destroy of NSObject?(v286, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v286, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            log = v282;
            *(v287 + 12) = 2080;
            outlined copy of Data._Representation(v251, v579);
            v289 = Data.description.getter();
            v291 = v290;
            outlined consume of Data._Representation(v251, v579);
            v292 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v289, v291, v649);

            *(v287 + 14) = v292;
            v293 = v618;
            outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v252, v253, v588, v618);
            outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v252, v253, v588, v618);
            *(v287 + 22) = 2080;
            v294 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
            v296 = v295;
            v297 = Data.description.getter();
            v299 = v298;
            outlined consume of Data._Representation(v294, v296);
            v300 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v297, v299, v649);

            *(v287 + 24) = v300;
            v301 = v572;
            v573 = *(v563 + 8);
            v573(v549, v301);
            _os_log_impl(&dword_264F1F000, log, v640, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD messageID { identifier: %s, clientMessageID: %s, messageID: %s }", v287, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v556, -1, -1);
            MEMORY[0x266755550](v287, -1, -1);
          }

          else
          {
            v351 = *(v0 + 21040);
            v352 = *(v0 + 21024);
            v353 = *(v0 + 21016);
            v354 = *(v0 + 20768);

            outlined destroy of NSObject?(v354, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v354, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v293 = v618;
            outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v610, v253, v588, v618);
            outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v610, v253, v588, v618);
            v573 = *(v352 + 8);
            v573(v351, v353);
          }

          v355 = *(v0 + 21264);
          v550 = *(v0 + 21256);
          v557 = *(v0 + 21288);
          v538 = *(v0 + 21128);
          v541 = *(v0 + 21120);
          loga = *(v0 + 21192);
          v356 = *(v0 + 21048);
          v357 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v358 = 16;
          *(v358 + 8) = 0;
          *(v358 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v610, v598, v588, v293);
          outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v610, v598, v588, v293);
          v573(v356, v357);
          v630(loga, v541);
          (*(v355 + 8))(v557, v550);
          goto LABEL_132;
        }

        v570 = v251;
        v261 = v618;
        if (v618 >> 60 != 15)
        {
          v609 = v252;
          v262 = *(v0 + 21048);
          outlined copy of Data._Representation(v255, v618);
          v263 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
          v265 = v264;
          v266 = specialized static Data.== infix(_:_:)(v255, v618, v263, v264);
          outlined consume of Data._Representation(v263, v265);
          if ((v266 & 1) == 0)
          {
            v599 = v253;
            v580 = v235;
            v631 = v72;
            v390 = *(v0 + 21624);
            v391 = *(v0 + 20768);
            v392 = *(v0 + 20760);
            (*(*(v0 + 21024) + 16))(*(v0 + 21032), *(v0 + 21048), *(v0 + 21016));
            outlined init with copy of MLS.OutgoingEventState?(v391, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v255, v618);
            outlined init with copy of MLS.OutgoingEventState?(v391, v0 + 9256, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v255, v618);
            v393 = Logger.logObject.getter();
            v394 = static os_log_type_t.error.getter();
            v395 = v255;
            v589 = v255;
            if (os_log_type_enabled(v393, v394))
            {
              v396 = *(v0 + 21312);
              v397 = *(v0 + 21304);
              v398 = *(v0 + 21032);
              v558 = *(v0 + 21024);
              v564 = *(v0 + 21016);
              v399 = *(v0 + 20768);
              v400 = swift_slowAlloc();
              v645 = swift_slowAlloc();
              *v649 = v645;
              *v400 = 136315650;

              v401 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v397, v396, v649);

              *(v400 + 4) = v401;
              outlined destroy of NSObject?(v399, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v399, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              v551 = v394;
              *(v400 + 12) = 2080;
              outlined copy of Data._Representation(v395, v618);
              v402 = Data.description.getter();
              v404 = v403;
              outlined consume of Data?(v395, v618);
              v405 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v402, v404, v649);

              *(v400 + 14) = v405;
              outlined consume of Data?(v395, v618);
              outlined consume of Data?(v395, v618);
              *(v400 + 22) = 2080;
              v406 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
              v408 = v407;
              v409 = Data.description.getter();
              v411 = v410;
              outlined consume of Data._Representation(v406, v408);
              v412 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v409, v411, v649);

              *(v400 + 24) = v412;
              v413 = v564;
              v565 = *(v558 + 8);
              v565(v398, v413);
              _os_log_impl(&dword_264F1F000, v393, v551, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD originalMessageID { identifier: %s, clientOriginalMessageID: %s, originalMessageID: %s }", v400, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x266755550](v645, -1, -1);
              MEMORY[0x266755550](v400, -1, -1);
            }

            else
            {
              v498 = *(v0 + 21032);
              v499 = *(v0 + 21024);
              v500 = *(v0 + 21016);
              v501 = *(v0 + 20768);

              outlined destroy of NSObject?(v501, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v501, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined consume of Data?(v255, v618);
              outlined consume of Data?(v255, v618);
              v565 = *(v499 + 8);
              v565(v498, v500);
            }

            v502 = *(v0 + 21264);
            v553 = *(v0 + 21256);
            v560 = *(v0 + 21288);
            v542 = *(v0 + 21120);
            logb = *(v0 + 21192);
            v536 = *(v0 + 21048);
            v539 = *(v0 + 21128);
            v503 = *(v0 + 21016);
            lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
            swift_allocError();
            *v504 = 16;
            *(v504 + 8) = 0;
            *(v504 + 16) = 0;
            swift_willThrow();
            outlined consume of Data?(v589, v618);
            outlined consume of MLS.AdditionalAuthenticatedData?(v570, v580, v609, v599, v589, v618);
            outlined consume of MLS.AdditionalAuthenticatedData?(v570, v580, v609, v599, v589, v618);
            v565(v536, v503);
            v631(logb, v542);
            (*(v502 + 8))(v560, v553);
            goto LABEL_132;
          }

          outlined consume of Data?(v255, v618);
          v252 = v609;
        }

        v267 = *(v0 + 21048);
        v268 = MLS.Group.IncomingApplicationMessageDetails.era.getter();
        if ((v268 & 0x100000000) == 0 && v252 != v268)
        {
          v633 = v72;
          v582 = v268;
          v646 = *(v0 + 21624);
          v466 = *(v0 + 20768);
          v467 = *(v0 + 20760);
          outlined init with copy of MLS.OutgoingEventState?(v466, v0 + 6736, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v466, v0 + 6904, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v613 = v252;
          v602 = v253;
          outlined copy of MLS.AdditionalAuthenticatedData?(v570, v235, v252, v253, v255, v618);
          v468 = Logger.logObject.getter();
          v469 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v468, v469))
          {
            v470 = *(v0 + 21312);
            v591 = v255;
            v471 = *(v0 + 21304);
            v472 = *(v0 + 20768);
            v473 = swift_slowAlloc();
            v474 = swift_slowAlloc();
            *v649 = v474;
            *v473 = 136315650;

            v475 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v471, v470, v649);

            *(v473 + 4) = v475;
            outlined destroy of NSObject?(v472, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v472, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v476 = v235;
            *(v473 + 12) = 1024;
            *(v473 + 14) = v613;
            v477 = v570;
            v478 = v591;
            v261 = v618;
            outlined consume of MLS.AdditionalAuthenticatedData?(v570, v235, v613, v602, v591, v618);
            *(v473 + 18) = 1024;
            *(v473 + 20) = v582;
            _os_log_impl(&dword_264F1F000, v468, v469, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD era { identifier: %s, clientEra: %u, era: %u }", v473, 0x18u);
            __swift_destroy_boxed_opaque_existential_1Tm(v474);
            MEMORY[0x266755550](v474, -1, -1);
            MEMORY[0x266755550](v473, -1, -1);
          }

          else
          {
            v505 = *(v0 + 20768);

            outlined destroy of NSObject?(v505, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v505, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined consume of MLS.AdditionalAuthenticatedData?(v570, v235, v252, v253, v255, v618);
            v478 = v255;
            v476 = v235;
            v477 = v570;
          }

          v583 = *(v0 + 21288);
          v506 = *(v0 + 21264);
          v567 = *(v0 + 21192);
          v575 = *(v0 + 21256);
          v554 = *(v0 + 21128);
          v561 = *(v0 + 21120);
          logc = *(v0 + 21048);
          v507 = *(v0 + 21024);
          v508 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v509 = 16;
          *(v509 + 8) = 0;
          *(v509 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v477, v476, v613, v602, v478, v261);
          outlined consume of MLS.AdditionalAuthenticatedData?(v477, v476, v613, v602, v478, v261);
          (*(v507 + 8))(logc, v508);
          v633(v567, v561);
          (*(v506 + 8))(v583, v575);
          goto LABEL_132;
        }

        outlined consume of MLS.AdditionalAuthenticatedData?(v570, v235, v252, v253, v255, v618);
        outlined consume of MLS.AdditionalAuthenticatedData?(v570, v235, v252, v253, v255, v618);
LABEL_85:
        v302 = *(v0 + 21048);
        v303 = *(v0 + 20800);
        v304 = *(v0 + 20768);
        v305 = *(v0 + 20752);
        v307 = v305[1];
        v306 = v305[2];
        v308 = *v305;
        *(v0 + 18562) = *(v305 + 42);
        *(v0 + 18536) = v307;
        *(v0 + 18552) = v306;
        *(v0 + 18520) = v308;
        v309 = MLS.Group.IncomingApplicationMessageDetails.data.getter();
        v311 = v310;
        *(v0 + 21800) = v309;
        *(v0 + 21808) = v310;
        swift_beginAccess();
        *(v0 + 20720) = *(v303 + 16);
        v312 = *v304;
        v313 = v304[1];
        *(v0 + 6432) = v304[2];
        *(v0 + 6416) = v313;
        *(v0 + 6400) = v312;
        v314 = v304[3];
        v315 = v304[4];
        v316 = v304[5];
        *(v0 + 6496) = v304[6];
        *(v0 + 6480) = v316;
        *(v0 + 6464) = v315;
        *(v0 + 6448) = v314;
        v317 = v304[7];
        v318 = v304[8];
        v319 = v304[9];
        *(v0 + 6560) = *(v304 + 20);
        *(v0 + 6544) = v319;
        *(v0 + 6528) = v318;
        *(v0 + 6512) = v317;

        v320 = swift_task_alloc();
        *(v0 + 21816) = v320;
        *v320 = v0;
        v320[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v101 = *(v0 + 21312);
        v102 = *(v0 + 21304);
        v103 = *(v0 + 20792);
        v104 = *(v0 + 20784);
        v321 = *(v0 + 20776);
        v322 = *(v0 + 20760);
        v107 = *(v0 + 20744);
        v658 = v0 + 20720;
        v659 = v0 + 6400;
        v657 = v321;
        v108 = v0 + 18520;
        v109 = v309;
        v110 = v311;
        goto LABEL_86;
      }

      v211 = HIDWORD(v115);
      v212 = v115;
      v177 = outlined consume of Data._Representation(v115, v116);
      if (!__OFSUB__(v211, v212))
      {
        if (v211 == v212)
        {
          goto LABEL_57;
        }

        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_137:
    __break(1u);
    return MEMORY[0x2822009F8](v177, v178, v179);
  }

  if (v80 == *MEMORY[0x277D6AAC0])
  {
    v627 = v72;
    v133 = *(v0 + 21152);
    v134 = *(v0 + 20864);
    v135 = *(v0 + 20856);
    v136 = *(v0 + 20848);
    v137 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v133, *(v0 + 21120));
    (*(v135 + 32))(v134, v133, v136);
    v139 = v137[3];
    v138 = v137[4];
    v140 = v137[2];
    *(v0 + 18180) = *(v137 + 76);
    *(v0 + 18152) = v139;
    *(v0 + 18168) = v138;
    *(v0 + 18136) = v140;
    v141 = *(v0 + 18152);
    v142 = *(v0 + 18168);
    v143 = *(v0 + 21624);
    if (v141 >> 16 == 0xFFFFFFFF && (v142 & 0x3000000000000000) == 0)
    {
      v144 = *(v0 + 20768);
      v145 = *(v0 + 20760);
      outlined init with copy of MLS.OutgoingEventState?(v144, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v144, v0 + 10936, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = *(v0 + 21312);
        v149 = *(v0 + 21304);
        v150 = *(v0 + 20768);
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        *v649 = v152;
        *v151 = 136315138;

        v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v148, v649);

        *(v151 + 4) = v153;
        outlined destroy of NSObject?(v150, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v150, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v146, v147, "SwiftMLSClientCoordinator processIncoming signed message was not given expected data { identifier: %s }", v151, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v152);
        MEMORY[0x266755550](v152, -1, -1);
        MEMORY[0x266755550](v151, -1, -1);
      }

      else
      {
        v341 = *(v0 + 20768);

        outlined destroy of NSObject?(v341, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v341, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v342 = *(v0 + 21288);
      v343 = *(v0 + 21264);
      v344 = *(v0 + 21256);
      v345 = *(v0 + 21192);
      v346 = *(v0 + 21128);
      v347 = *(v0 + 21120);
      v620 = *(v0 + 20864);
      v348 = *(v0 + 20856);
      v349 = *(v0 + 20848);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v350 = 12;
      *(v350 + 8) = 0;
      *(v350 + 16) = 0;
      swift_willThrow();
      v627(v345, v347);
      (*(v343 + 8))(v342, v344);
      (*(v348 + 8))(v620, v349);
      goto LABEL_132;
    }

    v578 = *(v0 + 18192);
    v587 = *(v0 + 18184);
    v596 = *(v0 + 18176);
    v638 = *(v0 + 18160);
    v569 = *(v0 + 18136);
    v202 = *(v0 + 20760);
    v204 = v137[3];
    v203 = v137[4];
    v205 = v137[2];
    *(v0 + 18244) = *(v137 + 76);
    *(v0 + 18216) = v204;
    *(v0 + 18232) = v203;
    *(v0 + 18200) = v205;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18264, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18328, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.SigningInput(v0 + 18200, v0 + 18392);
    v206 = Logger.logObject.getter();
    v207 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v647[0] = v209;
      *v208 = 136315138;
      v210 = (v142 >> 60) & 3;
      if (v210)
      {
        *v649 = v141;
        *&v649[8] = v638;
        *&v649[16] = v142 & 0xCFFFFFFFFFFFFFFFLL;
        if (v210 == 1)
        {
          v650 = v596;
          v651 = v587;
          LOWORD(v652) = v578;
          v414 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
        }

        else
        {
          v414 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
        }
      }

      else
      {
        *v649 = v141;
        *&v649[8] = v638;
        *&v649[16] = v142;
        v650 = v596;
        v651 = v587;
        LODWORD(v652) = v578;
        v414 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
      }

      v416 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v414, v415, v647);

      *(v208 + 4) = v416;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      _os_log_impl(&dword_264F1F000, v206, v207, "SwiftMLSClientCoordinator processIncoming signed data. { expectedSignedData: %s }", v208, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v209);
      MEMORY[0x266755550](v209, -1, -1);
      MEMORY[0x266755550](v208, -1, -1);
    }

    else
    {

      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    }

    v417 = *(v0 + 20864);
    v418 = *(v0 + 20768);
    v419 = *(v0 + 20760);
    *v649 = v569;
    *&v649[16] = v141;
    v650 = v638;
    v651 = v142;
    v652 = v596;
    v653 = v587;
    v654 = v578;
    outlined init with copy of MLS.OutgoingEventState?(v418, v0 + 10768, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v418, v0 + 10432, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter((v0 + 18824));
    v420 = *(v0 + 18856);
    __swift_project_boxed_opaque_existential_1((v0 + 18824), *(v0 + 18848));
    v421 = MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter();
    v423 = v422;
    MLS.VerifiableDerivedContent.verifyEquals(_:)();
    if (v606)
    {
      v424 = v606;
      v621 = *(v0 + 21288);
      v581 = *(v0 + 21264);
      v590 = *(v0 + 21256);
      v552 = *(v0 + 21128);
      v559 = *(v0 + 21120);
      v566 = *(v0 + 21192);
      v611 = *(v0 + 20864);
      v574 = *(v0 + 20856);
      v600 = *(v0 + 20848);
      v425 = *(v0 + 20768);
      v426 = *(v0 + 20760);
      outlined consume of Data._Representation(v421, v423);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
      swift_getErrorValue();
      v427 = *(v0 + 19776);
      v428 = Error.readableDescription.getter(*(v0 + 19784), *(v0 + 19792));
      closure #8 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v428, v429, v426, v425);

      swift_getErrorValue();
      v430 = *(v0 + 19752);
      v431 = Error.readableDescription.getter(*(v0 + 19760), *(v0 + 19768));
      v433 = v432;
      *(v0 + 19704) = 13;
      *(v0 + 19712) = v431;
      *(v0 + 19720) = v432;
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_willThrowTypedImpl();

      outlined destroy of NSObject?(v425, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined destroy of NSObject?(v425, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      swift_allocError();
      *v434 = 13;
      *(v434 + 8) = v431;
      *(v434 + 16) = v433;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      v627(v566, v559);
      (*(v581 + 8))(v621, v590);
      (*(v574 + 8))(v611, v600);
      goto LABEL_132;
    }

    v632 = *(v0 + 21624);
    v612 = *(v0 + 21312);
    v601 = *(v0 + 21304);
    v435 = *(v0 + 20768);
    v436 = *(v0 + 20760);
    v437 = *(v0 + 20752);

    outlined destroy of NSObject?(v435, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v435, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v421, v423);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
    v438 = *(v437 + 32);
    *(v0 + 19249) = *(v437 + 41);
    *(v0 + 19240) = v438;
    *(v0 + 20272) = *(v435 + 16);
    v439 = *(v437 + 32);
    *(v0 + 17905) = *(v437 + 41);
    *(v0 + 17896) = v439;
    *&v649[7] = *(v435 + 16);
    *(v0 + 17880) = v601;
    *(v0 + 17888) = v612;
    *(v0 + 17921) = *v649;
    *(v0 + 17936) = *&v649[15];
    v440 = *(v0 + 17896);
    *(v0 + 16696) = *(v0 + 17880);
    *(v0 + 16712) = v440;
    v441 = *(v0 + 17928);
    *(v0 + 16728) = *(v0 + 17912);
    *(v0 + 16744) = v441;
    outlined init with copy of MLS.OutgoingEventState?(v435, v0 + 9592, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20384, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v435, v0 + 9424, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20368, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19240, v0 + 19624);
    v442 = Logger.logObject.getter();
    v443 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v442, v443))
    {
      v444 = *(v0 + 21312);
      v445 = *(v0 + 21304);
      v446 = *(v0 + 20768);
      v447 = swift_slowAlloc();
      v448 = swift_slowAlloc();
      *v649 = v448;
      *v447 = 136315138;

      v449 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v445, v444, v649);

      *(v447 + 4) = v449;
      outlined destroy of NSObject?(v446, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v446, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v442, v443, "SwiftMLSClientCoordinator processIncoming sending signature verified event { identifier: %s }", v447, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v448);
      MEMORY[0x266755550](v448, -1, -1);
      MEMORY[0x266755550](v447, -1, -1);
    }

    else
    {
      v450 = *(v0 + 20768);

      outlined destroy of NSObject?(v450, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v450, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v451 = *(v0 + 20760);
    v452 = v451[12];
    v453 = *(v0 + 16744);
    *(v0 + 15712) = *(v0 + 16728);
    *(v0 + 15728) = v453;
    v454 = *(v0 + 16776);
    *(v0 + 15744) = *(v0 + 16760);
    *(v0 + 15760) = v454;
    v455 = *(v0 + 16712);
    *(v0 + 15680) = *(v0 + 16696);
    v456 = *(v0 + 20792);
    v457 = *(v0 + 20776);
    *(v0 + 22256) = v452;
    *(v0 + 15696) = v455;
    *(v0 + 15776) = 7;
    outlined init with copy of ServerBag.MLS(v457, v0 + 18944);
    v458 = v451[10];
    *(v0 + 22264) = v458;
    v459 = v451[11];
    *(v0 + 22272) = v459;
    v460 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22280) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v461 = (v451 + v460);
    v462 = v461[1];
    *(v0 + 20352) = *v461;
    *(v0 + 20360) = v462;

    swift_unknownObjectRetain();

    v463 = swift_task_alloc();
    *(v0 + 22288) = v463;
    *v463 = v0;
    v463[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v464 = *(v0 + 20792);
    v465 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 13496, v465, v464, v0 + 18944, v458, v459, (v0 + 20352));
  }

  if (v80 == *MEMORY[0x277D6AAC8])
  {
    v191 = *(v0 + 21152);
    v192 = *(v0 + 21008);
    v193 = *(v0 + 21000);
    (*(*(v0 + 21128) + 96))(v191, *(v0 + 21120));
    outlined init with take of MLS.Group.Member?(v191, v192, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v192, v193, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v194 = type metadata accessor for MLS.Group.StateUpdate();
    *(v0 + 21832) = v194;
    v195 = *(v194 - 8);
    *(v0 + 21840) = v195;
    v196 = *(v195 + 48);
    *(v0 + 21848) = v196;
    *(v0 + 21856) = (v195 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v197 = v196(v193, 1, v194);
    v198 = *(v0 + 21000);
    if (v197 == 1)
    {
      v199 = *(v0 + 20760);
      v200 = *(v0 + 20752);
      outlined destroy of NSObject?(*(v0 + 21000), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      if (*(v200 + 32) == *(v199 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember) && *(v200 + 40) == *(v199 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8))
      {
        v201 = 1;
      }

      else
      {
        v201 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v201 = MLS.Group.StateUpdate.committerWasSelf.getter();
      (*(v195 + 8))(v198, v194);
    }

    *(v0 + 15570) = v201 & 1;
    v359 = *(v0 + 20776);
    v360 = v359[3];
    v361 = v359[4];
    __swift_project_boxed_opaque_existential_1(v359, v360);
    v362 = *(v361 + 40);
    v642 = (v362 + *v362);
    v363 = v362[1];
    v364 = swift_task_alloc();
    *(v0 + 21864) = v364;
    *v364 = v0;
    v364[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return (v642)(v360, v361);
  }

LABEL_64:
  if (v80 != *MEMORY[0x277D6AAD0])
  {
    v323 = v72;
    v324 = *(v0 + 21624);
    if (v80 != *MEMORY[0x277D6AAB8])
    {
      v380 = *(v0 + 20768);
      v381 = *(v0 + 20760);
      outlined init with copy of MLS.OutgoingEventState?(v380, v0 + 2536, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v380, v0 + 2704, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v382 = Logger.logObject.getter();
      v383 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v382, v383))
      {
        v384 = *(v0 + 21312);
        v385 = *(v0 + 21304);
        v386 = *(v0 + 20768);
        v387 = swift_slowAlloc();
        v388 = swift_slowAlloc();
        *v649 = v388;
        *v387 = 136315138;

        v389 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v385, v384, v649);

        *(v387 + 4) = v389;
        outlined destroy of NSObject?(v386, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v386, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v382, v383, "SwiftMLSClientCoordinator processIncoming missing SwiftMLS incoming message type { identifier: %s }", v387, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v388);
        MEMORY[0x266755550](v388, -1, -1);
        MEMORY[0x266755550](v387, -1, -1);
      }

      else
      {
        v488 = *(v0 + 20768);

        outlined destroy of NSObject?(v488, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v488, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v489 = v323;
      v490 = *(v0 + 21288);
      v491 = *(v0 + 21264);
      v492 = *(v0 + 21256);
      v493 = *(v0 + 21192);
      v494 = *(v0 + 21152);
      v495 = *(v0 + 21128);
      v496 = *(v0 + 21120);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v497 = 6;
      *(v497 + 8) = 0;
      *(v497 + 16) = 0;
      swift_willThrow();
      v489(v493, v496);
      (*(v491 + 8))(v490, v492);
      v489(v494, v496);
      goto LABEL_132;
    }

    v325 = *(v0 + 21312);
    v326 = *(v0 + 21304);
    v327 = *(v0 + 20768);
    v641 = *(v0 + 20760);
    v328 = *(v0 + 20752);
    v329 = *(v328 + 32);
    *(v0 + 19505) = *(v328 + 41);
    *(v0 + 19496) = v329;
    *(v0 + 20288) = *(v327 + 16);
    v330 = *(v328 + 32);
    *(v0 + 18033) = *(v328 + 41);
    *(v0 + 18024) = v330;
    *&v649[7] = *(v327 + 16);
    *(v0 + 18008) = v326;
    *(v0 + 18016) = v325;
    *(v0 + 18049) = *v649;
    *(v0 + 18064) = *&v649[15];
    v331 = *(v0 + 18024);
    *(v0 + 17080) = *(v0 + 18008);
    *(v0 + 17096) = v331;
    v332 = *(v0 + 18056);
    *(v0 + 17112) = *(v0 + 18040);
    *(v0 + 17128) = v332;
    outlined init with copy of MLS.OutgoingEventState?(v327, v0 + 2872, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20496, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v327, v0 + 3208, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20480, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19496, v0 + 19432);
    v333 = Logger.logObject.getter();
    v334 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v333, v334))
    {
      v335 = *(v0 + 21312);
      v336 = *(v0 + 21304);
      v337 = *(v0 + 20768);
      v338 = swift_slowAlloc();
      v339 = swift_slowAlloc();
      *v649 = v339;
      *v338 = 136315138;

      v340 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v336, v335, v649);

      *(v338 + 4) = v340;
      outlined destroy of NSObject?(v337, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v337, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v333, v334, "SwiftMLSClientCoordinator processIncoming sending internal message event { identifier: %s }", v338, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v339);
      MEMORY[0x266755550](v339, -1, -1);
      MEMORY[0x266755550](v338, -1, -1);
    }

    else
    {
      v479 = *(v0 + 20768);

      outlined destroy of NSObject?(v479, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v479, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v480 = *(v0 + 20792);
    v481 = *(v0 + 20776);
    v482 = *(v0 + 20760);
    *(v0 + 22336) = v482[12];
    v483 = *(v0 + 17128);
    *(v0 + 15608) = *(v0 + 17112);
    *(v0 + 15624) = v483;
    v484 = *(v0 + 17160);
    *(v0 + 15640) = *(v0 + 17144);
    *(v0 + 15656) = v484;
    v485 = *(v0 + 17096);
    *(v0 + 15576) = *(v0 + 17080);
    *(v0 + 15592) = v485;
    *(v0 + 15672) = 9;
    outlined init with copy of ServerBag.MLS(v481, v0 + 18984);
    *(v0 + 22344) = v482[10];
    *(v0 + 22352) = v482[11];
    v486 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22360) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v487 = (v482 + v486);
    *(v0 + 22368) = *v487;
    *(v0 + 22376) = v487[1];

    swift_unknownObjectRetain();

    v177 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v178 = 0;
    v179 = 0;

    return MEMORY[0x2822009F8](v177, v178, v179);
  }

  v221 = *(v0 + 21624);
  v222 = *(v0 + 20768);
  v223 = *(v0 + 20760);
  outlined init with copy of MLS.OutgoingEventState?(v222, v0 + 8248, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v222, v0 + 7912, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v224 = Logger.logObject.getter();
  v225 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v224, v225))
  {
    v226 = *(v0 + 21312);
    v227 = *(v0 + 21304);
    v228 = *(v0 + 20768);
    v229 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    *v649 = v230;
    *v229 = 136315138;

    v231 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v227, v226, v649);

    *(v229 + 4) = v231;
    outlined destroy of NSObject?(v228, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v228, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v224, v225, "SwiftMLSClientCoordinator processIncoming committing proposal { identifier: %s }", v229, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v230);
    MEMORY[0x266755550](v230, -1, -1);
    MEMORY[0x266755550](v229, -1, -1);
  }

  else
  {
    v365 = *(v0 + 20768);

    outlined destroy of NSObject?(v365, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v365, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v643 = *(v0 + 21616);
  v366 = *(v0 + 21608);
  v367 = *(v0 + 21600);
  v368 = *(v0 + 21592);
  v369 = *(v0 + 21584);
  v370 = *(v0 + 21576);
  v371 = *(v0 + 21200);
  v372 = *(v0 + 20800);
  v373 = *(v0 + 20776);
  swift_beginAccess();
  Date.init()();
  v368(v371 + *(v370 + 20), 1, 1, v369);
  v366(v371, 0, 1, v370);
  specialized Dictionary.subscript.setter(v371, 0xD000000000000016, 0x80000002651E7960);
  swift_endAccess();
  v374 = v373[3];
  v375 = v373[4];
  __swift_project_boxed_opaque_existential_1(v373, v374);
  v376 = *(v375 + 248);
  v644 = (v376 + *v376);
  v377 = v376[1];
  v378 = swift_task_alloc();
  *(v0 + 22200) = v378;
  *v378 = v0;
  v378[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v379 = *(v0 + 20920);

  return (v644)(v379, v374, v375);
}

{
  v655 = v0;
  v1 = *(v0 + 21736);
  if (*(v1 + 16))
  {
    (*(*(v0 + 21128) + 16))(*(v0 + 21056), v1 + ((*(*(v0 + 21128) + 80) + 32) & ~*(*(v0 + 21128) + 80)), *(v0 + 21120));
    v2 = 0;
    v3 = *(v0 + 21736);
  }

  else
  {
    v2 = 1;
  }

  v4 = *(v0 + 21128);
  v5 = *(v0 + 21120);
  v6 = *(v0 + 21056);
  (*(v4 + 56))(v6, v2, 1, v5);

  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    v7 = *(v0 + 21112);
    v8 = *(v0 + 21088);
    v9 = *(v0 + 21080);
    outlined destroy of NSObject?(*(v0 + 21056), &_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMd, &_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMR);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    v10 = swift_allocError();
    *v11 = 23;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    *(v0 + 22584) = v10;
    v12 = *(v0 + 20840);
    v13 = *(v0 + 20824);
    *(v0 + 20688) = v10;
    v14 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v15 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
      v16 = *(v0 + 20840);
      v17 = *(v0 + 20832);
      v18 = *(v0 + 20824);
      if (v15 == *MEMORY[0x277D6AD10])
      {
        v604 = *(v0 + 21624);
        v623 = *(v0 + 21304);
        v635 = *(v0 + 21312);
        v19 = *(v0 + 20816);
        v20 = *(v0 + 20768);
        v21 = *(v0 + 20760);
        v615 = *(v0 + 20752);
        (*(v17 + 96))(v16, v18);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
        outlined init with take of MLS.Group.Member?(v16 + *(v22 + 48), v19, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
        closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v19, v21, v20, v615, v649);
        v24 = *v649;
        v23 = *&v649[8];
        *(v0 + 22592) = *v649;
        *(v0 + 22600) = v23;
        v25 = *&v649[16];
        *(v0 + 22608) = *&v649[16];
        v26 = v650;
        *(v0 + 15673) = v650;
        *(v0 + 20064) = *(v20 + 16);
        *&v649[7] = *(v20 + 16);
        *(v0 + 17560) = v623;
        *(v0 + 17568) = v635;
        *(v0 + 17576) = v24;
        *(v0 + 17584) = v23;
        *(v0 + 17592) = v25;
        *(v0 + 17600) = v26;
        *(v0 + 17601) = *v649;
        *(v0 + 17616) = *&v649[15];
        v27 = *(v0 + 17576);
        *(v0 + 16792) = *(v0 + 17560);
        *(v0 + 16808) = v27;
        v28 = *(v0 + 17608);
        *(v0 + 16824) = *(v0 + 17592);
        *(v0 + 16840) = v28;
        outlined copy of MLS.AllMember();
        outlined init with copy of MLS.OutgoingEventState?(v20, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        outlined copy of MLS.AllMember();
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        outlined init with copy of MLS.OutgoingEventState?(v20, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        v636 = v24;
        v29 = v23;
        outlined copy of MLS.AllMember();
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = *(v0 + 21312);
          v33 = *(v0 + 21304);
          v34 = *(v0 + 20768);
          v593 = *(v0 + 20760);
          v35 = swift_slowAlloc();
          v605 = swift_slowAlloc();
          v647[0] = v605;
          *v35 = 136315650;

          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, v647);

          *(v35 + 4) = v36;
          outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          *(v35 + 12) = 2080;
          *v649 = v636;
          *&v649[8] = v29;
          *&v649[16] = v25;
          LOBYTE(v650) = v26;
          outlined copy of MLS.AllMember();
          v37 = MLS.AllMember.description.getter();
          v39 = v38;
          outlined consume of MLS.AllMember();
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v647);

          *(v35 + 14) = v40;
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
          *(v35 + 22) = 2080;
          v41 = *(v593 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
          v42 = *(v593 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
          v43 = *(v593 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
          *v649 = *(v593 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
          *&v649[8] = v41;
          *&v649[16] = v42;
          LOBYTE(v650) = v43;
          outlined copy of MLS.AllMember();
          v44 = MLS.AllMember.description.getter();
          v46 = v45;
          outlined consume of MLS.AllMember();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v647);

          *(v35 + 24) = v47;

          _os_log_impl(&dword_264F1F000, v30, v31, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v35, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266755550](v605, -1, -1);
          MEMORY[0x266755550](v35, -1, -1);
        }

        else
        {
          v154 = *(v0 + 20768);
          v155 = *(v0 + 20760);

          outlined destroy of NSObject?(v154, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v154, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
        }

        v156 = *(v0 + 21664);
        v157 = *(v0 + 20792);
        v158 = *(v0 + 20760);
        if ((v156 & 0x100000000) != 0)
        {
          v156 = 1;
        }

        else
        {
          v156 = v156;
        }

        v159 = *(v0 + 21640) + 1;
        *(v0 + 14536) = *(v0 + 20784);
        *(v0 + 14544) = v157;
        *(v0 + 14552) = v156;
        *(v0 + 14560) = v156;
        *(v0 + 14568) = v159;
        *(v0 + 14576) = xmmword_2651B68A0;
        *(v0 + 14592) = xmmword_2651B68A0;
        *(v0 + 14608) = xmmword_2651B68A0;
        *(v0 + 14624) = xmmword_2651B5F50;
        v160 = *(v158 + 96);
        v161 = *(v0 + 16840);
        *(v0 + 15920) = *(v0 + 16824);
        *(v0 + 15936) = v161;
        v162 = *(v0 + 16872);
        *(v0 + 15952) = *(v0 + 16856);
        *(v0 + 15968) = v162;
        v163 = *(v0 + 16808);
        *(v0 + 15888) = *(v0 + 16792);
        *(v0 + 15904) = v163;
        v164 = *(v0 + 14584);
        *(v0 + 13424) = *(v0 + 14568);
        *(v0 + 13440) = v164;
        v165 = *(v0 + 14616);
        *(v0 + 13456) = *(v0 + 14600);
        *(v0 + 13472) = v165;
        v166 = *(v0 + 14536);
        *(v0 + 13408) = *(v0 + 14552);
        *(v0 + 15984) = 4;
        *(v0 + 13488) = *(v0 + 14632);
        *(v0 + 13392) = v166;
        v647[0] = v636;
        v647[1] = v29;
        v647[2] = v25;
        v648 = v26;
        v167 = v158 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
        v168 = *(v167 + 8);
        v169 = *(v167 + 16);
        v170 = *(v167 + 24);
        *v649 = *v167;
        *&v649[8] = v168;
        *&v649[16] = v169;
        LOBYTE(v650) = v170;

        outlined copy of MLS.AllMember();
        v171 = specialized static MLS.AllMember.== infix(_:_:)(v647, v649);
        outlined consume of MLS.AllMember();
        v628 = (*v160 + 384);
        v637 = (*v628 + **v628);
        v172 = (*v628)[1];
        v173 = swift_task_alloc();
        *(v0 + 22616) = v173;
        *v173 = v0;
        v173[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

        return (v637)(v0 + 15888, v0 + 13392, 1, v171 & 1);
      }

      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    }

    goto LABEL_132;
  }

  v606 = *(v0 + 21744);
  v48 = *(v0 + 21056);
  v624 = *(v0 + 21624);
  v49 = *(v0 + 21192);
  v50 = *(v0 + 21168);
  v51 = *(v0 + 21128);
  v52 = *(v0 + 21120);
  v53 = *(v0 + 21112);
  v54 = *(v0 + 21080);
  v55 = *(v0 + 20800);
  v56 = *(v0 + 20768);
  v57 = *(v0 + 20760);
  v58 = *(*(v0 + 21088) + 8);
  *(v0 + 21752) = v58;
  v58(v53, v54);
  (*(v51 + 32))(v49, v48, v52);
  v649[0] = 7;
  swift_beginAccess();
  MetricCollector.end(metric:)(v649);
  swift_endAccess();
  v59 = *(v51 + 16);
  v59(v50, v49, v52);
  outlined init with copy of MLS.OutgoingEventState?(v56, v0 + 2200, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v56, v0 + 2368, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = *(v0 + 21312);
    v63 = *(v0 + 21304);
    v585 = *(v0 + 21160);
    v594 = *(v0 + 21168);
    v64 = *(v0 + 21128);
    v65 = *(v0 + 21120);
    v66 = *(v0 + 20768);
    v67 = swift_slowAlloc();
    v625 = swift_slowAlloc();
    *v649 = v625;
    *v67 = 136315394;

    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, v649);

    *(v67 + 4) = v68;
    outlined destroy of NSObject?(v66, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v66, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v67 + 12) = 2080;
    v59(v585, v594, v65);
    v69 = String.init<A>(describing:)();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v649);

    *(v67 + 14) = v71;
    v72 = *(v64 + 8);
    v72(v594, v65);
    _os_log_impl(&dword_264F1F000, v60, v61, "SwiftMLSClientCoordinator processIncoming processed message { identifier: %s, message: %s }", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v625, -1, -1);
    MEMORY[0x266755550](v67, -1, -1);
  }

  else
  {
    v73 = *(v0 + 21168);
    v74 = *(v0 + 21128);
    v75 = *(v0 + 21120);
    v76 = *(v0 + 20768);

    outlined destroy of NSObject?(v76, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v76, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v72 = *(v74 + 8);
    v72(v73, v75);
  }

  *(v0 + 21760) = v72;
  v77 = *(v0 + 21152);
  v78 = *(v0 + 21128);
  v79 = *(v0 + 21120);
  v59(v77, *(v0 + 21192), v79);
  v80 = (*(v78 + 88))(v77, v79);
  if (v80 == *MEMORY[0x277D6AAA8])
  {
    v81 = *(v0 + 21152);
    v82 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v81, *(v0 + 21120));
    v83 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMR) + 48));
    v84 = *v83;
    *(v0 + 21768) = *v83;
    v85 = v83[1];
    *(v0 + 21776) = v85;
    v86 = *(v0 + 20768);
    if (*(v82 + 104) >> 60 == 15)
    {
      v87 = *(v0 + 20800);
      v88 = *(v0 + 20752);
      v90 = v88[1];
      v89 = v88[2];
      v91 = *v88;
      *(v0 + 18498) = *(v88 + 42);
      *(v0 + 18472) = v90;
      *(v0 + 18488) = v89;
      *(v0 + 18456) = v91;
      swift_beginAccess();
      *(v0 + 20712) = *(v87 + 16);
      v92 = *v86;
      v93 = *(v86 + 16);
      *(v0 + 9792) = *(v86 + 32);
      *(v0 + 9776) = v93;
      *(v0 + 9760) = v92;
      v94 = *(v86 + 48);
      v95 = *(v86 + 64);
      v96 = *(v86 + 80);
      *(v0 + 9856) = *(v86 + 96);
      *(v0 + 9840) = v96;
      *(v0 + 9824) = v95;
      *(v0 + 9808) = v94;
      v97 = *(v86 + 112);
      v98 = *(v86 + 128);
      v99 = *(v86 + 144);
      *(v0 + 9920) = *(v86 + 160);
      *(v0 + 9904) = v99;
      *(v0 + 9888) = v98;
      *(v0 + 9872) = v97;

      v100 = swift_task_alloc();
      *(v0 + 21784) = v100;
      *v100 = v0;
      v100[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v101 = *(v0 + 21312);
      v102 = *(v0 + 21304);
      v103 = *(v0 + 20792);
      v104 = *(v0 + 20784);
      v105 = *(v0 + 20776);
      v106 = *(v0 + 20760);
      v107 = *(v0 + 20744);
      v658 = v0 + 20712;
      v659 = v0 + 9760;
      v657 = v105;
      v108 = v0 + 18456;
      v109 = v84;
      v110 = v85;
LABEL_86:

      return MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(v107, v102, v101, v108, v109, v110, v104, v103);
    }

    v607 = v85;
    v616 = v84;
    v119 = *(v0 + 21624);
    v120 = *(v0 + 20760);
    v59(*(v0 + 21144), *(v0 + 21192), *(v0 + 21120));
    outlined init with copy of MLS.OutgoingEventState?(v86, v0 + 10264, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v86, v0 + 10600, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = *(v0 + 21312);
      v124 = *(v0 + 21304);
      v626 = v72;
      v125 = *(v0 + 21160);
      v126 = *(v0 + 21144);
      v577 = *(v0 + 21120);
      v586 = *(v0 + 21128);
      v127 = *(v0 + 20768);
      v128 = swift_slowAlloc();
      v595 = swift_slowAlloc();
      *v649 = v595;
      *v128 = 136315394;

      v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v123, v649);

      *(v128 + 4) = v129;
      outlined destroy of NSObject?(v127, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v127, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v128 + 12) = 2080;
      v59(v125, v126, v577);
      v72 = v626;
      v130 = String.init<A>(describing:)();
      v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, v649);

      *(v128 + 14) = v132;
      v626(v126, v577);
      _os_log_impl(&dword_264F1F000, v121, v122, "SwiftMLSClientCoordinator processIncoming processed message had no AAD { identifier: %s, message: %s }", v128, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v595, -1, -1);
      MEMORY[0x266755550](v128, -1, -1);
    }

    else
    {
      v180 = *(v0 + 21144);
      v181 = *(v0 + 21128);
      v182 = *(v0 + 21120);
      v183 = *(v0 + 20768);

      outlined destroy of NSObject?(v183, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v183, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v72(v180, v182);
    }

    v184 = *(v0 + 21288);
    v185 = *(v0 + 21264);
    v186 = *(v0 + 21256);
    v187 = *(v0 + 21192);
    v188 = *(v0 + 21152);
    v189 = *(v0 + 21120);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v190 = 14;
    *(v190 + 8) = 0;
    *(v190 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v616, v607);
    v72(v187, v189);
    (*(v185 + 8))(v184, v186);
    outlined destroy of NSObject?(v188, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
LABEL_132:
    v510 = *(v0 + 21288);
    v511 = *(v0 + 21280);
    v512 = *(v0 + 21272);
    v513 = *(v0 + 21248);
    v514 = *(v0 + 21240);
    v515 = *(v0 + 21232);
    v516 = *(v0 + 21224);
    v517 = *(v0 + 21200);
    v518 = *(v0 + 21192);
    v519 = *(v0 + 21184);
    v521 = *(v0 + 21176);
    v522 = *(v0 + 21168);
    v523 = *(v0 + 21160);
    v524 = *(v0 + 21152);
    v525 = *(v0 + 21144);
    v526 = *(v0 + 21136);
    v527 = *(v0 + 21112);
    v528 = *(v0 + 21104);
    v529 = *(v0 + 21096);
    v530 = *(v0 + 21072);
    v531 = *(v0 + 21064);
    v532 = *(v0 + 21056);
    v533 = *(v0 + 21048);
    v534 = *(v0 + 21040);
    v535 = *(v0 + 21032);
    v537 = *(v0 + 21008);
    v540 = *(v0 + 21000);
    v543 = *(v0 + 20992);
    logd = *(v0 + 20984);
    v555 = *(v0 + 20976);
    v562 = *(v0 + 20968);
    v568 = *(v0 + 20944);
    v576 = *(v0 + 20920);
    v584 = *(v0 + 20912);
    v592 = *(v0 + 20904);
    v603 = *(v0 + 20896);
    v614 = *(v0 + 20864);
    v622 = *(v0 + 20840);
    v634 = *(v0 + 20816);

    v520 = *(v0 + 8);

    return v520();
  }

  if (v80 == *MEMORY[0x277D6AAB0])
  {
    v111 = *(v0 + 21152);
    v112 = *(v0 + 21048);
    v113 = *(v0 + 21024);
    v114 = *(v0 + 21016);
    (*(*(v0 + 21128) + 96))(v111, *(v0 + 21120));
    (*(v113 + 32))(v112, v111, v114);
    v115 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
    v117 = v116 >> 62;
    if ((v116 >> 62) > 1)
    {
      if (v117 != 2)
      {
        outlined consume of Data._Representation(v115, v116);
LABEL_57:
        v213 = *(v0 + 21048);
        v214 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
        v216 = v215 >> 62;
        if ((v215 >> 62) <= 1)
        {
          if (!v216)
          {
            v217 = BYTE6(v215);
            outlined consume of Data._Representation(v214, v215);
            v218 = v217;
            goto LABEL_69;
          }

          v232 = HIDWORD(v214);
          v233 = v214;
          v177 = outlined consume of Data._Representation(v214, v215);
          LODWORD(v218) = v232 - v233;
          if (!__OFSUB__(v232, v233))
          {
            v218 = v218;
            goto LABEL_69;
          }

          goto LABEL_137;
        }

        if (v216 != 2)
        {
          outlined consume of Data._Representation(v214, v215);
          goto LABEL_85;
        }

        v219 = *(v214 + 16);
        v220 = *(v214 + 24);
        v80 = outlined consume of Data._Representation(v214, v215);
        v218 = v220 - v219;
        if (!__OFSUB__(v220, v219))
        {
LABEL_69:
          if (!v218)
          {
            goto LABEL_85;
          }

          goto LABEL_70;
        }

        __break(1u);
        goto LABEL_64;
      }

      v175 = *(v115 + 16);
      v176 = *(v115 + 24);
      v177 = outlined consume of Data._Representation(v115, v116);
      if (!__OFSUB__(v176, v175))
      {
        if (v176 == v175)
        {
          goto LABEL_57;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    else
    {
      if (!v117)
      {
        v118 = BYTE6(v116);
        outlined consume of Data._Representation(v115, v116);
        if (!v118)
        {
          goto LABEL_57;
        }

LABEL_70:
        v234 = *(v0 + 20768);
        v235 = v234[13];
        if (v235 >> 60 == 15)
        {
          v236 = *(v0 + 21624);
          v237 = *(v0 + 20760);
          v59(*(v0 + 21136), *(v0 + 21192), *(v0 + 21120));
          outlined init with copy of MLS.OutgoingEventState?(v234, v0 + 4720, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v234, v0 + 4888, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v238 = Logger.logObject.getter();
          v239 = static os_log_type_t.default.getter();
          v629 = v72;
          if (os_log_type_enabled(v238, v239))
          {
            v608 = v59;
            v240 = *(v0 + 21312);
            v241 = *(v0 + 21304);
            v242 = *(v0 + 21160);
            v597 = *(v0 + 21136);
            v617 = *(v0 + 21128);
            v243 = *(v0 + 21120);
            v244 = *(v0 + 20768);
            v245 = swift_slowAlloc();
            v246 = swift_slowAlloc();
            *v649 = v246;
            *v245 = 136315394;

            v247 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v241, v240, v649);

            *(v245 + 4) = v247;
            outlined destroy of NSObject?(v244, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v244, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            *(v245 + 12) = 2080;
            v608(v242, v597, v243);
            v248 = String.init<A>(describing:)();
            v250 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v248, v249, v649);

            *(v245 + 14) = v250;
            v629(v597, v243);
            _os_log_impl(&dword_264F1F000, v238, v239, "SwiftMLSClientCoordinator processIncoming processed message had unexpected AAD { identifier: %s, message: %s }", v245, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v246, -1, -1);
            MEMORY[0x266755550](v245, -1, -1);
          }

          else
          {
            v269 = *(v0 + 21136);
            v270 = *(v0 + 21128);
            v271 = *(v0 + 21120);
            v272 = *(v0 + 20768);

            outlined destroy of NSObject?(v272, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v272, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v72(v269, v271);
          }

          v619 = *(v0 + 21288);
          v273 = *(v0 + 21264);
          v274 = *(v0 + 21256);
          v275 = *(v0 + 21192);
          v276 = *(v0 + 21120);
          v277 = *(v0 + 21048);
          v278 = *(v0 + 21024);
          v279 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v280 = 15;
          *(v280 + 8) = 0;
          *(v280 + 16) = 0;
          swift_willThrow();
          (*(v278 + 8))(v277, v279);
          v629(v275, v276);
          (*(v273 + 8))(v619, v274);
          goto LABEL_132;
        }

        v251 = v234[12];
        v252 = v234[14];
        v253 = v234[15];
        v255 = v234[16];
        v254 = v234[17];
        v256 = *(v0 + 21048);
        outlined copy of MLS.AdditionalAuthenticatedData?(v251, v235, v252, v253, v255, v254);
        outlined copy of Data._Representation(v251, v235);
        v618 = v254;
        outlined copy of Data?(v255, v254);
        v257 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
        v259 = v258;
        v260 = specialized static Data.== infix(_:_:)(v251, v235, v257, v258);
        outlined consume of Data._Representation(v257, v259);
        if ((v260 & 1) == 0)
        {
          v630 = v72;
          v639 = *(v0 + 21624);
          v281 = *(v0 + 20768);
          v571 = *(v0 + 20760);
          (*(*(v0 + 21024) + 16))(*(v0 + 21040), *(v0 + 21048), *(v0 + 21016));
          outlined init with copy of MLS.OutgoingEventState?(v281, v0 + 5392, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined copy of MLS.AdditionalAuthenticatedData?(v251, v235, v252, v253, v255, v618);
          outlined init with copy of MLS.OutgoingEventState?(v281, v0 + 5560, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v579 = v235;
          v610 = v252;
          v588 = v255;
          v598 = v253;
          outlined copy of MLS.AdditionalAuthenticatedData?(v251, v235, v252, v253, v255, v618);
          v282 = Logger.logObject.getter();
          v283 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v282, v283))
          {
            v640 = v283;
            v284 = *(v0 + 21312);
            v285 = *(v0 + 21304);
            v549 = *(v0 + 21040);
            v563 = *(v0 + 21024);
            v572 = *(v0 + 21016);
            v286 = *(v0 + 20768);
            v287 = swift_slowAlloc();
            v556 = swift_slowAlloc();
            *v649 = v556;
            *v287 = 136315650;

            v288 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v285, v284, v649);

            *(v287 + 4) = v288;
            outlined destroy of NSObject?(v286, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v286, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            log = v282;
            *(v287 + 12) = 2080;
            outlined copy of Data._Representation(v251, v579);
            v289 = Data.description.getter();
            v291 = v290;
            outlined consume of Data._Representation(v251, v579);
            v292 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v289, v291, v649);

            *(v287 + 14) = v292;
            v293 = v618;
            outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v252, v253, v588, v618);
            outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v252, v253, v588, v618);
            *(v287 + 22) = 2080;
            v294 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
            v296 = v295;
            v297 = Data.description.getter();
            v299 = v298;
            outlined consume of Data._Representation(v294, v296);
            v300 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v297, v299, v649);

            *(v287 + 24) = v300;
            v301 = v572;
            v573 = *(v563 + 8);
            v573(v549, v301);
            _os_log_impl(&dword_264F1F000, log, v640, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD messageID { identifier: %s, clientMessageID: %s, messageID: %s }", v287, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v556, -1, -1);
            MEMORY[0x266755550](v287, -1, -1);
          }

          else
          {
            v351 = *(v0 + 21040);
            v352 = *(v0 + 21024);
            v353 = *(v0 + 21016);
            v354 = *(v0 + 20768);

            outlined destroy of NSObject?(v354, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v354, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v293 = v618;
            outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v610, v253, v588, v618);
            outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v610, v253, v588, v618);
            v573 = *(v352 + 8);
            v573(v351, v353);
          }

          v355 = *(v0 + 21264);
          v550 = *(v0 + 21256);
          v557 = *(v0 + 21288);
          v538 = *(v0 + 21128);
          v541 = *(v0 + 21120);
          loga = *(v0 + 21192);
          v356 = *(v0 + 21048);
          v357 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v358 = 16;
          *(v358 + 8) = 0;
          *(v358 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v610, v598, v588, v293);
          outlined consume of MLS.AdditionalAuthenticatedData?(v251, v579, v610, v598, v588, v293);
          v573(v356, v357);
          v630(loga, v541);
          (*(v355 + 8))(v557, v550);
          goto LABEL_132;
        }

        v570 = v251;
        v261 = v618;
        if (v618 >> 60 != 15)
        {
          v609 = v252;
          v262 = *(v0 + 21048);
          outlined copy of Data._Representation(v255, v618);
          v263 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
          v265 = v264;
          v266 = specialized static Data.== infix(_:_:)(v255, v618, v263, v264);
          outlined consume of Data._Representation(v263, v265);
          if ((v266 & 1) == 0)
          {
            v599 = v253;
            v580 = v235;
            v631 = v72;
            v390 = *(v0 + 21624);
            v391 = *(v0 + 20768);
            v392 = *(v0 + 20760);
            (*(*(v0 + 21024) + 16))(*(v0 + 21032), *(v0 + 21048), *(v0 + 21016));
            outlined init with copy of MLS.OutgoingEventState?(v391, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v255, v618);
            outlined init with copy of MLS.OutgoingEventState?(v391, v0 + 9256, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v255, v618);
            v393 = Logger.logObject.getter();
            v394 = static os_log_type_t.error.getter();
            v395 = v255;
            v589 = v255;
            if (os_log_type_enabled(v393, v394))
            {
              v396 = *(v0 + 21312);
              v397 = *(v0 + 21304);
              v398 = *(v0 + 21032);
              v558 = *(v0 + 21024);
              v564 = *(v0 + 21016);
              v399 = *(v0 + 20768);
              v400 = swift_slowAlloc();
              v645 = swift_slowAlloc();
              *v649 = v645;
              *v400 = 136315650;

              v401 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v397, v396, v649);

              *(v400 + 4) = v401;
              outlined destroy of NSObject?(v399, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v399, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              v551 = v394;
              *(v400 + 12) = 2080;
              outlined copy of Data._Representation(v395, v618);
              v402 = Data.description.getter();
              v404 = v403;
              outlined consume of Data?(v395, v618);
              v405 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v402, v404, v649);

              *(v400 + 14) = v405;
              outlined consume of Data?(v395, v618);
              outlined consume of Data?(v395, v618);
              *(v400 + 22) = 2080;
              v406 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
              v408 = v407;
              v409 = Data.description.getter();
              v411 = v410;
              outlined consume of Data._Representation(v406, v408);
              v412 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v409, v411, v649);

              *(v400 + 24) = v412;
              v413 = v564;
              v565 = *(v558 + 8);
              v565(v398, v413);
              _os_log_impl(&dword_264F1F000, v393, v551, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD originalMessageID { identifier: %s, clientOriginalMessageID: %s, originalMessageID: %s }", v400, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x266755550](v645, -1, -1);
              MEMORY[0x266755550](v400, -1, -1);
            }

            else
            {
              v498 = *(v0 + 21032);
              v499 = *(v0 + 21024);
              v500 = *(v0 + 21016);
              v501 = *(v0 + 20768);

              outlined destroy of NSObject?(v501, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v501, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined consume of Data?(v255, v618);
              outlined consume of Data?(v255, v618);
              v565 = *(v499 + 8);
              v565(v498, v500);
            }

            v502 = *(v0 + 21264);
            v553 = *(v0 + 21256);
            v560 = *(v0 + 21288);
            v542 = *(v0 + 21120);
            logb = *(v0 + 21192);
            v536 = *(v0 + 21048);
            v539 = *(v0 + 21128);
            v503 = *(v0 + 21016);
            lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
            swift_allocError();
            *v504 = 16;
            *(v504 + 8) = 0;
            *(v504 + 16) = 0;
            swift_willThrow();
            outlined consume of Data?(v589, v618);
            outlined consume of MLS.AdditionalAuthenticatedData?(v570, v580, v609, v599, v589, v618);
            outlined consume of MLS.AdditionalAuthenticatedData?(v570, v580, v609, v599, v589, v618);
            v565(v536, v503);
            v631(logb, v542);
            (*(v502 + 8))(v560, v553);
            goto LABEL_132;
          }

          outlined consume of Data?(v255, v618);
          v252 = v609;
        }

        v267 = *(v0 + 21048);
        v268 = MLS.Group.IncomingApplicationMessageDetails.era.getter();
        if ((v268 & 0x100000000) == 0 && v252 != v268)
        {
          v633 = v72;
          v582 = v268;
          v646 = *(v0 + 21624);
          v466 = *(v0 + 20768);
          v467 = *(v0 + 20760);
          outlined init with copy of MLS.OutgoingEventState?(v466, v0 + 6736, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v466, v0 + 6904, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v613 = v252;
          v602 = v253;
          outlined copy of MLS.AdditionalAuthenticatedData?(v570, v235, v252, v253, v255, v618);
          v468 = Logger.logObject.getter();
          v469 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v468, v469))
          {
            v470 = *(v0 + 21312);
            v591 = v255;
            v471 = *(v0 + 21304);
            v472 = *(v0 + 20768);
            v473 = swift_slowAlloc();
            v474 = swift_slowAlloc();
            *v649 = v474;
            *v473 = 136315650;

            v475 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v471, v470, v649);

            *(v473 + 4) = v475;
            outlined destroy of NSObject?(v472, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v472, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v476 = v235;
            *(v473 + 12) = 1024;
            *(v473 + 14) = v613;
            v477 = v570;
            v478 = v591;
            v261 = v618;
            outlined consume of MLS.AdditionalAuthenticatedData?(v570, v235, v613, v602, v591, v618);
            *(v473 + 18) = 1024;
            *(v473 + 20) = v582;
            _os_log_impl(&dword_264F1F000, v468, v469, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD era { identifier: %s, clientEra: %u, era: %u }", v473, 0x18u);
            __swift_destroy_boxed_opaque_existential_1Tm(v474);
            MEMORY[0x266755550](v474, -1, -1);
            MEMORY[0x266755550](v473, -1, -1);
          }

          else
          {
            v505 = *(v0 + 20768);

            outlined destroy of NSObject?(v505, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v505, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined consume of MLS.AdditionalAuthenticatedData?(v570, v235, v252, v253, v255, v618);
            v478 = v255;
            v476 = v235;
            v477 = v570;
          }

          v583 = *(v0 + 21288);
          v506 = *(v0 + 21264);
          v567 = *(v0 + 21192);
          v575 = *(v0 + 21256);
          v554 = *(v0 + 21128);
          v561 = *(v0 + 21120);
          logc = *(v0 + 21048);
          v507 = *(v0 + 21024);
          v508 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v509 = 16;
          *(v509 + 8) = 0;
          *(v509 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v477, v476, v613, v602, v478, v261);
          outlined consume of MLS.AdditionalAuthenticatedData?(v477, v476, v613, v602, v478, v261);
          (*(v507 + 8))(logc, v508);
          v633(v567, v561);
          (*(v506 + 8))(v583, v575);
          goto LABEL_132;
        }

        outlined consume of MLS.AdditionalAuthenticatedData?(v570, v235, v252, v253, v255, v618);
        outlined consume of MLS.AdditionalAuthenticatedData?(v570, v235, v252, v253, v255, v618);
LABEL_85:
        v302 = *(v0 + 21048);
        v303 = *(v0 + 20800);
        v304 = *(v0 + 20768);
        v305 = *(v0 + 20752);
        v307 = v305[1];
        v306 = v305[2];
        v308 = *v305;
        *(v0 + 18562) = *(v305 + 42);
        *(v0 + 18536) = v307;
        *(v0 + 18552) = v306;
        *(v0 + 18520) = v308;
        v309 = MLS.Group.IncomingApplicationMessageDetails.data.getter();
        v311 = v310;
        *(v0 + 21800) = v309;
        *(v0 + 21808) = v310;
        swift_beginAccess();
        *(v0 + 20720) = *(v303 + 16);
        v312 = *v304;
        v313 = v304[1];
        *(v0 + 6432) = v304[2];
        *(v0 + 6416) = v313;
        *(v0 + 6400) = v312;
        v314 = v304[3];
        v315 = v304[4];
        v316 = v304[5];
        *(v0 + 6496) = v304[6];
        *(v0 + 6480) = v316;
        *(v0 + 6464) = v315;
        *(v0 + 6448) = v314;
        v317 = v304[7];
        v318 = v304[8];
        v319 = v304[9];
        *(v0 + 6560) = *(v304 + 20);
        *(v0 + 6544) = v319;
        *(v0 + 6528) = v318;
        *(v0 + 6512) = v317;

        v320 = swift_task_alloc();
        *(v0 + 21816) = v320;
        *v320 = v0;
        v320[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v101 = *(v0 + 21312);
        v102 = *(v0 + 21304);
        v103 = *(v0 + 20792);
        v104 = *(v0 + 20784);
        v321 = *(v0 + 20776);
        v322 = *(v0 + 20760);
        v107 = *(v0 + 20744);
        v658 = v0 + 20720;
        v659 = v0 + 6400;
        v657 = v321;
        v108 = v0 + 18520;
        v109 = v309;
        v110 = v311;
        goto LABEL_86;
      }

      v211 = HIDWORD(v115);
      v212 = v115;
      v177 = outlined consume of Data._Representation(v115, v116);
      if (!__OFSUB__(v211, v212))
      {
        if (v211 == v212)
        {
          goto LABEL_57;
        }

        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_137:
    __break(1u);
    return MEMORY[0x2822009F8](v177, v178, v179);
  }

  if (v80 == *MEMORY[0x277D6AAC0])
  {
    v627 = v72;
    v133 = *(v0 + 21152);
    v134 = *(v0 + 20864);
    v135 = *(v0 + 20856);
    v136 = *(v0 + 20848);
    v137 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v133, *(v0 + 21120));
    (*(v135 + 32))(v134, v133, v136);
    v139 = v137[3];
    v138 = v137[4];
    v140 = v137[2];
    *(v0 + 18180) = *(v137 + 76);
    *(v0 + 18152) = v139;
    *(v0 + 18168) = v138;
    *(v0 + 18136) = v140;
    v141 = *(v0 + 18152);
    v142 = *(v0 + 18168);
    v143 = *(v0 + 21624);
    if (v141 >> 16 == 0xFFFFFFFF && (v142 & 0x3000000000000000) == 0)
    {
      v144 = *(v0 + 20768);
      v145 = *(v0 + 20760);
      outlined init with copy of MLS.OutgoingEventState?(v144, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v144, v0 + 10936, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = *(v0 + 21312);
        v149 = *(v0 + 21304);
        v150 = *(v0 + 20768);
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        *v649 = v152;
        *v151 = 136315138;

        v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v148, v649);

        *(v151 + 4) = v153;
        outlined destroy of NSObject?(v150, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v150, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v146, v147, "SwiftMLSClientCoordinator processIncoming signed message was not given expected data { identifier: %s }", v151, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v152);
        MEMORY[0x266755550](v152, -1, -1);
        MEMORY[0x266755550](v151, -1, -1);
      }

      else
      {
        v341 = *(v0 + 20768);

        outlined destroy of NSObject?(v341, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v341, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v342 = *(v0 + 21288);
      v343 = *(v0 + 21264);
      v344 = *(v0 + 21256);
      v345 = *(v0 + 21192);
      v346 = *(v0 + 21128);
      v347 = *(v0 + 21120);
      v620 = *(v0 + 20864);
      v348 = *(v0 + 20856);
      v349 = *(v0 + 20848);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v350 = 12;
      *(v350 + 8) = 0;
      *(v350 + 16) = 0;
      swift_willThrow();
      v627(v345, v347);
      (*(v343 + 8))(v342, v344);
      (*(v348 + 8))(v620, v349);
      goto LABEL_132;
    }

    v578 = *(v0 + 18192);
    v587 = *(v0 + 18184);
    v596 = *(v0 + 18176);
    v638 = *(v0 + 18160);
    v569 = *(v0 + 18136);
    v202 = *(v0 + 20760);
    v204 = v137[3];
    v203 = v137[4];
    v205 = v137[2];
    *(v0 + 18244) = *(v137 + 76);
    *(v0 + 18216) = v204;
    *(v0 + 18232) = v203;
    *(v0 + 18200) = v205;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18264, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18328, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.SigningInput(v0 + 18200, v0 + 18392);
    v206 = Logger.logObject.getter();
    v207 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v647[0] = v209;
      *v208 = 136315138;
      v210 = (v142 >> 60) & 3;
      if (v210)
      {
        *v649 = v141;
        *&v649[8] = v638;
        *&v649[16] = v142 & 0xCFFFFFFFFFFFFFFFLL;
        if (v210 == 1)
        {
          v650 = v596;
          v651 = v587;
          LOWORD(v652) = v578;
          v414 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
        }

        else
        {
          v414 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
        }
      }

      else
      {
        *v649 = v141;
        *&v649[8] = v638;
        *&v649[16] = v142;
        v650 = v596;
        v651 = v587;
        LODWORD(v652) = v578;
        v414 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
      }

      v416 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v414, v415, v647);

      *(v208 + 4) = v416;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      _os_log_impl(&dword_264F1F000, v206, v207, "SwiftMLSClientCoordinator processIncoming signed data. { expectedSignedData: %s }", v208, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v209);
      MEMORY[0x266755550](v209, -1, -1);
      MEMORY[0x266755550](v208, -1, -1);
    }

    else
    {

      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    }

    v417 = *(v0 + 20864);
    v418 = *(v0 + 20768);
    v419 = *(v0 + 20760);
    *v649 = v569;
    *&v649[16] = v141;
    v650 = v638;
    v651 = v142;
    v652 = v596;
    v653 = v587;
    v654 = v578;
    outlined init with copy of MLS.OutgoingEventState?(v418, v0 + 10768, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v418, v0 + 10432, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter((v0 + 18824));
    v420 = *(v0 + 18856);
    __swift_project_boxed_opaque_existential_1((v0 + 18824), *(v0 + 18848));
    v421 = MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter();
    v423 = v422;
    MLS.VerifiableDerivedContent.verifyEquals(_:)();
    if (v606)
    {
      v424 = v606;
      v621 = *(v0 + 21288);
      v581 = *(v0 + 21264);
      v590 = *(v0 + 21256);
      v552 = *(v0 + 21128);
      v559 = *(v0 + 21120);
      v566 = *(v0 + 21192);
      v611 = *(v0 + 20864);
      v574 = *(v0 + 20856);
      v600 = *(v0 + 20848);
      v425 = *(v0 + 20768);
      v426 = *(v0 + 20760);
      outlined consume of Data._Representation(v421, v423);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
      swift_getErrorValue();
      v427 = *(v0 + 19776);
      v428 = Error.readableDescription.getter(*(v0 + 19784), *(v0 + 19792));
      closure #8 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v428, v429, v426, v425);

      swift_getErrorValue();
      v430 = *(v0 + 19752);
      v431 = Error.readableDescription.getter(*(v0 + 19760), *(v0 + 19768));
      v433 = v432;
      *(v0 + 19704) = 13;
      *(v0 + 19712) = v431;
      *(v0 + 19720) = v432;
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_willThrowTypedImpl();

      outlined destroy of NSObject?(v425, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined destroy of NSObject?(v425, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      swift_allocError();
      *v434 = 13;
      *(v434 + 8) = v431;
      *(v434 + 16) = v433;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      v627(v566, v559);
      (*(v581 + 8))(v621, v590);
      (*(v574 + 8))(v611, v600);
      goto LABEL_132;
    }

    v632 = *(v0 + 21624);
    v612 = *(v0 + 21312);
    v601 = *(v0 + 21304);
    v435 = *(v0 + 20768);
    v436 = *(v0 + 20760);
    v437 = *(v0 + 20752);

    outlined destroy of NSObject?(v435, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v435, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v421, v423);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
    v438 = *(v437 + 32);
    *(v0 + 19249) = *(v437 + 41);
    *(v0 + 19240) = v438;
    *(v0 + 20272) = *(v435 + 16);
    v439 = *(v437 + 32);
    *(v0 + 17905) = *(v437 + 41);
    *(v0 + 17896) = v439;
    *&v649[7] = *(v435 + 16);
    *(v0 + 17880) = v601;
    *(v0 + 17888) = v612;
    *(v0 + 17921) = *v649;
    *(v0 + 17936) = *&v649[15];
    v440 = *(v0 + 17896);
    *(v0 + 16696) = *(v0 + 17880);
    *(v0 + 16712) = v440;
    v441 = *(v0 + 17928);
    *(v0 + 16728) = *(v0 + 17912);
    *(v0 + 16744) = v441;
    outlined init with copy of MLS.OutgoingEventState?(v435, v0 + 9592, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20384, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v435, v0 + 9424, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20368, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19240, v0 + 19624);
    v442 = Logger.logObject.getter();
    v443 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v442, v443))
    {
      v444 = *(v0 + 21312);
      v445 = *(v0 + 21304);
      v446 = *(v0 + 20768);
      v447 = swift_slowAlloc();
      v448 = swift_slowAlloc();
      *v649 = v448;
      *v447 = 136315138;

      v449 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v445, v444, v649);

      *(v447 + 4) = v449;
      outlined destroy of NSObject?(v446, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v446, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v442, v443, "SwiftMLSClientCoordinator processIncoming sending signature verified event { identifier: %s }", v447, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v448);
      MEMORY[0x266755550](v448, -1, -1);
      MEMORY[0x266755550](v447, -1, -1);
    }

    else
    {
      v450 = *(v0 + 20768);

      outlined destroy of NSObject?(v450, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v450, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v451 = *(v0 + 20760);
    v452 = v451[12];
    v453 = *(v0 + 16744);
    *(v0 + 15712) = *(v0 + 16728);
    *(v0 + 15728) = v453;
    v454 = *(v0 + 16776);
    *(v0 + 15744) = *(v0 + 16760);
    *(v0 + 15760) = v454;
    v455 = *(v0 + 16712);
    *(v0 + 15680) = *(v0 + 16696);
    v456 = *(v0 + 20792);
    v457 = *(v0 + 20776);
    *(v0 + 22256) = v452;
    *(v0 + 15696) = v455;
    *(v0 + 15776) = 7;
    outlined init with copy of ServerBag.MLS(v457, v0 + 18944);
    v458 = v451[10];
    *(v0 + 22264) = v458;
    v459 = v451[11];
    *(v0 + 22272) = v459;
    v460 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22280) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v461 = (v451 + v460);
    v462 = v461[1];
    *(v0 + 20352) = *v461;
    *(v0 + 20360) = v462;

    swift_unknownObjectRetain();

    v463 = swift_task_alloc();
    *(v0 + 22288) = v463;
    *v463 = v0;
    v463[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v464 = *(v0 + 20792);
    v465 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 13496, v465, v464, v0 + 18944, v458, v459, (v0 + 20352));
  }

  if (v80 == *MEMORY[0x277D6AAC8])
  {
    v191 = *(v0 + 21152);
    v192 = *(v0 + 21008);
    v193 = *(v0 + 21000);
    (*(*(v0 + 21128) + 96))(v191, *(v0 + 21120));
    outlined init with take of MLS.Group.Member?(v191, v192, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v192, v193, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v194 = type metadata accessor for MLS.Group.StateUpdate();
    *(v0 + 21832) = v194;
    v195 = *(v194 - 8);
    *(v0 + 21840) = v195;
    v196 = *(v195 + 48);
    *(v0 + 21848) = v196;
    *(v0 + 21856) = (v195 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v197 = v196(v193, 1, v194);
    v198 = *(v0 + 21000);
    if (v197 == 1)
    {
      v199 = *(v0 + 20760);
      v200 = *(v0 + 20752);
      outlined destroy of NSObject?(*(v0 + 21000), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      if (*(v200 + 32) == *(v199 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember) && *(v200 + 40) == *(v199 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8))
      {
        v201 = 1;
      }

      else
      {
        v201 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v201 = MLS.Group.StateUpdate.committerWasSelf.getter();
      (*(v195 + 8))(v198, v194);
    }

    *(v0 + 15570) = v201 & 1;
    v359 = *(v0 + 20776);
    v360 = v359[3];
    v361 = v359[4];
    __swift_project_boxed_opaque_existential_1(v359, v360);
    v362 = *(v361 + 40);
    v642 = (v362 + *v362);
    v363 = v362[1];
    v364 = swift_task_alloc();
    *(v0 + 21864) = v364;
    *v364 = v0;
    v364[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return (v642)(v360, v361);
  }

LABEL_64:
  if (v80 != *MEMORY[0x277D6AAD0])
  {
    v323 = v72;
    v324 = *(v0 + 21624);
    if (v80 != *MEMORY[0x277D6AAB8])
    {
      v380 = *(v0 + 20768);
      v381 = *(v0 + 20760);
      outlined init with copy of MLS.OutgoingEventState?(v380, v0 + 2536, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v380, v0 + 2704, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v382 = Logger.logObject.getter();
      v383 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v382, v383))
      {
        v384 = *(v0 + 21312);
        v385 = *(v0 + 21304);
        v386 = *(v0 + 20768);
        v387 = swift_slowAlloc();
        v388 = swift_slowAlloc();
        *v649 = v388;
        *v387 = 136315138;

        v389 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v385, v384, v649);

        *(v387 + 4) = v389;
        outlined destroy of NSObject?(v386, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v386, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v382, v383, "SwiftMLSClientCoordinator processIncoming missing SwiftMLS incoming message type { identifier: %s }", v387, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v388);
        MEMORY[0x266755550](v388, -1, -1);
        MEMORY[0x266755550](v387, -1, -1);
      }

      else
      {
        v488 = *(v0 + 20768);

        outlined destroy of NSObject?(v488, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v488, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v489 = v323;
      v490 = *(v0 + 21288);
      v491 = *(v0 + 21264);
      v492 = *(v0 + 21256);
      v493 = *(v0 + 21192);
      v494 = *(v0 + 21152);
      v495 = *(v0 + 21128);
      v496 = *(v0 + 21120);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v497 = 6;
      *(v497 + 8) = 0;
      *(v497 + 16) = 0;
      swift_willThrow();
      v489(v493, v496);
      (*(v491 + 8))(v490, v492);
      v489(v494, v496);
      goto LABEL_132;
    }

    v325 = *(v0 + 21312);
    v326 = *(v0 + 21304);
    v327 = *(v0 + 20768);
    v641 = *(v0 + 20760);
    v328 = *(v0 + 20752);
    v329 = *(v328 + 32);
    *(v0 + 19505) = *(v328 + 41);
    *(v0 + 19496) = v329;
    *(v0 + 20288) = *(v327 + 16);
    v330 = *(v328 + 32);
    *(v0 + 18033) = *(v328 + 41);
    *(v0 + 18024) = v330;
    *&v649[7] = *(v327 + 16);
    *(v0 + 18008) = v326;
    *(v0 + 18016) = v325;
    *(v0 + 18049) = *v649;
    *(v0 + 18064) = *&v649[15];
    v331 = *(v0 + 18024);
    *(v0 + 17080) = *(v0 + 18008);
    *(v0 + 17096) = v331;
    v332 = *(v0 + 18056);
    *(v0 + 17112) = *(v0 + 18040);
    *(v0 + 17128) = v332;
    outlined init with copy of MLS.OutgoingEventState?(v327, v0 + 2872, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20496, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v327, v0 + 3208, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20480, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19496, v0 + 19432);
    v333 = Logger.logObject.getter();
    v334 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v333, v334))
    {
      v335 = *(v0 + 21312);
      v336 = *(v0 + 21304);
      v337 = *(v0 + 20768);
      v338 = swift_slowAlloc();
      v339 = swift_slowAlloc();
      *v649 = v339;
      *v338 = 136315138;

      v340 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v336, v335, v649);

      *(v338 + 4) = v340;
      outlined destroy of NSObject?(v337, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v337, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v333, v334, "SwiftMLSClientCoordinator processIncoming sending internal message event { identifier: %s }", v338, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v339);
      MEMORY[0x266755550](v339, -1, -1);
      MEMORY[0x266755550](v338, -1, -1);
    }

    else
    {
      v479 = *(v0 + 20768);

      outlined destroy of NSObject?(v479, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v479, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v480 = *(v0 + 20792);
    v481 = *(v0 + 20776);
    v482 = *(v0 + 20760);
    *(v0 + 22336) = v482[12];
    v483 = *(v0 + 17128);
    *(v0 + 15608) = *(v0 + 17112);
    *(v0 + 15624) = v483;
    v484 = *(v0 + 17160);
    *(v0 + 15640) = *(v0 + 17144);
    *(v0 + 15656) = v484;
    v485 = *(v0 + 17096);
    *(v0 + 15576) = *(v0 + 17080);
    *(v0 + 15592) = v485;
    *(v0 + 15672) = 9;
    outlined init with copy of ServerBag.MLS(v481, v0 + 18984);
    *(v0 + 22344) = v482[10];
    *(v0 + 22352) = v482[11];
    v486 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22360) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v487 = (v482 + v486);
    *(v0 + 22368) = *v487;
    *(v0 + 22376) = v487[1];

    swift_unknownObjectRetain();

    v177 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v178 = 0;
    v179 = 0;

    return MEMORY[0x2822009F8](v177, v178, v179);
  }

  v221 = *(v0 + 21624);
  v222 = *(v0 + 20768);
  v223 = *(v0 + 20760);
  outlined init with copy of MLS.OutgoingEventState?(v222, v0 + 8248, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v222, v0 + 7912, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v224 = Logger.logObject.getter();
  v225 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v224, v225))
  {
    v226 = *(v0 + 21312);
    v227 = *(v0 + 21304);
    v228 = *(v0 + 20768);
    v229 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    *v649 = v230;
    *v229 = 136315138;

    v231 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v227, v226, v649);

    *(v229 + 4) = v231;
    outlined destroy of NSObject?(v228, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v228, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v224, v225, "SwiftMLSClientCoordinator processIncoming committing proposal { identifier: %s }", v229, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v230);
    MEMORY[0x266755550](v230, -1, -1);
    MEMORY[0x266755550](v229, -1, -1);
  }

  else
  {
    v365 = *(v0 + 20768);

    outlined destroy of NSObject?(v365, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v365, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v643 = *(v0 + 21616);
  v366 = *(v0 + 21608);
  v367 = *(v0 + 21600);
  v368 = *(v0 + 21592);
  v369 = *(v0 + 21584);
  v370 = *(v0 + 21576);
  v371 = *(v0 + 21200);
  v372 = *(v0 + 20800);
  v373 = *(v0 + 20776);
  swift_beginAccess();
  Date.init()();
  v368(v371 + *(v370 + 20), 1, 1, v369);
  v366(v371, 0, 1, v370);
  specialized Dictionary.subscript.setter(v371, 0xD000000000000016, 0x80000002651E7960);
  swift_endAccess();
  v374 = v373[3];
  v375 = v373[4];
  __swift_project_boxed_opaque_existential_1(v373, v374);
  v376 = *(v375 + 248);
  v644 = (v376 + *v376);
  v377 = v376[1];
  v378 = swift_task_alloc();
  *(v0 + 22200) = v378;
  *v378 = v0;
  v378[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v379 = *(v0 + 20920);

  return (v644)(v379, v374, v375);
}

{
  v2 = *v1;
  v3 = *(*v1 + 21784);
  v9 = *v1;
  *(*v1 + 21792) = v0;

  if (v0)
  {
    v4 = *(v2 + 21296);
    v5 = *(v2 + 20712);

    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = *(v2 + 21296);
    v7 = *(v2 + 20712);

    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2644];
  v7 = v0[2641];
  v8 = v0[2640];
  outlined consume of Data._Representation(v0[2721], v0[2722]);
  v1(v5, v8);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
  v9 = v0[2661];
  v10 = v0[2660];
  v11 = v0[2659];
  v12 = v0[2656];
  v13 = v0[2655];
  v14 = v0[2654];
  v15 = v0[2653];
  v16 = v0[2650];
  v17 = v0[2649];
  v18 = v0[2648];
  v21 = v0[2647];
  v22 = v0[2646];
  v23 = v0[2645];
  v24 = v0[2644];
  v25 = v0[2643];
  v26 = v0[2642];
  v27 = v0[2639];
  v28 = v0[2638];
  v29 = v0[2637];
  v30 = v0[2634];
  v31 = v0[2633];
  v32 = v0[2632];
  v33 = v0[2631];
  v34 = v0[2630];
  v35 = v0[2629];
  v36 = v0[2626];
  v37 = v0[2625];
  v38 = v0[2624];
  v39 = v0[2623];
  v40 = v0[2622];
  v41 = v0[2621];
  v42 = v0[2618];
  v43 = v0[2615];
  v44 = v0[2614];
  v45 = v0[2613];
  v46 = v0[2612];
  v47 = v0[2608];
  v48 = v0[2605];
  v49 = v0[2602];

  v19 = v0[1];

  return v19();
}

{
  v2 = *v1;
  v3 = *(*v1 + 21816);
  v13 = *v1;
  *(*v1 + 21824) = v0;

  if (v0)
  {
    v4 = v2[2726];
    v5 = v2[2725];
    v6 = v2[2662];
    v7 = v2[2590];

    outlined consume of Data._Representation(v5, v4);
    v8 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v9 = v2[2726];
    v10 = v2[2725];
    v6 = v2[2662];
    v11 = v2[2590];

    outlined consume of Data._Representation(v10, v9);
    v8 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  (*(v0[2628] + 8))(v0[2631], v0[2627]);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v303 = v0;
  if (*(v0 + 15571) == 1)
  {
    v1 = (v0 + 17176);
    v2 = *(v0 + 21664);
    v3 = *(v0 + 21640);
    v290 = *(v0 + 21624);
    v4 = *(v0 + 21312);
    v5 = *(v0 + 21304);
    v6 = *(v0 + 20792);
    v7 = *(v0 + 20768);
    v287 = *(v0 + 20760);
    v8 = *(v0 + 20752);
    if ((v2 & 0x100000000) != 0)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    *(v0 + 11312) = *(v0 + 20784);
    *(v0 + 11320) = v6;
    *(v0 + 11328) = v2;
    *(v0 + 11336) = v2;
    *(v0 + 11344) = v3 + 1;
    *(v0 + 11352) = 0;
    *(v0 + 11360) = xmmword_2651CBF00;
    *(v0 + 11376) = xmmword_2651CBF00;
    *(v0 + 11392) = xmmword_2651CBF00;
    *(v0 + 11408) = 0xF000000000000000;
    v9 = *(v8 + 32);
    *(v0 + 19601) = *(v8 + 41);
    *(v0 + 19592) = v9;
    *(v0 + 20624) = *(v7 + 16);
    v10 = *(v8 + 32);
    *(v0 + 17713) = *(v8 + 41);
    *(v0 + 17704) = v10;
    *&v302[7] = *(v7 + 16);
    *(v0 + 17688) = v5;
    *(v0 + 17696) = v4;
    *(v0 + 17729) = *v302;
    *(v0 + 17744) = *&v302[15];
    v11 = *(v0 + 17704);
    *v1 = *(v0 + 17688);
    *(v0 + 17192) = v11;
    v12 = *(v0 + 17736);
    *(v0 + 17208) = *(v0 + 17720);
    *(v0 + 17224) = v12;
    outlined init with copy of MLS.OutgoingEventState?(v7, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20624, v0 + 20672, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v7, v0 + 8920, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20624, v0 + 20096, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19592, v0 + 19400);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 21312);
      v16 = *(v0 + 21304);
      v17 = *(v0 + 20768);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v302 = v19;
      *v18 = 136315138;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v302);

      *(v18 + 4) = v20;
      outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator processIncoming sending incoming downgrade recommended event { identifier: %s }", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x266755550](v19, -1, -1);
      MEMORY[0x266755550](v18, -1, -1);
    }

    else
    {
      v27 = *(v0 + 20768);

      outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v28 = *(*(v0 + 20760) + 96);
    v29 = *(v0 + 17224);
    *(v0 + 16024) = *(v0 + 17208);
    *(v0 + 16040) = v29;
    v30 = *(v0 + 17256);
    *(v0 + 16056) = *(v0 + 17240);
    *(v0 + 16072) = v30;
    v31 = *(v0 + 17192);
    *(v0 + 15992) = *v1;
    *(v0 + 16008) = v31;
    *(v0 + 16088) = 5;
    v32 = *(v0 + 11328);
    *(v0 + 14744) = *(v0 + 11312);
    *(v0 + 14760) = v32;
    v33 = *(v0 + 11344);
    v34 = *(v0 + 11360);
    v35 = *(v0 + 11376);
    v36 = *(v0 + 11392);
    *(v0 + 14840) = *(v0 + 11408);
    *(v0 + 14808) = v35;
    *(v0 + 14824) = v36;
    *(v0 + 14776) = v33;
    *(v0 + 14792) = v34;
    v291 = (*v28 + 384);
    v298 = (*v291 + **v291);
    v37 = (*v291)[1];
    v38 = swift_task_alloc();
    *(v0 + 21880) = v38;
    *v38 = v0;
    v38[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v39 = *(v0 + 15570);

    return v298(v0 + 15992, v0 + 14744, 1, v39);
  }

  v21 = *(v0 + 21856);
  v22 = *(v0 + 21848);
  v23 = *(v0 + 21832);
  v24 = *(v0 + 20992);
  outlined init with copy of MLS.OutgoingEventState?(*(v0 + 21008), v24, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  if (v22(v24, 1, v23) == 1)
  {
    outlined destroy of NSObject?(*(v0 + 20992), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v25 = *(v0 + 21872);
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    v25 = *(v0 + 21872);
    v41 = *(v0 + 21840);
    v42 = *(v0 + 21832);
    v43 = *(v0 + 20992);
    v44 = *(v0 + 20968);
    v45 = *(v0 + 20960);
    v46 = *(v0 + 20952);
    MLS.Group.StateUpdate.rosterUpdate.getter();
    (*(v41 + 8))(v43, v42);
    v47 = MLS.Group.RosterUpdate.removed.getter();
    (*(v45 + 8))(v44, v46);
    v26 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8SwiftMLS0E0O5GroupO6MemberVG_AH8IdentityO10CredentialOs5NeverOTg5026_s15SecureMessaging3MLSO25d120MLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0y7_AC9Allg12OG_SSAC0hmO0y45_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_0dC0ABO8h3O10I17OA_0K0O0S0VXEfU0_Tf1cn_nTm(v47, 973);
  }

  v48 = *(v0 + 21856);
  v49 = *(v0 + 21848);
  v50 = *(v0 + 21832);
  v51 = *(v0 + 21008);
  v52 = *(v0 + 20984);
  v292 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(v26);
  *(v0 + 21896) = v292;

  outlined init with copy of MLS.OutgoingEventState?(v51, v52, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  if (v49(v52, 1, v50) == 1)
  {
    outlined destroy of NSObject?(*(v0 + 20984), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v53 = MEMORY[0x277D84F90];
  }

  else
  {
    v54 = *(v0 + 21840);
    v55 = *(v0 + 21832);
    v56 = *(v0 + 20984);
    v57 = *(v0 + 20968);
    v58 = *(v0 + 20960);
    v59 = *(v0 + 20952);
    MLS.Group.StateUpdate.rosterUpdate.getter();
    (*(v54 + 8))(v56, v55);
    v60 = MLS.Group.RosterUpdate.added.getter();
    (*(v58 + 8))(v57, v59);
    v53 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8SwiftMLS0E0O5GroupO6MemberVG_AH8IdentityO10CredentialOs5NeverOTg5026_s15SecureMessaging3MLSO25d120MLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0y7_AC9Allg12OG_SSAC0hmO0y45_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_0dC0ABO8h3O10I17OA_0K0O0S0VXEfU0_Tf1cn_nTm(v60, 974);
  }

  v61 = *(v0 + 21856);
  v62 = *(v0 + 21848);
  v63 = *(v0 + 21832);
  v64 = *(v0 + 21008);
  v65 = *(v0 + 20976);
  v66 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(v53);
  *(v0 + 21904) = v66;

  outlined init with copy of MLS.OutgoingEventState?(v64, v65, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  if (v62(v65, 1, v63) == 1)
  {
    outlined destroy of NSObject?(*(v0 + 20976), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    updated = MEMORY[0x277D84F90];
  }

  else
  {
    v68 = *(v0 + 21840);
    v69 = *(v0 + 21832);
    v70 = *(v0 + 20976);
    v71 = *(v0 + 20968);
    v72 = *(v0 + 20960);
    v73 = *(v0 + 20952);
    MLS.Group.StateUpdate.rosterUpdate.getter();
    (*(v68 + 8))(v70, v69);
    v74 = MLS.Group.RosterUpdate.updated.getter();
    (*(v72 + 8))(v71, v73);
    updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8SwiftMLS0E0O5GroupO12MemberUpdateVG_AH8IdentityO10CredentialOs5NeverOTg5026_s15SecureMessaging3MLSO25d120MLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0z7_AC9Allg12OG_SSAC0hmO0z45_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_0dC0ABO8i3O10j10OA_0K0O0S6H7VXEfU2_Tf1cn_n(v74);
  }

  v75 = *(v0 + 20760);
  v76 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(updated);
  *(v0 + 21912) = v76;

  v77 = v75[16];
  v78 = v75[17];
  __swift_project_boxed_opaque_existential_1(v75 + 13, v77);
  v79 = (*(v78 + 8))(v66, v77, v78);
  *(v0 + 21920) = v79;
  if (v25)
  {
    v80 = *(v0 + 21760);
    v296 = *(v0 + 21288);
    v81 = *(v0 + 21264);
    v82 = *(v0 + 21256);
    v83 = *(v0 + 21192);
    v84 = *(v0 + 21128);
    v85 = *(v0 + 21120);
    v86 = *(v0 + 21008);

    outlined destroy of NSObject?(v86, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v80(v83, v85);
    (*(v81 + 8))(v296, v82);
    v93 = *(v0 + 21288);
    v94 = *(v0 + 21280);
    v95 = *(v0 + 21272);
    v96 = *(v0 + 21248);
    v97 = *(v0 + 21240);
    v98 = *(v0 + 21232);
    v99 = *(v0 + 21224);
    v100 = *(v0 + 21200);
    v101 = *(v0 + 21192);
    v102 = *(v0 + 21184);
    v261 = *(v0 + 21176);
    v262 = *(v0 + 21168);
    v263 = *(v0 + 21160);
    v264 = *(v0 + 21152);
    v265 = *(v0 + 21144);
    v266 = *(v0 + 21136);
    v267 = *(v0 + 21112);
    v268 = *(v0 + 21104);
    v269 = *(v0 + 21096);
    v270 = *(v0 + 21072);
    v271 = *(v0 + 21064);
    v272 = *(v0 + 21056);
    v273 = *(v0 + 21048);
    v274 = *(v0 + 21040);
    v275 = *(v0 + 21032);
    v276 = *(v0 + 21008);
    v277 = *(v0 + 21000);
    v278 = *(v0 + 20992);
    v279 = *(v0 + 20984);
    v280 = *(v0 + 20976);
    v281 = *(v0 + 20968);
    v282 = *(v0 + 20944);
    v283 = *(v0 + 20920);
    v284 = *(v0 + 20912);
    v285 = *(v0 + 20904);
    v286 = *(v0 + 20896);
    v289 = *(v0 + 20864);
    v293 = *(v0 + 20840);
    v297 = *(v0 + 20816);

    v103 = *(v0 + 8);

    return v103();
  }

  v288 = v79;
  v87 = v75[16];
  v88 = v75[17];
  __swift_project_boxed_opaque_existential_1(v75 + 13, v87);
  v89 = (*(v88 + 8))(v292, v87, v88);
  *(v0 + 21928) = v89;
  v90 = v89;
  v91 = v75[16];
  v92 = v75[17];
  __swift_project_boxed_opaque_existential_1(v75 + 13, v91);
  *(v0 + 21936) = (*(v92 + 8))(v76, v91, v92);
  v294 = *(v0 + 21624);
  v104 = *(v0 + 20768);
  v105 = *(v0 + 20760);

  v107 = specialized _NativeSet.filter(_:)(v106, v90, 982);
  *(v0 + 21944) = v107;

  v108 = specialized _NativeSet.filter(_:)(v90, v288, 983);
  *(v0 + 21952) = v108;

  outlined init with copy of MLS.OutgoingEventState?(v104, v0 + 6568, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v104, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = *(v0 + 21312);
    v112 = *(v0 + 21304);
    v113 = *(v0 + 20768);
    v295 = v110;
    v114 = swift_slowAlloc();
    v299 = swift_slowAlloc();
    *v302 = v299;
    *v114 = 136315906;

    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v111, v302);

    *(v114 + 4) = v115;
    outlined destroy of NSObject?(v113, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v113, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v114 + 12) = 2080;
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();

    v116 = Set.description.getter();
    v118 = v117;

    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, v302);

    *(v114 + 14) = v119;

    *(v114 + 22) = 2080;

    v120 = Set.description.getter();
    v122 = v121;

    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, v302);

    *(v114 + 24) = v123;

    *(v114 + 32) = 2080;

    v124 = Set.description.getter();
    v126 = v125;

    v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, v302);

    *(v114 + 34) = v127;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_264F1F000, v109, v295, "SwiftMLSClientCoordinator processIncoming processed commit { identifier: %s, removedMembers: %s, addedMembers: %s, updatedMembers: %s }", v114, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266755550](v299, -1, -1);
    MEMORY[0x266755550](v114, -1, -1);
  }

  else
  {
    v128 = *(v0 + 20768);

    outlined destroy of NSObject?(v128, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v128, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    swift_bridgeObjectRelease_n();
  }

  if (specialized Set.contains(_:)(*(*(v0 + 20760) + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember), *(*(v0 + 20760) + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8), *(*(v0 + 20760) + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16), *(*(v0 + 20760) + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24), v108))
  {
    v129 = *(v0 + 21624);
    v130 = *(v0 + 21312);
    v131 = *(v0 + 21304);
    v132 = *(v0 + 20768);
    v133 = *(v0 + 20760);
    v134 = *(v0 + 20752);
    v135 = *(v134 + 32);
    *(v0 + 19185) = *(v134 + 41);
    *(v0 + 19176) = v135;
    *(v0 + 20080) = *(v132 + 16);
    v136 = *(v134 + 32);
    *(v0 + 17841) = *(v134 + 41);
    *(v0 + 17832) = v136;
    *&v302[7] = *(v132 + 16);
    *(v0 + 17816) = v131;
    *(v0 + 17824) = v130;
    *(v0 + 17857) = *v302;
    *(v0 + 17872) = *&v302[15];
    v137 = *(v0 + 17832);
    *(v0 + 16504) = *(v0 + 17816);
    *(v0 + 16520) = v137;
    v138 = *(v0 + 17864);
    *(v0 + 16536) = *(v0 + 17848);
    *(v0 + 16552) = v138;
    outlined init with copy of MLS.OutgoingEventState?(v132, v0 + 3544, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v132, v0 + 3376, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.AllMember(v0 + 19176, v0 + 19560);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20080, v0 + 20128, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 17816, v0 + 17944, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = *(v0 + 21312);
      v142 = *(v0 + 21304);
      v143 = *(v0 + 20768);
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v302 = v145;
      *v144 = 136315138;

      v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v141, v302);

      *(v144 + 4) = v146;
      outlined destroy of NSObject?(v143, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v143, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v139, v140, "SwiftMLSClientCoordinator processIncoming sending incoming self kick event { identifier: %s }", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v145);
      MEMORY[0x266755550](v145, -1, -1);
      MEMORY[0x266755550](v144, -1, -1);
    }

    else
    {
      v172 = *(v0 + 20768);

      outlined destroy of NSObject?(v172, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v172, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v173 = 20112;
    v174 = 18784;
    v175 = *(v0 + 20792);
    v176 = *(v0 + 20776);
    v177 = *(v0 + 20760);
    *(v0 + 21960) = v177[12];
    v178 = *(v0 + 16552);
    *(v0 + 16232) = *(v0 + 16536);
    *(v0 + 16248) = v178;
    v179 = *(v0 + 16584);
    *(v0 + 16264) = *(v0 + 16568);
    *(v0 + 16280) = v179;
    v180 = *(v0 + 16520);
    *(v0 + 16200) = *(v0 + 16504);
    *(v0 + 16216) = v180;
    *(v0 + 16296) = 4;
    outlined init with copy of ServerBag.MLS(v176, v0 + 18784);
    v181 = v177[10];
    v182 = v177[11];
    v183 = *(v177 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v184 = *(v177 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20112) = v183;
    *(v0 + 20120) = v184;

    swift_unknownObjectRetain();

    v185 = swift_task_alloc();
    *(v0 + 21968) = v185;
    *v185 = v0;
    v185[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v186 = *(v0 + 20792);
    v187 = *(v0 + 20784);
    v188 = v0 + 11832;
    goto LABEL_50;
  }

  v147 = *(v107 + 16);
  if (!*(v108 + 16))
  {
    if (!v147)
    {
      v223 = *(v0 + 21624);
      v224 = *(v0 + 21312);
      v225 = *(v0 + 21304);
      v226 = *(v0 + 20768);
      v227 = *(v0 + 20760);
      v228 = *(v0 + 20752);
      v229 = *(v228 + 32);
      *(v0 + 19537) = *(v228 + 41);
      *(v0 + 19528) = v229;
      *(v0 + 20576) = *(v226 + 16);
      v230 = *(v228 + 32);
      *(v0 + 17649) = *(v228 + 41);
      *(v0 + 17640) = v230;
      *&v302[7] = *(v226 + 16);
      *(v0 + 17624) = v225;
      *(v0 + 17632) = v224;
      *(v0 + 17665) = *v302;
      *(v0 + 17680) = *&v302[15];
      v231 = *(v0 + 17640);
      *(v0 + 16408) = *(v0 + 17624);
      *(v0 + 16424) = v231;
      v232 = *(v0 + 17672);
      *(v0 + 16440) = *(v0 + 17656);
      *(v0 + 16456) = v232;
      outlined init with copy of MLS.OutgoingEventState?(v226, v0 + 3880, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v226, v0 + 3712, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined init with copy of MLS.AllMember(v0 + 19528, v0 + 19304);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20576, v0 + 20160, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 17624, v0 + 17752, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
      v233 = Logger.logObject.getter();
      v234 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = *(v0 + 21312);
        v236 = *(v0 + 21304);
        v237 = *(v0 + 20768);
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        *v302 = v239;
        *v238 = 136315138;

        v240 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v236, v235, v302);

        *(v238 + 4) = v240;
        outlined destroy of NSObject?(v237, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v237, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v233, v234, "SwiftMLSClientCoordinator processIncoming sending incoming internal state updated event { identifier: %s }", v238, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v239);
        MEMORY[0x266755550](v239, -1, -1);
        MEMORY[0x266755550](v238, -1, -1);
      }

      else
      {
        v251 = *(v0 + 20768);

        outlined destroy of NSObject?(v251, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v251, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v252 = *(v0 + 20760);
      v253 = v252[12];
      v254 = *(v0 + 16456);
      *(v0 + 15504) = *(v0 + 16440);
      *(v0 + 15520) = v254;
      v255 = *(v0 + 16488);
      *(v0 + 15536) = *(v0 + 16472);
      *(v0 + 15552) = v255;
      v256 = *(v0 + 16424);
      *(v0 + 15472) = *(v0 + 16408);
      v173 = 20144;
      v174 = 19064;
      v216 = 14848;
      v257 = *(v0 + 20792);
      v258 = *(v0 + 20776);
      *(v0 + 22000) = v253;
      *(v0 + 15488) = v256;
      *(v0 + 15568) = 9;
      outlined init with copy of ServerBag.MLS(v258, v0 + 19064);
      v181 = v252[10];
      v182 = v252[11];
      v259 = *(v252 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
      v260 = *(v252 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
      *(v0 + 20144) = v259;
      *(v0 + 20152) = v260;

      swift_unknownObjectRetain();

      v221 = swift_task_alloc();
      *(v0 + 22008) = v221;
      *v221 = v0;
      v222 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      goto LABEL_49;
    }

    goto LABEL_39;
  }

  if (v147)
  {
LABEL_39:
    v301 = *(v0 + 21624);
    v189 = *(v0 + 21312);
    v190 = *(v0 + 21304);
    v191 = *(v0 + 20768);
    v192 = *(v0 + 20760);
    v193 = *(v0 + 20752);
    v194 = *(v193 + 32);
    *(v0 + 19281) = *(v193 + 41);
    *(v0 + 19272) = v194;
    *(v0 + 20416) = *(v191 + 16);
    v195 = *(v193 + 32);
    *(v0 + 17441) = *(v193 + 41);
    *(v0 + 17432) = v195;
    *&v302[7] = *(v191 + 16);
    *(v0 + 17416) = v190;
    *(v0 + 17424) = v189;
    *(v0 + 17457) = *v302;
    *(v0 + 17472) = *&v302[15];
    *(v0 + 17480) = v107;
    v196 = *(v0 + 17464);
    *(v0 + 17016) = *(v0 + 17448);
    *(v0 + 17032) = v196;
    *(v0 + 17048) = *(v0 + 17480);
    v197 = *(v0 + 17432);
    *(v0 + 16984) = *(v0 + 17416);
    *(v0 + 17000) = v197;

    outlined init with copy of MLS.OutgoingEventState?(v191, v0 + 6232, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v191, v0 + 6064, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.AllMember(v0 + 19272, v0 + 19208);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20416, v0 + 20256, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 17416, v0 + 17344, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);
    v198 = Logger.logObject.getter();
    v199 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = *(v0 + 21312);
      v201 = *(v0 + 21304);
      v202 = *(v0 + 20768);
      v203 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      *v302 = v204;
      *v203 = 136315394;

      v205 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, v200, v302);

      *(v203 + 4) = v205;
      outlined destroy of NSObject?(v202, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v202, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v203 + 12) = 2080;
      lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();

      v206 = Set.description.getter();
      v208 = v207;

      v209 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v206, v208, v302);

      *(v203 + 14) = v209;

      _os_log_impl(&dword_264F1F000, v198, v199, "SwiftMLSClientCoordinator processIncoming sending incoming member added event { identifier: %s, addedMembers: %s }", v203, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v204, -1, -1);
      MEMORY[0x266755550](v203, -1, -1);
    }

    else
    {
      v210 = *(v0 + 20768);

      outlined destroy of NSObject?(v210, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v210, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v211 = *(v0 + 20760);
    v212 = v211[12];
    v213 = *(v0 + 17032);
    *(v0 + 16336) = *(v0 + 17016);
    *(v0 + 16352) = v213;
    v214 = *(v0 + 17064);
    *(v0 + 16368) = *(v0 + 17048);
    *(v0 + 0x4000) = v214;
    v215 = *(v0 + 17000);
    *(v0 + 16304) = *(v0 + 16984);
    v173 = 20240;
    v174 = 18664;
    v216 = 15368;
    v217 = *(v0 + 20792);
    v218 = *(v0 + 20776);
    *(v0 + 22040) = v212;
    *(v0 + 16320) = v215;
    *(v0 + 16400) = 2;
    outlined init with copy of ServerBag.MLS(v218, v0 + 18664);
    v181 = v211[10];
    v182 = v211[11];
    v219 = *(v211 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v220 = *(v211 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20240) = v219;
    *(v0 + 20248) = v220;

    swift_unknownObjectRetain();

    v221 = swift_task_alloc();
    *(v0 + 22048) = v221;
    *v221 = v0;
    v222 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    goto LABEL_49;
  }

  v148 = *(v0 + 21952);
  v300 = *(v0 + 21624);
  v149 = *(v0 + 21312);
  v150 = *(v0 + 21304);
  v151 = *(v0 + 20768);
  v152 = *(v0 + 20760);
  v153 = *(v0 + 20752);
  v154 = *(v153 + 32);
  *(v0 + 19377) = *(v153 + 41);
  *(v0 + 19368) = v154;
  *(v0 + 20432) = *(v151 + 16);
  v155 = *(v153 + 32);
  *(v0 + 17513) = *(v153 + 41);
  *(v0 + 17504) = v155;
  *&v302[7] = *(v151 + 16);
  *(v0 + 17488) = v150;
  *(v0 + 17496) = v149;
  *(v0 + 17529) = *v302;
  *(v0 + 17544) = *&v302[15];
  *(v0 + 17552) = v148;
  v156 = *(v0 + 17536);
  *(v0 + 16632) = *(v0 + 17520);
  *(v0 + 16648) = v156;
  *(v0 + 16664) = *(v0 + 17552);
  v157 = *(v0 + 17504);
  *(v0 + 16600) = *(v0 + 17488);
  *(v0 + 16616) = v157;

  outlined init with copy of MLS.OutgoingEventState?(v151, v0 + 5896, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v151, v0 + 5728, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.AllMember(v0 + 19368, v0 + 19144);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 20432, v0 + 20224, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 17488, v0 + 17272, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
  v158 = Logger.logObject.getter();
  v159 = static os_log_type_t.default.getter();
  v160 = os_log_type_enabled(v158, v159);
  v161 = *(v0 + 21952);
  if (v160)
  {
    v162 = *(v0 + 21312);
    v163 = *(v0 + 21304);
    v164 = *(v0 + 20768);
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    *v302 = v166;
    *v165 = 136315394;

    v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v162, v302);

    *(v165 + 4) = v167;
    outlined destroy of NSObject?(v164, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v164, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v165 + 12) = 2080;
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();

    v168 = Set.description.getter();
    v170 = v169;

    v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, v302);

    *(v165 + 14) = v171;

    _os_log_impl(&dword_264F1F000, v158, v159, "SwiftMLSClientCoordinator processIncoming sending incoming member removed event { identifier: %s, removedMembers: %s }", v165, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v166, -1, -1);
    MEMORY[0x266755550](v165, -1, -1);
  }

  else
  {
    v241 = *(v0 + 20768);

    outlined destroy of NSObject?(v241, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v241, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v242 = *(v0 + 20760);
  v243 = v242[12];
  v244 = *(v0 + 16648);
  *(v0 + 16128) = *(v0 + 16632);
  *(v0 + 16144) = v244;
  v245 = *(v0 + 16680);
  *(v0 + 16160) = *(v0 + 16664);
  *(v0 + 16176) = v245;
  v246 = *(v0 + 16616);
  *(v0 + 16096) = *(v0 + 16600);
  v173 = 20208;
  v174 = 18704;
  v216 = 11208;
  v247 = *(v0 + 20792);
  v248 = *(v0 + 20776);
  *(v0 + 22096) = v243;
  *(v0 + 16112) = v246;
  *(v0 + 16192) = 3;
  outlined init with copy of ServerBag.MLS(v248, v0 + 18704);
  v181 = v242[10];
  v182 = v242[11];
  v249 = *(v242 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v250 = *(v242 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *(v0 + 20208) = v249;
  *(v0 + 20216) = v250;

  swift_unknownObjectRetain();

  v221 = swift_task_alloc();
  *(v0 + 22104) = v221;
  *v221 = v0;
  v222 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
LABEL_49:
  v221[1] = v222;
  v186 = *(v0 + 20792);
  v187 = *(v0 + 20784);
  v188 = v0 + v216;
LABEL_50:

  return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v188, v187, v186, v0 + v174, v181, v182, (v0 + v173));
}

{
  v2 = *v1;
  v3 = *(*v1 + 21880);
  v8 = *v1;
  *(*v1 + 21888) = v0;

  if (v0)
  {
    v4 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 20624, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v5 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 21296);
    v5 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

{
  v1 = *(v0 + 21760);
  v56 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 21192);
  v5 = *(v0 + 21120);
  v6 = *(v0 + 21008);
  v7 = *(v0 + 20800);
  v8 = *(v0 + 20744);
  v9 = *(v0 + 21128) + 8;
  outlined destroy of NSObject?(v0 + 17688, &_s15SecureMessaging3MLSO28IncomingDowngradeRecommendedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingDowngradeRecommendedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v4, v5);
  (*(v2 + 8))(v56, v3);
  swift_beginAccess();
  v10 = *(v7 + 16);
  *v8 = *(v0 + 20624);
  v11 = *(v0 + 11408);
  v12 = *(v0 + 11360);
  v13 = *(v0 + 11392);
  *(v8 + 80) = *(v0 + 11376);
  *(v8 + 96) = v13;
  *(v8 + 64) = v12;
  v14 = *(v0 + 11344);
  v15 = *(v0 + 11312);
  *(v8 + 32) = *(v0 + 11328);
  *(v8 + 48) = v14;
  *(v8 + 16) = v15;
  *(v8 + 112) = v11;
  *(v8 + 120) = v10;

  v16 = *(v0 + 21288);
  v17 = *(v0 + 21280);
  v18 = *(v0 + 21272);
  v19 = *(v0 + 21248);
  v20 = *(v0 + 21240);
  v21 = *(v0 + 21232);
  v22 = *(v0 + 21224);
  v23 = *(v0 + 21200);
  v24 = *(v0 + 21192);
  v25 = *(v0 + 21184);
  v28 = *(v0 + 21176);
  v29 = *(v0 + 21168);
  v30 = *(v0 + 21160);
  v31 = *(v0 + 21152);
  v32 = *(v0 + 21144);
  v33 = *(v0 + 21136);
  v34 = *(v0 + 21112);
  v35 = *(v0 + 21104);
  v36 = *(v0 + 21096);
  v37 = *(v0 + 21072);
  v38 = *(v0 + 21064);
  v39 = *(v0 + 21056);
  v40 = *(v0 + 21048);
  v41 = *(v0 + 21040);
  v42 = *(v0 + 21032);
  v43 = *(v0 + 21008);
  v44 = *(v0 + 21000);
  v45 = *(v0 + 20992);
  v46 = *(v0 + 20984);
  v47 = *(v0 + 20976);
  v48 = *(v0 + 20968);
  v49 = *(v0 + 20944);
  v50 = *(v0 + 20920);
  v51 = *(v0 + 20912);
  v52 = *(v0 + 20904);
  v53 = *(v0 + 20896);
  v54 = *(v0 + 20864);
  v55 = *(v0 + 20840);
  v57 = *(v0 + 20816);

  v26 = *(v0 + 8);

  return v26();
}

{
  v2 = *(*v1 + 21968);
  v3 = *v1;
  *(v3 + 21976) = v0;

  if (v0)
  {
    v4 = *(v3 + 21952);
    v5 = *(v3 + 21944);
    v6 = *(v3 + 21936);
    v7 = *(v3 + 21928);
    v8 = *(v3 + 21920);
    v9 = *(v3 + 21912);
    v10 = *(v3 + 21904);
    v11 = *(v3 + 21896);
    v22 = *(v3 + 21296);
    outlined destroy of NSObject?(v3 + 17816, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v22, 0);
  }

  else
  {
    v12 = *(v3 + 11848);
    *(v3 + 11728) = *(v3 + 11832);
    *(v3 + 11744) = v12;
    v13 = *(v3 + 11880);
    *(v3 + 11760) = *(v3 + 11864);
    v14 = *(v3 + 11896);
    *(v3 + 11808) = *(v3 + 11912);
    *(v3 + 11792) = v14;
    v15 = *(v3 + 21960);
    *(v3 + 11824) = *(v3 + 11928);
    *(v3 + 11776) = v13;
    v21 = (*v15 + 384);
    v23 = (*v21 + **v21);
    v16 = (*v21)[1];
    v17 = swift_task_alloc();
    *(v3 + 21984) = v17;
    *v17 = v3;
    v17[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v18 = *(v3 + 21960);
    v19 = *(v3 + 15570);

    return v23(v3 + 16200, v3 + 11728, 1, v19);
  }
}

{
  v3 = *v1 + 11728;
  v4 = *(*v1 + 21984);
  v5 = *v1;
  v2 = v5;
  *(v5 + 21992) = v0;

  if (v0)
  {
    v6 = *(v5 + 21952);
    v7 = *(v5 + 21944);
    v8 = *(v5 + 21936);
    v9 = *(v5 + 21928);
    v10 = *(v5 + 21920);
    v11 = *(v5 + 21904);
    v12 = *(v2 + 21896);
    v27 = *(v2 + 21912);
    v28 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 17816, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);

    v13 = *v3;
    v14 = *(v3 + 32);
    *(v2 + 11640) = *(v3 + 16);
    *(v2 + 11656) = v14;
    *(v2 + 11624) = v13;
    v15 = *(v3 + 48);
    v16 = *(v3 + 64);
    v17 = *(v3 + 80);
    *(v2 + 11720) = *(v3 + 96);
    *(v2 + 11688) = v16;
    *(v2 + 11704) = v17;
    *(v2 + 11672) = v15;
    outlined destroy of MLS.Group(v2 + 11624);
    v18 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v19 = v28;
  }

  else
  {
    v20 = *(v5 + 21296);
    v22 = *(v3 + 16);
    v21 = *(v3 + 32);
    *(v5 + 11520) = *v3;
    *(v5 + 11536) = v22;
    *(v5 + 11552) = v21;
    v24 = *(v3 + 64);
    v23 = *(v3 + 80);
    v25 = *(v3 + 96);
    *(v5 + 11568) = *(v3 + 48);
    *(v5 + 11616) = v25;
    *(v5 + 11600) = v23;
    *(v5 + 11584) = v24;
    outlined destroy of MLS.Group(v5 + 11520);
    v18 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v19 = v20;
  }

  return MEMORY[0x2822009F8](v18, v19, 0);
}

{
  v123 = v0;
  outlined destroy of NSObject?(v0 + 17816, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 17816, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = *(v0 + 21992);
  v2 = *(v0 + 20768);
  v3 = *(v2 + 144);
  *(v0 + 22152) = v3;
  v4 = *(v2 + 152);
  *(v0 + 22160) = v4;
  v5 = *(v0 + 21624);
  v6 = *(v0 + 20760);
  if (v4 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5056, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 21952);
    v116 = *(v0 + 21928);
    v119 = *(v0 + 21936);
    v11 = *(v0 + 21920);
    v12 = *(v0 + 21912);
    v13 = *(v0 + 21904);
    v14 = *(v0 + 21896);
    if (v9)
    {
      v107 = *(v0 + 21944);
      v15 = *(v0 + 21312);
      v16 = *(v0 + 21304);
      v110 = *(v0 + 20768);
      v113 = v7;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v122[0] = v18;
      *v17 = 136315138;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v122);

      *(v17 + 4) = v19;

      outlined destroy of NSObject?(v110, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v110, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v113, v8, "SwiftMLSClientCoordinator processIncoming commit returning processedContext to caller { identifier: %s }", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    else
    {
      v32 = *(v0 + 20768);
      v33 = *(v0 + 21896);

      outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v34 = *(v0 + 20792);
    v35 = *(v0 + 20776);
    v36 = *(v0 + 20760);
    *(v0 + 20656) = *(*(v0 + 20768) + 16);
    outlined init with copy of ServerBag.MLS(v35, v0 + 18864);
    v38 = *(v36 + 80);
    v37 = *(v36 + 88);
    v39 = *(v36 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v40 = *(v36 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20192) = v39;
    *(v0 + 20200) = v40;

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20656, v0 + 20176, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_unknownObjectRetain();

    v41 = swift_task_alloc();
    *(v0 + 22184) = v41;
    *v41 = v0;
    v41[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v42 = *(v0 + 20792);
    v43 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 12456, v43, v42, v0 + 18864, v38, v37, (v0 + 20192));
  }

  else
  {
    v120 = v1;
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4552, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4384, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 21312);
      v23 = *(v0 + 21304);
      v24 = *(v0 + 20768);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v122[0] = v26;
      *v25 = 136315394;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v122);

      *(v25 + 4) = v27;
      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v25 + 12) = 2080;
      outlined copy of Data._Representation(v3, v4);
      v28 = Data.description.getter();
      v30 = v29;
      outlined consume of Data?(v3, v4);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v122);

      *(v25 + 14) = v31;
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
      _os_log_impl(&dword_264F1F000, v20, v21, "SwiftMLSClientCoordinator processIncoming updating encryptedGroupNameKey { identifier: %s, encryptedGroupNameKey: %s }", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v26, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
    }

    else
    {
      v45 = *(v0 + 20768);

      outlined destroy of NSObject?(v45, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v45, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
    }

    v46 = *(v0 + 21104);
    outlined copy of Data._Representation(v3, v4);
    MLS.Group.Message.init(fromRaw:)();
    if (v120)
    {
      v47 = *(v0 + 21952);
      v48 = *(v0 + 21944);
      v49 = *(v0 + 21936);
      v99 = *(v0 + 21928);
      v50 = *(v0 + 21912);
      v51 = *(v0 + 21904);
      v52 = *(v0 + 21896);
      v117 = *(v0 + 21288);
      v53 = *(v0 + 21264);
      v111 = *(v0 + 21760);
      v114 = *(v0 + 21256);
      v101 = *(v0 + 21920);
      v103 = *(v0 + 21128);
      v105 = *(v0 + 21120);
      v108 = *(v0 + 21192);
      v54 = *(v0 + 21008);

      outlined consume of Data?(v3, v4);

      outlined destroy of NSObject?(v54, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      v111(v108, v105);
      (*(v53 + 8))(v117, v114);
      v55 = *(v0 + 21288);
      v56 = *(v0 + 21280);
      v57 = *(v0 + 21272);
      v58 = *(v0 + 21248);
      v59 = *(v0 + 21240);
      v60 = *(v0 + 21232);
      v61 = *(v0 + 21224);
      v62 = *(v0 + 21200);
      v63 = *(v0 + 21192);
      v64 = *(v0 + 21184);
      v78 = *(v0 + 21176);
      v79 = *(v0 + 21168);
      v80 = *(v0 + 21160);
      v81 = *(v0 + 21152);
      v82 = *(v0 + 21144);
      v83 = *(v0 + 21136);
      v84 = *(v0 + 21112);
      v85 = *(v0 + 21104);
      v86 = *(v0 + 21096);
      v87 = *(v0 + 21072);
      v88 = *(v0 + 21064);
      v89 = *(v0 + 21056);
      v90 = *(v0 + 21048);
      v91 = *(v0 + 21040);
      v92 = *(v0 + 21032);
      v93 = *(v0 + 21008);
      v94 = *(v0 + 21000);
      v95 = *(v0 + 20992);
      v96 = *(v0 + 20984);
      v97 = *(v0 + 20976);
      v98 = *(v0 + 20968);
      v100 = *(v0 + 20944);
      v102 = *(v0 + 20920);
      v104 = *(v0 + 20912);
      v106 = *(v0 + 20904);
      v109 = *(v0 + 20896);
      v112 = *(v0 + 20864);
      v115 = *(v0 + 20840);
      v118 = *(v0 + 20816);

      v65 = *(v0 + 8);

      return v65();
    }

    else
    {
      v66 = *(v0 + 21104);
      v67 = *(v0 + 21096);
      v68 = *(v0 + 21088);
      v69 = *(v0 + 21080);
      v70 = *(v0 + 20944);
      v71 = *(v0 + 20776);
      v72 = v71[3];
      v73 = v71[4];
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(v68 + 16))(v67, v66, v69);
      MLS.Group.Group.DecryptNameKeysInput.init(privateMessage:)();
      v74 = *(v73 + 240);
      v121 = (v74 + *v74);
      v75 = v74[1];
      v76 = swift_task_alloc();
      *(v0 + 22168) = v76;
      *v76 = v0;
      v76[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v77 = *(v0 + 20944);

      return v121(v0 + 19104, v77, v72, v73);
    }
  }
}

{
  v2 = *(*v1 + 22008);
  v3 = *v1;
  *(v3 + 22016) = v0;

  if (v0)
  {
    v4 = *(v3 + 21952);
    v5 = *(v3 + 21944);
    v6 = *(v3 + 21936);
    v7 = *(v3 + 21928);
    v8 = *(v3 + 21920);
    v9 = *(v3 + 21912);
    v10 = *(v3 + 21904);
    v11 = *(v3 + 21896);
    v19 = *(v3 + 21296);
    outlined destroy of NSObject?(v3 + 17624, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v19, 0);
  }

  else
  {
    v12 = *(v3 + 22000);
    *(v3 + 14432) = *(v3 + 14848);
    *(v3 + 14448) = *(v3 + 14864);
    *(v3 + 14464) = *(v3 + 14880);
    *(v3 + 14528) = *(v3 + 14944);
    *(v3 + 14512) = *(v3 + 14928);
    *(v3 + 14496) = *(v3 + 14912);
    *(v3 + 14480) = *(v3 + 14896);
    v18 = (*v12 + 384);
    v20 = (*v18 + **v18);
    v13 = (*v18)[1];
    v14 = swift_task_alloc();
    *(v3 + 22024) = v14;
    *v14 = v3;
    v14[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v15 = *(v3 + 22000);
    v16 = *(v3 + 15570);

    return v20(v3 + 15472, v3 + 14432, 1, v16);
  }
}

{
  v3 = *v1 + 14432;
  v4 = *(*v1 + 22024);
  v5 = *v1;
  v2 = v5;
  *(v5 + 22032) = v0;

  if (v0)
  {
    v6 = *(v5 + 21952);
    v7 = *(v5 + 21944);
    v8 = *(v5 + 21936);
    v9 = *(v5 + 21928);
    v10 = *(v5 + 21920);
    v11 = *(v5 + 21904);
    v12 = *(v2 + 21896);
    v27 = *(v2 + 21912);
    v28 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 17624, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

    v13 = *v3;
    v14 = *(v3 + 32);
    *(v2 + 14344) = *(v3 + 16);
    *(v2 + 14360) = v14;
    *(v2 + 14328) = v13;
    v15 = *(v3 + 48);
    v16 = *(v3 + 64);
    v17 = *(v3 + 80);
    *(v2 + 14424) = *(v3 + 96);
    *(v2 + 14392) = v16;
    *(v2 + 14408) = v17;
    *(v2 + 14376) = v15;
    outlined destroy of MLS.Group(v2 + 14328);
    v18 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v19 = v28;
  }

  else
  {
    v20 = *(v5 + 21296);
    v22 = *(v3 + 16);
    v21 = *(v3 + 32);
    *(v5 + 13600) = *v3;
    *(v5 + 13616) = v22;
    *(v5 + 13632) = v21;
    v24 = *(v3 + 64);
    v23 = *(v3 + 80);
    v25 = *(v3 + 96);
    *(v5 + 13648) = *(v3 + 48);
    *(v5 + 13696) = v25;
    *(v5 + 13680) = v23;
    *(v5 + 13664) = v24;
    outlined destroy of MLS.Group(v5 + 13600);
    v18 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v19 = v20;
  }

  return MEMORY[0x2822009F8](v18, v19, 0);
}

{
  v123 = v0;
  outlined destroy of NSObject?(v0 + 17624, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 17624, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = *(v0 + 22032);
  v2 = *(v0 + 20768);
  v3 = *(v2 + 144);
  *(v0 + 22152) = v3;
  v4 = *(v2 + 152);
  *(v0 + 22160) = v4;
  v5 = *(v0 + 21624);
  v6 = *(v0 + 20760);
  if (v4 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5056, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 21952);
    v116 = *(v0 + 21928);
    v119 = *(v0 + 21936);
    v11 = *(v0 + 21920);
    v12 = *(v0 + 21912);
    v13 = *(v0 + 21904);
    v14 = *(v0 + 21896);
    if (v9)
    {
      v107 = *(v0 + 21944);
      v15 = *(v0 + 21312);
      v16 = *(v0 + 21304);
      v110 = *(v0 + 20768);
      v113 = v7;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v122[0] = v18;
      *v17 = 136315138;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v122);

      *(v17 + 4) = v19;

      outlined destroy of NSObject?(v110, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v110, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v113, v8, "SwiftMLSClientCoordinator processIncoming commit returning processedContext to caller { identifier: %s }", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    else
    {
      v32 = *(v0 + 20768);
      v33 = *(v0 + 21896);

      outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v34 = *(v0 + 20792);
    v35 = *(v0 + 20776);
    v36 = *(v0 + 20760);
    *(v0 + 20656) = *(*(v0 + 20768) + 16);
    outlined init with copy of ServerBag.MLS(v35, v0 + 18864);
    v38 = *(v36 + 80);
    v37 = *(v36 + 88);
    v39 = *(v36 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v40 = *(v36 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20192) = v39;
    *(v0 + 20200) = v40;

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20656, v0 + 20176, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_unknownObjectRetain();

    v41 = swift_task_alloc();
    *(v0 + 22184) = v41;
    *v41 = v0;
    v41[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v42 = *(v0 + 20792);
    v43 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 12456, v43, v42, v0 + 18864, v38, v37, (v0 + 20192));
  }

  else
  {
    v120 = v1;
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4552, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4384, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 21312);
      v23 = *(v0 + 21304);
      v24 = *(v0 + 20768);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v122[0] = v26;
      *v25 = 136315394;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v122);

      *(v25 + 4) = v27;
      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v25 + 12) = 2080;
      outlined copy of Data._Representation(v3, v4);
      v28 = Data.description.getter();
      v30 = v29;
      outlined consume of Data?(v3, v4);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v122);

      *(v25 + 14) = v31;
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
      _os_log_impl(&dword_264F1F000, v20, v21, "SwiftMLSClientCoordinator processIncoming updating encryptedGroupNameKey { identifier: %s, encryptedGroupNameKey: %s }", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v26, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
    }

    else
    {
      v45 = *(v0 + 20768);

      outlined destroy of NSObject?(v45, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v45, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
    }

    v46 = *(v0 + 21104);
    outlined copy of Data._Representation(v3, v4);
    MLS.Group.Message.init(fromRaw:)();
    if (v120)
    {
      v47 = *(v0 + 21952);
      v48 = *(v0 + 21944);
      v49 = *(v0 + 21936);
      v99 = *(v0 + 21928);
      v50 = *(v0 + 21912);
      v51 = *(v0 + 21904);
      v52 = *(v0 + 21896);
      v117 = *(v0 + 21288);
      v53 = *(v0 + 21264);
      v111 = *(v0 + 21760);
      v114 = *(v0 + 21256);
      v101 = *(v0 + 21920);
      v103 = *(v0 + 21128);
      v105 = *(v0 + 21120);
      v108 = *(v0 + 21192);
      v54 = *(v0 + 21008);

      outlined consume of Data?(v3, v4);

      outlined destroy of NSObject?(v54, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      v111(v108, v105);
      (*(v53 + 8))(v117, v114);
      v55 = *(v0 + 21288);
      v56 = *(v0 + 21280);
      v57 = *(v0 + 21272);
      v58 = *(v0 + 21248);
      v59 = *(v0 + 21240);
      v60 = *(v0 + 21232);
      v61 = *(v0 + 21224);
      v62 = *(v0 + 21200);
      v63 = *(v0 + 21192);
      v64 = *(v0 + 21184);
      v78 = *(v0 + 21176);
      v79 = *(v0 + 21168);
      v80 = *(v0 + 21160);
      v81 = *(v0 + 21152);
      v82 = *(v0 + 21144);
      v83 = *(v0 + 21136);
      v84 = *(v0 + 21112);
      v85 = *(v0 + 21104);
      v86 = *(v0 + 21096);
      v87 = *(v0 + 21072);
      v88 = *(v0 + 21064);
      v89 = *(v0 + 21056);
      v90 = *(v0 + 21048);
      v91 = *(v0 + 21040);
      v92 = *(v0 + 21032);
      v93 = *(v0 + 21008);
      v94 = *(v0 + 21000);
      v95 = *(v0 + 20992);
      v96 = *(v0 + 20984);
      v97 = *(v0 + 20976);
      v98 = *(v0 + 20968);
      v100 = *(v0 + 20944);
      v102 = *(v0 + 20920);
      v104 = *(v0 + 20912);
      v106 = *(v0 + 20904);
      v109 = *(v0 + 20896);
      v112 = *(v0 + 20864);
      v115 = *(v0 + 20840);
      v118 = *(v0 + 20816);

      v65 = *(v0 + 8);

      return v65();
    }

    else
    {
      v66 = *(v0 + 21104);
      v67 = *(v0 + 21096);
      v68 = *(v0 + 21088);
      v69 = *(v0 + 21080);
      v70 = *(v0 + 20944);
      v71 = *(v0 + 20776);
      v72 = v71[3];
      v73 = v71[4];
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(v68 + 16))(v67, v66, v69);
      MLS.Group.Group.DecryptNameKeysInput.init(privateMessage:)();
      v74 = *(v73 + 240);
      v121 = (v74 + *v74);
      v75 = v74[1];
      v76 = swift_task_alloc();
      *(v0 + 22168) = v76;
      *v76 = v0;
      v76[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v77 = *(v0 + 20944);

      return v121(v0 + 19104, v77, v72, v73);
    }
  }
}

{
  v2 = *(*v1 + 22048);
  v3 = *v1;
  *(v3 + 22056) = v0;

  if (v0)
  {
    v4 = *(v3 + 21952);
    v5 = *(v3 + 21944);
    v6 = *(v3 + 21936);
    v7 = *(v3 + 21928);
    v8 = *(v3 + 21920);
    v9 = *(v3 + 21912);
    v10 = *(v3 + 21904);
    v11 = *(v3 + 21896);
    v22 = *(v3 + 21296);
    outlined destroy of NSObject?(v3 + 17416, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v22, 0);
  }

  else
  {
    v12 = *(v3 + 15384);
    *(v3 + 15056) = *(v3 + 15368);
    *(v3 + 15072) = v12;
    v13 = *(v3 + 15416);
    *(v3 + 15088) = *(v3 + 15400);
    v14 = *(v3 + 15432);
    *(v3 + 15136) = *(v3 + 15448);
    *(v3 + 15120) = v14;
    v15 = *(v3 + 22040);
    *(v3 + 15152) = *(v3 + 15464);
    *(v3 + 15104) = v13;
    v21 = (*v15 + 384);
    v23 = (*v21 + **v21);
    v16 = (*v21)[1];
    v17 = swift_task_alloc();
    *(v3 + 22064) = v17;
    *v17 = v3;
    v17[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v18 = *(v3 + 22040);
    v19 = *(v3 + 15570);

    return v23(v3 + 16304, v3 + 15056, 1, v19);
  }
}

{
  v2 = *v1 + 15056;
  v3 = *(*v1 + 22064);
  v4 = *v1;
  *(v4 + 22072) = v0;

  if (v0)
  {
    v5 = *(v4 + 21952);
    v6 = *(v4 + 21944);
    v7 = *(v4 + 21936);
    v8 = *(v4 + 21928);
    v9 = *(v4 + 21920);
    v10 = *(v4 + 21904);
    v11 = *(v4 + 21896);
    v28 = *(v4 + 21912);
    v29 = *(v4 + 21296);
    outlined destroy of NSObject?(v4 + 17416, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);

    v12 = *v2;
    v13 = *(v2 + 16);
    *(v4 + 14672) = *(v2 + 32);
    *(v4 + 14656) = v13;
    *(v4 + 14640) = v12;
    v14 = *(v2 + 48);
    v15 = *(v2 + 64);
    v16 = *(v2 + 80);
    *(v4 + 14736) = *(v2 + 96);
    *(v4 + 14720) = v16;
    *(v4 + 14704) = v15;
    *(v4 + 14688) = v14;
    outlined destroy of MLS.Group(v4 + 14640);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v29, 0);
  }

  else
  {
    v17 = *v2;
    v18 = *(v2 + 16);
    *(v4 + 13216) = *(v2 + 32);
    *(v4 + 13200) = v18;
    *(v4 + 13184) = v17;
    v19 = *(v2 + 48);
    v20 = *(v2 + 64);
    v21 = *(v2 + 80);
    *(v4 + 13280) = *(v2 + 96);
    *(v4 + 13264) = v21;
    *(v4 + 13248) = v20;
    *(v4 + 13232) = v19;
    outlined destroy of MLS.Group(v4 + 13184);
    v22 = swift_task_alloc();
    *(v4 + 22080) = v22;
    *v22 = v4;
    v22[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v23 = *(v4 + 21944);
    v24 = *(v4 + 20792);
    v25 = *(v4 + 20760);
    v26 = *(v4 + 20784);

    return MLS.SwiftMLSClientCoordinator.addMembers(identifier:otherMembers:)(v26, v24, v23);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 22080);
  v16 = *v1;
  *(*v1 + 22088) = v0;

  if (v0)
  {
    v4 = v2[2744];
    v5 = v2[2743];
    v6 = v2[2742];
    v7 = v2[2741];
    v8 = v2[2740];
    v9 = v2[2739];
    v10 = v2[2738];
    v11 = v2[2737];
    v15 = v2[2662];
    outlined destroy of NSObject?((v2 + 2177), &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);

    v12 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v13 = v15;
  }

  else
  {
    v13 = v2[2662];
    v12 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

{
  v167 = v0;
  v1 = *(v0 + 21952);
  outlined destroy of NSObject?(v0 + 17416, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 17416, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 21952);
    v3 = *(v0 + 21624);
    v4 = *(v0 + 21312);
    v5 = *(v0 + 21304);
    v6 = *(v0 + 20768);
    v7 = *(v0 + 20760);
    v8 = *(v0 + 20752);
    v9 = *(v8 + 32);
    *(v0 + 19377) = *(v8 + 41);
    *(v0 + 19368) = v9;
    *(v0 + 20432) = *(v6 + 16);
    v10 = *(v8 + 32);
    *(v0 + 17513) = *(v8 + 41);
    *(v0 + 17504) = v10;
    *&v166[7] = *(v6 + 16);
    *(v0 + 17488) = v5;
    *(v0 + 17496) = v4;
    *(v0 + 17529) = *v166;
    *(v0 + 17544) = *&v166[15];
    *(v0 + 17552) = v2;
    v11 = *(v0 + 17504);
    v12 = *(v0 + 17536);
    *(v0 + 16632) = *(v0 + 17520);
    *(v0 + 16648) = v12;
    *(v0 + 16664) = v2;
    *(v0 + 16600) = *(v0 + 17488);
    *(v0 + 16616) = v11;

    outlined init with copy of MLS.OutgoingEventState?(v6, v0 + 5896, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v6, v0 + 5728, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.AllMember(v0 + 19368, v0 + 19144);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20432, v0 + 20224, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 17488, v0 + 17272, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 21952);
    if (v15)
    {
      v17 = *(v0 + 21312);
      v18 = *(v0 + 21304);
      v19 = *(v0 + 20768);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v166 = v21;
      *v20 = 136315394;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v166);

      *(v20 + 4) = v22;
      outlined destroy of NSObject?(v19, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v19, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v20 + 12) = 2080;
      lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();

      v23 = Set.description.getter();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v166);

      *(v20 + 14) = v26;

      _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator processIncoming sending incoming member removed event { identifier: %s, removedMembers: %s }", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v21, -1, -1);
      MEMORY[0x266755550](v20, -1, -1);
    }

    else
    {
      v46 = *(v0 + 20768);

      outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v47 = *(v0 + 20760);
    v48 = v47[12];
    v49 = *(v0 + 16648);
    *(v0 + 16128) = *(v0 + 16632);
    *(v0 + 16144) = v49;
    v50 = *(v0 + 16680);
    *(v0 + 16160) = *(v0 + 16664);
    *(v0 + 16176) = v50;
    v51 = *(v0 + 16616);
    *(v0 + 16096) = *(v0 + 16600);
    v52 = *(v0 + 20792);
    v53 = *(v0 + 20776);
    *(v0 + 22096) = v48;
    *(v0 + 16112) = v51;
    *(v0 + 16192) = 3;
    outlined init with copy of ServerBag.MLS(v53, v0 + 18704);
    v54 = v47[10];
    v55 = v47[11];
    v56 = *(v47 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v57 = *(v47 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20208) = v56;
    *(v0 + 20216) = v57;

    swift_unknownObjectRetain();

    v58 = swift_task_alloc();
    *(v0 + 22104) = v58;
    *v58 = v0;
    v58[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v59 = *(v0 + 20792);
    v60 = *(v0 + 20784);
    v61 = v0 + 11208;
    v62 = v0 + 18704;
    v63 = (v0 + 20208);
    v64 = v54;
    v65 = v55;
LABEL_13:

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v61, v60, v59, v62, v64, v65, v63);
  }

  v27 = *(v0 + 22088);
  v28 = *(v0 + 20768);
  v29 = *(v28 + 144);
  *(v0 + 22152) = v29;
  v30 = *(v28 + 152);
  *(v0 + 22160) = v30;
  v31 = *(v0 + 21624);
  v32 = *(v0 + 20760);
  if (v30 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?(v28, v0 + 5224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v28, v0 + 5056, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 21952);
    v160 = *(v0 + 21928);
    v163 = *(v0 + 21936);
    v37 = *(v0 + 21920);
    v38 = *(v0 + 21912);
    v39 = *(v0 + 21904);
    v40 = *(v0 + 21896);
    if (v35)
    {
      v151 = *(v0 + 21944);
      v41 = *(v0 + 21312);
      v42 = *(v0 + 21304);
      v154 = *(v0 + 20768);
      v157 = v33;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v166 = v44;
      *v43 = 136315138;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v166);

      *(v43 + 4) = v45;

      outlined destroy of NSObject?(v154, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v154, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v157, v34, "SwiftMLSClientCoordinator processIncoming commit returning processedContext to caller { identifier: %s }", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266755550](v44, -1, -1);
      MEMORY[0x266755550](v43, -1, -1);
    }

    else
    {
      v78 = *(v0 + 20768);
      v79 = *(v0 + 21896);

      outlined destroy of NSObject?(v78, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v78, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v80 = *(v0 + 20792);
    v81 = *(v0 + 20776);
    v82 = *(v0 + 20760);
    *(v0 + 20656) = *(*(v0 + 20768) + 16);
    outlined init with copy of ServerBag.MLS(v81, v0 + 18864);
    v84 = *(v82 + 80);
    v83 = *(v82 + 88);
    v85 = *(v82 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v86 = *(v82 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20192) = v85;
    *(v0 + 20200) = v86;

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20656, v0 + 20176, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_unknownObjectRetain();

    v87 = swift_task_alloc();
    *(v0 + 22184) = v87;
    *v87 = v0;
    v87[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v59 = *(v0 + 20792);
    v60 = *(v0 + 20784);
    v61 = v0 + 12456;
    v62 = v0 + 18864;
    v63 = (v0 + 20192);
    v64 = v84;
    v65 = v83;
    goto LABEL_13;
  }

  v164 = v27;
  outlined copy of Data?(v29, v30);
  outlined init with copy of MLS.OutgoingEventState?(v28, v0 + 4552, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined copy of Data?(v29, v30);
  outlined init with copy of MLS.OutgoingEventState?(v28, v0 + 4384, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined copy of Data?(v29, v30);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = *(v0 + 21312);
    v69 = *(v0 + 21304);
    v70 = *(v0 + 20768);
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v166 = v72;
    *v71 = 136315394;

    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v68, v166);

    *(v71 + 4) = v73;
    outlined destroy of NSObject?(v70, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v70, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v71 + 12) = 2080;
    outlined copy of Data._Representation(v29, v30);
    v74 = Data.description.getter();
    v76 = v75;
    outlined consume of Data?(v29, v30);
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v166);

    *(v71 + 14) = v77;
    outlined consume of Data?(v29, v30);
    outlined consume of Data?(v29, v30);
    _os_log_impl(&dword_264F1F000, v66, v67, "SwiftMLSClientCoordinator processIncoming updating encryptedGroupNameKey { identifier: %s, encryptedGroupNameKey: %s }", v71, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v72, -1, -1);
    MEMORY[0x266755550](v71, -1, -1);
  }

  else
  {
    v89 = *(v0 + 20768);

    outlined destroy of NSObject?(v89, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v89, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined consume of Data?(v29, v30);
    outlined consume of Data?(v29, v30);
  }

  v90 = *(v0 + 21104);
  outlined copy of Data._Representation(v29, v30);
  MLS.Group.Message.init(fromRaw:)();
  if (v164)
  {
    v91 = *(v0 + 21952);
    v92 = *(v0 + 21944);
    v93 = *(v0 + 21936);
    v143 = *(v0 + 21928);
    v145 = *(v0 + 21920);
    v94 = *(v0 + 21912);
    v95 = *(v0 + 21904);
    v96 = *(v0 + 21896);
    v161 = *(v0 + 21288);
    v97 = *(v0 + 21264);
    v155 = *(v0 + 21760);
    v158 = *(v0 + 21256);
    v147 = *(v0 + 21128);
    v149 = *(v0 + 21120);
    v152 = *(v0 + 21192);
    v98 = *(v0 + 21008);

    outlined consume of Data?(v29, v30);

    outlined destroy of NSObject?(v98, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v155(v152, v149);
    (*(v97 + 8))(v161, v158);
    v99 = *(v0 + 21288);
    v100 = *(v0 + 21280);
    v101 = *(v0 + 21272);
    v102 = *(v0 + 21248);
    v103 = *(v0 + 21240);
    v104 = *(v0 + 21232);
    v105 = *(v0 + 21224);
    v106 = *(v0 + 21200);
    v107 = *(v0 + 21192);
    v108 = *(v0 + 21184);
    v122 = *(v0 + 21176);
    v123 = *(v0 + 21168);
    v124 = *(v0 + 21160);
    v125 = *(v0 + 21152);
    v126 = *(v0 + 21144);
    v127 = *(v0 + 21136);
    v128 = *(v0 + 21112);
    v129 = *(v0 + 21104);
    v130 = *(v0 + 21096);
    v131 = *(v0 + 21072);
    v132 = *(v0 + 21064);
    v133 = *(v0 + 21056);
    v134 = *(v0 + 21048);
    v135 = *(v0 + 21040);
    v136 = *(v0 + 21032);
    v137 = *(v0 + 21008);
    v138 = *(v0 + 21000);
    v139 = *(v0 + 20992);
    v140 = *(v0 + 20984);
    v141 = *(v0 + 20976);
    v142 = *(v0 + 20968);
    v144 = *(v0 + 20944);
    v146 = *(v0 + 20920);
    v148 = *(v0 + 20912);
    v150 = *(v0 + 20904);
    v153 = *(v0 + 20896);
    v156 = *(v0 + 20864);
    v159 = *(v0 + 20840);
    v162 = *(v0 + 20816);

    v109 = *(v0 + 8);

    return v109();
  }

  else
  {
    v110 = *(v0 + 21104);
    v111 = *(v0 + 21096);
    v112 = *(v0 + 21088);
    v113 = *(v0 + 21080);
    v114 = *(v0 + 20944);
    v115 = *(v0 + 20776);
    v116 = v115[3];
    v117 = v115[4];
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v112 + 16))(v111, v110, v113);
    MLS.Group.Group.DecryptNameKeysInput.init(privateMessage:)();
    v118 = *(v117 + 240);
    v165 = (v118 + *v118);
    v119 = v118[1];
    v120 = swift_task_alloc();
    *(v0 + 22168) = v120;
    *v120 = v0;
    v120[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v121 = *(v0 + 20944);

    return v165(v0 + 19104, v121, v116, v117);
  }
}

{
  v2 = *(*v1 + 22104);
  v3 = *v1;
  *(v3 + 22112) = v0;

  if (v0)
  {
    v4 = *(v3 + 21952);
    v5 = *(v3 + 21944);
    v6 = *(v3 + 21936);
    v7 = *(v3 + 21928);
    v8 = *(v3 + 21920);
    v9 = *(v3 + 21912);
    v10 = *(v3 + 21904);
    v11 = *(v3 + 21896);
    v22 = *(v3 + 21296);
    outlined destroy of NSObject?(v3 + 17488, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v22, 0);
  }

  else
  {
    v12 = *(v3 + 22096);
    *(v3 + 11512) = *(v3 + 11304);
    v13 = *(v3 + 11224);
    *(v3 + 11416) = *(v3 + 11208);
    *(v3 + 11432) = v13;
    v14 = *(v3 + 11288);
    *(v3 + 11480) = *(v3 + 11272);
    *(v3 + 11496) = v14;
    v15 = *(v3 + 11256);
    *(v3 + 11448) = *(v3 + 11240);
    *(v3 + 11464) = v15;
    v21 = (*v12 + 384);
    v23 = (*v21 + **v21);
    v16 = (*v21)[1];
    v17 = swift_task_alloc();
    *(v3 + 22120) = v17;
    *v17 = v3;
    v17[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v18 = *(v3 + 22096);
    v19 = *(v3 + 15570);

    return v23(v3 + 16096, v3 + 11416, 1, v19);
  }
}

{
  v3 = *v1 + 11416;
  v4 = *(*v1 + 22120);
  v5 = *v1;
  v2 = v5;
  *(v5 + 22128) = v0;

  if (v0)
  {
    v6 = *(v5 + 21952);
    v7 = *(v5 + 21944);
    v8 = *(v5 + 21936);
    v9 = *(v5 + 21928);
    v10 = *(v5 + 21920);
    v11 = *(v5 + 21904);
    v12 = *(v2 + 21896);
    v29 = *(v2 + 21912);
    v30 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 17488, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);

    v13 = *v3;
    v14 = *(v3 + 32);
    *(v2 + 12056) = *(v3 + 16);
    *(v2 + 12072) = v14;
    *(v2 + 12040) = v13;
    v15 = *(v3 + 48);
    v16 = *(v3 + 64);
    v17 = *(v3 + 80);
    *(v2 + 12136) = *(v3 + 96);
    *(v2 + 12104) = v16;
    *(v2 + 12120) = v17;
    *(v2 + 12088) = v15;
    outlined destroy of MLS.Group(v2 + 12040);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v30, 0);
  }

  else
  {
    v18 = *(v3 + 48);
    v19 = *(v3 + 64);
    v20 = *(v3 + 80);
    *(v5 + 12344) = *(v3 + 96);
    v21 = *(v3 + 16);
    v22 = *(v3 + 32);
    *(v5 + 12248) = *v3;
    *(v5 + 12264) = v21;
    *(v5 + 12312) = v19;
    *(v5 + 12328) = v20;
    *(v5 + 12280) = v22;
    *(v5 + 12296) = v18;
    outlined destroy of MLS.Group(v5 + 12248);
    v23 = swift_task_alloc();
    *(v5 + 22136) = v23;
    *v23 = v5;
    v23[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v24 = *(v5 + 21952);
    v25 = *(v5 + 20792);
    v26 = *(v5 + 20760);
    v27 = *(v5 + 20784);

    return MLS.SwiftMLSClientCoordinator.removeMembers(identifier:otherMembers:)(v27, v25, v24);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 22136);
  v16 = *v1;
  *(*v1 + 22144) = v0;

  if (v0)
  {
    v4 = v2[2744];
    v5 = v2[2743];
    v6 = v2[2742];
    v7 = v2[2741];
    v8 = v2[2740];
    v9 = v2[2739];
    v10 = v2[2738];
    v11 = v2[2737];
    v15 = v2[2662];
    outlined destroy of NSObject?((v2 + 2186), &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);

    v12 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v13 = v15;
  }

  else
  {
    v13 = v2[2662];
    v12 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

{
  v123 = v0;
  outlined destroy of NSObject?(v0 + 17488, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 17488, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
  v1 = *(v0 + 22144);
  v2 = *(v0 + 20768);
  v3 = *(v2 + 144);
  *(v0 + 22152) = v3;
  v4 = *(v2 + 152);
  *(v0 + 22160) = v4;
  v5 = *(v0 + 21624);
  v6 = *(v0 + 20760);
  if (v4 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5056, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 21952);
    v116 = *(v0 + 21928);
    v119 = *(v0 + 21936);
    v11 = *(v0 + 21920);
    v12 = *(v0 + 21912);
    v13 = *(v0 + 21904);
    v14 = *(v0 + 21896);
    if (v9)
    {
      v107 = *(v0 + 21944);
      v15 = *(v0 + 21312);
      v16 = *(v0 + 21304);
      v110 = *(v0 + 20768);
      v113 = v7;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v122[0] = v18;
      *v17 = 136315138;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v122);

      *(v17 + 4) = v19;

      outlined destroy of NSObject?(v110, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v110, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v113, v8, "SwiftMLSClientCoordinator processIncoming commit returning processedContext to caller { identifier: %s }", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    else
    {
      v32 = *(v0 + 20768);
      v33 = *(v0 + 21896);

      outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v34 = *(v0 + 20792);
    v35 = *(v0 + 20776);
    v36 = *(v0 + 20760);
    *(v0 + 20656) = *(*(v0 + 20768) + 16);
    outlined init with copy of ServerBag.MLS(v35, v0 + 18864);
    v38 = *(v36 + 80);
    v37 = *(v36 + 88);
    v39 = *(v36 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v40 = *(v36 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20192) = v39;
    *(v0 + 20200) = v40;

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20656, v0 + 20176, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_unknownObjectRetain();

    v41 = swift_task_alloc();
    *(v0 + 22184) = v41;
    *v41 = v0;
    v41[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v42 = *(v0 + 20792);
    v43 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 12456, v43, v42, v0 + 18864, v38, v37, (v0 + 20192));
  }

  else
  {
    v120 = v1;
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4552, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4384, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 21312);
      v23 = *(v0 + 21304);
      v24 = *(v0 + 20768);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v122[0] = v26;
      *v25 = 136315394;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v122);

      *(v25 + 4) = v27;
      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v25 + 12) = 2080;
      outlined copy of Data._Representation(v3, v4);
      v28 = Data.description.getter();
      v30 = v29;
      outlined consume of Data?(v3, v4);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v122);

      *(v25 + 14) = v31;
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
      _os_log_impl(&dword_264F1F000, v20, v21, "SwiftMLSClientCoordinator processIncoming updating encryptedGroupNameKey { identifier: %s, encryptedGroupNameKey: %s }", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v26, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
    }

    else
    {
      v45 = *(v0 + 20768);

      outlined destroy of NSObject?(v45, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v45, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
    }

    v46 = *(v0 + 21104);
    outlined copy of Data._Representation(v3, v4);
    MLS.Group.Message.init(fromRaw:)();
    if (v120)
    {
      v47 = *(v0 + 21952);
      v48 = *(v0 + 21944);
      v49 = *(v0 + 21936);
      v99 = *(v0 + 21928);
      v50 = *(v0 + 21912);
      v51 = *(v0 + 21904);
      v52 = *(v0 + 21896);
      v117 = *(v0 + 21288);
      v53 = *(v0 + 21264);
      v111 = *(v0 + 21760);
      v114 = *(v0 + 21256);
      v101 = *(v0 + 21920);
      v103 = *(v0 + 21128);
      v105 = *(v0 + 21120);
      v108 = *(v0 + 21192);
      v54 = *(v0 + 21008);

      outlined consume of Data?(v3, v4);

      outlined destroy of NSObject?(v54, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      v111(v108, v105);
      (*(v53 + 8))(v117, v114);
      v55 = *(v0 + 21288);
      v56 = *(v0 + 21280);
      v57 = *(v0 + 21272);
      v58 = *(v0 + 21248);
      v59 = *(v0 + 21240);
      v60 = *(v0 + 21232);
      v61 = *(v0 + 21224);
      v62 = *(v0 + 21200);
      v63 = *(v0 + 21192);
      v64 = *(v0 + 21184);
      v78 = *(v0 + 21176);
      v79 = *(v0 + 21168);
      v80 = *(v0 + 21160);
      v81 = *(v0 + 21152);
      v82 = *(v0 + 21144);
      v83 = *(v0 + 21136);
      v84 = *(v0 + 21112);
      v85 = *(v0 + 21104);
      v86 = *(v0 + 21096);
      v87 = *(v0 + 21072);
      v88 = *(v0 + 21064);
      v89 = *(v0 + 21056);
      v90 = *(v0 + 21048);
      v91 = *(v0 + 21040);
      v92 = *(v0 + 21032);
      v93 = *(v0 + 21008);
      v94 = *(v0 + 21000);
      v95 = *(v0 + 20992);
      v96 = *(v0 + 20984);
      v97 = *(v0 + 20976);
      v98 = *(v0 + 20968);
      v100 = *(v0 + 20944);
      v102 = *(v0 + 20920);
      v104 = *(v0 + 20912);
      v106 = *(v0 + 20904);
      v109 = *(v0 + 20896);
      v112 = *(v0 + 20864);
      v115 = *(v0 + 20840);
      v118 = *(v0 + 20816);

      v65 = *(v0 + 8);

      return v65();
    }

    else
    {
      v66 = *(v0 + 21104);
      v67 = *(v0 + 21096);
      v68 = *(v0 + 21088);
      v69 = *(v0 + 21080);
      v70 = *(v0 + 20944);
      v71 = *(v0 + 20776);
      v72 = v71[3];
      v73 = v71[4];
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(v68 + 16))(v67, v66, v69);
      MLS.Group.Group.DecryptNameKeysInput.init(privateMessage:)();
      v74 = *(v73 + 240);
      v121 = (v74 + *v74);
      v75 = v74[1];
      v76 = swift_task_alloc();
      *(v0 + 22168) = v76;
      *v76 = v0;
      v76[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v77 = *(v0 + 20944);

      return v121(v0 + 19104, v77, v72, v73);
    }
  }
}

{
  v2 = *v1;
  v3 = (*v1)[2771];
  v17 = *v1;
  (*v1)[2772] = v0;

  if (v0)
  {
    v4 = v2[2744];
    v5 = v2[2743];
    v6 = v2[2742];
    v7 = v2[2741];
    v8 = v2[2740];
    v9 = v2[2739];
    v10 = v2[2738];
    v11 = v2[2737];
    v16 = v2[2662];
    (*(v2[2617] + 8))(v2[2618], v2[2616]);

    v12 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v13 = v16;
  }

  else
  {
    v14 = v2[2662];
    (*(v2[2617] + 8))(v2[2618], v2[2616]);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2388);
    v12 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v13 = v14;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

{
  v66 = v0;
  v1 = *(v0 + 22160);
  v2 = *(v0 + 22152);
  v3 = *(v0 + 21624);
  v4 = *(v0 + 20768);
  v5 = *(v0 + 20760);
  outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 4216, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined copy of Data?(v2, v1);
  outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 4048, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined copy of Data?(v2, v1);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 22160);
  v10 = *(v0 + 22152);
  v63 = *(v0 + 21752);
  if (v8)
  {
    v11 = *(v0 + 21312);
    v12 = *(v0 + 21304);
    v58 = *(v0 + 21088);
    log = *(v0 + 21080);
    v62 = *(v0 + 21104);
    v13 = *(v0 + 20768);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v65 = v15;
    *v14 = 136315394;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v65);

    *(v14 + 4) = v16;
    outlined destroy of NSObject?(v13, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v13, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v14 + 12) = 2080;
    outlined copy of Data._Representation(v10, v9);
    v17 = Data.description.getter();
    v19 = v18;
    outlined consume of Data?(v10, v9);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v65);

    *(v14 + 14) = v20;
    outlined consume of Data?(v10, v9);
    outlined consume of Data?(v10, v9);
    _os_log_impl(&dword_264F1F000, v6, v7, "SwiftMLSClientCoordinator processIncoming updated encryptedGroupNameKey { identifier: %s, encryptedGroupNameKey: %s }", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);

    outlined consume of Data?(v10, v9);
    v21 = log;
    v22 = v62;
  }

  else
  {
    v23 = *(v0 + 21104);
    v24 = *(v0 + 21088);
    v25 = *(v0 + 21080);
    v26 = *(v0 + 20768);
    outlined consume of Data?(v10, v9);
    outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined consume of Data?(v10, v9);
    outlined consume of Data?(v10, v9);

    v22 = v23;
    v21 = v25;
  }

  v63(v22, v21);
  v27 = *(v0 + 21624);
  v28 = *(v0 + 20768);
  v29 = *(v0 + 20760);
  outlined init with copy of MLS.OutgoingEventState?(v28, v0 + 5224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v28, v0 + 5056, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 21952);
  v34 = *(v0 + 21928);
  v64 = *(v0 + 21936);
  v35 = *(v0 + 21920);
  v36 = *(v0 + 21912);
  v37 = *(v0 + 21904);
  v38 = *(v0 + 21896);
  if (v32)
  {
    v57 = *(v0 + 21944);
    v39 = *(v0 + 21312);
    v40 = *(v0 + 21304);
    v59 = *(v0 + 20768);
    loga = v30;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v65 = v42;
    *v41 = 136315138;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v65);

    *(v41 + 4) = v43;

    outlined destroy of NSObject?(v59, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v59, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, loga, v31, "SwiftMLSClientCoordinator processIncoming commit returning processedContext to caller { identifier: %s }", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x266755550](v42, -1, -1);
    MEMORY[0x266755550](v41, -1, -1);
  }

  else
  {
    v44 = *(v0 + 20768);
    v45 = *(v0 + 21896);

    outlined destroy of NSObject?(v44, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v44, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v46 = *(v0 + 20792);
  v47 = *(v0 + 20776);
  v48 = *(v0 + 20760);
  *(v0 + 20656) = *(*(v0 + 20768) + 16);
  outlined init with copy of ServerBag.MLS(v47, v0 + 18864);
  v50 = *(v48 + 80);
  v49 = *(v48 + 88);
  v51 = *(v48 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v52 = *(v48 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *(v0 + 20192) = v51;
  *(v0 + 20200) = v52;

  outlined init with copy of MLS.OutgoingEventState?(v0 + 20656, v0 + 20176, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  swift_unknownObjectRetain();

  v53 = swift_task_alloc();
  *(v0 + 22184) = v53;
  *v53 = v0;
  v53[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v54 = *(v0 + 20792);
  v55 = *(v0 + 20784);

  return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 12456, v55, v54, v0 + 18864, v50, v49, (v0 + 20192));
}

{
  v2 = *v1;
  v3 = *(*v1 + 22184);
  v4 = *v1;
  *(v2 + 22192) = v0;

  v5 = *(v2 + 21296);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 20656, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 21760);
  v2 = *(v0 + 21288);
  v3 = *(v0 + 21264);
  v4 = *(v0 + 21256);
  v5 = *(v0 + 21192);
  v6 = *(v0 + 21128);
  v7 = *(v0 + 21120);
  v58 = *(v0 + 20800);
  v8 = *(v0 + 20744);
  outlined destroy of NSObject?(*(v0 + 21008), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  v9 = *(v0 + 12488);
  *(v0 + 12816) = *(v0 + 12504);
  v10 = *(v0 + 12536);
  *(v0 + 12832) = *(v0 + 12520);
  *(v0 + 12848) = v10;
  *(v0 + 12864) = *(v0 + 12552);
  v11 = *(v0 + 12472);
  *(v0 + 12768) = *(v0 + 12456);
  *(v0 + 12784) = v11;
  *(v0 + 12800) = v9;
  swift_beginAccess();
  v12 = *(v58 + 16);
  *v8 = *(v0 + 20656);
  v13 = *(v0 + 12864);
  v14 = *(v0 + 12816);
  v15 = *(v0 + 12848);
  *(v8 + 80) = *(v0 + 12832);
  *(v8 + 96) = v15;
  *(v8 + 64) = v14;
  v16 = *(v0 + 12800);
  v17 = *(v0 + 12768);
  *(v8 + 32) = *(v0 + 12784);
  *(v8 + 48) = v16;
  *(v8 + 16) = v17;
  *(v8 + 112) = v13;
  *(v8 + 120) = v12;

  v18 = *(v0 + 21288);
  v19 = *(v0 + 21280);
  v20 = *(v0 + 21272);
  v21 = *(v0 + 21248);
  v22 = *(v0 + 21240);
  v23 = *(v0 + 21232);
  v24 = *(v0 + 21224);
  v25 = *(v0 + 21200);
  v26 = *(v0 + 21192);
  v27 = *(v0 + 21184);
  v30 = *(v0 + 21176);
  v31 = *(v0 + 21168);
  v32 = *(v0 + 21160);
  v33 = *(v0 + 21152);
  v34 = *(v0 + 21144);
  v35 = *(v0 + 21136);
  v36 = *(v0 + 21112);
  v37 = *(v0 + 21104);
  v38 = *(v0 + 21096);
  v39 = *(v0 + 21072);
  v40 = *(v0 + 21064);
  v41 = *(v0 + 21056);
  v42 = *(v0 + 21048);
  v43 = *(v0 + 21040);
  v44 = *(v0 + 21032);
  v45 = *(v0 + 21008);
  v46 = *(v0 + 21000);
  v47 = *(v0 + 20992);
  v48 = *(v0 + 20984);
  v49 = *(v0 + 20976);
  v50 = *(v0 + 20968);
  v51 = *(v0 + 20944);
  v52 = *(v0 + 20920);
  v53 = *(v0 + 20912);
  v54 = *(v0 + 20904);
  v55 = *(v0 + 20896);
  v56 = *(v0 + 20864);
  v57 = *(v0 + 20840);
  v59 = *(v0 + 20816);

  v28 = *(v0 + 8);

  return v28();
}

{
  v2 = *v1;
  v3 = *(*v1 + 22200);
  v4 = *v1;
  *(*v1 + 22208) = v0;

  v5 = *(v2 + 21296);
  if (v0)
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v72 = v0;
  v1 = *(v0 + 21624);
  v2 = *(v0 + 20920);
  v3 = *(v0 + 20912);
  v4 = *(v0 + 20880);
  v5 = *(v0 + 20872);
  v6 = *(v0 + 20800);
  v7 = *(v0 + 20768);
  v8 = *(v0 + 20760);
  v70 = 9;
  swift_beginAccess();
  MetricCollector.end(metric:)(&v70);
  swift_endAccess();
  v9 = *(v4 + 16);
  v9(v3, v2, v5);
  outlined init with copy of MLS.OutgoingEventState?(v7, v0 + 7744, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v7, v0 + 7576, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 21312);
    v66 = v9;
    v13 = *(v0 + 21304);
    v62 = *(v0 + 20912);
    v14 = *(v0 + 20904);
    v15 = *(v0 + 20880);
    v16 = *(v0 + 20872);
    v17 = *(v0 + 20768);
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v71 = v64;
    *v18 = 136315394;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v71);

    *(v18 + 4) = v19;
    outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v9 = v66;
    outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v18 + 12) = 2080;
    v66(v14, v62, v16);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v71);

    *(v18 + 14) = v22;
    (*(v15 + 8))(v62, v16);
    _os_log_impl(&dword_264F1F000, v10, v11, "SwiftMLSClientCoordinator processIncoming enqueueing committed proposal { identifier: %s, commitOutput: %s }", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v64, -1, -1);
    MEMORY[0x266755550](v18, -1, -1);
  }

  else
  {
    v23 = *(v0 + 20912);
    v24 = *(v0 + 20880);
    v25 = *(v0 + 20872);
    v26 = *(v0 + 20768);

    outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    (*(v24 + 8))(v23, v25);
  }

  v67 = *(v0 + 21312);
  v69 = *(v0 + 21304);
  v27 = *(v0 + 20920);
  v28 = *(v0 + 20888);
  v29 = *(v0 + 20880);
  v30 = *(v0 + 20872);
  v58 = v30;
  v59 = *(v0 + 20896);
  v31 = *(v0 + 20808);
  v60 = *(v0 + 20800);
  v61 = *(v0 + 20784);
  v32 = *(v0 + 20776);
  v33 = *(v0 + 20768);
  v57 = *(v0 + 20760);
  v63 = *(v0 + 20792);
  v65 = *(v57 + 96);
  (v9)();
  outlined init with copy of ServerBag.MLS(v32, v0 + 18584);
  v34 = (*(v29 + 80) + 224) & ~*(v29 + 80);
  v35 = (v28 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v0 + 22216) = v38;
  *(v38 + 16) = *(v31 + 80);
  *(v38 + 24) = *(v31 + 88);
  *(v38 + 40) = *(v31 + 104);
  *(v38 + 48) = v57;
  v40 = *(v33 + 16);
  v39 = *(v33 + 32);
  *(v38 + 56) = *v33;
  *(v38 + 88) = v39;
  *(v38 + 72) = v40;
  v42 = *(v33 + 80);
  v41 = *(v33 + 96);
  v43 = *(v33 + 64);
  *(v38 + 104) = *(v33 + 48);
  *(v38 + 136) = v42;
  *(v38 + 120) = v43;
  *(v38 + 152) = v41;
  v44 = *(v33 + 160);
  v46 = *(v33 + 128);
  v45 = *(v33 + 144);
  *(v38 + 168) = *(v33 + 112);
  *(v38 + 200) = v45;
  *(v38 + 184) = v46;
  *(v38 + 216) = v44;
  (*(v29 + 32))(v38 + v34, v59, v58);
  v47 = (v38 + v35);
  *v47 = v69;
  v47[1] = v67;
  *(v38 + v36) = v60;
  v48 = (v38 + v37);
  *v48 = v61;
  v48[1] = v63;
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 18584), v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8));
  v49 = *(*v65 + 320);
  outlined init with copy of MLS.OutgoingEventState?(v33, v0 + 7408, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v68 = (v49 + *v49);
  v50 = v49[1];
  v51 = swift_task_alloc();
  *(v0 + 22224) = v51;
  *v51 = v0;
  v51[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v52 = *(v0 + 21312);
  v53 = *(v0 + 21304);
  v54 = *(v0 + 20792);
  v55 = *(v0 + 20784);

  return v68(v55, v54, v53, v52, 1, &async function pointer to partial apply for closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v38);
}

{
  v2 = *v1;
  v3 = *(*v1 + 22224);
  v8 = *v1;
  *(*v1 + 22232) = v0;

  v4 = *(v2 + 22216);
  if (v0)
  {
    v5 = *(v2 + 21296);

    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v5 = *(v2 + 21296);

    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 21624);
  v2 = *(v0 + 20768);
  v3 = *(v0 + 20760);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 7240, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 7072, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 21312);
    v7 = *(v0 + 21304);
    v8 = *(v0 + 20768);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v24);

    *(v9 + 4) = v11;
    outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming proposal returning processedContext to caller { identifier: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v12 = *(v0 + 20768);

    outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v13 = *(v0 + 20792);
  v14 = *(v0 + 20776);
  v15 = *(v0 + 20760);
  *(v0 + 20400) = *(*(v0 + 20768) + 16);
  outlined init with copy of ServerBag.MLS(v14, v0 + 19024);
  v17 = *(v15 + 80);
  v16 = *(v15 + 88);
  v18 = *(v15 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v19 = *(v15 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *(v0 + 20320) = v18;
  *(v0 + 20328) = v19;

  outlined init with copy of MLS.OutgoingEventState?(v0 + 20400, v0 + 20304, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  swift_unknownObjectRetain();

  v20 = swift_task_alloc();
  *(v0 + 22240) = v20;
  *v20 = v0;
  v20[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v21 = *(v0 + 20792);
  v22 = *(v0 + 20784);

  return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 13288, v22, v21, v0 + 19024, v17, v16, (v0 + 20320));
}

{
  v2 = *v1;
  v3 = *(*v1 + 22240);
  v4 = *v1;
  *(v2 + 22248) = v0;

  v5 = *(v2 + 21296);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 20400, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v57 = *(v0 + 21288);
  v1 = *(v0 + 21264);
  v2 = *(v0 + 21256);
  v3 = *(v0 + 21192);
  v4 = *(v0 + 21128);
  v5 = *(v0 + 21120);
  v6 = *(v0 + 20800);
  v7 = *(v0 + 20744);
  (*(*(v0 + 20880) + 8))(*(v0 + 20920), *(v0 + 20872));
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v57, v2);
  v8 = *(v0 + 13368);
  *(v0 + 12728) = *(v0 + 13352);
  *(v0 + 12744) = v8;
  *(v0 + 12760) = *(v0 + 13384);
  v9 = *(v0 + 13304);
  *(v0 + 12664) = *(v0 + 13288);
  *(v0 + 12680) = v9;
  v10 = *(v0 + 13336);
  *(v0 + 12696) = *(v0 + 13320);
  *(v0 + 12712) = v10;
  swift_beginAccess();
  v11 = *(v6 + 16);
  *v7 = *(v0 + 20400);
  v12 = *(v0 + 12712);
  v13 = *(v0 + 12744);
  v14 = *(v0 + 12760);
  *(v7 + 80) = *(v0 + 12728);
  *(v7 + 96) = v13;
  *(v7 + 64) = v12;
  v15 = *(v0 + 12696);
  v16 = *(v0 + 12664);
  *(v7 + 32) = *(v0 + 12680);
  *(v7 + 48) = v15;
  *(v7 + 16) = v16;
  *(v7 + 112) = v14;
  *(v7 + 120) = v11;

  v17 = *(v0 + 21288);
  v18 = *(v0 + 21280);
  v19 = *(v0 + 21272);
  v20 = *(v0 + 21248);
  v21 = *(v0 + 21240);
  v22 = *(v0 + 21232);
  v23 = *(v0 + 21224);
  v24 = *(v0 + 21200);
  v25 = *(v0 + 21192);
  v26 = *(v0 + 21184);
  v29 = *(v0 + 21176);
  v30 = *(v0 + 21168);
  v31 = *(v0 + 21160);
  v32 = *(v0 + 21152);
  v33 = *(v0 + 21144);
  v34 = *(v0 + 21136);
  v35 = *(v0 + 21112);
  v36 = *(v0 + 21104);
  v37 = *(v0 + 21096);
  v38 = *(v0 + 21072);
  v39 = *(v0 + 21064);
  v40 = *(v0 + 21056);
  v41 = *(v0 + 21048);
  v42 = *(v0 + 21040);
  v43 = *(v0 + 21032);
  v44 = *(v0 + 21008);
  v45 = *(v0 + 21000);
  v46 = *(v0 + 20992);
  v47 = *(v0 + 20984);
  v48 = *(v0 + 20976);
  v49 = *(v0 + 20968);
  v50 = *(v0 + 20944);
  v51 = *(v0 + 20920);
  v52 = *(v0 + 20912);
  v53 = *(v0 + 20904);
  v54 = *(v0 + 20896);
  v55 = *(v0 + 20864);
  v56 = *(v0 + 20840);
  v58 = *(v0 + 20816);

  v27 = *(v0 + 8);

  return v27();
}

{
  v2 = *(*v1 + 22288);
  v3 = *v1;
  *(v3 + 22296) = v0;

  if (v0)
  {
    v4 = *(v3 + 21296);
    outlined destroy of NSObject?(v3 + 20272, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v4, 0);
  }

  else
  {
    v5 = *(v3 + 13512);
    *(v3 + 13808) = *(v3 + 13496);
    *(v3 + 13824) = v5;
    v6 = *(v3 + 13544);
    *(v3 + 13840) = *(v3 + 13528);
    v7 = *(v3 + 13560);
    *(v3 + 13888) = *(v3 + 13576);
    *(v3 + 13872) = v7;
    v8 = *(v3 + 22256);
    *(v3 + 13904) = *(v3 + 13592);
    *(v3 + 13856) = v6;
    v13 = (*v8 + 384);
    v14 = (*v13 + **v13);
    v9 = (*v13)[1];
    v10 = swift_task_alloc();
    *(v3 + 22304) = v10;
    *v10 = v3;
    v10[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = *(v3 + 22256);

    return (v14)(v3 + 15680, v3 + 13808, 1, 0);
  }
}

{
  v2 = *v1;
  v3 = *v1 + 13808;
  v4 = *(*v1 + 22304);
  v20 = *v1;
  *(*v1 + 22312) = v0;

  if (v0)
  {
    v5 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 20272, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    *(v2 + 13912) = *v3;
    *(v2 + 13928) = v7;
    *(v2 + 13944) = v6;
    v9 = *(v3 + 64);
    v8 = *(v3 + 80);
    v10 = *(v3 + 48);
    *(v2 + 14008) = *(v3 + 96);
    *(v2 + 13976) = v9;
    *(v2 + 13992) = v8;
    *(v2 + 13960) = v10;
    outlined destroy of MLS.Group(v2 + 13912);
    v11 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v12 = v5;
  }

  else
  {
    v13 = *(v2 + 21296);
    v15 = *(v3 + 16);
    v14 = *(v3 + 32);
    *(v2 + 14016) = *v3;
    *(v2 + 14032) = v15;
    *(v2 + 14048) = v14;
    v17 = *(v3 + 64);
    v16 = *(v3 + 80);
    v18 = *(v3 + 96);
    *(v2 + 14064) = *(v3 + 48);
    *(v2 + 14112) = v18;
    *(v2 + 14096) = v16;
    *(v2 + 14080) = v17;
    outlined destroy of MLS.Group(v2 + 14016);
    v11 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v12 = v13;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

{
  v25 = v0;
  v1 = v0[2703];
  v2 = v0[2596];
  v3 = v0[2595];
  outlined init with copy of MLS.OutgoingEventState?(v2, (v0 + 1136), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v2, (v0 + 2), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2664];
    v7 = v0[2663];
    v8 = v0[2596];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v24);

    *(v9 + 4) = v11;
    outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming signature verified returning processedContext to caller { identifier: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v12 = v0[2596];

    outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v13 = v0[2783];
  v14 = v0[2599];
  v15 = (v0[2595] + v0[2785]);
  outlined init with copy of ServerBag.MLS(v0[2597], (v0 + 2343));
  v16 = *v15;
  v17 = v15[1];
  v0[2542] = v16;
  v0[2543] = v17;

  swift_unknownObjectRetain();

  v18 = swift_task_alloc();
  v0[2790] = v18;
  *v18 = v0;
  v18[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v19 = v0[2784];
  v20 = v0[2783];
  v21 = v0[2599];
  v22 = v0[2598];

  return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)((v0 + 1570), v22, v21, (v0 + 2343), v20, v19, v0 + 2542);
}

{
  v2 = *v1;
  v3 = *(*v1 + 22320);
  v4 = *v1;
  *(v2 + 22328) = v0;

  v5 = *(v2 + 21296);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 20272, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 21760);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 21192);
  v5 = *(v0 + 21128);
  v6 = *(v0 + 21120);
  v59 = *(v0 + 20864);
  v7 = *(v0 + 20856);
  v55 = *(v0 + 21288);
  v57 = *(v0 + 20848);
  v8 = *(v0 + 20800);
  v9 = *(v0 + 20744);
  outlined destroy of NSObject?(v0 + 17880, &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v1(v4, v6);
  (*(v2 + 8))(v55, v3);
  *(v0 + 11152) = *(v0 + 12608);
  *(v0 + 11168) = *(v0 + 12624);
  *(v0 + 11184) = *(v0 + 12640);
  *(v0 + 11200) = *(v0 + 12656);
  *(v0 + 11104) = *(v0 + 12560);
  *(v0 + 11120) = *(v0 + 12576);
  *(v0 + 11136) = *(v0 + 12592);
  swift_beginAccess();
  v10 = *(v8 + 16);
  *v9 = *(v0 + 20272);
  v11 = *(v0 + 11200);
  v12 = *(v0 + 11152);
  v13 = *(v0 + 11184);
  *(v9 + 80) = *(v0 + 11168);
  *(v9 + 96) = v13;
  *(v9 + 64) = v12;
  v14 = *(v0 + 11136);
  v15 = *(v0 + 11104);
  *(v9 + 32) = *(v0 + 11120);
  *(v9 + 48) = v14;
  *(v9 + 16) = v15;
  *(v9 + 112) = v11;
  *(v9 + 120) = v10;
  v16 = *(v7 + 8);

  v16(v59, v57);
  v17 = *(v0 + 21288);
  v18 = *(v0 + 21280);
  v19 = *(v0 + 21272);
  v20 = *(v0 + 21248);
  v21 = *(v0 + 21240);
  v22 = *(v0 + 21232);
  v23 = *(v0 + 21224);
  v24 = *(v0 + 21200);
  v25 = *(v0 + 21192);
  v26 = *(v0 + 21184);
  v29 = *(v0 + 21176);
  v30 = *(v0 + 21168);
  v31 = *(v0 + 21160);
  v32 = *(v0 + 21152);
  v33 = *(v0 + 21144);
  v34 = *(v0 + 21136);
  v35 = *(v0 + 21112);
  v36 = *(v0 + 21104);
  v37 = *(v0 + 21096);
  v38 = *(v0 + 21072);
  v39 = *(v0 + 21064);
  v40 = *(v0 + 21056);
  v41 = *(v0 + 21048);
  v42 = *(v0 + 21040);
  v43 = *(v0 + 21032);
  v44 = *(v0 + 21008);
  v45 = *(v0 + 21000);
  v46 = *(v0 + 20992);
  v47 = *(v0 + 20984);
  v48 = *(v0 + 20976);
  v49 = *(v0 + 20968);
  v50 = *(v0 + 20944);
  v51 = *(v0 + 20920);
  v52 = *(v0 + 20912);
  v53 = *(v0 + 20904);
  v54 = *(v0 + 20896);
  v56 = *(v0 + 20864);
  v58 = *(v0 + 20840);
  v60 = *(v0 + 20816);

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = v0[2599];
  v2 = v0[2376];
  v3 = v0[2377];
  __swift_project_boxed_opaque_existential_1(v0 + 2373, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[2798] = v6;
  *v6 = v0;
  v6[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v8(v2, v3);
}

{
  v1 = v0[2376];
  v2 = v0[2377];
  __swift_project_boxed_opaque_existential_1(v0 + 2373, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[2801] = v5;
  *v5 = v0;
  v5[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v7(v1, v2);
}

{
  v1 = v0[2793];
  swift_unknownObjectRelease();
  v0[2818] = v0[2799];
  v2 = v0[2599];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2373);

  v3 = v0[2662];
  outlined destroy of NSObject?((v0 + 2536), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v3, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 22424);
  v8 = *v1;
  *(*v1 + 22432) = v0;

  if (v0)
  {
    v4 = *(v2 + 22376);
    v5 = *(v2 + 20792);

    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[2653];
  v2 = v0[2652];
  v3 = v0[2651];
  v0[2805] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[2806] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[2376];
  v6 = v0[2377];
  __swift_project_boxed_opaque_existential_1(v0 + 2373, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[2807] = v9;
  *v9 = v0;
  v9[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v11(v5, v6);
}

{
  v1 = v0[2376];
  v2 = v0[2377];
  __swift_project_boxed_opaque_existential_1(v0 + 2373, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[2810] = v5;
  *v5 = v0;
  v5[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v7(v1, v2);
}

{
  v1 = v0[2793];
  swift_unknownObjectRelease();
  v0[2818] = v0[2804];
  v2 = v0[2599];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2373);

  v3 = v0[2662];
  outlined destroy of NSObject?((v0 + 2536), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v3, 0);
}

{
  v1 = v0[2793];
  swift_unknownObjectRelease();
  v2 = v0[2809];
  v3 = v0[2806];
  v4 = v0[2805];
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[2809];
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[2808];
  }

  v0[2818] = v0[2811];
  v7 = v0[2599];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2373);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v8 = v0[2662];
  outlined destroy of NSObject?((v0 + 2536), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v8, 0);
}

{
  v17 = *(v0 + 22528);
  v18 = *(v0 + 22536);
  v1 = *(v0 + 22504);
  v2 = *(v0 + 22496);
  v3 = *(v0 + 22472);
  v4 = *(v0 + 22448);
  v5 = *(v0 + 22440);
  v6 = *(v0 + 22416);
  v7 = *(v0 + 22400);
  v8 = *(v0 + 22344);
  v19 = *(v0 + 21296);
  v9 = *(v0 + 20792);
  v14 = v9;
  v10 = *(v0 + 20784);
  v15 = v10;
  v16 = *(v0 + 22464);
  swift_unknownObjectRelease();
  *(v0 + 14120) = v10;
  *(v0 + 14128) = v9;
  if (v2 >> 60 == 15)
  {
    v2 = 0xC000000000000000;
    v11 = 0;
  }

  else
  {
    v11 = v1;
  }

  if (v3 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
    v12 = 0;
  }

  else
  {
    v12 = v16;
  }

  if ((v7 & 0x100000000) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  *(v0 + 14136) = v7;
  *(v0 + 14144) = v7;
  *(v0 + 14152) = v6;
  *(v0 + 14160) = v5;
  *(v0 + 14168) = v4;
  *(v0 + 14176) = v12;
  *(v0 + 14184) = v3;
  *(v0 + 14192) = v11;
  *(v0 + 14200) = v2;
  *(v0 + 14208) = v18;
  *(v0 + 14216) = v17;
  outlined init with copy of MLS.Group(v0 + 14120, v0 + 13704);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18984));
  *(v0 + 14224) = v15;
  *(v0 + 14232) = v14;
  *(v0 + 14240) = v7;
  *(v0 + 14248) = v7;
  *(v0 + 14256) = v6;
  *(v0 + 14264) = v5;
  *(v0 + 14272) = v4;
  *(v0 + 14280) = v12;
  *(v0 + 14288) = v3;
  *(v0 + 14296) = v11;
  *(v0 + 14304) = v2;
  *(v0 + 14312) = v18;
  *(v0 + 14320) = v17;
  outlined destroy of MLS.Group(v0 + 14224);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v19, 0);
}

{
  v1 = *(v0 + 20760);
  *(v0 + 13176) = *(v0 + 14216);
  v2 = *(v0 + 14136);
  *(v0 + 13080) = *(v0 + 14120);
  *(v0 + 13096) = v2;
  v3 = *(v0 + 14200);
  *(v0 + 13144) = *(v0 + 14184);
  *(v0 + 13160) = v3;
  v4 = *(v0 + 14168);
  *(v0 + 13112) = *(v0 + 14152);
  *(v0 + 13128) = v4;
  if (*(v0 + 19496) == *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember) && *(v0 + 19504) == *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v7 = *(**(v0 + 22336) + 384);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 22552) = v9;
  *v9 = v0;
  v9[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v10 = *(v0 + 22336);

  return (v12)(v0 + 15576, v0 + 13080, 1, v6 & 1);
}

{
  v1 = v0[2797];
  v2 = v0[2793];
  swift_unknownObjectRelease();

  v3 = v0[2812];
  v4 = v0[2809];
  v5 = v0[2806];
  v6 = v0[2805];
  if (v3 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[2812];
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[2813];
  }

  if (v4 >> 60 == 15)
  {
    v9 = 0xC000000000000000;
  }

  else
  {
    v9 = v0[2809];
  }

  if (v4 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = v0[2808];
  }

  v0[2818] = v0[2815];
  v11 = v0[2599];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2373);

  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v10, v9);
  outlined consume of Data._Representation(v8, v7);
  v12 = v0[2662];
  outlined destroy of NSObject?((v0 + 2536), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v12, 0);
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  (*(v0[2641] + 8))(v0[2649], v0[2640]);
  (*(v2 + 8))(v1, v3);
  outlined destroy of NSObject?((v0 + 2251), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v45 = v0[2818];
  v4 = v0[2661];
  v5 = v0[2660];
  v6 = v0[2659];
  v7 = v0[2656];
  v8 = v0[2655];
  v9 = v0[2654];
  v10 = v0[2653];
  v11 = v0[2650];
  v12 = v0[2649];
  v13 = v0[2648];
  v16 = v0[2647];
  v17 = v0[2646];
  v18 = v0[2645];
  v19 = v0[2644];
  v20 = v0[2643];
  v21 = v0[2642];
  v22 = v0[2639];
  v23 = v0[2638];
  v24 = v0[2637];
  v25 = v0[2634];
  v26 = v0[2633];
  v27 = v0[2632];
  v28 = v0[2631];
  v29 = v0[2630];
  v30 = v0[2629];
  v31 = v0[2626];
  v32 = v0[2625];
  v33 = v0[2624];
  v34 = v0[2623];
  v35 = v0[2622];
  v36 = v0[2621];
  v37 = v0[2618];
  v38 = v0[2615];
  v39 = v0[2614];
  v40 = v0[2613];
  v41 = v0[2612];
  v42 = v0[2608];
  v43 = v0[2605];
  v44 = v0[2602];

  v14 = v0[1];

  return v14();
}

{
  v2 = *v1;
  v3 = *v1 + 13080;
  v4 = *(*v1 + 22552);
  v20 = *v1;
  *(*v1 + 22560) = v0;

  if (v0)
  {
    v5 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 20288, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    *(v2 + 12872) = *v3;
    *(v2 + 12888) = v7;
    *(v2 + 12904) = v6;
    v9 = *(v3 + 64);
    v8 = *(v3 + 80);
    v10 = *(v3 + 48);
    *(v2 + 12968) = *(v3 + 96);
    *(v2 + 12936) = v9;
    *(v2 + 12952) = v8;
    *(v2 + 12920) = v10;
    outlined destroy of MLS.Group(v2 + 12872);
    v11 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v12 = v5;
  }

  else
  {
    v13 = *(v2 + 21296);
    v15 = *(v3 + 16);
    v14 = *(v3 + 32);
    *(v2 + 12352) = *v3;
    *(v2 + 12368) = v15;
    *(v2 + 12384) = v14;
    v17 = *(v3 + 64);
    v16 = *(v3 + 80);
    v18 = *(v3 + 96);
    *(v2 + 12400) = *(v3 + 48);
    *(v2 + 12448) = v18;
    *(v2 + 12432) = v16;
    *(v2 + 12416) = v17;
    outlined destroy of MLS.Group(v2 + 12352);
    v11 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v12 = v13;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

{
  v25 = v0;
  v1 = v0[2703];
  v2 = v0[2596];
  v3 = v0[2595];
  outlined init with copy of MLS.OutgoingEventState?(v2, (v0 + 1241), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v2, (v0 + 1262), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2664];
    v7 = v0[2663];
    v8 = v0[2596];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v24);

    *(v9 + 4) = v11;
    outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming internal message returning processedContext to caller { identifier: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v12 = v0[2596];

    outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v13 = v0[2793];
  v14 = v0[2599];
  v15 = (v0[2595] + v0[2795]);
  outlined init with copy of ServerBag.MLS(v0[2597], (v0 + 2363));
  v16 = *v15;
  v17 = v15[1];
  v0[2556] = v16;
  v0[2557] = v17;

  swift_unknownObjectRetain();

  v18 = swift_task_alloc();
  v0[2821] = v18;
  *v18 = v0;
  v18[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v19 = v0[2794];
  v20 = v0[2793];
  v21 = v0[2599];
  v22 = v0[2598];

  return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)((v0 + 1518), v22, v21, (v0 + 2363), v20, v19, v0 + 2556);
}

{
  v2 = *v1;
  v3 = *(*v1 + 22568);
  v4 = *v1;
  *(v2 + 22576) = v0;

  v5 = *(v2 + 21296);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 20288, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 21192);
  v5 = *(v0 + 21128);
  v6 = *(v0 + 21120);
  v7 = *(v0 + 20800);
  v8 = *(v0 + 20744);
  outlined destroy of NSObject?(v0 + 18008, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  *(v0 + 11984) = *(v0 + 12192);
  *(v0 + 12000) = *(v0 + 12208);
  *(v0 + 12016) = *(v0 + 12224);
  *(v0 + 12032) = *(v0 + 12240);
  *(v0 + 11936) = *(v0 + 12144);
  *(v0 + 11952) = *(v0 + 12160);
  *(v0 + 11968) = *(v0 + 12176);
  swift_beginAccess();
  v9 = *(v7 + 16);
  *v8 = *(v0 + 20288);
  v10 = *(v0 + 12032);
  v11 = *(v0 + 11984);
  v12 = *(v0 + 12016);
  *(v8 + 80) = *(v0 + 12000);
  *(v8 + 96) = v12;
  *(v8 + 64) = v11;
  v13 = *(v0 + 11968);
  v14 = *(v0 + 11936);
  *(v8 + 32) = *(v0 + 11952);
  *(v8 + 48) = v13;
  *(v8 + 16) = v14;
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;

  v15 = *(v0 + 21288);
  v16 = *(v0 + 21280);
  v17 = *(v0 + 21272);
  v18 = *(v0 + 21248);
  v19 = *(v0 + 21240);
  v20 = *(v0 + 21232);
  v21 = *(v0 + 21224);
  v22 = *(v0 + 21200);
  v23 = *(v0 + 21192);
  v24 = *(v0 + 21184);
  v27 = *(v0 + 21176);
  v28 = *(v0 + 21168);
  v29 = *(v0 + 21160);
  v30 = *(v0 + 21152);
  v31 = *(v0 + 21144);
  v32 = *(v0 + 21136);
  v33 = *(v0 + 21112);
  v34 = *(v0 + 21104);
  v35 = *(v0 + 21096);
  v36 = *(v0 + 21072);
  v37 = *(v0 + 21064);
  v38 = *(v0 + 21056);
  v39 = *(v0 + 21048);
  v40 = *(v0 + 21040);
  v41 = *(v0 + 21032);
  v42 = *(v0 + 21008);
  v43 = *(v0 + 21000);
  v44 = *(v0 + 20992);
  v45 = *(v0 + 20984);
  v46 = *(v0 + 20976);
  v47 = *(v0 + 20968);
  v48 = *(v0 + 20944);
  v49 = *(v0 + 20920);
  v50 = *(v0 + 20912);
  v51 = *(v0 + 20904);
  v52 = *(v0 + 20896);
  v53 = *(v0 + 20864);
  v54 = *(v0 + 20840);
  v55 = *(v0 + 20816);

  v25 = *(v0 + 8);

  return v25();
}

{
  (*(v0[2658] + 8))(v0[2661], v0[2657]);
  v42 = v0[2668];
  v1 = v0[2661];
  v2 = v0[2660];
  v3 = v0[2659];
  v4 = v0[2656];
  v5 = v0[2655];
  v6 = v0[2654];
  v7 = v0[2653];
  v8 = v0[2650];
  v9 = v0[2649];
  v10 = v0[2648];
  v13 = v0[2647];
  v14 = v0[2646];
  v15 = v0[2645];
  v16 = v0[2644];
  v17 = v0[2643];
  v18 = v0[2642];
  v19 = v0[2639];
  v20 = v0[2638];
  v21 = v0[2637];
  v22 = v0[2634];
  v23 = v0[2633];
  v24 = v0[2632];
  v25 = v0[2631];
  v26 = v0[2630];
  v27 = v0[2629];
  v28 = v0[2626];
  v29 = v0[2625];
  v30 = v0[2624];
  v31 = v0[2623];
  v32 = v0[2622];
  v33 = v0[2621];
  v34 = v0[2618];
  v35 = v0[2615];
  v36 = v0[2614];
  v37 = v0[2613];
  v38 = v0[2612];
  v39 = v0[2608];
  v40 = v0[2605];
  v41 = v0[2602];

  v11 = v0[1];

  return v11();
}

{
  (*(v0[2658] + 8))(v0[2661], v0[2657]);
  outlined destroy of MLS.Group((v0 + 1908));
  outlined destroy of NSObject?((v0 + 2259), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v42 = v0[2696];
  v1 = v0[2661];
  v2 = v0[2660];
  v3 = v0[2659];
  v4 = v0[2656];
  v5 = v0[2655];
  v6 = v0[2654];
  v7 = v0[2653];
  v8 = v0[2650];
  v9 = v0[2649];
  v10 = v0[2648];
  v13 = v0[2647];
  v14 = v0[2646];
  v15 = v0[2645];
  v16 = v0[2644];
  v17 = v0[2643];
  v18 = v0[2642];
  v19 = v0[2639];
  v20 = v0[2638];
  v21 = v0[2637];
  v22 = v0[2634];
  v23 = v0[2633];
  v24 = v0[2632];
  v25 = v0[2631];
  v26 = v0[2630];
  v27 = v0[2629];
  v28 = v0[2626];
  v29 = v0[2625];
  v30 = v0[2624];
  v31 = v0[2623];
  v32 = v0[2622];
  v33 = v0[2621];
  v34 = v0[2618];
  v35 = v0[2615];
  v36 = v0[2614];
  v37 = v0[2613];
  v38 = v0[2612];
  v39 = v0[2608];
  v40 = v0[2605];
  v41 = v0[2602];

  v11 = v0[1];

  return v11();
}

{
  (*(v0[2658] + 8))(v0[2661], v0[2657]);
  v42 = v0[2707];
  v1 = v0[2661];
  v2 = v0[2660];
  v3 = v0[2659];
  v4 = v0[2656];
  v5 = v0[2655];
  v6 = v0[2654];
  v7 = v0[2653];
  v8 = v0[2650];
  v9 = v0[2649];
  v10 = v0[2648];
  v13 = v0[2647];
  v14 = v0[2646];
  v15 = v0[2645];
  v16 = v0[2644];
  v17 = v0[2643];
  v18 = v0[2642];
  v19 = v0[2639];
  v20 = v0[2638];
  v21 = v0[2637];
  v22 = v0[2634];
  v23 = v0[2633];
  v24 = v0[2632];
  v25 = v0[2631];
  v26 = v0[2630];
  v27 = v0[2629];
  v28 = v0[2626];
  v29 = v0[2625];
  v30 = v0[2624];
  v31 = v0[2623];
  v32 = v0[2622];
  v33 = v0[2621];
  v34 = v0[2618];
  v35 = v0[2615];
  v36 = v0[2614];
  v37 = v0[2613];
  v38 = v0[2612];
  v39 = v0[2608];
  v40 = v0[2605];
  v41 = v0[2602];

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  v3 = *(*v1 + 22616);
  v13 = *v1;
  *(*v1 + 22624) = v0;

  if (v0)
  {
    v4 = *(v2 + 22608);
    v5 = *(v2 + 22600);
    v6 = *(v2 + 22592);
    v7 = *(v2 + 22584);
    v8 = *(v2 + 21296);
    v9 = *(v2 + 15673);
    outlined destroy of NSObject?(v2 + 20064, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined consume of MLS.AllMember();
    v10 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = v8;
  }

  else
  {
    v11 = *(v2 + 21296);
    v10 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

{
  v37 = v0;
  v1 = *(v0 + 21624);
  v2 = *(v0 + 20792);
  v3 = *(v0 + 20768);
  v4 = *(v0 + 20760);
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 1864, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 2032, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 22592);
  v9 = *(v0 + 22584);
  if (v7)
  {
    v33 = *(v0 + 15673);
    v10 = *(v0 + 21312);
    v31 = *(v0 + 22600);
    v32 = *(v0 + 22608);
    v11 = *(v0 + 21304);
    v12 = *(v0 + 20792);
    v30 = *(v0 + 20784);
    v13 = *(v0 + 20768);
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v14 = 136315394;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v36);

    *(v14 + 4) = v15;
    outlined destroy of NSObject?(v13, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v13, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v14 + 12) = 2080;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v12, &v36);

    *(v14 + 14) = v16;

    outlined consume of MLS.AllMember();
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator processIncoming deleting group { identifier: %s, group: %s }", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v35, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  else
  {
    v17 = *(v0 + 20792);
    v18 = *(v0 + 20768);

    outlined consume of MLS.AllMember();
    outlined destroy of NSObject?(v18, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v18, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    swift_bridgeObjectRelease_n();
  }

  v19 = *(v0 + 20760);
  v21 = *(v19 + 80);
  v20 = *(v19 + 88);
  ObjectType = swift_getObjectType();
  v23 = *(v19 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *(v0 + 20512) = *(v19 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 20520) = v23;
  v24 = *(v20 + 96);

  v34 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 22632) = v26;
  *v26 = v0;
  v26[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v27 = *(v0 + 20792);
  v28 = *(v0 + 20784);

  return v34(v28, v27, v0 + 20512, ObjectType, v20);
}

{
  v2 = *v1;
  v3 = *(*v1 + 22632);
  v4 = *v1;
  v2[2830] = v0;

  v5 = v2[2662];
  if (v0)
  {
    outlined destroy of NSObject?((v2 + 2508), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = v2[2565];

    v7 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v8 = v2[2565];

    v7 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

{
  v1 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 20840);
  v5 = *(v0 + 20816);
  v6 = *(v0 + 20800);
  v7 = *(v0 + 20744);
  outlined destroy of NSObject?(v0 + 17560, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v5, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v8 = *(v6 + 16);
  *v7 = *(v0 + 20064);
  v9 = *(v0 + 14584);
  v10 = *(v0 + 14616);
  v11 = *(v0 + 14632);
  *(v7 + 80) = *(v0 + 14600);
  *(v7 + 96) = v10;
  *(v7 + 64) = v9;
  v12 = *(v0 + 14568);
  v13 = *(v0 + 14536);
  *(v7 + 32) = *(v0 + 14552);
  *(v7 + 48) = v12;
  *(v7 + 16) = v13;
  *(v7 + 112) = v11;
  *(v7 + 120) = v8;

  outlined destroy of NSObject?(v4, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);

  v14 = *(v0 + 21288);
  v15 = *(v0 + 21280);
  v16 = *(v0 + 21272);
  v17 = *(v0 + 21248);
  v18 = *(v0 + 21240);
  v19 = *(v0 + 21232);
  v20 = *(v0 + 21224);
  v21 = *(v0 + 21200);
  v22 = *(v0 + 21192);
  v23 = *(v0 + 21184);
  v26 = *(v0 + 21176);
  v27 = *(v0 + 21168);
  v28 = *(v0 + 21160);
  v29 = *(v0 + 21152);
  v30 = *(v0 + 21144);
  v31 = *(v0 + 21136);
  v32 = *(v0 + 21112);
  v33 = *(v0 + 21104);
  v34 = *(v0 + 21096);
  v35 = *(v0 + 21072);
  v36 = *(v0 + 21064);
  v37 = *(v0 + 21056);
  v38 = *(v0 + 21048);
  v39 = *(v0 + 21040);
  v40 = *(v0 + 21032);
  v41 = *(v0 + 21008);
  v42 = *(v0 + 21000);
  v43 = *(v0 + 20992);
  v44 = *(v0 + 20984);
  v45 = *(v0 + 20976);
  v46 = *(v0 + 20968);
  v47 = *(v0 + 20944);
  v48 = *(v0 + 20920);
  v49 = *(v0 + 20912);
  v50 = *(v0 + 20904);
  v51 = *(v0 + 20896);
  v52 = *(v0 + 20864);
  v53 = *(v0 + 20840);
  v54 = *(v0 + 20816);

  v24 = *(v0 + 8);

  return v24();
}

{
  v113 = v0;
  (*(*(v0 + 21088) + 8))(*(v0 + 21112), *(v0 + 21080));
  v1 = *(v0 + 21680);
  *(v0 + 22584) = v1;
  v2 = *(v0 + 20840);
  v3 = *(v0 + 20824);
  *(v0 + 20688) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
    v6 = *(v0 + 20840);
    v7 = *(v0 + 20832);
    v8 = *(v0 + 20824);
    if (v5 == *MEMORY[0x277D6AD10])
    {
      v103 = *(v0 + 21304);
      v106 = *(v0 + 21312);
      v9 = *(v0 + 20816);
      v10 = *(v0 + 20768);
      v11 = *(v0 + 20760);
      v98 = *(v0 + 21624);
      v101 = *(v0 + 20752);
      (*(v7 + 96))(v6, v8);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
      outlined init with take of MLS.Group.Member?(v6 + *(v12 + 48), v9, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
      closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v9, v11, v10, v101, v111);
      v14 = *v111;
      v13 = *&v111[8];
      *(v0 + 22592) = *v111;
      *(v0 + 22600) = v13;
      v15 = *&v111[16];
      *(v0 + 22608) = *&v111[16];
      v16 = v112;
      *(v0 + 15673) = v112;
      *(v0 + 20064) = *(v10 + 16);
      *&v111[7] = *(v10 + 16);
      *(v0 + 17560) = v103;
      *(v0 + 17568) = v106;
      *(v0 + 17576) = v14;
      *(v0 + 17584) = v13;
      *(v0 + 17592) = v15;
      *(v0 + 17600) = v16;
      *(v0 + 17601) = *v111;
      *(v0 + 17616) = *&v111[15];
      v17 = *(v0 + 17576);
      *(v0 + 16792) = *(v0 + 17560);
      *(v0 + 16808) = v17;
      v18 = *(v0 + 17608);
      *(v0 + 16824) = *(v0 + 17592);
      *(v0 + 16840) = v18;
      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      v107 = v14;
      v19 = v13;
      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v96 = v21;
        v22 = *(v0 + 21312);
        v23 = *(v0 + 21304);
        v24 = *(v0 + 20768);
        v25 = *(v0 + 20760);
        v26 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v109[0] = v99;
        *v26 = 136315650;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v109);

        *(v26 + 4) = v27;
        outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        *(v26 + 12) = 2080;
        *v111 = v107;
        *&v111[8] = v19;
        *&v111[16] = v15;
        v112 = v16;
        outlined copy of MLS.AllMember();
        v28 = MLS.AllMember.description.getter();
        v30 = v29;
        outlined consume of MLS.AllMember();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v109);

        *(v26 + 14) = v31;
        outlined consume of MLS.AllMember();
        outlined consume of MLS.AllMember();
        *(v26 + 22) = 2080;
        v32 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
        v33 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
        v34 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
        *v111 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
        *&v111[8] = v32;
        *&v111[16] = v33;
        v112 = v34;
        outlined copy of MLS.AllMember();
        v35 = MLS.AllMember.description.getter();
        v37 = v36;
        outlined consume of MLS.AllMember();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v109);

        *(v26 + 24) = v38;

        _os_log_impl(&dword_264F1F000, v20, v96, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v99, -1, -1);
        MEMORY[0x266755550](v26, -1, -1);
      }

      else
      {
        v51 = *(v0 + 20768);
        v52 = *(v0 + 20760);

        outlined destroy of NSObject?(v51, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v51, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined consume of MLS.AllMember();
        outlined consume of MLS.AllMember();
      }

      v53 = *(v0 + 21664);
      v54 = *(v0 + 20792);
      v55 = *(v0 + 20760);
      if ((v53 & 0x100000000) != 0)
      {
        v53 = 1;
      }

      else
      {
        v53 = v53;
      }

      v56 = *(v0 + 21640) + 1;
      *(v0 + 14536) = *(v0 + 20784);
      *(v0 + 14544) = v54;
      *(v0 + 14552) = v53;
      *(v0 + 14560) = v53;
      *(v0 + 14568) = v56;
      *(v0 + 14576) = xmmword_2651B68A0;
      *(v0 + 14592) = xmmword_2651B68A0;
      *(v0 + 14608) = xmmword_2651B68A0;
      *(v0 + 14624) = xmmword_2651B5F50;
      v57 = *(v55 + 96);
      v58 = *(v0 + 16840);
      *(v0 + 15920) = *(v0 + 16824);
      *(v0 + 15936) = v58;
      v59 = *(v0 + 16872);
      *(v0 + 15952) = *(v0 + 16856);
      *(v0 + 15968) = v59;
      v60 = *(v0 + 16808);
      *(v0 + 15888) = *(v0 + 16792);
      *(v0 + 15904) = v60;
      v61 = *(v0 + 14584);
      *(v0 + 13424) = *(v0 + 14568);
      *(v0 + 13440) = v61;
      v62 = *(v0 + 14616);
      *(v0 + 13456) = *(v0 + 14600);
      *(v0 + 13472) = v62;
      v63 = *(v0 + 14536);
      *(v0 + 13408) = *(v0 + 14552);
      *(v0 + 15984) = 4;
      *(v0 + 13488) = *(v0 + 14632);
      *(v0 + 13392) = v63;
      v109[0] = v107;
      v109[1] = v19;
      v109[2] = v15;
      v110 = v16;
      v64 = v55 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
      v65 = *(v64 + 8);
      v66 = *(v64 + 16);
      v67 = *(v64 + 24);
      *v111 = *v64;
      *&v111[8] = v65;
      *&v111[16] = v66;
      v112 = v67;

      outlined copy of MLS.AllMember();
      v68 = specialized static MLS.AllMember.== infix(_:_:)(v109, v111);
      outlined consume of MLS.AllMember();
      v105 = (*v57 + 384);
      v108 = (*v105 + **v105);
      v69 = (*v105)[1];
      v70 = swift_task_alloc();
      *(v0 + 22616) = v70;
      *v70 = v0;
      v70[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

      return (v108)(v0 + 15888, v0 + 13392, 1, v68 & 1);
    }

    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
  }

  v39 = *(v0 + 21288);
  v40 = *(v0 + 21280);
  v41 = *(v0 + 21272);
  v42 = *(v0 + 21248);
  v43 = *(v0 + 21240);
  v44 = *(v0 + 21232);
  v45 = *(v0 + 21224);
  v46 = *(v0 + 21200);
  v47 = *(v0 + 21192);
  v48 = *(v0 + 21184);
  v71 = *(v0 + 21176);
  v72 = *(v0 + 21168);
  v73 = *(v0 + 21160);
  v74 = *(v0 + 21152);
  v75 = *(v0 + 21144);
  v76 = *(v0 + 21136);
  v77 = *(v0 + 21112);
  v78 = *(v0 + 21104);
  v79 = *(v0 + 21096);
  v80 = *(v0 + 21072);
  v81 = *(v0 + 21064);
  v82 = *(v0 + 21056);
  v83 = *(v0 + 21048);
  v84 = *(v0 + 21040);
  v85 = *(v0 + 21032);
  v86 = *(v0 + 21008);
  v87 = *(v0 + 21000);
  v88 = *(v0 + 20992);
  v89 = *(v0 + 20984);
  v90 = *(v0 + 20976);
  v91 = *(v0 + 20968);
  v92 = *(v0 + 20944);
  v93 = *(v0 + 20920);
  v94 = *(v0 + 20912);
  v95 = *(v0 + 20904);
  v97 = *(v0 + 20896);
  v100 = *(v0 + 20864);
  v102 = *(v0 + 20840);
  v104 = *(v0 + 20816);

  v49 = *(v0 + 8);

  return v49();
}

{
  v113 = v0;
  (*(*(v0 + 21088) + 8))(*(v0 + 21112), *(v0 + 21080));
  v1 = *(v0 + 21696);
  *(v0 + 22584) = v1;
  v2 = *(v0 + 20840);
  v3 = *(v0 + 20824);
  *(v0 + 20688) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
    v6 = *(v0 + 20840);
    v7 = *(v0 + 20832);
    v8 = *(v0 + 20824);
    if (v5 == *MEMORY[0x277D6AD10])
    {
      v103 = *(v0 + 21304);
      v106 = *(v0 + 21312);
      v9 = *(v0 + 20816);
      v10 = *(v0 + 20768);
      v11 = *(v0 + 20760);
      v98 = *(v0 + 21624);
      v101 = *(v0 + 20752);
      (*(v7 + 96))(v6, v8);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
      outlined init with take of MLS.Group.Member?(v6 + *(v12 + 48), v9, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
      closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v9, v11, v10, v101, v111);
      v14 = *v111;
      v13 = *&v111[8];
      *(v0 + 22592) = *v111;
      *(v0 + 22600) = v13;
      v15 = *&v111[16];
      *(v0 + 22608) = *&v111[16];
      v16 = v112;
      *(v0 + 15673) = v112;
      *(v0 + 20064) = *(v10 + 16);
      *&v111[7] = *(v10 + 16);
      *(v0 + 17560) = v103;
      *(v0 + 17568) = v106;
      *(v0 + 17576) = v14;
      *(v0 + 17584) = v13;
      *(v0 + 17592) = v15;
      *(v0 + 17600) = v16;
      *(v0 + 17601) = *v111;
      *(v0 + 17616) = *&v111[15];
      v17 = *(v0 + 17576);
      *(v0 + 16792) = *(v0 + 17560);
      *(v0 + 16808) = v17;
      v18 = *(v0 + 17608);
      *(v0 + 16824) = *(v0 + 17592);
      *(v0 + 16840) = v18;
      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      v107 = v14;
      v19 = v13;
      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v96 = v21;
        v22 = *(v0 + 21312);
        v23 = *(v0 + 21304);
        v24 = *(v0 + 20768);
        v25 = *(v0 + 20760);
        v26 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v109[0] = v99;
        *v26 = 136315650;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v109);

        *(v26 + 4) = v27;
        outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        *(v26 + 12) = 2080;
        *v111 = v107;
        *&v111[8] = v19;
        *&v111[16] = v15;
        v112 = v16;
        outlined copy of MLS.AllMember();
        v28 = MLS.AllMember.description.getter();
        v30 = v29;
        outlined consume of MLS.AllMember();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v109);

        *(v26 + 14) = v31;
        outlined consume of MLS.AllMember();
        outlined consume of MLS.AllMember();
        *(v26 + 22) = 2080;
        v32 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
        v33 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
        v34 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
        *v111 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
        *&v111[8] = v32;
        *&v111[16] = v33;
        v112 = v34;
        outlined copy of MLS.AllMember();
        v35 = MLS.AllMember.description.getter();
        v37 = v36;
        outlined consume of MLS.AllMember();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v109);

        *(v26 + 24) = v38;

        _os_log_impl(&dword_264F1F000, v20, v96, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v99, -1, -1);
        MEMORY[0x266755550](v26, -1, -1);
      }

      else
      {
        v51 = *(v0 + 20768);
        v52 = *(v0 + 20760);

        outlined destroy of NSObject?(v51, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v51, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined consume of MLS.AllMember();
        outlined consume of MLS.AllMember();
      }

      v53 = *(v0 + 21664);
      v54 = *(v0 + 20792);
      v55 = *(v0 + 20760);
      if ((v53 & 0x100000000) != 0)
      {
        v53 = 1;
      }

      else
      {
        v53 = v53;
      }

      v56 = *(v0 + 21640) + 1;
      *(v0 + 14536) = *(v0 + 20784);
      *(v0 + 14544) = v54;
      *(v0 + 14552) = v53;
      *(v0 + 14560) = v53;
      *(v0 + 14568) = v56;
      *(v0 + 14576) = xmmword_2651B68A0;
      *(v0 + 14592) = xmmword_2651B68A0;
      *(v0 + 14608) = xmmword_2651B68A0;
      *(v0 + 14624) = xmmword_2651B5F50;
      v57 = *(v55 + 96);
      v58 = *(v0 + 16840);
      *(v0 + 15920) = *(v0 + 16824);
      *(v0 + 15936) = v58;
      v59 = *(v0 + 16872);
      *(v0 + 15952) = *(v0 + 16856);
      *(v0 + 15968) = v59;
      v60 = *(v0 + 16808);
      *(v0 + 15888) = *(v0 + 16792);
      *(v0 + 15904) = v60;
      v61 = *(v0 + 14584);
      *(v0 + 13424) = *(v0 + 14568);
      *(v0 + 13440) = v61;
      v62 = *(v0 + 14616);
      *(v0 + 13456) = *(v0 + 14600);
      *(v0 + 13472) = v62;
      v63 = *(v0 + 14536);
      *(v0 + 13408) = *(v0 + 14552);
      *(v0 + 15984) = 4;
      *(v0 + 13488) = *(v0 + 14632);
      *(v0 + 13392) = v63;
      v109[0] = v107;
      v109[1] = v19;
      v109[2] = v15;
      v110 = v16;
      v64 = v55 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
      v65 = *(v64 + 8);
      v66 = *(v64 + 16);
      v67 = *(v64 + 24);
      *v111 = *v64;
      *&v111[8] = v65;
      *&v111[16] = v66;
      v112 = v67;

      outlined copy of MLS.AllMember();
      v68 = specialized static MLS.AllMember.== infix(_:_:)(v109, v111);
      outlined consume of MLS.AllMember();
      v105 = (*v57 + 384);
      v108 = (*v105 + **v105);
      v69 = (*v105)[1];
      v70 = swift_task_alloc();
      *(v0 + 22616) = v70;
      *v70 = v0;
      v70[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

      return (v108)(v0 + 15888, v0 + 13392, 1, v68 & 1);
    }

    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
  }

  v39 = *(v0 + 21288);
  v40 = *(v0 + 21280);
  v41 = *(v0 + 21272);
  v42 = *(v0 + 21248);
  v43 = *(v0 + 21240);
  v44 = *(v0 + 21232);
  v45 = *(v0 + 21224);
  v46 = *(v0 + 21200);
  v47 = *(v0 + 21192);
  v48 = *(v0 + 21184);
  v71 = *(v0 + 21176);
  v72 = *(v0 + 21168);
  v73 = *(v0 + 21160);
  v74 = *(v0 + 21152);
  v75 = *(v0 + 21144);
  v76 = *(v0 + 21136);
  v77 = *(v0 + 21112);
  v78 = *(v0 + 21104);
  v79 = *(v0 + 21096);
  v80 = *(v0 + 21072);
  v81 = *(v0 + 21064);
  v82 = *(v0 + 21056);
  v83 = *(v0 + 21048);
  v84 = *(v0 + 21040);
  v85 = *(v0 + 21032);
  v86 = *(v0 + 21008);
  v87 = *(v0 + 21000);
  v88 = *(v0 + 20992);
  v89 = *(v0 + 20984);
  v90 = *(v0 + 20976);
  v91 = *(v0 + 20968);
  v92 = *(v0 + 20944);
  v93 = *(v0 + 20920);
  v94 = *(v0 + 20912);
  v95 = *(v0 + 20904);
  v97 = *(v0 + 20896);
  v100 = *(v0 + 20864);
  v102 = *(v0 + 20840);
  v104 = *(v0 + 20816);

  v49 = *(v0 + 8);

  return v49();
}

{
  v113 = v0;
  (*(*(v0 + 21088) + 8))(*(v0 + 21112), *(v0 + 21080));
  v1 = *(v0 + 21720);
  *(v0 + 22584) = v1;
  v2 = *(v0 + 20840);
  v3 = *(v0 + 20824);
  *(v0 + 20688) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
    v6 = *(v0 + 20840);
    v7 = *(v0 + 20832);
    v8 = *(v0 + 20824);
    if (v5 == *MEMORY[0x277D6AD10])
    {
      v103 = *(v0 + 21304);
      v106 = *(v0 + 21312);
      v9 = *(v0 + 20816);
      v10 = *(v0 + 20768);
      v11 = *(v0 + 20760);
      v98 = *(v0 + 21624);
      v101 = *(v0 + 20752);
      (*(v7 + 96))(v6, v8);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
      outlined init with take of MLS.Group.Member?(v6 + *(v12 + 48), v9, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
      closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v9, v11, v10, v101, v111);
      v14 = *v111;
      v13 = *&v111[8];
      *(v0 + 22592) = *v111;
      *(v0 + 22600) = v13;
      v15 = *&v111[16];
      *(v0 + 22608) = *&v111[16];
      v16 = v112;
      *(v0 + 15673) = v112;
      *(v0 + 20064) = *(v10 + 16);
      *&v111[7] = *(v10 + 16);
      *(v0 + 17560) = v103;
      *(v0 + 17568) = v106;
      *(v0 + 17576) = v14;
      *(v0 + 17584) = v13;
      *(v0 + 17592) = v15;
      *(v0 + 17600) = v16;
      *(v0 + 17601) = *v111;
      *(v0 + 17616) = *&v111[15];
      v17 = *(v0 + 17576);
      *(v0 + 16792) = *(v0 + 17560);
      *(v0 + 16808) = v17;
      v18 = *(v0 + 17608);
      *(v0 + 16824) = *(v0 + 17592);
      *(v0 + 16840) = v18;
      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      v107 = v14;
      v19 = v13;
      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v96 = v21;
        v22 = *(v0 + 21312);
        v23 = *(v0 + 21304);
        v24 = *(v0 + 20768);
        v25 = *(v0 + 20760);
        v26 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v109[0] = v99;
        *v26 = 136315650;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v109);

        *(v26 + 4) = v27;
        outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        *(v26 + 12) = 2080;
        *v111 = v107;
        *&v111[8] = v19;
        *&v111[16] = v15;
        v112 = v16;
        outlined copy of MLS.AllMember();
        v28 = MLS.AllMember.description.getter();
        v30 = v29;
        outlined consume of MLS.AllMember();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v109);

        *(v26 + 14) = v31;
        outlined consume of MLS.AllMember();
        outlined consume of MLS.AllMember();
        *(v26 + 22) = 2080;
        v32 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
        v33 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
        v34 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
        *v111 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
        *&v111[8] = v32;
        *&v111[16] = v33;
        v112 = v34;
        outlined copy of MLS.AllMember();
        v35 = MLS.AllMember.description.getter();
        v37 = v36;
        outlined consume of MLS.AllMember();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v109);

        *(v26 + 24) = v38;

        _os_log_impl(&dword_264F1F000, v20, v96, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v99, -1, -1);
        MEMORY[0x266755550](v26, -1, -1);
      }

      else
      {
        v51 = *(v0 + 20768);
        v52 = *(v0 + 20760);

        outlined destroy of NSObject?(v51, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v51, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined consume of MLS.AllMember();
        outlined consume of MLS.AllMember();
      }

      v53 = *(v0 + 21664);
      v54 = *(v0 + 20792);
      v55 = *(v0 + 20760);
      if ((v53 & 0x100000000) != 0)
      {
        v53 = 1;
      }

      else
      {
        v53 = v53;
      }

      v56 = *(v0 + 21640) + 1;
      *(v0 + 14536) = *(v0 + 20784);
      *(v0 + 14544) = v54;
      *(v0 + 14552) = v53;
      *(v0 + 14560) = v53;
      *(v0 + 14568) = v56;
      *(v0 + 14576) = xmmword_2651B68A0;
      *(v0 + 14592) = xmmword_2651B68A0;
      *(v0 + 14608) = xmmword_2651B68A0;
      *(v0 + 14624) = xmmword_2651B5F50;
      v57 = *(v55 + 96);
      v58 = *(v0 + 16840);
      *(v0 + 15920) = *(v0 + 16824);
      *(v0 + 15936) = v58;
      v59 = *(v0 + 16872);
      *(v0 + 15952) = *(v0 + 16856);
      *(v0 + 15968) = v59;
      v60 = *(v0 + 16808);
      *(v0 + 15888) = *(v0 + 16792);
      *(v0 + 15904) = v60;
      v61 = *(v0 + 14584);
      *(v0 + 13424) = *(v0 + 14568);
      *(v0 + 13440) = v61;
      v62 = *(v0 + 14616);
      *(v0 + 13456) = *(v0 + 14600);
      *(v0 + 13472) = v62;
      v63 = *(v0 + 14536);
      *(v0 + 13408) = *(v0 + 14552);
      *(v0 + 15984) = 4;
      *(v0 + 13488) = *(v0 + 14632);
      *(v0 + 13392) = v63;
      v109[0] = v107;
      v109[1] = v19;
      v109[2] = v15;
      v110 = v16;
      v64 = v55 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
      v65 = *(v64 + 8);
      v66 = *(v64 + 16);
      v67 = *(v64 + 24);
      *v111 = *v64;
      *&v111[8] = v65;
      *&v111[16] = v66;
      v112 = v67;

      outlined copy of MLS.AllMember();
      v68 = specialized static MLS.AllMember.== infix(_:_:)(v109, v111);
      outlined consume of MLS.AllMember();
      v105 = (*v57 + 384);
      v108 = (*v105 + **v105);
      v69 = (*v105)[1];
      v70 = swift_task_alloc();
      *(v0 + 22616) = v70;
      *v70 = v0;
      v70[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

      return (v108)(v0 + 15888, v0 + 13392, 1, v68 & 1);
    }

    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
  }

  v39 = *(v0 + 21288);
  v40 = *(v0 + 21280);
  v41 = *(v0 + 21272);
  v42 = *(v0 + 21248);
  v43 = *(v0 + 21240);
  v44 = *(v0 + 21232);
  v45 = *(v0 + 21224);
  v46 = *(v0 + 21200);
  v47 = *(v0 + 21192);
  v48 = *(v0 + 21184);
  v71 = *(v0 + 21176);
  v72 = *(v0 + 21168);
  v73 = *(v0 + 21160);
  v74 = *(v0 + 21152);
  v75 = *(v0 + 21144);
  v76 = *(v0 + 21136);
  v77 = *(v0 + 21112);
  v78 = *(v0 + 21104);
  v79 = *(v0 + 21096);
  v80 = *(v0 + 21072);
  v81 = *(v0 + 21064);
  v82 = *(v0 + 21056);
  v83 = *(v0 + 21048);
  v84 = *(v0 + 21040);
  v85 = *(v0 + 21032);
  v86 = *(v0 + 21008);
  v87 = *(v0 + 21000);
  v88 = *(v0 + 20992);
  v89 = *(v0 + 20984);
  v90 = *(v0 + 20976);
  v91 = *(v0 + 20968);
  v92 = *(v0 + 20944);
  v93 = *(v0 + 20920);
  v94 = *(v0 + 20912);
  v95 = *(v0 + 20904);
  v97 = *(v0 + 20896);
  v100 = *(v0 + 20864);
  v102 = *(v0 + 20840);
  v104 = *(v0 + 20816);

  v49 = *(v0 + 8);

  return v49();
}

{
  v113 = v0;
  (*(*(v0 + 21088) + 8))(*(v0 + 21112), *(v0 + 21080));
  v1 = *(v0 + 21744);
  *(v0 + 22584) = v1;
  v2 = *(v0 + 20840);
  v3 = *(v0 + 20824);
  *(v0 + 20688) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
    v6 = *(v0 + 20840);
    v7 = *(v0 + 20832);
    v8 = *(v0 + 20824);
    if (v5 == *MEMORY[0x277D6AD10])
    {
      v103 = *(v0 + 21304);
      v106 = *(v0 + 21312);
      v9 = *(v0 + 20816);
      v10 = *(v0 + 20768);
      v11 = *(v0 + 20760);
      v98 = *(v0 + 21624);
      v101 = *(v0 + 20752);
      (*(v7 + 96))(v6, v8);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
      outlined init with take of MLS.Group.Member?(v6 + *(v12 + 48), v9, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
      closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v9, v11, v10, v101, v111);
      v14 = *v111;
      v13 = *&v111[8];
      *(v0 + 22592) = *v111;
      *(v0 + 22600) = v13;
      v15 = *&v111[16];
      *(v0 + 22608) = *&v111[16];
      v16 = v112;
      *(v0 + 15673) = v112;
      *(v0 + 20064) = *(v10 + 16);
      *&v111[7] = *(v10 + 16);
      *(v0 + 17560) = v103;
      *(v0 + 17568) = v106;
      *(v0 + 17576) = v14;
      *(v0 + 17584) = v13;
      *(v0 + 17592) = v15;
      *(v0 + 17600) = v16;
      *(v0 + 17601) = *v111;
      *(v0 + 17616) = *&v111[15];
      v17 = *(v0 + 17576);
      *(v0 + 16792) = *(v0 + 17560);
      *(v0 + 16808) = v17;
      v18 = *(v0 + 17608);
      *(v0 + 16824) = *(v0 + 17592);
      *(v0 + 16840) = v18;
      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      v107 = v14;
      v19 = v13;
      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v96 = v21;
        v22 = *(v0 + 21312);
        v23 = *(v0 + 21304);
        v24 = *(v0 + 20768);
        v25 = *(v0 + 20760);
        v26 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v109[0] = v99;
        *v26 = 136315650;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v109);

        *(v26 + 4) = v27;
        outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        *(v26 + 12) = 2080;
        *v111 = v107;
        *&v111[8] = v19;
        *&v111[16] = v15;
        v112 = v16;
        outlined copy of MLS.AllMember();
        v28 = MLS.AllMember.description.getter();
        v30 = v29;
        outlined consume of MLS.AllMember();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v109);

        *(v26 + 14) = v31;
        outlined consume of MLS.AllMember();
        outlined consume of MLS.AllMember();
        *(v26 + 22) = 2080;
        v32 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
        v33 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
        v34 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
        *v111 = *(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
        *&v111[8] = v32;
        *&v111[16] = v33;
        v112 = v34;
        outlined copy of MLS.AllMember();
        v35 = MLS.AllMember.description.getter();
        v37 = v36;
        outlined consume of MLS.AllMember();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v109);

        *(v26 + 24) = v38;

        _os_log_impl(&dword_264F1F000, v20, v96, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v99, -1, -1);
        MEMORY[0x266755550](v26, -1, -1);
      }

      else
      {
        v51 = *(v0 + 20768);
        v52 = *(v0 + 20760);

        outlined destroy of NSObject?(v51, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v51, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined consume of MLS.AllMember();
        outlined consume of MLS.AllMember();
      }

      v53 = *(v0 + 21664);
      v54 = *(v0 + 20792);
      v55 = *(v0 + 20760);
      if ((v53 & 0x100000000) != 0)
      {
        v53 = 1;
      }

      else
      {
        v53 = v53;
      }

      v56 = *(v0 + 21640) + 1;
      *(v0 + 14536) = *(v0 + 20784);
      *(v0 + 14544) = v54;
      *(v0 + 14552) = v53;
      *(v0 + 14560) = v53;
      *(v0 + 14568) = v56;
      *(v0 + 14576) = xmmword_2651B68A0;
      *(v0 + 14592) = xmmword_2651B68A0;
      *(v0 + 14608) = xmmword_2651B68A0;
      *(v0 + 14624) = xmmword_2651B5F50;
      v57 = *(v55 + 96);
      v58 = *(v0 + 16840);
      *(v0 + 15920) = *(v0 + 16824);
      *(v0 + 15936) = v58;
      v59 = *(v0 + 16872);
      *(v0 + 15952) = *(v0 + 16856);
      *(v0 + 15968) = v59;
      v60 = *(v0 + 16808);
      *(v0 + 15888) = *(v0 + 16792);
      *(v0 + 15904) = v60;
      v61 = *(v0 + 14584);
      *(v0 + 13424) = *(v0 + 14568);
      *(v0 + 13440) = v61;
      v62 = *(v0 + 14616);
      *(v0 + 13456) = *(v0 + 14600);
      *(v0 + 13472) = v62;
      v63 = *(v0 + 14536);
      *(v0 + 13408) = *(v0 + 14552);
      *(v0 + 15984) = 4;
      *(v0 + 13488) = *(v0 + 14632);
      *(v0 + 13392) = v63;
      v109[0] = v107;
      v109[1] = v19;
      v109[2] = v15;
      v110 = v16;
      v64 = v55 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
      v65 = *(v64 + 8);
      v66 = *(v64 + 16);
      v67 = *(v64 + 24);
      *v111 = *v64;
      *&v111[8] = v65;
      *&v111[16] = v66;
      v112 = v67;

      outlined copy of MLS.AllMember();
      v68 = specialized static MLS.AllMember.== infix(_:_:)(v109, v111);
      outlined consume of MLS.AllMember();
      v105 = (*v57 + 384);
      v108 = (*v105 + **v105);
      v69 = (*v105)[1];
      v70 = swift_task_alloc();
      *(v0 + 22616) = v70;
      *v70 = v0;
      v70[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

      return (v108)(v0 + 15888, v0 + 13392, 1, v68 & 1);
    }

    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
  }

  v39 = *(v0 + 21288);
  v40 = *(v0 + 21280);
  v41 = *(v0 + 21272);
  v42 = *(v0 + 21248);
  v43 = *(v0 + 21240);
  v44 = *(v0 + 21232);
  v45 = *(v0 + 21224);
  v46 = *(v0 + 21200);
  v47 = *(v0 + 21192);
  v48 = *(v0 + 21184);
  v71 = *(v0 + 21176);
  v72 = *(v0 + 21168);
  v73 = *(v0 + 21160);
  v74 = *(v0 + 21152);
  v75 = *(v0 + 21144);
  v76 = *(v0 + 21136);
  v77 = *(v0 + 21112);
  v78 = *(v0 + 21104);
  v79 = *(v0 + 21096);
  v80 = *(v0 + 21072);
  v81 = *(v0 + 21064);
  v82 = *(v0 + 21056);
  v83 = *(v0 + 21048);
  v84 = *(v0 + 21040);
  v85 = *(v0 + 21032);
  v86 = *(v0 + 21008);
  v87 = *(v0 + 21000);
  v88 = *(v0 + 20992);
  v89 = *(v0 + 20984);
  v90 = *(v0 + 20976);
  v91 = *(v0 + 20968);
  v92 = *(v0 + 20944);
  v93 = *(v0 + 20920);
  v94 = *(v0 + 20912);
  v95 = *(v0 + 20904);
  v97 = *(v0 + 20896);
  v100 = *(v0 + 20864);
  v102 = *(v0 + 20840);
  v104 = *(v0 + 20816);

  v49 = *(v0 + 8);

  return v49();
}

{
  v1 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 20840);
  outlined destroy of NSObject?(*(v0 + 20816), &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  (*(v2 + 8))(v1, v3);
  outlined destroy of MLS.Group(v0 + 14536);
  outlined destroy of NSObject?(v0 + 17560, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v4, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);

  v46 = *(v0 + 22624);
  v5 = *(v0 + 21288);
  v6 = *(v0 + 21280);
  v7 = *(v0 + 21272);
  v8 = *(v0 + 21248);
  v9 = *(v0 + 21240);
  v10 = *(v0 + 21232);
  v11 = *(v0 + 21224);
  v12 = *(v0 + 21200);
  v13 = *(v0 + 21192);
  v14 = *(v0 + 21184);
  v17 = *(v0 + 21176);
  v18 = *(v0 + 21168);
  v19 = *(v0 + 21160);
  v20 = *(v0 + 21152);
  v21 = *(v0 + 21144);
  v22 = *(v0 + 21136);
  v23 = *(v0 + 21112);
  v24 = *(v0 + 21104);
  v25 = *(v0 + 21096);
  v26 = *(v0 + 21072);
  v27 = *(v0 + 21064);
  v28 = *(v0 + 21056);
  v29 = *(v0 + 21048);
  v30 = *(v0 + 21040);
  v31 = *(v0 + 21032);
  v32 = *(v0 + 21008);
  v33 = *(v0 + 21000);
  v34 = *(v0 + 20992);
  v35 = *(v0 + 20984);
  v36 = *(v0 + 20976);
  v37 = *(v0 + 20968);
  v38 = *(v0 + 20944);
  v39 = *(v0 + 20920);
  v40 = *(v0 + 20912);
  v41 = *(v0 + 20904);
  v42 = *(v0 + 20896);
  v43 = *(v0 + 20864);
  v44 = *(v0 + 20840);
  v45 = *(v0 + 20816);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 20840);
  v5 = *(v0 + 20816);
  outlined destroy of NSObject?(v0 + 17560, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.Group(v0 + 14536);
  outlined destroy of NSObject?(v5, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  (*(v2 + 8))(v1, v3);
  outlined destroy of NSObject?(v4, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);

  v47 = *(v0 + 22640);
  v6 = *(v0 + 21288);
  v7 = *(v0 + 21280);
  v8 = *(v0 + 21272);
  v9 = *(v0 + 21248);
  v10 = *(v0 + 21240);
  v11 = *(v0 + 21232);
  v12 = *(v0 + 21224);
  v13 = *(v0 + 21200);
  v14 = *(v0 + 21192);
  v15 = *(v0 + 21184);
  v18 = *(v0 + 21176);
  v19 = *(v0 + 21168);
  v20 = *(v0 + 21160);
  v21 = *(v0 + 21152);
  v22 = *(v0 + 21144);
  v23 = *(v0 + 21136);
  v24 = *(v0 + 21112);
  v25 = *(v0 + 21104);
  v26 = *(v0 + 21096);
  v27 = *(v0 + 21072);
  v28 = *(v0 + 21064);
  v29 = *(v0 + 21056);
  v30 = *(v0 + 21048);
  v31 = *(v0 + 21040);
  v32 = *(v0 + 21032);
  v33 = *(v0 + 21008);
  v34 = *(v0 + 21000);
  v35 = *(v0 + 20992);
  v36 = *(v0 + 20984);
  v37 = *(v0 + 20976);
  v38 = *(v0 + 20968);
  v39 = *(v0 + 20944);
  v40 = *(v0 + 20920);
  v41 = *(v0 + 20912);
  v42 = *(v0 + 20904);
  v43 = *(v0 + 20896);
  v44 = *(v0 + 20864);
  v45 = *(v0 + 20840);
  v46 = *(v0 + 20816);

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2644];
  v7 = v0[2641];
  v8 = v0[2640];
  outlined consume of Data._Representation(v0[2721], v0[2722]);
  v1(v5, v8);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
  v50 = v0[2724];
  v9 = v0[2661];
  v10 = v0[2660];
  v11 = v0[2659];
  v12 = v0[2656];
  v13 = v0[2655];
  v14 = v0[2654];
  v15 = v0[2653];
  v16 = v0[2650];
  v17 = v0[2649];
  v18 = v0[2648];
  v21 = v0[2647];
  v22 = v0[2646];
  v23 = v0[2645];
  v24 = v0[2644];
  v25 = v0[2643];
  v26 = v0[2642];
  v27 = v0[2639];
  v28 = v0[2638];
  v29 = v0[2637];
  v30 = v0[2634];
  v31 = v0[2633];
  v32 = v0[2632];
  v33 = v0[2631];
  v34 = v0[2630];
  v35 = v0[2629];
  v36 = v0[2626];
  v37 = v0[2625];
  v38 = v0[2624];
  v39 = v0[2623];
  v40 = v0[2622];
  v41 = v0[2621];
  v42 = v0[2618];
  v43 = v0[2615];
  v44 = v0[2614];
  v45 = v0[2613];
  v46 = v0[2612];
  v47 = v0[2608];
  v48 = v0[2605];
  v49 = v0[2602];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  (*(v0[2628] + 8))(v0[2631], v0[2627]);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  v49 = v0[2728];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  v49 = v0[2734];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  v7 = v0[2641] + 8;
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of MLS.Group((v0 + 1414));
  outlined destroy of NSObject?((v0 + 2211), &_s15SecureMessaging3MLSO28IncomingDowngradeRecommendedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingDowngradeRecommendedVy_AC9AllMemberO10Foundation4DataVGMR);
  v49 = v0[2736];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2227), &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  v49 = v0[2747];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2227), &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  v49 = v0[2749];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2203), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v49 = v0[2752];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2203), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v49 = v0[2754];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2177), &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);
  v49 = v0[2757];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2177), &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);
  v49 = v0[2759];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  v8 = v0[2626];
  outlined destroy of NSObject?((v0 + 2177), &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);
  outlined destroy of NSObject?(v8, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  v50 = v0[2761];
  v9 = v0[2661];
  v10 = v0[2660];
  v11 = v0[2659];
  v12 = v0[2656];
  v13 = v0[2655];
  v14 = v0[2654];
  v15 = v0[2653];
  v16 = v0[2650];
  v17 = v0[2649];
  v18 = v0[2648];
  v21 = v0[2647];
  v22 = v0[2646];
  v23 = v0[2645];
  v24 = v0[2644];
  v25 = v0[2643];
  v26 = v0[2642];
  v27 = v0[2639];
  v28 = v0[2638];
  v29 = v0[2637];
  v30 = v0[2634];
  v31 = v0[2633];
  v32 = v0[2632];
  v33 = v0[2631];
  v34 = v0[2630];
  v35 = v0[2629];
  v36 = v0[2626];
  v37 = v0[2625];
  v38 = v0[2624];
  v39 = v0[2623];
  v40 = v0[2622];
  v41 = v0[2621];
  v42 = v0[2618];
  v43 = v0[2615];
  v44 = v0[2614];
  v45 = v0[2613];
  v46 = v0[2612];
  v47 = v0[2608];
  v48 = v0[2605];
  v49 = v0[2602];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2186), &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
  v49 = v0[2764];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2186), &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
  v49 = v0[2766];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  v8 = v0[2626];
  outlined destroy of NSObject?((v0 + 2186), &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
  outlined destroy of NSObject?(v8, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  v50 = v0[2768];
  v9 = v0[2661];
  v10 = v0[2660];
  v11 = v0[2659];
  v12 = v0[2656];
  v13 = v0[2655];
  v14 = v0[2654];
  v15 = v0[2653];
  v16 = v0[2650];
  v17 = v0[2649];
  v18 = v0[2648];
  v21 = v0[2647];
  v22 = v0[2646];
  v23 = v0[2645];
  v24 = v0[2644];
  v25 = v0[2643];
  v26 = v0[2642];
  v27 = v0[2639];
  v28 = v0[2638];
  v29 = v0[2637];
  v30 = v0[2634];
  v31 = v0[2633];
  v32 = v0[2632];
  v33 = v0[2631];
  v34 = v0[2630];
  v35 = v0[2629];
  v36 = v0[2626];
  v37 = v0[2625];
  v38 = v0[2624];
  v39 = v0[2623];
  v40 = v0[2622];
  v41 = v0[2621];
  v42 = v0[2618];
  v43 = v0[2615];
  v44 = v0[2614];
  v45 = v0[2613];
  v46 = v0[2612];
  v47 = v0[2608];
  v48 = v0[2605];
  v49 = v0[2602];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[2719];
  v53 = v0[2661];
  v2 = v0[2658];
  v49 = v0[2720];
  v51 = v0[2657];
  v3 = v0[2649];
  v4 = v0[2641];
  v5 = v0[2640];
  v6 = v0[2638];
  v7 = v0[2636];
  v8 = v0[2635];
  v9 = v0[2626];
  outlined consume of Data?(v0[2769], v0[2770]);
  v1(v6, v8);
  outlined destroy of NSObject?(v9, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v49(v3, v5);
  (*(v2 + 8))(v53, v51);
  v54 = v0[2772];
  v10 = v0[2661];
  v11 = v0[2660];
  v12 = v0[2659];
  v13 = v0[2656];
  v14 = v0[2655];
  v15 = v0[2654];
  v16 = v0[2653];
  v17 = v0[2650];
  v18 = v0[2649];
  v19 = v0[2648];
  v22 = v0[2647];
  v23 = v0[2646];
  v24 = v0[2645];
  v25 = v0[2644];
  v26 = v0[2643];
  v27 = v0[2642];
  v28 = v0[2639];
  v29 = v0[2638];
  v30 = v0[2637];
  v31 = v0[2634];
  v32 = v0[2633];
  v33 = v0[2632];
  v34 = v0[2631];
  v35 = v0[2630];
  v36 = v0[2629];
  v37 = v0[2626];
  v38 = v0[2625];
  v39 = v0[2624];
  v40 = v0[2623];
  v41 = v0[2622];
  v42 = v0[2621];
  v43 = v0[2618];
  v44 = v0[2615];
  v45 = v0[2614];
  v46 = v0[2613];
  v47 = v0[2612];
  v48 = v0[2608];
  v50 = v0[2605];
  v52 = v0[2602];

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  v49 = v0[2774];
  v8 = v0[2661];
  v9 = v0[2660];
  v10 = v0[2659];
  v11 = v0[2656];
  v12 = v0[2655];
  v13 = v0[2654];
  v14 = v0[2653];
  v15 = v0[2650];
  v16 = v0[2649];
  v17 = v0[2648];
  v20 = v0[2647];
  v21 = v0[2646];
  v22 = v0[2645];
  v23 = v0[2644];
  v24 = v0[2643];
  v25 = v0[2642];
  v26 = v0[2639];
  v27 = v0[2638];
  v28 = v0[2637];
  v29 = v0[2634];
  v30 = v0[2633];
  v31 = v0[2632];
  v32 = v0[2631];
  v33 = v0[2630];
  v34 = v0[2629];
  v35 = v0[2626];
  v36 = v0[2625];
  v37 = v0[2624];
  v38 = v0[2623];
  v39 = v0[2622];
  v40 = v0[2621];
  v41 = v0[2618];
  v42 = v0[2615];
  v43 = v0[2614];
  v44 = v0[2613];
  v45 = v0[2612];
  v46 = v0[2608];
  v47 = v0[2605];
  v48 = v0[2602];

  v18 = v0[1];

  return v18();
}

{
  v1 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 21128) + 8;
  (*(v0 + 21760))(*(v0 + 21192), *(v0 + 21120));
  (*(v2 + 8))(v1, v3);
  v46 = *(v0 + 22208);
  v5 = *(v0 + 21288);
  v6 = *(v0 + 21280);
  v7 = *(v0 + 21272);
  v8 = *(v0 + 21248);
  v9 = *(v0 + 21240);
  v10 = *(v0 + 21232);
  v11 = *(v0 + 21224);
  v12 = *(v0 + 21200);
  v13 = *(v0 + 21192);
  v14 = *(v0 + 21184);
  v17 = *(v0 + 21176);
  v18 = *(v0 + 21168);
  v19 = *(v0 + 21160);
  v20 = *(v0 + 21152);
  v21 = *(v0 + 21144);
  v22 = *(v0 + 21136);
  v23 = *(v0 + 21112);
  v24 = *(v0 + 21104);
  v25 = *(v0 + 21096);
  v26 = *(v0 + 21072);
  v27 = *(v0 + 21064);
  v28 = *(v0 + 21056);
  v29 = *(v0 + 21048);
  v30 = *(v0 + 21040);
  v31 = *(v0 + 21032);
  v32 = *(v0 + 21008);
  v33 = *(v0 + 21000);
  v34 = *(v0 + 20992);
  v35 = *(v0 + 20984);
  v36 = *(v0 + 20976);
  v37 = *(v0 + 20968);
  v38 = *(v0 + 20944);
  v39 = *(v0 + 20920);
  v40 = *(v0 + 20912);
  v41 = *(v0 + 20904);
  v42 = *(v0 + 20896);
  v43 = *(v0 + 20864);
  v44 = *(v0 + 20840);
  v45 = *(v0 + 20816);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  v4 = v0[2649];
  v5 = v0[2641];
  v6 = v0[2640];
  (*(v0[2610] + 8))(v0[2615], v0[2609]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v48 = v0[2779];
  v7 = v0[2661];
  v8 = v0[2660];
  v9 = v0[2659];
  v10 = v0[2656];
  v11 = v0[2655];
  v12 = v0[2654];
  v13 = v0[2653];
  v14 = v0[2650];
  v15 = v0[2649];
  v16 = v0[2648];
  v19 = v0[2647];
  v20 = v0[2646];
  v21 = v0[2645];
  v22 = v0[2644];
  v23 = v0[2643];
  v24 = v0[2642];
  v25 = v0[2639];
  v26 = v0[2638];
  v27 = v0[2637];
  v28 = v0[2634];
  v29 = v0[2633];
  v30 = v0[2632];
  v31 = v0[2631];
  v32 = v0[2630];
  v33 = v0[2629];
  v34 = v0[2626];
  v35 = v0[2625];
  v36 = v0[2624];
  v37 = v0[2623];
  v38 = v0[2622];
  v39 = v0[2621];
  v40 = v0[2618];
  v41 = v0[2615];
  v42 = v0[2614];
  v43 = v0[2613];
  v44 = v0[2612];
  v45 = v0[2608];
  v46 = v0[2605];
  v47 = v0[2602];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  v4 = v0[2649];
  v5 = v0[2641];
  v6 = v0[2640];
  (*(v0[2610] + 8))(v0[2615], v0[2609]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v48 = v0[2781];
  v7 = v0[2661];
  v8 = v0[2660];
  v9 = v0[2659];
  v10 = v0[2656];
  v11 = v0[2655];
  v12 = v0[2654];
  v13 = v0[2653];
  v14 = v0[2650];
  v15 = v0[2649];
  v16 = v0[2648];
  v19 = v0[2647];
  v20 = v0[2646];
  v21 = v0[2645];
  v22 = v0[2644];
  v23 = v0[2643];
  v24 = v0[2642];
  v25 = v0[2639];
  v26 = v0[2638];
  v27 = v0[2637];
  v28 = v0[2634];
  v29 = v0[2633];
  v30 = v0[2632];
  v31 = v0[2631];
  v32 = v0[2630];
  v33 = v0[2629];
  v34 = v0[2626];
  v35 = v0[2625];
  v36 = v0[2624];
  v37 = v0[2623];
  v38 = v0[2622];
  v39 = v0[2621];
  v40 = v0[2618];
  v41 = v0[2615];
  v42 = v0[2614];
  v43 = v0[2613];
  v44 = v0[2612];
  v45 = v0[2608];
  v46 = v0[2605];
  v47 = v0[2602];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  v51 = v0[2608];
  v8 = v0[2607];
  v9 = v0[2606];
  outlined destroy of NSObject?((v0 + 2267), &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2235), &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v8 + 8))(v51, v9);
  v52 = v0[2787];
  v10 = v0[2661];
  v11 = v0[2660];
  v12 = v0[2659];
  v13 = v0[2656];
  v14 = v0[2655];
  v15 = v0[2654];
  v16 = v0[2653];
  v17 = v0[2650];
  v18 = v0[2649];
  v19 = v0[2648];
  v22 = v0[2647];
  v23 = v0[2646];
  v24 = v0[2645];
  v25 = v0[2644];
  v26 = v0[2643];
  v27 = v0[2642];
  v28 = v0[2639];
  v29 = v0[2638];
  v30 = v0[2637];
  v31 = v0[2634];
  v32 = v0[2633];
  v33 = v0[2632];
  v34 = v0[2631];
  v35 = v0[2630];
  v36 = v0[2629];
  v37 = v0[2626];
  v38 = v0[2625];
  v39 = v0[2624];
  v40 = v0[2623];
  v41 = v0[2622];
  v42 = v0[2621];
  v43 = v0[2618];
  v44 = v0[2615];
  v45 = v0[2614];
  v46 = v0[2613];
  v47 = v0[2612];
  v48 = v0[2608];
  v49 = v0[2605];
  v50 = v0[2602];

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  v51 = v0[2608];
  v8 = v0[2607];
  v9 = v0[2606];
  outlined destroy of NSObject?((v0 + 2267), &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2235), &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v8 + 8))(v51, v9);
  v52 = v0[2789];
  v10 = v0[2661];
  v11 = v0[2660];
  v12 = v0[2659];
  v13 = v0[2656];
  v14 = v0[2655];
  v15 = v0[2654];
  v16 = v0[2653];
  v17 = v0[2650];
  v18 = v0[2649];
  v19 = v0[2648];
  v22 = v0[2647];
  v23 = v0[2646];
  v24 = v0[2645];
  v25 = v0[2644];
  v26 = v0[2643];
  v27 = v0[2642];
  v28 = v0[2639];
  v29 = v0[2638];
  v30 = v0[2637];
  v31 = v0[2634];
  v32 = v0[2633];
  v33 = v0[2632];
  v34 = v0[2631];
  v35 = v0[2630];
  v36 = v0[2629];
  v37 = v0[2626];
  v38 = v0[2625];
  v39 = v0[2624];
  v40 = v0[2623];
  v41 = v0[2622];
  v42 = v0[2621];
  v43 = v0[2618];
  v44 = v0[2615];
  v45 = v0[2614];
  v46 = v0[2613];
  v47 = v0[2612];
  v48 = v0[2608];
  v49 = v0[2605];
  v50 = v0[2602];

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2641];
  v7 = v0[2640];
  v51 = v0[2608];
  v8 = v0[2607];
  v9 = v0[2606];
  outlined destroy of NSObject?((v0 + 2235), &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?((v0 + 2267), &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  (*(v8 + 8))(v51, v9);
  v52 = v0[2791];
  v10 = v0[2661];
  v11 = v0[2660];
  v12 = v0[2659];
  v13 = v0[2656];
  v14 = v0[2655];
  v15 = v0[2654];
  v16 = v0[2653];
  v17 = v0[2650];
  v18 = v0[2649];
  v19 = v0[2648];
  v22 = v0[2647];
  v23 = v0[2646];
  v24 = v0[2645];
  v25 = v0[2644];
  v26 = v0[2643];
  v27 = v0[2642];
  v28 = v0[2639];
  v29 = v0[2638];
  v30 = v0[2637];
  v31 = v0[2634];
  v32 = v0[2633];
  v33 = v0[2632];
  v34 = v0[2631];
  v35 = v0[2630];
  v36 = v0[2629];
  v37 = v0[2626];
  v38 = v0[2625];
  v39 = v0[2624];
  v40 = v0[2623];
  v41 = v0[2622];
  v42 = v0[2621];
  v43 = v0[2618];
  v44 = v0[2615];
  v45 = v0[2614];
  v46 = v0[2613];
  v47 = v0[2612];
  v48 = v0[2608];
  v49 = v0[2605];
  v50 = v0[2602];

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  (*(v0[2641] + 8))(v0[2649], v0[2640]);
  (*(v2 + 8))(v1, v3);
  outlined destroy of NSObject?((v0 + 2251), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v45 = v0[2820];
  v4 = v0[2661];
  v5 = v0[2660];
  v6 = v0[2659];
  v7 = v0[2656];
  v8 = v0[2655];
  v9 = v0[2654];
  v10 = v0[2653];
  v11 = v0[2650];
  v12 = v0[2649];
  v13 = v0[2648];
  v16 = v0[2647];
  v17 = v0[2646];
  v18 = v0[2645];
  v19 = v0[2644];
  v20 = v0[2643];
  v21 = v0[2642];
  v22 = v0[2639];
  v23 = v0[2638];
  v24 = v0[2637];
  v25 = v0[2634];
  v26 = v0[2633];
  v27 = v0[2632];
  v28 = v0[2631];
  v29 = v0[2630];
  v30 = v0[2629];
  v31 = v0[2626];
  v32 = v0[2625];
  v33 = v0[2624];
  v34 = v0[2623];
  v35 = v0[2622];
  v36 = v0[2621];
  v37 = v0[2618];
  v38 = v0[2615];
  v39 = v0[2614];
  v40 = v0[2613];
  v41 = v0[2612];
  v42 = v0[2608];
  v43 = v0[2605];
  v44 = v0[2602];

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  v4 = v0[2649];
  v5 = v0[2641];
  v6 = v0[2640];
  outlined destroy of NSObject?((v0 + 2251), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v48 = v0[2822];
  v7 = v0[2661];
  v8 = v0[2660];
  v9 = v0[2659];
  v10 = v0[2656];
  v11 = v0[2655];
  v12 = v0[2654];
  v13 = v0[2653];
  v14 = v0[2650];
  v15 = v0[2649];
  v16 = v0[2648];
  v19 = v0[2647];
  v20 = v0[2646];
  v21 = v0[2645];
  v22 = v0[2644];
  v23 = v0[2643];
  v24 = v0[2642];
  v25 = v0[2639];
  v26 = v0[2638];
  v27 = v0[2637];
  v28 = v0[2634];
  v29 = v0[2633];
  v30 = v0[2632];
  v31 = v0[2631];
  v32 = v0[2630];
  v33 = v0[2629];
  v34 = v0[2626];
  v35 = v0[2625];
  v36 = v0[2624];
  v37 = v0[2623];
  v38 = v0[2622];
  v39 = v0[2621];
  v40 = v0[2618];
  v41 = v0[2615];
  v42 = v0[2614];
  v43 = v0[2613];
  v44 = v0[2612];
  v45 = v0[2608];
  v46 = v0[2605];
  v47 = v0[2602];

  v17 = v0[1];

  return v17();
}