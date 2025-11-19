uint64_t UserNotificationsVendorServer.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1DA7C5714(v0 + 40);
  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  return v0;
}

uint64_t UserNotificationsVendorServer.__deallocating_deinit()
{
  UserNotificationsVendorServer.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UserNotificationsVendorServer.perform(action:)(UserNotificationsCore::NotificationActionSelector *action)
{
  v3 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v74 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v72 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v71 = v68 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v70 = v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v68 - v15;
  notificationIdentifier = action->notificationIdentifier;
  bundleIdentifier = action->bundleIdentifier;
  v79 = notificationIdentifier;
  userText = action->userText;
  actionIdentifier = action->actionIdentifier;
  v18 = actionIdentifier;
  v81 = userText;
  *v6 = bundleIdentifier;
  v6[1] = notificationIdentifier;
  v6[2] = v18;
  v6[3] = userText.value;
  swift_storeEnumTagMultiPayload();
  v20 = bundleIdentifier;
  v21 = v1[4];
  v68[1] = v1[7];
  v73 = v1;
  countAndFlagsBits = v1[8];
  v22 = *(v7 + 36);
  v23 = sub_1DA93FE74();
  v24 = *(*(v23 - 8) + 56);
  v68[0] = v16;
  v24(&v16[v22], 1, 1, v23);
  sub_1DA848A24(&bundleIdentifier, v77);

  v25 = MEMORY[0x1E69E7CC0];
  *&v77[0] = sub_1DA847D80(MEMORY[0x1E69E7CC0]);

  sub_1DA8F6BEC(v25, v21, v20._countAndFlagsBits, v20._object, v77);

  sub_1DA81AACC(v6, v16, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v26 = *&v77[0];
  ObjectType = swift_getObjectType();
  v28 = countAndFlagsBits;
  v29 = *(countAndFlagsBits + 8);

  v30 = v29(v20._countAndFlagsBits, v20._object, ObjectType, v28);
  v31 = v68[0];
  v32 = v30;
  sub_1DA866354(v6, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);

  v33 = v74;
  v34 = (v31 + v74[5]);
  countAndFlagsBits = v20._countAndFlagsBits;
  *v34 = v20;
  *(v31 + v33[6]) = v26;
  *(v31 + v33[7]) = MEMORY[0x1E69E7CC0];
  *(v31 + v33[8]) = v32;
  if (qword_1EE114E10 != -1)
  {
    swift_once();
  }

  v35 = sub_1DA9405A4();
  __swift_project_value_buffer(v35, qword_1EE114E20);
  v36 = v70;
  sub_1DA81AACC(v31, v70, type metadata accessor for UserNotificationsVendorTransaction);
  sub_1DA848A24(&bundleIdentifier, v77);
  v37 = sub_1DA940584();
  v38 = sub_1DA940F34();
  sub_1DA84A040(&bundleIdentifier);
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v76[0] = v40;
    *v39 = 136315650;
    v77[0] = bundleIdentifier;
    v77[1] = v79;
    v77[2] = actionIdentifier;
    v77[3] = v81;
    sub_1DA848A24(&bundleIdentifier, v75);
    v41 = sub_1DA940A74();
    v43 = sub_1DA7AE6E8(v41, v42, v76);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_1DA7AE6E8(countAndFlagsBits, v20._object, v76);
    *(v39 + 22) = 2080;
    sub_1DA81AACC(v20._countAndFlagsBits, v71, type metadata accessor for UserNotificationsVendorTransaction);
    v44 = sub_1DA940A74();
    v46 = v45;
    sub_1DA866354(v20._countAndFlagsBits, type metadata accessor for UserNotificationsVendorTransaction);
    v47 = sub_1DA7AE6E8(v44, v46, v76);

    *(v39 + 24) = v47;
    _os_log_impl(&dword_1DA7A9000, v37, v38, "perform(action): %s forBundleIdentifier: %s transaction: %s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v40, -1, -1);
    MEMORY[0x1E12739F0](v39, -1, -1);
  }

  else
  {

    sub_1DA866354(v36, type metadata accessor for UserNotificationsVendorTransaction);
  }

  v48 = v73;

  v49 = sub_1DA940584();
  v50 = sub_1DA940F34();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v75[0] = v52;
    *v51 = 136315138;
    swift_beginAccess();
    v53 = v73[13];
    sub_1DA93FB24();
    type metadata accessor for VendorSession();
    sub_1DA8F71B4(&qword_1EE115A40, MEMORY[0x1E69695A8]);

    v54 = sub_1DA940984();
    v56 = v55;

    v57 = sub_1DA7AE6E8(v54, v56, v75);

    *(v51 + 4) = v57;
    v48 = v73;
    _os_log_impl(&dword_1DA7A9000, v49, v50, "perform(action): sessions: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1E12739F0](v52, -1, -1);
    MEMORY[0x1E12739F0](v51, -1, -1);
  }

  v58 = v72;
  v59 = *(*(v48 + 96) + 16);
  os_unfair_lock_lock(v59);
  sub_1DA8F3490(v48, v31, "notificationRepositoryDidPerformUpdates: sending to client: %s transaction: %s", "notificationRepositoryDidPerformUpdates: ERROR sending to client: %s transaction: %s error: %@");
  os_unfair_lock_unlock(v59);
  sub_1DA81AACC(v31, v58, type metadata accessor for UserNotificationsVendorTransaction);
  v60 = sub_1DA940584();
  v61 = sub_1DA940F34();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v75[0] = v63;
    *v62 = 136315138;
    sub_1DA81AACC(v58, v71, type metadata accessor for UserNotificationsVendorTransaction);
    v64 = sub_1DA940A74();
    v66 = v65;
    sub_1DA866354(v58, type metadata accessor for UserNotificationsVendorTransaction);
    v67 = sub_1DA7AE6E8(v64, v66, v75);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_1DA7A9000, v60, v61, "perform(action): completed transaction: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1E12739F0](v63, -1, -1);
    MEMORY[0x1E12739F0](v62, -1, -1);
  }

  else
  {

    sub_1DA866354(v58, type metadata accessor for UserNotificationsVendorTransaction);
  }

  sub_1DA866354(v31, type metadata accessor for UserNotificationsVendorTransaction);
}

uint64_t sub_1DA8F3490(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v89 = a4;
  v95 = a3;
  v113 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  v5 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v88 - v6;
  v7 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v96 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v88 - v14;
  v111 = sub_1DA93FB24();
  v15 = *(v111 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v99 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6FC8, &qword_1DA962780);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v106 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v88 - v22;
  swift_beginAccess();
  v24 = *(a1 + 104);
  v25 = *(v24 + 64);
  v105 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v90 = (v26 + 63) >> 6;
  v98 = v15 + 16;
  v97 = v15 + 32;
  v92 = 0x80000001DA955D20;
  v100 = v15;
  v103 = (v15 + 8);
  v101 = v24;

  v30 = 0;
  *&v31 = 136315394;
  v91 = v31;
  *&v31 = 136315650;
  v88 = v31;
  v109 = v23;
  v110 = v7;
  v107 = v11;
  while (v28)
  {
    v112 = 0;
    v32 = v30;
LABEL_16:
    v36 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v37 = v36 | (v32 << 6);
    v38 = v101;
    v39 = v100;
    v40 = v99;
    v41 = v111;
    (*(v100 + 16))(v99, *(v101 + 48) + *(v100 + 72) * v37, v111);
    v42 = *(*(v38 + 56) + 8 * v37);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FD0, &qword_1DA962788);
    v44 = *(v43 + 48);
    v45 = *(v39 + 32);
    v35 = v106;
    v45(v106, v40, v41);
    *(v35 + v44) = v42;
    (*(*(v43 - 8) + 56))(v35, 0, 1, v43);

    v23 = v109;
LABEL_17:
    sub_1DA8F70F0(v35, v23);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FD0, &qword_1DA962788);
    if ((*(*(v46 - 8) + 48))(v23, 1, v46) == 1)
    {
    }

    v47 = *&v23[*(v46 + 48)];
    if (qword_1EE114E10 != -1)
    {
      swift_once();
    }

    v48 = sub_1DA9405A4();
    v49 = __swift_project_value_buffer(v48, qword_1EE114E20);
    v50 = v104;
    sub_1DA81AACC(v113, v104, type metadata accessor for UserNotificationsVendorTransaction);

    v51 = sub_1DA940584();
    v52 = sub_1DA940F34();

    v53 = v52;
    v54 = os_log_type_enabled(v51, v52);
    v108 = v49;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v102 = v56;
      *v55 = v91;
      v114 = 0;
      v115 = 0xE000000000000000;
      v116 = v56;

      sub_1DA941364();

      v114 = 0xD000000000000010;
      v115 = v92;
      sub_1DA8F71B4(&qword_1EE114C50, MEMORY[0x1E69695A8]);
      v57 = sub_1DA941614();
      MEMORY[0x1E1271BD0](v57);

      MEMORY[0x1E1271BD0](0x55746E65696C6320, 0xED0000203A444955);
      v58 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID;
      swift_beginAccess();
      sub_1DA8F7018(v47 + v58, v93);
      v59 = sub_1DA940A74();
      MEMORY[0x1E1271BD0](v59);

      MEMORY[0x1E1271BD0](62, 0xE100000000000000);

      v60 = sub_1DA7AE6E8(v114, v115, &v116);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      sub_1DA81AACC(v50, v96, type metadata accessor for UserNotificationsVendorTransaction);
      v61 = sub_1DA940A74();
      v63 = v62;
      sub_1DA866354(v50, type metadata accessor for UserNotificationsVendorTransaction);
      v64 = sub_1DA7AE6E8(v61, v63, &v116);
      v23 = v109;

      *(v55 + 14) = v64;
      _os_log_impl(&dword_1DA7A9000, v51, v53, v95, v55, 0x16u);
      v65 = v102;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v65, -1, -1);
      MEMORY[0x1E12739F0](v55, -1, -1);
    }

    else
    {

      sub_1DA866354(v50, type metadata accessor for UserNotificationsVendorTransaction);
    }

    v66 = v112;
    v67 = *__swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session), *(v47 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session + 24));
    sub_1DA8F71B4(qword_1EE1141E0, type metadata accessor for UserNotificationsVendorTransaction);
    sub_1DA940624();
    v68 = v66;
    if (v66)
    {
      sub_1DA81AACC(v113, v107, type metadata accessor for UserNotificationsVendorTransaction);

      v69 = v66;
      v70 = sub_1DA940584();
      v71 = sub_1DA940F34();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v114 = v108;
        *v72 = v88;

        v75 = sub_1DA8F6E64(v74);
        v112 = v68;
        v77 = v76;

        v78 = sub_1DA7AE6E8(v75, v77, &v114);

        *(v72 + 4) = v78;
        *(v72 + 12) = 2080;
        sub_1DA81AACC(v107, v96, type metadata accessor for UserNotificationsVendorTransaction);
        v79 = sub_1DA940A74();
        v81 = v80;
        sub_1DA866354(v107, type metadata accessor for UserNotificationsVendorTransaction);
        v82 = sub_1DA7AE6E8(v79, v81, &v114);
        v23 = v109;

        *(v72 + 14) = v82;
        *(v72 + 22) = 2112;
        v83 = v112;
        v84 = v112;
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v72 + 24) = v85;
        *v73 = v85;
        _os_log_impl(&dword_1DA7A9000, v70, v71, v89, v72, 0x20u);
        sub_1DA7BA120(v73, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v73, -1, -1);
        v86 = v108;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v86, -1, -1);
        MEMORY[0x1E12739F0](v72, -1, -1);
      }

      else
      {

        sub_1DA866354(v107, type metadata accessor for UserNotificationsVendorTransaction);
      }
    }

    else
    {
    }

    result = (*v103)(v23, v111);
  }

  if (v90 <= v30 + 1)
  {
    v33 = v30 + 1;
  }

  else
  {
    v33 = v90;
  }

  v34 = v33 - 1;
  v35 = v106;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v90)
    {
      v112 = 0;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FD0, &qword_1DA962788);
      (*(*(v87 - 8) + 56))(v35, 1, 1, v87);
      v28 = 0;
      v30 = v34;
      goto LABEL_17;
    }

    v28 = *(v105 + 8 * v32);
    ++v30;
    if (v28)
    {
      v112 = 0;
      v30 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1DA8F400C(uint64_t a1)
{
  v3 = sub_1DA93FB24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 96);
  os_unfair_lock_lock(*(v8 + 16));
  if (qword_1EE114E10 != -1)
  {
    swift_once();
  }

  v9 = sub_1DA9405A4();
  __swift_project_value_buffer(v9, qword_1EE114E20);

  v10 = sub_1DA940584();
  v11 = sub_1DA940F34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v8;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v3;
    v15 = v14;
    v26[0] = v14;
    *v13 = 136315138;

    v17 = sub_1DA8F6E64(v16);
    v19 = v18;

    v20 = sub_1DA7AE6E8(v17, v19, v26);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1DA7A9000, v10, v11, "handleCancellation: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v21 = v15;
    v3 = v24;
    MEMORY[0x1E12739F0](v21, -1, -1);
    v22 = v13;
    v8 = v25;
    MEMORY[0x1E12739F0](v22, -1, -1);
  }

  (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_key, v3);
  swift_beginAccess();
  sub_1DA8F1020(0, v7);
  swift_endAccess();
  os_unfair_lock_unlock(*(v8 + 16));
}

uint64_t sub_1DA8F427C()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE114E20);
  __swift_project_value_buffer(v0, qword_1EE114E20);
  return sub_1DA940594();
}

uint64_t sub_1DA8F42F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_1DA85A4B4(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DA860068();
      v12 = v14;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    *a3 = *(*(v12 + 56) + 8 * v9);
    result = sub_1DA8F5124(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 5;
  }

  return result;
}

uint64_t sub_1DA8F4390@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = sub_1DA85A5DC(a1);
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v30 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_1DA93FB24();
    v20 = v14;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
    v21 = *(v17 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a5, v21 + *(v29 + 72) * v20, v22);
    sub_1DA8F52D4(v20, v17, a2, a3);
    *v9 = v17;
    v23 = *(v29 + 56);
    v24 = a5;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a5;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1DA8F455C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_1DA85A4B4(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = a3(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    sub_1DA8F61C8(v15, v18, a4);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a3(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_1DA8F46F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DA7BFAD4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DA86079C();
      v11 = v22;
    }

    v12 = *(*(v11 + 48) + 8 * v8);

    v13 = *(v11 + 56);
    v14 = sub_1DA93FBD4();
    v21 = *(v14 - 8);
    (*(v21 + 32))(a2, v13 + *(v21 + 72) * v8, v14);
    sub_1DA8F5618(v8, v11);
    *v3 = v11;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = sub_1DA93FBD4();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1DA8F4874(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1DA85A5A0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DA8611E0();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_1DA8F59C0(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_1DA8F48FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1DA85A4B4(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DA86133C();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1DA8F5124(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1DA8F49AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3;
  v6 = *v3;
  v7 = sub_1DA85A4B4(a1, a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v16 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v12 = v16;
  }

  v13 = *(*(v12 + 48) + 16 * v9 + 8);

  v14 = *(*(v12 + 56) + 8 * v9);
  sub_1DA8F5124(v9, v12);
  *v5 = v12;
  return v14;
}

double sub_1DA8F4A4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DA85A4B4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DA861364();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 32) = *(v14 + 32);
    sub_1DA8F5B30(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&result = 1;
    *(a3 + 24) = xmmword_1DA95D870;
  }

  return result;
}

uint64_t sub_1DA8F4B20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1DA85A7CC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DA86168C();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v6);
  sub_1DA8F5CEC(v6, v9);
  *v2 = v9;
  return v10;
}

uint64_t sub_1DA8F4C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_1DA85A4B4(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    sub_1DA8F7088(v22 + *(v30 + 72) * v17, a7, a4);
    sub_1DA8F61C8(v17, v20, a5);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

unint64_t sub_1DA8F4DE0(int64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FEC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_1DA9411F4();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1DA8F71B4(&qword_1ECBD5940, MEMORY[0x1E69DF0D0]);
      v24 = sub_1DA9409A4();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_1DA93FAF4() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DA8F5124(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DA941764();

      sub_1DA940AB4();
      v13 = sub_1DA941794();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DA8F52D4(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v40 = a3;
  v41 = a4;
  v6 = sub_1DA93FB24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = sub_1DA9411F4();
    v17 = v15;
    v45 = (v16 + 1) & v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v43 = a2 + 64;
    v44 = v19;
    v20 = *(v18 + 56);
    v42 = (v18 - 8);
    v46 = v20;
    do
    {
      v21 = v20 * v14;
      v22 = v17;
      v23 = v18;
      v44(v11, *(a2 + 48) + v20 * v14, v6);
      v24 = *(a2 + 40);
      sub_1DA8F71B4(&qword_1EE115A40, MEMORY[0x1E69695A8]);
      v25 = sub_1DA9409A4();
      result = (*v42)(v11, v6);
      v17 = v22;
      v26 = v25 & v22;
      if (a1 >= v45)
      {
        if (v26 >= v45 && a1 >= v26)
        {
LABEL_15:
          v18 = v23;
          if (v46 * a1 < v21 || *(a2 + 48) + v46 * a1 >= (*(a2 + 48) + v21 + v46))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v46 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v40, v41) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v14;
          v33 = v29 + v30 * v14 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v14;
            v12 = v43;
            v17 = v22;
          }

          else
          {
            a1 = v14;
            v35 = v31 == v32;
            v12 = v43;
            v17 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v17 = v22;
              a1 = v14;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v45 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v18 = v23;
      v12 = v43;
LABEL_4:
      v14 = (v14 + 1) & v17;
      v20 = v46;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DA8F5618(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    v30 = v2;
    while (1)
    {
      v9 = *(v2 + 40);
      v10 = *(*(v2 + 48) + 8 * v6);
      sub_1DA941764();
      MEMORY[0x1E1272850](*(v10 + 16));
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v8;
        v13 = v4;

        v14 = (v10 + 40);
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;

          sub_1DA940AB4();

          v14 += 2;
          --v11;
        }

        while (v11);

        v4 = v13;
        v8 = v12;
        v2 = v30;
      }

      result = sub_1DA941794();
      v17 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v17 < v8)
      {
        goto LABEL_14;
      }

LABEL_15:
      v18 = *(v2 + 48);
      v19 = (v18 + 8 * v3);
      v20 = (v18 + 8 * v6);
      if (v3 != v6 || v19 >= v20 + 1)
      {
        *v19 = *v20;
      }

      v21 = *(v2 + 56);
      v22 = *(*(sub_1DA93FBD4() - 8) + 72);
      v23 = v22 * v3;
      result = v21 + v22 * v3;
      v24 = v22 * v6;
      v25 = v21 + v22 * v6 + v22;
      if (v23 < v24 || result >= v25)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v23 == v24)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (v17 < v8)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v3 < v17)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_24:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_1DA8F5850(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1DA941754();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DA8F59C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1DA941754();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DA8F5B30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1DA941764();

      sub_1DA940AB4();
      v15 = sub_1DA941794();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DA8F5CEC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1DA941104();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_1DA8F5EA8(int64_t a1, uint64_t a2)
{
  v43 = sub_1DA93FB24();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_1DA9411F4();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1DA8F71B4(&qword_1EE115A40, MEMORY[0x1E69695A8]);
      v26 = sub_1DA9409A4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1DA8F61C8(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1DA9411F4() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_1DA941764();

      sub_1DA940AB4();
      v15 = sub_1DA941794();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1DA8F63BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();

  return sub_1DA8F646C(a1, a2, a3, a4, a5, a6, a7, v18, a9, a10, a11, a12);
}

void *sub_1DA8F646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v64 = a7;
  v59 = a5;
  v60 = a6;
  v61 = a3;
  v65 = a1;
  v62 = a12;
  v63 = a4;
  v57 = a2;
  v58 = a11;
  v55[1] = *a8;
  v13 = sub_1DA940694();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55[2] = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1DA940FC4();
  v16 = *(v56 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DA940F74();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = sub_1DA940854();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  sub_1DA940834();
  v67 = MEMORY[0x1E69E7CC0];
  sub_1DA8F71B4(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA82B658();
  sub_1DA9411D4();
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8098], v56);
  v24 = v65;
  v25 = v57;
  a8[2] = sub_1DA941004();
  a8[6] = 0;
  swift_unknownObjectWeakInit();
  a8[9] = 0;
  type metadata accessor for UnfairLock();
  v26 = swift_allocObject();
  v27 = swift_slowAlloc();
  *(v26 + 16) = v27;
  *v27 = 0;
  v28 = MEMORY[0x1E69E7CC8];
  a8[12] = v26;
  a8[13] = v28;
  v29 = v60;
  a8[10] = v59;
  a8[11] = v29;
  a8[3] = v24;
  a8[4] = v25;
  a8[6] = v58;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  v30 = v62;
  a8[7] = v63;
  a8[8] = v30;
  if (v64)
  {
    v31 = a8[10];
    v32 = a8[11];
    v33 = a8[2];

    v34 = v33;
    sub_1DA940684();
    swift_allocObject();
    swift_weakInit();
    v35 = sub_1DA940734();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = sub_1DA940714();
    v40 = a8[9];
    a8[9] = v38;

    if (a8[9])
    {
      v41 = a8[9];

      sub_1DA940724();
    }

    v42 = sub_1DA940A94();
    notify_post((v42 + 32));

    if (qword_1EE114E10 != -1)
    {
      swift_once();
    }

    v43 = sub_1DA9405A4();
    __swift_project_value_buffer(v43, qword_1EE114E20);

    v44 = sub_1DA940584();
    v45 = sub_1DA940EF4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v67 = v47;
      *v46 = 136315650;
      v66 = a8;

      v48 = sub_1DA940A74();
      v50 = sub_1DA7AE6E8(v48, v49, &v67);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = a8[10];
      v52 = a8[11];

      v53 = sub_1DA7AE6E8(v51, v52, &v67);

      *(v46 + 14) = v53;
      *(v46 + 22) = 2080;
      *(v46 + 24) = sub_1DA7AE6E8(0xD00000000000002ALL, 0x80000001DA951D30, &v67);
      _os_log_impl(&dword_1DA7A9000, v44, v45, "%s serviceName: %s posted Darwin notification: %s", v46, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v47, -1, -1);
      MEMORY[0x1E12739F0](v46, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v39 = a8[9];
    a8[9] = 0;
  }

  return a8;
}

void sub_1DA8F6BEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_18:
    v6 = sub_1DA941264();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v27 = v5 & 0xFFFFFFFFFFFFFF8;
      v24 = v5 & 0xC000000000000001;
      v25 = v5;
      do
      {
        if (v8)
        {
          v9 = MEMORY[0x1E1272460](v7, v5);
        }

        else
        {
          if (v7 >= *(v27 + 16))
          {
            goto LABEL_17;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v12 = [v9 notificationRecord];
        v13 = [v12 categoryIdentifier];

        if (v13)
        {
          sub_1DA940A14();

          v14 = sub_1DA921EF4();
          if (v14)
          {
            v15 = v14;
            v16 = v6;
            v17 = [v10 notificationRecord];
            v18 = [v17 identifier];

            if (!v18)
            {
              __break(1u);
              return;
            }

            v19 = sub_1DA940A14();
            v21 = v20;

            v22 = *a5;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v28 = *a5;
            *a5 = 0x8000000000000000;
            sub_1DA90B4BC(v15, v19, v21, isUniquelyReferenced_nonNull_native);

            *a5 = v28;

            v6 = v16;
            v8 = v24;
            v5 = v25;
          }

          else
          {
          }
        }

        else
        {
        }

        ++v7;
      }

      while (v11 != v6);
    }
  }
}

unint64_t sub_1DA8F6E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - v4;
  v10[1] = 0;
  v10[2] = 0xE000000000000000;
  sub_1DA941364();

  v11 = 0xD000000000000010;
  v12 = 0x80000001DA955D20;
  sub_1DA93FB24();
  sub_1DA8F71B4(&qword_1EE114C50, MEMORY[0x1E69695A8]);
  v6 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v6);

  MEMORY[0x1E1271BD0](0x55746E65696C6320, 0xED0000203A444955);
  v7 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID;
  swift_beginAccess();
  sub_1DA8F7018(a1 + v7, v5);
  v8 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v8);

  MEMORY[0x1E1271BD0](62, 0xE100000000000000);
  return v11;
}

uint64_t sub_1DA8F7018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8F7088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8F70F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6FC8, &qword_1DA962780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8F7160()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1DA8F239C();
}

uint64_t sub_1DA8F7180@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[2];
  result = sub_1DA8F2678(a1, v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_1DA8F71B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA8F7248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1ECBD4748 != -1)
  {
    v4 = a3;
    swift_once();
    a3 = v4;
  }

  return a3();
}

uint64_t sub_1DA8F7340(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1ECBD4748 != -1)
  {
    v3 = a2;
    swift_once();
    a2 = v3;
  }

  return a2();
}

uint64_t sub_1DA8F73C8(uint64_t (*a1)(void))
{
  if (qword_1ECBD4748 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return a1();
}

double sub_1DA8F7610()
{
  v0 = sub_1DA941844();
  sub_1DA941844();
  result = (v1 / 1.0e18 + v0) * 0.5;
  *&qword_1ECBE3D98 = result;
  return result;
}

uint64_t UserNotificationsCloudPushHandler.__allocating_init(target:communicationContextContentURLDataProvider:)(__int128 *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_1DA8FA4C8(a1, v10, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

uint64_t UserNotificationsCloudPushHandler.init(target:communicationContextContentURLDataProvider:)(__int128 *a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_1DA8FA4C8(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

void sub_1DA8F7884(SEL *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v192 = a4;
  v194 = type metadata accessor for UserNotificationsCloudRecord(0);
  v9 = *(*(v194 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v194);
  v12 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v189 = &v188 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v191 = &v188 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v188 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v193 = &v188 - v21;
  v205 = sub_1DA93F964();
  v196 = *(v205 - 8);
  v22 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v210 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = [(SEL *)a1 notificationRecord];
  if (qword_1EE110E68 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v24 = sub_1DA9405A4();
    v25 = __swift_project_value_buffer(v24, qword_1EE11ADC0);
    v26 = a1;

    v218 = v25;
    v27 = sub_1DA940584();
    LODWORD(v25) = sub_1DA940F34();

    LODWORD(v217) = v25;
    v28 = os_log_type_enabled(v27, v25);
    v29 = MEMORY[0x1E69E7CA0];
    v195 = v18;
    v206 = a3;
    v207 = v5;
    v213 = v26;
    v214 = a2;
    v190 = v12;
    if (v28)
    {
      v18 = swift_slowAlloc();
      v12 = v29;
      v30 = swift_slowAlloc();
      v220[0] = v30;
      *v18 = 136315650;
      v31 = v26;
      v32 = [(SEL *)v31 description];
      v33 = sub_1DA940A14();
      v35 = v34;

      v36 = v33;
      a2 = v214;
      v37 = sub_1DA7AE6E8(v36, v35, v220);

      *(v18 + 4) = v37;
      *(v18 + 6) = 2080;
      *(v18 + 14) = sub_1DA7AE6E8(a2, a3, v220);
      *(v18 + 11) = 2080;
      sub_1DA7BABAC((v207 + 2), &v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
      v38 = sub_1DA940A74();
      v40 = sub_1DA7AE6E8(v38, v39, v220);

      *(v18 + 3) = v40;
      _os_log_impl(&dword_1DA7A9000, v27, v217, "UserNotificationsCloudPushHandler add: %s bundleIdentifier: %s target:%s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v30, -1, -1);
      MEMORY[0x1E12739F0](v18, -1, -1);
    }

    v41 = [v219 attachments];
    if (!v41)
    {
      goto LABEL_68;
    }

    v42 = v41;
    sub_1DA7AF3EC(0, &unk_1EE110C10, off_1E85D5BC8);
    v43 = sub_1DA940BE4();

    v45 = v213;
    if (v43 >> 62)
    {
      break;
    }

    v5 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_39;
    }

LABEL_7:
    a3 = 0;
    v216 = v43 & 0xC000000000000001;
    v208 = v43 & 0xFFFFFFFFFFFFFF8;
    v203 = 0x80000001DA955E50;
    v204 = 0x80000001DA950340;
    v202 = 0x80000001DA955E70;
    v200 = (v196 + 8);
    a1 = &selRef_bulletinGroupingSetting;
    *&v44 = 136315394;
    v198 = v44;
    *&v44 = 136315650;
    v199 = v44;
    v201 = xmmword_1DA95C300;
    v211 = v43;
    v215 = v5;
    while (1)
    {
      if (v216)
      {
        v47 = MEMORY[0x1E1272460](a3, v43);
      }

      else
      {
        if (a3 >= *(v208 + 16))
        {
          goto LABEL_36;
        }

        v47 = *(v43 + 8 * a3 + 32);
      }

      v18 = v47;
      v46 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      v48 = [v219 a1[285]];
      if (v48)
      {
        v12 = a1;
        v49 = v48;
        v217 = sub_1DA940A14();
        v51 = v50;

        v52 = [v18 v12 + 1656];
        if (v52)
        {
          v53 = v52;
          v54 = sub_1DA940A14();
          v56 = v55;

          v57 = [v18 URL];
          if (v57)
          {
            v212 = a3 + 1;
            v58 = v57;
            sub_1DA93F914();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7010, qword_1DA9628C0);
            inited = swift_initStackObject();
            *(inited + 16) = v201;
            v221 = 0xD000000000000010;
            v222 = v204;
            v209 = v51;
            v60 = v56;
            v61 = v54;
            v62 = MEMORY[0x1E69E6158];
            sub_1DA9412F4();
            *(inited + 96) = v62;
            v63 = v206;
            *(inited + 72) = a2;
            *(inited + 80) = v63;
            v221 = 0xD000000000000015;
            v222 = v203;

            sub_1DA9412F4();
            *(inited + 168) = v62;
            *(inited + 144) = v61;
            *(inited + 152) = v60;
            v221 = 0xD00000000000001DLL;
            v222 = v202;
            sub_1DA9412F4();
            *(inited + 240) = v62;
            v64 = v209;
            *(inited + 216) = v217;
            *(inited + 224) = v64;
            v65 = sub_1DA848EAC(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5448, &qword_1DA95B0D0);
            swift_arrayDestroy();
            v12 = v219;
            v18 = v18;

            v66 = sub_1DA940584();
            v67 = sub_1DA940F34();
            if (os_log_type_enabled(v66, v67))
            {
              LODWORD(v209) = v67;
              v217 = v66;
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v221 = v70;
              *v68 = v199;
              v71 = [v12 identifier];

              if (!v71)
              {
                goto LABEL_67;
              }

              v72 = sub_1DA940A14();
              v74 = v73;

              v75 = sub_1DA7AE6E8(v72, v74, &v221);

              *(v68 + 4) = v75;
              *(v68 + 12) = 2112;
              *(v68 + 14) = v18;
              *v69 = v18;
              *(v68 + 22) = 2080;
              v76 = v18;
              v12 = MEMORY[0x1E69E7CA0];
              v77 = sub_1DA940984();
              v79 = sub_1DA7AE6E8(v77, v78, &v221);

              *(v68 + 24) = v79;
              v66 = v217;
              _os_log_impl(&dword_1DA7A9000, v217, v209, "UserNotificationsCloudPushHandler add: %s attachment: %@ metadata: %s", v68, 0x20u);
              sub_1DA7BA120(v69, &unk_1ECBD5430, &unk_1DA959190);
              MEMORY[0x1E12739F0](v69, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x1E12739F0](v70, -1, -1);
              MEMORY[0x1E12739F0](v68, -1, -1);
            }

            else
            {
            }

            a2 = v214;
            v103 = v207[5];
            v104 = v207[6];
            __swift_project_boxed_opaque_existential_1(v207 + 2, v103);
            v105 = v210;
            (*(v104 + 32))(v210, v65, v103, v104);

            (*v200)(v105, v205);
            v46 = v212;
            v45 = v213;
          }

          else
          {
            v93 = v18;

            v94 = sub_1DA940584();
            v12 = sub_1DA940F34();

            if (os_log_type_enabled(v94, v12))
            {
              v18 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              v197 = v94;
              v96 = v95;
              v209 = swift_slowAlloc();
              v221 = v209;
              *v18 = v199;
              v97 = sub_1DA7AE6E8(v217, v51, &v221);
              v212 = a3 + 1;
              v98 = v97;

              *(v18 + 4) = v98;
              *(v18 + 6) = 2112;
              *(v18 + 14) = v93;
              *v96 = v93;
              *(v18 + 11) = 2080;
              v99 = v93;
              v100 = sub_1DA7AE6E8(v54, v56, &v221);

              *(v18 + 3) = v100;
              v101 = v197;
              _os_log_impl(&dword_1DA7A9000, v197, v12, "UserNotificationsCloudPushHandler add: %s attachment: %@ FAILED attachmentIdentifier: %s attachment.url is nil)", v18, 0x20u);
              sub_1DA7BA120(v96, &unk_1ECBD5430, &unk_1DA959190);
              MEMORY[0x1E12739F0](v96, -1, -1);
              v102 = v209;
              swift_arrayDestroy();
              MEMORY[0x1E12739F0](v102, -1, -1);
              MEMORY[0x1E12739F0](v18, -1, -1);

              v46 = v212;
            }

            else
            {
            }

            v45 = v213;
            a2 = v214;
          }

          v43 = v211;
        }

        else
        {
          v18 = v18;

          v84 = sub_1DA940584();
          v85 = sub_1DA940F34();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v221 = v12;
            *v86 = v198;
            v88 = sub_1DA7AE6E8(v217, v51, &v221);
            v217 = v84;
            v89 = v88;

            *(v86 + 4) = v89;
            v46 = a3 + 1;
            *(v86 + 12) = 2112;
            *(v86 + 14) = v18;
            *v87 = v18;
            v18 = v18;
            v90 = v217;
            _os_log_impl(&dword_1DA7A9000, v217, v85, "UserNotificationsCloudPushHandler add: %s attachment: %@ FAILED attachment.identifier is ni", v86, 0x16u);
            sub_1DA7BA120(v87, &unk_1ECBD5430, &unk_1DA959190);
            v91 = v87;
            v43 = v211;
            MEMORY[0x1E12739F0](v91, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v12);
            MEMORY[0x1E12739F0](v12, -1, -1);
            v92 = v86;
            v45 = v213;
            MEMORY[0x1E12739F0](v92, -1, -1);
          }

          else
          {
          }

          a2 = v214;
        }

        v5 = v215;
        a1 = &selRef_bulletinGroupingSetting;
      }

      else
      {
        v12 = (a3 + 1);
        v80 = sub_1DA940584();
        v81 = sub_1DA940F34();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_1DA7A9000, v80, v81, "UserNotificationsCloudPushHandler add: notificationRecord.identifier) is nil", v82, 2u);
          v83 = v82;
          v5 = v215;
          MEMORY[0x1E12739F0](v83, -1, -1);
        }

        a1 = &selRef_bulletinGroupingSetting;
        v46 = a3 + 1;
      }

      ++a3;
      if (v46 == v5)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v5 = sub_1DA941264();
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_39:

  v106 = [v219 communicationContextContentURL];
  if (v106)
  {
    v107 = v193;
    v108 = v106;
    sub_1DA93F914();

    (*(v196 + 56))(v107, 0, 1, v205);
    sub_1DA7BA120(v107, &qword_1ECBD6310, &unk_1DA95F3B0);
    v109 = v219;
    v110 = sub_1DA940584();
    v111 = sub_1DA940F34();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v221 = v113;
      *v112 = 136315138;
      v114 = [v109 identifier];

      if (v114)
      {
        v115 = sub_1DA940A14();
        v117 = v116;

        v118 = sub_1DA7AE6E8(v115, v117, &v221);

        *(v112 + 4) = v118;
        v119 = "UserNotificationsCloudPushHandler add: %s communicationImage not fetched and delivered as nil ";
        goto LABEL_46;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return;
    }

LABEL_47:

    v126 = v206;
  }

  else
  {
    v120 = v193;
    (*(v196 + 56))(v193, 1, 1, v205);
    sub_1DA7BA120(v120, &qword_1ECBD6310, &unk_1DA95F3B0);
    v109 = v219;
    v110 = sub_1DA940584();
    v111 = sub_1DA940F34();
    if (!os_log_type_enabled(v110, v111))
    {
      goto LABEL_47;
    }

    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v221 = v113;
    *v112 = 136315138;
    v121 = [v109 identifier];

    if (!v121)
    {
      goto LABEL_70;
    }

    v122 = sub_1DA940A14();
    v124 = v123;

    v125 = sub_1DA7AE6E8(v122, v124, &v221);

    *(v112 + 4) = v125;
    v119 = "UserNotificationsCloudPushHandler add: %s communicationContextContentURL is nil";
LABEL_46:
    _os_log_impl(&dword_1DA7A9000, v110, v111, v119, v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v113);
    MEMORY[0x1E12739F0](v113, -1, -1);
    MEMORY[0x1E12739F0](v112, -1, -1);

    v126 = v206;
    v45 = v213;
    a2 = v214;
  }

  v127 = v194;
  v128 = v195;
  v129 = v195 + *(v194 + 20);
  v130 = v192;
  *v129 = v45;
  *(v129 + 1) = v130;
  *(v129 + 1) = xmmword_1DA960160;
  type metadata accessor for CloudAction(0);
  swift_storeEnumTagMultiPayload();
  *v128 = a2;
  v128[1] = v126;
  v223 = v127;
  v224 = sub_1DA8D3354();
  v131 = __swift_allocate_boxed_opaque_existential_2(&v221);
  sub_1DA8D33AC(v128, v131);
  v132 = v130;
  v133 = v45;

  v134 = sub_1DA841298(&v221, 0, 1);
  v135 = v207;
  v136 = v134;
  v138 = v137;
  __swift_destroy_boxed_opaque_existential_1(&v221);
  v139 = v138 >> 62;
  if ((v138 >> 62) > 1)
  {
    v140 = v189;
    v141 = "UNNotificationPresentationOptions";
    if (v139 != 2)
    {
      goto LABEL_61;
    }

    v143 = *(v136 + 16);
    v142 = *(v136 + 24);
    v144 = __OFSUB__(v142, v143);
    v145 = v142 - v143;
    if (!v144)
    {
      if (v145)
      {
        goto LABEL_55;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v140 = v189;
  v141 = "UNNotificationPresentationOptions";
  if (!v139)
  {
    if (!BYTE6(v138))
    {
      goto LABEL_61;
    }

LABEL_55:
    v146 = v133;

    sub_1DA841874(v136, v138);
    v147 = sub_1DA940584();
    v148 = sub_1DA940F34();

    sub_1DA828324(v136, v138);
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v220[0] = v217;
      *v149 = *(v141 + 349);
      v150 = v146;
      v151 = [(SEL *)v150 description];
      v152 = sub_1DA940A14();
      v218 = v146;
      v153 = v152;
      v155 = v154;

      v156 = sub_1DA7AE6E8(v153, v155, v220);

      *(v149 + 4) = v156;
      *(v149 + 12) = 2080;
      sub_1DA7BABAC((v207 + 2), &v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
      v157 = sub_1DA940A74();
      v159 = sub_1DA7AE6E8(v157, v158, v220);

      *(v149 + 14) = v159;
      *(v149 + 22) = 2080;
      sub_1DA841874(v136, v138);
      v160 = sub_1DA93F984();
      v162 = v161;
      sub_1DA828324(v136, v138);
      v163 = sub_1DA7AE6E8(v160, v162, v220);
      v146 = v218;

      *(v149 + 24) = v163;
      _os_log_impl(&dword_1DA7A9000, v147, v148, "UserNotificationsCloudPushHandler add: %s target:%s notificationData: %s", v149, 0x20u);
      v164 = v217;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v164, -1, -1);
      v165 = v149;
      v135 = v207;
      MEMORY[0x1E12739F0](v165, -1, -1);
    }

    sub_1DA7BABAC((v135 + 2), &v221);
    v166 = v223;
    v167 = v224;
    __swift_project_boxed_opaque_existential_1(&v221, v223);
    v168 = [(SEL *)v146 notificationRecord];
    v169 = [v168 identifier];

    if (v169)
    {
      v170 = sub_1DA940A14();
      v172 = v171;

      v173 = v195;
      (*(v167 + 24))(v136, v138, v170, v172, v214, v206, v195, v166, v167);

      sub_1DA828324(v136, v138);
      sub_1DA8D3410(v173);
      __swift_destroy_boxed_opaque_existential_1(&v221);
      return;
    }

    goto LABEL_71;
  }

  if (__OFSUB__(HIDWORD(v136), v136))
  {
    goto LABEL_66;
  }

  if (HIDWORD(v136) != v136)
  {
    goto LABEL_55;
  }

LABEL_61:
  sub_1DA8D33AC(v128, v140);

  v174 = sub_1DA940584();
  v175 = sub_1DA940F14();

  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    v220[0] = v218;
    *v176 = 136315394;
    v177 = v190;
    sub_1DA8D33AC(v140, v190);
    v221 = 0;
    v222 = 0xE000000000000000;
    v178 = *v177;
    v179 = *(v177 + 1);
    LODWORD(v217) = v175;
    MEMORY[0x1E1271BD0](v178, v179);
    MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
    sub_1DA8D346C(&v177[*(v194 + 20)]);
    v180 = v221;
    v181 = v222;
    sub_1DA8D3410(v140);
    sub_1DA8D3410(v177);
    v182 = sub_1DA7AE6E8(v180, v181, v220);

    *(v176 + 4) = v182;
    *(v176 + 12) = 2080;
    sub_1DA7BABAC((v135 + 2), &v221);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v183 = sub_1DA940A74();
    v185 = sub_1DA7AE6E8(v183, v184, v220);

    *(v176 + 14) = v185;
    _os_log_impl(&dword_1DA7A9000, v174, v217, "UserNotificationsCloudPushHandler add: %s target:%s data.count == 0", v176, 0x16u);
    v186 = v218;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v186, -1, -1);
    MEMORY[0x1E12739F0](v176, -1, -1);

    sub_1DA828324(v136, v138);
    v187 = v195;
  }

  else
  {

    sub_1DA828324(v136, v138);
    sub_1DA8D3410(v140);
    v187 = v128;
  }

  sub_1DA8D3410(v187);
}

void sub_1DA8F8FC0(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UserNotificationsCloudRecord(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v104 = (&v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v103 = &v99 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v105 = &v99 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v99 - v16);
  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v18 = sub_1DA9405A4();
  v19 = __swift_project_value_buffer(v18, qword_1EE11ADC0);
  v20 = a1;

  v107 = v19;
  v21 = sub_1DA940584();
  v22 = sub_1DA940F34();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v106 = a3;
    v24 = v23;
    v102 = swift_slowAlloc();
    v108[0] = v102;
    *v24 = 136315650;
    v25 = v20;
    v101 = v22;
    v26 = v4;
    v27 = v25;
    v28 = [v25 description];
    v29 = sub_1DA940A14();
    v100 = v21;
    v30 = v29;
    v31 = v8;
    v32 = a2;
    v33 = v17;
    v35 = v34;

    v4 = v26;
    v36 = sub_1DA7AE6E8(v30, v35, v108);
    v17 = v33;
    a2 = v32;
    v8 = v31;

    *(v24 + 4) = v36;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1DA7AE6E8(a2, v106, v108);
    *(v24 + 22) = 2080;
    sub_1DA7BABAC(v26 + 16, &v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v37 = sub_1DA940A74();
    v39 = sub_1DA7AE6E8(v37, v38, v108);

    *(v24 + 24) = v39;
    v40 = v100;
    _os_log_impl(&dword_1DA7A9000, v100, v101, "UserNotificationsCloudPushHandler remove: %s bundleIdentifier: %s target:%s", v24, 0x20u);
    v41 = v102;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v41, -1, -1);
    v42 = v24;
    a3 = v106;
    MEMORY[0x1E12739F0](v42, -1, -1);
  }

  else
  {
  }

  *(v17 + *(v8 + 20)) = v20;
  type metadata accessor for CloudAction(0);
  swift_storeEnumTagMultiPayload();
  *v17 = a2;
  v17[1] = a3;
  v111 = v8;
  v112 = sub_1DA8D3354();
  v43 = __swift_allocate_boxed_opaque_existential_2(&v109);
  sub_1DA8D33AC(v17, v43);
  v44 = a2;
  v45 = v20;

  v46 = sub_1DA841298(&v109, 0, 1);
  v48 = v47;
  v105 = v44;
  __swift_destroy_boxed_opaque_existential_1(&v109);
  v49 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    if (!v49)
    {
      if (!BYTE6(v48))
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (!__OFSUB__(HIDWORD(v46), v46))
    {
      if (HIDWORD(v46) == v46)
      {
        goto LABEL_19;
      }

LABEL_13:
      v54 = v45;

      sub_1DA841874(v46, v48);
      v55 = sub_1DA940584();
      v56 = sub_1DA940F34();

      sub_1DA828324(v46, v48);
      v57 = os_log_type_enabled(v55, v56);
      v107 = v46;
      if (v57)
      {
        v58 = swift_slowAlloc();
        v106 = a3;
        v59 = v58;
        v103 = swift_slowAlloc();
        v104 = v17;
        v108[0] = v103;
        *v59 = 136315650;
        v60 = v54;
        v61 = [v60 description];
        v62 = sub_1DA940A14();
        v63 = v4;
        v65 = v64;

        v66 = sub_1DA7AE6E8(v62, v65, v108);
        v4 = v63;

        *(v59 + 4) = v66;
        *(v59 + 12) = 2080;
        sub_1DA7BABAC(v63 + 16, &v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
        v67 = sub_1DA940A74();
        v69 = sub_1DA7AE6E8(v67, v68, v108);

        *(v59 + 14) = v69;
        *(v59 + 22) = 2080;
        v70 = v107;
        sub_1DA841874(v107, v48);
        v71 = sub_1DA93F984();
        v73 = v72;
        sub_1DA828324(v70, v48);
        v74 = sub_1DA7AE6E8(v71, v73, v108);

        *(v59 + 24) = v74;
        _os_log_impl(&dword_1DA7A9000, v55, v56, "UserNotificationsCloudPushHandler remove: %s target:%s notificationData: %s", v59, 0x20u);
        v75 = v103;
        swift_arrayDestroy();
        v17 = v104;
        MEMORY[0x1E12739F0](v75, -1, -1);
        v76 = v59;
        a3 = v106;
        MEMORY[0x1E12739F0](v76, -1, -1);
      }

      sub_1DA7BABAC(v4 + 16, &v109);
      v77 = v111;
      v78 = v112;
      __swift_project_boxed_opaque_existential_1(&v109, v111);
      v79 = [v54 notificationRecord];
      v80 = [v79 identifier];

      if (v80)
      {
        v81 = sub_1DA940A14();
        v83 = v82;

        v84 = v107;
        (*(v78 + 24))(v107, v48, v81, v83, v105, a3, v17, v77, v78);

        sub_1DA828324(v84, v48);
        sub_1DA8D3410(v17);
        __swift_destroy_boxed_opaque_existential_1(&v109);
        return;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  if (v49 == 2)
  {
    v51 = *(v46 + 16);
    v50 = *(v46 + 24);
    v52 = __OFSUB__(v50, v51);
    v53 = v50 - v51;
    if (v52)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v53)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  v85 = v8;
  v86 = v103;
  sub_1DA8D33AC(v17, v103);

  v87 = sub_1DA940584();
  v88 = sub_1DA940F14();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v107 = v46;
    v90 = v89;
    v106 = swift_slowAlloc();
    v108[0] = v106;
    *v90 = 136315394;
    v91 = v104;
    sub_1DA8D33AC(v86, v104);
    v109 = 0;
    v110 = 0xE000000000000000;
    MEMORY[0x1E1271BD0](*v91, v91[1]);
    MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
    sub_1DA8D346C(v91 + *(v85 + 20));
    v92 = v109;
    v93 = v110;
    sub_1DA8D3410(v86);
    sub_1DA8D3410(v91);
    v94 = sub_1DA7AE6E8(v92, v93, v108);

    *(v90 + 4) = v94;
    *(v90 + 12) = 2080;
    sub_1DA7BABAC(v4 + 16, &v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v95 = sub_1DA940A74();
    v97 = sub_1DA7AE6E8(v95, v96, v108);

    *(v90 + 14) = v97;
    _os_log_impl(&dword_1DA7A9000, v87, v88, "UserNotificationsCloudPushHandler remove: %s target:%s data.count == 0", v90, 0x16u);
    v98 = v106;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v98, -1, -1);
    MEMORY[0x1E12739F0](v90, -1, -1);

    sub_1DA828324(v107, v48);
  }

  else
  {

    sub_1DA828324(v46, v48);
    sub_1DA8D3410(v86);
  }

  sub_1DA8D3410(v17);
}

uint64_t sub_1DA8F9A30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UserNotificationsCloudRecord(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v90 = &v88 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v91 = (&v88 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v88 - v17);
  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v19 = sub_1DA9405A4();
  v20 = __swift_project_value_buffer(v19, qword_1EE11ADC0);

  v93 = v20;
  v21 = sub_1DA940584();
  v22 = sub_1DA940F34();

  v23 = os_log_type_enabled(v21, v22);
  v94 = v4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v92 = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v89 = v8;
    v27 = v26;
    v95[0] = v26;
    *v25 = 136315650;
    v28 = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v29 = MEMORY[0x1E1271CD0](a1, v28);
    v31 = sub_1DA7AE6E8(v29, v30, v95);
    v88 = a1;
    v32 = v12;
    v33 = v31;

    *(v25 + 4) = v33;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1DA7AE6E8(v92, a3, v95);
    *(v25 + 22) = 2080;
    sub_1DA7BABAC((v4 + 2), &v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v34 = sub_1DA940A74();
    v36 = sub_1DA7AE6E8(v34, v35, v95);

    *(v25 + 24) = v36;
    v12 = v32;
    a1 = v88;
    _os_log_impl(&dword_1DA7A9000, v21, v22, "UserNotificationsCloudPushHandler categories: %s bundleIdentifier: %s target:%s", v25, 0x20u);
    swift_arrayDestroy();
    v37 = v27;
    v8 = v89;
    MEMORY[0x1E12739F0](v37, -1, -1);
    v38 = v25;
    a2 = v92;
    MEMORY[0x1E12739F0](v38, -1, -1);
  }

  *(v18 + *(v8 + 20)) = a1;
  type metadata accessor for CloudAction(0);
  swift_storeEnumTagMultiPayload();
  *v18 = a2;
  v18[1] = a3;
  v98 = v8;
  v99 = sub_1DA8D3354();
  v39 = __swift_allocate_boxed_opaque_existential_2(&v96);
  sub_1DA8D33AC(v18, v39);

  v40 = sub_1DA841298(&v96, 0, 1);
  v41 = a1;
  v43 = v42;
  result = __swift_destroy_boxed_opaque_existential_1(&v96);
  v45 = v43 >> 62;
  v46 = v94;
  if ((v43 >> 62) > 1)
  {
    if (v45 != 2)
    {
      goto LABEL_17;
    }

    v48 = *(v40 + 16);
    v47 = *(v40 + 24);
    v49 = __OFSUB__(v47, v48);
    v50 = v47 - v48;
    if (!v49)
    {
      if (v50)
      {
        goto LABEL_12;
      }

LABEL_17:
      v92 = v40;
      v74 = v90;
      sub_1DA8D33AC(v18, v90);

      v75 = sub_1DA940584();
      v76 = sub_1DA940F14();

      if (!os_log_type_enabled(v75, v76))
      {

        sub_1DA828324(v92, v43);
        sub_1DA8D3410(v74);
        return sub_1DA8D3410(v18);
      }

      v77 = swift_slowAlloc();
      v78 = v12;
      v79 = swift_slowAlloc();
      v95[0] = v79;
      *v77 = 136315394;
      sub_1DA8D33AC(v74, v78);
      v96 = 0;
      v97 = 0xE000000000000000;
      v80 = *v78;
      v81 = v78[1];
      LODWORD(v93) = v76;
      MEMORY[0x1E1271BD0](v80, v81);
      MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
      sub_1DA8D346C(v78 + *(v8 + 20));
      v82 = v96;
      v83 = v97;
      sub_1DA8D3410(v74);
      sub_1DA8D3410(v78);
      v84 = sub_1DA7AE6E8(v82, v83, v95);

      *(v77 + 4) = v84;
      *(v77 + 12) = 2080;
      sub_1DA7BABAC((v46 + 2), &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
      v85 = sub_1DA940A74();
      v87 = sub_1DA7AE6E8(v85, v86, v95);

      *(v77 + 14) = v87;
      _os_log_impl(&dword_1DA7A9000, v75, v93, "UserNotificationsCloudPushHandler category: %s target:%s data.count == 0", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v79, -1, -1);
      MEMORY[0x1E12739F0](v77, -1, -1);

      v73 = v92;
LABEL_19:
      sub_1DA828324(v73, v43);
      return sub_1DA8D3410(v18);
    }

    __break(1u);
  }

  else
  {
    if (!v45)
    {
      if (!BYTE6(v43))
      {
        goto LABEL_17;
      }

LABEL_12:
      v51 = v41;

      sub_1DA841874(v40, v43);
      v52 = sub_1DA940584();
      v53 = sub_1DA940F34();

      sub_1DA828324(v40, v43);
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v92 = a2;
        v55 = v54;
        v56 = swift_slowAlloc();
        v95[0] = v56;
        *v55 = 136315650;
        v57 = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
        v58 = MEMORY[0x1E1271CD0](v51, v57);
        v60 = sub_1DA7AE6E8(v58, v59, v95);
        v93 = a3;
        v91 = v18;
        v61 = v46;
        v62 = v60;

        *(v55 + 4) = v62;
        *(v55 + 12) = 2080;
        sub_1DA7BABAC((v61 + 2), &v96);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
        v63 = sub_1DA940A74();
        v65 = sub_1DA7AE6E8(v63, v64, v95);

        *(v55 + 14) = v65;
        *(v55 + 22) = 2080;
        sub_1DA841874(v40, v43);
        v66 = sub_1DA93F984();
        v68 = v67;
        sub_1DA828324(v40, v43);
        v69 = sub_1DA7AE6E8(v66, v68, v95);
        v46 = v61;
        v18 = v91;
        a3 = v93;

        *(v55 + 24) = v69;
        _os_log_impl(&dword_1DA7A9000, v52, v53, "UserNotificationsCloudPushHandler category: %s target:%s notificationData: %s", v55, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v56, -1, -1);
        v70 = v55;
        a2 = v92;
        MEMORY[0x1E12739F0](v70, -1, -1);
      }

      v71 = v46[5];
      v72 = v46[6];
      __swift_project_boxed_opaque_existential_1(v46 + 2, v71);
      (*(v72 + 24))(v40, v43, 0x69726F6765746163, 0xEA00000000007365, a2, a3, v18, v71, v72);
      v73 = v40;
      goto LABEL_19;
    }

    if (!__OFSUB__(HIDWORD(v40), v40))
    {
      if (HIDWORD(v40) != v40)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t UserNotificationsCloudPushHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t UserNotificationsCloudPushHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8FA4C8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v23);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_2, a2, a4);
  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA9405A4();
  __swift_project_value_buffer(v10, qword_1EE11ADC0);
  sub_1DA7BABAC(a1, v22);
  v11 = sub_1DA940584();
  v12 = sub_1DA940F34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    sub_1DA7BABAC(v22, &v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v15 = sub_1DA940A74();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(v22);
    v18 = sub_1DA7AE6E8(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DA7A9000, v11, v12, "UserNotificationsCloudPushHandler init with target: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12739F0](v14, -1, -1);
    MEMORY[0x1E12739F0](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1DA7B9FAC(a1, a3 + 16);
  sub_1DA7B9FAC(&v23, a3 + 56);
  return a3;
}

uint64_t sub_1DA8FA788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v26);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_2, a1, a4);
  v24 = type metadata accessor for _UNImageProviderCommuncationContextDataProvider();
  v25 = &protocol witness table for _UNImageProviderCommuncationContextDataProvider;
  *&v23 = a2;
  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA9405A4();
  __swift_project_value_buffer(v10, qword_1EE11ADC0);
  sub_1DA7BABAC(&v26, v22);
  v11 = sub_1DA940584();
  v12 = sub_1DA940F34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    sub_1DA7BABAC(v22, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v15 = sub_1DA940A74();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(v22);
    v18 = sub_1DA7AE6E8(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DA7A9000, v11, v12, "UserNotificationsCloudPushHandler init with target: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12739F0](v14, -1, -1);
    MEMORY[0x1E12739F0](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1DA7B9FAC(&v26, a3 + 16);
  sub_1DA7B9FAC(&v23, a3 + 56);
  return a3;
}

uint64_t sub_1DA8FAA08()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE11AD90);
  __swift_project_value_buffer(v0, qword_1EE11AD90);
  return sub_1DA940594();
}

uint64_t sub_1DA8FAAD0()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE11AFB8);
  __swift_project_value_buffer(v0, qword_1EE11AFB8);
  return sub_1DA940594();
}

uint64_t sub_1DA8FAB50()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE11AD78);
  __swift_project_value_buffer(v0, qword_1EE11AD78);
  return sub_1DA940594();
}

uint64_t sub_1DA8FAC7C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DA940594();
}

uint64_t static Logger.daemon.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE114E40 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  v3 = __swift_project_value_buffer(v2, qword_1EE114E48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AlertCoordinatorClient.__allocating_init()()
{
  v0 = swift_allocObject();
  AlertCoordinatorClient.init()();
  return v0;
}

uint64_t AlertCoordinatorClient.init()()
{
  v12 = sub_1DA940FC4();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DA940854();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DA7AC344();
  v11[0] = "NotificationsPipelineSignpost";
  v11[1] = v9;
  sub_1DA940824();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DA7AD080(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  *(v0 + 16) = sub_1DA941004();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_1DA8FB028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA940744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBD47D8 != -1)
  {
    swift_once();
  }

  v9 = sub_1DA9405A4();
  __swift_project_value_buffer(v9, qword_1ECBD7018);
  v10 = *(v5 + 16);
  v10(v8, a1, v4);
  v11 = sub_1DA940584();
  v12 = sub_1DA940F14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    sub_1DA7AD080(&qword_1ECBD5E80, MEMORY[0x1E69E84C0]);
    swift_allocError();
    v10(v16, v8, v4);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v8, v4);
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1DA7A9000, v11, v12, "XPC session cancelled: %@", v14, 0xCu);
    sub_1DA828378(v15);
    MEMORY[0x1E12739F0](v15, -1, -1);
    v18 = v14;
    a2 = v22;
    MEMORY[0x1E12739F0](v18, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v19 = *(a2 + 24);
  *(a2 + 24) = 0;
}

void sub_1DA8FB2B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v44 = a3;
  v41 = a1;
  v42 = a2;
  v5 = sub_1DA93FAF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for AlertCoordinatorXPCMessage();
  v10 = *(*(v43 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v43);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  if (!sub_1DA8FC1BC())
  {
    goto LABEL_4;
  }

  sub_1DA93FA84();
  if (fabs(round(v19)) > sub_1DA941844())
  {

LABEL_4:
    if (qword_1ECBD47D8 != -1)
    {
      swift_once();
    }

    v20 = sub_1DA9405A4();
    __swift_project_value_buffer(v20, qword_1ECBD7018);
    (*(v6 + 16))(v9, a4, v5);
    v21 = sub_1DA940584();
    v22 = sub_1DA940F04();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 67109378;
      *(v23 + 4) = v44 & 1;
      *(v23 + 8) = 2080;
      sub_1DA7AD080(&qword_1EE114C88, MEMORY[0x1E6969530]);
      v25 = sub_1DA941614();
      v27 = v26;
      (*(v6 + 8))(v9, v5);
      v28 = sub_1DA7AE6E8(v25, v27, &v45);

      *(v23 + 10) = v28;
      _os_log_impl(&dword_1DA7A9000, v21, v22, "Ignoring didAlert(%{BOOL}d) for notification from %s", v23, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12739F0](v24, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return;
  }

  v29 = v44 & 1;
  (*(v6 + 16))(&v18[*(v43 + 24)], a4, v5);
  *v18 = v29;
  v30 = v42;
  *(v18 + 1) = v41;
  *(v18 + 2) = v30;
  v31 = qword_1ECBD47D8;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_1DA9405A4();
  __swift_project_value_buffer(v32, qword_1ECBD7018);
  sub_1DA8FC808(v18, v16);
  v33 = sub_1DA940584();
  v34 = sub_1DA940F34();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45 = v36;
    *v35 = 136315138;
    sub_1DA8FC808(v16, v13);
    v37 = sub_1DA940A74();
    v39 = v38;
    sub_1DA8FC86C(v16);
    v40 = sub_1DA7AE6E8(v37, v39, &v45);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1DA7A9000, v33, v34, "Sending message: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1E12739F0](v36, -1, -1);
    MEMORY[0x1E12739F0](v35, -1, -1);
  }

  else
  {

    sub_1DA8FC86C(v16);
  }

  sub_1DA7AD080(&qword_1ECBD7030, type metadata accessor for AlertCoordinatorXPCMessage);
  sub_1DA940624();
  sub_1DA8FC86C(v18);
}

uint64_t sub_1DA8FB818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  v5 = sub_1DA93FAF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlertCoordinatorXPCMessage();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v57 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v60 = v57 - v18;
  v19 = sub_1DA8FC1BC();
  if (!v19)
  {
    goto LABEL_4;
  }

  v58 = v10;
  v20 = v19;

  sub_1DA93FA84();
  if (fabs(round(v21)) <= sub_1DA941844())
  {
    v57[1] = v20;
    v32 = v60;
    (*(v6 + 16))(&v60[*(v58 + 24)], a3, v5);
    *v32 = 2;
    *(v32 + 8) = v59;
    *(v32 + 16) = a2;
    v33 = qword_1ECBD47D8;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = sub_1DA9405A4();
    __swift_project_value_buffer(v34, qword_1ECBD7018);
    sub_1DA8FC808(v32, v17);
    v35 = sub_1DA940584();
    v36 = sub_1DA940F34();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v63[0] = v38;
      *v37 = 136315138;
      sub_1DA8FC808(v17, v14);
      v39 = sub_1DA940A74();
      v41 = v40;
      sub_1DA8FC86C(v17);
      v42 = sub_1DA7AE6E8(v39, v41, v63);

      *(v37 + 4) = v42;
      v32 = v60;
      _os_log_impl(&dword_1DA7A9000, v35, v36, "Sending message: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1E12739F0](v38, -1, -1);
      MEMORY[0x1E12739F0](v37, -1, -1);
    }

    else
    {

      sub_1DA8FC86C(v17);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7038, &qword_1DA962928);
    sub_1DA7AD080(&qword_1ECBD7030, type metadata accessor for AlertCoordinatorXPCMessage);
    sub_1DA8FC8C8();
    v43 = v61;
    sub_1DA940664();
    if (v43)
    {
      v44 = v43;
    }

    else
    {
      if (v64 == 255)
      {
        goto LABEL_23;
      }

      v31 = v63[0];
      if ((v64 & 1) == 0)
      {
        sub_1DA8FC86C(v32);

        return v31 & 1;
      }

      v54 = v63[1];
      sub_1DA8FCA94();
      swift_willThrowTypedImpl();
      v44 = swift_allocError();
      *v55 = v31;
      v55[1] = v54;
    }

    v45 = v44;
    v46 = sub_1DA940584();
    v47 = sub_1DA940F14();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v62 = v44;
      v63[0] = v49;
      *v48 = 136315138;
      v50 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
      v51 = sub_1DA940A74();
      v53 = sub_1DA7AE6E8(v51, v52, v63);

      *(v48 + 4) = v53;
      v32 = v60;
      _os_log_impl(&dword_1DA7A9000, v46, v47, "Error querying coordinator: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E12739F0](v49, -1, -1);
      MEMORY[0x1E12739F0](v48, -1, -1);

LABEL_24:
      sub_1DA8FC86C(v32);
      LOBYTE(v31) = 1;
      return v31 & 1;
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_4:
  if (qword_1ECBD47D8 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1ECBD7018);
  (*(v6 + 16))(v9, a3, v5);
  v23 = sub_1DA940584();
  v24 = sub_1DA940F04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v63[0] = v26;
    *v25 = 136315138;
    sub_1DA7AD080(&qword_1EE114C88, MEMORY[0x1E6969530]);
    v27 = sub_1DA941614();
    v29 = v28;
    (*(v6 + 8))(v9, v5);
    v30 = sub_1DA7AE6E8(v27, v29, v63);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1DA7A9000, v23, v24, "Skipping coordination for notification from %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  LOBYTE(v31) = 1;
  return v31 & 1;
}

uint64_t sub_1DA8FBF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA93FAC4();
  v9 = sub_1DA8FB818(a1, a2, v8);
  (*(v5 + 8))(v8, v4);
  return v9 & 1;
}

uint64_t AlertCoordinatorClient.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AlertCoordinatorClient.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8FC0B4()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD7018);
  __swift_project_value_buffer(v0, qword_1ECBD7018);
  return sub_1DA940594();
}

uint64_t sub_1DA8FC138@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DA8FC1BC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1DA9405E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  if (!v0[3])
  {
    sub_1DA940674();
    v6 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5588, &unk_1DA95D880);
    v7 = *(v4 + 72);
    v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DA9596E0;
    v10 = v6;
    sub_1DA9405D4();
    v26 = v9;
    sub_1DA7AD080(&unk_1EE110D10, MEMORY[0x1E69E8498]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5598, &qword_1DA95B230);
    sub_1DA7AD0C8(&qword_1EE110CD0, &unk_1ECBD5598, &qword_1DA95B230);
    sub_1DA9411D4();
    v11 = sub_1DA9405C4();
    v12 = v0[3];
    v1[3] = v11;

    sub_1DA9405F4();

    sub_1DA940644();
    if (qword_1ECBD47D8 != -1)
    {
      swift_once();
    }

    v13 = sub_1DA9405A4();
    __swift_project_value_buffer(v13, qword_1ECBD7018);

    v14 = sub_1DA940584();
    v15 = sub_1DA940F34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 136315394;
      v26 = v11;

      v18 = sub_1DA940A74();
      v20 = sub_1DA7AE6E8(v18, v19, v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v26 = v2;
      swift_getMetatypeMetadata();
      v21 = sub_1DA940A74();
      v23 = sub_1DA7AE6E8(v21, v22, v25);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_1DA7A9000, v14, v15, "Session: %s for %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v17, -1, -1);
      MEMORY[0x1E12739F0](v16, -1, -1);
    }

    else
    {
    }
  }

  return v1[3];
}

uint64_t sub_1DA8FC808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertCoordinatorXPCMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8FC86C(uint64_t a1)
{
  v2 = type metadata accessor for AlertCoordinatorXPCMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA8FC8C8()
{
  result = qword_1ECBD7040;
  if (!qword_1ECBD7040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7038, &qword_1DA962928);
    sub_1DA8FC94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7040);
  }

  return result;
}

unint64_t sub_1DA8FC94C()
{
  result = qword_1ECBD7048;
  if (!qword_1ECBD7048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7050, &unk_1DA962930);
    sub_1DA8FC9EC();
    sub_1DA8FCA40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7048);
  }

  return result;
}

unint64_t sub_1DA8FC9EC()
{
  result = qword_1ECBD7058;
  if (!qword_1ECBD7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7058);
  }

  return result;
}

unint64_t sub_1DA8FCA40()
{
  result = qword_1ECBD7060;
  if (!qword_1ECBD7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7060);
  }

  return result;
}

unint64_t sub_1DA8FCA94()
{
  result = qword_1ECBD7068;
  if (!qword_1ECBD7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7068);
  }

  return result;
}

uint64_t sub_1DA8FCBF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t DismissalSyncBulletin.dismissalHash.getter()
{
  v1 = sub_1DA940934();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940A64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DA940944();
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  v15 = type metadata accessor for DismissalSyncBulletin(0);
  v16 = (v0 + v15[9]);
  if (v16[1])
  {
    MEMORY[0x1E1271BD0](*v16);
  }

  v17 = (v0 + v15[10]);
  if (v17[1])
  {
    MEMORY[0x1E1271BD0](*v17);
  }

  v18 = (v0 + v15[11]);
  if (v18[1])
  {
    MEMORY[0x1E1271BD0](*v18);
  }

  sub_1DA940A54();
  v19 = sub_1DA940A24();
  v21 = v20;
  (*(v7 + 8))(v10, v6);
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  if (v21 >> 60 == 15)
  {
    v21 = 0xC000000000000000;
  }

  sub_1DA902500(&unk_1ECBD7070, MEMORY[0x1E6966688]);
  sub_1DA940924();
  sub_1DA841874(v22, v21);
  sub_1DA901E88(v22, v21);
  sub_1DA828324(v22, v21);
  sub_1DA940914();
  sub_1DA828324(v22, v21);
  (*(v2 + 8))(v5, v1);
  v23 = sub_1DA8FDA78(v14);

  v28 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7AD11C(&qword_1EE114DF0, &qword_1ECBD6790, &qword_1DA9594C0);
  v24 = sub_1DA9409C4();

  (*(v26 + 8))(v14, v27);
  return v24;
}

BOOL DismissalSyncBulletin.withinDismissableWindow(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for DismissalSyncBulletin(0);
  sub_1DA825D4C(v1 + *(v10 + 32), v9);
  v11 = sub_1DA93FAF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_1DA823670(v9);
    v14 = 0.0;
  }

  else
  {
    sub_1DA93FAA4();
    v14 = v15;
    (*(v12 + 8))(v9, v11);
  }

  sub_1DA825D4C(a1, v7);
  if (v13(v7, 1, v11) == 1)
  {
    sub_1DA823670(v7);
    v16 = 0.0;
  }

  else
  {
    sub_1DA93FAA4();
    v16 = v17;
    (*(v12 + 8))(v7, v11);
  }

  return vabdd_f64(v14, v16) <= 300.0;
}

unint64_t DismissalSyncPlatform.init(deviceType:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x4030202020100uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t DismissalSyncPlatform.ctosPlatform.getter()
{
  v1 = *v0;
  if (*v0 > 1u)
  {
    v2 = MEMORY[0x1E6993B70];
    v3 = MEMORY[0x1E6993B80];
    if (v1 != 3)
    {
      v3 = MEMORY[0x1E6993B88];
    }

    if (v1 != 2)
    {
      v2 = v3;
    }

    goto LABEL_9;
  }

  if (*v0)
  {
    v2 = MEMORY[0x1E6993B78];
LABEL_9:
    v1 = *v2;
    v4 = *v2;
  }

  return v1;
}

uint64_t DismissalSyncPlatform.hashValue.getter()
{
  v1 = *v0;
  sub_1DA941764();
  MEMORY[0x1E1272850](v1);
  return sub_1DA941794();
}

uint64_t DismissalSyncBulletin.universalSectionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DismissalSyncBulletin.universalSectionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DismissalSyncBulletin.bulletinID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DismissalSyncBulletin.bulletinID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DismissalSyncBulletin.dismissalID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t DismissalSyncBulletin.dismissalID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t DismissalSyncBulletin.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DismissalSyncBulletin(0) + 32);

  return sub_1DA825D4C(v3, a1);
}

uint64_t DismissalSyncBulletin.date.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DismissalSyncBulletin(0) + 32);

  return sub_1DA825C64(a1, v3);
}

uint64_t DismissalSyncBulletin.title.getter()
{
  v1 = (v0 + *(type metadata accessor for DismissalSyncBulletin(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DismissalSyncBulletin.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DismissalSyncBulletin(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DismissalSyncBulletin.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for DismissalSyncBulletin(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DismissalSyncBulletin.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DismissalSyncBulletin(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DismissalSyncBulletin.body.getter()
{
  v1 = (v0 + *(type metadata accessor for DismissalSyncBulletin(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DismissalSyncBulletin.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DismissalSyncBulletin(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DismissalSyncBulletin.init(sectionID:universalSectionID:bulletinID:dismissalID:date:title:subtitle:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = type metadata accessor for DismissalSyncBulletin(0);
  v22 = v21[8];
  v23 = sub_1DA93FAF4();
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = &a9[v21[9]];
  v25 = &a9[v21[10]];
  v26 = &a9[v21[11]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  result = sub_1DA825C64(a10, &a9[v22]);
  *v24 = a11;
  *(v24 + 1) = a12;
  *v25 = a13;
  *(v25 + 1) = a14;
  *v26 = a15;
  *(v26 + 1) = a16;
  return result;
}

uint64_t sub_1DA8FDA78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA940944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA902500(&qword_1ECBD7190, MEMORY[0x1E69666B0]);
  v9 = sub_1DA940B54();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1DA82A778(0, v9 & ~(v9 >> 63), 0);
  v10 = v39;
  (*(v5 + 16))(v8, a1, v4);
  result = sub_1DA940B44();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = v38;
    if (v9)
    {
      v34 = v1;
      v13 = v37;
      *&v36 = *(v37 + 16);
      v35 = xmmword_1DA9596E0;
      v14 = v38;
      while (v36 != v14)
      {
        if (v12 < 0)
        {
          goto LABEL_21;
        }

        if (v14 >= *(v13 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(v13 + 32 + v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D8, qword_1DA95B2F0);
        v16 = swift_allocObject();
        *(v16 + 16) = v35;
        *(v16 + 56) = MEMORY[0x1E69E7508];
        *(v16 + 64) = MEMORY[0x1E69E7558];
        *(v16 + 32) = v15;
        result = sub_1DA940A44();
        v39 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          v33 = result;
          v21 = v17;
          sub_1DA82A778((v18 > 1), v19 + 1, 1);
          v17 = v21;
          result = v33;
          v10 = v39;
        }

        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = result;
        *(v20 + 40) = v17;
        ++v14;
        if (!--v9)
        {
          v38 = v14;
          v2 = v34;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v14 = v38;
LABEL_12:
      v22 = v37;
      v23 = *(v37 + 16);
      if (v14 == v23)
      {
LABEL_13:

        return v10;
      }

      v36 = xmmword_1DA9596E0;
      while (v14 < v23)
      {
        v24 = v14 + 1;
        v25 = *(v22 + 32 + v14);
        v38 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D8, qword_1DA95B2F0);
        v26 = swift_allocObject();
        *(v26 + 16) = v36;
        *(v26 + 56) = MEMORY[0x1E69E7508];
        *(v26 + 64) = MEMORY[0x1E69E7558];
        *(v26 + 32) = v25;
        result = sub_1DA940A44();
        v39 = v10;
        v29 = *(v10 + 16);
        v28 = *(v10 + 24);
        if (v29 >= v28 >> 1)
        {
          *&v35 = result;
          v31 = v2;
          v32 = v27;
          sub_1DA82A778((v28 > 1), v29 + 1, 1);
          v27 = v32;
          v2 = v31;
          result = v35;
          v10 = v39;
        }

        *(v10 + 16) = v29 + 1;
        v30 = v10 + 16 * v29;
        *(v30 + 32) = result;
        *(v30 + 40) = v27;
        v23 = *(v22 + 16);
        v14 = v38;
        if (v38 == v23)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DismissalSyncMessage.sectionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DismissalSyncMessage.sectionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DismissalSyncMessage.universalSectionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DismissalSyncMessage.universalSectionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DismissalSyncMessage.dismissalIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t DismissalSyncMessage.dismissalItems.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t DismissalSyncItem.init(dictionary:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  if (*(a1 + 16))
  {
    v11 = sub_1DA85A4B4(104, 0xE100000000000000);
    if (v12)
    {
      sub_1DA7AD270(*(a1 + 56) + 32 * v11, v25);
      if (swift_dynamicCast())
      {
        v13 = v24[0];
        v14 = v24[1];
        if (*(a1 + 16) && (v15 = sub_1DA85A4B4(100, 0xE100000000000000), (v16 & 1) != 0))
        {
          sub_1DA7AD270(*(a1 + 56) + 32 * v15, v25);

          if (swift_dynamicCast())
          {
            sub_1DA93FA94();
            v17 = 0;
LABEL_12:
            v20 = sub_1DA93FAF4();
            v21 = *(*(v20 - 8) + 56);
            v21(v10, v17, 1, v20);
            sub_1DA902088(v10, v8);
            v22 = type metadata accessor for DismissalSyncItem(0);
            v23 = *(v22 + 20);
            v21(&a2[v23], 1, 1, v20);
            *a2 = v13;
            *(a2 + 1) = v14;
            sub_1DA825C64(v8, &a2[v23]);
            return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
          }
        }

        else
        {
        }

        v17 = 1;
        goto LABEL_12;
      }
    }
  }

  v18 = type metadata accessor for DismissalSyncItem(0);
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t DismissalSyncItem.hash.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DismissalSyncItem.hash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DismissalSyncItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DismissalSyncItem(0) + 20);

  return sub_1DA825D4C(v3, a1);
}

uint64_t DismissalSyncItem.date.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DismissalSyncItem(0) + 20);

  return sub_1DA825C64(a1, v3);
}

uint64_t DismissalSyncItem.init(hash:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for DismissalSyncItem(0) + 20);
  v9 = sub_1DA93FAF4();
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *a4 = a1;
  *(a4 + 1) = a2;

  return sub_1DA825C64(a3, &a4[v8]);
}

BOOL DismissalSyncItem.withinDismissableWindow(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for DismissalSyncItem(0);
  sub_1DA825D4C(v1 + *(v10 + 20), v9);
  v11 = sub_1DA93FAF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_1DA823670(v9);
    v14 = 0.0;
  }

  else
  {
    sub_1DA93FAA4();
    v14 = v15;
    (*(v12 + 8))(v9, v11);
  }

  sub_1DA825D4C(a1, v7);
  if (v13(v7, 1, v11) == 1)
  {
    sub_1DA823670(v7);
    v16 = 0.0;
  }

  else
  {
    sub_1DA93FAA4();
    v16 = v17;
    (*(v12 + 8))(v7, v11);
  }

  return vabdd_f64(v14, v16) <= 300.0;
}

uint64_t SyncService.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t SyncService.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SyncService.delegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1DA8FEC7C;
}

id SyncService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SyncService.init()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1DA940FC4();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940F74();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940854();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v10 = sub_1DA940A04();
  v11 = [v9 initWithService_];

  if (v11)
  {
    type metadata accessor for SyncServiceIDSWrapper();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v13 = objc_allocWithZone(type metadata accessor for IDSInboundMessaging());

    v28 = sub_1DA9021D8(v14, v13);
    type metadata accessor for IDSOutboundMessaging();
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = &off_1F5638E30;
    v16 = objc_allocWithZone(ObjectType);
    *&v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v26 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue;
    v25 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);

    sub_1DA940824();
    v34 = MEMORY[0x1E69E7CC0];
    sub_1DA902500(&qword_1EE115A60, MEMORY[0x1E69E8030]);
    v27 = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
    sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
    sub_1DA9411D4();
    (*(v31 + 104))(v30, *MEMORY[0x1E69E8090], v32);
    *&v16[v26] = sub_1DA941004();
    v17 = MEMORY[0x1E69E7CD0];
    *&v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalPayloads] = MEMORY[0x1E69E7CD0];
    *&v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalIDs] = v17;
    *&v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingFeeds] = 0;
    v18 = &v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID];
    *v18 = 0;
    *(v18 + 1) = 0;
    v19 = &v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID];
    *v19 = 0;
    *(v19 + 1) = 0;
    *&v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer] = 0;
    v20 = &v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_service];
    *v20 = v12;
    v20[1] = &off_1F5638E30;
    v21 = &v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_inboundMessaging];
    v22 = v28;
    *v21 = v28;
    v21[1] = &off_1F5638E10;
    v23 = &v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_outboundMessaging];
    *v23 = v15;
    v23[1] = &off_1F5634E68;
    *&v16[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_flushInterval] = 0x3FB999999999999ALL;
    v33.receiver = v16;
    v33.super_class = v27;
    v24 = v22;
    objc_msgSendSuper2(&v33, sel_init);
    *&v24[OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_payloadConsumer + 8] = &protocol witness table for SyncService;
    swift_unknownObjectWeakAssign();

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

id SyncService.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1DA941054();
    swift_unknownObjectRelease();
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Int __swiftcall SyncService.pairedDeviceCount()()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_service) + 16) devices];
  if (!v1)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_1DA941264();
    goto LABEL_4;
  }

  v2 = v1;
  sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
  v3 = sub_1DA940BE4();

  if (v3 >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  return v4;
}

uint64_t SyncService.enqueueRemoval(for:feeds:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1DA9407F4();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA940854();
  v24 = *(v10 - 8);
  v25 = v10;
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DismissalSyncBulletin(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = *a2;
  v23[1] = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1DA902548(a1, v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  sub_1DA9025AC(v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for DismissalSyncBulletin);
  *(v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_1DA902614;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_22;
  v21 = _Block_copy(aBlock);

  sub_1DA940824();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DA902500(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v13, v9, v21);
  _Block_release(v21);
  (*(v26 + 8))(v9, v6);
  (*(v24 + 8))(v13, v25);
}

void sub_1DA8FF804(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DismissalSyncBulletin(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1DA8FFA1C();
    if (v11)
    {
      v20 = a3;
      sub_1DA8FFB08(a2, &v20);
    }

    else
    {
      if (qword_1ECBD47D0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1ECBE3DE8);
      sub_1DA902548(a2, v8);
      v13 = sub_1DA940584();
      v14 = sub_1DA940F34();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = v16;
        *v15 = 136315138;
        v17 = *(v8 + 4);
        v18 = *(v8 + 5);

        sub_1DA902C7C(v8);
        v19 = sub_1DA7AE6E8(v17, v18, &v20);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_1DA7A9000, v13, v14, "Not enqueueing removal for %s due to lack of destination", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1E12739F0](v16, -1, -1);
        MEMORY[0x1E12739F0](v15, -1, -1);
      }

      else
      {

        sub_1DA902C7C(v8);
      }
    }
  }
}

void sub_1DA8FFA1C()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_service) + 16) accounts];
  if (v1)
  {
    v2 = v1;
    sub_1DA7AF3EC(0, &unk_1ECBD7180, 0x1E69A4828);
    sub_1DA888354();
    v3 = sub_1DA940E94();

    if ((v3 & 0xC000000000000001) != 0)
    {
LABEL_3:
      v4 = sub_1DA941264();
      goto LABEL_6;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
    if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = *(v3 + 16);
LABEL_6:

  if (!v4)
  {

    sub_1DA9019CC();
  }
}

uint64_t sub_1DA8FFB08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DismissalSyncBulletin(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA9408C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a2;
  v16 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  *v14 = v16;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v47 = v16;
  LOBYTE(v16) = sub_1DA9408F4();
  (*(v11 + 8))(v14, v10);
  if (v16)
  {
    v18 = *a1;
    v17 = a1[1];
    v19 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingFeeds;
    if (v15 == *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingFeeds))
    {
      v20 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID + 8);
      if (v20)
      {
        v21 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID) == v18 && v20 == v17;
        if (v21 || (v22 = *a1, v23 = a1[1], (sub_1DA941684() & 1) != 0))
        {
          v24 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID + 8);
          v25 = a1[3];
          if (v24)
          {
            if (v25 && (*(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID) == a1[2] && v24 == v25 || (sub_1DA941684() & 1) != 0))
            {
LABEL_17:
              if (qword_1ECBD47D0 == -1)
              {
                goto LABEL_18;
              }

              goto LABEL_27;
            }
          }

          else if (!v25)
          {
            goto LABEL_17;
          }
        }
      }
    }

    sub_1DA8FFFC8(0);
    *(v3 + v19) = v15;
    v26 = (v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID);
    v27 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID + 8);
    *v26 = v18;
    v26[1] = v17;

    v28 = a1[3];
    v29 = (v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID);
    v30 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID + 8);
    *v29 = a1[2];
    v29[1] = v28;

    goto LABEL_17;
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_18:
  v31 = sub_1DA9405A4();
  __swift_project_value_buffer(v31, qword_1ECBE3DE8);
  sub_1DA902548(a1, v9);
  v32 = sub_1DA940584();
  v33 = sub_1DA940F34();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49 = v35;
    *v34 = 136315138;
    v36 = *(v9 + 4);
    v37 = *(v9 + 5);

    sub_1DA902C7C(v9);
    v38 = sub_1DA7AE6E8(v36, v37, &v49);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1DA7A9000, v32, v33, "Enqueueing removal of bulletin %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E12739F0](v35, -1, -1);
    MEMORY[0x1E12739F0](v34, -1, -1);

    v39 = a1[7];
    if (v39)
    {
LABEL_20:
      v40 = a1[6];
      swift_beginAccess();

      sub_1DA8A9058(&v48, v40, v39);
      swift_endAccess();
      goto LABEL_23;
    }
  }

  else
  {

    sub_1DA902C7C(v9);
    v39 = a1[7];
    if (v39)
    {
      goto LABEL_20;
    }
  }

  v41 = sub_1DA902CD8(a1);
  swift_beginAccess();
  sub_1DA8A9A2C(&v48, v41);
  swift_endAccess();
LABEL_23:

  v43 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer;
  if (!*(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer))
  {
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v45 = sub_1DA900224(sub_1DA902F0C, v44);

    v46 = *(v3 + v43);
    *(v3 + v43) = v45;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA8FFFC8(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  v4 = sub_1DA9408C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = sub_1DA9408F4();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer;
    if (*(v2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer))
    {
      v13 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1DA941054();
      swift_unknownObjectRelease();
      v14 = *(v2 + v12);
    }

    *(v2 + v12) = 0;
    swift_unknownObjectRelease();
    v15 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalPayloads;
    swift_beginAccess();
    if (*(*(v2 + v15) + 16) || (v16 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalIDs, result = swift_beginAccess(), *(*(v2 + v16) + 16)))
    {
      result = sub_1DA900BE8();
      if (result)
      {
        v17 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_outboundMessaging);
        sub_1DA8871EC(result);

        result = sub_1DA90100C();
      }
    }

    if (a1)
    {
      return a1(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DA9001C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DA8FFFC8(0);
  }
}

uint64_t sub_1DA900224(uint64_t a1, void (*a2)(void, void))
{
  v44 = a1;
  v45 = a2;
  v2 = sub_1DA9407E4();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v50 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - v6;
  v48 = sub_1DA940884();
  v53 = *(v48 - 8);
  v7 = *(v53 + 64);
  v8 = MEMORY[0x1EEE9AC00](v48);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v39 - v10;
  v11 = sub_1DA9407F4();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1DA940854();
  v39 = *(v41 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA941024();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA7AF3EC(0, &qword_1ECBD7160, 0x1E69E9630);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DA902500(&qword_1ECBD7168, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7170, &qword_1DA962D98);
  sub_1DA7AD11C(&qword_1ECBD7178, &qword_1ECBD7170, &qword_1DA962D98);
  sub_1DA9411D4();
  v23 = sub_1DA941034();
  (*(v19 + 8))(v22, v18);
  ObjectType = swift_getObjectType();
  v25 = swift_allocObject();
  v26 = v45;
  v25[2] = v44;
  v25[3] = v26;
  v25[4] = v23;
  aBlock[4] = sub_1DA902F14;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_48_0;
  v27 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1DA940824();
  v40 = ObjectType;
  sub_1DA901D9C();
  sub_1DA941044();
  _Block_release(v27);
  (*(v42 + 8))(v14, v43);
  (*(v39 + 8))(v17, v41);

  v28 = v47;
  sub_1DA940864();
  v29 = v46;
  sub_1DA9408D4();
  v30 = *(v53 + 8);
  v53 += 8;
  v45 = v30;
  v31 = v48;
  v30(v28, v48);
  v33 = v51;
  v32 = v52;
  v34 = *(v51 + 104);
  v35 = v49;
  v34(v49, *MEMORY[0x1E69E7F40], v52);
  v36 = v50;
  *v50 = 0;
  v34(v36, *MEMORY[0x1E69E7F28], v32);
  MEMORY[0x1E12721A0](v29, v35, v36, v40);
  v37 = *(v33 + 8);
  v37(v36, v32);
  v37(v35, v32);
  v45(v29, v31);
  sub_1DA941064();
  return v23;
}

uint64_t SyncService.flushPendingRemovals(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA9407F4();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DA940854();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1DA9026A4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_15_1;
  v16 = _Block_copy(aBlock);

  sub_1DA7B3DC0(a1);
  sub_1DA940824();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DA902500(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_1DA900B78(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1DA8FFFC8(a2);
  }
}

uint64_t sub_1DA900BE8()
{
  v1 = v0;
  v2 = sub_1DA9408C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = sub_1DA9408F4();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID + 8);
  if (!v10)
  {
    return 0;
  }

  v33 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID);
  v34 = v10;

  sub_1DA9412F4();
  v11 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v11;
  sub_1DA90C5E0(&v35, 115, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v13 = v33;
  v14 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID + 8);
  if (v14)
  {
    v33 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID);
    v34 = v14;

    sub_1DA9412F4();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v13;
    sub_1DA90C5E0(&v35, 117, 0xE100000000000000, v15);
    v13 = v33;
  }

  v33 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingFeeds);
  sub_1DA9412F4();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v13;
  sub_1DA90C5E0(&v35, 102, 0xE100000000000000, v16);
  v17 = v33;
  v18 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalPayloads;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = *(v19 + 16);
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = sub_1DA8BF808(*(v19 + 16), 0);
  v30 = sub_1DA8BFC0C(&v35, v21 + 4, v20, v19);

  result = sub_1DA830720();
  if (v30 != v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7138, &qword_1DA962D88);
  sub_1DA902B00();
  sub_1DA9412F4();
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v17;
  sub_1DA90C5E0(&v35, 98, 0xE100000000000000, v22);
  v17 = v32;
LABEL_8:
  v23 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalIDs;
  swift_beginAccess();
  v24 = *(v1 + v23);
  v25 = *(v24 + 16);
  if (!v25)
  {
    return v17;
  }

  v26 = sub_1DA8BF688(*(v24 + 16), 0);
  v27 = sub_1DA8BF88C(&v35, v26 + 4, v25, v24);

  result = sub_1DA830720();
  if (v27 == v25)
  {
    v31 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    sub_1DA902C00();
    sub_1DA9412F4();
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v17;
    sub_1DA90C5E0(&v35, 109, 0xE100000000000000, v28);
    return v31;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1DA90100C()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1DA9408F4();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalPayloads;
    swift_beginAccess();
    v10 = *(v0 + v9);
    v11 = MEMORY[0x1E69E7CD0];
    *(v0 + v9) = MEMORY[0x1E69E7CD0];

    v12 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalIDs;
    swift_beginAccess();
    v13 = *(v0 + v12);
    *(v0 + v12) = v11;

    *(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingFeeds) = 0;
    v14 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID);
    v15 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID + 8);
    *v14 = 0;
    v14[1] = 0;

    v16 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID);
    v17 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID + 8);
    *v16 = 0;
    v16[1] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SyncService.consume(_:)(UserNotificationsCore::IncomingSyncPayload *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v75 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v61 - v7;
  v74 = type metadata accessor for DismissalSyncItem(0);
  v73 = *(v74 - 8);
  v8 = *(v73 + 64);
  v9 = MEMORY[0x1EEE9AC00](v74);
  v72 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - v11;
  countAndFlagsBits = a1->sectionID._countAndFlagsBits;
  object = a1->sectionID._object;
  v15 = a1->universalSectionID.value._countAndFlagsBits;
  v16 = a1->universalSectionID.value._object;
  platform = a1->platform;
  rawValue = a1->feeds.rawValue;
  v69 = a1->dismissalIDs._rawValue;
  v19 = a1->dismissalItemsDictionaries._rawValue;
  v67 = v1;
  v65 = v15;
  v63 = platform;
  v62 = rawValue;
  v68 = countAndFlagsBits;
  if (platform <= 1)
  {
    if (!platform)
    {

      goto LABEL_20;
    }

    v20 = MEMORY[0x1E6993B78];
  }

  else
  {
    v20 = MEMORY[0x1E6993B70];
    v21 = MEMORY[0x1E6993B80];
    if (platform != 3)
    {
      v21 = MEMORY[0x1E6993B88];
    }

    if (platform != 2)
    {
      v20 = v21;
    }
  }

  v22 = *v20;
  v23 = objc_opt_self();

  v24 = [v23 sharedCategories];
  v25 = *MEMORY[0x1E6993B68];

  v26 = sub_1DA940A04();

  v27 = [v24 bundleIDForPlatform:v25 fromBundleID:v26 platform:v22];

  if (v27)
  {
    v28 = sub_1DA940A14();
    v30 = v29;

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      if (qword_1ECBD47D0 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

LABEL_20:
  v22 = v19[2];
  v66 = object;

  v64 = v16;

  if (v22)
  {
    v16 = 0;
    object = v19 + 4;
    v30 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CA0];
    v71 = v12;
    v70 = v19;
    while (1)
    {
      if (v16 >= v19[2])
      {
        __break(1u);
LABEL_44:
        swift_once();
LABEL_15:
        v32 = sub_1DA9405A4();
        __swift_project_value_buffer(v32, qword_1ECBE3DE8);

        v33 = sub_1DA940584();
        v34 = sub_1DA940F34();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v80 = v78;
          *v35 = 136446466;

          v36 = sub_1DA7AE6E8(v68, object, &v80);
          LODWORD(v77) = v34;
          v37 = v36;

          *(v35 + 4) = v37;
          *(v35 + 12) = 2082;
          *(v35 + 14) = sub_1DA7AE6E8(v28, v30, &v80);
          _os_log_impl(&dword_1DA7A9000, v33, v77, "Mapping sectionID using categories: %{public}s -> %{public}s", v35, 0x16u);
          v38 = v78;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v38, -1, -1);
          MEMORY[0x1E12739F0](v35, -1, -1);
        }

        v68 = v28;
        object = v30;
        goto LABEL_20;
      }

      v39 = object[v16];
      if (*(v39 + 16))
      {
        v40 = object[v16];

        v41 = sub_1DA85A4B4(104, 0xE100000000000000);
        if (v42)
        {
          sub_1DA7AD270(*(v39 + 56) + 32 * v41, &v80);
          if (swift_dynamicCast())
          {
            v77 = *(&v79[0] + 1);
            v78 = *&v79[0];
            if (*(v39 + 16) && (v43 = sub_1DA85A4B4(100, 0xE100000000000000), (v44 & 1) != 0))
            {
              sub_1DA7AD270(*(v39 + 56) + 32 * v43, &v80);

              if (swift_dynamicCast())
              {
                sub_1DA93FA94();
                v45 = 0;
LABEL_34:
                v46 = sub_1DA93FAF4();
                v47 = *(*(v46 - 8) + 56);
                v48 = v76;
                v47(v76, v45, 1, v46);
                v49 = v48;
                v50 = v75;
                sub_1DA902088(v49, v75);
                v51 = *(v74 + 20);
                v52 = v72;
                v47(v72 + v51, 1, 1, v46);
                v53 = v77;
                *v52 = v78;
                v52[1] = v53;
                sub_1DA825C64(v50, v52 + v51);
                v54 = v52;
                v12 = v71;
                sub_1DA9025AC(v54, v71, type metadata accessor for DismissalSyncItem);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v30 = sub_1DA886910(0, *(v30 + 16) + 1, 1, v30);
                }

                v19 = v70;
                v56 = *(v30 + 16);
                v55 = *(v30 + 24);
                if (v56 >= v55 >> 1)
                {
                  v30 = sub_1DA886910(v55 > 1, v56 + 1, 1, v30);
                }

                *(v30 + 16) = v56 + 1;
                sub_1DA9025AC(v12, v30 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v56, type metadata accessor for DismissalSyncItem);
                v28 = MEMORY[0x1E69E7CA0];
                goto LABEL_23;
              }
            }

            else
            {
            }

            v45 = 1;
            goto LABEL_34;
          }
        }
      }

LABEL_23:
      if (v22 == ++v16)
      {
        goto LABEL_40;
      }
    }
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_40:
  *&v80 = v68;
  *(&v80 + 1) = v66;
  *&v81 = v65;
  *(&v81 + 1) = v64;
  LOBYTE(v82) = v63;
  *(&v82 + 1) = v62;
  *&v83 = v69;
  *(&v83 + 1) = v30;
  v57 = v67;
  v58 = v67 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v59 = *(v58 + 8);
    ObjectType = swift_getObjectType();
    v79[0] = v80;
    v79[1] = v81;
    v79[2] = v82;
    v79[3] = v83;
    (*(v59 + 8))(v57, v79, ObjectType, v59);
    swift_unknownObjectRelease();
  }

  sub_1DA9026B0(&v80);
}

void sub_1DA9019CC()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_service) + 16) devices];
  if (v1)
  {
    v2 = v1;
    sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
    v3 = sub_1DA940BE4();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_15:

      return;
    }
  }

  v4 = sub_1DA941264();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E1272460](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v6 isDefaultPairedDevice];

    if ((v9 & 1) == 0)
    {
      ++v5;
      if (v8 != v4)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_1DA901B24()
{
  v1 = *v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DA901B78(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1DA901BE8(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1DA902F64;
}

uint64_t sub_1DA901C8C()
{
  v1 = [*(*(*v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_service) + 16) devices];
  if (!v1)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_1DA941264();
    goto LABEL_4;
  }

  v2 = v1;
  sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
  v3 = sub_1DA940BE4();

  if (v3 >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  return v4;
}

uint64_t sub_1DA901D9C()
{
  sub_1DA9407F4();
  sub_1DA902500(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  return sub_1DA9411D4();
}

uint64_t sub_1DA901E88(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1DA940934();
      sub_1DA902500(&unk_1ECBD7070, MEMORY[0x1E6966688]);
      result = sub_1DA940904();
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

  result = sub_1DA9020F8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DA902088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA9020F8(uint64_t a1, uint64_t a2)
{
  result = sub_1DA93F7E4();
  if (!result || (result = sub_1DA93F804(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DA93F7F4();
      sub_1DA940934();
      sub_1DA902500(&unk_1ECBD7070, MEMORY[0x1E6966688]);
      return sub_1DA940904();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1DA9021D8(uint64_t a1, char *a2)
{
  v23 = a1;
  v22 = sub_1DA940FC4();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940F74();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DA940854();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_payloadConsumer + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_queue;
  v11 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v20[0] = "queue_flushTimer";
  v20[1] = v11;
  sub_1DA940824();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DA902500(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v22);
  *&a2[v21] = sub_1DA941004();
  v12 = &a2[OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_service];
  v13 = v23;
  *v12 = v23;
  *(v12 + 1) = &off_1F5638E30;
  v14 = type metadata accessor for IDSInboundMessaging();
  v24.receiver = a2;
  v24.super_class = v14;

  v15 = objc_msgSendSuper2(&v24, sel_init);
  v16 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_queue];
  v17 = *(v13 + 16);
  v18 = v15;
  [v17 addDelegate:v18 queue:v16];

  return v18;
}

uint64_t sub_1DA902500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA902548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissalSyncBulletin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA9025AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DA902614()
{
  v1 = *(type metadata accessor for DismissalSyncBulletin(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1DA8FF804(v3, (v0 + v2), v4);
}

unint64_t sub_1DA9026E4()
{
  result = qword_1ECBD70E0;
  if (!qword_1ECBD70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD70E0);
  }

  return result;
}

unint64_t sub_1DA90273C()
{
  result = qword_1ECBD70E8;
  if (!qword_1ECBD70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD70E8);
  }

  return result;
}

unint64_t sub_1DA902794()
{
  result = qword_1ECBD70F0;
  if (!qword_1ECBD70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD70F0);
  }

  return result;
}

unint64_t sub_1DA9027EC()
{
  result = qword_1ECBD70F8;
  if (!qword_1ECBD70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD70F8);
  }

  return result;
}

unint64_t sub_1DA902844()
{
  result = qword_1ECBD7100;
  if (!qword_1ECBD7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7100);
  }

  return result;
}

void sub_1DA9028E0()
{
  sub_1DA89E3C8();
  if (v0 <= 0x3F)
  {
    sub_1DA8235A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA902A34()
{
  sub_1DA8235A8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1DA902B00()
{
  result = qword_1ECBD7140;
  if (!qword_1ECBD7140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7138, &qword_1DA962D88);
    sub_1DA902B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7140);
  }

  return result;
}

unint64_t sub_1DA902B84()
{
  result = qword_1ECBD7148;
  if (!qword_1ECBD7148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7150, &qword_1DA962D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7148);
  }

  return result;
}

unint64_t sub_1DA902C00()
{
  result = qword_1ECBD7158;
  if (!qword_1ECBD7158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7158);
  }

  return result;
}

uint64_t sub_1DA902C7C(uint64_t a1)
{
  v2 = type metadata accessor for DismissalSyncBulletin(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA902CD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20[-v4 - 8];
  v6 = sub_1DA93FAF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v21 = DismissalSyncBulletin.dismissalHash.getter();
  v22 = v11;
  sub_1DA9412F4();
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v12;
  sub_1DA90C5E0(v20, 104, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v14 = v21;
  v15 = type metadata accessor for DismissalSyncBulletin(0);
  sub_1DA825D4C(a1 + *(v15 + 32), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DA823670(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_1DA93FAA4();
    v21 = v16;
    sub_1DA9412F4();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    sub_1DA90C5E0(v20, 100, 0xE100000000000000, v17);
    (*(v7 + 8))(v10, v6);
    return v21;
  }

  return v14;
}

uint64_t sub_1DA902F14()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(v0 + 16))();
  swift_getObjectType();
  return sub_1DA941054();
}

uint64_t sub_1DA902F6C()
{
  v0 = sub_1DA8497BC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD71C0, qword_1DA962DD8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1ECBD7198 = result;
  return result;
}

uint64_t sub_1DA902FC8()
{
  v10 = sub_1DA940FC4();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940F74();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DA940854();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1DA7AC344();
  sub_1DA940824();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1DA941004();
  qword_1ECBD71A0 = result;
  return result;
}

uint64_t sub_1DA903218(char a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v174 = a3;
  v175 = a4;
  v171 = a2;
  v9 = sub_1DA9407F4();
  v169 = *(v9 - 8);
  v10 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v166 = &v149[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v167 = sub_1DA940854();
  v165 = *(v167 - 8);
  v12 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v164 = &v149[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = sub_1DA93F9F4();
  v161 = *(v162 - 8);
  v14 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v149[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v160 = sub_1DA93FA14();
  v159 = *(v160 - 8);
  v16 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v157 = &v149[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v172 = sub_1DA93FAF4();
  v170 = *(v172 - 8);
  v18 = *(v170 + 64);
  v19 = MEMORY[0x1EEE9AC00](v172);
  v21 = &v149[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v156 = &v149[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v149[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FA8, &unk_1DA962760);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v149[-v28];
  v30 = sub_1DA9408B4();
  v31 = *(v30 - 8);
  v176 = v30;
  v177 = v31;
  v32 = v31[8];
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v149[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x1EEE9AC00](v33);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v149[-v38];
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v149[-v41];
  MEMORY[0x1EEE9AC00](v40);
  v173 = &v149[-v44];
  if (a1)
  {
    v152 = v43;
    v153 = v9;
    v154 = a5;
    v155 = a6;
    v45 = swift_allocObject();
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
    v168 = v45;
    if (qword_1ECBD47E0 != -1)
    {
      v45 = swift_once();
    }

    v46 = qword_1ECBD7198;
    MEMORY[0x1EEE9AC00](v45);
    v47 = v175;
    *&v149[-16] = v174;
    *&v149[-8] = v47;

    os_unfair_lock_lock((v46 + 24));
    sub_1DA90513C((v46 + 16), v29);
    os_unfair_lock_unlock((v46 + 24));

    v49 = v176;
    v48 = v177;
    if ((v177[6])(v29, 1, v176) == 1)
    {
      sub_1DA905158(v29);
      v50 = v171;
      sub_1DA90477C();
      if ((v51 & 1) == 0)
      {
        v123 = v172;
        if (qword_1ECBD47F0 != -1)
        {
          swift_once();
        }

        v124 = sub_1DA9405A4();
        __swift_project_value_buffer(v124, qword_1ECBD71A8);
        v125 = v170;
        (*(v170 + 16))(v21, v50, v123);
        v126 = sub_1DA940584();
        v127 = sub_1DA940F34();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          aBlock[0] = v177;
          *v128 = 136315138;
          v129 = v157;
          sub_1DA93FA04();
          v130 = v158;
          sub_1DA93F9E4();
          v131 = sub_1DA93FAD4();
          v133 = v132;
          (*(v161 + 8))(v130, v162);
          (*(v159 + 8))(v129, v160);
          (*(v125 + 8))(v21, v123);
          v134 = sub_1DA7AE6E8(v131, v133, aBlock);

          *(v128 + 4) = v134;
          _os_log_impl(&dword_1DA7A9000, v126, v127, "Date not in fuzzing range; %s.", v128, 0xCu);
          v135 = v177;
          __swift_destroy_boxed_opaque_existential_1(v177);
          MEMORY[0x1E12739F0](v135, -1, -1);
          MEMORY[0x1E12739F0](v128, -1, -1);
        }

        else
        {

          v136 = (*(v125 + 8))(v21, v123);
        }

        (v154)(v136);
      }

      sub_1DA940894();
      v52 = sub_1DA90524C();
      v53 = v173;
      v54 = sub_1DA9408D4();
      v55 = qword_1ECBD7198;
      MEMORY[0x1EEE9AC00](v54);
      v56 = v175;
      *&v149[-32] = v174;
      *&v149[-24] = v56;
      *&v149[-16] = v53;

      os_unfair_lock_lock(v55 + 6);
      sub_1DA905388(&v55[4]);
      os_unfair_lock_unlock(v55 + 6);

      if (qword_1ECBD47F0 != -1)
      {
        swift_once();
      }

      v57 = sub_1DA9405A4();
      __swift_project_value_buffer(v57, qword_1ECBD71A8);
      v58 = v176;
      v59 = v177;
      (v177[2])(v35, v53, v176);
      v60 = v168;

      v61 = sub_1DA940584();
      v62 = sub_1DA940F34();

      v63 = os_log_type_enabled(v61, v62);
      v64 = v155;
      if (v63)
      {
        v65 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        aBlock[0] = v171;
        *v65 = 136315650;
        v66 = sub_1DA904470(v60);
        v67 = MEMORY[0x1E1271B80](v66);
        v151 = v61;
        v68 = v67;
        v70 = v69;

        v71 = sub_1DA7AE6E8(v68, v70, aBlock);

        *(v65 + 4) = v71;
        *(v65 + 12) = 2048;
        *(v65 + 14) = v52;
        *(v65 + 22) = 2080;
        sub_1DA9408A4();
        v72 = v156;
        sub_1DA93FA74();
        v73 = v157;
        sub_1DA93FA04();
        v74 = v158;
        sub_1DA93F9E4();
        v75 = sub_1DA93FAD4();
        v150 = v62;
        v77 = v76;
        (*(v161 + 8))(v74, v162);
        (*(v159 + 8))(v73, v160);
        (*(v170 + 8))(v72, v172);
        v78 = v59[1];
        v78(v35, v58);
        v79 = sub_1DA7AE6E8(v75, v77, aBlock);

        *(v65 + 24) = v79;
        v80 = v151;
        _os_log_impl(&dword_1DA7A9000, v151, v150, "[%s] Delaying closure by %fs - deadline: %s.", v65, 0x20u);
        v81 = v171;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v81, -1, -1);
        MEMORY[0x1E12739F0](v65, -1, -1);
      }

      else
      {

        v78 = v59[1];
        v78(v35, v58);
      }

      v78(v152, v58);
    }

    else
    {
      (v48[4])(v42, v29, v49);
      v89 = v48[2];
      v90 = v173;
      v89(v173, v42, v49);
      if (qword_1ECBD47F0 != -1)
      {
        swift_once();
      }

      v91 = sub_1DA9405A4();
      __swift_project_value_buffer(v91, qword_1ECBD71A8);
      v92 = v170;
      (*(v170 + 16))(v25, v171, v172);
      v89(v39, v90, v49);
      v93 = v168;

      v94 = sub_1DA940584();
      v95 = sub_1DA940F34();
      v171 = v94;
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        aBlock[0] = v152;
        *v96 = 136315650;
        v97 = sub_1DA904470(v93);
        v99 = v98;
        v101 = v100;
        v103 = v102;

        v104 = MEMORY[0x1E1271B80](v97, v99, v101, v103);
        v106 = v105;

        v107 = sub_1DA7AE6E8(v104, v106, aBlock);

        *(v96 + 4) = v107;
        *(v96 + 12) = 2080;
        sub_1DA90477C();
        if (v108)
        {
          v109 = 0;
        }

        else
        {
          v109 = 0x20666F2074756F20;
        }

        if (v108)
        {
          v110 = 0xE000000000000000;
        }

        else
        {
          v110 = 0xED000065676E6172;
        }

        v170 = *(v92 + 8);
        v111 = v172;
        (v170)(v25, v172);
        v112 = sub_1DA7AE6E8(v109, v110, aBlock);

        *(v96 + 14) = v112;
        *(v96 + 22) = 2080;
        sub_1DA9408A4();
        v113 = v156;
        sub_1DA93FA74();
        v114 = v157;
        sub_1DA93FA04();
        v115 = v158;
        sub_1DA93F9E4();
        v116 = sub_1DA93FAD4();
        LODWORD(v151) = v95;
        v118 = v117;
        (*(v161 + 8))(v115, v162);
        (*(v159 + 8))(v114, v160);
        (v170)(v113, v111);
        v119 = v176;
        v78 = v177[1];
        v78(v39, v176);
        v120 = sub_1DA7AE6E8(v116, v118, aBlock);

        *(v96 + 24) = v120;
        v121 = v171;
        _os_log_impl(&dword_1DA7A9000, v171, v151, "[%s] Delaying%s closure until %s to match related closures..", v96, 0x20u);
        v122 = v152;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v122, -1, -1);
        MEMORY[0x1E12739F0](v96, -1, -1);

        v78(v42, v119);
      }

      else
      {

        v78 = v177[1];
        v78(v39, v49);
        (*(v92 + 8))(v25, v172);
        v78(v42, v49);
      }

      v64 = v155;
    }

    v137 = v154;
    if (qword_1ECBD47E8 != -1)
    {
      swift_once();
    }

    v138 = qword_1ECBD71A0;
    v139 = swift_allocObject();
    v140 = v174;
    v141 = v175;
    v139[2] = v163;
    v139[3] = v140;
    v142 = v168;
    v139[4] = v141;
    v139[5] = v142;
    v139[6] = v137;
    v139[7] = v64;
    aBlock[4] = sub_1DA9053A8;
    aBlock[5] = v139;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_23;
    v143 = _Block_copy(aBlock);

    v144 = v138;

    v145 = v164;
    sub_1DA940824();
    v178 = MEMORY[0x1E69E7CC0];
    sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    v146 = v166;
    v147 = v153;
    sub_1DA9411D4();
    v148 = v173;
    MEMORY[0x1E1272060](v173, v145, v146, v143);
    _Block_release(v143);

    (*(v169 + 8))(v146, v147);
    (*(v165 + 8))(v145, v167);

    v78(v148, v176);
  }

  if (qword_1ECBD47F0 != -1)
  {
    swift_once();
  }

  v82 = sub_1DA9405A4();
  __swift_project_value_buffer(v82, qword_1ECBD71A8);
  v83 = sub_1DA940584();
  v84 = sub_1DA940F34();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = a5;
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_1DA7A9000, v83, v84, "Fuzz disabled.", v86, 2u);
    v87 = v86;
    a5 = v85;
    MEMORY[0x1E12739F0](v87, -1, -1);
  }

  return a5();
}

void *sub_1DA904470(void *a1)
{
  v2 = sub_1DA93FB24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[5])
  {
    v8 = a1[3];
    v7 = a1[4];
    v9 = a1[5];
    v10 = a1[2];
LABEL_5:

    return v10;
  }

  sub_1DA93FB14();
  v11 = sub_1DA93FB04();
  v13 = v12;
  v14 = (*(v3 + 8))(v6, v2);
  v20[0] = 45;
  v20[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v14);
  v20[-2] = v20;
  result = sub_1DA904D7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DA8E59F8, &v20[-4], v11, v13, v20);
  if (result[2])
  {
    v10 = result[4];
    v16 = result[5];
    v17 = result[6];
    v18 = result[7];

    swift_beginAccess();
    v19 = a1[5];
    a1[2] = v10;
    a1[3] = v16;
    a1[4] = v17;
    a1[5] = v18;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA90463C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1DA85A4B4(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_1DA9408B4();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    return (*(v11 + 56))(a4, 0, 1, v10);
  }

  else
  {
    v13 = sub_1DA9408B4();
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

void sub_1DA90477C()
{
  sub_1DA93F9D4();
  v1 = fmod(v0, 3600.0);
  v2 = fmod(trunc(v1), 60.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 > 1)
  {
    return;
  }

  sub_1DA93F9D4();
  v4 = trunc(fmod(v3, 3600.0)) / 60.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1DA90489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FA8, &unk_1DA962760);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_1DA9408B4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a4, v11);
  (*(v12 + 56))(v10, 0, 1, v11);

  return sub_1DA8F11E0(v10, a2, a3);
}

uint64_t sub_1DA9049C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  if (qword_1ECBD47E0 != -1)
  {
    a1 = swift_once();
  }

  v7 = qword_1ECBD7198;
  MEMORY[0x1EEE9AC00](a1);

  os_unfair_lock_lock(v7 + 6);
  sub_1DA9053B8(&v7[4]);
  os_unfair_lock_unlock(v7 + 6);

  if (qword_1ECBD47F0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1ECBD71A8);

  v9 = sub_1DA940584();
  v10 = sub_1DA940F34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_1DA904470(a4);
    v14 = MEMORY[0x1E1271B80](v13);
    v16 = v15;

    v17 = sub_1DA7AE6E8(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1DA7A9000, v9, v10, "[%s] Running.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12739F0](v12, -1, -1);
    MEMORY[0x1E12739F0](v11, -1, -1);
  }

  return a5(v18);
}

uint64_t sub_1DA904BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FA8, &unk_1DA962760);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - v7;
  v9 = sub_1DA9408B4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

  return sub_1DA8F11E0(v8, a2, a3);
}

uint64_t sub_1DA904D0C()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD71A8);
  __swift_project_value_buffer(v0, qword_1ECBD71A8);
  return sub_1DA940594();
}

unint64_t sub_1DA904D7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DA940B34();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DA886B14(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DA886B14((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DA940B24();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DA940AD4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DA940AD4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DA940B34();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DA886B14(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DA940B34();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DA886B14(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DA886B14((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DA940AD4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA905158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FA8, &unk_1DA962760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA9051C0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E1273A10](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E1273A10](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1DA90524C()
{
  v0 = sub_1DA9051C0(0x20000000000001uLL);
  v1 = vcvtd_n_f64_u64(v0, 0x35uLL) * 4.0 + 1.0;
  if (v0 == 0x20000000000000)
  {
    v2 = 5.0;
  }

  else
  {
    v2 = v1;
  }

  if (qword_1ECBD47F0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DA9405A4();
  __swift_project_value_buffer(v3, qword_1ECBD71A8);
  v4 = sub_1DA940584();
  v5 = sub_1DA940EF4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v2;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 0x3FF0000000000000;
    *(v6 + 22) = 2048;
    *(v6 + 24) = 0x4014000000000000;
    _os_log_impl(&dword_1DA7A9000, v4, v5, "Using fuzz of %fs. [%f...%f]", v6, 0x20u);
    MEMORY[0x1E12739F0](v6, -1, -1);
  }

  return v2;
}

id sub_1DA9055BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSInboundMessaging();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DA905670(uint64_t a1)
{
  if (a1)
  {
    if (qword_1ECBD47D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1DA9405A4();
    __swift_project_value_buffer(v2, qword_1ECBE3DE8);

    oslog = sub_1DA940584();
    v3 = sub_1DA940F34();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = *(a1 + 16);

      _os_log_impl(&dword_1DA7A9000, oslog, v3, "Active IDS accounts changed. Count: %ld", v4, 0xCu);
      MEMORY[0x1E12739F0](v4, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1DA9057CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    if (qword_1ECBD47D0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA9405A4();
    __swift_project_value_buffer(v18, qword_1ECBE3DE8);
    v19 = sub_1DA940F14();
    log = sub_1DA940584();
    if (os_log_type_enabled(log, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DA7A9000, log, v19, "Couldn't unwrap fromID for incoming message", v20, 2u);
      MEMORY[0x1E12739F0](v20, -1, -1);
    }

    goto LABEL_23;
  }

  v6 = *(*(v3 + OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_service) + 16);
  v8 = sub_1DA940A04();
  log = [v6 deviceForFromID_];

  if (!log)
  {
    if (qword_1ECBD47D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA9405A4();
    __swift_project_value_buffer(v21, qword_1ECBE3DE8);
    v22 = sub_1DA940F14();

    log = sub_1DA940584();

    if (os_log_type_enabled(log, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v62 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1DA7AE6E8(a2, a3, &v62);
      _os_log_impl(&dword_1DA7A9000, log, v22, "Received IDS message from invalid device ID: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12739F0](v24, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
      goto LABEL_27;
    }

LABEL_23:

    return;
  }

  if (!a1)
  {
    goto LABEL_23;
  }

  v66 = 115;
  v67 = 0xE100000000000000;
  sub_1DA9412F4();
  if (!*(a1 + 16) || (v9 = v3, v10 = sub_1DA85A788(&v62), (v11 & 1) == 0))
  {
    sub_1DA862DE8(&v62);
    goto LABEL_27;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v10, v61);
  sub_1DA862DE8(&v62);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:

    return;
  }

  v12 = v67;
  v58 = v66;
  *&v61[0] = 117;
  *(&v61[0] + 1) = 0xE100000000000000;
  sub_1DA9412F4();
  if (*(a1 + 16) && (v13 = sub_1DA85A788(&v62), (v14 & 1) != 0))
  {
    sub_1DA7AD270(*(a1 + 56) + 32 * v13, v61);
    sub_1DA862DE8(&v62);
    v15 = swift_dynamicCast();
    if (v15)
    {
      v16 = v66;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v67;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_1DA862DE8(&v62);
    v16 = 0;
    v17 = 0;
  }

  v25 = [log deviceType];
  if (v25 >= 7)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0x4030202020100uLL >> (8 * v25);
  }

  *&v61[0] = 102;
  *(&v61[0] + 1) = 0xE100000000000000;
  sub_1DA9412F4();
  if (!*(a1 + 16) || (v27 = sub_1DA85A788(&v62), (v28 & 1) == 0))
  {
    sub_1DA862DE8(&v62);
    goto LABEL_37;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v27, v61);
  sub_1DA862DE8(&v62);
  if (!swift_dynamicCast())
  {
LABEL_37:
    v29 = 15871;
    goto LABEL_38;
  }

  v29 = v66;
LABEL_38:
  v66 = 98;
  v67 = 0xE100000000000000;
  sub_1DA9412F4();
  if (!*(a1 + 16) || (v30 = sub_1DA85A788(&v62), (v31 & 1) == 0))
  {
    sub_1DA862DE8(&v62);
    goto LABEL_43;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v30, v61);
  sub_1DA862DE8(&v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7258, qword_1DA962E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v32 = v66;
LABEL_44:
  v66 = 109;
  v67 = 0xE100000000000000;
  sub_1DA9412F4();
  if (!*(a1 + 16) || (v33 = sub_1DA85A788(&v62), (v34 & 1) == 0))
  {
    sub_1DA862DE8(&v62);
    goto LABEL_49;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v33, v61);
  sub_1DA862DE8(&v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_50;
  }

  v35 = v66;
LABEL_50:
  *&v62 = v59;
  *(&v62 + 1) = v12;
  *&v63 = v16;
  *(&v63 + 1) = v17;
  LOBYTE(v64) = v26;
  *(&v64 + 1) = v29;
  *&v65 = v35;
  *(&v65 + 1) = v32;
  v36 = qword_1ECBD47D0;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = sub_1DA9405A4();
  __swift_project_value_buffer(v37, qword_1ECBE3DE8);

  v38 = log;
  v39 = sub_1DA940584();
  v40 = sub_1DA940F34();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v61[0] = v42;
    *v41 = 136315650;
    v43 = sub_1DA940984();
    v45 = sub_1DA7AE6E8(v43, v44, v61);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v46 = sub_1DA7AE6E8(v59, v12, v61);

    *(v41 + 14) = v46;
    *(v41 + 22) = 2080;
    v47 = [v38 name];

    if (!v47)
    {
      __break(1u);
      return;
    }

    v48 = v9;
    v49 = sub_1DA940A14();
    v51 = v50;

    v52 = sub_1DA7AE6E8(v49, v51, v61);

    *(v41 + 24) = v52;
    _os_log_impl(&dword_1DA7A9000, v39, v40, "Received IDS message %s for %s from %s", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v42, -1, -1);
    MEMORY[0x1E12739F0](v41, -1, -1);
  }

  else
  {

    v48 = v9;
  }

  v53 = v48 + OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_payloadConsumer;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    v56 = *(v53 + 8);
    ObjectType = swift_getObjectType();
    v61[0] = v62;
    v61[1] = v63;
    v61[2] = v64;
    v61[3] = v65;
    (*(v56 + 8))(v61, ObjectType, v56);
  }

  sub_1DA906018(&v62);
}

uint64_t sub_1DA906108()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_pendingSince;
  v3 = sub_1DA93FAF4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_timeoutTask];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AlertCoordinatorContext.init(sourceBundleIdentifier:notificationIdentifier:interruptionLevel:shouldPlayLightsAndSirens:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t AlertCoordinatorBulletinObserver.__allocating_init(serviceManager:)(char *a1)
{
  v2 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_alertCoordinator;
  swift_beginAccess();
  v3 = *&a1[v2];
  if (v3 && (v4 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties, swift_beginAccess(), (v5 = *&a1[v4]) != 0) && (v6 = *&a1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_sourceMonitor]) != 0)
  {
    type metadata accessor for AlertCoordinatorBulletinObserver();
    v7 = swift_allocObject();

    v8 = sub_1DA909DCC(v3, v5, v6, v7);

    return v8;
  }

  else
  {
    if (qword_1ECBD47F8 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA9405A4();
    __swift_project_value_buffer(v10, qword_1ECBD7260);
    v11 = a1;
    v12 = sub_1DA940584();
    v13 = sub_1DA940F24();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446210;
      v11 = v11;
      v16 = [v11 description];
      v17 = sub_1DA940A14();
      v19 = v18;

      v20 = sub_1DA7AE6E8(v17, v19, &v21);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Invalid context for init: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12739F0](v15, -1, -1);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1DA906424()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA93FB54();
  v1 = *(v0 + 120);
  os_unfair_lock_lock(v1 + 4);
  sub_1DA84AA88(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void *sub_1DA9064E8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[5];
  if (!v2)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  sub_1DA90A554(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);

  sub_1DA93FB74();

  v4 = *(v2 + 56);

  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      v20 = MEMORY[0x1E69E7CC0];
      result = sub_1DA82A778(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v20;
      v19 = v4 & 0xC000000000000001;
      v17 = a2;
      v18 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v19)
        {
          v9 = MEMORY[0x1E1272460](v6, v4);
        }

        else
        {
          if (v6 >= *(v18 + 16))
          {
            goto LABEL_17;
          }

          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v4;
        result = [*(v9 + 16) uniqueID];
        if (!result)
        {
          goto LABEL_22;
        }

        v11 = result;
        a2 = sub_1DA940A14();
        v13 = v12;

        v15 = *(v20 + 16);
        v14 = *(v20 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1DA82A778((v14 > 1), v15 + 1, 1);
        }

        *(v20 + 16) = v15 + 1;
        v16 = v20 + 16 * v15;
        *(v16 + 32) = a2;
        *(v16 + 40) = v13;
        ++v6;
        v4 = v10;
        if (v8 == v5)
        {

          a2 = v17;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v5 = sub_1DA941264();
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_19:

  v7 = MEMORY[0x1E69E7CC0];
LABEL_20:
  *a2 = v7;
  return result;
}

uint64_t sub_1DA906738()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1DA940D34();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1DA8DB00C(0, 0, v3, &unk_1DA963050, v6);
}

uint64_t sub_1DA90685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = *(MEMORY[0x1E69E86E0] + 4);
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_1DA9068F0;

  return MEMORY[0x1EEE6DA78]();
}

uint64_t sub_1DA9068F0()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA9069EC, 0, 0);
}

uint64_t sub_1DA9069EC()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DA906424();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_1DA906A78(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v62 - v12;
  v14 = type metadata accessor for NotificationSource();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = *a1;
  v19 = *(a1 + 8);
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  if (*(a1 + 40) != 1)
  {
LABEL_9:
    v28 = v18;
    v29 = qword_1ECBD47F8;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_1DA9405A4();
    __swift_project_value_buffer(v30, qword_1ECBD7260);

    v31 = sub_1DA940584();
    v32 = sub_1DA940EF4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v21;
      v35 = swift_slowAlloc();
      v71[0] = v35;
      *v33 = 136380931;
      *(v33 + 4) = sub_1DA7AE6E8(v28, v19, v71);
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_1DA7AE6E8(v34, v20, v71);
      _os_log_impl(&dword_1DA7A9000, v31, v32, "[%{private}s:%{public}s] bulletin does not alert", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v35, -1, -1);
      MEMORY[0x1E12739F0](v33, -1, -1);
    }

    if (a2)
    {
LABEL_14:

      a2(0);
      return;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v68 = *a1;
  if (*(a1 + 32) == 3)
  {
    v22 = qword_1ECBD47F8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1DA9405A4();
    __swift_project_value_buffer(v23, qword_1ECBD7260);

    v24 = sub_1DA940584();
    v25 = sub_1DA940EF4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = v21;
      v21 = swift_slowAlloc();
      v71[0] = v21;
      *v26 = 136380931;
      *(v26 + 4) = sub_1DA7AE6E8(v68, v19, v71);
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_1DA7AE6E8(v27, v20, v71);
      _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{private}s:%{public}s] skipping coordination and allowing critical alert", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v21, -1, -1);
      MEMORY[0x1E12739F0](v26, -1, -1);
    }

    if (a2)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_9;
  }

  v64 = v21;
  v65 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = a3;
  v67 = a2;
  v63 = v3;
  sub_1DA7BABAC(v3 + 48, v71);
  v36 = v72;
  v37 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v38 = *(v37 + 24);

  v38(v68, v19, 0, v36, v37);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DA7BA120(v13, &qword_1ECBD6640, qword_1DA95F868);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v39 = v67;
    goto LABEL_26;
  }

  v40 = v65;
  sub_1DA90A4EC(v13, v65, type metadata accessor for NotificationSource);
  __swift_destroy_boxed_opaque_existential_1(v71);
  v71[0] = &unk_1F56316E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1DA9596E0;
  v42 = v40[3];
  *(v41 + 32) = v40[2];
  *(v41 + 40) = v42;
  v70 = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA8B99B4();
  v43 = sub_1DA940EE4();

  v44 = v66;
  if (v43)
  {
    v45 = 2;
    v39 = v67;
LABEL_25:
    sub_1DA8304A0(4uLL);
    sub_1DA830524(v45);
    sub_1DA830524(4uLL);
    sub_1DA90A2FC(v65, type metadata accessor for NotificationSource);
LABEL_26:
    if (qword_1ECBD47F8 != -1)
    {
      swift_once();
    }

    v54 = sub_1DA9405A4();
    __swift_project_value_buffer(v54, qword_1ECBD7260);

    v55 = sub_1DA940584();
    v56 = sub_1DA940EF4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v71[0] = v58;
      *v57 = 136380931;
      *(v57 + 4) = sub_1DA7AE6E8(v68, v19, v71);
      *(v57 + 12) = 2082;
      *(v57 + 14) = sub_1DA7AE6E8(v64, v20, v71);
      _os_log_impl(&dword_1DA7A9000, v55, v56, "[%{private}s:%{public}s] skipping coordination for known-duplicate source", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v58, -1, -1);
      MEMORY[0x1E12739F0](v57, -1, -1);
    }

    if (v39)
    {

      v39(0);
      return;
    }

    goto LABEL_35;
  }

  v45 = v40[7];
  v39 = v67;
  if (v45 != 4)
  {
    sub_1DA8304B0(v45);
    goto LABEL_25;
  }

  sub_1DA830524(4uLL);
  sub_1DA830524(4uLL);
  if (qword_1ECBD47F8 != -1)
  {
    swift_once();
  }

  v46 = sub_1DA9405A4();
  __swift_project_value_buffer(v46, qword_1ECBD7260);

  v47 = sub_1DA940584();
  v48 = sub_1DA940EF4();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v71[0] = v50;
    *v49 = 136380931;
    v51 = v68;
    *(v49 + 4) = sub_1DA7AE6E8(v68, v19, v71);
    *(v49 + 12) = 2082;
    v52 = v64;
    *(v49 + 14) = sub_1DA7AE6E8(v64, v20, v71);
    _os_log_impl(&dword_1DA7A9000, v47, v48, "[%{private}s:%{public}s] evaluating bulletin", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v50, -1, -1);
    MEMORY[0x1E12739F0](v49, -1, -1);

    v53 = v63;
  }

  else
  {

    v53 = v63;
    v52 = v64;
    v51 = v68;
  }

  v59 = sub_1DA940D34();
  v60 = v69;
  (*(*(v59 - 8) + 56))(v69, 1, 1, v59);
  v61 = swift_allocObject();
  v61[2] = 0;
  v61[3] = 0;
  v61[4] = v53;
  v61[5] = v52;
  v61[6] = v20;
  v61[7] = v51;
  v61[8] = v19;
  v61[9] = v39;
  v61[10] = v44;

  sub_1DA7B3DC0(v39);
  sub_1DA8DB00C(0, 0, v60, &unk_1DA962EF8, v61);

  sub_1DA90A2FC(v65, type metadata accessor for NotificationSource);
}

uint64_t sub_1DA90747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v19;
  v8[12] = v20;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_1DA93FAF4();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730) - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v13 = type metadata accessor for AlertCoordinationMessage(0);
  v8[17] = v13;
  v14 = *(v13 - 8);
  v8[18] = v14;
  v15 = *(v14 + 64) + 15;
  v8[19] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FB8, &unk_1DA962770) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA907628, 0, 0);
}

void sub_1DA907628()
{
  v1 = *(v0[6] + 32);
  v0[22] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_1DA9076E0;
    v3 = v0[7];
    v4 = v0[8];

    sub_1DA854330((v0 + 24));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DA9076E0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA9077F8, 0, 0);
}

void sub_1DA9077F8()
{
  v96 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 192);
  v6 = *(v0 + 193);
  v7 = *(v4 + 120);
  v8 = swift_task_alloc();
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_1DA90A35C;
  *(v9 + 24) = v8;
  os_unfair_lock_lock(v7 + 4);
  sub_1DA7BFAB8(v10);
  os_unfair_lock_unlock(v7 + 4);

  if (v5 > 1)
  {
  }

  else
  {
    v11 = sub_1DA941684();

    if ((v11 & 1) == 0)
    {
      if (qword_1ECBD47F8 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 80);
      v13 = *(v0 + 64);
      v14 = sub_1DA9405A4();
      __swift_project_value_buffer(v14, qword_1ECBD7260);

      v15 = sub_1DA940584();
      v16 = sub_1DA940F34();

      if (os_log_type_enabled(v15, v16))
      {
        v18 = *(v0 + 72);
        v17 = *(v0 + 80);
        v90 = v6;
        v20 = *(v0 + 56);
        v19 = *(v0 + 64);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v93 = v22;
        *v21 = 136381187;
        *(v21 + 4) = sub_1DA7AE6E8(v18, v17, &v93);
        *(v21 + 12) = 2082;
        *(v21 + 14) = sub_1DA7AE6E8(v20, v19, &v93);
        *(v21 + 22) = 2082;
        v94 = 0;
        v95 = 0xE000000000000000;
        sub_1DA941364();
        v23 = v95;
        *(v0 + 16) = v94;
        *(v0 + 24) = v23;
        MEMORY[0x1E1271BD0](0x726F697661686562, 0xEA0000000000203ALL);
        *(v0 + 194) = v5;
        sub_1DA941494();
        MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
        *(v0 + 195) = v90;
        sub_1DA941494();
        v24 = sub_1DA7AE6E8(*(v0 + 16), *(v0 + 24), &v93);

        *(v21 + 24) = v24;
        _os_log_impl(&dword_1DA7A9000, v15, v16, "[%{private}s:%{public}s] allowing local alert. (%{public}s)", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v22, -1, -1);
        MEMORY[0x1E12739F0](v21, -1, -1);
      }

      v25 = *(v0 + 88);
      if (v25)
      {
        v26 = *(v0 + 168);
        v27 = *(v0 + 96);
        v25(0);
        v28 = v26;
LABEL_20:
        sub_1DA7BA120(v28, &unk_1ECBD6FB8, &unk_1DA962770);
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  if (qword_1ECBD47F8 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 80);
  v30 = *(v0 + 64);
  v31 = sub_1DA9405A4();
  __swift_project_value_buffer(v31, qword_1ECBD7260);

  v32 = sub_1DA940584();
  v33 = sub_1DA940F34();

  if (os_log_type_enabled(v32, v33))
  {
    v91 = v6;
    v35 = *(v0 + 72);
    v34 = *(v0 + 80);
    v37 = *(v0 + 56);
    v36 = *(v0 + 64);
    v38 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v93 = v89;
    *v38 = 136381187;
    *(v38 + 4) = sub_1DA7AE6E8(v35, v34, &v93);
    *(v38 + 12) = 2082;
    *(v38 + 14) = sub_1DA7AE6E8(v37, v36, &v93);
    *(v38 + 22) = 2080;
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_1DA941364();
    v39 = v95;
    *(v0 + 32) = v94;
    *(v0 + 40) = v39;
    MEMORY[0x1E1271BD0](0x726F697661686562, 0xEA0000000000203ALL);
    *(v0 + 196) = v5;
    sub_1DA941494();
    MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
    *(v0 + 197) = v91;
    sub_1DA941494();
    v40 = sub_1DA7AE6E8(*(v0 + 32), *(v0 + 40), &v93);

    *(v38 + 24) = v40;
    _os_log_impl(&dword_1DA7A9000, v32, v33, "[%{private}s:%{public}s] suppressing local alert. waiting for remote device. (%s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v89, -1, -1);
    MEMORY[0x1E12739F0](v38, -1, -1);
  }

  v41 = *(v0 + 160);
  v43 = *(v0 + 136);
  v42 = *(v0 + 144);
  sub_1DA90A37C(*(v0 + 168), v41);
  v44 = (*(v42 + 48))(v41, 1, v43);
  v45 = *(v0 + 160);
  if (v44 != 1)
  {
    v59 = *(v0 + 80);
    v60 = *(v0 + 64);
    sub_1DA90A4EC(v45, *(v0 + 152), type metadata accessor for AlertCoordinationMessage);

    v61 = sub_1DA940584();
    v62 = sub_1DA940F34();

    if (os_log_type_enabled(v61, v62))
    {
      v64 = *(v0 + 72);
      v63 = *(v0 + 80);
      v66 = *(v0 + 56);
      v65 = *(v0 + 64);
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v94 = v68;
      *v67 = 136380931;
      *(v67 + 4) = sub_1DA7AE6E8(v64, v63, &v94);
      *(v67 + 12) = 2082;
      *(v67 + 14) = sub_1DA7AE6E8(v66, v65, &v94);
      _os_log_impl(&dword_1DA7A9000, v61, v62, "[%{private}s:%{public}s] already have response from remote coordinator", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v68, -1, -1);
      MEMORY[0x1E12739F0](v67, -1, -1);
    }

    v69 = *(v0 + 88);
    if (v69)
    {
      v70 = *(v0 + 168);
      v71 = *(v0 + 152);
      v73 = *(v0 + 112);
      v72 = *(v0 + 120);
      v75 = *(v0 + 96);
      v74 = *(v0 + 104);

      sub_1DA93FAE4();
      v76 = type metadata accessor for PendingAlertReply();
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      v79 = swift_allocObject();
      v79[2] = v69;
      v79[3] = v75;
      (*(v73 + 32))(v79 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_pendingSince, v72, v74);
      *(v79 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_timeoutTask) = 0;
      sub_1DA909994(v79, v71);
      sub_1DA7B5220(v69);
      swift_setDeallocating();
      (*(v73 + 8))(v79 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_pendingSince, v74);
      v80 = *(*v79 + 48);
      v81 = *(*v79 + 52);
      swift_deallocClassInstance();
      sub_1DA90A2FC(v71, type metadata accessor for AlertCoordinationMessage);
      v28 = v70;
      goto LABEL_20;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v46 = *(v0 + 128);
  v47 = *(v0 + 88);
  v92 = *(v0 + 96);
  v49 = *(v0 + 72);
  v48 = *(v0 + 80);
  v51 = *(v0 + 56);
  v50 = *(v0 + 64);
  v52 = *(v0 + 48);
  sub_1DA7BA120(v45, &unk_1ECBD6FB8, &unk_1DA962770);
  sub_1DA940D04();
  v53 = sub_1DA940D34();
  (*(*(v53 - 8) + 56))(v46, 0, 1, v53);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v52;
  v54[5] = v51;
  v54[6] = v50;
  v54[7] = v49;
  v54[8] = v48;

  v55 = sub_1DA8DB00C(0, 0, v46, &unk_1DA963088, v54);
  v56 = swift_task_alloc();
  v56[2] = v52;
  v56[3] = v51;
  v56[4] = v50;
  v56[5] = v47;
  v56[6] = v92;
  v56[7] = v55;
  v57 = swift_task_alloc();
  *(v57 + 16) = sub_1DA90A4C8;
  *(v57 + 24) = v56;
  os_unfair_lock_lock(v7 + 4);
  sub_1DA84AA88(v58);
  os_unfair_lock_unlock(v7 + 4);
  v88 = *(v0 + 168);

  sub_1DA7BA120(v88, &unk_1ECBD6FB8, &unk_1DA962770);

LABEL_21:
  v83 = *(v0 + 160);
  v82 = *(v0 + 168);
  v84 = *(v0 + 152);
  v86 = *(v0 + 120);
  v85 = *(v0 + 128);

  v87 = *(v0 + 8);

  v87();
}

uint64_t sub_1DA90828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = sub_1DA941474();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = sub_1DA941454();
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA9083BC, 0, 0);
}

uint64_t sub_1DA9083BC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  sub_1DA941434();
  sub_1DA941444();
  v6 = *(v4 + 8);
  *(v0 + 136) = v6;
  *(v0 + 144) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  *(v0 + 16) = xmmword_1DA962EE0;
  *(v0 + 32) = 0;
  sub_1DA9416F4();
  v7 = *(MEMORY[0x1E69E86D0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  v9 = sub_1DA90A554(&qword_1ECBD4D30, MEMORY[0x1E69E8820]);
  *v8 = v0;
  v8[1] = sub_1DA908518;
  v10 = *(v0 + 128);
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);

  return MEMORY[0x1EEE6DA68](v10, v0 + 16, v11, v12, v9);
}

uint64_t sub_1DA908518()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v12 = *v1;
  *(*v1 + 160) = v0;

  v5 = v2[17];
  v4 = v2[18];
  if (v0)
  {
    v6 = v2[16];
    v7 = v2[13];
    (*(v2[11] + 8))(v2[12], v2[10]);
    v5(v6, v7);
    v8 = sub_1DA9087B8;
  }

  else
  {
    v9 = v2[16];
    v10 = v2[13];
    (*(v2[11] + 8))(v2[12], v2[10]);
    v5(v9, v10);
    v8 = sub_1DA908694;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DA908694()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v14 = *(v0 + 48);
  v4 = *(v0 + 40);
  v5 = *(v4 + 120);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v14;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_1DA90A59C;
  *(v7 + 24) = v6;
  os_unfair_lock_lock(v5 + 4);
  sub_1DA84AA88(v8);
  os_unfair_lock_unlock(v5 + 4);

  if (!v1)
  {

    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 96);

    v13 = *(v0 + 8);

    return v13();
  }

  return result;
}

uint64_t sub_1DA9087B8()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1DA908834(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1DA940E04() & 1) == 0)
  {
    v38 = a4;
    v15 = sub_1DA908CDC(a2, a3);
    if (v15)
    {
      v16 = v15;
      v36 = a2;
      if (qword_1ECBD47F8 != -1)
      {
        swift_once();
      }

      v17 = sub_1DA9405A4();
      __swift_project_value_buffer(v17, qword_1ECBD7260);

      v18 = sub_1DA940584();
      v19 = sub_1DA940F14();

      v37 = v19;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v35 = v5;
        v21 = v20;
        v22 = swift_slowAlloc();
        v39 = v22;
        *v21 = 136381187;
        *(v21 + 4) = sub_1DA7AE6E8(v38, a5, &v39);
        v23 = v18;
        *(v21 + 12) = 2082;
        *(v21 + 14) = sub_1DA7AE6E8(v36, a3, &v39);
        *(v21 + 22) = 2082;
        (*(v11 + 16))(v14, v16 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_pendingSince, v10);
        sub_1DA90A554(&qword_1EE114C88, MEMORY[0x1E6969530]);
        v24 = sub_1DA941614();
        v26 = v25;
        (*(v11 + 8))(v14, v10);
        v27 = sub_1DA7AE6E8(v24, v26, &v39);

        *(v21 + 24) = v27;
        _os_log_impl(&dword_1DA7A9000, v23, v37, "[%{private}s:%{public}s] timed out waiting for remote device since %{public}s; allowing local alert.", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v22, -1, -1);
        MEMORY[0x1E12739F0](v21, -1, -1);
      }

      else
      {
      }

      v34 = *(v16 + 16);
      v33 = *(v16 + 24);

      v34(0);
    }

    else
    {
      if (qword_1ECBD47F8 != -1)
      {
        swift_once();
      }

      v28 = sub_1DA9405A4();
      __swift_project_value_buffer(v28, qword_1ECBD7260);

      v29 = sub_1DA940584();
      v30 = sub_1DA940F14();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v39 = v32;
        *v31 = 136380931;
        *(v31 + 4) = sub_1DA7AE6E8(v38, a5, &v39);
        *(v31 + 12) = 2082;
        *(v31 + 14) = sub_1DA7AE6E8(a2, a3, &v39);
        _os_log_impl(&dword_1DA7A9000, v29, v30, "[%{private}s:%{public}s] timed out waiting for remote device but don't have a pending reply.", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v32, -1, -1);
        MEMORY[0x1E12739F0](v31, -1, -1);
      }
    }
  }
}

uint64_t sub_1DA908CDC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner((*(v2 + 120) + 16));
  swift_beginAccess();
  v5 = *(v2 + 88);
  if (*(v5 + 16))
  {

    v6 = sub_1DA85A4B4(a1, a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  swift_beginAccess();

  sub_1DA8F097C(0, a1, a2);
  swift_endAccess();
  return v8;
}

uint64_t sub_1DA908DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a2;
  v11 = sub_1DA93FAF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {

    sub_1DA93FAE4();
    v17 = type metadata accessor for PendingAlertReply();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    (*(v12 + 32))(v20 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_pendingSince, v16, v11);
    *(v20 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_timeoutTask) = a6;
    swift_beginAccess();

    v21 = *(a1 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a1 + 88);
    *(a1 + 88) = 0x8000000000000000;
    sub_1DA90B108(v20, v24, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 88) = v25;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AlertCoordinatorBulletinObserver.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  v7 = *(v0 + 120);

  return v0;
}

uint64_t AlertCoordinatorBulletinObserver.__deallocating_deinit()
{
  AlertCoordinatorBulletinObserver.deinit();

  return swift_deallocClassInstance();
}

void AlertCoordinatorBulletinObserver.response(_:fromID:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = type metadata accessor for AlertCoordinationMessage(0);
  v10 = sub_1DA909248(v7, v8, a1 + *(v9 + 24), a2, a3);
  if (v10)
  {
    sub_1DA909994(v10, a1);
  }

  else
  {
    v11 = *(v3 + 120);
    v12 = MEMORY[0x1EEE9AC00](0);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock(v11 + 4);
    sub_1DA84A760(v13);
    os_unfair_lock_unlock(v11 + 4);
  }
}

uint64_t sub_1DA90912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FB8, &unk_1DA962770);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13 - v9;
  sub_1DA857528(a4, &v13 - v9);
  v11 = type metadata accessor for AlertCoordinationMessage(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  sub_1DA8F13F4(v10, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1DA909248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v45 = a4;
  v46 = a2;
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v18 = *(v6 + 120);
  os_unfair_lock_lock(v18 + 4);
  v19 = *(v11 + 16);
  v44 = a3;
  v19(v17, a3, v10);
  (*(v11 + 56))(v17, 0, 1, v10);
  swift_beginAccess();

  sub_1DA8F09A8(v17, v45, a5);
  swift_endAccess();
  v20 = sub_1DA908CDC(a1, v46);
  if (!v20)
  {
    v40 = v19;
    v41 = 0;
    v22 = v43;
    v21 = v44;
    v39 = a1;
    v42 = v18;
    if (qword_1ECBD47F8 != -1)
    {
      swift_once();
    }

    v23 = sub_1DA9405A4();
    __swift_project_value_buffer(v23, qword_1ECBD7260);
    v24 = v22;
    v25 = v22;
    v26 = v10;
    v40(v25, v21, v10);

    v27 = v46;

    v28 = sub_1DA940584();
    v29 = sub_1DA940F14();

    v30 = v11;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47[0] = v44;
      *v31 = 136446723;
      *(v31 + 4) = sub_1DA7AE6E8(v39, v27, v47);
      *(v31 + 12) = 2081;
      *(v31 + 14) = sub_1DA7AE6E8(v45, a5, v47);
      *(v31 + 22) = 2080;
      sub_1DA90A554(&qword_1EE114C88, MEMORY[0x1E6969530]);
      v32 = sub_1DA941614();
      v34 = v33;
      (*(v30 + 8))(v24, v26);
      v35 = sub_1DA7AE6E8(v32, v34, v47);

      *(v31 + 24) = v35;
      _os_log_impl(&dword_1DA7A9000, v28, v29, "[%{public}s] no pending reply for response from %{private}s; sent %s", v31, 0x20u);
      v36 = v44;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v36, -1, -1);
      MEMORY[0x1E12739F0](v31, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v24, v26);
    }

    v20 = v41;
    v18 = v42;
  }

  os_unfair_lock_unlock(v18 + 4);
  return v20;
}

uint64_t sub_1DA909658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FB8, &unk_1DA962770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v22 - v11;
  swift_beginAccess();
  v13 = *(a1 + 96);
  if (*(v13 + 16))
  {
    v14 = *(a1 + 96);

    v23 = a2;
    v15 = sub_1DA85A4B4(a2, a3);
    if (v16)
    {
      v17 = v15;
      v22[0] = *(v13 + 56);
      v18 = type metadata accessor for AlertCoordinationMessage(0);
      v19 = *(v18 - 8);
      v22[1] = v4;
      v20 = v19;
      sub_1DA857528(v22[0] + *(v19 + 72) * v17, a4);

      (*(v20 + 56))(a4, 0, 1, v18);
    }

    else
    {

      v18 = type metadata accessor for AlertCoordinationMessage(0);
      (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
    }

    a2 = v23;
  }

  else
  {
    v18 = type metadata accessor for AlertCoordinationMessage(0);
    (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
  }

  type metadata accessor for AlertCoordinationMessage(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  swift_beginAccess();

  sub_1DA8F13F4(v12, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1DA9098F0()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD7260);
  __swift_project_value_buffer(v0, qword_1ECBD7260);
  return sub_1DA940594();
}

uint64_t sub_1DA909994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  if (*(a1 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_timeoutTask))
  {
    sub_1DA940DE4();
  }

  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  if ((v13 & 1) == 0)
  {
    if (qword_1ECBD47F8 != -1)
    {
      swift_once();
    }

    v23 = sub_1DA9405A4();
    __swift_project_value_buffer(v23, qword_1ECBD7260);
    sub_1DA857528(a2, v10);

    v24 = sub_1DA940584();
    v25 = sub_1DA940F34();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_1DA7AE6E8(v11, v12, &v36);
      *(v26 + 12) = 2082;
      v28 = AlertCoordinationMessage.description.getter();
      v30 = v29;
      sub_1DA90A2FC(v10, type metadata accessor for AlertCoordinationMessage);
      v31 = sub_1DA7AE6E8(v28, v30, &v36);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{public}s] allowing local alert. (%{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v27, -1, -1);
      MEMORY[0x1E12739F0](v26, -1, -1);

      goto LABEL_15;
    }

    v32 = v10;
LABEL_14:
    sub_1DA90A2FC(v32, type metadata accessor for AlertCoordinationMessage);
    goto LABEL_15;
  }

  if (qword_1ECBD47F8 != -1)
  {
    swift_once();
  }

  v14 = sub_1DA9405A4();
  __swift_project_value_buffer(v14, qword_1ECBD7260);
  sub_1DA857528(a2, v8);

  v15 = sub_1DA940584();
  v16 = sub_1DA940F34();

  if (!os_log_type_enabled(v15, v16))
  {

    v32 = v8;
    goto LABEL_14;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v36 = v18;
  *v17 = 136446466;
  *(v17 + 4) = sub_1DA7AE6E8(v11, v12, &v36);
  *(v17 + 12) = 2082;
  v19 = AlertCoordinationMessage.description.getter();
  v21 = v20;
  sub_1DA90A2FC(v8, type metadata accessor for AlertCoordinationMessage);
  v22 = sub_1DA7AE6E8(v19, v21, &v36);

  *(v17 + 14) = v22;
  _os_log_impl(&dword_1DA7A9000, v15, v16, "[%{public}s] suppressing local alert; remote device alerted. (%{public}s", v17, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E12739F0](v18, -1, -1);
  MEMORY[0x1E12739F0](v17, -1, -1);

LABEL_15:
  v33 = *(a1 + 24);
  return (*(a1 + 16))(v13);
}

uint64_t sub_1DA909DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = type metadata accessor for NotificationSourceMonitor(0);
  v12[4] = &off_1F5636AC8;
  v12[0] = a3;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  v8 = MEMORY[0x1E69E7CC8];
  *(a4 + 88) = MEMORY[0x1E69E7CC8];
  *(a4 + 96) = v8;
  v9 = MEMORY[0x1E69E7CC0];
  *(a4 + 104) = v8;
  *(a4 + 112) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(a4 + 120) = v10;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  sub_1DA7BABAC(v12, a4 + 48);
  swift_beginAccess();
  *(a1 + 48) = &protocol witness table for AlertCoordinatorBulletinObserver;
  swift_unknownObjectWeakAssign();

  sub_1DA906424();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return a4;
}

uint64_t sub_1DA909EC4(uint64_t a1)
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
  v12[1] = sub_1DA7B7660;

  return sub_1DA90747C(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t type metadata accessor for PendingAlertReply()
{
  result = qword_1ECBD7278;
  if (!qword_1ECBD7278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA90A02C()
{
  result = sub_1DA93FAF4();
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

uint64_t sub_1DA90A0D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA90A11C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA90A204()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 24);
}

uint64_t sub_1DA90A248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7470;

  return sub_1DA90685C(a1, v4, v5, v6);
}

uint64_t sub_1DA90A2FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA90A37C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FB8, &unk_1DA962770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA90A3EC(uint64_t a1)
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
  v11[1] = sub_1DA7B7660;

  return sub_1DA90828C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DA90A4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA90A554(unint64_t *a1, void (*a2)(uint64_t))
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

UserNotificationsCore::IntelligenceServiceUntoolOverride __swiftcall IntelligenceServiceUntoolOverride.init(individualSummary:isHighlight:)(UserNotificationsCore::IntelligenceServiceUntoolOverride individualSummary, Swift::Bool_optional isHighlight)
{
  *v2 = individualSummary.individualSummary;
  *(v2 + 16) = isHighlight;
  individualSummary.isHighlight = isHighlight;
  return individualSummary;
}

uint64_t IntelligenceServiceUntoolOverride.toDictionary()()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CC8];
  if (v1)
  {
    v4 = *v0;
    v10 = MEMORY[0x1E69E6158];
    *&v9 = v4;
    *(&v9 + 1) = v1;
    sub_1DA848FE8(&v9, v8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90B6A0(v8, 49, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v2 != 2)
  {
    v10 = MEMORY[0x1E69E6370];
    LOBYTE(v9) = v2 & 1;
    sub_1DA848FE8(&v9, v8);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90B6A0(v8, 50, 0xE100000000000000, v6);
  }

  return v3;
}

uint64_t sub_1DA90A6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v4 = sub_1DA85A4B4(49, 0xE100000000000000);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_13;
    }

LABEL_16:

    v12 = 2;
    goto LABEL_17;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v4, v15);
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_13:
  v9 = sub_1DA85A4B4(50, 0xE100000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v9, v15);

  result = swift_dynamicCast();
  v12 = v13;
  if (!result)
  {
    v12 = 2;
  }

LABEL_17:
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;
  return result;
}

double sub_1DA90A7F8@<D0>(uint64_t a1@<X8>)
{
  if (!os_variant_has_internal_content())
  {
    goto LABEL_11;
  }

  v2 = sub_1DA93FF84();
  v3 = [v2 request];

  v4 = [v3 content];
  v5 = [v4 userInfo];

  v6 = sub_1DA940974();
  sub_1DA9412F4();
  if (!*(v6 + 16) || (v7 = sub_1DA85A788(&v19), (v8 & 1) == 0))
  {

    sub_1DA862DE8(&v19);
    goto LABEL_11;
  }

  sub_1DA7AD270(*(v6 + 56) + 32 * v7, v21);
  sub_1DA862DE8(&v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7288, &qword_1DA963108);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    result = 0.0;
    *a1 = xmmword_1DA95F150;
    *(a1 + 16) = 0;
    return result;
  }

  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v9 = sub_1DA9405A4();
  __swift_project_value_buffer(v9, qword_1EE11AD90);

  v10 = sub_1DA940584();
  v11 = sub_1DA940F34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v19 = v13;
    *v12 = 136315138;
    v14 = sub_1DA940984();
    v16 = sub_1DA7AE6E8(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1DA7A9000, v10, v11, "Found IntelligenceServiceUntoolOverride value %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12739F0](v13, -1, -1);
    MEMORY[0x1E12739F0](v12, -1, -1);
  }

  sub_1DA90A6CC(0xD000000000000021, &v19);
  v17 = v20;
  result = *&v19;
  *a1 = v19;
  *(a1 + 16) = v17;
  return result;
}

unint64_t sub_1DA90AAEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DA85B844(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DA85A4B4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DA9416E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA860068();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return sub_1DA830524(v24);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1DA90AD8C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v40 = a6;
  v41 = a7;
  v38 = a4;
  v39 = a5;
  v8 = v7;
  v12 = sub_1DA93FB24();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_1DA85A5DC(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      v38();
      goto LABEL_9;
    }

    v39();
    v25 = *v8;
    v26 = sub_1DA85A5DC(a2);
    if ((v23 & 1) == (v27 & 1))
    {
      v19 = v26;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1DA9416E4();
    __break(1u);
    return result;
  }

LABEL_9:
  v28 = a1;
  v29 = v41;
  v30 = *v8;
  if (v23)
  {
    v31 = v30[7];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
    v33 = *(v32 - 8);
    v34 = *(v33 + 40);
    v35 = v32;
    v36 = v31 + *(v33 + 72) * v19;

    return v34(v36, v28, v35);
  }

  else
  {
    (*(v13 + 16))(v16, a2, v12);
    return sub_1DA90CAA4(v19, v16, v28, v30, v40, v29);
  }
}

_OWORD *sub_1DA90AFBC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DA85A788(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1DA8605BC();
      goto LABEL_7;
    }

    sub_1DA85C028(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1DA85A788(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1DA862D8C(a2, v22);
      return sub_1DA90CBAC(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1DA9416E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1DA848FE8(a1, v17);
}

uint64_t sub_1DA90B188(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_1DA85A4B4(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = *v11;
    v33 = sub_1DA85A4B4(a2, a3);
    if ((v22 & 1) == (v34 & 1))
    {
      v18 = v33;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DA9416E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  sub_1DA90CE40(v18, a2, a3, a1, v24, a8);
}

uint64_t sub_1DA90B340(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DA7BFAD4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1DA86079C();
      goto LABEL_7;
    }

    sub_1DA85C31C(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1DA7BFAD4(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = sub_1DA9416E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1DA93FBD4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:
  sub_1DA90CC28(v10, a2, a1, v16);
}