unint64_t sub_1DA7AC344()
{
  result = qword_1EE115A50;
  if (!qword_1EE115A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE115A50);
  }

  return result;
}

char *sub_1DA7AC494(void *a1, void *a2, void *a3)
{
  v79 = a2;
  v86 = a1;
  v4 = sub_1DA9407F4();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  MEMORY[0x1EEE9AC00]();
  v83 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1DA940FC4();
  v78 = *(v80 - 8);
  v7 = v78[8];
  MEMORY[0x1EEE9AC00]();
  v9 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_1DA940F74() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v11 = sub_1DA940854();
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_delegate;
  *(a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v77 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue;
  v76[1] = sub_1DA7AC344();
  v76[0] = "queue_observerTransaction";
  sub_1DA940824();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (v78[13])(v9, *MEMORY[0x1E69E8090], v80);
  v80 = v14;
  *&v77[a3] = sub_1DA941004();
  *(a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue_serverConnection) = 0;
  v16 = objc_opt_self();
  v17 = v79;
  v18 = [v16 tokenFromNSXPCConnection_];
  *(v15 + 1) = &off_1F5636540;
  swift_unknownObjectWeakAssign();
  *(a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientConnection) = v17;
  *(a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientAuditToken) = v18;
  v78 = v17;
  v79 = v18;
  v19 = [v79 bundleID];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1DA940A14();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = (a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier);
  *v24 = v21;
  v24[1] = v23;
  v25 = type metadata accessor for NotificationServiceConnection();
  v94.receiver = a3;
  v94.super_class = v25;
  v26 = objc_msgSendSuper2(&v94, sel_init);
  v27 = qword_1EE115AA0;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_1DA9405A4();
  __swift_project_value_buffer(v29, qword_1EE11B068);
  v30 = sub_1DA940584();
  v31 = sub_1DA940EF4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136446210;
    v34 = &v28[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
    if (*&v28[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v35 = *v34;
      v36 = v34[1];
    }

    else
    {
      v36 = 0xE300000000000000;
      v35 = 7104878;
    }

    v37 = sub_1DA7AE6E8(v35, v36, &aBlock);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_1DA7A9000, v30, v31, "[%{public}s] Client connection accepted", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12739F0](v33, -1, -1);
    MEMORY[0x1E12739F0](v32, -1, -1);
  }

  v38 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientConnection;
  v39 = *&v28[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientConnection];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 serverInterface];
  [v41 setExportedInterface_];

  v43 = *&v28[v38];
  v44 = v28;
  [v43 setExportedObject_];
  v45 = *&v28[v38];
  v46 = [v40 clientInterface];
  [v45 setRemoteObjectInterface_];

  v47 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue;
  [*&v28[v38] _setQueue_];
  v48 = *&v28[v38];
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = sub_1DA8A5CE4;
  v93 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1DA7AF1D0;
  v91 = &block_descriptor_14;
  v50 = _Block_copy(&aBlock);
  v51 = v48;

  [v51 setInterruptionHandler_];
  _Block_release(v50);

  v52 = *&v28[v38];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = sub_1DA8A5CEC;
  v93 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1DA7AF1D0;
  v91 = &block_descriptor_23;
  v54 = _Block_copy(&aBlock);
  v55 = v52;

  [v55 setInvalidationHandler_];
  _Block_release(v54);

  [*&v28[v38] resume];
  v56 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientAuditToken;
  v57 = *&v44[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientAuditToken];
  v58 = sub_1DA940A04();
  v59 = [v57 hasEntitlement_];

  v60 = *&v44[v56];
  if (*&v44[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
  {
    v61 = *&v44[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
    v62 = v60;

    v63 = sub_1DA940A04();
  }

  else
  {
    v64 = v60;
    v63 = 0;
  }

  v65 = [objc_allocWithZone(MEMORY[0x1E6983280]) initWithAuditToken:v60 bundleIdentifier:v63 internalTool:v59];

  v66 = *&v44[v47];
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = v66;

  v68 = swift_allocObject();
  *(v68 + 16) = v67;
  *(v68 + 24) = v65;
  v92 = sub_1DA7AF214;
  v93 = v68;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1DA7AF1D0;
  v91 = &block_descriptor_30;
  v69 = _Block_copy(&aBlock);

  v70 = v65;
  v71 = v80;
  sub_1DA940824();
  v87 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  v72 = v83;
  v73 = v85;
  sub_1DA9411D4();
  v74 = v77;
  MEMORY[0x1E12720D0](0, v71, v72, v69);
  _Block_release(v69);

  (*(v84 + 8))(v72, v73);
  (*(v81 + 8))(v71, v82);

  return v44;
}

uint64_t sub_1DA7ACF24()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7ACF60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA7ACFA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA7ACFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA7AD038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA7AD080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA7AD0C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA7AD11C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA7AD164(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DA7B6C7C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1DA9413C4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1DA7AD270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DA7AD2CC(uint64_t a1, unint64_t a2)
{
  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE11B068);
  v6 = v2;

  v7 = sub_1DA940584();
  v8 = sub_1DA940EF4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446466;
    v11 = &v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
    if (*&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v12 = *v11;
      v13 = v11[1];
    }

    else
    {
      v12 = 7104878;
      v13 = 0xE300000000000000;
    }

    v14 = sub_1DA7AE6E8(v12, v13, aBlock);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v7, v8, "[%{public}s] Starting entitlement check: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v10, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  v15 = &v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
  v17 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
  v16 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
  if (v16)
  {
    v18 = v17 == a1 && v16 == a2;
    if (v18 || (v19 = *v15, v20 = *(v15 + 1), (sub_1DA941684() & 1) != 0))
    {
      v21 = v6;
      v22 = sub_1DA940584();
      v23 = sub_1DA940EF4();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136446210;

        v26 = sub_1DA7AE6E8(v17, v16, aBlock);

        *(v24 + 4) = v26;
        v27 = "[%{public}s] Entitlement check success: matching bundle identifiers";
LABEL_52:
        _os_log_impl(&dword_1DA7A9000, v22, v23, v27, v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1E12739F0](v25, -1, -1);
        MEMORY[0x1E12739F0](v24, -1, -1);
        goto LABEL_53;
      }

      goto LABEL_53;
    }
  }

  v28 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientAuditToken];
  v29 = sub_1DA940A04();
  v30 = [v28 hasEntitlement_];

  if (v30)
  {
    v31 = v6;
    v22 = sub_1DA940584();
    v23 = sub_1DA940EF4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      if (v16)
      {
        v32 = v16;
      }

      else
      {
        v17 = 7104878;
        v32 = 0xE300000000000000;
      }

      v33 = sub_1DA7AE6E8(v17, v32, aBlock);

      *(v24 + 4) = v33;
      v27 = "[%{public}s] Entitlement check success: simulator";
      goto LABEL_52;
    }

LABEL_53:

    return 1;
  }

  v34 = sub_1DA940A04();
  v35 = [v28 hasEntitlement_];

  if (v35)
  {
    v36 = v6;
    v22 = sub_1DA940584();
    v23 = sub_1DA940EF4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      if (v16)
      {
        v37 = v16;
      }

      else
      {
        v17 = 7104878;
        v37 = 0xE300000000000000;
      }

      v38 = sub_1DA7AE6E8(v17, v37, aBlock);

      *(v24 + 4) = v38;
      v27 = "[%{public}s] Entitlement check success: registrar proxy";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v39 = sub_1DA940A04();
  v40 = [v28 hasEntitlement_];

  if (v40)
  {
    v41 = v6;
    v22 = sub_1DA940584();
    v23 = sub_1DA940EF4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      if (v16)
      {
        v42 = v16;
      }

      else
      {
        v17 = 7104878;
        v42 = 0xE300000000000000;
      }

      v43 = sub_1DA7AE6E8(v17, v42, aBlock);

      *(v24 + 4) = v43;
      v27 = "[%{public}s] Entitlement check success: scheduler proxy";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v44 = sub_1DA940A04();
  v45 = [v28 hasEntitlement_];

  if (v45)
  {
    v46 = v6;
    v22 = sub_1DA940584();
    v23 = sub_1DA940EF4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      if (v16)
      {
        v47 = v16;
      }

      else
      {
        v17 = 7104878;
        v47 = 0xE300000000000000;
      }

      v48 = sub_1DA7AE6E8(v17, v47, aBlock);

      *(v24 + 4) = v48;
      v27 = "[%{public}s] Entitlement check success: scheduling proxy";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v49 = sub_1DA940A04();
  v50 = [v28 hasEntitlement_];

  if (v50)
  {
    v51 = v6;
    v22 = sub_1DA940584();
    v23 = sub_1DA940EF4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      if (v16)
      {
        v52 = v16;
      }

      else
      {
        v17 = 7104878;
        v52 = 0xE300000000000000;
      }

      v53 = sub_1DA7AE6E8(v17, v52, aBlock);

      *(v24 + 4) = v53;
      v27 = "[%{public}s] Entitlement check success: user notification center proxy";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (sub_1DA7B34EC(0xD000000000000036, 0x80000001DA953760, a1, a2))
  {
    v54 = v6;
    v22 = sub_1DA940584();
    v23 = sub_1DA940EF4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      if (v16)
      {
        v55 = v16;
      }

      else
      {
        v17 = 7104878;
        v55 = 0xE300000000000000;
      }

      v56 = sub_1DA7AE6E8(v17, v55, aBlock);

      *(v24 + 4) = v56;
      v27 = "[%{public}s] Entitlement check success: bundle-identifiers";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v58 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v59 = sub_1DA8BF4E0(a1, a2, 1);
  v60 = [v59 managementDomain];
  sub_1DA940A14();

  v61 = sub_1DA940AC4();

  if (v61 > 0)
  {
    v62 = [v59 managementDomain];
    v63 = sub_1DA940A14();
    v65 = v64;

    LOBYTE(v62) = sub_1DA7B34EC(0xD00000000000003ALL, 0x80000001DA9537D0, v63, v65);

    if (v62)
    {
      v66 = v59;
      v67 = v6;
      v68 = sub_1DA940584();
      v69 = sub_1DA940EF4();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        aBlock[0] = v71;
        *v70 = 136446210;
        if (v16)
        {
          v72 = v16;
        }

        else
        {
          v17 = 7104878;
          v72 = 0xE300000000000000;
        }

        v73 = sub_1DA7AE6E8(v17, v72, aBlock);

        *(v70 + 4) = v73;
        _os_log_impl(&dword_1DA7A9000, v68, v69, "[%{public}s] Entitlement check success: app-management-domains", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x1E12739F0](v71, -1, -1);
        MEMORY[0x1E12739F0](v70, -1, -1);
      }

      return 1;
    }
  }

  if (v16)
  {
    v74 = objc_allocWithZone(MEMORY[0x1E69635D0]);

    v75 = sub_1DA896518();
    if (v75)
    {
      v125 = v75;
      v83 = [v75 containingBundleRecord];
      if (!v83)
      {

        goto LABEL_65;
      }

      v84 = v83;
      v85 = [v83 bundleIdentifier];
      if (!v85)
      {

        goto LABEL_65;
      }

      v124 = v84;
      v86 = v85;
      v87 = sub_1DA940A14();
      v89 = v88;

      if (v87 == a1 && v89 == a2)
      {
      }

      else
      {
        v90 = sub_1DA941684();

        if ((v90 & 1) == 0)
        {

          goto LABEL_65;
        }
      }

      v91 = swift_allocObject();
      *(v91 + 16) = 1;
      v92 = [v125 extensionPointRecord];
      v93 = [v92 name];

      v94 = sub_1DA940A14();
      v96 = v95;

      if (v94 == 0xD000000000000023 && 0x80000001DA9537A0 == v96)
      {
      }

      else
      {
        v97 = sub_1DA941684();

        if ((v97 & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      v98 = [v125 bundleIdentifier];
      if (v98)
      {
        v123 = v98;
        v121 = sub_1DA940A14();
        v100 = v99;
        v101 = sub_1DA7AEA10();
        if (v101)
        {
          log = v101;
          if (([v101 respondsToSelector:sel_isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier_completionHandler_]& 1) != 0)
          {
            v102 = v6;
            swift_unknownObjectRetain();
            v103 = sub_1DA940584();
            v104 = sub_1DA940EF4();
            v120 = v102;

            v119 = v104;
            v105 = v104;
            v106 = v103;
            if (os_log_type_enabled(v103, v105))
            {
              v107 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              aBlock[0] = v118;
              *v107 = 136446210;

              v108 = sub_1DA7AE6E8(v17, v16, aBlock);

              *(v107 + 4) = v108;
              _os_log_impl(&dword_1DA7A9000, v106, v119, "[%{public}s] Checking service extension access", v107, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v118);
              MEMORY[0x1E12739F0](v118, -1, -1);
              MEMORY[0x1E12739F0](v107, -1, -1);
            }

            else
            {
            }

            v109 = swift_allocObject();
            v109[2] = v120;
            v109[3] = v121;
            v109[4] = v100;
            v109[5] = v91;
            aBlock[4] = sub_1DA898410;
            aBlock[5] = v109;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1DA7B43C0;
            aBlock[3] = &block_descriptor_213;
            v110 = _Block_copy(aBlock);
            v111 = v120;

            [log isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:v123 completionHandler:v110];
            swift_unknownObjectRelease_n();
            _Block_release(v110);

            goto LABEL_95;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

LABEL_95:
      swift_beginAccess();
      if (*(v91 + 16) == 1)
      {
        v112 = v6;
        v113 = sub_1DA940584();
        v114 = sub_1DA940EF4();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v127[0] = v116;
          *v115 = 136446210;

          v117 = sub_1DA7AE6E8(v17, v16, v127);

          *(v115 + 4) = v117;
          _os_log_impl(&dword_1DA7A9000, v113, v114, "[%{public}s] Entitlement check success: service extension", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v116);
          MEMORY[0x1E12739F0](v116, -1, -1);
          MEMORY[0x1E12739F0](v115, -1, -1);
        }

        return 1;
      }
    }
  }

LABEL_65:
  v76 = v6;
  v77 = sub_1DA940584();
  v78 = sub_1DA940F14();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v127[0] = v80;
    *v79 = 136446466;
    if (v16)
    {
      v81 = v16;
    }

    else
    {
      v17 = 7104878;
      v81 = 0xE300000000000000;
    }

    v82 = sub_1DA7AE6E8(v17, v81, v127);

    *(v79 + 4) = v82;
    *(v79 + 12) = 2082;
    *(v79 + 14) = sub_1DA7AE6E8(0xD000000000000036, 0x80000001DA953760, v127);
    _os_log_impl(&dword_1DA7A9000, v77, v78, "[%{public}s] Entitlement '%{public}s' required to request user notifications", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v80, -1, -1);
    MEMORY[0x1E12739F0](v79, -1, -1);
  }

  return 0;
}

uint64_t sub_1DA7AE560()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DA7AE6E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DA7AD164(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DA7AD270(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DA7AEA10()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue_serverConnection;
  v2 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue_serverConnection);
  if (!v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithMachServiceName:*MEMORY[0x1E6983438] options:0];
    v4 = objc_opt_self();
    v5 = [v4 serverInterface];
    [v3 setRemoteObjectInterface_];

    v6 = [v4 clientInterface];
    [v3 setExportedInterface_];

    [v3 setExportedObject_];
    [v3 _setQueue_];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = sub_1DA89841C;
    v22 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1DA7AF1D0;
    v20 = &block_descriptor_219;
    v8 = _Block_copy(&aBlock);

    [v3 setInterruptionHandler_];
    _Block_release(v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = sub_1DA898440;
    v22 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1DA7AF1D0;
    v20 = &block_descriptor_223;
    v10 = _Block_copy(&aBlock);

    [v3 setInvalidationHandler_];
    _Block_release(v10);
    v11 = *(v0 + v1);
    *(v0 + v1) = v3;
    v12 = v3;

    [v12 resume];
    v2 = *(v0 + v1);
    if (!v2)
    {
      return 0;
    }
  }

  v13 = v2;
  v14 = [v13 remoteObjectProxy];
  sub_1DA941154();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6070, &unk_1DA95DDF0);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA7AED2C()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7AED8C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  LOBYTE(a1) = sub_1DA7AEE18((a2 + 8), a1);
  result = swift_endAccess();
  *a2 = a1 & 1;
  return result;
}

uint64_t sub_1DA7AEE18(void *a1, void *a2)
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

    v8 = a2;

    v9 = sub_1DA941274();

    if (v9)
    {

      type metadata accessor for NotificationServiceConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1DA941264();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1DA8A9D7C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1DA8AA8B8(v22 + 1, &qword_1ECBD56C8, &unk_1DA95F380);
    }

    v20 = v8;
    sub_1DA8AADFC(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for NotificationServiceConnection();
  v11 = *(v6 + 40);
  v12 = sub_1DA941104();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1DA7AF040(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1DA941114();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void sub_1DA7AF040(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DA8AA8B8(v6 + 1, &qword_1ECBD56C8, &unk_1DA95F380);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DA8ABCB0(&qword_1ECBD56C8, &unk_1DA95F380);
      goto LABEL_12;
    }

    sub_1DA8AC6A0(v6 + 1, &qword_1ECBD56C8, &unk_1DA95F380);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1DA941104();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for NotificationServiceConnection();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1DA941114();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DA9416D4();
  __break(1u);
}

uint64_t sub_1DA7AF1D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1DA7AF21C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1DA7AEA10();
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        [v6 setConnectionDetails_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t objectdestroy_26Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_26Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DA7AF348(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_1DA940A14();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_1DA7AF3EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1DA7AF44C(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getNotificationSettings: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA7AF9F0;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7AF9C8;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B00D0;
      aBlock[3] = &block_descriptor_194;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getNotificationSettingsForBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getNotificationSettings not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  v35 = [objc_opt_self() emptySettings];
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7AF9C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DA7AFA04(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  sub_1DA940A94();
  _Block_copy(a5);
  v11 = os_transaction_create();

  v12 = sub_1DA7AEA10();
  if (v12)
  {
    v13 = v12;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v37 = v11;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v14 = sub_1DA9405A4();
      __swift_project_value_buffer(v14, qword_1EE11B068);
      v15 = a4;

      v16 = sub_1DA940584();
      v17 = sub_1DA940EF4();

      if (os_log_type_enabled(v16, v17))
      {
        v36 = a1;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        v20 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v20)
        {
          v21 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v22 = v20;
        }

        else
        {
          v21 = 7104878;
          v22 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v21, v22, aBlock);

        *(v18 + 4) = v32;
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v16, v17, "[%{public}s] Forwarding requestAuthorization: %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v19, -1, -1);
        MEMORY[0x1E12739F0](v18, -1, -1);

        a1 = v36;
      }

      else
      {
      }

      v33 = sub_1DA940A04();
      v34 = swift_allocObject();
      v34[2] = sub_1DA7B4464;
      v34[3] = v10;
      v34[4] = v37;
      aBlock[4] = sub_1DA7B4438;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_204;
      v35 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v13 requestAuthorizationWithOptions:a1 forBundleIdentifier:v33 completionHandler:v35];
      _Block_release(v35);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11B068);
  v24 = a4;

  v25 = sub_1DA940584();
  v26 = sub_1DA940F14();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446466;
    if (*&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v29 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v25, v26, "[%{public}s] requestAuthorization not allowed: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v28, -1, -1);
    MEMORY[0x1E12739F0](v27, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v38 = sub_1DA93F8B4();
  (a5)[2](a5, 0, v38);

  swift_unknownObjectRelease();
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1DA7B00D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1DA7B0298(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getNotificationCategories: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA7B1E4C;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B1E80;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1CD4;
      aBlock[3] = &block_descriptor_185;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getNotificationCategoriesForBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getNotificationCategories not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1DA941264())
  {
    sub_1DA84DA40(MEMORY[0x1E69E7CC0]);
  }

  sub_1DA7AF3EC(0, &unk_1EE114DB8, 0x1E6983278);
  sub_1DA7B0D88(&qword_1EE114DB0, &unk_1EE114DB8, 0x1E6983278);
  v35 = sub_1DA940E84();
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

UNCNotificationActionRecord *UNNotificationActionToUNCNotificationActionRecord_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 options];
  v4 = objc_alloc_init(UNCNotificationActionRecord);
  [(UNCNotificationActionRecord *)v4 setAuthenticationRequired:v3 & 1];
  [(UNCNotificationActionRecord *)v4 setDestructive:(v3 >> 1) & 1];
  [(UNCNotificationActionRecord *)v4 setForeground:(v3 >> 2) & 1];
  [(UNCNotificationActionRecord *)v4 setShouldPreventNotificationDismiss:(v3 >> 16) & 1];
  v5 = [v2 identifier];
  [(UNCNotificationActionRecord *)v4 setIdentifier:v5];

  v6 = [v2 url];
  [(UNCNotificationActionRecord *)v4 setUrl:v6];

  v7 = [v2 icon];
  v8 = [v7 imageName];
  [(UNCNotificationActionRecord *)v4 setIconImageName:v8];

  v9 = [v2 icon];
  -[UNCNotificationActionRecord setHasSystemIcon:](v4, "setHasSystemIcon:", [v9 isSystemIcon]);

  v10 = [v2 title];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 un_localizedStringKey];
    [(UNCNotificationActionRecord *)v4 setTitleLocalizationKey:v11];

    v12 = [v10 un_localizedStringArguments];
    [(UNCNotificationActionRecord *)v4 setTitleLocalizationArguments:v12];

    v13 = [v10 un_localizedStringValue];
    [(UNCNotificationActionRecord *)v4 setTitle:v13];
  }

  else
  {
    [(UNCNotificationActionRecord *)v4 setTitle:v10];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNCNotificationActionRecord *)v4 setActionType:@"TextInput"];
    v14 = [v2 textInputButtonTitle];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 un_localizedStringKey];
      [(UNCNotificationActionRecord *)v4 setTextInputButtonTitleLocalizationKey:v15];

      v16 = [v14 un_localizedStringArguments];
      [(UNCNotificationActionRecord *)v4 setTextInputButtonTitleLocalizationArguments:v16];

      v17 = [v14 un_localizedStringValue];
      [(UNCNotificationActionRecord *)v4 setTextInputButtonTitle:v17];
    }

    else
    {
      [(UNCNotificationActionRecord *)v4 setTextInputButtonTitle:v14];
    }

    v18 = [v2 textInputPlaceholder];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 un_localizedStringKey];
      [(UNCNotificationActionRecord *)v4 setTextInputPlaceholderLocalizationKey:v19];

      v20 = [v18 un_localizedStringArguments];
      [(UNCNotificationActionRecord *)v4 setTextInputPlaceholderLocalizationArguments:v20];

      v21 = [v18 un_localizedStringValue];
      [(UNCNotificationActionRecord *)v4 setTextInputPlaceholder:v21];
    }

    else
    {
      [(UNCNotificationActionRecord *)v4 setTextInputPlaceholder:v18];
    }
  }

  else
  {
    [(UNCNotificationActionRecord *)v4 setActionType:@"Default"];
  }

  return v4;
}

uint64_t sub_1DA7B0D88(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DA7AF3EC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DA7B0DD8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1DA7AEA10();
  if (v6)
  {
    v7 = v6;
    if (sub_1DA7AD2CC(a2, a3))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v8 = sub_1DA9405A4();
      __swift_project_value_buffer(v8, qword_1EE11B068);
      v9 = a1;

      v10 = sub_1DA940584();
      v11 = sub_1DA940EF4();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v27 = v13;
        *v12 = 136446466;
        if (*&v9[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
        {
          v14 = *&v9[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v15 = *&v9[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        }

        else
        {
          v14 = 7104878;
          v15 = 0xE300000000000000;
        }

        v25 = sub_1DA7AE6E8(v14, v15, &v27);

        *(v12 + 4) = v25;
        *(v12 + 12) = 2082;
        *(v12 + 14) = sub_1DA7AE6E8(a2, a3, &v27);
        _os_log_impl(&dword_1DA7A9000, v10, v11, "[%{public}s] Forwarding setNotificationCategories: %{public}s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v13, -1, -1);
        MEMORY[0x1E12739F0](v12, -1, -1);
      }

      else
      {
      }

      sub_1DA7AF3EC(0, &unk_1EE114DB8, 0x1E6983278);
      sub_1DA7B0D88(&qword_1EE114DB0, &unk_1EE114DB8, 0x1E6983278);
      v26 = sub_1DA940E84();
      v18 = sub_1DA940A04();
      [v7 setNotificationCategories:v26 forBundleIdentifier:v18];
      swift_unknownObjectRelease();

      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v16 = sub_1DA9405A4();
  __swift_project_value_buffer(v16, qword_1EE11B068);
  v17 = a1;

  v18 = sub_1DA940584();
  v19 = sub_1DA940F14();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136446466;
    if (*&v17[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v22 = *&v17[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v23 = *&v17[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v22 = 7104878;
      v23 = 0xE300000000000000;
    }

    v24 = sub_1DA7AE6E8(v22, v23, &v27);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_1DA7AE6E8(a2, a3, &v27);
    _os_log_impl(&dword_1DA7A9000, v18, v19, "[%{public}s] setNotificationCategories not allowed: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v21, -1, -1);
    MEMORY[0x1E12739F0](v20, -1, -1);
  }

LABEL_20:
}

UNCNotificationCategoryRecord *UNNotificationCategoryToUNCNotificationCategoryRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 options];
  v4 = objc_alloc_init(UNCNotificationCategoryRecord);
  v5 = [v2 actions];
  v6 = [v5 bs_map:UNNotificationActionToUNCNotificationActionRecord];
  [(UNCNotificationCategoryRecord *)v4 setActions:v6];

  [(UNCNotificationCategoryRecord *)v4 setHasCustomDismissAction:v3 & 1];
  [(UNCNotificationCategoryRecord *)v4 setHasFollowActivityAction:(v3 >> 31) & 1];
  [(UNCNotificationCategoryRecord *)v4 setHasCustomSilenceAction:(v3 >> 22) & 1];
  v7 = [v2 identifier];
  [(UNCNotificationCategoryRecord *)v4 setIdentifier:v7];

  v8 = [v2 intentIdentifiers];
  [(UNCNotificationCategoryRecord *)v4 setIntentIdentifiers:v8];

  v9 = [v2 minimalActions];
  v10 = [v9 bs_map:UNNotificationActionToUNCNotificationActionRecord];
  [(UNCNotificationCategoryRecord *)v4 setMinimalActions:v10];

  [(UNCNotificationCategoryRecord *)v4 setShouldAllowInCarPlay:(v3 >> 1) & 1];
  -[UNCNotificationCategoryRecord setPrivacyOptionShowTitle:](v4, "setPrivacyOptionShowTitle:", ([v2 options] >> 2) & 1);
  -[UNCNotificationCategoryRecord setPrivacyOptionShowSubtitle:](v4, "setPrivacyOptionShowSubtitle:", ([v2 options] >> 3) & 1);
  -[UNCNotificationCategoryRecord setPreventAutomaticRemovalFromRecent:](v4, "setPreventAutomaticRemovalFromRecent:", ([v2 options] >> 17) & 1);
  -[UNCNotificationCategoryRecord setRevealAdditionalContentWhenPresented:](v4, "setRevealAdditionalContentWhenPresented:", ([v2 options] >> 18) & 1);
  -[UNCNotificationCategoryRecord setPlayMediaWhenRaised:](v4, "setPlayMediaWhenRaised:", ([v2 options] >> 25) & 1);
  -[UNCNotificationCategoryRecord setPreventAutomaticLock:](v4, "setPreventAutomaticLock:", ([v2 options] >> 20) & 1);
  -[UNCNotificationCategoryRecord setPreventDismissWhenClosed:](v4, "setPreventDismissWhenClosed:", ([v2 options] >> 19) & 1);
  -[UNCNotificationCategoryRecord setPresentFullScreenAlertOverList:](v4, "setPresentFullScreenAlertOverList:", ([v2 options] >> 21) & 1);
  -[UNCNotificationCategoryRecord setShouldAllowActionsInCarPlay:](v4, "setShouldAllowActionsInCarPlay:", ([v2 options] >> 23) & 1);
  -[UNCNotificationCategoryRecord setShouldAllowPersistentBannersInCarPlay:](v4, "setShouldAllowPersistentBannersInCarPlay:", ([v2 options] >> 24) & 1);
  -[UNCNotificationCategoryRecord setPreventClearFromList:](v4, "setPreventClearFromList:", ([v2 options] >> 27) & 1);
  -[UNCNotificationCategoryRecord setAlwaysDisplayNotificationsIndicator:](v4, "setAlwaysDisplayNotificationsIndicator:", ([v2 options] >> 28) & 1);
  -[UNCNotificationCategoryRecord setSuppressDelayForForwardedNotifications:](v4, "setSuppressDelayForForwardedNotifications:", ([v2 options] >> 29) & 1);
  -[UNCNotificationCategoryRecord setSuppressDismissActionInCarPlay:](v4, "setSuppressDismissActionInCarPlay:", ([v2 options] >> 30) & 1);
  -[UNCNotificationCategoryRecord setSuppressPresentationInAmbient:](v4, "setSuppressPresentationInAmbient:", ([v2 options] >> 32) & 1);
  v11 = [v2 hiddenPreviewsBodyPlaceholder];
  [(UNCNotificationCategoryRecord *)v4 setPrivateBody:v11];

  v12 = [v2 categorySummaryFormat];
  [(UNCNotificationCategoryRecord *)v4 setSummaryFormat:v12];

  v13 = [v2 backgroundStyle];
  if (v13 == 2)
  {
    v14 = kUNSNotificationCategoryBackgroundStyleDark;
    goto LABEL_5;
  }

  if (v13 == 1)
  {
    v14 = kUNSNotificationCategoryBackgroundStyleSystem;
LABEL_5:
    v15 = *v14;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:
  [(UNCNotificationCategoryRecord *)v4 setBackgroundStyle:v15];
  v16 = [v2 listPriority];
  if (v16 == 1)
  {
    v17 = kUNSNotificationCategoryListPriorityHigh;
    goto LABEL_11;
  }

  if (v16 == 2)
  {
    v17 = &kUNSNotificationCategoryListPriorityTop;
LABEL_11:
    v18 = *v17;
    goto LABEL_13;
  }

  v18 = 0;
LABEL_13:
  [(UNCNotificationCategoryRecord *)v4 setListPriority:v18];

  return v4;
}

uint64_t sub_1DA7B155C(void *a1, int a2, void *a3, int a4, void *aBlock, void (*a6)(void *, uint64_t, uint64_t, id, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = sub_1DA940A14();
  v12 = v11;
  _Block_copy(v9);
  v13 = a3;
  v14 = a1;
  a6(a3, v10, v12, v14, v9);
  _Block_release(v9);
  _Block_release(v9);
}

void sub_1DA7B161C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  sub_1DA940A94();
  _Block_copy(a5);
  v11 = os_transaction_create();

  v12 = sub_1DA7AEA10();
  if (v12)
  {
    v13 = v12;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v37 = v11;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v14 = sub_1DA9405A4();
      __swift_project_value_buffer(v14, qword_1EE11B068);
      v15 = a4;

      v16 = sub_1DA940584();
      v17 = sub_1DA940EF4();

      if (os_log_type_enabled(v16, v17))
      {
        v36 = a1;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        v20 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v20)
        {
          v21 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v22 = v20;
        }

        else
        {
          v21 = 7104878;
          v22 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v21, v22, aBlock);

        *(v18 + 4) = v32;
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v16, v17, "[%{public}s] Forwarding setBadgeCount: %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v19, -1, -1);
        MEMORY[0x1E12739F0](v18, -1, -1);

        a1 = v36;
      }

      else
      {
      }

      v33 = sub_1DA940A04();
      v34 = swift_allocObject();
      v34[2] = sub_1DA7B1C6C;
      v34[3] = v10;
      v34[4] = v37;
      aBlock[4] = sub_1DA7B1C68;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_69;
      v35 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v13 setBadgeCount:a1 forBundleIdentifier:v33 withCompletionHandler:v35];
      _Block_release(v35);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11B068);
  v24 = a4;

  v25 = sub_1DA940584();
  v26 = sub_1DA940F14();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446466;
    if (*&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v29 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v25, v26, "[%{public}s] setBadgeCount not allowed: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v28, -1, -1);
    MEMORY[0x1E12739F0](v27, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v38 = sub_1DA93F8B4();
  (a5)[2](a5, v38);

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B1BD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DA7B1BFC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1DA7B1C70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1DA93F8B4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1DA7B1CF0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_1DA7AF3EC(0, a3, a4);
  sub_1DA7B0D88(a5, a3, a4);
  v10 = sub_1DA940E94();

  v9(v10);
}

void sub_1DA7B1DA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  sub_1DA7AF3EC(0, a3, a4);
  sub_1DA7B0D88(a5, a3, a4);
  v9 = sub_1DA940E84();
  (*(a2 + 16))(a2, v9);
}

uint64_t sub_1DA7B1E80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

UNCNotificationCategoryRecord *UNSDictionaryToNotificationCategoryRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCNotificationCategoryRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

UNCNotificationActionRecord *UNSDictionaryToNotificationActionRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCNotificationActionRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

void sub_1DA7B21E0(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getDeliveredNotifications: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA7B2EF4;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B2E54;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B2E40;
      aBlock[3] = &block_descriptor_117;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getDeliveredNotificationsForBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getDeliveredNotifications not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  sub_1DA7AF3EC(0, &qword_1EE114DD8, 0x1E6983240);
  v35 = sub_1DA940BD4();
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B2DC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1DA7AF3EC(0, a3, a4);
  v6 = sub_1DA940BE4();

  v5(v6);
}

uint64_t sub_1DA7B2E58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DA7B2E80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  sub_1DA7AF3EC(0, a3, a4);
  v5 = sub_1DA940BD4();
  (*(a2 + 16))(a2, v5);
}

void sub_1DA7B2F3C(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getNotificationSettingsForTopics: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA7B4620;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B456C;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B44D8;
      aBlock[3] = &block_descriptor_31_0;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getNotificationSettingsForTopicsWithBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getNotificationSettingsForTopics not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  sub_1DA849164(MEMORY[0x1E69E7CC0]);
  sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
  v35 = sub_1DA940964();
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientAuditToken);
  v8 = sub_1DA940A04();
  v9 = [v7 valueForEntitlement_];

  if (!v9)
  {
    v17 = 0u;
    v18 = 0u;
    sub_1DA896614(&v17);
LABEL_12:
    v10 = 0;
    return v10 & 1;
  }

  sub_1DA941154();
  swift_unknownObjectRelease();
  v16[0] = v17;
  v16[1] = v18;
  if (swift_dynamicCast())
  {
    if (v14 == a3 && v15 == a4)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v16);
      v10 = 1;
      return v10 & 1;
    }

    v11 = sub_1DA941684();

    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  if (!swift_dynamicCast())
  {
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v16);
    goto LABEL_12;
  }

  v14 = a3;
  v15 = a4;
  MEMORY[0x1EEE9AC00]();
  v13[2] = &v14;
  v10 = sub_1DA7B36C0(sub_1DA7B376C, v13, v13[5]);

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v10 & 1;
}

uint64_t sub_1DA7B36C0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DA7B37A8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DA941684() & 1;
  }
}

void sub_1DA7B3818(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  sub_1DA940A94();
  _Block_copy(a5);
  v11 = os_transaction_create();

  v12 = sub_1DA7AEA10();
  if (v12)
  {
    v13 = v12;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v37 = v11;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v14 = sub_1DA9405A4();
      __swift_project_value_buffer(v14, qword_1EE11B068);
      v15 = a4;

      v16 = sub_1DA940584();
      v17 = sub_1DA940EF4();

      if (os_log_type_enabled(v16, v17))
      {
        v36 = a1;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        v20 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v20)
        {
          v21 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v22 = v20;
        }

        else
        {
          v21 = 7104878;
          v22 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v21, v22, aBlock);

        *(v18 + 4) = v32;
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v16, v17, "[%{public}s] Forwarding setBadgeNumber: %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v19, -1, -1);
        MEMORY[0x1E12739F0](v18, -1, -1);

        a1 = v36;
      }

      else
      {
      }

      v33 = sub_1DA940A04();
      v34 = swift_allocObject();
      v34[2] = sub_1DA7B1C6C;
      v34[3] = v10;
      v34[4] = v37;
      aBlock[4] = sub_1DA7B1C68;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_79;
      v35 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v13 setBadgeNumber:a1 forBundleIdentifier:v33 withCompletionHandler:v35];
      _Block_release(v35);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11B068);
  v24 = a4;

  v25 = sub_1DA940584();
  v26 = sub_1DA940F14();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446466;
    if (*&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v29 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v25, v26, "[%{public}s] setBadgeNumber not allowed: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v28, -1, -1);
    MEMORY[0x1E12739F0](v27, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v38 = sub_1DA93F8B4();
  (a5)[2](a5, v38);

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B3DC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1DA7B3DE8(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getBadgeNumber: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA7AF9F0;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B43A0;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B4334;
      aBlock[3] = &block_descriptor_88;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getBadgeNumberForBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getBadgeNumber not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  a4[2](a4, 0);

  swift_unknownObjectRelease();
}

void sub_1DA7B4334(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1DA7B43C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1DA7B4438()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DA7B4468(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DA93F8B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1DA7B44D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
  v3 = sub_1DA940974();

  v2(v3);
}

uint64_t sub_1DA7B456C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DA7B4594(uint64_t a1, uint64_t a2)
{
  sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
  v3 = sub_1DA940964();
  (*(a2 + 16))(a2, v3);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1DA7B47B0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  sub_1DA940A94();
  _Block_copy(a5);
  v10 = os_transaction_create();

  v11 = sub_1DA7AEA10();
  if (v11)
  {
    v12 = v11;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v36 = v10;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DA9405A4();
      __swift_project_value_buffer(v13, qword_1EE11B068);
      v14 = a4;

      v15 = sub_1DA940584();
      v16 = sub_1DA940EF4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136446466;
        v19 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v19)
        {
          v20 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v21 = v19;
        }

        else
        {
          v20 = 7104878;
          v21 = 0xE300000000000000;
        }

        v31 = sub_1DA7AE6E8(v20, v21, aBlock);

        *(v17 + 4) = v31;
        *(v17 + 12) = 2082;
        *(v17 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v15, v16, "[%{public}s] Forwarding setNotificationTopics: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v18, -1, -1);
        MEMORY[0x1E12739F0](v17, -1, -1);
      }

      else
      {
      }

      sub_1DA7AF3EC(0, &qword_1EE110BA8, 0x1E69832C8);
      sub_1DA7B0D88(&qword_1EE110BA0, &qword_1EE110BA8, 0x1E69832C8);
      v32 = sub_1DA940E84();
      v33 = sub_1DA940A04();
      v34 = swift_allocObject();
      v34[2] = sub_1DA7B1BCC;
      v34[3] = v9;
      v34[4] = v36;
      aBlock[4] = sub_1DA7B1BD4;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_49;
      v35 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v12 setNotificationTopics:v32 forBundleIdentifier:v33 withCompletionHandler:v35];
      _Block_release(v35);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE11B068);
  v23 = a4;

  v24 = sub_1DA940584();
  v25 = sub_1DA940F14();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446466;
    if (*&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v28 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v29 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v28 = 7104878;
      v29 = 0xE300000000000000;
    }

    v30 = sub_1DA7AE6E8(v28, v29, aBlock);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{public}s] setNotificationTopics not allowed: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v27, -1, -1);
    MEMORY[0x1E12739F0](v26, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v37 = sub_1DA93F8B4();
  (a5)[2](a5, v37);

  swift_unknownObjectRelease();
}

UNCNotificationTopicRecord *UNNotificationTopicRequestToUNCNotificationTopicRecord_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 topic];
  v4 = objc_alloc_init(UNCNotificationTopicRecord);
  v5 = [v3 identifier];
  [(UNCNotificationTopicRecord *)v4 setIdentifier:v5];

  v6 = [v3 displayName];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [v3 displayName];
  v9 = v8;
  if (isKindOfClass)
  {
    v10 = [v8 un_localizedStringValue];
    [(UNCNotificationTopicRecord *)v4 setDisplayName:v10];

    v9 = [v3 displayName];
    v11 = [v9 un_localizedStringKey];
    [(UNCNotificationTopicRecord *)v4 setDisplayNameLocalizationKey:v11];
  }

  else
  {
    [(UNCNotificationTopicRecord *)v4 setDisplayName:v8];
  }

  v12 = [v2 supportedOptions];
  [(UNCNotificationTopicRecord *)v4 setSupportsBadges:v12 & 1];
  [(UNCNotificationTopicRecord *)v4 setSupportsAlerts:(v12 >> 2) & 1];
  [(UNCNotificationTopicRecord *)v4 setSupportsSounds:(v12 >> 1) & 1];
  [(UNCNotificationTopicRecord *)v4 setSupportsCarPlay:(v12 >> 3) & 1];
  [(UNCNotificationTopicRecord *)v4 setSupportsSpoken:1];
  [(UNCNotificationTopicRecord *)v4 setSupportsCriticalAlerts:(v12 >> 4) & 1];
  [(UNCNotificationTopicRecord *)v4 setSupportsLockScreen:1];
  [(UNCNotificationTopicRecord *)v4 setSupportsNotificationCenter:1];
  v13 = [v2 enabledOptions];

  [(UNCNotificationTopicRecord *)v4 setEnablesBadges:v13 & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesAlerts:(v13 >> 2) & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesSounds:(v13 >> 1) & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesCarPlay:(v13 >> 3) & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesCriticalAlerts:(v13 >> 4) & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesLockScreen:(v13 >> 2) & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesNotificationCenter:(v13 >> 2) & 1];
  -[UNCNotificationTopicRecord setPriority:](v4, "setPriority:", [v3 priority]);
  v14 = [v3 sortIdentifier];
  [(UNCNotificationTopicRecord *)v4 setSortIdentifier:v14];

  return v4;
}

UNCNotificationTopicRecord *UNCDictionaryToNotificationTopicRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCNotificationTopicRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

uint64_t sub_1DA7B5220(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DA7B5320()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DA7B535C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  sub_1DA940A94();
  v10 = os_transaction_create();

  v11 = sub_1DA7AEA10();
  if (v11)
  {
    v12 = v11;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v38 = a5;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DA9405A4();
      __swift_project_value_buffer(v13, qword_1EE11B068);
      v14 = v5;

      v15 = sub_1DA940584();
      v16 = sub_1DA940EF4();

      if (os_log_type_enabled(v15, v16))
      {
        v39 = a4;
        v37 = v10;
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136446466;
        v19 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v19)
        {
          v20 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v21 = v19;
        }

        else
        {
          v20 = 7104878;
          v21 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v20, v21, aBlock);

        *(v17 + 4) = v32;
        *(v17 + 12) = 2082;
        *(v17 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v15, v16, "[%{public}s] Forwarding removePendingNotificationRequests: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v18, -1, -1);
        MEMORY[0x1E12739F0](v17, -1, -1);

        v10 = v37;
        a4 = v39;
      }

      else
      {
      }

      v33 = sub_1DA940BD4();
      v34 = sub_1DA940A04();
      v35 = swift_allocObject();
      v35[2] = a4;
      v35[3] = v38;
      v35[4] = v10;
      aBlock[4] = sub_1DA7B58D4;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_147;
      v36 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a4);
      swift_unknownObjectRetain();

      [v12 removePendingNotificationRequestsWithIdentifiers:v33 forBundleIdentifier:v34 completionHandler:v36];
      _Block_release(v36);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE11B068);
  v23 = v5;

  v24 = sub_1DA940584();
  v25 = sub_1DA940F14();

  if (os_log_type_enabled(v24, v25))
  {
    v40 = a4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446466;
    v28 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    if (v28)
    {
      v29 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = v28;
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{public}s] removePendingNotificationRequests not allowed: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v27, -1, -1);
    MEMORY[0x1E12739F0](v26, -1, -1);

    a4 = v40;
    if (v40)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a4)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a4(0, qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B58D8(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(result & 1);
  }

  return result;
}

Swift::Void __swiftcall ServiceManager.contentProtectionStateChanged(forFirstUnlock:)(Swift::Bool forFirstUnlock)
{
  v3 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository);
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v3 contentProtectionStateChangedForFirstUnlock_];
  v4 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v4 contentProtectionStateChangedForFirstUnlock_];
  if (forFirstUnlock)
  {
    v5 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties;
    swift_beginAccess();
    if (*(v1 + v5))
    {

      sub_1DA8DDBC4();
    }
  }
}

uint64_t objectdestroy_94Tm()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1DA7B5AFC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  sub_1DA940A94();
  v10 = os_transaction_create();

  v11 = sub_1DA7AEA10();
  if (v11)
  {
    v12 = v11;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v38 = a5;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DA9405A4();
      __swift_project_value_buffer(v13, qword_1EE11B068);
      v14 = v5;

      v15 = sub_1DA940584();
      v16 = sub_1DA940EF4();

      if (os_log_type_enabled(v15, v16))
      {
        v39 = a4;
        v37 = v10;
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136446466;
        v19 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v19)
        {
          v20 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v21 = v19;
        }

        else
        {
          v20 = 7104878;
          v21 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v20, v21, aBlock);

        *(v17 + 4) = v32;
        *(v17 + 12) = 2082;
        *(v17 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v15, v16, "[%{public}s] Forwarding removeDeliveredNotifications: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v18, -1, -1);
        MEMORY[0x1E12739F0](v17, -1, -1);

        v10 = v37;
        a4 = v39;
      }

      else
      {
      }

      v33 = sub_1DA940BD4();
      v34 = sub_1DA940A04();
      v35 = swift_allocObject();
      v35[2] = a4;
      v35[3] = v38;
      v35[4] = v10;
      aBlock[4] = sub_1DA7B6230;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_108;
      v36 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a4);
      swift_unknownObjectRetain();

      [v12 removeDeliveredNotificationsWithIdentifiers:v33 forBundleIdentifier:v34 completionHandler:v36];
      _Block_release(v36);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE11B068);
  v23 = v5;

  v24 = sub_1DA940584();
  v25 = sub_1DA940F14();

  if (os_log_type_enabled(v24, v25))
  {
    v40 = a4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446466;
    v28 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    if (v28)
    {
      v29 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = v28;
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{public}s] removeDeliveredNotifications not allowed: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v27, -1, -1);
    MEMORY[0x1E12739F0](v26, -1, -1);

    a4 = v40;
    if (v40)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a4)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a4(0, qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B6374(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E90, &unk_1DA95D9E0) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_1DA7B63F4(a1, v4, v5);
}

uint64_t sub_1DA7B63F4(void *a1, unint64_t a2, uint64_t a3)
{
  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1EE11AFA0);

  v7 = a1;
  v8 = sub_1DA940584();
  v9 = sub_1DA940F34();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315906;
    v12 = MEMORY[0x1E69E7CC0];
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = sub_1DA7B673C(v13);
    v16 = v15;

    v17 = sub_1DA7AE6E8(v14, v16, &v31);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    if (a3)
    {
      v18 = a3;
    }

    else
    {
      v18 = v12;
    }

    if (*(v18 + 16) < 6uLL)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
      sub_1DA7B6A38();
      v19 = sub_1DA9409C4();
    }

    else
    {
      v30 = *(v18 + 16);

      v19 = sub_1DA941614();
    }

    v21 = v19;
    v22 = v20;

    v23 = sub_1DA7AE6E8(v21, v22, &v31);

    *(v10 + 14) = v23;
    *(v10 + 22) = 1026;
    *(v10 + 24) = a1 == 0;
    *(v10 + 28) = 2082;
    if (a1)
    {
      swift_getErrorValue();
      v24 = sub_1DA941704();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v27 = sub_1DA7AE6E8(v24, v26, &v31);

    *(v10 + 30) = v27;
    _os_log_impl(&dword_1DA7A9000, v8, v9, "Finished index: added=[%s], deleted=[%s], success=%{BOOL,public}d%{public}s", v10, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v11, -1, -1);
    MEMORY[0x1E12739F0](v10, -1, -1);
  }

  if (a1)
  {
    v31 = a1;
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E90, &unk_1DA95D9E0);
    return sub_1DA940C44();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E90, &unk_1DA95D9E0);
    return sub_1DA940C54();
  }
}

unint64_t sub_1DA7B673C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    if (sub_1DA941264() > 5)
    {
      return sub_1DA941614();
    }

    result = sub_1DA941264();
    v2 = result;
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 > 5)
    {
      return sub_1DA941614();
    }
  }

  if (!v2)
  {
    goto LABEL_17;
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E1272460](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v5 uniqueIdentifier];
      v8 = sub_1DA940A14();
      v10 = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1DA7B6928(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1DA7B6928((v11 > 1), v12 + 1, 1, v4);
      }

      ++v3;

      *(v4 + 2) = v12 + 1;
      v13 = &v4[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
    }

    while (v2 != v3);
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    sub_1DA7B6A38();
    v14 = sub_1DA9409C4();

    return v14;
  }

  __break(1u);
  return result;
}

char *sub_1DA7B6928(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1DA7B6A38()
{
  result = qword_1EE114DF0;
  if (!qword_1EE114DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114DF0);
  }

  return result;
}

uint64_t sub_1DA7B6A9C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1DA7B6B88(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DA7B6B88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5038, &qword_1DA9596D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1DA7B6C7C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DA7B6CC8(a1, a2);
  sub_1DA7B6A9C(&unk_1F5631370);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DA7B6CC8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DA839094(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DA9413C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DA940B14();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DA839094(v10, 0);
        result = sub_1DA941344();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DA7B6DF8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1DA7B6E28()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1DA88E75C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1DA7B6F44;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DA7B6F44()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA7B6FA8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1DA88EFC0;
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 96);

    v4 = sub_1DA7B70D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DA7B70D0()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[2];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DA7B7144()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1DA834000;
  }

  else
  {
    v3 = sub_1DA7B7258;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA7B7258()
{
  v1 = v0[20];
  v2 = v0[17];
  v11 = v0[19];
  v12 = v0[18];
  v3 = v0[15];
  v4 = v0[14];
  v9 = *(v4 + 40);
  v10 = v0[16];
  v0[6] = sub_1DA7B7694;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DA7AF1D0;
  v0[5] = &block_descriptor_15;
  v5 = _Block_copy(v0 + 2);

  sub_1DA940824();
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v1, v2, v5);
  _Block_release(v5);
  (*(v10 + 8))(v2, v3);
  (*(v11 + 8))(v1, v12);
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DA7B7470()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DA7B7568()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DA7B769C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  if ((*(v0 + 56) & 1) == 0)
  {
    result = swift_beginAccess();
    v13 = *(v0 + 48);
    if (*(v13 + 16))
    {
      v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v20 = *(v6 + 16);
      v21 = v14;
      v20(v12, v13 + v14, v5);
      *(v0 + 56) = 1;
      result = swift_beginAccess();
      if (*(v13 + 16))
      {
        v15 = v0;
        sub_1DA884BFC(0, 1);
        swift_endAccess();
        v16 = sub_1DA940D34();
        (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
        v20(v9, v12, v5);
        v17 = v21;
        v18 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        (*(v6 + 32))(v19 + v17, v9, v5);
        *(v19 + v18) = v15;

        sub_1DA8DB00C(0, 0, v4, &unk_1DA9594A8, v19);

        return (*(v6 + 8))(v12, v5);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1DA7B7964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7B7A54(const char *a1)
{
  v3 = v1;
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1EE110EA0);
  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DA7A9000, v5, v6, a1, v7, 2u);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  v8 = *__swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_delegate), *(v3 + OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_delegate + 24));
  return sub_1DA7B7B98();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DA7B7B98()
{
  v1 = *v0;
  v2 = sub_1DA7B7D60();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1DA8E56C8;
  *(v4 + 24) = v3;
  v8[4] = sub_1DA82B5F8;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DA7B8000;
  v8[3] = &block_descriptor_21;
  v5 = _Block_copy(v8);

  dispatch_sync(v2, v5);

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA7B7D18()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1DA7B7D60()
{
  v1 = v0;
  v2 = sub_1DA940FC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940F74();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DA940854();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *(v0 + 88);
  if (v11)
  {
    v12 = *(v0 + 88);
  }

  else
  {
    v13 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
    v18[1] = "perties.ids-delegate";
    v18[2] = v13;
    sub_1DA940824();
    v18[3] = MEMORY[0x1E69E7CC0];
    v18[0] = sub_1DA8E56DC(&qword_1EE115A60, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
    sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
    sub_1DA9411D4();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v2);
    v14 = sub_1DA941004();
    v15 = *(v0 + 88);
    *(v1 + 88) = v14;
    v12 = v14;

    v11 = 0;
  }

  v16 = v11;
  return v12;
}

UNCContactRecord *UNCDictionaryToContactRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCContactRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

id UNCContactRecordToUNNotificationContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6983328];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 handle];
  [v4 setHandle:v5];

  [v4 setHandleType:{objc_msgSend(v3, "handleType")}];
  v6 = [v3 serviceName];
  [v4 setServiceName:v6];

  v7 = [v3 displayName];
  [v4 setDisplayName:v7];

  [v4 setDisplayNameSuggested:{objc_msgSend(v3, "isDisplayNameSuggested")}];
  v8 = [v3 customIdentifier];
  [v4 setCustomIdentifier:v8];

  v9 = [v3 cnContactIdentifier];
  [v4 setCnContactIdentifier:v9];

  v10 = [v3 cnContactFullname];
  [v4 setCnContactFullname:v10];

  v11 = [v3 isCNContactIdentifierSuggested];
  [v4 setCnContactIdentifierSuggested:v11];

  return v4;
}

void sub_1DA7B8674(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v9 = sub_1DA93FEC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  aBlock = 0;
  v31 = 0xE000000000000000;
  sub_1DA941364();

  aBlock = 0xD000000000000029;
  v31 = 0x80000001DA957B00;
  v36 = *(a2 + 56);
  v14 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v14);

  MEMORY[0x1E1271BD0](46, 0xE100000000000000);
  sub_1DA940124();
  v15 = sub_1DA93FEB4();
  v17 = v16;
  (*(v10 + 8))(v13, v9);
  MEMORY[0x1E1271BD0](v15, v17);

  v18 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
  v19 = sub_1DA940A04();

  v20 = [v18 initWithIdentifier_];

  v21 = sub_1DA941844();
  sub_1DA941844();
  v23 = v22 / 1.0e18 + v21;
  sub_1DA7AC344();
  v24 = sub_1DA940FD4();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = a4;
  v26[4] = a5;
  v34 = sub_1DA93B6FC;
  v35 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1DA7B00D0;
  v33 = &block_descriptor_31;
  v27 = _Block_copy(&aBlock);

  [v20 scheduleWithFireInterval:v24 leewayInterval:v27 queue:v23 handler:0.5];
  _Block_release(v27);

  *v29 = v20;
}

uint64_t sub_1DA7B8988()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7B89C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id UNSNotificationRecordToUNNotificationTrigger_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 triggerType];
  if ([v3 isEqualToString:@"Calendar"])
  {
    v4 = [v2 triggerDateComponents];

    if (v4)
    {
      v5 = MEMORY[0x1E69831E8];
      v6 = [v2 triggerDateComponents];
      v7 = [v5 triggerWithDateMatchingComponents:v6 repeats:{objc_msgSend(v2, "triggerRepeats")}];
LABEL_9:
      v16 = v7;

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Local"])
  {
    v8 = MEMORY[0x1E69831F0];
    v9 = [v2 triggerDate];
    v10 = [v2 triggerTimeZone];
    v11 = [v2 triggerRepeatInterval];
    v12 = [v2 triggerRepeatCalendarIdentifier];
    if (v12)
    {
      v13 = MEMORY[0x1E695DEE8];
      v14 = [v2 triggerRepeatCalendarIdentifier];
      v15 = [v13 calendarWithIdentifier:v14];
      v16 = [v8 triggerWithDate:v9 timeZone:v10 repeatInterval:v11 repeatCalendar:v15];
    }

    else
    {
      v16 = [v8 triggerWithDate:v9 timeZone:v10 repeatInterval:v11 repeatCalendar:0];
    }

    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"Location"])
  {
    v17 = MEMORY[0x1E6983208];
    v6 = [v2 triggerRegion];
    v7 = [v17 triggerWithRegion:v6 repeats:{objc_msgSend(v2, "triggerRepeats")}];
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"TimeInterval"])
  {
    v18 = MEMORY[0x1E6983300];
    [v2 triggerTimeInterval];
    v20 = [v18 triggerWithTimeInterval:objc_msgSend(v2 repeats:{"triggerRepeats"), v19}];
LABEL_16:
    v16 = v20;
    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"Push"])
  {
    v21 = [v2 contentAvailable];
    v22 = [v21 integerValue] != 0;

    v23 = [v2 mutableContent];
    v24 = [v23 integerValue] != 0;

    v20 = [MEMORY[0x1E69832E0] triggerWithContentAvailable:v22 mutableContent:v24];
    goto LABEL_16;
  }

LABEL_17:
  v16 = 0;
LABEL_18:

  return v16;
}

UNCAttachmentRecord *UNSDictionaryToAttachmentRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCAttachmentRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

id UNCAttachmentRecordToUNNotificationAttachment_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E6983210]);
  if ([v2 thumbnailHidden])
  {
    v4 = 2;
  }

  else
  {
    if (![v2 hiddenFromDefaultExpandedView])
    {
      goto LABEL_6;
    }

    v4 = 1;
  }

  [v3 setDisplayLocation:v4];
LABEL_6:
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v2 thumbnailClippingRect];
  [v5 bs_setSafeObject:v6 forKey:*MEMORY[0x1E69833C8]];

  v7 = [v2 thumbnailTimestamp];
  if (v7)
  {
    [v5 bs_setSafeObject:v7 forKey:*MEMORY[0x1E69833D0]];
  }

  else
  {
    v8 = [v2 thumbnailFrameNumber];
    [v5 bs_setSafeObject:v8 forKey:*MEMORY[0x1E69833D0]];
  }

  [v3 setThumbnailGeneratorUserInfo:v5];
  v9 = [v2 URL];
  v10 = [v9 path];

  v11 = [objc_alloc(MEMORY[0x1E69832E8]) initFileURLWithPath:v10 sandboxExtensionClass:@"com.apple.usernotifications.attachments.read-only"];
  v12 = objc_alloc(MEMORY[0x1E6983268]);
  v13 = [v2 identifier];
  v14 = [v2 type];
  v15 = [v12 initWithIdentifier:v13 URL:v11 type:v14 options:v3];

  return v15;
}

uint64_t sub_1DA7B8FEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1DA7B9060();
  v3 = sub_1DA940BE4();

  v2(v3);
}

unint64_t sub_1DA7B9060()
{
  result = qword_1EE114DD0;
  if (!qword_1EE114DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE114DD0);
  }

  return result;
}

uint64_t sub_1DA7B90B4()
{
  swift_beginAccess();

  sub_1DA7B9114(v0);
  return swift_endAccess();
}

uint64_t sub_1DA7B912C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1DA941264();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_1DA941264();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1DA7B9224(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DA7B9224(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1DA941264();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1DA941394();
  *v1 = result;
  return result;
}

uint64_t sub_1DA7B92C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DA941264();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DA941264();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DA7AD11C(&qword_1EE110C90, &qword_1ECBD5020, &qword_1DA9594D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5020, &qword_1DA9594D0);
            v9 = sub_1DA7B9478(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1DA7AF3EC(0, &qword_1EE114DD0, 0x1E6964E80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1DA7B9478(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E1272460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DA7B94F8;
  }

  __break(1u);
  return result;
}

UNSNotificationRecord *UNSDictionaryToNotificationRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNSNotificationRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

uint64_t sub_1DA7B98DC(int a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v63 = a3;
  v59 = a2;
  v62 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v54 - v11;
  v13 = type metadata accessor for NotificationPipelineRequestLogger();
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v61 = v15;
  v58 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA9401F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_orderedSteps;
  swift_beginAccess();
  v22 = *(v5 + v21);
  if (*(v22 + 16))
  {
    v57 = a5;
    v56 = a4;
    swift_beginAccess();
    sub_1DA7BABAC(v22 + 32, v68);
    sub_1DA885248(0, 1);
    swift_endAccess();
    sub_1DA7BABAC(v68, &v65);
    v23 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
    swift_beginAccess();
    (*(v17 + 16))(v20, v6 + v23, v16);
    v24 = v59;
    v25 = v58;
    sub_1DA7BACD0(v59, v58, type metadata accessor for NotificationPipelineRequestLogger);
    v26 = type metadata accessor for NotificationPipelineStep(0);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    v30 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_timerLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6098, &qword_1DA95DFA8);
    v31 = swift_allocObject();
    *(v31 + 24) = 0;
    *(v31 + 16) = 0;
    *(v29 + v30) = v31;
    v32 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_completionLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60A0, &unk_1DA95DFB0);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0;
    *(v29 + v32) = v33;
    *(v29 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_work) = 0;
    sub_1DA7B9FAC(&v65, v29 + 16);
    *(v29 + 56) = v63;
    (*(v17 + 32))(v29 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_notification, v20, v16);
    sub_1DA7BAC68(v25, v29 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_logger, type metadata accessor for NotificationPipelineRequestLogger);
    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    sub_1DA941364();
    MEMORY[0x1E1271BD0](0x20676E696E6E7552, 0xEE00272070657473);
    v34 = sub_1DA7BAAB4();
    MEMORY[0x1E1271BD0](v34);

    MEMORY[0x1E1271BD0](0xD000000000000024, 0x80000001DA953980);
    v64 = *(*(v6 + v21) + 16);
    v35 = sub_1DA941614();
    MEMORY[0x1E1271BD0](v35);

    MEMORY[0x1E1271BD0](39, 0xE100000000000000);
    sub_1DA7BAA9C(v65, *(&v65 + 1));

    v36 = *(v6 + OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_analytics);
    v55 = v29;
    v54 = v36;
    if (v36)
    {
      sub_1DA7BABAC(v29 + 16, &v65);
      __swift_project_boxed_opaque_existential_1(&v65, v66);
      DynamicType = swift_getDynamicType();
      v38 = v67;
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v39 = (*(v38 + 8))(DynamicType, v38);
      v40 = sub_1DA7BB3A8(v39);
      if (v40)
      {

        sub_1DA7BADA0();
      }
    }

    else
    {
      v40 = 0;
    }

    v43 = swift_allocObject();
    swift_weakInit();
    sub_1DA7BACD0(v24, v25, type metadata accessor for NotificationPipelineRequestLogger);
    sub_1DA7BABAC(v68, &v65);
    v44 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v45 = (v44 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v44 + v61 + 23) & 0xFFFFFFFFFFFFFFF8;
    v47 = v25;
    v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    *(v49 + 16) = v43;
    *(v49 + 24) = v40;
    sub_1DA7BAC68(v47, v49 + v44, type metadata accessor for NotificationPipelineRequestLogger);
    v50 = v49 + v45;
    *v50 = v55;
    v51 = v62;
    *(v50 + 8) = v62;
    *(v49 + v46) = v63;
    v52 = (v49 + v48);
    v53 = v57;
    *v52 = v56;
    v52[1] = v53;
    sub_1DA7B9FAC(&v65, v49 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8));

    sub_1DA7BA180(v51, v54, sub_1DA899A5C, v49);

    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  else
  {
    v41 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
    swift_beginAccess();
    (*(v17 + 16))(v12, v5 + v41, v16);
    swift_storeEnumTagMultiPayload();
    a4(v12);
    return sub_1DA7BA120(v12, &qword_1ECBD4E98, &qword_1DA95D790);
  }
}

uint64_t sub_1DA7B9FAC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DA7B9FC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7B9FFC()
{
  v1 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  v10 = sub_1DA9401F4();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);
  v11 = *(v0 + v5);

  v12 = *(v0 + v6 + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + v7));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 40, v2 | 7);
}

uint64_t sub_1DA7BA120(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DA7BA180(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29[-v12];
  v14 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_completionLock);
  v30 = a3;
  v31 = a4;
  os_unfair_lock_lock((v14 + 32));
  sub_1DA7BAC10((v14 + 16));
  os_unfair_lock_unlock((v14 + 32));
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1DA941364();

  v32 = 0x676E697472617453;
  v33 = 0xEF27207065747320;
  v15 = sub_1DA7BAAB4();
  MEMORY[0x1E1271BD0](v15);

  MEMORY[0x1E1271BD0](39, 0xE100000000000000);
  sub_1DA7BAA9C(v32, v33);

  v16 = v5[5];
  v17 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v16);
  v18 = (*(v17 + 16))(v16, v17);
  if ((v19 & 1) == 0)
  {
    v20 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_timerLock);
    v21 = MEMORY[0x1EEE9AC00](v18);
    *&v29[-32] = v5;
    *&v29[-24] = v22;
    *&v29[-16] = v21;
    *&v29[-8] = v23;
    os_unfair_lock_lock((v20 + 24));
    sub_1DA7BA468((v20 + 16));
    os_unfair_lock_unlock((v20 + 24));
  }

  v24 = sub_1DA940D34();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v5;
  *(v25 + 40) = a1;
  *(v25 + 48) = a2;

  v26 = sub_1DA84FB24(0, 0, v13, &unk_1DA966088, v25);
  v27 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_work);
  *(v5 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_work) = v26;
}

uint64_t sub_1DA7BA420()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1DA7BA488()
{
  if (qword_1EE112FE8 != -1)
  {
    swift_once();
  }

  if (byte_1EE112FF0 != 1)
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DA940A04();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_12:
    sub_1DA7BA120(&v9, &unk_1ECBD7730, &qword_1DA95C370);
    return 0;
  }

  v3 = sub_1DA940A04();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1DA941154();
    swift_unknownObjectRelease();
  }

  else
  {
    *v7 = 0u;
    v8 = 0u;
  }

  v9 = *v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_12;
  }

  sub_1DA898804();
  if (swift_dynamicCast())
  {
    v5 = [v7[0] integerValue];

    return v5;
  }

  return 0;
}

uint64_t sub_1DA7BA648()
{
  v0 = sub_1DA7BA488();
  v2 = 10;
  if ((v1 & 1) == 0)
  {
    v2 = v0;
  }

  return 1000000000000000000 * v2;
}

uint64_t sub_1DA7BA698()
{
  v1 = v0;
  BYTE8(v9) = 0;
  sub_1DA941364();
  v2 = type metadata accessor for NotificationPipelineRequestLogger();
  *&v9 = *(v0 + *(v2 + 20));
  sub_1DA941494();
  MEMORY[0x1E1271BD0](8236, 0xE200000000000000);
  sub_1DA9401F4();
  sub_1DA7BB52C();
  v3 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v3);

  MEMORY[0x1E1271BD0](0x6520656D6954202CLL, 0xEF3D64657370616CLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D8, qword_1DA95B2F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DA9596E0;
  v5 = CFAbsoluteTimeGetCurrent() - *(v1 + *(v2 + 24));
  v6 = MEMORY[0x1E69E6438];
  *(v4 + 56) = MEMORY[0x1E69E63B0];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  v7 = sub_1DA940A44();
  MEMORY[0x1E1271BD0](v7);

  MEMORY[0x1E1271BD0](1667592992, 0xE400000000000000);
  return *(&v9 + 1);
}

void sub_1DA7BA824(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v7 = type metadata accessor for NotificationPipelineRequestLogger();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE114E60 != -1)
  {
    swift_once();
  }

  v11 = sub_1DA9405A4();
  __swift_project_value_buffer(v11, qword_1EE11AFB8);
  sub_1DA7BAA38(v3, v10);

  v12 = sub_1DA940584();
  v13 = a3();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446466;
    v16 = sub_1DA7BA698();
    v18 = v17;
    sub_1DA7BB4D0(v10);
    v19 = sub_1DA7AE6E8(v16, v18, &v21);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1DA7AE6E8(a1, a2, &v21);
    _os_log_impl(&dword_1DA7A9000, v12, v13, "[%{public}s]: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v15, -1, -1);
    MEMORY[0x1E12739F0](v14, -1, -1);
  }

  else
  {

    sub_1DA7BB4D0(v10);
  }
}

uint64_t sub_1DA7BAA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationPipelineRequestLogger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA7BAAB4()
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_1DA941364();

  v5 = 0x203A70657453;
  v6 = 0xE600000000000000;
  sub_1DA7BABAC(v0 + 16, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DE0, &unk_1DA9618D0);
  v1 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v1);

  MEMORY[0x1E1271BD0](0x3A7865646E69202CLL, 0xE900000000000020);
  v4[0] = *(v0 + 56);
  v2 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v2);

  return v5;
}

uint64_t sub_1DA7BABAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DA7BAC10(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];

  result = sub_1DA7B5220(v5);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA7BAC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA7BACD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA7BAD38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DA7BADA0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_1DA9404F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = sub_1DA9405A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA940524();
  v49 = *(v18 - 8);
  v50 = v18;
  v19 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E00, &unk_1DA958720);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v48 - v24;
  if (qword_1EE110E38 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v13, qword_1EE11AD78);
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      v52 = "SectionSettingsFetchPipelineStep";
      v27 = 32;
    }

    else
    {
      v52 = "OneTimeCodePipelineStep";
      v27 = 23;
    }
  }

  else if (*(v1 + 16))
  {
    v52 = "BehaviorResolutionPipelineStep";
    v27 = 30;
  }

  else
  {
    v52 = "IntelligenceServicePipelineStep";
    v27 = 31;
  }

  v48 = v27;
  (*(v14 + 16))(v17, v26, v13);
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v28 = sub_1DA940514();
  v29 = sub_1DA941084();
  if (sub_1DA941124())
  {
    v30 = v12;
    v31 = v7;
    v32 = v1;
    v33 = v6;
    v34 = v5;
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = sub_1DA9404D4();
    _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v28, v29, v36, v52, "", v35, 2u);
    v37 = v35;
    v5 = v34;
    v6 = v33;
    v1 = v32;
    v7 = v31;
    v12 = v30;
    MEMORY[0x1E12739F0](v37, -1, -1);
  }

  (*(v7 + 16))(v51, v12, v6);
  v38 = sub_1DA940564();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_1DA940554();
  (*(v7 + 8))(v12, v6);
  v42 = v48;
  *v25 = v52;
  *(v25 + 1) = v42;
  v25[16] = 2;
  *(v25 + 3) = v41;
  v43 = type metadata accessor for LogSignpost();
  (*(v49 + 32))(&v25[*(v43 + 24)], v21, v50);
  (*(*(v43 - 8) + 56))(v25, 0, 1, v43);
  v44 = OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_signpost;
  swift_beginAccess();
  sub_1DA7BAD38(v25, v1 + v44, &qword_1ECBD4E00, &unk_1DA958720);
  swift_endAccess();
  sub_1DA93FAE4();
  v45 = sub_1DA93FAF4();
  (*(*(v45 - 8) + 56))(v5, 0, 1, v45);
  v46 = OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_startDate;
  swift_beginAccess();
  sub_1DA7BAD38(v5, v1 + v46, &unk_1ECBD6530, &unk_1DA958820);
  result = swift_endAccess();
  *(v1 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_status) = 6;
  return result;
}

unint64_t sub_1DA7BB33C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1DA941764();
  MEMORY[0x1E1272850](a1);
  v4 = sub_1DA941794();

  return sub_1DA7BB7A8(a1, v4);
}

uint64_t sub_1DA7BB3A8(unsigned __int8 a1)
{
  if (a1 != 4)
  {
    v2 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_steps);
    if (*(v2 + 16))
    {
      v3 = sub_1DA7BB33C(a1);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 8 * v3);
      }
    }

    sub_1DA941364();
    MEMORY[0x1E1271BD0](0xD000000000000064, 0x80000001DA950DC0);
    v7 = sub_1DA940A74();
    MEMORY[0x1E1271BD0](v7);

    sub_1DA84AB4C(0, 0xE000000000000000);
  }

  return 0;
}

uint64_t sub_1DA7BB4A0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DC8, &qword_1DA958408);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DA7BB4D0(uint64_t a1)
{
  v2 = type metadata accessor for NotificationPipelineRequestLogger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA7BB52C()
{
  result = qword_1EE114E70;
  if (!qword_1EE114E70)
  {
    sub_1DA9401F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114E70);
  }

  return result;
}

uint64_t type metadata accessor for NotificationPipelineRequestLogger()
{
  result = qword_1EE114ED8;
  if (!qword_1EE114ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LogSignpost()
{
  result = qword_1EE113BB8;
  if (!qword_1EE113BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA7BB644(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_1DA940524();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7BB704(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA940524();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1DA7BB7A8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1DA7BB824()
{
  v237 = v0;
  if (*(v0 + 348) == 3)
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 200);
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 24);
    v5 = sub_1DA9405A4();
    *(v0 + 208) = __swift_project_value_buffer(v5, qword_1EE11AD90);
    v6 = *(v3 + 16);
    *(v0 + 216) = v6;
    *(v0 + 224) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v2);
    v7 = sub_1DA940584();
    v8 = sub_1DA940F34();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 200);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      v234 = v230;
      *v13 = 136446210;
      sub_1DA7BB52C();
      v14 = sub_1DA941614();
      v16 = v15;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = sub_1DA7AE6E8(v14, v16, &v234);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1DA7A9000, v7, v8, "%{public}s Removing index", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v230);
      MEMORY[0x1E12739F0](v230, -1, -1);
      MEMORY[0x1E12739F0](v13, -1, -1);
    }

    else
    {

      v17 = *(v11 + 8);
      v17(v10, v12);
    }

    *(v0 + 232) = v17;
    v38 = swift_task_alloc();
    *(v0 + 240) = v38;
    *v38 = v0;
    v38[1] = sub_1DA9177A4;
    v39 = *(v0 + 24);

    return sub_1DA7BED68(v39);
  }

  v19 = *(v0 + 32);
  v20 = type metadata accessor for IntelligenceServiceAnalytics(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1DA82138C();
  v24 = v23;
  *(v0 + 256) = v23;
  if (v19)
  {
    v25 = *(v0 + 32);
    v26 = *(v25 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_intelligenceServiceAnalytics);
    *(v25 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_intelligenceServiceAnalytics) = v23;
  }

  if (qword_1EE112FE8 != -1)
  {
    swift_once();
  }

  if (byte_1EE112FF0 != 1)
  {
    goto LABEL_13;
  }

  v27 = *(v0 + 24);
  sub_1DA90A7F8(&v234);
  v28 = v234;
  v29 = v235;
  v30 = v236;
  v31 = v235;
  if (!v235)
  {
LABEL_43:
    v67 = qword_1EE110E48;
    v231 = v31;
    v227 = v31;
    if (v67 != -1)
    {
      swift_once();
    }

    v68 = *(v0 + 184);
    v69 = *(v0 + 112);
    v70 = *(v0 + 120);
    v71 = *(v0 + 24);
    v222 = sub_1DA9405A4();
    __swift_project_value_buffer(v222, qword_1EE11AD90);
    (*(v70 + 16))(v68, v71, v69);

    v72 = sub_1DA940584();
    v73 = sub_1DA940F34();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 184);
    v77 = *(v0 + 112);
    v76 = *(v0 + 120);
    v217 = v30;
    if (v74)
    {
      v213 = v73;
      v78 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v234 = v210;
      *v78 = 136446722;
      sub_1DA7BB52C();
      v79 = sub_1DA941614();
      v81 = v80;
      (*(v76 + 8))(v75, v77);
      v82 = sub_1DA7AE6E8(v79, v81, &v234);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2080;
      if (v231)
      {
        v83 = v227;
        v84 = [v227 string];
        v85 = sub_1DA940A14();
        v87 = v86;
      }

      else
      {
        v85 = 0;
        v87 = 0xE000000000000000;
        v83 = v227;
      }

      v114 = sub_1DA7AE6E8(v85, v87, &v234);

      *(v78 + 14) = v114;
      *(v78 + 22) = 1024;
      sub_1DA8A65A0(v28, v29);
      *(v78 + 24) = v217 & 1;
      sub_1DA8A65A0(v28, v29);
      _os_log_impl(&dword_1DA7A9000, v72, v213, "%{public}s Overwriting summary: %s,  priority: %{BOOL}d.", v78, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v210, -1, -1);
      MEMORY[0x1E12739F0](v78, -1, -1);
    }

    else
    {
      sub_1DA8A65A0(v28, v29);
      sub_1DA8A65A0(v28, v29);

      (*(v76 + 8))(v75, v77);
      v83 = v227;
    }

    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v115 = *(v0 + 160);
    v116 = *(v0 + 112);
    v117 = *(v0 + 120);
    v118 = *(v0 + 24);
    __swift_project_value_buffer(v222, qword_1EE11AD90);
    v223 = *(v117 + 16);
    v223(v115, v118, v116);
    v119 = v83;
    v120 = sub_1DA940584();
    v121 = sub_1DA940F34();

    v122 = os_log_type_enabled(v120, v121);
    v123 = *(v0 + 160);
    v124 = *(v0 + 112);
    v125 = *(v0 + 120);
    v214 = v119;
    if (v122)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v234 = v127;
      *v126 = 136446466;
      sub_1DA7BB52C();
      v128 = sub_1DA941614();
      v130 = v129;
      v206 = *(v125 + 8);
      v206(v123, v124);
      v131 = sub_1DA7AE6E8(v128, v130, &v234);
      v119 = v214;

      *(v126 + 4) = v131;
      *(v126 + 12) = 2082;
      v132 = v217;
      v133 = sub_1DA93B7DC(v231, v217, 0);
      v135 = v134;

      v136 = sub_1DA7AE6E8(v133, v135, &v234);

      *(v126 + 14) = v136;
      _os_log_impl(&dword_1DA7A9000, v120, v121, "%{public}s Got inference %{public}s", v126, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v127, -1, -1);
      MEMORY[0x1E12739F0](v126, -1, -1);
    }

    else
    {

      v206 = *(v125 + 8);
      v206(v123, v124);
      v132 = v217;
    }

    v137 = *(v0 + 40);
    v138 = *(v0 + 24);
    v139 = sub_1DA940014();
    v141 = sub_1DA9193E8(v139, v140);

    if (v141)
    {
      v142 = v119;
      v211 = 0;
      v143 = v231;
    }

    else
    {
      v143 = 0;
      v211 = 5;
    }

    if ((v141 & 0x100) != 0)
    {
      v144 = 0;
    }

    else
    {
      v132 = 0;
      v144 = 5;
    }

    v223(*(v0 + 152), *(v0 + 24), *(v0 + 112));
    v145 = v143;
    v146 = sub_1DA940584();
    v147 = sub_1DA940F34();
    v218 = v145;

    v148 = os_log_type_enabled(v146, v147);
    v149 = *(v0 + 152);
    v150 = *(v0 + 112);
    v151 = *(v0 + 120);
    v209 = v144;
    if (v148)
    {
      v204 = v147;
      log = v146;
      v152 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v234 = v203;
      *v152 = 136447746;
      sub_1DA7BB52C();
      v153 = sub_1DA941614();
      v154 = v143;
      v156 = v155;
      v206(v149, v150);
      v157 = sub_1DA7AE6E8(v153, v156, &v234);
      v143 = v154;

      *(v152 + 4) = v157;
      *(v152 + 12) = 1026;
      *(v152 + 14) = v141 & 1;
      *(v152 + 18) = 1026;
      *(v152 + 20) = (v141 & 0x100) >> 8;
      *(v152 + 24) = 1026;
      *(v152 + 26) = v211;
      if (v154)
      {
        v158 = 49;
      }

      else
      {
        v158 = 48;
      }

      *(v152 + 30) = 2082;
      v159 = sub_1DA7AE6E8(v158, 0xE100000000000000, &v234);

      *(v152 + 32) = v159;
      *(v152 + 40) = 1026;
      *(v152 + 42) = v209;
      *(v152 + 46) = 1026;
      v160 = v132 != 2 && (v132 & 1) != 0;
      *(v152 + 48) = v160;
      _os_log_impl(&dword_1DA7A9000, log, v204, "%{public}s canSummarize %{BOOL,public}d, canPrioritize %{BOOL,public}d, summaryStatus: %{public}u, hasSummary: %{public}s, priorityStatus: %{public}u, priority: %{BOOL,public}d", v152, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v203, -1, -1);
      MEMORY[0x1E12739F0](v152, -1, -1);
    }

    else
    {

      v206(v149, v150);
    }

    *(*(v0 + 256) + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_isHighlight) = v132;
    v208 = v132;
    if (v143)
    {
      v161 = [v218 string];
      sub_1DA940A14();

      v162 = sub_1DA940AC4();
    }

    else
    {
      v162 = 0;
    }

    v163 = v143 == 0;
    v164 = *(v0 + 256);
    v165 = *(v0 + 144);
    v167 = *(v0 + 104);
    v166 = *(v0 + 112);
    v168 = *(v0 + 96);
    v169 = *(v0 + 80);
    v207 = *(v0 + 72);
    v170 = *(v0 + 64);
    v171 = *(v0 + 40);
    v172 = *(v0 + 24);
    v173 = v164 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryTopLineLength;
    *v173 = v162;
    *(v173 + 8) = v163;
    v174 = v164 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryStatus;
    *v174 = v211;
    *(v174 + 4) = 0;
    v175 = v164 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_urgencyStatus;
    *v175 = v209;
    *(v175 + 4) = 0;
    v223(v165, v172, v166);
    LOBYTE(v234) = 0;
    sub_1DA91995C(v209, v208, v167);
    v176 = sub_1DA9402E4();
    (*(*(v176 - 8) + 56))(v167, 0, 1, v176);
    sub_1DA93FF44();
    LOBYTE(v234) = 0;
    sub_1DA919BF4(v211, v168);
    v177 = sub_1DA9402D4();
    (*(*(v177 - 8) + 56))(v168, 0, 1, v177);
    sub_1DA93FF24();
    sub_1DA940044();
    v178 = (*(v169 + 48))(v170, 1, v207);
    v179 = *(v0 + 256);
    v180 = *(v0 + 144);
    if (v178 == 1)
    {
      v182 = *(v0 + 72);
      v181 = *(v0 + 80);
      v183 = *(v0 + 48);
      sub_1DA7BA120(*(v0 + 64), &qword_1ECBD4E08, &qword_1DA958750);
      UNCCatchMeHighlights();
      v184 = v218;
      sub_1DA93FFC4();
      (*(v181 + 56))(v183, 0, 1, v182);
      sub_1DA940054();
    }

    else
    {
      v185 = *(v0 + 80);
      v186 = *(v0 + 88);
      v224 = *(v0 + 72);
      v187 = *(v0 + 56);
      (*(v185 + 32))(v186, *(v0 + 64));
      sub_1DA93FFD4();
      sub_1DA93FFE4();
      sub_1DA93FFB4();
      UNCCatchMeHighlights();
      v219 = v218;
      sub_1DA93FFC4();
      (*(v185 + 56))(v187, 0, 1, v224);
      sub_1DA940054();

      (*(v185 + 8))(v186, v224);
    }

    (*(*(v0 + 120) + 32))(*(v0 + 16), *(v0 + 144), *(v0 + 112));
    goto LABEL_95;
  }

  if (v235 != 1)
  {
    v65 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v66 = sub_1DA940A04();
    sub_1DA8A65A0(v28, v29);
    v31 = [v65 initWithString_];

    goto LABEL_43;
  }

LABEL_13:
  v32 = *(v0 + 24);
  v33 = sub_1DA919CE0();
  if (v33 == 9)
  {
    if (qword_1EE110EF8 != -1)
    {
      swift_once();
    }

    if (byte_1EE110F00 & 1) != 0 || (byte_1EE110F00 = MKBDeviceUnlockedSinceBoot() == 1, (byte_1EE110F00))
    {
      v34 = *(*(v0 + 40) + 112);
      v35 = swift_task_alloc();
      *(v0 + 264) = v35;
      *v35 = v0;
      v35[1] = sub_1DA917DA0;
      v36 = *(v0 + 24);

      return sub_1DA92819C(v36, v24);
    }

    else
    {
      if (qword_1EE110E48 != -1)
      {
        swift_once();
      }

      v88 = *(v0 + 168);
      v89 = *(v0 + 112);
      v90 = *(v0 + 120);
      v91 = *(v0 + 24);
      v92 = sub_1DA9405A4();
      *(v0 + 296) = __swift_project_value_buffer(v92, qword_1EE11AD90);
      v93 = *(v90 + 16);
      *(v0 + 304) = v93;
      *(v0 + 312) = (v90 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v93(v88, v91, v89);
      v94 = sub_1DA940584();
      v95 = sub_1DA940F34();
      v96 = os_log_type_enabled(v94, v95);
      v97 = *(v0 + 168);
      v99 = *(v0 + 112);
      v98 = *(v0 + 120);
      if (v96)
      {
        v232 = v95;
        v100 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        v234 = v228;
        *v100 = 136446210;
        sub_1DA7BB52C();
        v101 = sub_1DA941614();
        v103 = v102;
        v104 = *(v98 + 8);
        v104(v97, v99);
        v105 = sub_1DA7AE6E8(v101, v103, &v234);

        *(v100 + 4) = v105;
        _os_log_impl(&dword_1DA7A9000, v94, v232, "%{public}s Indexing but not waiting for result because device is class C locked", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v228);
        MEMORY[0x1E12739F0](v228, -1, -1);
        MEMORY[0x1E12739F0](v100, -1, -1);
      }

      else
      {

        v104 = *(v98 + 8);
        v104(v97, v99);
      }

      *(v0 + 320) = v104;
      v199 = *(v0 + 40);
      *(v24 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexSkippingReason) = 6;
      v200 = *(v199 + 112);
      v201 = swift_task_alloc();
      *(v0 + 328) = v201;
      *v201 = v0;
      v201[1] = sub_1DA918894;
      v202 = *(v0 + 24);

      return sub_1DA92647C(v202, v24);
    }
  }

  v40 = v33;
  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 176);
  v42 = *(v0 + 112);
  v43 = *(v0 + 120);
  v44 = *(v0 + 24);
  v45 = sub_1DA9405A4();
  __swift_project_value_buffer(v45, qword_1EE11AD90);
  v46 = *(v43 + 16);
  v46(v41, v44, v42);
  v47 = sub_1DA940584();
  v48 = sub_1DA940F34();
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 176);
  v52 = *(v0 + 112);
  v51 = *(v0 + 120);
  if (v49)
  {
    v221 = v48;
    v226 = v46;
    v53 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    v234 = v216;
    *v53 = 136446466;
    sub_1DA7BB52C();
    v54 = sub_1DA941614();
    v56 = v55;
    (*(v51 + 8))(v50, v52);
    v57 = sub_1DA7AE6E8(v54, v56, &v234);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    if (v40 <= 3u)
    {
      v106 = 0xEB0000000067616CLL;
      v107 = 0x46654D6863746163;
      v108 = 0xE400000000000000;
      v109 = 1935764835;
      if (v40 != 2)
      {
        v109 = 0x6C61636974697263;
        v108 = 0xE800000000000000;
      }

      if (v40)
      {
        v107 = 0xD000000000000013;
        v106 = 0x80000001DA950BD0;
      }

      if (v40 <= 1u)
      {
        v63 = v107;
      }

      else
      {
        v63 = v109;
      }

      if (v40 <= 1u)
      {
        v64 = v106;
      }

      else
      {
        v64 = v108;
      }
    }

    else
    {
      v58 = 0x80000001DA950B90;
      v59 = 0xD00000000000001CLL;
      v60 = 0x80000001DA950B70;
      if (v40 != 7)
      {
        v60 = 0x80000001DA950B50;
      }

      if (v40 != 6)
      {
        v59 = 0xD000000000000013;
        v58 = v60;
      }

      v61 = 0x80000001DA950BB0;
      v62 = 0xD000000000000012;
      if (v40 != 4)
      {
        v62 = 0x437472656C416F6ELL;
        v61 = 0xEE00746E65746E6FLL;
      }

      if (v40 <= 5u)
      {
        v63 = v62;
      }

      else
      {
        v63 = v59;
      }

      if (v40 <= 5u)
      {
        v64 = v61;
      }

      else
      {
        v64 = v58;
      }
    }

    v110 = sub_1DA7AE6E8(v63, v64, &v234);

    *(v53 + 14) = v110;
    _os_log_impl(&dword_1DA7A9000, v47, v221, "%{public}s Skip indexing, reason=%s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v216, -1, -1);
    MEMORY[0x1E12739F0](v53, -1, -1);

    v46 = v226;
  }

  else
  {

    (*(v51 + 8))(v50, v52);
  }

  v111 = *(v0 + 112);
  v112 = *(v0 + 16);
  v113 = *(v0 + 24);
  *(v24 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_notWaitingForResultBecauseImportantNotification) = 1;
  *(v24 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexSkippingReason) = v40;

  v46(v112, v113, v111);
LABEL_95:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();
  v189 = *(v0 + 192);
  v188 = *(v0 + 200);
  v191 = *(v0 + 176);
  v190 = *(v0 + 184);
  v193 = *(v0 + 160);
  v192 = *(v0 + 168);
  v195 = *(v0 + 144);
  v194 = *(v0 + 152);
  v196 = *(v0 + 128);
  v197 = *(v0 + 136);
  v212 = *(v0 + 104);
  v215 = *(v0 + 96);
  v220 = *(v0 + 88);
  v225 = *(v0 + 64);
  v229 = *(v0 + 56);
  v233 = *(v0 + 48);

  v198 = *(v0 + 8);

  return v198();
}

uint64_t sub_1DA7BCE14(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 348) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E08, &qword_1DA958750) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  v7 = sub_1DA940004();
  *(v5 + 72) = v7;
  v8 = *(v7 - 8);
  *(v5 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60B0, &unk_1DA95DFC0) - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60A8, &unk_1DA963DC0) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v12 = sub_1DA9401F4();
  *(v5 + 112) = v12;
  v13 = *(v12 - 8);
  *(v5 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA7BB824, v4, 0);
}

uint64_t sub_1DA7BD064(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DA7B7470;

  return sub_1DA7BCE14(a1, a2, a3, a4);
}

uint64_t sub_1DA7BD128()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 5);
  v3 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_notification;
  v5 = *(v3 + 24);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1DA93B0FC;
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);
  v10 = *(v0 + 80);

  return v12(v8, v10, &v1[v4], v9, v2, v3);
}

uint64_t sub_1DA7BD274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  *(v6 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA7BD128, 0, 0);
}

uint64_t sub_1DA7BD318()
{
  v1 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_timerLock);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v3 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_notification;
  v4 = sub_1DA9401F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1DA7BB4D0(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_logger);

  v5 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_completionLock);

  v6 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_work);

  return v0;
}

uint64_t sub_1DA7BD3F8()
{
  sub_1DA7BD318();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA7BD450()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_timerLock);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
  sub_1DA940E14();
  v3 = v0[5];
  sub_1DA7BD6AC(v0[8]);
  sub_1DA7BD644(v0[8]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DA7BD644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA7BD6AC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_completionLock);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  v5 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  if (v5)
  {
    v11 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v11;
    os_unfair_lock_unlock((v3 + 32));

    sub_1DA941364();
    MEMORY[0x1E1271BD0](0xD00000000000001FLL, 0x80000001DA957BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
    sub_1DA941494();
    MEMORY[0x1E1271BD0](0x27206D6F726620, 0xE700000000000000);
    v7 = sub_1DA941374();
    MEMORY[0x1E1271BD0](v7);

    MEMORY[0x1E1271BD0](39, 0xE100000000000000);
    sub_1DA7BAA9C(0, 0xE000000000000000);

    v8 = *(v6 + 24);
    (*(v6 + 16))(a1);
    sub_1DA7B5220(sub_1DA8965EC);
    return sub_1DA7B5220(sub_1DA8965EC);
  }

  else
  {
    os_unfair_lock_unlock((v3 + 32));
    sub_1DA941364();
    MEMORY[0x1E1271BD0](0xD000000000000049, 0x80000001DA957B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
    sub_1DA941494();
    MEMORY[0x1E1271BD0](0x20726F66202C27, 0xE700000000000000);
    v10 = sub_1DA941374();
    MEMORY[0x1E1271BD0](v10);

    sub_1DA7BAA9C(0, 0xE000000000000000);
  }
}

uint64_t sub_1DA7BD950()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7BD988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), unsigned int a6, uint64_t a7, void (*a8)(char *), uint64_t a9, void *a10)
{
  v140 = a7;
  v141 = a8;
  v139 = a6;
  v142 = a5;
  v143 = a4;
  v125 = sub_1DA93FAF4();
  v124 = *(v125 - 8);
  v12 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60A8, &unk_1DA963DC0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v128 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v130 = &v121 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v135 = &v121 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v121 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60B0, &unk_1DA95DFC0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v131 = (&v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v129 = &v121 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v134 = &v121 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v121 - v31;
  v33 = type metadata accessor for StepFailure(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = (&v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v138 = &v121 - v38;
  v39 = sub_1DA9401F4();
  v40 = *(v39 - 8);
  v136 = v39;
  v137 = v40;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v126 = &v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v121 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v121 - v51;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v54 = result;
    v133 = a3;
    v132 = a9;
    sub_1DA822F48(a1, v52, &qword_1ECBD4E98, &qword_1DA95D790);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v122 = v54;
      v55 = v138;
      sub_1DA7BAC68(v52, v138, type metadata accessor for StepFailure);
      sub_1DA7BACD0(v55, v37, type metadata accessor for StepFailure);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
        v107 = *(v106 + 48);
        v108 = *(v106 + 64);
        sub_1DA7B9FAC(v37, v147);
        sub_1DA84A0CC(v37 + v107, v131, &qword_1ECBD60B0, &unk_1DA95DFC0);
        v109 = v128;
        sub_1DA84A0CC(v37 + v108, v128, &qword_1ECBD60A8, &unk_1DA963DC0);
        v145 = 0;
        v146 = 0xE000000000000000;
        sub_1DA941364();
        v110 = sub_1DA7BAAB4();
        MEMORY[0x1E1271BD0](v110);

        MEMORY[0x1E1271BD0](0xD000000000000023, 0x80000001DA9539B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60B8, &unk_1DA95DFD0);
        sub_1DA941494();
        MEMORY[0x1E1271BD0](39, 0xE100000000000000);
        sub_1DA84AB64(v145, v146);

        if (v133)
        {
          sub_1DA81E1BC(4);
        }

        v111 = v131;
        sub_1DA822F48(v131, v134, &qword_1ECBD60B0, &unk_1DA95DFC0);
        swift_beginAccess();
        sub_1DA93FF24();
        sub_1DA822F48(v109, v135, &qword_1ECBD60A8, &unk_1DA963DC0);
        sub_1DA93FF44();
        swift_endAccess();
        v112 = *(v106 + 48);
        v113 = *(v106 + 64);
        sub_1DA7BABAC(v147, v50);
        sub_1DA822F48(v111, &v50[v112], &qword_1ECBD60B0, &unk_1DA95DFC0);
        sub_1DA822F48(v109, &v50[v113], &qword_1ECBD60A8, &unk_1DA963DC0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v141(v50);

        sub_1DA7BA120(v50, &qword_1ECBD4E98, &qword_1DA95D790);
        sub_1DA7BA120(v109, &qword_1ECBD60A8, &unk_1DA963DC0);
        sub_1DA7BA120(v111, &qword_1ECBD60B0, &unk_1DA95DFC0);
        __swift_destroy_boxed_opaque_existential_1(v147);
        v114 = v138;
        return sub_1DA899B2C(v114);
      }

      if (EnumCaseMultiPayload != 1)
      {
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
        v116 = *(v115 + 48);
        v117 = *(v115 + 64);
        sub_1DA7B9FAC(v37, v147);
        sub_1DA84A0CC(v37 + v116, v32, &qword_1ECBD60B0, &unk_1DA95DFC0);
        v118 = v127;
        sub_1DA84A0CC(v37 + v117, v127, &qword_1ECBD60A8, &unk_1DA963DC0);
        v145 = 0;
        v146 = 0xE000000000000000;
        sub_1DA941364();
        v119 = sub_1DA7BAAB4();
        MEMORY[0x1E1271BD0](v119);

        MEMORY[0x1E1271BD0](0xD00000000000001BLL, 0x80000001DA953A00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60B8, &unk_1DA95DFD0);
        sub_1DA941494();
        MEMORY[0x1E1271BD0](39, 0xE100000000000000);
        v120 = v143;
        sub_1DA7BAA9C(v145, v146);

        if (v133)
        {
          sub_1DA81E1BC(2);
        }

        sub_1DA822F48(v32, v134, &qword_1ECBD60B0, &unk_1DA95DFC0);
        swift_beginAccess();
        sub_1DA93FF24();
        sub_1DA822F48(v118, v135, &qword_1ECBD60A8, &unk_1DA963DC0);
        sub_1DA93FF44();
        result = swift_endAccess();
        if (!__OFADD__(v140, 1))
        {
          sub_1DA7B98DC(v139, v120, v140 + 1, v141, v132);

          sub_1DA7BA120(v118, &qword_1ECBD60A8, &unk_1DA963DC0);
          sub_1DA7BA120(v32, &qword_1ECBD60B0, &unk_1DA95DFC0);
          __swift_destroy_boxed_opaque_existential_1(v147);
          goto LABEL_30;
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v57 = *v37;
      v58 = *(v37 + 1);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60C0, &unk_1DA965C60);
      v60 = *(v59 + 64);
      v46 = v129;
      sub_1DA84A0CC(v37 + *(v59 + 48), v129, &qword_1ECBD60B0, &unk_1DA95DFC0);
      v61 = v130;
      sub_1DA84A0CC(v37 + v60, v130, &qword_1ECBD60A8, &unk_1DA963DC0);
      v147[0] = sub_1DA7BAAB4();
      v147[1] = v62;
      MEMORY[0x1E1271BD0](0x6564656563786520, 0xEA00000000002064);
      v63 = sub_1DA941854();
      MEMORY[0x1E1271BD0](v63);

      v64 = v143;
      sub_1DA7BAA9C(v147[0], v147[1]);

      if (v133)
      {
        sub_1DA81E1BC(3);
      }

      v54 = v122;
      if (qword_1EE112400 == -1)
      {
LABEL_8:
        swift_beginAccess();
        if (byte_1EE112408 == 1)
        {
          __swift_project_boxed_opaque_existential_1(a10, a10[3]);
          swift_getDynamicType();
          if (!(*(a10[4] + 8))())
          {
            v65 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
            swift_beginAccess();
            v66 = v65;
            v133 = v65;
            v67 = sub_1DA93FF84();
            swift_endAccess();
            v68 = [v67 request];

            v69 = [v68 content];
            [v69 mutableCopy];

            sub_1DA941154();
            swift_unknownObjectRelease();
            sub_1DA84B354();
            swift_dynamicCast();
            v70 = v144;
            v128 = v144;
            v147[0] = 0;
            v147[1] = 0xE000000000000000;
            sub_1DA941364();

            v147[0] = 0x1000000000000010;
            v147[1] = 0x80000001DA9539E0;
            v71 = v136;
            v72 = v137;
            v142 = *(v137 + 16);
            v73 = v126;
            v142(v126, v54 + v66, v136);
            v74 = sub_1DA9400A4();
            v75 = v54;
            v77 = v76;
            v131 = *(v72 + 8);
            (v131)(v73, v71);
            MEMORY[0x1E1271BD0](v74, v77);

            MEMORY[0x1E1271BD0](2112041, 0xE300000000000000);
            v79 = v147[0];
            v78 = v147[1];
            v80 = [v70 body];
            v81 = sub_1DA940A14();
            v83 = v82;

            v147[0] = v79;
            v147[1] = v78;

            MEMORY[0x1E1271BD0](v81, v83);

            v84 = sub_1DA940A04();

            v85 = v128;
            [v128 setBody_];

            v86 = v133;
            v142(v73, v75 + v133, v71);
            sub_1DA9400A4();
            (v131)(v73, v71);
            v87 = v86;
            swift_beginAccess();
            v88 = v85;
            v89 = sub_1DA93FF84();
            swift_endAccess();
            v90 = [v89 request];

            v91 = [v90 trigger];
            v92 = sub_1DA940A04();

            v93 = [objc_opt_self() requestWithIdentifier:v92 content:v88 trigger:v91];

            swift_beginAccess();
            v94 = sub_1DA93FF84();
            swift_endAccess();
            v95 = [v94 date];

            v96 = v123;
            sub_1DA93FAB4();

            swift_beginAccess();
            v97 = sub_1DA93FF84();
            swift_endAccess();
            v98 = [v97 sourceIdentifier];

            if (!v98)
            {
              sub_1DA940A14();
              v98 = sub_1DA940A04();
            }

            swift_beginAccess();
            v99 = sub_1DA93FF84();
            swift_endAccess();
            v100 = [v99 intentIdentifiers];

            if (!v100)
            {
              sub_1DA940BE4();
              v100 = sub_1DA940BD4();
            }

            v101 = sub_1DA93FA44();
            v102 = [objc_opt_self() notificationWithRequest:v93 date:v101 sourceIdentifier:v98 intentIdentifiers:v100];

            (*(v124 + 8))(v96, v125);
            swift_beginAccess();
            sub_1DA940064();
            swift_endAccess();
            v103 = v126;
            sub_1DA93FF04();

            swift_beginAccess();
            (*(v137 + 40))(v75 + v87, v103, v71);
            swift_endAccess();
            v64 = v143;
            v55 = v138;
            v61 = v130;
            v46 = v129;
          }
        }

        sub_1DA822F48(v46, v134, &qword_1ECBD60B0, &unk_1DA95DFC0);
        swift_beginAccess();
        sub_1DA93FF24();
        sub_1DA822F48(v61, v135, &qword_1ECBD60A8, &unk_1DA963DC0);
        sub_1DA93FF44();
        result = swift_endAccess();
        if (!__OFADD__(v140, 1))
        {
          sub_1DA7B98DC(v139, v64, v140 + 1, v141, v132);

          sub_1DA7BA120(v61, &qword_1ECBD60A8, &unk_1DA963DC0);
          sub_1DA7BA120(v46, &qword_1ECBD60B0, &unk_1DA95DFC0);
LABEL_30:
          v114 = v55;
          return sub_1DA899B2C(v114);
        }

        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {
      v55 = v136;
      v61 = v137;
      (*(v137 + 32))(v45, v52, v136);
      v104 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
      swift_beginAccess();
      (*(v61 + 24))(v54 + v104, v45, v55);
      swift_endAccess();
      v147[0] = 0;
      v147[1] = 0xE000000000000000;
      sub_1DA941364();

      strcpy(v147, "Success for '");
      HIWORD(v147[1]) = -4864;
      v105 = sub_1DA7BAAB4();
      MEMORY[0x1E1271BD0](v105);

      MEMORY[0x1E1271BD0](11815, 0xE200000000000000);
      v64 = v143;
      sub_1DA7BAA9C(v147[0], v147[1]);

      if (v133)
      {
        sub_1DA81E1BC(0);
      }

      if (!__OFADD__(v140, 1))
      {
        sub_1DA7B98DC(v139, v64, v140 + 1, v141, v132);

        return (*(v61 + 8))(v45, v55);
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_8;
  }

  if (a3)
  {
    return sub_1DA81E1BC(1);
  }

  return result;
}

uint64_t sub_1DA7BEC80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7470;

  return sub_1DA7BD274(a1, v4, v5, v6, v8, v7);
}

uint64_t get_enum_tag_for_layout_string_s6ResultOy25UserNotificationsServices0B12NotificationV0bC4Core11StepFailureOGIegn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DA7BED88()
{
  v14 = v0;
  v1 = v0[2];
  v2 = sub_1DA9400E4();
  v4 = v3;
  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE11AFA0);

  v6 = sub_1DA940584();
  v7 = sub_1DA940F34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1DA7AE6E8(v2, v4, &v13);
    _os_log_impl(&dword_1DA7A9000, v6, v7, "Removing index: [%{public}s]", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v10 = swift_allocObject();
  v0[3] = v10;
  *(v10 + 16) = xmmword_1DA9596E0;
  *(v10 + 32) = v2;
  *(v10 + 40) = v4;
  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = sub_1DA8915B8;

  return sub_1DA7BEF8C(0, v10, 0);
}

uint64_t sub_1DA7BEF8C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA7BEFB0, 0, 0);
}

uint64_t sub_1DA7BEFB0()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 64);
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = [objc_allocWithZone(MEMORY[0x1E6964E78]) init];
    *(v0 + 32) = v4;
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x1E69E8920] + 4);
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_1DA7B6E28;

    return MEMORY[0x1EEE6DE38]();
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t _s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0()
{
  if (MEMORY[0x1E69A12D8])
  {
    v2 = MEMORY[0x1E69A12E8] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || MEMORY[0x1E69A12F0] == 0)
  {
    return 0;
  }

  v25[12] = v0;
  v25[13] = v1;
  v5 = sub_1DA93FBD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (qword_1EE111170 != -1)
  {
    v8 = swift_once();
  }

  v10 = *(qword_1EE11ADD8 + 24);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v25[-2] = v12;
  v25[-1] = &unk_1F5631418;
  MEMORY[0x1EEE9AC00](v11);
  v25[-2] = sub_1DA7BFA84;
  v25[-1] = v13;

  os_unfair_lock_lock(v10 + 4);
  sub_1DA7BFAB8(v14);
  os_unfair_lock_unlock(v10 + 4);

  MEMORY[0x1EEE9AC00](v15);
  (*(v6 + 16))(v25 - v9, v25 - v9, v5);
  v16 = (*(v6 + 88))(v25 - v9, v5);
  if (MEMORY[0x1E69A0EF0] && v16 == *MEMORY[0x1E69A0EF0])
  {
    if (qword_1EE110D90 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    __swift_project_value_buffer(v17, qword_1EE11AD60);
    v18 = sub_1DA940584();
    v19 = sub_1DA940F14();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_32;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Generative models restricted.";
    goto LABEL_31;
  }

  if (MEMORY[0x1E69A0F08] && v16 == *MEMORY[0x1E69A0F08])
  {
    if (qword_1EE110D90 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1EE11AD60);
    v18 = sub_1DA940584();
    v19 = sub_1DA940F14();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_32;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Generative models unavailable.";
    goto LABEL_31;
  }

  if (MEMORY[0x1E69A1198] && v16 == *MEMORY[0x1E69A1198])
  {
    (*(v6 + 8))(v25 - v9, v5);
    return 1;
  }

  if (qword_1EE110D90 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11AD60);
  v18 = sub_1DA940584();
  v19 = sub_1DA940F14();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Received unknown generative models availability state";
LABEL_31:
    _os_log_impl(&dword_1DA7A9000, v18, v19, v21, v20, 2u);
    MEMORY[0x1E12739F0](v20, -1, -1);
  }

LABEL_32:

  v24 = *(v6 + 8);
  v24(v25 - v9, v5);
  v24(v25 - v9, v5);
  return 0;
}

uint64_t sub_1DA7BF5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7000, &qword_1DA95BF48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - v8;
  swift_beginAccess();
  v42 = a1;
  v43 = a2;
  v10 = *(a1 + 16);
  if (*(v10 + 16))
  {

    v11 = sub_1DA7BFAD4(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *(v10 + 56);
      v15 = sub_1DA93FBD4();
      v16 = v9;
      v17 = *(v15 - 8);
      (*(v17 + 16))(v16, v14 + *(v17 + 72) * v13, v15);

      v18 = (*(v17 + 56))(v16, 0, 1, v15);
      v9 = v16;
      goto LABEL_6;
    }
  }

  v15 = sub_1DA93FBD4();
  v18 = (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
LABEL_6:
  MEMORY[0x1EEE9AC00](v18);
  v19 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1DA7BFC94(v9, &v36 - v19);
  sub_1DA93FBD4();
  v20 = *(v15 - 8);
  if ((*(v20 + 48))(&v36 - v19, 1, v15) == 1)
  {
    sub_1DA7BFD04(&v36 - v19);
    v38 = sub_1DA93FC24();
    v39 = &v36;
    v21 = *(v38 - 8);
    v41 = v3;
    v22 = v21;
    v23 = *(v21 + 64);
    MEMORY[0x1EEE9AC00](v38);
    v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = sub_1DA93FBF4();
    v36 = &v36;
    v37 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v27 = *(v26 - 8);
    v28 = *(v27 + 64);
    MEMORY[0x1EEE9AC00](v26);
    v30 = &v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v9;
    v31 = v43;

    sub_1DA93FBE4();
    sub_1DA93FC14();
    (*(v27 + 8))(v30, v26);
    v32 = v44;
    sub_1DA93FC04();
    v33 = (*(v22 + 8))(v25, v38);
    MEMORY[0x1EEE9AC00](v33);
    v34 = &v36 - v37;
    (*(v20 + 16))(&v36 - v37, v32, v15);
    (*(v20 + 56))(v34, 0, 1, v15);
    swift_beginAccess();

    sub_1DA8F0BBC(v34, v31);
    swift_endAccess();
    return sub_1DA7BFD04(v40);
  }

  else
  {
    sub_1DA7BFD04(v9);
    return (*(v20 + 32))(v44, &v36 - v19, v15);
  }
}

unint64_t sub_1DA7BFAD4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DA941764();
  v4 = *(a1 + 16);
  MEMORY[0x1E1272850](v4);
  if (v4)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1DA940AB4();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v8 = sub_1DA941794();

  return sub_1DA7BFB84(a1, v8);
}

unint64_t sub_1DA7BFB84(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1DA941684() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1DA7BFC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7000, &qword_1DA95BF48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA7BFD04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7000, &qword_1DA95BF48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DA7BFD6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v24 = a2;
  v22 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E90, &unk_1DA95D9E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  if (a3)
  {
    sub_1DA7AF3EC(0, &qword_1EE114DD0, 0x1E6964E80);
    v23 = sub_1DA940BD4();
    if (a4)
    {
LABEL_3:
      v13 = sub_1DA940BD4();
      goto LABEL_6;
    }
  }

  else
  {
    v23 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v14 = *MEMORY[0x1E696A388];
  v15 = sub_1DA940A04();
  v16 = 32;
  if ((a5 & 1) == 0)
  {
    v16 = 0;
  }

  v21 = v16;
  (*(v9 + 16))(v12, v22, v8);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v9 + 32))(v18 + v17, v12, v8);
  aBlock[4] = sub_1DA7B6374;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7B1BFC;
  aBlock[3] = &block_descriptor_11;
  v19 = _Block_copy(aBlock);

  v20 = v23;
  [v24 indexSearchableItems:v23 deleteSearchableItemsWithIdentifiers:v13 clientState:0 protectionClass:v14 forBundleID:v15 options:v21 completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_1DA7C000C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E90, &unk_1DA95D9E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void *sub_1DA7C00F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1DA7C0140(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1DA7C01C4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1DA7C01E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DA7C0224()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(sub_1DA941134() - 8);
  v9 = *(v8 + 80);
  v18 = *(v8 + 64);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = *(v1 - 8);
  v12 = *(v11 + 80);
  v17 = *(v11 + 64);
  v13 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v3 + 8))(&v0[v5], AssociatedTypeWitness);
  v14 = *(v7 - 8);
  if (!(*(v14 + 48))(&v0[v10], 1, v7))
  {
    (*(v14 + 8))(&v0[v10], v7);
  }

  v15 = (v10 + v18 + v12) & ~v12;
  (*(v11 + 8))(&v0[v15], v1);

  return MEMORY[0x1EEE6BDD0](v0, v15 + v17, v4 | v9 | v12 | 7);
}

uint64_t sub_1DA7C0488()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C0514(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FAF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DA7C0580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FAF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DA7C05F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA9401F4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA7C065C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1DA9401F4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1DA7C06E4()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C07B0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C07E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C0834(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1DA8295C8(v4);
}

uint64_t sub_1DA7C0870()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C08B8()
{
  if (*(v0 + 16) >= 4uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C08F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C0930()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C0A00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1DA7C0A4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DA7C0A98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C0AD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C0B08()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C0B48()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA7C0B94()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C0C60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA7C0CBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return sub_1DA839270(v5, v3);
}

unint64_t sub_1DA7C0D0C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1DA7C0D80()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C0DB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA7C0E14(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DA7C0E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DA9401F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DA7C0F3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DA9401F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1DA7C0FF4()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  v8 = *(v0 + 56);

  v9 = *(v0 + 80);

  v10 = *(v0 + 96);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C10E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DA7C1134()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C117C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA7C11CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DA7C122C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C127C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C12BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C12F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57C0, &qword_1DA95BE48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7C13C8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C140C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1DA7C1540(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DA7C1690()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C16D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C1728()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C17AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C17E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C181C()
{
  v1 = *(v0 + 16);

  sub_1DA8839C0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DA7C1860()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C18A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C18E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C1920()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C195C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C19B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C1A04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C1A98()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7C1B2C()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C1BB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C1C40()
{
  if (*(v0 + 16) >= 4uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C1C80(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_1DA93F964();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C1D2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA93F964();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C1DD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA7C1E08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C1E48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C1EA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C1EF0()
{
  v1 = sub_1DA9401F4();
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

uint64_t sub_1DA7C1FCC()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C2004()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C204C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C2084()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C20BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C20F4()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7C2224(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1DA8C17F8(v4);
}

void sub_1DA7C2254(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1DA8C1CC8(v2);
}

id sub_1DA7C228C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DA8C12E8();
  *a2 = result;
  return result;
}

uint64_t sub_1DA7C22BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6678, &qword_1DA95FC48);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DA7C2334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6678, &qword_1DA95FC48);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DA7C23B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C2480()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7C256C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C25A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C2638()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C2670()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DA7C26D8()
{
  v1 = type metadata accessor for DismissalSyncBulletin(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = v1[8];
  v12 = sub_1DA93FAF4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = *(v6 + v1[9] + 8);

  v15 = *(v6 + v1[10] + 8);

  v16 = *(v6 + v1[11] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DA7C285C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
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
      v13 = sub_1DA93FAF4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DA7C298C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
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
      v13 = sub_1DA93FAF4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DA7C2ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DA93FAF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C2B68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA93FAF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C2C0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C2C44()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DA7C2CA4()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DA7C2D90()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DA7C2DE8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DA7C2E38()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DA7C2E90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1DA7C2EEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DA7C2F48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C2F88()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C2FD0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C3008()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C3084(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DA93FAF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C3130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA93FAF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C31D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CloudAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C3280(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CloudAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1DA7C3388(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_1DA8DCE54(v4);
}

uint64_t sub_1DA7C33B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1DA7C33F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

uint64_t sub_1DA7C344C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA8E4CB8(1);
  *a1 = result & 1;
  return result;
}

void sub_1DA7C347C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1DA8DC354(*a1);
  sub_1DA8E17E4();
}

uint64_t sub_1DA7C34A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C3518()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C3558()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C35A8()
{

  return swift_deallocClassInstance();
}

id sub_1DA7C35E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = XPCSettingsProvider.systemSettings.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DA7C363C()
{
  v1 = sub_1DA9407A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);
  if (v5 != 255)
  {
    sub_1DA8EE83C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v5);
  }

  v6 = (v3 + 56) & ~v3;
  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1DA7C372C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C3768()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C37A0()
{
  v1 = type metadata accessor for DismissalSyncBulletin(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = v1[8];
  v12 = sub_1DA93FAF4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = *(v6 + v1[9] + 8);

  v15 = *(v6 + v1[10] + 8);

  v16 = *(v6 + v1[11] + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1DA7C3930()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C3978@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA7C39D4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DA7C3A38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C3AF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C3BA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C3C60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C3D10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C3D50()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C3D88()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DA7C3DD0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  if (v0[9])
  {
    v5 = v0[10];
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DA7C3E30()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C3E68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C3EB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DA7C3F04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C3F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1DA93FB24();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DA7C4034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1DA93FB24();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DA7C4130()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C4168()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C41A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C41F0()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C4234()
{
  v1 = sub_1DA9407A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7C430C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DA93FAF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C43B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA93FAF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C445C()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DA9407A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  v13 = *(v0 + 4);

  v14 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DA7C45C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C4624()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C465C()
{
  sub_1DA92A328(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DA7C46A8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C46F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C4730()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C47F4()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 9) & ~v7;
  v19 = v3 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v13 = *(v0 + v5);

  v12(v0 + v8, v1);
  v14 = *(v0 + v9);

  v15 = *(v0 + v10);

  v16 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v16 + 16, v19 | 7);
}

uint64_t sub_1DA7C49A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C49E0()
{
  v1 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for StepFailure(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1DA9401F4();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  v10 = *(v0 + v4);

  v11 = v0 + v7;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = &unk_1ECBD60C0;
      v14 = &unk_1DA965C60;
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_10;
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + v7));
  v13 = &qword_1ECBD4E88;
  v14 = &unk_1DA958C30;
LABEL_6:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  v16 = *(v15 + 48);
  v17 = sub_1DA9402D4();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v11 + v16, 1, v17))
  {
    (*(v18 + 8))(v11 + v16, v17);
  }

  v19 = *(v15 + 64);
  v20 = sub_1DA9402E4();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v11 + v19, 1, v20))
  {
    (*(v21 + 8))(v11 + v19, v20);
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v2 | v6 | 7);
}