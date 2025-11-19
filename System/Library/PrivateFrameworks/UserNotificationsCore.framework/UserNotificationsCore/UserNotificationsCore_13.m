uint64_t sub_1DA923CC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA923D14(uint64_t a1)
{
  *(a1 + 8) = sub_1DA923D44();
  result = sub_1DA923D98();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA923D44()
{
  result = qword_1ECBD7770;
  if (!qword_1ECBD7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7770);
  }

  return result;
}

unint64_t sub_1DA923D98()
{
  result = qword_1ECBD7778;
  if (!qword_1ECBD7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7778);
  }

  return result;
}

void sub_1DA923E10(void *a1, unint64_t a2, int a3)
{
  v4 = v3;
  v79 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v72 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7788, &qword_1DA965260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v72 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v72 - v21;
  if (*(v4 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_cancelled))
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v23 = sub_1DA9405A4();
    __swift_project_value_buffer(v23, qword_1EE11AD90);
    v24 = a1;

    v25 = sub_1DA940584();
    v26 = sub_1DA940F24();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v84[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_1DA7AE6E8(v4[2], v4[3], v84);
      *(v27 + 12) = 2080;
      v29 = sub_1DA93B7DC(a1, a2 & 0xFFFFFFFF000000FFLL, v79);
      v31 = sub_1DA7AE6E8(v29, v30, v84);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_1DA7A9000, v25, v26, "[id=%s] Programming Error: Observer cancelled, can't receive inference: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v28, -1, -1);
      MEMORY[0x1E12739F0](v27, -1, -1);
    }

    v32 = sub_1DA940D34();
    (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
    v33 = swift_allocObject();
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0u;
    *(v33 + 48) = 11;
    v34 = &unk_1DA965278;
    v35 = v10;
LABEL_19:
    sub_1DA8DB00C(0, 0, v35, v34, v33);

    return;
  }

  v36 = v4 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference;
  if (*(v4 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference) != 1)
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v48 = sub_1DA9405A4();
    __swift_project_value_buffer(v48, qword_1EE11AD90);

    v49 = sub_1DA940584();
    v50 = sub_1DA940F24();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v84[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_1DA7AE6E8(v4[2], v4[3], v84);
      _os_log_impl(&dword_1DA7A9000, v49, v50, "[id=%s] Programming Error: Receive called multiple times for same observer", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1E12739F0](v52, -1, -1);
      MEMORY[0x1E12739F0](v51, -1, -1);
    }

    v54 = v4[4];
    v53 = v4[5];
    v55 = sub_1DA940D34();
    (*(*(v55 - 8) + 56))(v10, 1, 1, v55);
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    *(v56 + 32) = v54;
    *(v56 + 40) = v53;
    *(v56 + 48) = 6;

    v34 = &unk_1DA965270;
    v35 = v10;
    v33 = v56;
    goto LABEL_19;
  }

  *v36 = a1;
  *(v36 + 1) = a2 & 0xFFFFFFFF000000FFLL;
  v78 = a2 & 0xFFFFFFFF000000FFLL;
  *(v36 + 4) = v79;
  v37 = OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_continuation;
  swift_beginAccess();
  sub_1DA822F48(v4 + v37, v17, &qword_1ECBD7788, &qword_1DA965260);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v38 = a1;
    sub_1DA7BA120(v17, &qword_1ECBD7788, &qword_1DA965260);
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v39 = sub_1DA9405A4();
    __swift_project_value_buffer(v39, qword_1EE11AD90);
    v40 = v38;

    v41 = sub_1DA940584();
    v42 = sub_1DA940F34();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v80 = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_1DA7AE6E8(v4[2], v4[3], &v80);
      *(v43 + 12) = 2080;
      v45 = sub_1DA93B7DC(a1, v78, v79);
      v47 = sub_1DA7AE6E8(v45, v46, &v80);

      *(v43 + 14) = v47;
      _os_log_impl(&dword_1DA7A9000, v41, v42, "[id=%s] Observer received inference %s but hasn't started waiting for result yet", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v44, -1, -1);
      MEMORY[0x1E12739F0](v43, -1, -1);
    }
  }

  else
  {
    v76 = HIDWORD(a2);
    v77 = v37;
    (*(v19 + 32))(v22, v17, v18);
    v57 = qword_1EE110E48;
    v58 = a1;
    if (v57 != -1)
    {
      swift_once();
    }

    v59 = sub_1DA9405A4();
    __swift_project_value_buffer(v59, qword_1EE11AD90);
    v60 = v58;

    v61 = sub_1DA940584();
    v62 = sub_1DA940F34();
    v75 = v60;

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v80 = v74;
      *v63 = 136315394;
      *(v63 + 4) = sub_1DA7AE6E8(v4[2], v4[3], &v80);
      *(v63 + 12) = 2080;
      v64 = sub_1DA93B7DC(a1, v78, v79);
      LODWORD(v78) = v62;
      v66 = sub_1DA7AE6E8(v64, v65, &v80);
      v73 = v61;
      v67 = v66;

      *(v63 + 14) = v67;
      v68 = v73;
      _os_log_impl(&dword_1DA7A9000, v73, v78, "[id=%s] Observer received inference %s", v63, 0x16u);
      v69 = v74;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v69, -1, -1);
      MEMORY[0x1E12739F0](v63, -1, -1);
    }

    else
    {
    }

    v70 = v77;
    v80 = a1;
    v81 = a2;
    v82 = v76;
    v83 = v79;
    v71 = v75;
    sub_1DA940C54();
    (*(v19 + 8))(v22, v18);
    (*(v19 + 56))(v15, 1, 1, v18);
    swift_beginAccess();
    sub_1DA7BAD38(v15, v4 + v70, &qword_1ECBD7788, &qword_1DA965260);
    swift_endAccess();
  }
}

uint64_t sub_1DA924794()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7788, &qword_1DA965260);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v38 - v16;
  if (*(v1 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_cancelled))
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA9405A4();
    __swift_project_value_buffer(v18, qword_1EE11AD90);

    v19 = sub_1DA940584();
    v20 = sub_1DA940F24();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DA7AE6E8(v1[2], v1[3], &v39);
      _os_log_impl(&dword_1DA7A9000, v19, v20, "[id=%s] Programming Error: Cancelling already cancelled observer", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12739F0](v22, -1, -1);
      MEMORY[0x1E12739F0](v21, -1, -1);
    }

    v23 = sub_1DA940D34();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
    v24 = swift_allocObject();
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 12;
    v25 = &unk_1DA965268;
    v26 = v5;
LABEL_13:
    sub_1DA8DB00C(0, 0, v26, v25, v24);
  }

  *(v1 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_cancelled) = 1;
  v27 = OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_continuation;
  swift_beginAccess();
  sub_1DA822F48(v1 + v27, v12, &qword_1ECBD7788, &qword_1DA965260);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DA7BA120(v12, &qword_1ECBD7788, &qword_1DA965260);
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v28 = sub_1DA9405A4();
    __swift_project_value_buffer(v28, qword_1EE11AD90);

    v29 = sub_1DA940584();
    v30 = sub_1DA940F14();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1DA7AE6E8(v1[2], v1[3], v38);
      _os_log_impl(&dword_1DA7A9000, v29, v30, "[id=%s] Cancelling observer before waiting for result", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E12739F0](v32, -1, -1);
      MEMORY[0x1E12739F0](v31, -1, -1);
    }

    v34 = v1[4];
    v33 = v1[5];
    v35 = sub_1DA940D34();
    (*(*(v35 - 8) + 56))(v5, 1, 1, v35);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = v34;
    *(v36 + 40) = v33;
    *(v36 + 48) = 8;

    v25 = &unk_1DA95D1A0;
    v26 = v5;
    v24 = v36;
    goto LABEL_13;
  }

  (*(v14 + 32))(v17, v12, v13);
  sub_1DA928E38();
  v38[0] = swift_allocError();
  sub_1DA940C44();
  (*(v14 + 8))(v17, v13);
  (*(v14 + 56))(v10, 1, 1, v13);
  swift_beginAccess();
  sub_1DA7BAD38(v10, v1 + v27, &qword_1ECBD7788, &qword_1DA965260);
  return swift_endAccess();
}

uint64_t sub_1DA924DA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7788, &qword_1DA965260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  if (*(v1 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_cancelled))
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1EE11AD90);

    v9 = sub_1DA940584();
    v10 = sub_1DA940F14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DA7AE6E8(*(v2 + 16), *(v2 + 24), &v29);
      _os_log_impl(&dword_1DA7A9000, v9, v10, "[id=%s] Observer cancelled, unable to wait for inference", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E12739F0](v12, -1, -1);
      MEMORY[0x1E12739F0](v11, -1, -1);
    }

    sub_1DA928E38();
    v29 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
    return sub_1DA940C44();
  }

  else
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v14 = sub_1DA9405A4();
    __swift_project_value_buffer(v14, qword_1EE11AD90);

    v15 = sub_1DA940584();
    v16 = sub_1DA940F34();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1DA7AE6E8(*(v2 + 16), *(v2 + 24), &v29);
      _os_log_impl(&dword_1DA7A9000, v15, v16, "[id=%s] Waiting for inference", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E12739F0](v18, -1, -1);
      MEMORY[0x1E12739F0](v17, -1, -1);
    }

    v19 = v2 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference;
    v20 = *(v2 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference);
    if (v20 == 1)
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
      v22 = *(v21 - 8);
      (*(v22 + 16))(v7, a1, v21);
      (*(v22 + 56))(v7, 0, 1, v21);
    }

    else
    {
      v23 = *(v19 + 16);
      v24 = *(v19 + 8);
      v29 = *(v2 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference);
      v30 = v24;
      v31 = HIDWORD(v24);
      v32 = v23;
      v25 = v20;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
      sub_1DA940C54();
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    }

    v27 = OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_continuation;
    swift_beginAccess();
    sub_1DA7BAD38(v7, v2 + v27, &qword_1ECBD7788, &qword_1DA965260);
    return swift_endAccess();
  }
}

uint64_t sub_1DA925200()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_createdDate;
  v4 = sub_1DA93FAF4();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference + 8];
  v6 = *&v0[OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference + 16];
  sub_1DA8A65B4(*&v0[OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference]);
  sub_1DA7BA120(&v0[OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_continuation], &qword_1ECBD7788, &qword_1DA965260);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_1DA9252E4()
{
  if (!os_variant_has_internal_content())
  {
    return 600.0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DA940A04();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_10:
    sub_1DA7BA120(&v8, &unk_1ECBD7730, &qword_1DA95C370);
    return 600.0;
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
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return *&v6;
  }

  return 600.0;
}

uint64_t sub_1DA925448(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v137 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v152 = &v136 - v10;
  v11 = sub_1DA93FAF4();
  v12 = *(v11 - 8);
  isa = v12[8].isa;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(v2 + 152);
  v17 = *(v16 + 64);
  v141 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v140 = (v18 + 63) >> 6;
  v21 = v12 + 1;
  v139 = v16;

  v22 = 0;
  *&v23 = 136315394;
  v146 = v23;
  v150 = v2;
  v138 = a2;
  v148 = v11;
  v149 = v15;
  v147 = v12 + 1;
  while (v20)
  {
LABEL_10:
    v144 = v20;
    v145 = v22;
    v25 = __clz(__rbit64(v20)) | (v22 << 6);
    v26 = *(v139 + 56);
    v27 = *(v139 + 48) + 16 * v25;
    v28 = *(v27 + 8);
    v142 = *v27;
    v29 = *(v26 + 8 * v25);
    v157[0] = MEMORY[0x1E69E7CC0];
    if (v29 >> 62)
    {
      v63 = v28;
      v30 = sub_1DA941264();
      v28 = v63;
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v143 = v28;

    if (v30)
    {
      a2 = 0;
      v154 = v29 & 0xFFFFFFFFFFFFFF8;
      v155 = v29 & 0xC000000000000001;
      v151 = v29;
      v153 = v30;
      do
      {
        if (v155)
        {
          v32 = MEMORY[0x1E1272460](a2, v29);
          v33 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_103;
          }
        }

        else
        {
          if (a2 >= *(v154 + 16))
          {
            goto LABEL_104;
          }

          v32 = *(v29 + 8 * a2 + 32);

          v33 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }
        }

        sub_1DA93F9D4();
        v35 = v34;
        sub_1DA93FAC4();
        sub_1DA93F9D4();
        v37 = v36;
        (v21->isa)(v15, v11);
        v38 = v37 - *(v3 + 160);
        v156 = v33;
        if (v38 < v35)
        {
          sub_1DA9413E4();
          v31 = *(v157[0] + 16);
          sub_1DA941414();
          sub_1DA941424();
          sub_1DA9413F4();
        }

        else
        {
          if (qword_1EE110E48 != -1)
          {
            swift_once();
          }

          v39 = sub_1DA9405A4();
          __swift_project_value_buffer(v39, qword_1EE11AD90);

          v40 = sub_1DA940584();
          v41 = sub_1DA940F14();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = v9;
            v44 = v3;
            v45 = swift_slowAlloc();
            v158[0] = v45;
            *v42 = v146;
            v47 = v32[2];
            v46 = v32[3];

            v48 = sub_1DA7AE6E8(v47, v46, v158);

            *(v42 + 4) = v48;
            *(v42 + 12) = 2048;
            v49 = *(v44 + 160);
            v9 = v43;
            *(v42 + 14) = v49;
            _os_log_impl(&dword_1DA7A9000, v40, v41, "[id=%s] Found observer that's older than %f seconds. Likely abandoned.", v42, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v45);
            MEMORY[0x1E12739F0](v45, -1, -1);
            MEMORY[0x1E12739F0](v42, -1, -1);
          }

          v50 = v32[4];
          v51 = v32[5];
          v52 = sub_1DA940D34();
          v53 = *(v52 - 8);
          v54 = v152;
          (*(v53 + 56))(v152, 1, 1, v52);
          v55 = swift_allocObject();
          *(v55 + 16) = 0;
          *(v55 + 24) = 0;
          *(v55 + 32) = v50;
          *(v55 + 40) = v51;
          *(v55 + 48) = 7;
          sub_1DA822F48(v54, v9, &qword_1ECBD4FA0, &unk_1DA958730);
          LODWORD(v50) = (*(v53 + 48))(v9, 1, v52);

          if (v50 == 1)
          {
            sub_1DA7BA120(v9, &qword_1ECBD4FA0, &unk_1DA958730);
          }

          else
          {
            sub_1DA940D24();
            (*(v53 + 8))(v9, v52);
          }

          v15 = v149;
          v56 = *(v55 + 16);
          v57 = *(v55 + 24);
          swift_unknownObjectRetain();

          if (v56)
          {
            swift_getObjectType();
            v58 = sub_1DA940C34();
            v60 = v59;
            swift_unknownObjectRelease();
          }

          else
          {
            v58 = 0;
            v60 = 0;
          }

          sub_1DA7BA120(v152, &qword_1ECBD4FA0, &unk_1DA958730);
          v61 = swift_allocObject();
          *(v61 + 16) = &unk_1DA9652C8;
          *(v61 + 24) = v55;
          if (v60 | v58)
          {
            v158[1] = 0;
            v158[2] = 0;
            v158[3] = v58;
            v158[4] = v60;
          }

          v3 = v150;
          v29 = v151;
          v11 = v148;
          v21 = v147;
          swift_task_create();

          sub_1DA924794();
        }

        ++a2;
      }

      while (v156 != v153);
      v62 = v157[0];
      a2 = v138;
    }

    else
    {
      v62 = MEMORY[0x1E69E7CC0];
    }

    if ((v62 & 0x8000000000000000) == 0 && (v62 & 0x4000000000000000) == 0)
    {
      if (*(v62 + 16))
      {
        goto LABEL_4;
      }

LABEL_41:

      v62 = 0;
      goto LABEL_4;
    }

    if (!sub_1DA941264())
    {
      goto LABEL_41;
    }

LABEL_4:
    v20 = (v144 - 1) & v144;
    swift_beginAccess();
    sub_1DA8F0D78(v62, v142, v143);
    swift_endAccess();
    v22 = v145;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_105;
    }

    if (v24 >= v140)
    {
      break;
    }

    v20 = *(v141 + 8 * v24);
    ++v22;
    if (v20)
    {
      v22 = v24;
      goto LABEL_10;
    }
  }

  if (qword_1EE110E48 != -1)
  {
    goto LABEL_109;
  }

LABEL_46:
  v64 = sub_1DA9405A4();
  __swift_project_value_buffer(v64, qword_1EE11AD90);

  v65 = sub_1DA940584();
  v66 = sub_1DA940F34();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v157[0] = v68;
    *v67 = 136315138;
    *(v67 + 4) = sub_1DA7AE6E8(v137, v138, v157);
    _os_log_impl(&dword_1DA7A9000, v65, v66, "[id=%s] Observing", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v69 = v68;
    a2 = v138;
    MEMORY[0x1E12739F0](v69, -1, -1);
    MEMORY[0x1E12739F0](v67, -1, -1);
  }

  v70 = type metadata accessor for NotificationInferenceClient.Observer();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  *&v146 = v70;
  v73 = swift_allocObject();
  v74 = &v73[OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference];
  *v74 = xmmword_1DA95D870;
  *(v74 + 4) = 0;
  v75 = OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_continuation;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
  (*(*(v76 - 8) + 56))(&v73[v75], 1, 1, v76);
  v77 = v137;
  *(v73 + 2) = v137;
  *(v73 + 3) = a2;

  *(v73 + 4) = sub_1DA9401B4();
  *(v73 + 5) = v78;
  sub_1DA93FAC4();
  v149 = v73;
  v73[OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_cancelled] = 0;
  swift_beginAccess();
  v79 = *(v3 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v158[0] = *(v3 + 152);
  v81 = v158[0];
  *(v3 + 152) = 0x8000000000000000;
  isUniquelyReferenced_nonNull_bridgeObject = sub_1DA85A4B4(v77, a2);
  v84 = v81[2];
  v85 = (v83 & 1) == 0;
  v86 = __OFADD__(v84, v85);
  v87 = v84 + v85;
  if (v86)
  {
    __break(1u);
LABEL_111:
    sub_1DA940C04();
    goto LABEL_56;
  }

  LOBYTE(v88) = v83;
  if (v81[3] >= v87)
  {
LABEL_52:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_114:
      v135 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_1DA860D54();
      isUniquelyReferenced_nonNull_bridgeObject = v135;
      v81 = v158[0];
    }
  }

  else
  {
    sub_1DA85C9D4(v87, isUniquelyReferenced_nonNull_native);
    v81 = v158[0];
    isUniquelyReferenced_nonNull_bridgeObject = sub_1DA85A4B4(v137, a2);
    if ((v88 & 1) != (v89 & 1))
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_1DA9416E4();
      __break(1u);
      goto LABEL_52;
    }
  }

  isUniquelyReferenced_nonNull_native = v149;
  *(v3 + 152) = v81;
  if ((v88 & 1) == 0)
  {
    v90 = isUniquelyReferenced_nonNull_bridgeObject;
    sub_1DA90D0B0(isUniquelyReferenced_nonNull_bridgeObject, v137, a2, MEMORY[0x1E69E7CC0], v81);

    isUniquelyReferenced_nonNull_bridgeObject = v90;
  }

  v91 = (v81[7] + 8 * isUniquelyReferenced_nonNull_bridgeObject);

  MEMORY[0x1E1271CA0](v92);
  if (*((*v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_111;
  }

LABEL_56:
  sub_1DA940C14();
  swift_endAccess();
  swift_retain_n();

  v93 = sub_1DA940584();
  v94 = sub_1DA940F34();

  v147 = v93;
  if (os_log_type_enabled(v93, v94))
  {
    LODWORD(v144) = v94;
    v95 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v158[0] = v142;
    *v95 = 136315650;
    *(v95 + 4) = sub_1DA7AE6E8(v137, a2, v158);
    v143 = v95;
    *(v95 + 12) = 2048;
    v96 = *(v3 + 152);
    v99 = *(v96 + 64);
    v98 = v96 + 64;
    v97 = v99;
    v100 = 1 << *(*(v3 + 152) + 32);
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    else
    {
      v101 = -1;
    }

    v102 = v101 & v97;
    v88 = (v100 + 63) >> 6;
    v153 = *(v3 + 152);
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = 0;
    v103 = MEMORY[0x1E69E7CC0];
    v151 = v88;
    v152 = v98;
    while (1)
    {
      if (!v102)
      {
        while (1)
        {
          v104 = isUniquelyReferenced_nonNull_native + 1;
          if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
          {
            break;
          }

          if (v104 >= v88)
          {

            if (v103 >> 62)
            {
              v129 = sub_1DA941264();
            }

            else
            {
              v129 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            isUniquelyReferenced_nonNull_native = v149;
            v130 = v144;

            v131 = v143;
            *(v143 + 14) = v129;

            *(v131 + 22) = 2048;
            *(v131 + 24) = *(*(v3 + 152) + 16);

            v132 = v147;
            _os_log_impl(&dword_1DA7A9000, v147, v130, "[id=%s] %ld Observers waiting on inferences for %ld spotlightIdentifiers", v131, 0x20u);
            v133 = v142;
            __swift_destroy_boxed_opaque_existential_1(v142);
            MEMORY[0x1E12739F0](v133, -1, -1);
            MEMORY[0x1E12739F0](v131, -1, -1);

            return isUniquelyReferenced_nonNull_native;
          }

          v102 = *(v98 + 8 * v104);
          ++isUniquelyReferenced_nonNull_native;
          if (v102)
          {
            isUniquelyReferenced_nonNull_native = v104;
            goto LABEL_67;
          }
        }

LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        swift_once();
        goto LABEL_46;
      }

LABEL_67:
      v105 = v102;
      v106 = *(*(v153 + 56) + ((isUniquelyReferenced_nonNull_native << 9) | (8 * __clz(__rbit64(v102)))));
      a2 = v106 >> 62;
      v107 = v106;
      v108 = v106 >> 62 ? sub_1DA941264() : *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v109 = v103 >> 62;
      v156 = v108;
      if (v103 >> 62)
      {
        v128 = sub_1DA941264();
        v111 = v128 + v156;
        if (__OFADD__(v128, v156))
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }
      }

      else
      {
        v110 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v111 = v110 + v108;
        if (__OFADD__(v110, v108))
        {
          goto LABEL_97;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        break;
      }

      if (v109)
      {
        goto LABEL_78;
      }

      v112 = v107;
      v113 = v103 & 0xFFFFFFFFFFFFFF8;
      v114 = v103;
      if (v111 > *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_77;
      }

LABEL_80:
      v154 = v114;
      v155 = v103;
      v116 = *(v113 + 16);
      v117 = *(v113 + 24);
      if (a2)
      {
        v118 = v113;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1DA941264();
        v113 = v118;
        v112 = v107;
        v88 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v88 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v119 = v156;
      v102 = (v105 - 1) & v105;
      if (v88)
      {
        if (((v117 >> 1) - v116) < v156)
        {
          goto LABEL_108;
        }

        v120 = v113 + 8 * v116 + 32;
        v148 = v113;
        if (a2)
        {
          if (v88 < 1)
          {
            goto LABEL_113;
          }

          v145 = (v105 - 1) & v105;
          v121 = v112;
          sub_1DA9291E8();
          a2 = 0;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7790, &qword_1DA9652D8);
            v122 = sub_1DA84CA34(v157, a2, v121);
            v124 = *v123;

            (v122)(v157, 0);
            *(v120 + 8 * a2++) = v124;
          }

          while (v88 != a2);
          v119 = v156;
          v3 = v150;
          v102 = v145;
        }

        else
        {
          swift_arrayInitWithCopy();
        }

        v125 = v154;
        v103 = v154;
        v88 = v151;
        v98 = v152;
        if (v119 >= 1)
        {
          v126 = *(v148 + 16);
          v86 = __OFADD__(v126, v119);
          v127 = v126 + v119;
          if (v86)
          {
            __break(1u);
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          *(v148 + 16) = v127;
          v103 = v125;
        }
      }

      else
      {

        v103 = v154;
        v88 = v151;
        v98 = v152;
        if (v119 > 0)
        {
          goto LABEL_107;
        }
      }
    }

    if (v109)
    {
LABEL_78:
      sub_1DA941264();
    }

    else
    {
      v113 = v103 & 0xFFFFFFFFFFFFFF8;
LABEL_77:
      v115 = *(v113 + 16);
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1DA941394();
    v114 = isUniquelyReferenced_nonNull_bridgeObject;
    v113 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v112 = v107;
    goto LABEL_80;
  }

LABEL_98:

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_1DA92647C(uint64_t a1, uint64_t a2)
{
  v3[8] = a1;
  v3[9] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DF8, &qword_1DA965280) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for IntelligenceServiceAnalytics.Interval(0);
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = sub_1DA93FAF4();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = sub_1DA9401F4();
  v3[17] = v11;
  v12 = *(v11 - 8);
  v3[18] = v12;
  v13 = *(v12 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA92662C, v2, 0);
}

uint64_t sub_1DA92662C()
{
  v20 = v0;
  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[8];
  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE11AD90);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1DA940584();
  v7 = sub_1DA940F34();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[17];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    sub_1DA7BB52C();
    v14 = sub_1DA941614();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1DA7AE6E8(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "Indexing: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12739F0](v13, -1, -1);
    MEMORY[0x1E12739F0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  return MEMORY[0x1EEE6DFA0](sub_1DA926838, 0, 0);
}

uint64_t sub_1DA926838()
{
  v1 = v0[16];
  sub_1DA93FAE4();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1DA9268E8;
  v3 = v0[8];

  return sub_1DA88FA48(v3);
}

uint64_t sub_1DA9268E8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DA926B60;
  }

  else
  {
    v3 = sub_1DA9269FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA9269FC()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  (*(v3 + 16))(v4, v2, v5);
  v10 = v4 + *(v6 + 20);
  sub_1DA93FAE4();
  (*(v3 + 8))(v2, v5);
  sub_1DA928E90(v4, v8);
  (*(v7 + 56))(v8, 0, 1, v6);
  v11 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexingInterval;
  swift_beginAccess();
  sub_1DA7BAD38(v8, v9 + v11, &qword_1ECBD4DF8, &qword_1DA965280);
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DA926B60()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  (*(v3 + 16))(v4, v2, v5);
  v10 = v4 + *(v6 + 20);
  sub_1DA93FAE4();
  (*(v3 + 8))(v2, v5);
  sub_1DA928E90(v4, v8);
  (*(v7 + 56))(v8, 0, 1, v6);
  v11 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexingInterval;
  swift_beginAccess();
  sub_1DA7BAD38(v8, v9 + v11, &qword_1ECBD4DF8, &qword_1DA965280);
  swift_endAccess();

  v12 = v0[1];
  v13 = v0[21];

  return v12();
}

void sub_1DA926CC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v173 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v175 = &v163 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v166 = &v163 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v168 = &v163 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v172 = &v163 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v174 = &v163 - v14;

  v16 = sub_1DA928F54(v15);

  v18 = v16 + 64;
  v17 = *(v16 + 64);
  v178 = v16;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  swift_beginAccess();
  v22 = 0;
  v23 = (v19 + 63) >> 6;
  *&v24 = 136315138;
  v171 = v24;
  *&v24 = 136315394;
  v169 = v24;
  *&v24 = 136315650;
  v170 = v24;
  v179 = v1;
  v177 = v16 + 64;
  v176 = v23;
  while (v21)
  {
LABEL_12:
    v183 = v22;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    v27 = (*(v178 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    v30 = *(*(v178 + 56) + 8 * v26);

    v181 = v29;
    v180 = sub_1DA9401B4();
    v184 = v31;
    v32 = v30;
    if (v30 >> 62)
    {
      v33 = sub_1DA941264();
      v32 = v30;
    }

    else
    {
      v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v185 = v28;
    if (v33)
    {
      v34 = v32;
      v182 = v21;
      v201[0] = MEMORY[0x1E69E7CC0];
      sub_1DA82AAF0(0, v33 & ~(v33 >> 63), 0);
      if (v33 < 0)
      {
        goto LABEL_108;
      }

      v35 = 0;
      v36 = v201[0];
      v37 = v34;
      v186 = v34 & 0xC000000000000001;
      v187 = v34;
      do
      {
        if (v186)
        {
          v38 = MEMORY[0x1E1272460](v35, v37);
        }

        else
        {
          v38 = *(v37 + 8 * v35 + 32);
        }

        v39 = v38;
        v40 = [v38 attributeSet];
        v41 = [v40 summarizationContentTopLine];

        v42 = [v39 attributeSet];
        v43 = [v42 isUrgent];

        if (v43)
        {
          v44 = [v43 integerValue];

          v45 = v44 == 1;
        }

        else
        {
          v45 = 2;
        }

        v46 = [v39 attributeSet];
        v47 = [v46 summarizationStatus];

        v48 = [v39 attributeSet];
        v49 = [v48 urgencyStatus];

        v201[0] = v36;
        v51 = *(v36 + 16);
        v50 = *(v36 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1DA82AAF0((v50 > 1), v51 + 1, 1);
          v36 = v201[0];
        }

        *(v36 + 16) = v51 + 1;
        v52 = v36 + 24 * v51;
        *(v52 + 32) = v41;
        ++v35;
        *(v52 + 40) = v45;
        *(v52 + 44) = v47;
        *(v52 + 48) = v49;
        v37 = v187;
      }

      while (v33 != v35);

      v1 = v179;
      v21 = v182;
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    v21 &= v21 - 1;
    v53 = *(v36 + 16);
    if (v53)
    {
      v54 = *(v36 + 32);
      v186 = *(v36 + 40);
      v182 = *(v36 + 44);
      LODWORD(v187) = *(v36 + 48);
      if (v53 == 1)
      {
        v55 = v54;

        v18 = v177;
      }

      else
      {
        v65 = qword_1EE110E48;
        v66 = v54;
        if (v65 != -1)
        {
          swift_once();
        }

        v67 = sub_1DA9405A4();
        __swift_project_value_buffer(v67, qword_1EE11AD90);
        v68 = v185;

        v69 = sub_1DA940584();
        v70 = sub_1DA940F14();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v201[0] = v72;
          *v71 = v170;
          *(v71 + 4) = sub_1DA7AE6E8(v181, v68, v201);
          *(v71 + 12) = 2048;
          *(v71 + 14) = *(v36 + 16);

          *(v71 + 22) = 2080;
          v73 = MEMORY[0x1E1271CD0](v36, &type metadata for NotificationInference);
          v75 = v74;

          v76 = sub_1DA7AE6E8(v73, v75, v201);

          *(v71 + 24) = v76;
          _os_log_impl(&dword_1DA7A9000, v69, v70, "[id=%s] Error: Received %ld inferences for the same spotlightIdentifier. Keeping first inference, dropping rest. %s", v71, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v72, -1, -1);
          MEMORY[0x1E12739F0](v71, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v87 = sub_1DA940D34();
        v88 = *(v87 - 8);
        v89 = v174;
        (*(v88 + 56))(v174, 1, 1, v87);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        v91 = v184;
        *(v90 + 32) = v180;
        *(v90 + 40) = v91;
        *(v90 + 48) = 3;
        v92 = v172;
        sub_1DA822F48(v89, v172, &qword_1ECBD4FA0, &unk_1DA958730);
        LODWORD(v89) = (*(v88 + 48))(v92, 1, v87);

        v18 = v177;
        if (v89 == 1)
        {
          sub_1DA7BA120(v92, &qword_1ECBD4FA0, &unk_1DA958730);
        }

        else
        {
          sub_1DA940D24();
          (*(v88 + 8))(v92, v87);
        }

        v94 = *(v90 + 16);
        v93 = *(v90 + 24);
        swift_unknownObjectRetain();

        if (v94)
        {
          swift_getObjectType();
          v95 = sub_1DA940C34();
          v97 = v96;
          swift_unknownObjectRelease();
        }

        else
        {
          v95 = 0;
          v97 = 0;
        }

        sub_1DA7BA120(v174, &qword_1ECBD4FA0, &unk_1DA958730);
        v99 = swift_allocObject();
        *(v99 + 16) = &unk_1DA9652A0;
        *(v99 + 24) = v90;
        if (v97 | v95)
        {
          v192 = 0;
          v193 = 0;
          v194 = v95;
          v195 = v97;
        }

        swift_task_create();

        v1 = v179;
      }

      v100 = *(v1 + 152);
      if (!*(v100 + 16))
      {
        goto LABEL_64;
      }

      v101 = *(v1 + 152);

      v102 = sub_1DA85A4B4(v181, v185);
      if ((v103 & 1) == 0)
      {

        goto LABEL_64;
      }

      v104 = *(*(v100 + 56) + 8 * v102);

      v105 = v104 >> 62;
      if (v104 >> 62)
      {
        v106 = sub_1DA941264();
        if (!v106)
        {
LABEL_62:

          v18 = v177;
LABEL_64:

          if (qword_1EE110E48 != -1)
          {
            swift_once();
          }

          v107 = sub_1DA9405A4();
          __swift_project_value_buffer(v107, qword_1EE11AD90);
          v108 = v54;
          v109 = v185;

          v110 = sub_1DA940584();
          v111 = sub_1DA940F14();

          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v201[0] = v113;
            *v112 = v169;
            v114 = sub_1DA7AE6E8(v181, v109, v201);

            *(v112 + 4) = v114;
            *(v112 + 12) = 2080;
            v115 = v165 & 0xFFFFFF00 | v186 | (v182 << 32);
            v116 = v108;
            v165 = v115;
            v117 = sub_1DA93B7DC(v54, v115, v187);
            v119 = v118;

            v120 = sub_1DA7AE6E8(v117, v119, v201);

            *(v112 + 14) = v120;
            _os_log_impl(&dword_1DA7A9000, v110, v111, "[id=%s] Error: No observers, dropping inference %s", v112, 0x16u);
            swift_arrayDestroy();
            v121 = v113;
            v1 = v179;
            MEMORY[0x1E12739F0](v121, -1, -1);
            MEMORY[0x1E12739F0](v112, -1, -1);
          }

          else
          {
          }

          goto LABEL_6;
        }
      }

      else
      {
        v106 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v106)
        {
          goto LABEL_62;
        }
      }

      if (v106 < 2)
      {
      }

      else
      {
        if (qword_1EE110E48 != -1)
        {
          swift_once();
        }

        v122 = sub_1DA9405A4();
        __swift_project_value_buffer(v122, qword_1EE11AD90);
        v123 = v54;

        v124 = v185;

        v125 = sub_1DA940584();
        v126 = sub_1DA940F14();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v201[0] = v128;
          *v127 = v170;
          *(v127 + 4) = sub_1DA7AE6E8(v181, v124, v201);
          *(v127 + 12) = 2048;
          v163 = v128;
          if (v105)
          {
            v129 = sub_1DA941264();
          }

          else
          {
            v129 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v127 + 14) = v129;

          *(v127 + 22) = 2080;
          v130 = v164 & 0xFFFFFF00 | v186 | (v182 << 32);
          v131 = v123;
          v164 = v130;
          v132 = sub_1DA93B7DC(v54, v130, v187);
          v134 = v133;

          v135 = sub_1DA7AE6E8(v132, v134, v201);

          *(v127 + 24) = v135;
          _os_log_impl(&dword_1DA7A9000, v125, v126, "[id=%s] Error: %ld observers. Only 1 observer expected. Copying inference to all observers %s", v127, 0x20u);
          v136 = v163;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v136, -1, -1);
          MEMORY[0x1E12739F0](v127, -1, -1);
        }

        else
        {
        }

        v137 = sub_1DA940D34();
        v138 = *(v137 - 8);
        v139 = v168;
        (*(v138 + 56))(v168, 1, 1, v137);
        v140 = swift_allocObject();
        *(v140 + 16) = 0;
        *(v140 + 24) = 0;
        v141 = v184;
        *(v140 + 32) = v180;
        *(v140 + 40) = v141;
        *(v140 + 48) = 5;
        v142 = v139;
        v143 = v166;
        sub_1DA822F48(v142, v166, &qword_1ECBD4FA0, &unk_1DA958730);
        v144 = (*(v138 + 48))(v143, 1, v137);

        if (v144 == 1)
        {
          sub_1DA7BA120(v143, &qword_1ECBD4FA0, &unk_1DA958730);
        }

        else
        {
          sub_1DA940D24();
          (*(v138 + 8))(v143, v137);
        }

        v146 = *(v140 + 16);
        v145 = *(v140 + 24);
        swift_unknownObjectRetain();

        if (v146)
        {
          swift_getObjectType();
          v147 = sub_1DA940C34();
          v149 = v148;
          swift_unknownObjectRelease();
        }

        else
        {
          v147 = 0;
          v149 = 0;
        }

        sub_1DA7BA120(v168, &qword_1ECBD4FA0, &unk_1DA958730);
        v150 = swift_allocObject();
        *(v150 + 16) = &unk_1DA965288;
        *(v150 + 24) = v140;
        if (v149 | v147)
        {
          v196 = 0;
          v197 = 0;
          v198 = v147;
          v199 = v149;
        }

        swift_task_create();
      }

      if (v105)
      {
        v151 = sub_1DA941264();
      }

      else
      {
        v151 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v151)
      {
        if (v151 < 1)
        {
          goto LABEL_109;
        }

        v152 = 0;
        v153 = v186 | (v182 << 32);
        do
        {
          if ((v104 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E1272460](v152, v104);
          }

          else
          {
            v154 = *(v104 + 8 * v152 + 32);
          }

          ++v152;
          v167 = v167 & 0xFFFFFF00 | v153;
          sub_1DA923E10(v54, v167, v187);
        }

        while (v151 != v152);
      }

      v1 = v179;
      swift_beginAccess();
      v155 = *(v1 + 152);
      v156 = sub_1DA85A4B4(v181, v185);
      LOBYTE(v155) = v157;

      v18 = v177;
      if (v155)
      {
        v158 = *(v1 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v160 = *(v1 + 152);
        v200 = v160;
        *(v1 + 152) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DA860D54();
          v160 = v200;
        }

        v161 = *(*(v160 + 48) + 16 * v156 + 8);

        v162 = *(*(v160 + 56) + 8 * v156);

        sub_1DA8F71FC(v156, v160);
        *(v1 + 152) = v160;
      }

      swift_endAccess();
    }

    else
    {
      v182 = v21;

      if (qword_1EE110E48 != -1)
      {
        swift_once();
      }

      v56 = sub_1DA9405A4();
      __swift_project_value_buffer(v56, qword_1EE11AD90);
      v57 = v185;

      v58 = sub_1DA940584();
      v59 = sub_1DA940F14();

      v60 = os_log_type_enabled(v58, v59);
      v61 = v173;
      v18 = v177;
      if (v60)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v201[0] = v63;
        *v62 = v171;
        v64 = sub_1DA7AE6E8(v181, v57, v201);

        *(v62 + 4) = v64;
        _os_log_impl(&dword_1DA7A9000, v58, v59, "[id=%s] Programming Error: Missing inferences", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1E12739F0](v63, -1, -1);
        MEMORY[0x1E12739F0](v62, -1, -1);
      }

      else
      {
      }

      v77 = sub_1DA940D34();
      v78 = *(v77 - 8);
      v79 = v175;
      (*(v78 + 56))(v175, 1, 1, v77);
      v80 = swift_allocObject();
      *(v80 + 16) = 0;
      *(v80 + 24) = 0;
      v81 = v184;
      *(v80 + 32) = v180;
      *(v80 + 40) = v81;
      *(v80 + 48) = 2;
      sub_1DA822F48(v79, v61, &qword_1ECBD4FA0, &unk_1DA958730);
      LODWORD(v79) = (*(v78 + 48))(v61, 1, v77);

      v1 = v179;
      if (v79 == 1)
      {
        sub_1DA7BA120(v61, &qword_1ECBD4FA0, &unk_1DA958730);
      }

      else
      {
        sub_1DA940D24();
        (*(v78 + 8))(v61, v77);
      }

      v83 = *(v80 + 16);
      v82 = *(v80 + 24);
      swift_unknownObjectRetain();

      if (v83)
      {
        swift_getObjectType();
        v84 = sub_1DA940C34();
        v86 = v85;
        swift_unknownObjectRelease();
      }

      else
      {
        v84 = 0;
        v86 = 0;
      }

      sub_1DA7BA120(v175, &qword_1ECBD4FA0, &unk_1DA958730);
      v98 = swift_allocObject();
      *(v98 + 16) = &unk_1DA9652B0;
      *(v98 + 24) = v80;
      if (v86 | v84)
      {
        v188 = 0;
        v189 = 0;
        v190 = v84;
        v191 = v86;
      }

      v21 = v182;
      swift_task_create();
    }

LABEL_6:
    v23 = v176;
    v22 = v183;
  }

  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      return;
    }

    v21 = *(v18 + 8 * v25);
    ++v22;
    if (v21)
    {
      v22 = v25;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
}

uint64_t sub_1DA92819C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DF8, &qword_1DA965280) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for IntelligenceServiceAnalytics.Interval(0);
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  v8 = sub_1DA93FAF4();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA9282F4, v2, 0);
}

uint64_t sub_1DA9282F4()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = sub_1DA9400E4();
  v0[21] = sub_1DA925448(v3, v4);

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1DA9283B8;
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];

  return sub_1DA92647C(v8, v6);
}

uint64_t sub_1DA9283B8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_1DA928AA8;
  }

  else
  {
    v5 = sub_1DA9284D4;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DA9284D4()
{
  v1 = v0[20];
  sub_1DA93FAE4();
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1DA9285B4;
  v4 = v0[21];

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000019, 0x80000001DA956E20, sub_1DA928E8C, v4, &type metadata for NotificationInference);
}

uint64_t sub_1DA9285B4()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1DA9288D4;
  }

  else
  {
    v3 = sub_1DA9286C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA9286C8()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  (*(v2 + 16))(v4, v1, v3);
  v10 = v4 + *(v5 + 20);
  sub_1DA93FAE4();
  (*(v2 + 8))(v1, v3);
  sub_1DA928E90(v4, v8);
  (*(v6 + 56))(v8, 0, 1, v5);
  v11 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_waitingForResultInterval;
  swift_beginAccess();
  sub_1DA7BAD38(v8, v9 + v11, &qword_1ECBD4DF8, &qword_1DA965280);
  swift_endAccess();
  *(v0 + 208) = *(v0 + 64);
  *(v0 + 220) = *(v0 + 72);
  v12 = *(v0 + 80);
  *(v0 + 84) = *(v0 + 76);
  *(v0 + 216) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1DA92882C, v7, 0);
}

uint64_t sub_1DA92882C()
{
  v1 = *(v0 + 220);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 84);

  v7 = *(v0 + 8);
  v8 = *(v0 + 216);
  v9 = *(v0 + 208);

  return v7(v9, v1 | (v6 << 32), v8);
}

uint64_t sub_1DA9288D4()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];
  (*(v2 + 16))(v4, v1, v3);
  v10 = v4 + *(v5 + 20);
  sub_1DA93FAE4();
  (*(v2 + 8))(v1, v3);
  sub_1DA928E90(v4, v8);
  (*(v6 + 56))(v8, 0, 1, v5);
  v11 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_waitingForResultInterval;
  swift_beginAccess();
  sub_1DA7BAD38(v8, v9 + v11, &qword_1ECBD4DF8, &qword_1DA965280);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DA928A1C, v7, 0);
}

uint64_t sub_1DA928A1C()
{
  v1 = v0[21];

  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DA928AA8()
{
  v1 = v0[21];

  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DA928B34()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v1 = *(v0 + 152);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for NotificationInferenceClient.Observer()
{
  result = qword_1EE111D80;
  if (!qword_1EE111D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA928BEC()
{
  v0 = sub_1DA93FAF4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DA928CDC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DA928CDC()
{
  if (!qword_1EE110C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7780, qword_1DA965230);
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE110C80);
    }
  }
}

uint64_t sub_1DA928D40(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA7B7564;

  return v7(a1);
}

unint64_t sub_1DA928E38()
{
  result = qword_1EE111DB0;
  if (!qword_1EE111DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111DB0);
  }

  return result;
}

uint64_t sub_1DA928E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceServiceAnalytics.Interval(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DA928F1C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1DA928F54(unint64_t a1)
{
  v30 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_1DA941264();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E1272460](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v29 = v8;
        v9 = v7;
        v10 = [v7 uniqueIdentifier];
        v11 = sub_1DA940A14();
        v13 = v12;

        v15 = sub_1DA85A4B4(v11, v13);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_22;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          sub_1DA85C9E8(v18, 1);
          v4 = v30;
          v20 = sub_1DA85A4B4(v11, v13);
          if ((v19 & 1) != (v21 & 1))
          {
            result = sub_1DA9416E4();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x1E1271CA0](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1DA940C04();
          }

          sub_1DA940C14();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1DA9593A0;
          *(v22 + 32) = v9;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v11;
          v23[1] = v13;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_23;
          }

          v4[2] = v26;
        }

        ++v3;
        if (v29 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1DA9291E8()
{
  result = qword_1ECBD7798;
  if (!qword_1ECBD7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7790, &qword_1DA9652D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7798);
  }

  return result;
}

unint64_t sub_1DA929260()
{
  result = qword_1ECBD77A0;
  if (!qword_1ECBD77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD77A0);
  }

  return result;
}

uint64_t sub_1DA9292B4()
{
  v1 = sub_1DA9417C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  v23 = &type metadata for ToolService.Request;
  v13 = swift_allocObject();
  v21 = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v7;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  *(v13 + 48) = v10;
  *(v13 + 56) = v11;
  *(v13 + 64) = v12;
  sub_1DA92A3DC(v6, v7, v8, v9, v10, v11, v12);
  sub_1DA9417A4();
  sub_1DA9417B4();
  (*(v2 + 8))(v5, v1);
  v14 = sub_1DA941484();

  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7AD11C(&qword_1EE114DF0, &qword_1ECBD6790, &qword_1DA9594C0);
  v15 = sub_1DA9409C4();
  v17 = v16;

  v21 = 60;
  v22 = 0xE100000000000000;
  v18 = sub_1DA941884();
  MEMORY[0x1E1271BD0](v18);

  MEMORY[0x1E1271BD0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E1271BD0](v15, v17);

  MEMORY[0x1E1271BD0](4087050, 0xE300000000000000);
  return v21;
}

uint64_t sub_1DA929564(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1DA9417C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = &type metadata for SequentialAsyncEntrance.WorkItem;

  sub_1DA9417A4();
  sub_1DA9417B4();
  (*(v7 + 8))(v10, v6);
  v11 = sub_1DA941484();

  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7AD11C(&qword_1EE114DF0, &qword_1ECBD6790, &qword_1DA9594C0);
  v12 = sub_1DA9409C4();
  v14 = v13;

  v18 = 60;
  v19 = 0xE100000000000000;
  v15 = sub_1DA941884();
  MEMORY[0x1E1271BD0](v15);

  MEMORY[0x1E1271BD0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E1271BD0](v12, v14);

  MEMORY[0x1E1271BD0](4087050, 0xE300000000000000);
  return v18;
}

uint64_t sub_1DA9297D0()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore23SequentialAsyncEntrance_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77C0, &qword_1DA965578);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21UserNotificationsCore23SequentialAsyncEntrance_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77C8, &unk_1DA965580);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SequentialAsyncEntrance()
{
  result = qword_1EE115440;
  if (!qword_1EE115440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA929928()
{
  sub_1DA929A40(319, &qword_1EE114DE0, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DA929A40(319, &qword_1EE114DE8, MEMORY[0x1E69E8660]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DA929A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SequentialAsyncEntrance.WorkItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DA929A94()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DA929AF0()
{
  v1 = sub_1DA9407F4();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA940854();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940CF4();
  v10 = sub_1DA92A218(&qword_1ECBD77B8, type metadata accessor for SynchronousEntryExecutor);
  v11 = *(v0 + 16);
  v12 = swift_allocObject();
  v12[2] = v0;
  v12[3] = v9;
  v12[4] = v0;
  v12[5] = v10;
  aBlock[4] = sub_1DA92A20C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_26;
  v13 = _Block_copy(aBlock);

  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA92A218(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v8, v4, v13);
  _Block_release(v13);
  (*(v17 + 8))(v4, v1);
  (*(v5 + 8))(v8, v16);
}

uint64_t sub_1DA929E08(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1DA9410A4();
  }

  swift_job_run();
  v2 = *(a1 + 32);
  return sub_1DA9410B4();
}

uint64_t sub_1DA929E68()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA929EE8(uint64_t *a1, int a2)
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

uint64_t sub_1DA929F30(uint64_t result, int a2, int a3)
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

unint64_t sub_1DA929F80(uint64_t a1)
{
  result = sub_1DA929FA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA929FA8()
{
  result = qword_1ECBD77A8;
  if (!qword_1ECBD77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD77A8);
  }

  return result;
}

uint64_t sub_1DA92A02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1DA92A218(&qword_1ECBD77B0, type metadata accessor for SynchronousEntryExecutor);

  return a4(a1, v6, v7);
}

uint64_t sub_1DA92A20C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_1DA929E08(v0[2]);
}

uint64_t sub_1DA92A218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA92A260@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1280070990;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1E1271BD0](v5, v6);

  MEMORY[0x1E1271BD0](538976314, 0xE400000000000000);
  result = sub_1DA941494();
  *a2 = 0;
  a2[1] = v8;
  return result;
}

uint64_t sub_1DA92A328(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {

LABEL_13:
    }

    if (a7 != 1)
    {
      return result;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a7 == 2)
  {
    goto LABEL_12;
  }

  if (a7 == 3)
  {

    return sub_1DA828324(result, a2);
  }

  return result;
}

uint64_t sub_1DA92A3DC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {

LABEL_13:
    }

    if (a7 != 1)
    {
      return result;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a7 == 2)
  {
    goto LABEL_12;
  }

  if (a7 == 3)
  {

    return sub_1DA841874(result, a2);
  }

  return result;
}

uint64_t sub_1DA92A494()
{
  v1 = sub_1DA9407F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DA940854();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 16);
  aBlock[4] = sub_1DA92D4FC;
  v16 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_10_1;
  v10 = _Block_copy(aBlock);

  sub_1DA940824();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1DA92D59C(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_1DA92A734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA9407F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DA940854();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 16);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1DA92D4F0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_7_0;
  v16 = _Block_copy(aBlock);

  sub_1DA940824();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DA92D59C(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_1DA92AA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DA9407F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DA940854();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v3 + 16);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = v3;
  aBlock[4] = sub_1DA92D474;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_27;
  v17 = _Block_copy(aBlock);

  sub_1DA940824();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DA92D59C(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v20);
}

void *sub_1DA92ACDC(uint64_t a1)
{
  v14 = a1;
  v13 = sub_1DA940FC4();
  v2 = *(v13 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1DA940854();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DA7AC344();
  v12[1] = "tificationsCore/";
  v12[2] = v10;
  sub_1DA940824();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DA92D59C(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v13);
  v1[2] = sub_1DA941004();
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = v14;
  return v1;
}

uint64_t sub_1DA92AF40(void *a1)
{
  sub_1DA92AFC0();
  result = swift_beginAccess();
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[3];
    v6 = a1[5];
    v5 = a1[6];
    sub_1DA92D504(v4, v3);

    sub_1DA8244E0(v7);
  }

  return result;
}

void sub_1DA92AFC0()
{
  v0 = sub_1DA93F8E4();
  v35 = *(v0 - 8);
  *&v36 = v0;
  v1 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - v6;
  v8 = sub_1DA93F964();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA92C478();
  v13 = sub_1DA940A04();

  v14 = sub_1DA940A04();
  v15 = [v13 stringByAppendingPathComponent_];

  v16 = v15;
  if (!v15)
  {
    sub_1DA940A14();
    v16 = sub_1DA940A04();
  }

  sub_1DA940A14();
  v17 = [objc_opt_self() defaultManager];
  v18 = [v17 fileExistsAtPath_];

  if (v18)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    (*(v35 + 104))(v3, *MEMORY[0x1E6968F70], v36);
    sub_1DA93F934();
    v23 = sub_1DA93F974();
    v25 = v24;
    v26 = v34;
    (*(v9 + 8))(v12, v8);
    v27 = sub_1DA93F7A4();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1DA93F794();
    sub_1DA92D548();
    sub_1DA93F784();
    sub_1DA828324(v23, v25);

    v36 = v37;
    v30 = v38;
    swift_beginAccess();
    v31 = v26[3];
    v32 = v26[4];
    v33 = v26[5];
    *(v26 + 3) = v36;
    v26[5] = v30;
    sub_1DA92D430(v31, v32);
  }

  else
  {

    if (qword_1ECBD47C8 != -1)
    {
      swift_once();
    }

    v19 = sub_1DA9405A4();
    __swift_project_value_buffer(v19, qword_1ECBE3DD0);
    *&v36 = sub_1DA940584();
    v20 = sub_1DA940F34();
    if (os_log_type_enabled(v36, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DA7A9000, v36, v20, "NotificationGroupPersistenceManager: No file to load", v21, 2u);
      MEMORY[0x1E12739F0](v21, -1, -1);
    }

    v22 = v36;
  }
}

uint64_t sub_1DA92B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 48) + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77F8, &qword_1DA965688);
  sub_1DA940FE4();
  sub_1DA92C8F8(a1, a2, v8);
}

uint64_t sub_1DA92B624@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (a1[4])
  {
    v8 = a1[3];
    v9 = a1[4];
    v10 = a1[5];

    sub_1DA92B8A4(a2, a3);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t sub_1DA92B718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a1 + 32))
  {
    sub_1DA92B784(a2, a3);
  }

  return swift_endAccess();
}

uint64_t sub_1DA92B784(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = v2;
    v7 = result;
    v8 = *(v2 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_13:
      v3 = sub_1DA884BE8(v3);
    }

    v9 = 0;
    v10 = 48;
    do
    {
      if (v9 >= *(v3 + 2))
      {
        __break(1u);
        goto LABEL_13;
      }

      v14 = *&v3[v10];
      result = sub_1DA85A4B4(v7, a2);
      if (v15)
      {
        v16 = result;
        v17 = *&v3[v10];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *&v3[v10];
        *&v3[v10] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DA860D2C();
        }

        v11 = *(*(v19 + 48) + 16 * v16 + 8);

        v12 = *(*(v19 + 56) + 8 * v16);

        sub_1DA8F71FC(v16, v19);
        v13 = *&v3[v10];
        *&v3[v10] = v19;
      }

      ++v9;
      v10 += 24;
    }

    while (v4 != v9);
    *(v5 + 8) = v3;
  }

  return result;
}

uint64_t sub_1DA92B8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v45 = a2;
  v51 = sub_1DA93FEC4();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v2 + 8);
  v8 = *(v2 + 8);
  v9 = *(v8 + 2);
  if (!v9)
  {
LABEL_15:
    v24 = 1;
    v25 = v45;
    goto LABEL_23;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_26:
    v8 = sub_1DA884BE8(v8);
  }

  v10 = 0;
  v49 = v9;
  v50 = v8 + 32;
  v44 = v3;
  v11 = (v3 + 8);
  v47 = v8;
  v48 = v7;
  while (1)
  {
    if (v10 == v9)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v10 >= *(v8 + 2))
    {
      goto LABEL_25;
    }

    v12 = &v50[24 * v10];
    v13 = sub_1DA940014();
    v15 = *(v12 + 2);
    if (*(v15 + 16))
    {
      break;
    }

LABEL_5:
    ++v10;
    *v7 = v8;
    if (v10 == v9)
    {
      goto LABEL_15;
    }
  }

  v3 = sub_1DA85A4B4(v13, v14);
  v17 = v16;
  v9 = v49;

  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

  v46 = v12;
  v18 = *(*(v15 + 56) + 8 * v3);
  v54 = v18;
  v19 = *(v18 + 16);
  swift_bridgeObjectRetain_n();
  if (!v19)
  {
LABEL_14:
    swift_bridgeObjectRelease_n();
    v8 = v47;
    v7 = v48;
    v9 = v49;
    goto LABEL_5;
  }

  v3 = 0;
  v20 = v18 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  v21 = *(v44 + 72);
  while (1)
  {
    sub_1DA940124();
    v22 = sub_1DA93FEA4();
    v23 = *v11;
    (*v11)(v6, v51);
    if (v22)
    {
      break;
    }

    ++v3;
    v20 += v21;
    if (v19 == v3)
    {
      goto LABEL_14;
    }
  }

  sub_1DA8765C8(v3, v6);
  v23(v6, v51);
  v26 = v54;
  v27 = v48;
  if (*(v54 + 16))
  {
    v28 = sub_1DA940014();
    v30 = v29;
    v31 = v46;
    v32 = *(v46 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(v31 + 2);
    *(v31 + 2) = 0x8000000000000000;
    sub_1DA90B4E8(v26, v28, v30, isUniquelyReferenced_nonNull_native);

    *(v31 + 2) = v53;
  }

  else
  {

    v35 = sub_1DA940014();
    v31 = v46;
    sub_1DA8F485C(v35, v36);
  }

  v25 = v45;
  v37 = v47;
  *v27 = v47;
  if (v10 >= *(v37 + 2))
  {
    __break(1u);
  }

  else
  {
    v38 = *v31;
    v39 = *(v31 + 1);
    v40 = *(*(v31 + 2) + 16);

    if (!v40)
    {
      sub_1DA87670C(v10);
    }

    sub_1DA9401F4();
    v41 = MEMORY[0x1E69DF180];
    sub_1DA92D59C(&qword_1ECBD5A70, MEMORY[0x1E69DF180]);
    sub_1DA92D59C(&qword_1ECBD5A78, v41);
    sub_1DA92D59C(&qword_1ECBD5A80, v41);
    sub_1DA940344();

    v24 = 0;
LABEL_23:
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
    return (*(*(v42 - 8) + 56))(v25, v24, 1, v42);
  }

  return result;
}

uint64_t sub_1DA92BD00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7810, &unk_1DA965690);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA92D0E4();
  sub_1DA941834();
  LOBYTE(v16) = 0;
  sub_1DA9415F4();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77E0, &qword_1DA965680);
    sub_1DA92D278(&qword_1ECBD7818, sub_1DA92D2F0);
    sub_1DA941604();
    v16 = a4;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77F8, &qword_1DA965688);
    sub_1DA92D344();
    sub_1DA941604();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DA92BF20()
{
  v1 = 0x736E6F6974636573;
  if (*v0 != 1)
  {
    v1 = 0x6F6974617267696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x655674616D726F66;
  }
}

uint64_t sub_1DA92BF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA92CD50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA92BFB4(uint64_t a1)
{
  v2 = sub_1DA92D0E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA92BFF0(uint64_t a1)
{
  v2 = sub_1DA92D0E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA92C02C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DA92CE78(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DA92C07C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7890, &qword_1DA965860);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA92D998();
  sub_1DA941834();
  v15 = 0;
  sub_1DA9415D4();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7870, &qword_1DA965850);
    sub_1DA92DB4C();
    sub_1DA941604();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DA92C220()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DA92C254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DA957080 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA92C330(uint64_t a1)
{
  v2 = sub_1DA92D998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA92C36C(uint64_t a1)
{
  v2 = sub_1DA92D998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA92C3A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DA92D794(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DA92C3F8()
{
  v1 = *(v0 + 40);
  sub_1DA92D430(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA92C478()
{
  v38[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1DA93F8E4();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_1DA93F964();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_1DA940A04();
  v15 = [v14 stringByExpandingTildeInPath];

  v16 = v15;
  if (!v15)
  {
    sub_1DA940A14();
    v16 = sub_1DA940A04();
  }

  v17 = sub_1DA940A14();
  v18 = v13;
  v19 = [v13 fileExistsAtPath_];

  if (v19)
  {
    goto LABEL_6;
  }

  (*(v9 + 56))(v7, 1, 1, v8);
  (*(v36 + 104))(v3, *MEMORY[0x1E6968F70], v37);

  sub_1DA93F934();
  v20 = sub_1DA93F904();
  (*(v9 + 8))(v12, v8);
  v38[0] = 0;
  v21 = [v18 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:v38];

  if (v21)
  {
    v22 = v38[0];
LABEL_6:

    goto LABEL_7;
  }

  v25 = v38[0];
  v26 = sub_1DA93F8C4();

  swift_willThrow();
  if (qword_1ECBD47C8 != -1)
  {
    swift_once();
  }

  v27 = sub_1DA9405A4();
  __swift_project_value_buffer(v27, qword_1ECBE3DD0);
  v28 = v26;
  v29 = sub_1DA940584();
  v30 = sub_1DA940F14();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v26;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_1DA7A9000, v29, v30, "NotificationGroupPersistenceManager: failed to create a directory: %@", v31, 0xCu);
    sub_1DA828378(v32);
    MEMORY[0x1E12739F0](v32, -1, -1);
    MEMORY[0x1E12739F0](v31, -1, -1);
  }

  else
  {
  }

LABEL_7:
  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t sub_1DA92C8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v5 = sub_1DA93F8E4();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_1DA93F964();
  v28 = *(v13 - 8);
  v14 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA92C478();
  v17 = sub_1DA940A04();

  v18 = sub_1DA940A04();
  v19 = [v17 stringByAppendingPathComponent_];

  sub_1DA940A14();
  v20 = sub_1DA93F7D4();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1DA93F7C4();
  v32 = a1;
  v33 = a2;
  v34 = v31;
  sub_1DA92D49C();
  v23 = sub_1DA93F7B4();
  v25 = v24;

  v26 = v28;
  (*(v28 + 56))(v12, 1, 1, v13);
  (*(v29 + 104))(v8, *MEMORY[0x1E6968F70], v30);
  sub_1DA93F934();
  sub_1DA93F9B4();
  (*(v26 + 8))(v16, v13);
  return sub_1DA828324(v23, v25);
}

uint64_t sub_1DA92CD50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974617267696DLL && a2 == 0xEA0000000000736ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DA92CE78(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77D0, &qword_1DA965678);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA92D0E4();
  sub_1DA941804();
  LOBYTE(v11) = 0;
  v8 = sub_1DA941574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77E0, &qword_1DA965680);
  HIBYTE(v10) = 1;
  sub_1DA92D278(&qword_1ECBD77E8, sub_1DA92D138);
  sub_1DA941584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77F8, &qword_1DA965688);
  HIBYTE(v10) = 2;
  sub_1DA92D18C();
  sub_1DA941584();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DA92D0E4()
{
  result = qword_1ECBD77D8;
  if (!qword_1ECBD77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD77D8);
  }

  return result;
}

unint64_t sub_1DA92D138()
{
  result = qword_1ECBD77F0;
  if (!qword_1ECBD77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD77F0);
  }

  return result;
}

unint64_t sub_1DA92D18C()
{
  result = qword_1ECBD7800;
  if (!qword_1ECBD7800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD77F8, &qword_1DA965688);
    sub_1DA92D59C(&qword_1ECBD7808, MEMORY[0x1E69DF0D0]);
    sub_1DA92D59C(&qword_1ECBD6920, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7800);
  }

  return result;
}

uint64_t sub_1DA92D278(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD77E0, &qword_1DA965680);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA92D2F0()
{
  result = qword_1ECBD7820;
  if (!qword_1ECBD7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7820);
  }

  return result;
}

unint64_t sub_1DA92D344()
{
  result = qword_1ECBD7828;
  if (!qword_1ECBD7828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD77F8, &qword_1DA965688);
    sub_1DA92D59C(&qword_1ECBD7830, MEMORY[0x1E69DF0D0]);
    sub_1DA92D59C(&qword_1ECBD6908, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7828);
  }

  return result;
}

uint64_t sub_1DA92D430(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DA92D49C()
{
  result = qword_1ECBD7838;
  if (!qword_1ECBD7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7838);
  }

  return result;
}

uint64_t sub_1DA92D504(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DA92D548()
{
  result = qword_1ECBD7840;
  if (!qword_1ECBD7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7840);
  }

  return result;
}

uint64_t sub_1DA92D59C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA92D5F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DA92D63C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DA92D690()
{
  result = qword_1ECBD7848;
  if (!qword_1ECBD7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7848);
  }

  return result;
}

unint64_t sub_1DA92D6E8()
{
  result = qword_1ECBD7850;
  if (!qword_1ECBD7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7850);
  }

  return result;
}

unint64_t sub_1DA92D740()
{
  result = qword_1ECBD7858;
  if (!qword_1ECBD7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7858);
  }

  return result;
}

uint64_t sub_1DA92D794(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7860, &qword_1DA965848);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA92D998();
  sub_1DA941804();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1DA941554();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7870, &qword_1DA965850);
    v10[15] = 1;
    sub_1DA92D9EC();
    sub_1DA941584();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DA92D998()
{
  result = qword_1ECBD7868;
  if (!qword_1ECBD7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7868);
  }

  return result;
}

unint64_t sub_1DA92D9EC()
{
  result = qword_1ECBD7878;
  if (!qword_1ECBD7878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7870, &qword_1DA965850);
    sub_1DA92DAB0(&qword_1ECBD7880, &qword_1ECBD7808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7878);
  }

  return result;
}

uint64_t sub_1DA92DAB0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7888, &qword_1DA965858);
    sub_1DA92D59C(a2, MEMORY[0x1E69DF0D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA92DB4C()
{
  result = qword_1ECBD7898;
  if (!qword_1ECBD7898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7870, &qword_1DA965850);
    sub_1DA92DAB0(&qword_1ECBD78A0, &qword_1ECBD7830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7898);
  }

  return result;
}

unint64_t sub_1DA92DC24()
{
  result = qword_1ECBD78A8;
  if (!qword_1ECBD78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD78A8);
  }

  return result;
}

unint64_t sub_1DA92DC7C()
{
  result = qword_1ECBD78B0;
  if (!qword_1ECBD78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD78B0);
  }

  return result;
}

unint64_t sub_1DA92DCD4()
{
  result = qword_1ECBD78B8;
  if (!qword_1ECBD78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD78B8);
  }

  return result;
}

uint64_t sub_1DA92DD40(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1DA941264();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E1272460](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1DA92DE6C()
{
  v0 = sub_1DA92DEC0();
  type metadata accessor for NotificationPipelineFactory();
  v1 = swift_allocObject();
  result = sub_1DA92E224(v0, 1, 0, 0);
  qword_1EE111B40 = v1;
  return result;
}

uint64_t sub_1DA92DEC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6480, &unk_1DA95D4A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DA95C300;
  v1 = [objc_opt_self() sharedInstance];
  v2 = type metadata accessor for OneTimeCodeActor();
  swift_allocObject();
  v3 = sub_1DA84CC70(v1);

  *(v0 + 56) = v2;
  *(v0 + 64) = &off_1F5633778;
  *(v0 + 32) = v3;
  v4 = type metadata accessor for SpotlightIndexer();
  v5 = swift_allocObject();
  if (qword_1EE1127C0 != -1)
  {
    v21 = v5;
    swift_once();
    v5 = v21;
  }

  v6 = qword_1EE11AEB0;
  v25[3] = v4;
  v25[4] = &off_1F5634F80;
  v25[0] = v5;
  type metadata accessor for NotificationInferenceClient();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v25, v4);
  v9 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v23 = v4;
  v24 = &off_1F5634F80;
  *&v22 = v13;

  swift_defaultActor_initialize();
  *(v7 + 152) = MEMORY[0x1E69E7CC8];
  *(v7 + 160) = sub_1DA9252E4();
  sub_1DA7B9FAC(&v22, v7 + 112);
  v14 = *(v6 + 16);
  *(v6 + 16) = v7;

  __swift_destroy_boxed_opaque_existential_1(v25);
  if (qword_1EE111B28 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE11AE98;
  v16 = type metadata accessor for IntelligenceActor();
  v17 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v17 + 112) = v7;
  *(v17 + 120) = 1;
  *(v17 + 128) = v15;
  *(v17 + 136) = &off_1F563AD30;
  *(v0 + 96) = v16;
  *(v0 + 104) = &off_1F5639350;
  *(v0 + 72) = v17;
  v18 = type metadata accessor for BehaviorResolutionActor();
  v19 = swift_allocObject();
  *(v0 + 136) = v18;
  *(v0 + 144) = &off_1F5639D60;
  *(v0 + 112) = v19;
  return v0;
}

uint64_t static NotificationPipelineFactory.shared.getter()
{
  if (qword_1EE111B38 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA92E224(void *a1, int a2, int a3, int a4)
{
  v45 = a1;
  v41 = a4;
  v42 = a3;
  v43 = a2;
  v40 = sub_1DA940FC4();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA940F74();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DA940854();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v39[1] = sub_1DA7AC344();
  sub_1DA940824();
  *&v47 = MEMORY[0x1E69E7CC0];
  sub_1DA9349B8(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v40);
  *(v44 + 16) = sub_1DA941004();
  if (v41)
  {
    v12 = type metadata accessor for NotificationPipelineStepDebugActor();
    v13 = swift_allocObject();
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DA886628(0, v14[2] + 1, 1, v14);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1DA886628((v15 > 1), v16 + 1, 1, v14);
    }

    v48 = v12;
    v49 = &off_1F5633728;
    *&v47 = v13;
    v14[2] = v16 + 1;
    sub_1DA7B9FAC(&v47, &v14[5 * v16 + 4]);
    v17 = v14[2];
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_13:

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v14 = v45;
  v17 = v45[2];
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_7:
  v50 = MEMORY[0x1E69E7CC0];

  sub_1DA82A778(0, v17, 0);
  v18 = v50;
  v45 = v14;
  v19 = (v14 + 4);
  do
  {
    sub_1DA7BABAC(v19, &v47);
    sub_1DA7BABAC(&v47, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DE0, &unk_1DA9618D0);
    v20 = sub_1DA940A74();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v50 = v18;
    v24 = *(v18 + 16);
    v23 = *(v18 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1DA82A778((v23 > 1), v24 + 1, 1);
      v18 = v50;
    }

    *(v18 + 16) = v24 + 1;
    v25 = v18 + 16 * v24;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    v19 += 40;
    --v17;
  }

  while (v17);
  v14 = v45;
LABEL_14:
  *&v47 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7AD11C(&qword_1EE114DF0, &qword_1ECBD6790, &qword_1DA9594C0);
  v26 = sub_1DA9409C4();
  v28 = v27;

  if (qword_1EE114E60 != -1)
  {
    swift_once();
  }

  v29 = sub_1DA9405A4();
  __swift_project_value_buffer(v29, qword_1EE11AFB8);

  v30 = sub_1DA940584();
  v31 = sub_1DA940EF4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v47 = v33;
    *v32 = 136315138;
    v34 = sub_1DA7AE6E8(v26, v28, &v47);

    *(v32 + 4) = v34;

    _os_log_impl(&dword_1DA7A9000, v30, v31, "Init notification pipeline factory with actors: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12739F0](v33, -1, -1);
    MEMORY[0x1E12739F0](v32, -1, -1);
  }

  else
  {
  }

  v36 = v42;
  v35 = v43;
  v37 = v44;
  *(v44 + 24) = v14;
  type metadata accessor for NotificationPipelineScheduler();
  swift_allocObject();
  *(v37 + 32) = sub_1DA92F394(v36 & 1);
  *(v37 + 40) = v35 & 1;
  return v37;
}

uint64_t sub_1DA92E828(uint64_t (*a1)(), int a2, uint64_t a3, uint64_t a4)
{
  v81 = a3;
  v82 = a4;
  v77 = a2;
  v87 = a1;
  v86 = sub_1DA9407F4();
  v4 = *(v86 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940854();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DA9401F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = type metadata accessor for NotificationPipelineAnalytics.Item(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NotificationPipelineRequestLogger();
  v76 = *(v18 - 8);
  v19 = *(v76 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  if (UNCUsePipeline())
  {
    v72 = v13;
    v71 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = v10;
    v23 = *(v12 + 16);
    (v23)(v22, v87, v11);
    v24 = *(v18 + 24);
    *&v22[v24] = CFAbsoluteTimeGetCurrent();
    v25 = v22;
    v26 = *(v18 + 20);
    v27 = v77;
    v22[v26] = v77;
    v28 = v78;
    v29 = *(v78 + 40) == 1;
    v74 = v4;
    v68 = v19;
    if (v29)
    {
      (v23)(v17, v87, v11);
      (*(v12 + 56))(v17, 0, 1, v11);
      v80 = sub_1DA82239C(v17, v27, *(v28 + 24), v25);
      sub_1DA934684(v17, type metadata accessor for NotificationPipelineAnalytics.Item);
    }

    else
    {
      v80 = 0;
    }

    v37 = v11;
    v38 = v23;
    v75 = v25;
    v39 = v71;
    v38();
    v40 = *(v28 + 24);
    v41 = type metadata accessor for NotificationPipeline();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    v44 = swift_allocObject();
    (v38)(v44 + OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification, v39, v37);
    v45 = v28;
    v46 = v80;

    sub_1DA940124();
    v47 = *(v12 + 8);
    v67 = v37;
    v47(v39, v37);
    v69 = v44;
    *(v44 + OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_orderedSteps) = v40;
    *(v44 + OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_analytics) = v46;
    v70 = *(v45 + 32);
    v71 = *(v45 + 16);
    v78 = *(v70 + 32);
    (v38)(v39, v87, v37);
    v87 = type metadata accessor for NotificationPipelineRequestLogger;
    sub_1DA7BACD0(v75, v79, type metadata accessor for NotificationPipelineRequestLogger);
    v48 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v49 = (v72 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (*(v76 + 80) + v49 + 9) & ~*(v76 + 80);
    v51 = (v68 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v12 + 32))(v54 + v48, v39, v67);
    v55 = v54 + v49;
    *v55 = v69;
    *(v55 + 8) = v77;
    sub_1DA7BAC68(v79, v54 + v50, v87);
    v56 = v81;
    *(v54 + v51) = v80;
    *(v54 + v52) = v70;
    v57 = v71;
    *(v54 + v53) = v71;
    v58 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    v59 = v82;
    *v58 = v56;
    v58[1] = v59;
    v93 = sub_1DA9343EC;
    v94 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v91 = sub_1DA7AF1D0;
    v92 = &block_descriptor_24;
    v60 = _Block_copy(&aBlock);

    v61 = v57;

    v62 = v73;
    sub_1DA940824();
    v88 = MEMORY[0x1E69E7CC0];
    sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    v63 = v83;
    v64 = v86;
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v62, v63, v60);
    _Block_release(v60);

    (*(v74 + 8))(v63, v64);
    (*(v84 + 8))(v62, v85);
    sub_1DA934684(v75, type metadata accessor for NotificationPipelineRequestLogger);
  }

  else
  {
    v80 = *(v78 + 16);
    (*(v12 + 16))(&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v87, v11);
    v30 = v4;
    v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v32 = swift_allocObject();
    v33 = v82;
    *(v32 + 16) = v81;
    *(v32 + 24) = v33;
    (*(v12 + 32))(v32 + v31, &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    v93 = sub_1DA934388;
    v94 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v91 = sub_1DA7AF1D0;
    v92 = &block_descriptor_28;
    v34 = _Block_copy(&aBlock);

    sub_1DA940824();
    v88 = MEMORY[0x1E69E7CC0];
    sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    v35 = v83;
    v36 = v86;
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v10, v35, v34);
    _Block_release(v34);
    (*(v30 + 8))(v35, v36);
    (*(v84 + 8))(v10, v85);
  }
}

uint64_t sub_1DA92F1D8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = sub_1DA9401F4();
  (*(*(v9 - 8) + 16))(v8, a3, v9);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_1DA7BA120(v8, &unk_1ECBD6470, &qword_1DA95F4C8);
}

uint64_t NotificationPipelineFactory.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t NotificationPipelineFactory.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA92F394(int a1)
{
  v16 = a1;
  v15 = sub_1DA940FC4();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1DA940854();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v11 = v10;
  v12 = sub_1DA7AC344();
  v14[1] = "Factory.resultQueue";
  v14[2] = v12;
  sub_1DA940824();
  v17 = v11;
  sub_1DA9349B8(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v15);
  *(v1 + 32) = sub_1DA941004();
  *(v1 + 40) = sub_1DA8496B8(MEMORY[0x1E69E7CC0]);
  *(v1 + 24) = v16;
  return v1;
}

uint64_t sub_1DA92F620(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v47 = a7;
  v48 = a8;
  v42[1] = a6;
  v43 = a2;
  v44 = a3;
  v45 = a5;
  v46 = a9;
  v12 = type metadata accessor for NotificationPipelineRequestLogger();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA9401F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v17 + 16);
  v21(v20, a1, v16);
  sub_1DA7BACD0(a4, v15, type metadata accessor for NotificationPipelineRequestLogger);
  v22 = *(a6 + 32);
  v23 = type metadata accessor for NotificationPipelineScheduler.Request();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_createTime;
  v28 = v22;
  *(v26 + v27) = CFAbsoluteTimeGetCurrent();
  *(v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state) = 0;
  v29 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_result;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  (*(*(v30 - 8) + 56))(v26 + v29, 1, 1, v30);
  v31 = v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_delegate;
  *(v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_deleted) = 0;
  *(v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_calledCompletion) = 0;
  v21((v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_initialNotification), v20, v16);
  *(v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_pipeline) = v43;
  *(v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action) = v44;

  v32 = sub_1DA940014();
  v34 = v33;
  (*(v17 + 8))(v20, v16);
  v35 = (v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel);
  *v35 = v32;
  v35[1] = v34;
  sub_1DA7BAC68(v15, v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_logger, type metadata accessor for NotificationPipelineRequestLogger);
  *(v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_analytics) = v45;
  *(v31 + 8) = &off_1F563A5A0;
  swift_unknownObjectWeakAssign();
  *(v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_queue) = v28;
  v37 = v47;
  v36 = v48;
  *(v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completionQueue) = v47;
  v38 = (v26 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion);
  v39 = v46;
  *v38 = v36;
  v38[1] = v39;

  v40 = v37;

  sub_1DA92F95C(v26);
}

uint64_t sub_1DA92F95C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v73 - v8;
  v9 = type metadata accessor for NotificationPipelineRequestLogger();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v84 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA93FEC4();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v73 - v18;
  v20 = sub_1DA9408C4();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v2 + 32);
  *v24 = v25;
  v26 = v21[13];
  v88 = *MEMORY[0x1E69E8020];
  v89 = v21 + 13;
  v94 = v26;
  v26(v24);
  v82 = v25;
  LOBYTE(v25) = sub_1DA9408F4();
  v28 = v21[1];
  v27 = (v21 + 1);
  v86 = v27;
  v87 = v20;
  v93 = v28;
  v28(v24, v20);
  if ((v25 & 1) == 0)
  {
    goto LABEL_42;
  }

  if (*(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action) != 3)
  {
    goto LABEL_32;
  }

  sub_1DA940124();
  v20 = sub_1DA930714(v19, *(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel), *(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel + 8));
  (*(v13 + 8))(v19, v12);
  v78 = v2;
  v77 = v12;
  v76 = v13;
  v75 = a1;
  v74 = v17;
  if (v20 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA941264())
  {
    v31 = v89;
    v2 = v87;
    v13 = v88;
    if (!i)
    {
      break;
    }

    if (i < 1)
    {
      __break(1u);
LABEL_46:
      sub_1DA940C04();
LABEL_35:
      sub_1DA940C14();
      v64 = v101;
      swift_beginAccess();
      v65 = *(v2 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = *(v2 + 40);
      *(v2 + 40) = 0x8000000000000000;
      sub_1DA90C928(v64, v31, v27, isUniquelyReferenced_nonNull_native);

      v67 = v99;
      goto LABEL_37;
    }

    v27 = 0;
    v92 = v20 & 0xC000000000000001;
    v80 = "ficationPipelineScheduler";
    *&v29 = 136446466;
    v79 = v29;
    v90 = i;
    v91 = v20;
    while (1)
    {
      if (v92)
      {
        v17 = MEMORY[0x1E1272460](v27, v20);
      }

      else
      {
        v17 = *(v20 + 8 * v27 + 32);
      }

      v32 = *&v17[OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_queue];
      *v24 = v32;
      v94(v24, v13, v2);
      v33 = v32;
      LOBYTE(v32) = sub_1DA9408F4();
      v93(v24, v2);
      if ((v32 & 1) == 0)
      {
        break;
      }

      if ((v17[OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_deleted] & 1) == 0)
      {
        v17[OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_deleted] = 1;
        v12 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state;
        if (!v17[OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state])
        {
          v34 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_logger;
          if (qword_1EE114E60 != -1)
          {
            swift_once();
          }

          v35 = sub_1DA9405A4();
          __swift_project_value_buffer(v35, qword_1EE11AFB8);
          v36 = &v17[v34];
          v37 = v84;
          sub_1DA7BACD0(v36, v84, type metadata accessor for NotificationPipelineRequestLogger);
          v38 = sub_1DA940584();
          v39 = sub_1DA940F34();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = v37;
            v41 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v100[0] = v81;
            *v41 = v79;
            v42 = sub_1DA7BA698();
            v44 = v43;
            sub_1DA934684(v40, type metadata accessor for NotificationPipelineRequestLogger);
            v45 = sub_1DA7AE6E8(v42, v44, v100);
            v2 = v87;

            *(v41 + 4) = v45;
            *(v41 + 12) = 2082;
            *(v41 + 14) = sub_1DA7AE6E8(0xD00000000000001DLL, v80 | 0x8000000000000000, v100);
            _os_log_impl(&dword_1DA7A9000, v38, v39, "[%{public}s]: %{public}s", v41, 0x16u);
            v46 = v81;
            swift_arrayDestroy();
            MEMORY[0x1E12739F0](v46, -1, -1);
            MEMORY[0x1E12739F0](v41, -1, -1);
          }

          else
          {

            sub_1DA934684(v37, type metadata accessor for NotificationPipelineRequestLogger);
          }

          v13 = v88;
          *(v12 + v17) = 2;
          v47 = *&v17[OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_analytics];
          if (v47)
          {
            v48 = sub_1DA940D34();
            v49 = *(v48 - 8);
            v50 = v85;
            (*(v49 + 56))(v85, 1, 1, v48);
            v51 = swift_allocObject();
            *(v51 + 16) = 0;
            *(v51 + 24) = 0;
            *(v51 + 32) = v47;
            *(v51 + 40) = 2;
            v52 = v83;
            sub_1DA822F48(v50, v83, &qword_1ECBD4FA0, &unk_1DA958730);
            LODWORD(v50) = (*(v49 + 48))(v52, 1, v48);

            if (v50 == 1)
            {
              sub_1DA7BA120(v52, &qword_1ECBD4FA0, &unk_1DA958730);
            }

            else
            {
              sub_1DA940D24();
              (*(v49 + 8))(v52, v48);
            }

            v12 = &unk_1DA958730;
            v54 = *(v51 + 16);
            v53 = *(v51 + 24);
            swift_unknownObjectRetain();

            v2 = v87;
            if (v54)
            {
              swift_getObjectType();
              v55 = sub_1DA940C34();
              v57 = v56;
              swift_unknownObjectRelease();
            }

            else
            {
              v55 = 0;
              v57 = 0;
            }

            sub_1DA7BA120(v85, &qword_1ECBD4FA0, &unk_1DA958730);
            v58 = swift_allocObject();
            *(v58 + 16) = &unk_1DA965C48;
            *(v58 + 24) = v51;
            if (v57 | v55)
            {
              v95 = 0;
              v96 = 0;
              v97 = v55;
              v98 = v57;
            }

            v13 = v88;
            swift_task_create();
          }
        }
      }

      ++v27;
      sub_1DA9308E0();

      v20 = v91;
      if (v90 == v27)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_31:

  a1 = v75;
  sub_1DA9308E0();
  v2 = v78;
  v12 = v77;
  v13 = v76;
  v17 = v74;
LABEL_32:
  v31 = *(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel);
  v27 = *(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel + 8);
  swift_beginAccess();
  v59 = *(v2 + 40);
  v60 = *(v59 + 16);

  if (v60)
  {
    v61 = sub_1DA85A4B4(v31, v27);
    if (v62)
    {
      v101 = *(*(v59 + 56) + 8 * v61);
      swift_endAccess();

      MEMORY[0x1E1271CA0](v63);
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1DA9593A0;
  *(v68 + 32) = a1;
  swift_beginAccess();

  v69 = *(v2 + 40);
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_1DA90C928(v68, v31, v27, v70);

  v67 = v101;
LABEL_37:
  *(v2 + 40) = v67;
  swift_endAccess();
  sub_1DA940124();
  *v24 = v82;
  v20 = v87;
  v94(v24, v88, v87);
  v71 = sub_1DA9408F4();
  v93(v24, v20);
  if ((v71 & 1) == 0)
  {
    goto LABEL_43;
  }

  sub_1DA9317D0(v31, v27);
  sub_1DA931BB8(v17, v31, v27);
  if (sub_1DA93230C(v17, v31, v27))
  {
    sub_1DA932534();
  }

  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_1DA930498(uint64_t a1)
{
  v3 = sub_1DA93FEC4();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA9408C4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v1;
  v12 = *(v1 + 32);
  *v11 = v12;
  v13 = *MEMORY[0x1E69E8020];
  v26 = v8[13];
  v26(v11, v13, v7);
  v25 = v12;
  LOBYTE(v12) = sub_1DA9408F4();
  v14 = v8[1];
  result = v14(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v22 = v3;
  sub_1DA940124();
  v16 = a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel;
  v17 = *(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel);
  v18 = *(v16 + 8);
  v19 = v26;
  *v11 = v25;
  v19(v11, v13, v7);
  v20 = sub_1DA9408F4();
  result = v14(v11, v7);
  if ((v20 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1DA9317D0(v17, v18);
  sub_1DA931BB8(v6, v17, v18);
  if (sub_1DA93230C(v6, v17, v18))
  {
    sub_1DA932534();
  }

  return (*(v24 + 8))(v6, v22);
}

void *sub_1DA930714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DA9408C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 32);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = sub_1DA9408F4();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    swift_beginAccess();
    v15 = *(v3 + 40);
    if (*(v15 + 16) && (v16 = sub_1DA85A4B4(a2, a3), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      v19 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v19);
      *(&v20 - 2) = a1;

      return sub_1DA8BA7A8(sub_1DA934A00, &v20 - 4, v18);
    }

    else
    {
      swift_endAccess();
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA9308E0()
{
  v1 = type metadata accessor for StepFailure(0);
  v85 = *(v1 - 8);
  v2 = *(v85 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v86 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v91 = (&v82 - v4);
  v87 = sub_1DA9401F4();
  v90 = *(v87 - 8);
  v5 = *(v90 + 64);
  v6 = MEMORY[0x1EEE9AC00](v87);
  v84 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD78C8, &unk_1DA965C38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v82 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v88 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v82 - v16;
  v17 = sub_1DA9407F4();
  v99 = *(v17 - 8);
  v100 = v17;
  v18 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DA940854();
  v101 = *(v20 - 8);
  v102 = v20;
  v21 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NotificationPipelineRequestLogger();
  v95 = *(v23 - 8);
  v24 = *(v95 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v96 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v82 - v26;
  v28 = sub_1DA9408C4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_queue);
  *v32 = v33;
  (*(v29 + 104))(v32, *MEMORY[0x1E69E8020], v28);
  v34 = v33;
  LOBYTE(v33) = sub_1DA9408F4();
  result = (*(v29 + 8))(v32, v28);
  if ((v33 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if ((*(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_calledCompletion) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_calledCompletion) = 1;
    sub_1DA7BACD0(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_logger, v27, type metadata accessor for NotificationPipelineRequestLogger);
    if (*(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action) == 3)
    {
      v36 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completionQueue);
      v37 = v96;
      sub_1DA7BACD0(v27, v96, type metadata accessor for NotificationPipelineRequestLogger);
      v38 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v39 = swift_allocObject();
      sub_1DA7BAC68(v37, v39 + v38, type metadata accessor for NotificationPipelineRequestLogger);
      *(v39 + ((v24 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
      v108 = sub_1DA934900;
      v109 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v105 = 1107296256;
      v40 = &block_descriptor_56;
    }

    else
    {
      if (*(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_deleted) != 1)
      {
        v50 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_result;
        swift_beginAccess();
        sub_1DA822F48(v0 + v50, v11, &qword_1ECBD78C8, &unk_1DA965C38);
        if ((*(v92 + 48))(v11, 1, v93) == 1)
        {
          sub_1DA7BA120(v11, &qword_1ECBD78C8, &unk_1DA965C38);
          sub_1DA84AB4C(0xD00000000000003ALL, 0x80000001DA9573C0);
          return sub_1DA934684(v27, type metadata accessor for NotificationPipelineRequestLogger);
        }

        v51 = v94;
        sub_1DA9345E8(v11, v94);
        v52 = v51;
        v53 = v88;
        sub_1DA822F48(v52, v88, &qword_1ECBD4E98, &qword_1DA95D790);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v83 = v27;
        if (EnumCaseMultiPayload == 1)
        {
          v55 = v91;
          sub_1DA7BAC68(v53, v91, type metadata accessor for StepFailure);
          v93 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completionQueue);
          v56 = v96;
          sub_1DA7BACD0(v27, v96, type metadata accessor for NotificationPipelineRequestLogger);
          v57 = v86;
          sub_1DA7BACD0(v55, v86, type metadata accessor for StepFailure);
          v58 = (*(v95 + 80) + 16) & ~*(v95 + 80);
          v59 = (v24 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
          v60 = (*(v85 + 80) + v59 + 8) & ~*(v85 + 80);
          v61 = swift_allocObject();
          sub_1DA7BAC68(v56, v61 + v58, type metadata accessor for NotificationPipelineRequestLogger);
          *(v61 + v59) = v0;
          sub_1DA7BAC68(v57, v61 + v60, type metadata accessor for StepFailure);
          v108 = sub_1DA934658;
          v109 = v61;
          aBlock = MEMORY[0x1E69E9820];
          v105 = 1107296256;
          v106 = sub_1DA7AF1D0;
          v107 = &block_descriptor_38;
          v62 = _Block_copy(&aBlock);

          v63 = v98;
          sub_1DA940824();
          v103 = MEMORY[0x1E69E7CC0];
          sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
          sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
          v64 = v97;
          v65 = v100;
          sub_1DA9411D4();
          MEMORY[0x1E12720D0](0, v63, v64, v62);
          _Block_release(v62);
          (*(v99 + 8))(v64, v65);
          (*(v101 + 8))(v63, v102);
          sub_1DA934684(v91, type metadata accessor for StepFailure);
        }

        else
        {
          v66 = v90;
          v92 = *(v90 + 32);
          v67 = v89;
          v68 = v87;
          (v92)(v89, v53, v87);
          v93 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completionQueue);
          v91 = type metadata accessor for NotificationPipelineRequestLogger;
          v69 = v27;
          v70 = v96;
          sub_1DA7BACD0(v69, v96, type metadata accessor for NotificationPipelineRequestLogger);
          v71 = v84;
          (*(v66 + 16))(v84, v67, v68);
          v72 = (*(v95 + 80) + 16) & ~*(v95 + 80);
          v73 = (v24 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
          v74 = (*(v66 + 80) + v73 + 8) & ~*(v66 + 80);
          v75 = swift_allocObject();
          sub_1DA7BAC68(v70, v75 + v72, v91);
          *(v75 + v73) = v0;
          v76 = v71;
          v77 = v68;
          (v92)(v75 + v74, v76, v68);
          v108 = sub_1DA9346E4;
          v109 = v75;
          aBlock = MEMORY[0x1E69E9820];
          v105 = 1107296256;
          v106 = sub_1DA7AF1D0;
          v107 = &block_descriptor_44;
          v78 = _Block_copy(&aBlock);

          v79 = v98;
          sub_1DA940824();
          v103 = MEMORY[0x1E69E7CC0];
          sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
          sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
          v80 = v97;
          v81 = v100;
          sub_1DA9411D4();
          MEMORY[0x1E12720D0](0, v79, v80, v78);
          _Block_release(v78);
          (*(v99 + 8))(v80, v81);
          (*(v101 + 8))(v79, v102);
          (*(v90 + 8))(v89, v77);
        }

        sub_1DA7BA120(v94, &qword_1ECBD4E98, &qword_1DA95D790);
        v49 = v83;
        goto LABEL_8;
      }

      v41 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completionQueue);
      v42 = v96;
      sub_1DA7BACD0(v27, v96, type metadata accessor for NotificationPipelineRequestLogger);
      v43 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v44 = swift_allocObject();
      sub_1DA7BAC68(v42, v44 + v43, type metadata accessor for NotificationPipelineRequestLogger);
      *(v44 + ((v24 + v43 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
      v108 = sub_1DA934808;
      v109 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v105 = 1107296256;
      v40 = &block_descriptor_50;
    }

    v106 = sub_1DA7AF1D0;
    v107 = v40;
    v45 = _Block_copy(&aBlock);

    v46 = v98;
    sub_1DA940824();
    v110 = MEMORY[0x1E69E7CC0];
    sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    v47 = v97;
    v48 = v100;
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v46, v47, v45);
    _Block_release(v45);
    (*(v99 + 8))(v47, v48);
    (*(v101 + 8))(v46, v102);
    v49 = v27;
LABEL_8:
    sub_1DA934684(v49, type metadata accessor for NotificationPipelineRequestLogger);
  }

  return result;
}

uint64_t sub_1DA9317D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA93FEC4();
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD78C8, &unk_1DA965C38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v30 - v12;
  v14 = sub_1DA9408C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + 32);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  LOBYTE(v19) = sub_1DA9408F4();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    result = sub_1DA93293C(a1, a2);
    if (result)
    {
      v22 = result;
      v30[1] = v32 + 32;
      do
      {
        if (*(v3 + 24) == 1)
        {
          v23 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_result;
          swift_beginAccess();
          sub_1DA822F48(v22 + v23, v13, &qword_1ECBD78C8, &unk_1DA965C38);
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
          if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
          {
            sub_1DA7BA120(v13, &qword_1ECBD78C8, &unk_1DA965C38);
          }

          else
          {
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            sub_1DA7BA120(v13, &qword_1ECBD4E98, &qword_1DA95D790);
            if (EnumCaseMultiPayload != 1)
            {
              sub_1DA940124();
              v26 = *(v3 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v3 + 16) = v26;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v26 = sub_1DA885D20(0, v26[2] + 1, 1, v26);
                *(v3 + 16) = v26;
              }

              v29 = v26[2];
              v28 = v26[3];
              if (v29 >= v28 >> 1)
              {
                v26 = sub_1DA885D20(v28 > 1, v29 + 1, 1, v26);
              }

              v26[2] = v29 + 1;
              (*(v32 + 32))(v26 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v33, v31);
              *(v3 + 16) = v26;
            }
          }
        }

        sub_1DA9308E0();

        result = sub_1DA93293C(a1, a2);
        v22 = result;
      }

      while (result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DA931BB8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = sub_1DA85A4B4(a2, a3), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    v11 = swift_endAccess();
  }

  MEMORY[0x1EEE9AC00](v11);
  v51[2] = a1;
  v13 = sub_1DA8BA7A8(sub_1DA934D20, v51, v12);
  v14 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= 1)
    {
      goto LABEL_7;
    }

LABEL_33:

    if (qword_1EE114E60 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v46 = v13;
  v15 = sub_1DA941264();
  v13 = v46;
  if (v15 < 1)
  {
    goto LABEL_33;
  }

LABEL_7:
  v16 = v13;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1DA941364();

  v55 = 91;
  v56 = 0xE100000000000000;
  MEMORY[0x1E1271BD0](a2, a3);
  MEMORY[0x1E1271BD0](8285, 0xE200000000000000);
  v54 = v15;
  v17 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v17);

  MEMORY[0x1E1271BD0](0xD000000000000016, 0x80000001DA9575A0);
  v57 = v55;
  v58 = v56;
  if (v14)
  {
    v39 = sub_1DA941264();
    v18 = v16;
    v19 = v39;
    if (v39)
    {
      goto LABEL_9;
    }

LABEL_25:

    MEMORY[0x1E1271BD0](23818, 0xE200000000000000);
    goto LABEL_26;
  }

  v18 = v16;
  v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_25;
  }

LABEL_9:
  if (v19 >= 1)
  {
    v20 = 0;
    v53 = v18 & 0xC000000000000001;
    v21 = 0.0;
    v52 = xmmword_1DA9596E0;
    v22 = v18;
    do
    {
      if (v53)
      {
        v30 = MEMORY[0x1E1272460](v20);
      }

      else
      {
        v30 = *(v18 + 8 * v20 + 32);
      }

      sub_1DA9400A4();
      v31 = sub_1DA940A04();
      v32 = [v31 un_logDigest];

      if (v32)
      {
        v24 = sub_1DA940A14();
        v23 = v33;
      }

      else
      {

        v23 = 0xE400000000000000;
        v24 = 1061109567;
      }

      ++v20;
      Current = CFAbsoluteTimeGetCurrent();
      v26 = *(v30 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_createTime);
      v27 = Current - v26;
      if (v21 < Current - v26)
      {
        v21 = Current - v26;
      }

      v55 = 0;
      v56 = 0xE000000000000000;
      sub_1DA941364();
      MEMORY[0x1E1271BD0](0x3D64695B090ALL, 0xE600000000000000);
      MEMORY[0x1E1271BD0](v24, v23);

      MEMORY[0x1E1271BD0](0x6E6F69746361202CLL, 0xE90000000000003DLL);
      LOBYTE(v54) = *(v30 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action);
      sub_1DA941494();
      MEMORY[0x1E1271BD0](0x3D6574617473202CLL, 0xE800000000000000);
      LOBYTE(v54) = *(v30 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state);
      sub_1DA941494();
      MEMORY[0x1E1271BD0](0x657370616C65202CLL, 0xEE003D656D695464);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D8, qword_1DA95B2F0);
      v28 = swift_allocObject();
      *(v28 + 16) = v52;
      *(v28 + 56) = MEMORY[0x1E69E63B0];
      *(v28 + 64) = MEMORY[0x1E69E6438];
      *(v28 + 32) = v27;
      v29 = sub_1DA940A44();
      MEMORY[0x1E1271BD0](v29);

      MEMORY[0x1E1271BD0](23923, 0xE200000000000000);
      MEMORY[0x1E1271BD0](v55, v56);

      v18 = v22;
    }

    while (v19 != v20);

    MEMORY[0x1E1271BD0](23818, 0xE200000000000000);
    if (v21 >= 12.0)
    {
      if (qword_1EE114E60 != -1)
      {
        swift_once();
      }

      v34 = sub_1DA9405A4();
      __swift_project_value_buffer(v34, qword_1EE11AFB8);
      v36 = v57;
      v35 = v58;

      v37 = sub_1DA940584();
      v38 = sub_1DA940F14();
LABEL_29:
      v41 = v38;

      if (os_log_type_enabled(v37, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v55 = v43;
        *v42 = 136315138;
        v44 = sub_1DA7AE6E8(v36, v35, &v55);

        *(v42 + 4) = v44;
        _os_log_impl(&dword_1DA7A9000, v37, v41, "%s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1E12739F0](v43, -1, -1);
        v45 = v42;
LABEL_36:
        MEMORY[0x1E12739F0](v45, -1, -1);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

LABEL_26:
    if (qword_1EE114E60 != -1)
    {
      swift_once();
    }

    v40 = sub_1DA9405A4();
    __swift_project_value_buffer(v40, qword_1EE11AFB8);
    v36 = v57;
    v35 = v58;

    v37 = sub_1DA940584();
    v38 = sub_1DA940F34();
    goto LABEL_29;
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_34:
  v47 = sub_1DA9405A4();
  __swift_project_value_buffer(v47, qword_1EE11AFB8);

  v37 = sub_1DA940584();
  v48 = sub_1DA940F34();

  if (os_log_type_enabled(v37, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v57 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_1DA7AE6E8(a2, a3, &v57);
    _os_log_impl(&dword_1DA7A9000, v37, v48, "[%s]] No scheduled requests", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1E12739F0](v50, -1, -1);
    v45 = v49;
    goto LABEL_36;
  }

LABEL_37:
}

unint64_t sub_1DA93230C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DA9408C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 32);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = sub_1DA9408F4();
  result = (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  v15 = *(v3 + 40);
  if (!*(v15 + 16) || (v16 = sub_1DA85A4B4(a2, a3), (v17 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v3 = *(*(v15 + 56) + 8 * v16);
  v18 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v18);
  *(&v21 - 2) = a1;

  result = sub_1DA92DD40(sub_1DA934CE8, (&v21 - 4), v3);
  if ((v19 & 1) == 0)
  {
    if ((v3 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v20 = *(v3 + 8 * result + 32);

LABEL_13:

        return v20;
      }

      __break(1u);
      return result;
    }

LABEL_15:
    v20 = MEMORY[0x1E1272460](result, v3);
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1DA932534()
{
  v1 = type metadata accessor for NotificationPipelineRequestLogger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DA9408C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = sub_1DA9408F4();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (!*(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state))
    {
      *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state) = 1;
      v13 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_analytics);
      v14 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_logger;
      sub_1DA7BAA9C(0xD000000000000011, 0x80000001DA957500);
      v21 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_pipeline);
      v20 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action);
      v15 = swift_allocObject();
      swift_weakInit();
      sub_1DA7BACD0(v0 + v14, &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NotificationPipelineRequestLogger);
      v16 = (*(v2 + 80) + 16) & ~*(v2 + 80);
      v17 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_1DA7BAC68(v4, v18 + v16, type metadata accessor for NotificationPipelineRequestLogger);
      *(v18 + v17) = v15;
      *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;

      sub_1DA7B98DC(v20, v0 + v14, 0, sub_1DA934A20, v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1DA93281C(uint64_t *a1)
{
  v2 = sub_1DA93FEC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_1DA940124();
  LOBYTE(a1) = sub_1DA93FEA4();
  (*(v3 + 8))(v6, v2);
  return (a1 & 1) != 0 && *(v7 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state) != 2;
}

uint64_t sub_1DA93293C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA9408C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 32);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  v13 = sub_1DA9408F4();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v10, v6);
  if (v13)
  {
    swift_beginAccess();
    v16 = *(v3 + 40);
    if (!*(v16 + 16))
    {
      goto LABEL_13;
    }

    v17 = sub_1DA85A4B4(a1, a2);
    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }

    v6 = *(*(v16 + 56) + 8 * v17);
    v26 = v6;
    swift_endAccess();
    v14 = v6 >> 62;
    if (!(v6 >> 62))
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_6:
      if ((v6 & 0xC000000000000001) != 0)
      {
        swift_bridgeObjectRetain_n();
        v10 = MEMORY[0x1E1272460](0, v6);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v20 = *(v6 + 32);

        v10 = v20;
      }

      if (*(v10 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state) != 2)
      {

        return 0;
      }

      if (!v14)
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_13:
          swift_endAccess();
          return 0;
        }

LABEL_19:
        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E1272460](0, v6);
          swift_unknownObjectRelease();
          v21 = v6 & 0xFFFFFFFFFFFFFF8;
          if (!v14)
          {
LABEL_21:
            result = *(v21 + 16);
            goto LABEL_25;
          }
        }

        else
        {
          v21 = v6 & 0xFFFFFFFFFFFFFF8;
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_40:
            __break(1u);
            return result;
          }

          if (!v14)
          {
            goto LABEL_21;
          }
        }

        result = sub_1DA941264();
LABEL_25:
        if (result)
        {
          sub_1DA88534C(0, 1);
          v13 = v26;
          if (!(v26 >> 62))
          {
            if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_28:
              swift_beginAccess();

              v22 = *(v3 + 40);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v25 = *(v3 + 40);
              *(v3 + 40) = 0x8000000000000000;
              sub_1DA90C928(v13, a1, a2, isUniquelyReferenced_nonNull_native);

              *(v3 + 40) = v25;
LABEL_36:
              swift_endAccess();
              return v10;
            }

LABEL_35:

            swift_beginAccess();

            sub_1DA8F1618(0, a1, a2);
            goto LABEL_36;
          }

LABEL_34:
          if (sub_1DA941264())
          {
            goto LABEL_28;
          }

          goto LABEL_35;
        }

        goto LABEL_39;
      }

      result = sub_1DA941264();
      if (result)
      {
        result = sub_1DA941264();
        if (result)
        {
          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1DA941264();
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1DA932CC0(void *a1)
{
  v2 = sub_1DA93FEC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_initialNotification;
  sub_1DA940124();
  LOBYTE(v7) = sub_1DA93FEA4();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1DA932DBC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DA941764();
  sub_1DA940AB4();
  return sub_1DA941794();
}

uint64_t sub_1DA932E08()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DA940AB4();
}

uint64_t sub_1DA932E10()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DA941764();
  sub_1DA940AB4();
  return sub_1DA941794();
}

void sub_1DA932E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v37 - v8;
  v10 = sub_1DA9407F4();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v41 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1DA940854();
  v40 = *(v42 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NotificationPipelineRequestLogger();
  v38 = *(v16 - 8);
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = v37 - v21;
  sub_1DA7BAA9C(0xD000000000000012, 0x80000001DA957520);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = *(Strong + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_queue);
    v37[0] = v15;
    v37[1] = v24;
    v25 = Strong;
    sub_1DA822F48(v39, v22, &qword_1ECBD4E98, &qword_1DA95D790);
    sub_1DA7BACD0(a2, v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationPipelineRequestLogger);
    v26 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v27 = (v20 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = a4;
    v29 = (*(v38 + 80) + v27 + 8) & ~*(v38 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v25;
    sub_1DA9345E8(v22, v30 + v26);
    *(v30 + v27) = v28;
    sub_1DA7BAC68(v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for NotificationPipelineRequestLogger);
    aBlock[4] = sub_1DA934B8C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_73;
    v31 = _Block_copy(aBlock);

    v32 = v37[0];
    sub_1DA940824();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    v33 = v41;
    v34 = v44;
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v32, v33, v31);
    _Block_release(v31);
    (*(v43 + 8))(v33, v34);
    (*(v40 + 8))(v32, v42);
  }

  else
  {
    sub_1DA84AB64(0xD000000000000026, 0x80000001DA957540);
    if (!a4)
    {
      return;
    }

    v35 = sub_1DA940D34();
    (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = a4;
    *(v36 + 40) = 1;

    sub_1DA8DB00C(0, 0, v9, &unk_1DA965C70, v36);
  }
}

uint64_t sub_1DA933434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD78C8, &unk_1DA965C38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28[-v19];
  v21 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state;
  if (*(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state) == 1)
  {
    sub_1DA822F48(a2, v20, &qword_1ECBD4E98, &qword_1DA95D790);
    if (a3)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v29 = EnumCaseMultiPayload == 1;
      v23 = &unk_1DA965C80;
      if (EnumCaseMultiPayload == 1)
      {
        v23 = &unk_1DA965C78;
      }

      v30 = v23;
      v31 = a4;
      v24 = sub_1DA940D34();
      (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = a3;
      *(v25 + 40) = v29;

      sub_1DA8DB00C(0, 0, v15, v30, v25);
    }

    sub_1DA7BA120(v20, &qword_1ECBD4E98, &qword_1DA95D790);
    *(a1 + v21) = 2;
    sub_1DA822F48(a2, v11, &qword_1ECBD4E98, &qword_1DA95D790);
    (*(v17 + 56))(v11, 0, 1, v16);
    v26 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_result;
    swift_beginAccess();
    sub_1DA934C78(v11, a1 + v26);
    swift_endAccess();
  }

  sub_1DA7BAA9C(0xD000000000000024, 0x80000001DA957570);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1DA930498(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA933788(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  sub_1DA7BAA9C(0xD000000000000038, 0x80000001DA957400);
  v8 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion);
  v7 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion + 8);
  v9 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_initialNotification;
  v10 = sub_1DA9401F4();
  (*(*(v10 - 8) + 16))(v6, a2 + v9, v10);
  swift_storeEnumTagMultiPayload();
  v8(v6);
  return sub_1DA7BA120(v6, &unk_1ECBD6470, &qword_1DA95F4C8);
}

uint64_t sub_1DA9338C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - v5);
  sub_1DA7BAA9C(0xD00000000000003ALL, 0x80000001DA957440);
  v8 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion);
  v7 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion + 8);
  sub_1DA940C64();
  sub_1DA9349B8(&qword_1EE110CF8, MEMORY[0x1E69E8550]);
  v9 = swift_allocError();
  sub_1DA940954();
  *v6 = v9;
  swift_storeEnumTagMultiPayload();
  v8(v6);
  return sub_1DA7BA120(v6, &unk_1ECBD6470, &qword_1DA95F4C8);
}

uint64_t sub_1DA933A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  sub_1DA7BAA9C(0xD000000000000031, 0x80000001DA957480);
  v9 = a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion;
  v11 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion);
  v10 = *(v9 + 8);
  v12 = sub_1DA9401F4();
  (*(*(v12 - 8) + 16))(v8, a3, v12);
  swift_storeEnumTagMultiPayload();
  v11(v8);
  return sub_1DA7BA120(v8, &unk_1ECBD6470, &qword_1DA95F4C8);
}

uint64_t sub_1DA933B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v14 - v7);
  sub_1DA7BAA9C(0xD000000000000031, 0x80000001DA9574C0);
  v10 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion);
  v9 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion + 8);
  type metadata accessor for StepFailure(0);
  sub_1DA9349B8(&unk_1ECBD78D0, type metadata accessor for StepFailure);
  v11 = swift_allocError();
  sub_1DA7BACD0(a3, v12, type metadata accessor for StepFailure);
  *v8 = v11;
  swift_storeEnumTagMultiPayload();
  v10(v8);
  return sub_1DA7BA120(v8, &unk_1ECBD6470, &qword_1DA95F4C8);
}

uint64_t sub_1DA933CBC()
{
  v1 = sub_1DA93FEC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD00000000000003ELL, 0x80000001DA9572D0);
  sub_1DA940124();
  sub_1DA9349B8(&qword_1EE110EE0, MEMORY[0x1E69DF0D0]);
  v6 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v6);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x1E1271BD0](0x6E6F69746361202CLL, 0xE90000000000003DLL);
  v8[15] = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](62, 0xE100000000000000);
  return v9;
}

uint64_t sub_1DA933E88()
{
  v1 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_initialNotification;
  v2 = sub_1DA9401F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_pipeline);

  v4 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel + 8);

  sub_1DA934684(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_logger, type metadata accessor for NotificationPipelineRequestLogger);
  sub_1DA7BA120(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_result, &qword_1ECBD78C8, &unk_1DA965C38);
  v5 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_analytics);

  v6 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion + 8);

  sub_1DA7C5714(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_delegate);
  return v0;
}

uint64_t sub_1DA933FA4()
{
  v0 = *sub_1DA933E88();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA93401C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotificationPipelineScheduler.Request()
{
  result = qword_1EE1150B0;
  if (!qword_1EE1150B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA9340DC()
{
  v0 = sub_1DA9401F4();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for NotificationPipelineRequestLogger();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1DA934254();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1DA934254()
{
  if (!qword_1EE114D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD4E98, &qword_1DA95D790);
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE114D68);
    }
  }
}

unint64_t sub_1DA9342DC()
{
  result = qword_1EE115138[0];
  if (!qword_1EE115138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE115138);
  }

  return result;
}

unint64_t sub_1DA934334()
{
  result = qword_1ECBD78C0;
  if (!qword_1ECBD78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD78C0);
  }

  return result;
}

uint64_t sub_1DA934388()
{
  v1 = *(sub_1DA9401F4() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DA92F1D8(v2, v3, v4);
}

uint64_t sub_1DA9343EC()
{
  v1 = *(sub_1DA9401F4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v5 = (v3 + *(v4 + 80) + 9) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DA92F620(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), v0 + v5, *(v0 + v6), *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1DA934524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7660;

  return sub_1DA81F0DC(a1, v4, v5, v6, v7);
}

uint64_t sub_1DA9345E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA934684(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA934710(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(a1(0) - 8);
  v8 = *(v2 + v6);
  v9 = v2 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return a2(v2 + v5, v8, v9);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1DA9401F4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DA934918(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1DA9349B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DA934A20(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1DA932E58(a1, v1 + v4, v6, v7);
}

uint64_t sub_1DA934AC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7470;

  return sub_1DA81F0DC(a1, v4, v5, v6, v7);
}

uint64_t sub_1DA934B8C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_1DA933434(v5, v0 + v2, v6, v7);
}

uint64_t sub_1DA934C78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD78C8, &unk_1DA965C38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1DA934D7C()
{
  v15 = sub_1DA940FC4();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940F74();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DA940854();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v14 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue;
  v13[1] = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v15);
  v8 = sub_1DA941004();
  v9 = v16;
  *&v16[v14] = v8;
  *&v9[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection] = 0;
  v10 = v9;
  v11 = type metadata accessor for NotificationSystemServiceClient();
  v17.receiver = v10;
  v17.super_class = v11;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1DA93503C()
{
  v1 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DA9374D8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1DA8D2794;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7B8000;
  aBlock[3] = &block_descriptor_74;
  v4 = _Block_copy(aBlock);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {

    v8.receiver = v6;
    v8.super_class = type metadata accessor for NotificationSystemServiceClient();
    return objc_msgSendSuper2(&v8, sel_dealloc);
  }

  return result;
}

uint64_t sub_1DA93522C@<X0>(void *a1@<X8>)
{
  result = sub_1DA936478(0xD000000000000021, 0x80000001DA955150);
  if (result)
  {
    v3 = result;
    v4 = sub_1DA940A04();
    v5 = [v3 badgeNumberForBundleIdentifier_];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1DA9352DC@<X0>(uint64_t a1@<X1>, unsigned __int8 *a2@<X8>)
{
  result = sub_1DA936478(0xD000000000000026, 0x80000001DA957710);
  if (result)
  {
    v5 = result;
    v6 = sub_1DA940A04();
    v7 = [v5 setBadgeNumber:a1 forBundleIdentifier:v6];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1DA93538C@<X0>(void *a1@<X2>, unsigned __int8 *a2@<X8>)
{
  result = sub_1DA936478(0xD000000000000026, 0x80000001DA9576E0);
  if (result)
  {
    v5 = result;
    if (a1)
    {
      a1 = sub_1DA940A04();
    }

    v6 = sub_1DA940A04();
    v7 = [v5 setBadgeString:a1 forBundleIdentifier:v6];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DA935488()
{
  v0 = sub_1DA936478(0xD000000000000038, 0x80000001DA957660);
  if (v0)
  {
    v1 = v0;
    sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
    v2 = sub_1DA940BD4();
    v3 = sub_1DA940A04();
    [v1 notificationRepositoryDidPerformUpdates:v2 forBundleIdentifier:v3];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1DA935578(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DA9407F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DA940854();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1DA9374A0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_80;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_1DA940824();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void sub_1DA935848()
{
  v0 = sub_1DA936478(0xD00000000000003BLL, 0x80000001DA957740);
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DA940A04();
    [v1 categoryRepositoryDidChangeCategoriesForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1DA935988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v10 = sub_1DA9407F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DA940854();
  v15 = *(v27 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);
  v21 = v6;

  sub_1DA940824();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v27);
}

void sub_1DA935C58()
{
  v0 = sub_1DA936478(0xD00000000000003BLL, 0x80000001DA957620);
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DA940BD4();
    v3 = sub_1DA940A04();
    [v1 removeNotificationRecordsForIdentifiers:v2 bundleIdentifier:v3];
    swift_unknownObjectRelease();
  }
}

void sub_1DA935DBC(uint64_t *a1@<X8>)
{
  v2 = sub_1DA936478(0xD000000000000023, 0x80000001DA955030);
  if (v2)
  {
    v3 = [v2 allBundleIdentifiersForCategories];
    v4 = sub_1DA940BE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
}

uint64_t sub_1DA935F18@<X0>(void *a1@<X8>)
{
  result = sub_1DA936478(0xD000000000000029, 0x80000001DA955000);
  if (result)
  {
    v3 = result;
    v4 = sub_1DA940A04();
    v5 = sub_1DA940A04();
    v6 = [v3 categoryForIdentifier:v4 bundleIdentifier:v5];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

void sub_1DA9360CC(uint64_t *a1@<X8>)
{
  v2 = sub_1DA936478(0xD000000000000020, 0x80000001DA954FD0);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DA940A04();
    v5 = [v3 categoriesForBundleIdentifier_];

    sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v6 = sub_1DA940BE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v6;
}

void sub_1DA9362BC()
{
  v0 = sub_1DA936478(0xD000000000000025, 0x80000001DA954FA0);
  if (v0)
  {
    v1 = v0;
    sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v2 = sub_1DA940BD4();
    v3 = sub_1DA940A04();
    [v1 setCategories:v2 forBundleIdentifier:v3];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1DA936478(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DA9408C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = sub_1DA9408F4();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  v12 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection;
  v13 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection);
  if (v13)
  {
    if ([v13 remoteTarget])
    {
      sub_1DA941154();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28 = v26;
    v29 = v27;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  sub_1DA89667C(&v28, &v26);
  v14 = *(&v27 + 1);
  sub_1DA896614(&v26);
  if (!v14)
  {
    sub_1DA9372AC();
    sub_1DA9367F4();
    v15 = *(v2 + v12);
    if (v15 && [v15 remoteTarget])
    {
      sub_1DA941154();
      swift_unknownObjectRelease();
      sub_1DA896614(&v28);
      v16 = v26;
      v17 = v27;
    }

    else
    {
      sub_1DA896614(&v28);
      v16 = 0uLL;
      v17 = 0uLL;
    }

    v28 = v16;
    v29 = v17;
  }

  sub_1DA89667C(&v28, &v26);
  if (*(&v27 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD78F0, qword_1DA965CD8);
    if (swift_dynamicCast())
    {
      v18 = v25[1];
      sub_1DA896614(&v28);
      return v18;
    }
  }

  else
  {
    sub_1DA896614(&v26);
  }

  if (qword_1EE115AA0 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v20 = sub_1DA9405A4();
  __swift_project_value_buffer(v20, qword_1EE11B068);

  v21 = sub_1DA940584();
  v22 = sub_1DA940F14();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v26 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1DA7AE6E8(a1, a2, &v26);
    _os_log_impl(&dword_1DA7A9000, v21, v22, "No remote target for %s in system service client", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12739F0](v24, -1, -1);
    MEMORY[0x1E12739F0](v23, -1, -1);
  }

  sub_1DA896614(&v28);
  return 0;
}

void sub_1DA9367F4()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1DA9408F4();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection;
  if (*&v0[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection])
  {
    return;
  }

  v9 = objc_opt_self();
  v10 = [v9 machServiceName];
  if (!v10)
  {
    sub_1DA940A14();
    v10 = sub_1DA940A04();
  }

  v1 = [v9 serviceInterface];
  v11 = [v1 identifier];
  if (!v11)
  {
    sub_1DA940A14();
    v11 = sub_1DA940A04();
  }

  v12 = [objc_opt_self() endpointForMachName:v10 service:v11 instance:0];

  if (v12)
  {
    v13 = [objc_opt_self() connectionWithEndpoint_];
    v14 = *&v0[v8];
    *&v0[v8] = v13;
    v15 = v13;

    if (v15)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      *(v16 + 24) = v0;
      v17 = swift_allocObject();
      v18 = sub_1DA9373E0;
      *(v17 + 16) = sub_1DA9373E0;
      *(v17 + 24) = v16;
      aBlock[4] = sub_1DA7AF9C8;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA88419C;
      aBlock[3] = &block_descriptor_29;
      v19 = _Block_copy(aBlock);
      v20 = v1;
      v21 = v0;

      [v15 configureConnection_];

      _Block_release(v19);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      v18 = 0;
    }

    v27 = *&v0[v8];
    [v27 activate];

    sub_1DA898558(v18);
    return;
  }

LABEL_11:
  if (qword_1EE115AA0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11B068);
  v24 = sub_1DA940584();
  v25 = sub_1DA940F14();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DA7A9000, v24, v25, "No endpoint in system service client", v26, 2u);
    MEMORY[0x1E12739F0](v26, -1, -1);
  }
}

void sub_1DA936C48(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_1DA9373E8;
  v16 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1DA7B00D0;
  v14 = &block_descriptor_23_0;
  v8 = _Block_copy(&v11);

  [a1 setInterruptionHandler_];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_1DA9373F0;
  v16 = v9;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1DA7B00D0;
  v14 = &block_descriptor_27_2;
  v10 = _Block_copy(&v11);

  [a1 setInvalidationHandler_];
  _Block_release(v10);
}

uint64_t sub_1DA936E3C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v2 = sub_1DA9405A4();
    __swift_project_value_buffer(v2, qword_1EE11B068);
    v3 = sub_1DA940584();
    v4 = sub_1DA940EF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DA7A9000, v3, v4, "System service client connection is interrupted", v5, 2u);
      MEMORY[0x1E12739F0](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1DA9374D8;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1DA8D2794;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7B8000;
    aBlock[3] = &block_descriptor_46_2;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    dispatch_sync(v6, v9);

    _Block_release(v9);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DA937074()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v2 = sub_1DA9405A4();
    __swift_project_value_buffer(v2, qword_1EE11B068);
    v3 = sub_1DA940584();
    v4 = sub_1DA940EF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DA7A9000, v3, v4, "System service client connection is invalidated", v5, 2u);
      MEMORY[0x1E12739F0](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1DA9373F8;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1DA82B5F8;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7B8000;
    aBlock[3] = &block_descriptor_36_0;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    dispatch_sync(v6, v9);

    _Block_release(v9);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1DA9372AC()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1DA9408F4();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection;
    [*(v0 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection) invalidate];
    v9 = *(v0 + v8);
    *(v0 + v8) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1DA93741C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DA9362BC();
}

void sub_1DA937428()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DA935C58();
}

void sub_1DA937434()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DA935488();
}

void sub_1DA937440(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1DA9360CC(a1);
}

uint64_t sub_1DA937460@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1DA935F18(a1);
}

void sub_1DA9374A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DA935848();
}

void sub_1DA93752C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v19 = a1;
    if ([v19 remoteNotificationsSetting] == 1)
    {
      if (qword_1ECBD4810 != -1)
      {
        swift_once();
      }

      v7 = sub_1DA9405A4();
      __swift_project_value_buffer(v7, qword_1ECBD7910);

      v8 = sub_1DA940584();
      v9 = sub_1DA940F34();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136380675;
        *(v10 + 4) = sub_1DA7AE6E8(a2, a3, &v20);
        _os_log_impl(&dword_1DA7A9000, v8, v9, "Reaping notifications for %{private}s; app setting was disabled", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x1E12739F0](v11, -1, -1);
        MEMORY[0x1E12739F0](v10, -1, -1);
      }

      v12 = *__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
      sub_1DA937828(a2, a3, 0);
    }
  }

  else
  {
    if (qword_1ECBD4810 != -1)
    {
      swift_once();
    }

    v13 = sub_1DA9405A4();
    __swift_project_value_buffer(v13, qword_1ECBD7910);

    v14 = sub_1DA940584();
    v15 = sub_1DA940F34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_1DA7AE6E8(a2, a3, &v20);
      _os_log_impl(&dword_1DA7A9000, v14, v15, "Reaping notifications for %{private}s; app settings were cleared", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E12739F0](v17, -1, -1);
      MEMORY[0x1E12739F0](v16, -1, -1);
    }

    v18 = *__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    sub_1DA937828(a2, a3, 1);
  }
}

void sub_1DA937828(uint64_t a1, unint64_t a2, char a3)
{
  if (qword_1ECBD4810 != -1)
  {
    swift_once();
  }

  v7 = sub_1DA9405A4();
  __swift_project_value_buffer(v7, qword_1ECBD7910);

  v8 = sub_1DA940584();
  v9 = sub_1DA940F34();

  if (os_log_type_enabled(v8, v9))
  {
    v31 = a3;
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v10 = 136315394;
    v11 = a2;
    v12 = a1;
    v13 = [*(v3 + 16) description];
    v14 = sub_1DA940A14();
    v16 = v15;

    a1 = v12;
    a2 = v11;
    v17 = sub_1DA7AE6E8(v14, v16, &v33);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1DA7AE6E8(a1, v11, &v33);
    _os_log_impl(&dword_1DA7A9000, v8, v9, "Telling repository (%s) to remove all notifications for %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v30, -1, -1);
    v18 = v10;
    a3 = v31;
    MEMORY[0x1E12739F0](v18, -1, -1);
  }

  v19 = *(v3 + 16);
  if ([v19 respondsToSelector_])
  {
    v20 = sub_1DA940A04();
    [v19 removeAllNotificationRecordsForBundleIdentifierSync_];
  }

  if (a3)
  {

    v21 = sub_1DA940584();
    v22 = sub_1DA940F34();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315394;
      v25 = [v19 description];
      v26 = sub_1DA940A14();
      v28 = v27;

      v29 = sub_1DA7AE6E8(v26, v28, &v33);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1DA7AE6E8(a1, a2, &v33);
      _os_log_impl(&dword_1DA7A9000, v21, v22, "Telling repository (%s) to remove notifications store for %s.", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v24, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
    }

    v32 = sub_1DA940A04();
    [v19 removeStoreForBundleIdentifier_];
  }
}

uint64_t sub_1DA937C14()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD7910);
  __swift_project_value_buffer(v0, qword_1ECBD7910);
  return sub_1DA940594();
}

uint64_t sub_1DA937C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DA88B520;

  return v13(a1, a2, a3, a4);
}

void *sub_1DA937DC8()
{
  v1 = v0;
  v2 = sub_1DA940694();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1DA940FC4();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940F74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1DA940854();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  sub_1DA7AC344();
  sub_1DA940834();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1DA82B600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA82B658();
  sub_1DA9411D4();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8098], v31);
  v13 = sub_1DA941004();
  v0[5] = v13;
  v14 = v13;
  sub_1DA940684();
  swift_allocObject();
  swift_weakInit();
  v15 = sub_1DA940734();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1DA940714();
  v19 = v0[4];
  v0[4] = v18;

  if (v0[4])
  {
    v20 = v0[4];

    sub_1DA940724();
  }

  if (qword_1EE114E68 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11AFD0);

  v22 = sub_1DA940584();
  v23 = sub_1DA940EF4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v24 = 136315394;
    v33 = v1;
    type metadata accessor for ToolServiceListener();

    v26 = sub_1DA940A74();
    v28 = sub_1DA7AE6E8(v26, v27, &v34);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1DA7AE6E8(0xD000000000000020, 0x80000001DA953210, &v34);
    _os_log_impl(&dword_1DA7A9000, v22, v23, "Starting up %s serviceName: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v25, -1, -1);
    MEMORY[0x1E12739F0](v24, -1, -1);
  }

  return v1;
}

uint64_t sub_1DA9383E8()
{
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1DA9406B4();
}

double sub_1DA9384A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v31 = sub_1DA940754();
  *(&v31 + 1) = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v8 = [objc_allocWithZone(MEMORY[0x1E698E620]) initWithAuditToken_];
  v9 = [v8 unc_applicationIdentifier];
  v10 = sub_1DA940A14();
  v12 = v11;

  v13 = qword_1F5631508 == v10 && off_1F5631510 == v12;
  if (v13 || (sub_1DA941684() & 1) != 0 || (qword_1F5631518 == v10 ? (v14 = off_1F5631520 == v12) : (v14 = 0), v14 || (sub_1DA941684() & 1) != 0 || qword_1F5631528 == v10 && off_1F5631530 == v12 || (sub_1DA941684() & 1) != 0))
  {

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1DA938818(a1);
    }
  }

  else
  {

    if (qword_1EE114E68 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE11AFD0);
    v8 = v8;
    v17 = sub_1DA940584();
    v18 = sub_1DA940F14();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v31 = v20;
      *v19 = 136315394;
      v21 = v8;
      v22 = [v21 description];
      v23 = sub_1DA940A14();
      v25 = v24;

      v26 = sub_1DA7AE6E8(v23, v25, &v31);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2082;
      v27 = MEMORY[0x1E1271CD0](&unk_1F56314E8, MEMORY[0x1E69E6158]);
      v29 = sub_1DA7AE6E8(v27, v28, &v31);

      *(v19 + 14) = v29;
      _os_log_impl(&dword_1DA7A9000, v17, v18, "[%s] Missing entitlement. Must be one of verified clients: '%{public}s'", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v20, -1, -1);
      MEMORY[0x1E12739F0](v19, -1, -1);
    }

    v31 = xmmword_1DA965DA0;
    LOBYTE(v32) = -126;
    sub_1DA939EB4();
    sub_1DA940784();
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1DA938818(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA9407A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  sub_1DA939F08();
  sub_1DA940794();
  v35 = v33[0];
  v36 = v33[1];
  v37 = v33[2];
  v38 = v34;
  if (qword_1EE114E68 != -1)
  {
    swift_once();
  }

  v12 = sub_1DA9405A4();
  __swift_project_value_buffer(v12, qword_1EE11AFD0);
  sub_1DA939F5C(&v35, v33);
  v13 = sub_1DA940584();
  v14 = sub_1DA940F14();
  sub_1DA939FB8(&v35);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = v11;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = a1;
    v30 = v17;
    *&v33[0] = v17;
    *v16 = 136315138;
    v18 = sub_1DA9292B4();
    v20 = sub_1DA7AE6E8(v18, v19, v33);

    *(v16 + 4) = v20;
    v2 = v1;
    v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    _os_log_impl(&dword_1DA7A9000, v13, v14, "KTH_DEBUG: request: '%s'", v16, 0xCu);
    v21 = v30;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v22 = v21;
    a1 = v32;
    MEMORY[0x1E12739F0](v22, -1, -1);
    v23 = v16;
    v11 = v31;
    MEMORY[0x1E12739F0](v23, -1, -1);
  }

  v24 = sub_1DA940D34();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  (*(v5 + 16))(v7, a1, v4);
  v25 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = v36;
  *(v26 + 32) = v35;
  *(v26 + 48) = v27;
  *(v26 + 64) = v37;
  *(v26 + 80) = v38;
  *(v26 + 88) = v2;
  (*(v5 + 32))(v26 + v25, v7, v4);

  sub_1DA8DB00C(0, 0, v11, &unk_1DA965E30, v26);
}

uint64_t sub_1DA938BE8()
{
  sub_1DA7C5714(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA938C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a6;
  v8 = swift_task_alloc();
  *(v6 + 96) = v8;
  *v8 = v6;
  v8[1] = sub_1DA938CFC;

  return sub_1DA939060(a5);
}

uint64_t sub_1DA938CFC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 96);
  v8 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  if (v2)
  {
    v6 = sub_1DA938F68;
  }

  else
  {
    v6 = sub_1DA938E14;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DA938E14()
{
  if (qword_1EE114E68 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE11AFD0);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "KTH_DEBUG: got response", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);

  *(v0 + 40) = v6;
  *(v0 + 48) = v5;
  *(v0 + 56) = 0;
  sub_1DA939EB4();
  sub_1DA940784();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DA938F68()
{
  v1 = *(v0 + 120);
  *(v0 + 64) = 0;
  v2 = *(v0 + 88);
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
  sub_1DA941494();
  v3 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 24) = v3;
  *(v0 + 32) = 0x80;
  sub_1DA939EB4();
  sub_1DA940784();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DA939060(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DA939128, 0, 0);
}

uint64_t sub_1DA939128()
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = v0[11];
  v2 = *v1;
  v3 = *(v1 + 1) | ((*(v1 + 5) | (v1[7] << 16)) << 32);
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = v1[48];
  if (v8 <= 1)
  {
    if (v1[48])
    {
      v34 = swift_task_alloc();
      v0[14] = v34;
      *v34 = v0;
      v34[1] = sub_1DA9398F0;
      v35 = *MEMORY[0x1E69E9840];

      return sub_1DA8D9EC0(v2 | (v3 << 8), v4, v5, v6);
    }

    else
    {
      v18 = *(v1 + 5);
      v19 = swift_task_alloc();
      v0[13] = v19;
      *v19 = v0;
      v19[1] = sub_1DA93974C;
      v20 = *MEMORY[0x1E69E9840];

      return sub_1DA8D9020(v2 | (v3 << 8), v4, v5, v6, v7, v18);
    }
  }

  else if (v8 == 2)
  {
    v22 = swift_task_alloc();
    v0[15] = v22;
    *v22 = v0;
    v22[1] = sub_1DA939A74;
    v23 = *MEMORY[0x1E69E9840];

    return sub_1DA8DA7F0(v2 & 1, v4, v5, v6, v7);
  }

  else
  {
    if (v8 == 3)
    {
      v9 = objc_opt_self();
      v10 = sub_1DA93F994();
      v0[8] = 0;
      v11 = [v9 JSONObjectWithData:v10 options:0 error:v0 + 8];

      v12 = v0[8];
      if (v11)
      {
        v13 = v12;
        sub_1DA941154();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7938, &qword_1DA965E48);
        if (swift_dynamicCast())
        {
          v14 = v0[9];
          v15 = v0[10];

          Strong = swift_unknownObjectWeakLoadStrong();
          sub_1DA88B74C();
          swift_allocError();
          if (Strong)
          {
            *v17 = 0xD000000000000025;
            *(v17 + 8) = 0x80000001DA957900;
            *(v17 + 16) = 0;
            swift_willThrow();
            swift_unknownObjectRelease();
LABEL_27:
            v38 = v0[12];

            v39 = v0[1];
            v40 = *MEMORY[0x1E69E9840];

            return v39();
          }

          *v17 = 0xD000000000000024;
          *(v17 + 8) = 0x80000001DA9578D0;
          *(v17 + 16) = 0;
        }

        else
        {
          sub_1DA88B74C();
          swift_allocError();
          *v37 = 0xD000000000000026;
          *(v37 + 8) = 0x80000001DA9578A0;
          *(v37 + 16) = 0;
        }
      }

      else
      {
        v36 = v12;
        sub_1DA93F8C4();
      }

      swift_willThrow();
      goto LABEL_27;
    }

    if (qword_1EE112A90 != -1)
    {
      swift_once();
    }

    v24 = v0[12];
    v25 = sub_1DA940D34();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v27 = sub_1DA84FB34(0, 0, v24, &unk_1DA965E50, v26);
    v0[16] = v27;
    v28 = *(MEMORY[0x1E69E86A8] + 4);
    v29 = swift_task_alloc();
    v0[17] = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
    *v29 = v0;
    v29[1] = sub_1DA939C18;
    v31 = *MEMORY[0x1E69E9840];
    v32 = MEMORY[0x1E69E6158];
    v33 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 6, v27, v32, v30, v33);
  }
}

uint64_t sub_1DA93974C()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 96);

    v6 = *(v4 + 8);
    v7 = *MEMORY[0x1E69E9840];

    return v6();
  }

  else
  {
    v9 = *(v2 + 96);

    v10 = *(v4 + 8);
    v11 = *MEMORY[0x1E69E9840];

    return v10(0xD00000000000001DLL, 0x80000001DA957960);
  }
}

uint64_t sub_1DA9398F0(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 112);
  v15 = *v3;

  v8 = *(v6 + 96);

  v11 = *(v15 + 8);
  v12 = *MEMORY[0x1E69E9840];
  if (!v2)
  {
    v9 = a1;
    v10 = a2;
  }

  return v11(v9, v10);
}

uint64_t sub_1DA939A74()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 96);

    v6 = *(v4 + 8);
    v7 = *MEMORY[0x1E69E9840];

    return v6();
  }

  else
  {
    v9 = *(v2 + 96);

    v10 = *(v4 + 8);
    v11 = *MEMORY[0x1E69E9840];

    return v10(0xD000000000000020, 0x80000001DA957930);
  }
}

uint64_t sub_1DA939C18()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);

  if (v0)
  {
    v6 = sub_1DA939E1C;
  }

  else
  {
    v6 = sub_1DA939D78;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DA939D78()
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[12];

  v4 = v0[1];
  v5 = *MEMORY[0x1E69E9840];

  return v4(v2, v1);
}

uint64_t sub_1DA939E1C()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[18];
  v2 = v0[12];

  v3 = v0[1];
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

unint64_t sub_1DA939EB4()
{
  result = qword_1ECBD7928;
  if (!qword_1ECBD7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7928);
  }

  return result;
}

unint64_t sub_1DA939F08()
{
  result = qword_1ECBD7930;
  if (!qword_1ECBD7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7930);
  }

  return result;
}

uint64_t sub_1DA93A00C(uint64_t a1)
{
  v4 = *(sub_1DA9407A4() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7470;

  return sub_1DA938C5C(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

uint64_t sub_1DA93A108(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DA7B7470;

  return sub_1DA8A1FD8(a1);
}

uint64_t sub_1DA93A1DC(uint64_t *a1)
{
  v16 = a1;
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DA940854();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 16);
  sub_1DA7BABAC(a1, v20);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  sub_1DA7B9FAC(v20, v12 + 24);
  aBlock[4] = sub_1DA93AB0C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_30;
  v13 = _Block_copy(aBlock);

  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v7, v13);
  _Block_release(v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

void *sub_1DA93A4C0()
{
  type metadata accessor for NotificationSettingsManager();
  v0 = swift_allocObject();
  result = sub_1DA93A7A0();
  qword_1EE11AE98 = v0;
  return result;
}

uint64_t sub_1DA93A558(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + 24), a2);
  return swift_endAccess();
}

void sub_1DA93A5AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  sub_1DA7BABAC(a1 + 24, v13);
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10 = (*(v9 + 8))(a2, a3, v8, v9);
  if (v10)
  {
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v13);
    v12 = [v11 sourceSettings];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v12 = 0;
  }

  *a4 = v12;
}

uint64_t sub_1DA93A698@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  sub_1DA7BABAC(a1 + 24, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 16))(v4, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  *a2 = v6;
  return result;
}

uint64_t sub_1DA93A73C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void *sub_1DA93A7A0()
{
  v1 = v0;
  v15 = sub_1DA940FC4();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1DA940854();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DA7AC344();
  v14[0] = "queue_settingsProvider";
  v14[1] = v10;
  sub_1DA940824();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v15);
  v0[2] = sub_1DA941004();
  v11 = type metadata accessor for NotificationGroupServiceSettingsDefaultProvider();
  v12 = swift_allocObject();
  v1[6] = v11;
  v1[7] = &off_1F5636A10;
  v1[3] = v12;
  return v1;
}

uint64_t sub_1DA93AA1C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
  sub_1DA940FE4();
  return v3;
}

uint64_t sub_1DA93AA98()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B98, &unk_1DA95CCF0);
  sub_1DA940FE4();
  return v3;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1DA93AD5C()
{
  result = sub_1DA9401F4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NotificationPipelineRequestLogger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1DA93AE54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DA93AEB0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void sub_1DA93AF40()
{
  sub_1DA93AFB8();
  if (v0 <= 0x3F)
  {
    sub_1DA93B068();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DA93AFB8()
{
  if (!qword_1EE1122B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60B8, &unk_1DA95DFD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60B0, &unk_1DA95DFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60A8, &unk_1DA963DC0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE1122B0);
    }
  }
}

void sub_1DA93B068()
{
  if (!qword_1EE110B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60B0, &unk_1DA95DFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60A8, &unk_1DA963DC0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE110B58);
    }
  }
}

uint64_t sub_1DA93B0FC()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA7BD450, 0, 0);
}

uint64_t sub_1DA93B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_timerLock);
    os_unfair_lock_lock((v12 + 24));
    [*(v12 + 16) invalidate];
    v13 = *(v12 + 16);
    *(v12 + 16) = 0;

    os_unfair_lock_unlock((v12 + 24));
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1DA941364();
    MEMORY[0x1E1271BD0](0x2074756F656D6954, 0xEB0000000020666FLL);
    sub_1DA941844();
    sub_1DA941844();
    sub_1DA940E74();
    MEMORY[0x1E1271BD0](0xD00000000000001ALL, 0x80000001DA957B30);
    sub_1DA7BAA9C(v25, v26);

    if (*(v11 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_work))
    {
      v14 = *(v11 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_work);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
      sub_1DA940DE4();
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60C0, &unk_1DA965C60);
    v16 = *(v15 + 48);
    v17 = *(v15 + 64);
    *v9 = a3;
    *(v9 + 1) = a4;
    v18 = *MEMORY[0x1E69DF1C8];
    v19 = sub_1DA9402D4();
    v20 = *(v19 - 8);
    (*(v20 + 104))(&v9[v16], v18, v19);
    (*(v20 + 56))(&v9[v16], 0, 1, v19);
    v21 = *MEMORY[0x1E69DF1F8];
    v22 = sub_1DA9402E4();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v9[v17], v21, v22);
    (*(v23 + 56))(&v9[v17], 0, 1, v22);
    type metadata accessor for StepFailure(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DA7BD6AC(v9);

    return sub_1DA7BD644(v9);
  }

  return result;
}

uint64_t sub_1DA93B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA93B698(v5, v7);
  v8 = sub_1DA940A74();
  v10 = v9;
  sub_1DA93B698(a2, v7);
  if (v8 == sub_1DA940A74() && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DA941684();
  }

  return v13 & 1;
}

uint64_t sub_1DA93B698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepFailure(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA93B71C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DA93B778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DA93B7DC(void *a1, uint64_t a2, int a3)
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000025, 0x80000001DA957C50);
  if (a1)
  {
    [a1 length];
    v6 = sub_1DA941614();
    v8 = v7;
  }

  else
  {
    v6 = 7104878;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1E1271BD0](v6, v8);

  MEMORY[0x1E1271BD0](0x69726F697270202CLL, 0xEC000000203A7974);
  v9 = 1702195828;
  if ((a2 & 1) == 0)
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  if (a2)
  {
    v10 = 0xE400000000000000;
  }

  if (a2 == 2)
  {
    v11 = 7104878;
  }

  else
  {
    v11 = v9;
  }

  if (a2 == 2)
  {
    v12 = 0xE300000000000000;
  }

  else
  {
    v12 = v10;
  }

  MEMORY[0x1E1271BD0](v11, v12);

  MEMORY[0x1E1271BD0](0xD000000000000011, 0x80000001DA957C80);
  v13 = sub_1DA93B9B8(SHIDWORD(a2));
  MEMORY[0x1E1271BD0](v13);

  MEMORY[0x1E1271BD0](0xD000000000000012, 0x80000001DA957CA0);
  v14 = sub_1DA93B9B8(a3);
  MEMORY[0x1E1271BD0](v14);

  return 0;
}

uint64_t sub_1DA93B9B8(int a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0x656C74746F726874;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x4465727574616566;
      }

      goto LABEL_12;
    }

    return 0x626967696C656E69;
  }

  else
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x64656C696166;
      }

LABEL_12:
      sub_1DA941364();

      v2 = sub_1DA941614();
      MEMORY[0x1E1271BD0](v2);

      return 0x656C646E61686E75;
    }

    return 0x6564656563637573;
  }
}

BOOL sub_1DA93BB68(void *a1, unint64_t a2, int a3, void *a4, unint64_t a5, int a6)
{
  if (!a1)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  v11 = a1;
  sub_1DA93BC4C();
  v12 = a4;
  v13 = v11;
  LOBYTE(v11) = sub_1DA941114();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  if (a2 == 2)
  {
    result = 0;
    if (a5 != 2)
    {
      return result;
    }

    goto LABEL_11;
  }

  result = 0;
  if (a5 != 2 && ((a5 ^ a2) & 1) == 0)
  {
LABEL_11:
    if (HIDWORD(a2) == HIDWORD(a5))
    {
      return a3 == a6;
    }
  }

  return result;
}

unint64_t sub_1DA93BC4C()
{
  result = qword_1ECBD7940;
  if (!qword_1ECBD7940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBD7940);
  }

  return result;
}

void UNCIsEntitledConnection_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_ERROR, "Entitlement '%{public}@' for capability '%{public}@' is not valid because it is not an NSArray", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}