uint64_t sub_1DA881AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA881B60, 0, 0);
}

uint64_t sub_1DA881B60()
{
  v1 = *(v0[8] + 16);
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[9];
    swift_beginAccess();
    v0[12] = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1DA881E04, v1, 0);
  }

  else
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v3 = v0[9];
    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1EE11AFA0);

    v5 = sub_1DA940584();
    v6 = sub_1DA940F14();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[9];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      swift_beginAccess();
      v10 = *(v8 + 16);
      if (v10 >> 62)
      {
        if (v10 < 0)
        {
          v19 = *(v8 + 16);
        }

        v11 = sub_1DA941264();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v0[9];
      *(v9 + 4) = v11;

      _os_log_impl(&dword_1DA7A9000, v5, v6, "Dropping %ld inferences, notificationInferenceClient isn't set up", v9, 0xCu);
      MEMORY[0x1E12739F0](v9, -1, -1);
    }

    else
    {
      v13 = v0[9];
    }

    v14 = v0[10];
    v15 = sub_1DA940D34();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 9;
    sub_1DA8DB00C(0, 0, v14, &unk_1DA95D1C0, v16);

    v17 = v0[10];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1DA881E04()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  sub_1DA926CC4();

  return MEMORY[0x1EEE6DFA0](sub_1DA881E78, 0, 0);
}

uint64_t sub_1DA881E78()
{
  v1 = v0[11];

  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

char *sub_1DA881EE0(unint64_t a1)
{
  v2 = v1;
  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1EE11AFA0);

  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();
  v7 = a1 >> 62;
  v43 = a1;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v7)
    {
      v9 = sub_1DA941264();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&dword_1DA7A9000, v5, v6, "Handling group results: %ld", v8, 0xCu);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  else
  {
  }

  v46[3] = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v10 = a1;
    v11 = sub_1DA941264();
  }

  else
  {
    v10 = a1;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    if (v11 < 1)
    {
      __break(1u);
LABEL_38:
      v26 = sub_1DA941264();
      if (v26)
      {
        goto LABEL_22;
      }

LABEL_39:

      v29 = MEMORY[0x1E69E7CC0];
      v39 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v39)
      {
LABEL_42:

        return sub_1DA882390();
      }

LABEL_40:
      v40 = (v29 + 40);
      do
      {
        v41 = *(v40 - 1);
        v42 = *v40;
        swift_beginAccess();

        sub_1DA8A9058(v46, v41, v42);
        swift_endAccess();

        v40 += 2;
        --v39;
      }

      while (v39);
      goto LABEL_42;
    }

    v13 = 0;
    v14 = v10 & 0xC000000000000001;
    do
    {
      if (v14)
      {
        v23 = MEMORY[0x1E1272460](v13, v10);
      }

      else
      {
        v23 = *(v10 + 8 * v13 + 32);
      }

      v24 = v23;
      v25 = sub_1DA8E6198(v24);
      v16 = v15;
      v17 = v2;
      v18 = v25;
      v20 = v19;

      sub_1DA883024(v18, v20, v16 & 1);
      v21 = v18;
      v2 = v17;
      v22 = v20;
      v10 = v43;
      sub_1DA8839F4(v21, v22, v16 & 1);
      ++v13;
    }

    while (v11 != v13);
  }

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_20;
    }

LABEL_34:
  }

  if (sub_1DA941264() < 1)
  {
    goto LABEL_34;
  }

LABEL_20:
  if (v12 >> 62)
  {
    goto LABEL_38;
  }

  v26 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_39;
  }

LABEL_22:
  v45 = MEMORY[0x1E69E7CC0];
  result = sub_1DA82A778(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v44 = v2;
    v28 = 0;
    v29 = v45;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1E1272460](v28, v12);
      }

      else
      {
        v30 = *(v12 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = [v30 uniqueIdentifier];
      v33 = sub_1DA940A14();
      v35 = v34;

      v37 = *(v45 + 16);
      v36 = *(v45 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1DA82A778((v36 > 1), v37 + 1, 1);
      }

      ++v28;
      *(v45 + 16) = v37 + 1;
      v38 = v45 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
    }

    while (v26 != v28);

    v39 = *(v45 + 16);
    if (!v39)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA882390()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1DA9408F4();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v0 + 56))
  {
    return result;
  }

  result = swift_beginAccess();
  v9 = *(v0 + 48);
  if (!*(v9 + 16))
  {
    return result;
  }

  *(v0 + 56) = 1;
  *(v0 + 48) = MEMORY[0x1E69E7CD0];
  sub_1DA8E6760(&v26);
  v31 = v28;
  v25 = v27;
  v22 = v29;
  v23 = v30;
  v24 = v26;
  v10 = *(v9 + 16);
  if (!v10)
  {

    sub_1DA7BA120(&v31, &unk_1ECBD5C90, &unk_1DA95D190);
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v11 = sub_1DA8BF688(*(v9 + 16), 0);
  v12 = sub_1DA8BF88C(&v32, v11 + 4, v10, v9);
  result = sub_1DA830720();
  if (v12 != v10)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1DA7BA120(&v31, &unk_1ECBD5C90, &unk_1DA95D190);
LABEL_8:
  v32 = v26;
  v33 = v27;
  v34 = v11;
  v35 = v29;
  v36 = v30;
  v13 = swift_allocObject();
  swift_weakInit();

  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1DA883950;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1DA883950;
    *(v15 + 24) = v13;
    swift_retain_n();
  }

  else
  {
    sub_1DA836320();
    v16 = swift_allocError();
    sub_1DA882704(v16, 1);
  }

  v17 = v24;
  v18 = v25;
  v19 = v11;
  v20 = v22;
  v21 = v23;
  return sub_1DA88395C(&v17);
}

uint64_t sub_1DA882704(void *a1, char a2)
{
  v4 = sub_1DA9407F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940854();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20[1] = *(result + 32);
    v22 = result;
    v15 = swift_allocObject();
    v20[0] = v5;
    v21 = v9;
    v16 = v15;
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;
    v18 = a2 & 1;
    *(v17 + 32) = a2 & 1;
    aBlock[4] = sub_1DA8839CC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_9;
    v19 = _Block_copy(aBlock);

    sub_1DA8839D8(a1, v18);
    sub_1DA940824();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v13, v8, v19);
    _Block_release(v19);
    (*(v20[0] + 8))(v8, v4);
    (*(v10 + 8))(v13, v21);
  }

  return result;
}

uint64_t sub_1DA882A4C(uint64_t a1, unint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (a3)
    {
      if (qword_1EE114E00 == -1)
      {
LABEL_4:
        v7 = sub_1DA9405A4();
        __swift_project_value_buffer(v7, qword_1EE11AFA0);
        v8 = a2;
        v9 = sub_1DA940584();
        v10 = sub_1DA940F14();
        sub_1DA8839C0(a2, 1);
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          *&v35 = v12;
          *v11 = 136315138;
          swift_getErrorValue();
          v13 = sub_1DA941704();
          v15 = sub_1DA7AE6E8(v13, v14, &v35);

          *(v11 + 4) = v15;
          _os_log_impl(&dword_1DA7A9000, v9, v10, "Failed to re-fetch group summary item. error: '%s'.", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x1E12739F0](v12, -1, -1);
          MEMORY[0x1E12739F0](v11, -1, -1);
        }

LABEL_32:
        *(v6 + 56) = 0;
        sub_1DA882390();
      }

LABEL_24:
      swift_once();
      goto LABEL_4;
    }

    v32 = result;
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v16 = sub_1DA941264();
      if (v16)
      {
LABEL_9:
        v17 = 0;
        v18 = a2 & 0xC000000000000001;
        v19 = MEMORY[0x1E69E7CC0];
        v33 = a2;
        while (1)
        {
          if (v18)
          {
            v21 = MEMORY[0x1E1272460](v17, a2);
          }

          else
          {
            if (v17 >= *(v6 + 16))
            {
              goto LABEL_23;
            }

            v21 = *(a2 + 8 * v17 + 32);
          }

          v22 = v21;
          v23 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v37 = v21;
          sub_1DA882DBC(&v37, &v35);

          v24 = v36;
          if (v36 != 255)
          {
            v34 = v35;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_1DA88650C(0, *(v19 + 2) + 1, 1, v19);
            }

            v26 = *(v19 + 2);
            v25 = *(v19 + 3);
            if (v26 >= v25 >> 1)
            {
              v19 = sub_1DA88650C((v25 > 1), v26 + 1, 1, v19);
            }

            *(v19 + 2) = v26 + 1;
            v20 = &v19[24 * v26];
            *(v20 + 2) = v34;
            v20[48] = v24 & 1;
            a2 = v33;
          }

          ++v17;
          if (v23 == v16)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_9;
      }
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v27 = *(v19 + 2);
    if (v27)
    {
      v28 = v19 + 48;
      v6 = v32;
      do
      {
        v29 = *(v28 - 2);
        v30 = *(v28 - 1);
        v31 = *v28;
        v28 += 24;
        sub_1DA8839E4(v29, v30, v31);
        sub_1DA883024(v29, v30, v31);
        sub_1DA8839F4(v29, v30, v31);
        --v27;
      }

      while (v27);
    }

    else
    {

      v6 = v32;
    }

    goto LABEL_32;
  }

  return result;
}

void sub_1DA882DBC(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = [*a1 uniqueIdentifier];
  v6 = sub_1DA940A14();
  v8 = v7;

  v9 = v4;
  v10 = sub_1DA8E6198(v9);
  if (v2)
  {

    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v13 = sub_1DA9405A4();
    __swift_project_value_buffer(v13, qword_1EE11AFA0);

    v14 = v2;
    v15 = sub_1DA940584();
    v16 = sub_1DA940F14();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136446466;
      v19 = sub_1DA7AE6E8(v6, v8, &v27);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v20 = sub_1DA941704();
      v22 = sub_1DA7AE6E8(v20, v21, &v27);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1DA7A9000, v15, v16, "Could not create SpotlightGroupInferenceResult from re-fetched group summary item with identifier '%{public}s'. error: '%s'.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v18, -1, -1);
      MEMORY[0x1E12739F0](v17, -1, -1);
    }

    else
    {
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    v26 = -1;
  }

  else
  {
    v23 = v10;
    v24 = v11;
    v25 = v12;

    v26 = v25 & 1;
    *a2 = v23;
    *(a2 + 8) = v24;
  }

  *(a2 + 16) = v26;
}

uint64_t sub_1DA883024(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  v7 = *(v3 + 40);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = *(v3 + 40);

  for (i = 0; v10; result = )
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(v7 + 56) + ((v15 << 10) | (16 * v16));
    v19 = *v17;
    v18 = *(v17 + 8);

    v19(a1, a2, a3 & 1);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
    }

    v10 = *(v7 + 64 + 8 * v15);
    ++i;
    if (v10)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA883150()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8831CC(uint64_t a1)
{
  v2 = sub_1DA9407F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940854();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17[1] = *(result + 32);
    v19 = result;
    v13 = swift_allocObject();
    v17[0] = v3;
    v18 = v7;
    v14 = v13;
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    aBlock[4] = sub_1DA883A18;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_48;
    v16 = _Block_copy(aBlock);

    sub_1DA940824();
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v11, v6, v16);
    _Block_release(v16);
    (*(v17[0] + 8))(v6, v2);
    (*(v8 + 8))(v11, v18);
  }

  return result;
}

uint64_t sub_1DA8834FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_1DA8F0E70(0, 0, a2);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DA88358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  v8 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  sub_1DA90B540(a3, a4, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v11;
  return swift_endAccess();
}

void sub_1DA88362C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler + 8);

    v2(a1);

    sub_1DA7B5220(v2);
  }

  else
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE11AFA0);
    oslog = sub_1DA940584();
    v6 = sub_1DA940F14();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DA7A9000, oslog, v6, "SpotlightDaemonClient: No handler", v7, 2u);
      MEMORY[0x1E12739F0](v7, -1, -1);
    }
  }
}

id sub_1DA883840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightDaemonClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DA8838BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DA883904(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1DA8839C0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1DA8839D8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

id sub_1DA8839E4(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

void sub_1DA8839F4(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1DA883A30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DA7B7470;

  return sub_1DA928D40(a1, v5);
}

uint64_t sub_1DA883AE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7470;

  return sub_1DA881AC4(a1, v4, v5, v7, v6);
}

id sub_1DA883BC0(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v17 = sub_1DA940FC4();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940F74();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DA940854();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v16 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue;
  v11 = sub_1DA7AC344();
  v15[1] = "enerConfiguring>8";
  v15[2] = v11;
  sub_1DA940824();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v17);
  *&v2[v16] = sub_1DA941004();
  *&v2[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_listener] = 0;
  *&v2[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_connections] = MEMORY[0x1E69E7CC0];
  v12 = v19;
  *&v2[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_notificationRepository] = v18;
  *&v2[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_categoryRepository] = v12;
  v13 = type metadata accessor for NotificationCoreServiceListener();
  v20.receiver = v2;
  v20.super_class = v13;
  return objc_msgSendSuper2(&v20, sel_init);
}

void sub_1DA883E78()
{
  v1 = objc_opt_self();
  v2 = [v1 domain];
  if (!v2)
  {
    sub_1DA940A14();
    v2 = sub_1DA940A04();
  }

  v3 = sub_1DA940A14();
  v5 = v4;
  v6 = [v1 serviceInterface];
  v14[2] = v3;
  v14[3] = v5;
  v14[4] = MEMORY[0x1EEE9AC00](v6);
  v14[5] = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DA885474;
  *(v7 + 24) = v14;
  aBlock[4] = sub_1DA7AF9C8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA88419C;
  aBlock[3] = &block_descriptor_20_0;
  v8 = _Block_copy(aBlock);
  v9 = objc_opt_self();

  v10 = [v9 listenerWithConfigurator_];
  _Block_release(v8);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_listener);
    *(v0 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_listener) = v10;
    v12 = v10;

    [v12 activate];
    v13 = [objc_opt_self() activateManualDomain_];

    swift_unknownObjectRelease();
  }
}

id sub_1DA8840D4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_1DA940A04();
  [a1 setDomain_];

  v9 = [a4 identifier];
  if (!v9)
  {
    sub_1DA940A14();
    v9 = sub_1DA940A04();
  }

  [a1 setService_];

  return [a1 setDelegate_];
}

uint64_t sub_1DA88419C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_1DA884220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationCoreServiceListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DA8842F4(void *a1, uint64_t a2)
{
  v4 = [a1 remoteToken];
  v5 = sub_1DA940A04();
  v6 = [v4 hasEntitlement_];

  if (v6)
  {
    v7 = *(a2 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_notificationRepository);
    v8 = *(a2 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_categoryRepository);
    v9 = type metadata accessor for NotificationCoreServiceConnection();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_delegate + 8] = 0;
    v11 = swift_unknownObjectWeakInit();
    *&v10[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_connection] = a1;
    *&v10[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository] = v7;
    *&v10[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_categoryRepository] = v8;
    *(v11 + 8) = &off_1F5634C58;
    swift_unknownObjectWeakAssign();
    v28.receiver = v10;
    v28.super_class = v9;
    v12 = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = objc_msgSendSuper2(&v28, sel_init);
    sub_1DA91A2C4();
    v14 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_connections;
    swift_beginAccess();
    v15 = v13;
    MEMORY[0x1E1271CA0]();
    if (*((*(a2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((*(a2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1DA940C04();
    }

    sub_1DA940C14();
    swift_endAccess();
  }

  else
  {
    [a1 invalidate];
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE11B068);
    v17 = v4;
    oslog = sub_1DA940584();
    v18 = sub_1DA940F14();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315394;
      v21 = [v17 bundleID];
      if (v21)
      {
        v22 = v21;
        sub_1DA940A14();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
      v23 = sub_1DA940A74();
      v25 = sub_1DA7AE6E8(v23, v24, &v29);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1DA7AE6E8(0xD00000000000001FLL, 0x80000001DA95D1D0, &v29);
      _os_log_impl(&dword_1DA7A9000, oslog, v18, "Entitlement is missing. %s could not connect to %s.", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v20, -1, -1);
      MEMORY[0x1E12739F0](v19, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1DA884758(void *a1)
{
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA940854();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1DA884B04;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = a1;
  sub_1DA940824();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void sub_1DA884A1C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_connections;
  swift_beginAccess();
  v5 = a2;
  v6 = sub_1DA88501C((a1 + v4), v5);

  v7 = *(a1 + v4);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v9 = *(a1 + v4);
    }

    v8 = sub_1DA941264();
    if (v8 >= v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v6)
    {
LABEL_3:
      sub_1DA885378(v6, v8, sub_1DA84D398, sub_1DA8ED468);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1DA884B70(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DA941264();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1DA941394();
}

unint64_t sub_1DA884C54(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_1DA941264();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x1E1272460](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_1DA884D58(void *a1)
{
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA940854();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1DA885240;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_14_0;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = v1;
  sub_1DA940824();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_1DA88501C(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_1DA884C54(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1DA941264();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1DA941264())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = MEMORY[0x1E1272460](v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x1E1272460](v10, v7);
        v17 = MEMORY[0x1E1272460](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1DA884B70(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_1DA884B70(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_1DA941264();
}

uint64_t sub_1DA885274(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1DA885378(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1DA941264();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_1DA941264();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

void *sub_1DA885540@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DA88556C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t NotificationPublisherDestinations.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1DA7B6928(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1DA7B6928((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C6E4F646E756F73;
  *(v5 + 5) = 0xE900000000000079;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1DA7B6928((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x73656369746F6ELL;
    *(v8 + 5) = 0xE700000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1DA7B6928((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x657263536B636F6CLL;
    *(v11 + 5) = 0xEA00000000006E65;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1DA7B6928((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x7472656C61;
  *(v14 + 5) = 0xE500000000000000;
  if ((v1 & 0x40) == 0)
  {
LABEL_15:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_1DA7B6928((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 7496035;
  *(v17 + 5) = 0xE300000000000000;
  if ((v1 & 0x80) == 0)
  {
LABEL_16:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1DA7B6928((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x6E656B6F7073;
  *(v20 + 5) = 0xE600000000000000;
  if ((v1 & 0x100) == 0)
  {
LABEL_17:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_1DA7B6928((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x6964726177726F66;
  *(v23 + 5) = 0xEA0000000000676ELL;
  if ((v1 & 0x400) == 0)
  {
LABEL_18:
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_45:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1DA7B6928((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  strcpy(v26 + 32, "unreadNotices");
  *(v26 + 23) = -4864;
  if ((v1 & 0x10000) != 0)
  {
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
    }

    v28 = *(v2 + 2);
    v27 = *(v2 + 3);
    if (v28 >= v27 >> 1)
    {
      v2 = sub_1DA7B6928((v27 > 1), v28 + 1, 1, v2);
    }

    *(v2 + 2) = v28 + 1;
    v29 = &v2[16 * v28];
    *(v29 + 4) = 0x656469727265766FLL;
    *(v29 + 5) = 0xE800000000000000;
  }

LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7B6A38();
  v30 = sub_1DA9409C4();
  v32 = v31;

  MEMORY[0x1E1271BD0](v30, v32);

  MEMORY[0x1E1271BD0](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_1DA885B6C()
{
  result = qword_1ECBD5D98;
  if (!qword_1ECBD5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5D98);
  }

  return result;
}

unint64_t sub_1DA885BC4()
{
  result = qword_1ECBD5DA0;
  if (!qword_1ECBD5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5DA0);
  }

  return result;
}

unint64_t sub_1DA885C1C()
{
  result = qword_1ECBD5DA8;
  if (!qword_1ECBD5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5DA8);
  }

  return result;
}

unint64_t sub_1DA885C74()
{
  result = qword_1ECBD5DB0;
  if (!qword_1ECBD5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5DB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationPublisherDestinations(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NotificationPublisherDestinations(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void *sub_1DA885D94(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5690, &qword_1DA95B5F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD56A0, &qword_1DA95D470);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DA885EEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E40, &qword_1DA95D540);
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

void *sub_1DA886068(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DC8, &qword_1DA95D488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DA886204(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1DA8863EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E38, &qword_1DA95D538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DA88650C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DC0, &qword_1DA95D480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA886670(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1DA8867C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_1DA886938(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1DA886B14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DB8, &qword_1DA95D478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t IncomingSyncPayload.sectionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IncomingSyncPayload.sectionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IncomingSyncPayload.universalSectionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IncomingSyncPayload.universalSectionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IncomingSyncPayload.dismissalIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t IncomingSyncPayload.dismissalItemsDictionaries.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1DA886E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DA886EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA886F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DA7B7470;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DA8870D0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1DA941214();
    v5 = v4;
    v6 = sub_1DA9412B4();
    v8 = v7;
    v9 = MEMORY[0x1E1272310](v3, v5, v6, v7);
    sub_1DA8883BC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1DA8883BC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_1DA9411E4();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1DA887F6C(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1DA8883BC(v3, v5, v2 != 0);
  return v13;
}

void sub_1DA8871EC(uint64_t a1)
{
  v76[3] = *MEMORY[0x1E69E9840];
  v3 = sub_1DA887AB4();
  v4 = MEMORY[0x1E69E7CD0];
  v75 = MEMORY[0x1E69E7CD0];
  v72 = *(v1 + 16);
  v5 = [*(v72 + 16) accounts];
  if (v5)
  {
    v6 = v5;
    sub_1DA7AF3EC(0, &unk_1ECBD7180, 0x1E69A4828);
    sub_1DA888354();
    v4 = sub_1DA940E94();
  }

  v7 = sub_1DA8870D0(v4);

  if (v7)
  {
    v8 = IDSCopyIDForAccount();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1DA940A14();
      v12 = v11;

      sub_1DA8A9058(v76, v10, v12);
    }

    else
    {
    }
  }

  if (qword_1ECBD47D0 != -1)
  {
    swift_once();
  }

  v13 = sub_1DA9405A4();
  __swift_project_value_buffer(v13, qword_1ECBE3DE8);

  v14 = sub_1DA940584();
  v15 = sub_1DA940F34();

  v71 = a1;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v76[0] = v17;
    *v16 = 136315650;
    swift_beginAccess();

    v18 = sub_1DA940EA4();
    v20 = v19;

    v21 = sub_1DA7AE6E8(v18, v20, v76);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_1DA940EA4();
    v24 = sub_1DA7AE6E8(v22, v23, v76);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    v25 = sub_1DA940984();
    v27 = sub_1DA7AE6E8(v25, v26, v76);

    *(v16 + 24) = v27;
    _os_log_impl(&dword_1DA7A9000, v14, v15, "sending IDS message to cloudDestinations %s and localDestinations %s. Message: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v17, -1, -1);
    MEMORY[0x1E12739F0](v16, -1, -1);
  }

  swift_beginAccess();
  v28 = 0x1FA9D2000uLL;
  if (*(v75 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E50, &unk_1DA95D6E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA958370;
    v30 = *MEMORY[0x1E69A4790];
    *(inited + 32) = sub_1DA940A14();
    v31 = MEMORY[0x1E69E6370];
    *(inited + 40) = v32;
    *(inited + 72) = v31;
    *(inited + 48) = 0;
    v33 = *MEMORY[0x1E69A47D8];
    *(inited + 80) = sub_1DA940A14();
    *(inited + 88) = v34;
    *(inited + 120) = MEMORY[0x1E69E6530];
    *(inited + 96) = 172800;
    v35 = sub_1DA849034(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B8, &qword_1DA95B140);
    swift_arrayDestroy();
    sub_1DA859A10(a1);

    sub_1DA8A7BF4(v36);

    sub_1DA859CFC(v35);

    v74 = 0;
    v37 = *(v72 + 16);
    v38 = sub_1DA940964();

    v39 = sub_1DA940E84();

    v40 = sub_1DA940964();
    v28 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;

    v73 = 0;
    LODWORD(v37) = [v37 sendMessage:v38 toDestinations:v39 priority:100 options:v40 identifier:&v74 error:&v73];

    if (v37)
    {
      v41 = v74;
      v42 = v73;
      v43 = v41;
      if (!*(v3 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v51 = v73;
      v52 = sub_1DA93F8C4();

      swift_willThrow();
      v43 = v74;
      v53 = sub_1DA940F14();
      v54 = v52;
      v55 = sub_1DA940584();

      if (os_log_type_enabled(v55, v53))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        v58 = v52;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v59;
        *v57 = v59;
        _os_log_impl(&dword_1DA7A9000, v55, v53, "sending to cloud failed with error %@", v56, 0xCu);
        sub_1DA828378(v57);
        MEMORY[0x1E12739F0](v57, -1, -1);
        MEMORY[0x1E12739F0](v56, -1, -1);
      }

      else
      {
      }

      a1 = v71;
      v28 = 0x1FA9D2000;
      if (!*(v3 + 16))
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v43 = 0;
    if (!*(v3 + 16))
    {
LABEL_24:

      goto LABEL_26;
    }
  }

  v44 = sub_1DA888190(1);
  sub_1DA859A10(a1);
  sub_1DA8A7BF4(v3);

  sub_1DA859CFC(v44);

  v74 = v43;
  v45 = *(v72 + 16);
  v46 = sub_1DA940964();

  v47 = sub_1DA940E84();

  v48 = sub_1DA940964();

  v73 = 0;
  v49 = [v45 (v28 + 2296)];

  if (v49)
  {
    v50 = v73;
  }

  else
  {
    v60 = v73;
    v61 = sub_1DA93F8C4();

    swift_willThrow();
    v62 = v74;

    v63 = sub_1DA940F14();
    v64 = v61;
    v65 = sub_1DA940584();

    if (os_log_type_enabled(v65, v63))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      v68 = v61;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v69;
      *v67 = v69;
      _os_log_impl(&dword_1DA7A9000, v65, v63, "sending to local devices failed with error %@", v66, 0xCu);
      sub_1DA828378(v67);
      MEMORY[0x1E12739F0](v67, -1, -1);
      MEMORY[0x1E12739F0](v66, -1, -1);
    }

    else
    {
    }
  }

LABEL_26:
  v70 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DA887AB4()
{
  v1 = [*(*(v0 + 16) + 16) devices];
  if (v1)
  {
    v2 = v1;
    sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
    v3 = sub_1DA940BE4();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_30:
    v5 = sub_1DA941264();
    p_cb = &OBJC_PROTOCOL___UNOneTimeCodeServerProtocol.cb;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_31:
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  p_cb = &OBJC_PROTOCOL___UNOneTimeCodeServerProtocol.cb;
  if (!v5)
  {
    goto LABEL_31;
  }

LABEL_6:
  v7 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  v8 = v3 & 0xC000000000000001;
  v9 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
  v45 = v3 & 0xC000000000000001;
  v46 = v3;
  do
  {
    v10 = v7;
    while (1)
    {
      if (v8)
      {
        v11 = MEMORY[0x1E1272460](v10, v3);
      }

      else
      {
        if (v10 >= *(v4 + 16))
        {
          goto LABEL_29;
        }

        v11 = *(v3 + 8 * v10 + 32);
      }

      v12 = v11;
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (![v11 v9[438]])
      {
        if (*(p_cb + 250) != -1)
        {
          swift_once();
        }

        v14 = sub_1DA9405A4();
        __swift_project_value_buffer(v14, qword_1ECBE3DE8);
        v15 = v12;
        v12 = sub_1DA940584();
        v16 = sub_1DA940F34();

        if (os_log_type_enabled(v12, v16))
        {
          v17 = swift_slowAlloc();
          v18 = v5;
          v19 = v4;
          v20 = p_cb;
          v21 = swift_slowAlloc();
          *v17 = 138412290;
          *(v17 + 4) = v15;
          *v21 = v15;
          v22 = v15;
          _os_log_impl(&dword_1DA7A9000, v12, v16, "Found non-default device %@", v17, 0xCu);
          sub_1DA828378(v21);
          v23 = v21;
          p_cb = v20;
          v4 = v19;
          v5 = v18;
          v3 = v46;
          MEMORY[0x1E12739F0](v23, -1, -1);
          v24 = v17;
          v8 = v45;
          MEMORY[0x1E12739F0](v24, -1, -1);
        }

        v9 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
        goto LABEL_9;
      }

      v13 = IDSCopyIDForDevice();
      if (v13)
      {
        break;
      }

LABEL_9:

      ++v10;
      if (v7 == v5)
      {
        goto LABEL_32;
      }
    }

    v25 = v13;
    v26 = sub_1DA940A14();
    v28 = v27;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_1DA7B6928(0, *(v44 + 2) + 1, 1, v44);
    }

    v32 = *(v44 + 2);
    v31 = *(v44 + 3);
    if (v32 >= v31 >> 1)
    {
      v44 = sub_1DA7B6928((v31 > 1), v32 + 1, 1, v44);
    }

    *(v44 + 2) = v32 + 1;
    v33 = &v44[16 * v32];
    *(v33 + 4) = v26;
    *(v33 + 5) = v28;
    v8 = v30;
    v9 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
  }

  while (v7 != v5);
LABEL_32:

  v34 = sub_1DA8AD06C(v44);

  if (*(v34 + 16) > 1uLL)
  {
    if (*(p_cb + 250) != -1)
    {
      swift_once();
    }

    v35 = sub_1DA9405A4();
    __swift_project_value_buffer(v35, qword_1ECBE3DE8);
    v36 = sub_1DA940F14();

    v37 = sub_1DA940584();

    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136315138;
      v40 = sub_1DA940EA4();
      v42 = sub_1DA7AE6E8(v40, v41, &v47);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1DA7A9000, v37, v36, "Found more than one default paired device: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1E12739F0](v39, -1, -1);
      MEMORY[0x1E12739F0](v38, -1, -1);
    }
  }

  return v34;
}

void sub_1DA887F6C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E1272360](a1, a2, v7);
      sub_1DA7AF3EC(0, &unk_1ECBD7180, 0x1E69A4828);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1DA7AF3EC(0, &unk_1ECBD7180, 0x1E69A4828);
    if (sub_1DA941244() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1DA941254();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_1DA941104();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_1DA941114();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

unint64_t sub_1DA888190(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E50, &unk_1DA95D6E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA958370;
  v3 = *MEMORY[0x1E69A4790];
  *(inited + 32) = sub_1DA940A14();
  v4 = MEMORY[0x1E69E6370];
  *(inited + 40) = v5;
  *(inited + 72) = v4;
  *(inited + 48) = 0;
  v6 = *MEMORY[0x1E69A47D8];
  *(inited + 80) = sub_1DA940A14();
  *(inited + 88) = v7;
  v8 = MEMORY[0x1E69E6530];
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 96) = 172800;
  v9 = sub_1DA849034(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B8, &qword_1DA95B140);
  swift_arrayDestroy();
  if (a1)
  {
    v10 = *MEMORY[0x1E69A47D0];
    v11 = sub_1DA940A14();
    v13 = v12;
    v23 = v8;
    *&v22 = 5;
    sub_1DA848FE8(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90B6A0(v21, v11, v13, isUniquelyReferenced_nonNull_native);

    v15 = *MEMORY[0x1E69A47B8];
    v16 = sub_1DA940A14();
    v18 = v17;
    v23 = v4;
    LOBYTE(v22) = 1;
    sub_1DA848FE8(&v22, v21);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90B6A0(v21, v16, v18, v19);
  }

  return v9;
}

unint64_t sub_1DA888354()
{
  result = qword_1ECBD5E58;
  if (!qword_1ECBD5E58)
  {
    sub_1DA7AF3EC(255, &unk_1ECBD7180, 0x1E69A4828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5E58);
  }

  return result;
}

uint64_t sub_1DA8883BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DA8883C8(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 137) = a2;
  *(v4 + 32) = a1;
  v5 = sub_1DA93FEC4();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v8 = sub_1DA9401F4();
  *(v4 + 80) = v8;
  v9 = *(v8 - 8);
  *(v4 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA88851C, 0, 0);
}

uint64_t sub_1DA88851C()
{
  v113 = v0;
  if ((*(v0 + 137) | 2) != 2)
  {
    if (qword_1EE110E18 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 88);
    v23 = *(v0 + 96);
    v25 = *(v0 + 80);
    v26 = *(v0 + 40);
    v27 = sub_1DA9405A4();
    __swift_project_value_buffer(v27, qword_1EE110E20);
    v8 = *(v24 + 16);
    v8(v23, v26, v25);
    v9 = sub_1DA940584();
    v28 = sub_1DA940F34();
    v29 = os_log_type_enabled(v9, v28);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    if (v29)
    {
      v111 = v8;
      v30 = *(v0 + 137);
      v31 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v112 = v108;
      *v31 = 136315394;
      *(v0 + 136) = v30;
      v32 = sub_1DA940A74();
      v34 = sub_1DA7AE6E8(v32, v33, &v112);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      sub_1DA889240(&qword_1EE114E70, MEMORY[0x1E69DF180]);
      v35 = sub_1DA941614();
      v37 = v36;
      (*(v13 + 8))(v12, v14);
      v38 = v35;
      v8 = v111;
      v39 = sub_1DA7AE6E8(v38, v37, &v112);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_1DA7A9000, v9, v28, "Skipping fetch for action: %s %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v108, -1, -1);
      v22 = v31;
      goto LABEL_11;
    }

LABEL_12:

    (*(v13 + 8))(v12, v14);
    goto LABEL_13;
  }

  v1 = *(v0 + 40);
  v2 = sub_1DA9401C4();
  if (v2)
  {

    if (qword_1EE110E18 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 104);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 40);
    v7 = sub_1DA9405A4();
    __swift_project_value_buffer(v7, qword_1EE110E20);
    v8 = *(v5 + 16);
    v8(v3, v6, v4);
    v9 = sub_1DA940584();
    v10 = sub_1DA940F34();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 104);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v112 = v110;
      *v15 = 136315138;
      sub_1DA889240(&qword_1EE114E70, MEMORY[0x1E69DF180]);
      v107 = v10;
      v16 = v8;
      v17 = sub_1DA941614();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = v17;
      v8 = v16;
      v21 = sub_1DA7AE6E8(v20, v19, &v112);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1DA7A9000, v9, v107, "Notification already has source - skipping fetch: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v110);
      MEMORY[0x1E12739F0](v110, -1, -1);
      v22 = v15;
LABEL_11:
      MEMORY[0x1E12739F0](v22, -1, -1);

LABEL_13:
      v8(*(v0 + 32), *(v0 + 40), *(v0 + 80));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v49 = *(v0 + 40);
  v48 = *(v0 + 48);
  v50 = *(v48 + 16);
  v51 = *(v48 + 24);
  swift_getObjectType();
  v52 = sub_1DA940014();
  v53 = (*(v51 + 8))(v52);

  if (v53)
  {
    v54 = *(*(v0 + 88) + 16);
    v54(*(v0 + 128), *(v0 + 40), *(v0 + 80));
    if (qword_1EE110E18 != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 120);
    v56 = *(v0 + 80);
    v57 = *(v0 + 40);
    v58 = *(v0 + 48);
    v59 = sub_1DA9405A4();
    __swift_project_value_buffer(v59, qword_1EE110E20);
    v54(v55, v57, v56);

    v60 = sub_1DA940584();
    v61 = sub_1DA940F34();

    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 120);
    v64 = *(v0 + 80);
    v65 = *(v0 + 88);
    if (v62)
    {
      v109 = v61;
      v67 = *(v0 + 64);
      v66 = *(v0 + 72);
      v103 = v51;
      v68 = *(v0 + 56);
      v104 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v112 = v106;
      *v104 = 136315394;
      log = v60;
      sub_1DA940124();
      sub_1DA889240(&qword_1EE110EE0, MEMORY[0x1E69DF0D0]);
      v69 = sub_1DA941614();
      v70 = v64;
      v72 = v71;
      (*(v67 + 8))(v66, v68);
      (*(v65 + 8))(v63, v70);
      v73 = sub_1DA7AE6E8(v69, v72, &v112);

      *(v104 + 4) = v73;
      *(v104 + 12) = 2080;
      *(v0 + 16) = v50;
      *(v0 + 24) = v103;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD64B0, &qword_1DA95D4E0);
      v74 = sub_1DA940A74();
      v76 = sub_1DA7AE6E8(v74, v75, &v112);

      *(v104 + 14) = v76;
      _os_log_impl(&dword_1DA7A9000, log, v109, "Fetching settings for notification %s from: %s", v104, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v106, -1, -1);
      MEMORY[0x1E12739F0](v104, -1, -1);
    }

    else
    {

      (*(v65 + 8))(v63, v64);
    }

    v94 = *(v0 + 128);
    v95 = *(v0 + 80);
    v96 = *(v0 + 88);
    v97 = *(v0 + 32);
    sub_1DA9401D4();
    (*(v96 + 32))(v97, v94, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  }

  else
  {
    if (qword_1EE110E18 != -1)
    {
      swift_once();
    }

    v77 = *(v0 + 112);
    v78 = *(v0 + 80);
    v79 = *(v0 + 88);
    v80 = *(v0 + 40);
    v81 = sub_1DA9405A4();
    __swift_project_value_buffer(v81, qword_1EE110E20);
    (*(v79 + 16))(v77, v80, v78);
    v82 = sub_1DA940584();
    v83 = sub_1DA940F14();
    v84 = os_log_type_enabled(v82, v83);
    v85 = *(v0 + 112);
    v86 = *(v0 + 80);
    v87 = *(v0 + 88);
    if (v84)
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v112 = v89;
      *v88 = 136315138;
      sub_1DA889240(&qword_1EE114E70, MEMORY[0x1E69DF180]);
      v90 = sub_1DA941614();
      v92 = v91;
      (*(v87 + 8))(v85, v86);
      v93 = sub_1DA7AE6E8(v90, v92, &v112);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_1DA7A9000, v82, v83, "Fetching failed: %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x1E12739F0](v89, -1, -1);
      MEMORY[0x1E12739F0](v88, -1, -1);
    }

    else
    {

      (*(v87 + 8))(v85, v86);
    }

    v98 = *(v0 + 32);
    v99 = *(v0 + 40);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
    v101 = *(v100 + 48);
    v102 = *(v100 + 64);
    *(v98 + 24) = &type metadata for SectionSettingsFetchActor.ActorError;
    *(v98 + 32) = sub_1DA8891EC();
    sub_1DA93FF14();
    sub_1DA93FF34();
    type metadata accessor for StepFailure(0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  }

LABEL_14:
  swift_storeEnumTagMultiPayload();
  v41 = *(v0 + 120);
  v40 = *(v0 + 128);
  v43 = *(v0 + 104);
  v42 = *(v0 + 112);
  v44 = *(v0 + 96);
  v45 = *(v0 + 72);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1DA888F60(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA7B7470;

  return sub_1DA8883C8(a1, a2, a3);
}

UNNotificationSettings_optional __swiftcall UNNotificationSettingsCenter.settings(for:)(Swift::String a1)
{
  v2 = sub_1DA940A04();
  v3 = [v1 sourceWithIdentifier_];

  if (v3)
  {
    v5 = [v3 sourceSettings];

    v3 = [v5 notificationSettings];
  }

  v6 = v3;
  result.value.super.isa = v6;
  result.is_nil = v4;
  return result;
}

id sub_1DA8890B0()
{
  v1 = sub_1DA940A04();
  v2 = [v0 sourceWithIdentifier_];

  if (v2)
  {
    v3 = [v2 sourceSettings];

    v2 = [v3 notificationSettings];
  }

  return v2;
}

uint64_t sub_1DA88916C()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110E20);
  __swift_project_value_buffer(v0, qword_1EE110E20);
  return sub_1DA940594();
}

unint64_t sub_1DA8891EC()
{
  result = qword_1EE111F18;
  if (!qword_1EE111F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111F18);
  }

  return result;
}

uint64_t sub_1DA889240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA88929C()
{
  result = qword_1EE111F28;
  if (!qword_1EE111F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111F28);
  }

  return result;
}

unint64_t sub_1DA8892F0(uint64_t a1)
{
  *(a1 + 8) = sub_1DA88929C();
  result = sub_1DA889320();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA889320()
{
  result = qword_1EE111F20;
  if (!qword_1EE111F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111F20);
  }

  return result;
}

uint64_t ToolServiceClient.__allocating_init()()
{
  v0 = swift_allocObject();
  ToolServiceClient.init()();
  return v0;
}

uint64_t ToolServiceClient.init()()
{
  v1 = sub_1DA9405E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DA940674();
  sub_1DA7AC344();
  sub_1DA940FD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5588, &unk_1DA95D880);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1DA9596E0;
  sub_1DA9405D4();
  sub_1DA88B8E8(&unk_1EE110D10, MEMORY[0x1E69E8498]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5598, &qword_1DA95B230);
  sub_1DA84AA04();
  sub_1DA9411D4();
  *(v0 + 16) = sub_1DA9405C4();
  sub_1DA8896D0();
  return v0;
}

void sub_1DA8896D0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);

    sub_1DA940644();
    if (qword_1EE114E68 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE11AFD0);

    oslog = sub_1DA940584();
    v6 = sub_1DA940F34();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      sub_1DA940674();

      v9 = sub_1DA940A74();
      v11 = sub_1DA7AE6E8(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DA7A9000, oslog, v6, "configureSession() session: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E12739F0](v8, -1, -1);
      MEMORY[0x1E12739F0](v7, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EE114E68 != -1)
    {
      swift_once();
    }

    v2 = sub_1DA9405A4();
    __swift_project_value_buffer(v2, qword_1EE11AFD0);
    oslog = sub_1DA940584();
    v3 = sub_1DA940F14();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DA7A9000, oslog, v3, "configureSession(): No XPC listener found", v4, 2u);
      MEMORY[0x1E12739F0](v4, -1, -1);
    }
  }
}

uint64_t sub_1DA889A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 40) = a4;
  *(v4 + 64) = 1;
  v5 = swift_task_alloc();
  *(v4 + 72) = v5;
  *v5 = v4;
  v5[1] = sub_1DA88B984;

  return sub_1DA889B24(v4 + 16);
}

uint64_t sub_1DA889B24(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA889B44, 0, 0);
}

uint64_t sub_1DA889B44()
{
  v1 = *(v0[5] + 16);
  v0[6] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[7] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = *(MEMORY[0x1E69E8920] + 4);

    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1DA889CC4;
    v6 = MEMORY[0x1E69E6158];

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_1DA88B7A0, v3, v6);
  }

  else
  {
    sub_1DA88B74C();
    swift_allocError();
    *v7 = xmmword_1DA95D870;
    *(v7 + 16) = 2;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1DA889CC4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1DA889E48;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1DA889DE0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DA889DE0()
{
  v1 = v0[6];

  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1DA889E48()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[9];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DA889EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA889EE0, 0, 0);
}

uint64_t sub_1DA889EE0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = v5;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;

  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_1DA889FB8;
  v7 = *(v0 + 120);

  return sub_1DA889B24(v0 + 16);
}

uint64_t sub_1DA889FB8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 128);
  v7 = *v3;
  v7[17] = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA88A138, 0, 0);
  }

  else
  {
    v8 = v7[14];
    v9 = v7[12];
    v10 = v7[10];

    v11 = v7[1];

    return v11(a1, a2);
  }
}

uint64_t sub_1DA88A138()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_1DA88A1B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1 & 1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = 0;
  *(v5 + 64) = 2;
  v6 = swift_task_alloc();
  *(v5 + 72) = v6;
  *v6 = v5;
  v6[1] = sub_1DA88B984;

  return sub_1DA889B24(v5 + 16);
}

uint64_t sub_1DA88A264()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 4;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1DA88A30C;

  return sub_1DA889B24(v0 + 16);
}

uint64_t sub_1DA88A30C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 72);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1DA88A41C(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DA88A4AC, 0, 0);
}

uint64_t sub_1DA88A4AC()
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 80);
  v2 = objc_opt_self();
  v3 = sub_1DA940964();
  *(v0 + 72) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:v0 + 72];

  v5 = *(v0 + 72);
  if (v4)
  {
    v6 = sub_1DA93F9A4();
    v8 = v7;

    *(v0 + 96) = v6;
    *(v0 + 104) = v8;
    *(v0 + 16) = v6;
    *(v0 + 24) = v8;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 3;
    sub_1DA841874(v6, v8);
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_1DA88A69C;
    v10 = *(v0 + 88);
    v11 = *MEMORY[0x1E69E9840];

    return sub_1DA889B24(v0 + 16);
  }

  else
  {
    v13 = v5;
    sub_1DA93F8C4();

    swift_willThrow();
    v14 = *(v0 + 8);
    v15 = *MEMORY[0x1E69E9840];

    return v14();
  }
}

uint64_t sub_1DA88A69C(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 112);
  v14 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v8 = sub_1DA88A894;
  }

  else
  {
    v9 = v6[12];
    v10 = v6[13];
    v6[16] = a2;
    v6[17] = a1;
    sub_1DA828324(v9, v10);
    v8 = sub_1DA88A800;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DA88A800()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1DA828324(v0[12], v0[13]);
  v1 = v0[1];
  v3 = v0[16];
  v2 = v0[17];
  v4 = *MEMORY[0x1E69E9840];

  return v1(v2, v3);
}

uint64_t sub_1DA88A894()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[12];
  v2 = v0[13];
  sub_1DA828324(v1, v2);
  sub_1DA828324(v1, v2);
  v3 = v0[15];
  v4 = v0[1];
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t ToolServiceClient.deinit()
{
  if (*(v0 + 16))
  {

    sub_1DA940634();

    v1 = *(v0 + 16);
  }

  return v0;
}

uint64_t ToolServiceClient.__deallocating_deinit()
{
  if (*(v0 + 16))
  {

    sub_1DA940634();

    v1 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1DA88AA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = *(a3 + 16);
  v14[1] = *a3;
  v14[2] = v10;
  v14[3] = *(a3 + 32);
  v15 = *(a3 + 48);
  (*(v6 + 16))(v14 - v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  sub_1DA88B824();
  sub_1DA940614();
}

uint64_t sub_1DA88ABD0(uint64_t a1)
{
  v2 = sub_1DA940744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA9407A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E78, &qword_1DA95D938);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  sub_1DA88B878(a1, &v24 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v15, v2);
    sub_1DA88B8E8(&qword_1ECBD5E80, MEMORY[0x1E69E84C0]);
    v16 = swift_allocError();
    (*(v3 + 16))(v17, v6, v2);
    v25 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);
    sub_1DA940C44();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    sub_1DA88B930();
    sub_1DA940794();
    v20 = v25;
    v19 = v26;
    if (v27 < 0)
    {
      v21 = v27 & 0x7F;
      sub_1DA88B74C();
      v22 = swift_allocError();
      *v23 = v20;
      *(v23 + 8) = v19;
      *(v23 + 16) = v21;
      v25 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);
      sub_1DA940C44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);
      sub_1DA940C54();
    }

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t dispatch thunk of ToolServiceClient.summarize(groupIdentifier:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 96);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1DA88B988;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ToolServiceClient.summarize(notificationIdentifier:bundleIdentifier:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 104);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1DA88B988;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ToolServiceClient.set(isHighlight:for:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 112);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1DA88B988;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ToolServiceClient.stateCapture()()
{
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DA88B520;

  return v6();
}

uint64_t sub_1DA88B520(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of ToolServiceClient.simulateNotificationPushResponse(with:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DA88B988;

  return v8(a1);
}

unint64_t sub_1DA88B74C()
{
  result = qword_1ECBD5E60;
  if (!qword_1ECBD5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5E60);
  }

  return result;
}

uint64_t sub_1DA88B7A8(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930) - 8) + 80);

  return sub_1DA88ABD0(a1);
}

unint64_t sub_1DA88B824()
{
  result = qword_1ECBD5E70;
  if (!qword_1ECBD5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5E70);
  }

  return result;
}

uint64_t sub_1DA88B878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E78, &qword_1DA95D938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA88B8E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA88B930()
{
  result = qword_1ECBD5E88;
  if (!qword_1ECBD5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5E88);
  }

  return result;
}

uint64_t sub_1DA88B98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DA7B7660;

  return v11(a1, a2, a3);
}

uint64_t sub_1DA88BAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DA7B7660;

  return v11(a1, a2, a3);
}

void sub_1DA88BBDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v8 = 0;
    do
    {
      for (i = v8; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECBD5EA0, &unk_1DA95DA18) - 8);
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        sub_1DA88C6D0(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, a2, a3, &v12);
        if (v3)
        {

          return;
        }

        if (v12)
        {
          break;
        }

        if (v8 == v4)
        {
          return;
        }
      }

      MEMORY[0x1E1271CA0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DA940C04();
      }

      sub_1DA940C14();
    }

    while (v8 != v4);
  }
}

uint64_t sub_1DA88BD58(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_1DA93FAF4();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v2[20] = *(v4 + 64);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA88BE2C, 0, 0);
}

uint64_t sub_1DA88BE2C()
{
  v50 = v0;
  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[16];
  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE11AFA0);
  v48 = *(v3 + 16);
  v48(v1, v4, v2);
  v6 = sub_1DA940584();
  v7 = sub_1DA940F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  v10 = v0[18];
  v11 = v0[19];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v12 = 136446210;
    sub_1DA8918D4(&qword_1EE114C88, MEMORY[0x1E6969530]);
    v14 = sub_1DA941614();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_1DA7AE6E8(v14, v16, &v49);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "Removing items older than: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12739F0](v13, -1, -1);
    MEMORY[0x1E12739F0](v12, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = v0[21];
  v47 = v0[22];
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[17];
  v22 = v0[18];
  v0[14] = 0;
  v44 = v19;
  v45 = v21;
  v23 = v0[16];
  v0[15] = 0xE000000000000000;
  v24 = *MEMORY[0x1E6963E78];
  v25 = sub_1DA940A14();
  MEMORY[0x1E1271BD0](v25);

  MEMORY[0x1E1271BD0](2112544, 0xE300000000000000);
  v43 = v23;
  sub_1DA93F9D4();
  sub_1DA940E74();
  MEMORY[0x1E1271BD0](41, 0xE100000000000000);
  v26 = v0[14];
  v27 = v0[15];
  v28 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  v29 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v46 = v28;
  v30 = sub_1DA940A04();

  v31 = [v29 initWithQueryString:v30 queryContext:v46];

  v32 = sub_1DA940BD4();
  [v31 setBundleIDs_];

  v48(v18, v23, v22);
  v33 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v34 = swift_allocObject();
  v35 = *(v20 + 32);
  v35(v34 + v33, v18, v22);
  *(v34 + ((v33 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
  v0[6] = sub_1DA8917C8;
  v0[7] = v34;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DA7B8FEC;
  v0[5] = &block_descriptor_22_0;
  v36 = _Block_copy(v0 + 2);
  v37 = v0[7];

  [v31 setFoundItemsHandler_];
  _Block_release(v36);
  v48(v18, v43, v22);
  v38 = swift_allocObject();
  v35(v38 + v33, v18, v22);
  v0[12] = sub_1DA891864;
  v0[13] = v38;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1DA7B1BFC;
  v0[11] = &block_descriptor_28_0;
  v39 = _Block_copy(v0 + 8);
  v40 = v0[13];

  [v31 setCompletionHandler_];
  _Block_release(v39);
  [v31 start];

  v41 = v0[1];

  return v41();
}

unint64_t sub_1DA88C3BC(unint64_t result, uint64_t *a2, uint64_t a3)
{
  v21[3] = a3;
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E1272460](i, v4);
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_12;
          }

          v7 = *(v4 + 8 * i + 32);
        }

        v8 = v7;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v10 = [v7 uniqueIdentifier];
        v11 = sub_1DA940A14();
        v13 = v12;

        v14 = v8;
        v15 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21[0] = *a2;
        *a2 = 0x8000000000000000;
        sub_1DA90B8B0(v14, v11, v13, isUniquelyReferenced_nonNull_native);

        *a2 = v21[0];
        v17 = [v14 uniqueIdentifier];
        v18 = sub_1DA940A14();
        v20 = v19;

        sub_1DA8A9058(v21, v18, v20);

        if (v9 == v5)
        {
          return result;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_1DA941264();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1DA88C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DA941764();
  sub_1DA940AB4();
  v7 = sub_1DA941794();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DA941684() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1DA88C660()
{
  v0 = sub_1DA940A04();
  v1 = [objc_opt_self() serviceForClientIdentifier_];

  qword_1EE113178 = v1;
}

void sub_1DA88C6D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v152 = a4;
  v148 = a2;
  v149 = a3;
  v5 = sub_1DA93FAF4();
  v138 = *(v5 - 8);
  v139 = v5;
  v6 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v137 = v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v140 = v128 - v10;
  v11 = sub_1DA93FE74();
  v142 = *(v11 - 8);
  v143 = v11;
  v12 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v141 = v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B80, &unk_1DA95CCE0);
  v150 = *(v14 - 8);
  v151 = v14;
  v15 = *(v150 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v147 = v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v153 = v128 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B70, &qword_1DA95CCD0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v146 = v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v145 = v128 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v128 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v128 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECBD5EA0, &unk_1DA95DA18);
  v32 = a1;
  sub_1DA9402F4();
  v33 = sub_1DA940394();
  v36 = *(v20 + 8);
  v34 = v20 + 8;
  v35 = v36;
  v144 = v30;
  v36(v30, v19);
  v37 = *(v33 + 16);

  if (v37 >= 2)
  {
    v136 = v32;
    sub_1DA9402F4();
    v38 = v153;
    sub_1DA9403B4();
    v135 = v19;
    v134 = v34;
    v35(v28, v19);
    v39 = v150;
    v40 = v151;
    v41 = v150 + 88;
    v131 = *(v150 + 88);
    v42 = v131(v38, v151);
    v43 = *MEMORY[0x1E69DF250];
    v46 = *(v39 + 8);
    v44 = v39 + 8;
    v45 = v46;
    v46(v38, v40);
    if (v42 != v43)
    {
      v130 = v41;
      v129 = v43;
      v128[0] = v45;
      v128[1] = v44;
      v132 = v35;
      v133 = v31;
      v49 = v142;
      v48 = v143;
      (*(v142 + 56))(v140, 1, 1, v143);
      v50 = v141;
      sub_1DA93FE34();
      v51 = objc_allocWithZone(MEMORY[0x1E6964E90]);
      v52 = sub_1DA93FE54();
      v53 = [v51 initWithContentType_];

      (*(v49 + 8))(v50, v48);
      v54 = objc_allocWithZone(MEMORY[0x1E6964E00]);
      v55 = sub_1DA940A04();
      v56 = [v54 initWithKeyName_];

      if (v56)
      {
        sub_1DA7AF3EC(0, &qword_1EE114D70, 0x1E696AD98);
        v57 = v137;
        sub_1DA93FAC4();
        sub_1DA93F9D4();
        (*(v138 + 8))(v57, v139);
        v58 = sub_1DA9410D4();
        [v53 setValue:v58 forCustomKey:v56];

        v59 = v135;
      }

      else
      {
        v59 = v135;
        if (qword_1EE114E00 != -1)
        {
          swift_once();
        }

        v60 = sub_1DA9405A4();
        __swift_project_value_buffer(v60, qword_1EE11AFA0);
        v58 = sub_1DA940584();
        v61 = sub_1DA940F24();
        if (os_log_type_enabled(v58, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          MEMORY[0x1E12739F0](v62, -1, -1);
        }
      }

      v63 = v132;

      v64 = sub_1DA940A04();
      v143 = v53;
      [v53 setDomainIdentifier_];

      v65 = v144;
      sub_1DA9402F4();
      v66 = sub_1DA940394();
      v63(v65, v59);
      v67 = v145;
      sub_1DA9402F4();
      v153 = sub_1DA9403C4();
      v69 = v68;
      v70 = v59;
      v63(v67, v59);
      if (v69)
      {
        v145 = "com.apple.usernotifications";
        v71 = *(v66 + 16);
        v72 = v66;
        if (v71)
        {
          v154 = MEMORY[0x1E69E7CC0];
          sub_1DA82A778(0, v71, 0);
          v73 = v154;
          v144 = v72;
          v74 = (v72 + 40);
          do
          {
            v75 = *(v74 - 1);
            v76 = *v74;
            v155 = v153;
            v156 = v69;

            MEMORY[0x1E1271BD0](58, 0xE100000000000000);
            MEMORY[0x1E1271BD0](v75, v76);

            v78 = v155;
            v77 = v156;
            v154 = v73;
            v80 = *(v73 + 16);
            v79 = *(v73 + 24);
            if (v80 >= v79 >> 1)
            {
              sub_1DA82A778((v79 > 1), v80 + 1, 1);
              v73 = v154;
            }

            *(v73 + 16) = v80 + 1;
            v81 = v73 + 16 * v80;
            *(v81 + 32) = v78;
            *(v81 + 40) = v77;
            v74 += 2;
            --v71;
          }

          while (v71);

          v82 = v143;
          v70 = v135;
        }

        else
        {

          v82 = v143;
        }

        v83 = sub_1DA88E254(v153, v69);

        if (!v83)
        {
          [v82 setSummarizationStatus_];
        }
      }

      else
      {
        v82 = v143;
      }

      v84 = sub_1DA940BD4();

      [v82 setProviderDataTypeIdentifiers_];

      sub_1DA940304();
      v85 = sub_1DA940A04();

      [v82 setContainerIdentifier_];

      v86 = v146;
      sub_1DA9402F4();
      v87 = v147;
      sub_1DA9403B4();
      v132(v86, v70);
      v88 = v151;
      v89 = v131(v87, v151);
      if (v89 == *MEMORY[0x1E69DF260])
      {
        (*(v150 + 96))(v87, v88);
        v90 = *v87;
        v91 = v87[1];
        v92 = v87[2];
        v93 = v87[3];
        v94 = sub_1DA940A04();

        [v82 setThreadIdentifier_];

        v95 = sub_1DA940A04();

        [v82 setCreator_];
      }

      else
      {
        if (v89 != *MEMORY[0x1E69DF258])
        {
          v99 = v149;
          if (v89 != v129)
          {
            (v128[0])(v87, v88);
          }

LABEL_26:
          v100 = sub_1DA940314();
          v102 = v101;

          sub_1DA8A9058(&v155, v100, v102);

          v103 = *v99;
          if (!*(*v99 + 16) || (v104 = sub_1DA85A4B4(v100, v102), (v105 & 1) == 0))
          {
            v111 = objc_allocWithZone(MEMORY[0x1E6964E80]);
            v107 = sub_1DA940A04();

            v112 = sub_1DA940A04();
            v47 = [v111 initWithUniqueIdentifier:v107 domainIdentifier:v112 attributeSet:v82];
LABEL_44:

            goto LABEL_45;
          }

          v106 = v82;
          v107 = *(*(v103 + 56) + 8 * v104);
          v108 = [v107 attributeSet];
          v109 = [v108 providerDataTypeIdentifiers];

          if (v109)
          {
            v110 = sub_1DA940BE4();
          }

          else
          {
            v110 = 0;
          }

          v113 = [v106 providerDataTypeIdentifiers];
          if (v113)
          {
            v114 = v113;
            v115 = sub_1DA940BE4();

            if (v110)
            {
              if (v115)
              {
                v116 = sub_1DA82A1FC(v110, v115);

                if (v116)
                {
                  goto LABEL_46;
                }

                goto LABEL_43;
              }

LABEL_42:

LABEL_43:
              v117 = objc_allocWithZone(MEMORY[0x1E6964E80]);
              v118 = v106;
              v119 = sub_1DA940A04();

              v120 = sub_1DA940A04();
              v121 = [v117 initWithUniqueIdentifier:v119 domainIdentifier:v120 attributeSet:v118];

              v47 = v121;
              [v47 setIsUpdate_];
              v122 = [v47 attributeSet];
              v123 = [v107 attributeSet];
              v124 = [v123 summarizedIdentifiers];

              [v122 setSummarizedIdentifiers_];
              v112 = [v47 attributeSet];

              v125 = [v107 attributeSet];
              v126 = [v125 summarizationStatus];

              v127 = v126;
              v82 = v106;
              [v112 setSummarizationStatus_];
              goto LABEL_44;
            }

            if (v115)
            {
              goto LABEL_42;
            }
          }

          else if (v110)
          {
            goto LABEL_42;
          }

LABEL_46:

          v47 = 0;
          goto LABEL_45;
        }

        (*(v150 + 96))(v87, v88);
        v96 = *v87;
        v97 = v87[1];
        v98 = sub_1DA940A04();

        [v82 setCreator_];
      }

      v99 = v149;
      goto LABEL_26;
    }
  }

  v47 = 0;
LABEL_45:
  *v152 = v47;
}

id sub_1DA88D4FC()
{
  [v0 handleType];
  v1 = [v0 displayName];
  if (v1)
  {
    v2 = v1;
    sub_1DA940A14();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DA9596E0;
  v6 = [v0 handle];
  v7 = sub_1DA940A14();
  v9 = v8;

  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  if (v4)
  {
    v10 = sub_1DA940A04();
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_allocWithZone(MEMORY[0x1E6964E50]);
  v12 = sub_1DA940BD4();

  v13 = sub_1DA940A04();

  v14 = [v11 initWithDisplayName:v10 handles:v12 handleIdentifier:v13];

  v15 = [v0 cnContactIdentifier];
  [v14 setContactIdentifier_];

  return v14;
}

char *sub_1DA88D714(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v50 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v44 - v7;
  v9 = sub_1DA93FAF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v14 = sub_1DA941264();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v51 = MEMORY[0x1E69E7CC0];
    result = sub_1DA82A778(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v45 = v13;
    v46 = v10;
    v47 = v9;
    v48 = v8;
    v49 = a3;
    v17 = 0;
    v15 = v51;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1E1272460](v17, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = [v18 uniqueIdentifier];
      v21 = sub_1DA940A14();
      v23 = v22;

      v51 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1DA82A778((v24 > 1), v25 + 1, 1);
        v15 = v51;
      }

      ++v17;
      *(v15 + 16) = v25 + 1;
      v26 = v15 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    while (v14 != v17);
    v8 = v48;
    a3 = v49;
    v10 = v46;
    v9 = v47;
    v13 = v45;
  }

  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v27 = sub_1DA9405A4();
  __swift_project_value_buffer(v27, qword_1EE11AFA0);
  (*(v10 + 16))(v13, v50, v9);
  swift_bridgeObjectRetain_n();
  v28 = sub_1DA940584();
  v29 = sub_1DA940F14();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v50;
    *v30 = 136446466;
    sub_1DA8918D4(&qword_1EE114C88, MEMORY[0x1E6969530]);
    v31 = sub_1DA941614();
    v32 = v13;
    v33 = v8;
    v34 = a3;
    v35 = v31;
    v37 = v36;
    (*(v10 + 8))(v32, v9);
    v38 = v35;
    a3 = v34;
    v8 = v33;
    v39 = sub_1DA7AE6E8(v38, v37, &v51);

    *(v30 + 4) = v39;
    *(v30 + 12) = 2050;
    v40 = *(v15 + 16);

    *(v30 + 14) = v40;

    _os_log_impl(&dword_1DA7A9000, v28, v29, "Remove items older than: %{public}s found items: %{public}ld", v30, 0x16u);
    v41 = v50;
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1E12739F0](v41, -1, -1);
    MEMORY[0x1E12739F0](v30, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v10 + 8))(v13, v9);
  }

  v42 = sub_1DA940D34();
  (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v15;
  v43[5] = a3;
  sub_1DA84FB24(0, 0, v8, &unk_1DA95DA38, v43);
}

uint64_t sub_1DA88DBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1DA7B7470;

  return sub_1DA8919DC(a4);
}

void sub_1DA88DC68(void *a1, uint64_t a2)
{
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA9405A4();
    __swift_project_value_buffer(v10, qword_1EE11AFA0);
    (*(v5 + 16))(v8, a2, v4);
    v11 = a1;
    v12 = sub_1DA940584();
    v13 = sub_1DA940F14();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v14 = 136446466;
      sub_1DA8918D4(&qword_1EE114C88, MEMORY[0x1E6969530]);
      v16 = sub_1DA941614();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_1DA7AE6E8(v16, v18, &v24);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2114;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v21;
      *v15 = v21;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Remove items older than: %{public}s query error of %{public}@", v14, 0x16u);
      sub_1DA7BA120(v15, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v15, -1, -1);
      v22 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12739F0](v22, -1, -1);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

void *sub_1DA88DF60(void *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = sub_1DA88F568(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1DA88DFFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
  result = sub_1DA9414E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    sub_1DA862D8C(*(v4 + 48) + 40 * v16, v34);
    sub_1DA7AD270(*(v4 + 56) + 32 * v16, v33);
    v30 = v34[0];
    v31 = v34[1];
    v32 = v35;
    sub_1DA848FE8(v33, v29);
    v17 = *(v9 + 40);
    result = sub_1DA9412C4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v9 + 48) + 40 * v21;
    v27 = v31;
    *v26 = v30;
    *(v26 + 16) = v27;
    *(v26 + 32) = v32;
    result = sub_1DA848FE8(v29, (*(v9 + 56) + 32 * v21));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

BOOL sub_1DA88E254(uint64_t a1, unint64_t a2)
{
  if ((sub_1DA9402C4() & 1) == 0)
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    __swift_project_value_buffer(v17, qword_1EE11AFA0);

    v18 = sub_1DA940584();
    v19 = sub_1DA940F34();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1DA7AE6E8(a1, a2, v34);
      _os_log_impl(&dword_1DA7A9000, v18, v19, "%s, privacy: .public) Not indexing to spotlight because categorizer doesn't allow.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12739F0](v21, -1, -1);
      MEMORY[0x1E12739F0](v20, -1, -1);
    }

    return 0;
  }

  if (qword_1EE111B28 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1EE11AE98 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A60, &unk_1DA95CB00);
  sub_1DA940FE4();
  v5 = v35;
  v6 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v7 = (*(v6 + 8))(a1, a2, v5, v6);
  if (!v7)
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1EE11AFA0);

    v23 = sub_1DA940584();
    v24 = sub_1DA940F14();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_1DA7AE6E8(a1, a2, v33);
      _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] Could not determine source summarization setting.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12739F0](v26, -1, -1);
      MEMORY[0x1E12739F0](v25, -1, -1);
    }

    goto LABEL_23;
  }

  v8 = v7;
  v9 = v35;
  v10 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v11 = (*(v10 + 16))(v9, v10);
  if (!v11)
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v27 = sub_1DA9405A4();
    __swift_project_value_buffer(v27, qword_1EE11AFA0);

    v28 = sub_1DA940584();
    v29 = sub_1DA940F14();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1DA7AE6E8(a1, a2, v33);
      _os_log_impl(&dword_1DA7A9000, v28, v29, "[%{public}s] Could not determine system summarization setting.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12739F0](v31, -1, -1);
      MEMORY[0x1E12739F0](v30, -1, -1);
    }

LABEL_23:
    __swift_destroy_boxed_opaque_existential_1(v34);
    return 0;
  }

  v12 = v11;
  if ([v11 summarizationSetting] == 2)
  {
    v13 = [v8 sourceSettings];
    v14 = [v13 notificationSettings];

    v15 = [v14 summarizationSetting];
    v16 = v15 == 2;
  }

  else
  {

    v16 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v16;
}

uint64_t sub_1DA88E75C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1DA88E7E8()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v1 = swift_allocObject();
    v0[8] = v1;
    *(v1 + 16) = xmmword_1DA95C300;
    if (qword_1EE115570 != -1)
    {
      swift_once();
    }

    v2 = unk_1EE11B040;
    *(v1 + 32) = qword_1EE11B038;
    *(v1 + 40) = v2;
    v3 = qword_1EE115560;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = unk_1EE11B020;
    *(v1 + 48) = qword_1EE11B018;
    *(v1 + 56) = v4;
    v5 = qword_1EE112AA0;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = unk_1EE11AEC0;
    *(v1 + 64) = qword_1EE11AEB8;
    *(v1 + 72) = v6;

    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1DA88E9D8;

    return (sub_1DA835894)(1, v1);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1DA88E9D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1DA88EF5C;
  }

  else
  {
    v8 = *(v4 + 64);

    *(v4 + 88) = a1;
    v7 = sub_1DA88EB08;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DA88EB08()
{
  v30 = v0;
  v0[2] = MEMORY[0x1E69E7CC8];
  v1 = MEMORY[0x1E69E7CD0];
  v0[3] = MEMORY[0x1E69E7CD0];
  v2 = v0[10];
  v3 = v0[7];
  sub_1DA88C3BC(v0[11], v0 + 2, (v0 + 3));

  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v4 = sub_1DA940324();
  sub_1DA88BBDC(v4, (v0 + 4), v0 + 2);
  v6 = v5;
  v0[12] = v5;

  v7 = v0[3];
  v8 = v0[4];
  v0[13] = v7;
  v0[14] = v8;
  if (*(v8 + 16) <= *(v7 + 16) >> 3)
  {
    goto LABEL_5;
  }

  v9 = sub_1DA8C4DDC(v8, v7);
  v10 = *(v9 + 16);
  if (v10)
  {
    while (1)
    {
      v11 = sub_1DA8BF688(v10, 0);
      v12 = sub_1DA8BF88C(&v29, v11 + 4, v10, v9);
      sub_1DA830720();
      if (v12 == v10)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v29 = v7;

      sub_1DA8C4AE4(v8);
      v9 = v29;
      v10 = *(v29 + 16);
      if (!v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v11 = MEMORY[0x1E69E7CC0];
  }

  v0[15] = v11;
  if (v6 >> 62)
  {
    if (sub_1DA941264())
    {
      goto LABEL_10;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v13 = sub_1DA9405A4();
    __swift_project_value_buffer(v13, qword_1EE11AFA0);

    v14 = sub_1DA940584();
    v15 = sub_1DA940F34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315394;
      v18 = sub_1DA7B673C(v6);
      v20 = sub_1DA7AE6E8(v18, v19, &v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = v11[2];
      if (v21 < 6)
      {
        v0[5] = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
        sub_1DA7B6A38();
        v22 = sub_1DA9409C4();
      }

      else
      {
        v0[6] = v21;
        v22 = sub_1DA941614();
      }

      v24 = sub_1DA7AE6E8(v22, v23, &v29);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_1DA7A9000, v14, v15, "Adding stack index: added=[%s], deleted=[%s]", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v17, -1, -1);
      MEMORY[0x1E12739F0](v16, -1, -1);
    }

    v25 = swift_task_alloc();
    v0[16] = v25;
    *v25 = v0;
    v25[1] = sub_1DA7B6FA8;

    return sub_1DA7BEF8C(v6, v11, 0);
  }

  if (v11[2])
  {
    goto LABEL_10;
  }

  v27 = v0[2];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1DA88EF5C()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DA88EFC0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[2];

  v6 = v0[17];
  v7 = v0[1];

  return v7();
}

uint64_t sub_1DA88F050(uint64_t a1, unint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (qword_1EE111B28 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1EE11AE98 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A60, &unk_1DA95CB00);
  sub_1DA940FE4();
  v5 = v40;
  v6 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v7 = (*(v6 + 16))(v5, v6);
  if (!v7)
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v25 = sub_1DA9405A4();
    __swift_project_value_buffer(v25, qword_1EE11AFA0);

    v8 = sub_1DA940584();
    v26 = sub_1DA940F14();

    if (os_log_type_enabled(v8, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1DA7AE6E8(a1, a2, &v38);
      _os_log_impl(&dword_1DA7A9000, v8, v26, "[%{public}s] Could not determine system prioritization setting.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12739F0](v28, -1, -1);
      MEMORY[0x1E12739F0](v27, -1, -1);
    }

    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v7 prioritizationSetting];
  v10 = v40;
  v11 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v12 = (*(v11 + 8))(a1, a2, v10, v11);
  if (!v12)
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v29 = sub_1DA9405A4();
    __swift_project_value_buffer(v29, qword_1EE11AFA0);

    v30 = sub_1DA940584();
    v31 = sub_1DA940F14();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1DA7AE6E8(a1, a2, &v38);
      _os_log_impl(&dword_1DA7A9000, v30, v31, "[%{public}s] Could not determine source prioritization setting.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E12739F0](v33, -1, -1);
      MEMORY[0x1E12739F0](v32, -1, -1);
    }

LABEL_20:
    v24 = 0;
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [v12 sourceSettings];
  v15 = [v14 notificationSettings];

  v16 = [v15 prioritizationSetting];
  if (qword_1EE113170 != -1)
  {
    swift_once();
  }

  v38 = 0;
  v17 = [qword_1EE113178 queryCurrentStateWithError_];
  if (v17)
  {
    v18 = v17;
    v19 = v38;
    v20 = [v18 activeModeConfiguration];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 configuration];

      v23 = [v22 allowIntelligentManagement];
      v24 = v23 == 2;
      if (v9 != 2)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v34 = v38;
    v35 = sub_1DA93F8C4();

    swift_willThrow();
  }

  v24 = 0;
  if (v9 == 2)
  {
LABEL_24:
    v24 |= v16 == 2;
  }

LABEL_25:
  __swift_destroy_boxed_opaque_existential_1(v39);
  v36 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

uint64_t sub_1DA88F568(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v25 = result;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v37 = a4;
  v28 = a4 + 7;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    sub_1DA862D8C(*(v4 + 48) + 40 * v14, v36);
    sub_1DA7AD270(*(v4 + 56) + 32 * v14, v35);
    sub_1DA862D8C(v36, v33);
    sub_1DA7AD270(v35, &v34);
    sub_1DA891758(v33, v31);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v32);
      if (v37[2] && (v15 = v37, v16 = v37[5], sub_1DA941764(), sub_1DA940AB4(), v17 = sub_1DA941794(), v18 = -1 << *(v15 + 32), v19 = v17 & ~v18, ((*(v28 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (v37[6] + 16 * v19);
          v22 = *v21 == v29 && v21[1] == v30;
          if (v22 || (sub_1DA941684() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v28 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        sub_1DA7BA120(v33, &qword_1ECBD5E98, &qword_1DA95DA00);
        __swift_destroy_boxed_opaque_existential_1(v35);
        result = sub_1DA862DE8(v36);
        *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        v4 = a3;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
          return sub_1DA88DFFC(v25, a2, v26, v4);
        }
      }

      else
      {
LABEL_23:

        sub_1DA7BA120(v33, &qword_1ECBD5E98, &qword_1DA95DA00);
        __swift_destroy_boxed_opaque_existential_1(v35);
        result = sub_1DA862DE8(v36);
        v4 = a3;
      }
    }

    else
    {
      sub_1DA7BA120(v33, &qword_1ECBD5E98, &qword_1DA95DA00);
      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_destroy_boxed_opaque_existential_1(v35);
      result = sub_1DA862DE8(v36);
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1DA88DFFC(v25, a2, v26, v4);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA88F888(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_1DA88DF60(v13, v7, a1, a2);
      MEMORY[0x1E12739F0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1DA88F568(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1DA88FA48(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1[8] = a1;
  v2 = sub_1DA93F964();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_1DA93FAF4();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = sub_1DA93FE74();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();
  v11 = sub_1DA9401F4();
  v1[18] = v11;
  v12 = *(v11 - 8);
  v1[19] = v12;
  v13 = *(v12 + 64) + 15;
  v1[20] = swift_task_alloc();
  v14 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DA88FC48, 0, 0);
}

uint64_t sub_1DA88FC48()
{
  v215 = v0;
  v214[1] = *MEMORY[0x1E69E9840];
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v2 = v0[19];
    v1 = v0[20];
    v3 = v0[18];
    v4 = v0[8];
    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE11AFA0);
    (*(v2 + 16))(v1, v4, v3);
    v6 = sub_1DA940584();
    v7 = sub_1DA940F34();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[18];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v214[0] = v13;
      *v12 = 136446210;
      sub_1DA8918D4(&qword_1EE114E70, MEMORY[0x1E69DF180]);
      v14 = sub_1DA941614();
      v16 = v15;
      v18 = *(v10 + 8);
      v17 = (v10 + 8);
      v18(v9, v11);
      v19 = sub_1DA7AE6E8(v14, v16, v214);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_1DA7A9000, v6, v7, "[%{public}s] Adding notification index", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E12739F0](v13, -1, -1);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }

    else
    {

      v27 = *(v10 + 8);
      v17 = (v10 + 8);
      v27(v9, v11);
    }

    v29 = v0[16];
    v28 = v0[17];
    v30 = v0[15];
    sub_1DA93FE64();
    v31 = objc_allocWithZone(MEMORY[0x1E6964E90]);
    v32 = sub_1DA93FE54();
    v33 = [v31 initWithContentType_];
    v0[21] = v33;

    (*(v29 + 8))(v28, v30);
    v34 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v35 = sub_1DA940A04();
    v36 = [v34 initWithKeyName_];

    if (v36)
    {
      v38 = v0[13];
      v37 = v0[14];
      v39 = v0[12];
      sub_1DA7AF3EC(0, &qword_1EE114D70, 0x1E696AD98);
      sub_1DA93FAC4();
      sub_1DA93F9D4();
      (*(v38 + 8))(v37, v39);
      v40 = sub_1DA9410D4();
      [(SEL *)v33 setValue:v40 forCustomKey:v36];
    }

    else
    {
      v40 = sub_1DA940584();
      v41 = sub_1DA940F24();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        MEMORY[0x1E12739F0](v42, -1, -1);
      }
    }

    v43 = v0[13];
    v44 = v0[14];
    v45 = v0[12];
    v46 = v0[8];

    v47 = sub_1DA940A04();
    [(SEL *)v33 setDomainIdentifier:v47];

    v48 = sub_1DA93FF84();
    v49 = [v48 date];

    sub_1DA93FAB4();
    v50 = sub_1DA93FA44();
    (*(v43 + 8))(v44, v45);
    [(SEL *)v33 setContentCreationDate:v50];

    sub_1DA940014();
    v51 = sub_1DA940A04();

    [(SEL *)v33 setCreator:v51];

    sub_1DA940144();
    if (v52)
    {
      v53 = sub_1DA940A04();
    }

    else
    {
      v53 = 0;
    }

    v54 = v0[8];
    [(SEL *)v33 setTitle:v53];

    sub_1DA9401E4();
    if (v55)
    {
      v56 = sub_1DA940A04();
    }

    else
    {
      v56 = 0;
    }

    v57 = v0[8];
    [(SEL *)v33 setSubtitle:v56];

    sub_1DA940134();
    if (v58)
    {
      v59 = sub_1DA940A04();
    }

    else
    {
      v59 = 0;
    }

    v60 = v0[8];
    [(SEL *)v33 setTextContent:v59];

    v61 = sub_1DA93FF84();
    v62 = [v61 request];

    v63 = [v62 content];
    v64 = [v63 threadIdentifier];

    if (!v64)
    {
      sub_1DA940A14();
      v64 = sub_1DA940A04();
    }

    v65 = v0[8];
    [(SEL *)v33 setThreadIdentifier:v64];

    v66 = sub_1DA93FF84();
    v67 = [v66 request];

    v68 = [v67 content];
    v69 = [v68 attachments];

    sub_1DA7AF3EC(0, &qword_1EE110BB0, 0x1E6983268);
    v70 = sub_1DA940BE4();

    v71 = &selRef_bulletinGroupingSetting;
    if (v70 >> 62)
    {
      v72 = sub_1DA941264();
    }

    else
    {
      v72 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v213 = v0;
    v210 = v33;
    if (v72)
    {
      v214[0] = MEMORY[0x1E69E7CC0];
      sub_1DA82A778(0, v72 & ~(v72 >> 63), 0);
      if (v72 < 0)
      {
        __break(1u);
        goto LABEL_104;
      }

      v73 = 0;
      v74 = v214[0];
      do
      {
        if ((v70 & 0xC000000000000001) != 0)
        {
          v75 = MEMORY[0x1E1272460](v73, v70);
        }

        else
        {
          v75 = *(v70 + 8 * v73 + 32);
        }

        v76 = v75;
        v77 = [v75 type];
        v78 = sub_1DA940A14();
        v80 = v79;

        v214[0] = v74;
        v82 = *(v74 + 16);
        v81 = *(v74 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_1DA82A778((v81 > 1), v82 + 1, 1);
          v74 = v214[0];
        }

        ++v73;
        *(v74 + 16) = v82 + 1;
        v83 = v74 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v80;
      }

      while (v72 != v73);

      v33 = v210;
      v71 = &selRef_bulletinGroupingSetting;
    }

    else
    {
    }

    v84 = v0[8];
    v85 = sub_1DA940BD4();

    [(SEL *)v33 setAttachmentTypes:v85];

    v86 = sub_1DA93FF84();
    v87 = [v86 request];

    v88 = [v87 v71[57]];
    v89 = [v88 attachments];

    v90 = sub_1DA940BE4();
    if (v90 >> 62)
    {
      v70 = sub_1DA941264();
      if (v70)
      {
LABEL_40:
        v214[0] = MEMORY[0x1E69E7CC0];
        sub_1DA82A778(0, v70 & ~(v70 >> 63), 0);
        v17 = v0;
        if ((v70 & 0x8000000000000000) == 0)
        {
          v91 = 0;
          v92 = v214[0];
          v93 = v90;
          v211 = v90 & 0xC000000000000001;
          v94 = (v0[10] + 8);
          v95 = v90;
          do
          {
            if (v211)
            {
              v96 = MEMORY[0x1E1272460](v91);
            }

            else
            {
              v96 = *(v93 + 8 * v91 + 32);
            }

            v97 = v96;
            v98 = v17[11];
            v99 = v17[9];
            v100 = [v96 URL];
            sub_1DA93F914();

            v101 = sub_1DA93F924();
            v103 = v102;

            (*v94)(v98, v99);
            v214[0] = v92;
            v105 = *(v92 + 16);
            v104 = *(v92 + 24);
            if (v105 >= v104 >> 1)
            {
              sub_1DA82A778((v104 > 1), v105 + 1, 1);
              v92 = v214[0];
            }

            ++v91;
            *(v92 + 16) = v105 + 1;
            v106 = v92 + 16 * v105;
            *(v106 + 32) = v101;
            *(v106 + 40) = v103;
            v17 = v213;
            v93 = v95;
          }

          while (v70 != v91);

          v71 = &selRef_bulletinGroupingSetting;
LABEL_52:
          v107 = v17[8];
          v108 = sub_1DA940BD4();

          v33 = v210;
          [(SEL *)v210 setAttachmentPaths:v108];

          v109 = sub_1DA93FF84();
          v110 = [v109 request];

          v111 = [v110 v71[57]];
          v112 = [v111 attachments];

          v113 = sub_1DA940BE4();
          if (v113 >> 62)
          {
            v114 = sub_1DA941264();
            if (v114)
            {
LABEL_54:
              v214[0] = MEMORY[0x1E69E7CC0];
              sub_1DA82A778(0, v114 & ~(v114 >> 63), 0);
              if ((v114 & 0x8000000000000000) == 0)
              {
                v115 = 0;
                v116 = v214[0];
                v117 = v113;
                v212 = v113 & 0xC000000000000001;
                v118 = (v17[10] + 8);
                v119 = v113;
                v120 = v114;
                do
                {
                  if (v212)
                  {
                    v121 = MEMORY[0x1E1272460](v115, v117);
                  }

                  else
                  {
                    v121 = *(v117 + 8 * v115 + 32);
                  }

                  v122 = v121;
                  v123 = v213[11];
                  v124 = v213[9];
                  v125 = [v121 URL];
                  sub_1DA93F914();

                  v126 = sub_1DA93F8F4();
                  v128 = v127;

                  (*v118)(v123, v124);
                  v214[0] = v116;
                  v130 = *(v116 + 16);
                  v129 = *(v116 + 24);
                  if (v130 >= v129 >> 1)
                  {
                    sub_1DA82A778((v129 > 1), v130 + 1, 1);
                    v116 = v214[0];
                  }

                  ++v115;
                  *(v116 + 16) = v130 + 1;
                  v131 = v116 + 16 * v130;
                  *(v131 + 32) = v126;
                  *(v131 + 40) = v128;
                  v117 = v119;
                }

                while (v120 != v115);

                v17 = v213;
                v33 = v210;
                v71 = &selRef_bulletinGroupingSetting;
LABEL_65:
                v132 = v17[8];
                v133 = sub_1DA940BD4();

                [(SEL *)v33 setAttachmentNames:v133];

                v134 = sub_1DA940014();
                LOBYTE(v133) = sub_1DA88E254(v134, v135);

                if ((v133 & 1) == 0)
                {
                  [(SEL *)v33 setSummarizationStatus:5];
                }

                v136 = v17[8];
                v137 = sub_1DA940014();
                v139 = sub_1DA88F050(v137, v138);

                if ((v139 & 1) == 0)
                {
                  [(SEL *)v33 setUrgencyStatus:5];
                }

                v140 = v17[8];
                v141 = sub_1DA8AD06C(&unk_1F56316B8);
                sub_1DA83ACD0(&unk_1F56316D8);
                v142 = sub_1DA93FF84();
                v143 = [v142 request];

                v144 = [v143 v71[57]];
                v145 = [v144 userInfo];

                v146 = sub_1DA940974();

                v147 = sub_1DA88F888(v146, v141);
                swift_bridgeObjectRelease_n();

                if (*(v147 + 16))
                {
                  v148 = objc_opt_self();
                  v149 = sub_1DA940964();

                  v17[7] = 0;
                  v150 = [v148 archivedDataWithRootObject:v149 requiringSecureCoding:1 error:v17 + 7];

                  v151 = v17[7];
                  if (v150)
                  {
                    v152 = sub_1DA93F9A4();
                    v154 = v153;

                    v155 = sub_1DA93F994();
                    [(SEL *)v33 setExtraData:v155];

                    sub_1DA828324(v152, v154);
                  }

                  else
                  {
                    v156 = v151;
                    v157 = sub_1DA93F8C4();

                    swift_willThrow();
                  }
                }

                else
                {
                }

                v158 = v17[8];
                v70 = sub_1DA7AF3EC(0, &qword_1EE114D70, 0x1E696AD98);
                v159 = sub_1DA93FF84();
                v160 = [v159 request];

                v161 = [v160 content];
                [v161 interruptionLevel];

                v162 = sub_1DA9410E4();
                [(SEL *)v33 setNotificationTimeSensitive:v162];

                v163 = sub_1DA93FF84();
                v164 = [v163 request];

                v165 = [v164 content];
                [v165 interruptionLevel];

                v166 = sub_1DA9410E4();
                [(SEL *)v33 setNotificationCritical:v166];

                v167 = sub_1DA940104();
                v168 = &OBJC_IVAR____TtC21UserNotificationsCore17ReplicatorManager_replicatedSources;
                if (!v167)
                {
                  v187 = sub_1DA9410E4();
                  [(SEL *)v33 setIsCommunicationNotification:v187];
LABEL_98:
                  v188 = v17[8];

                  sub_1DA9400E4();
                  v189 = objc_allocWithZone(MEMORY[0x1E6964E80]);
                  v190 = v33;
                  v191 = sub_1DA940A04();

                  v192 = sub_1DA940A04();
                  v193 = [v189 initWithUniqueIdentifier:v191 domainIdentifier:v192 attributeSet:v190];
                  v17[22] = v193;

                  v194 = v193;
                  v195 = sub_1DA940584();
                  v196 = sub_1DA940F34();

                  if (os_log_type_enabled(v195, v196))
                  {
                    v197 = swift_slowAlloc();
                    v198 = swift_slowAlloc();
                    v214[0] = v198;
                    *v197 = 136315138;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
                    inited = swift_initStackObject();
                    *(inited + 16) = *(v168 + 58);
                    *(inited + 32) = v194;
                    v200 = v194;
                    v201 = sub_1DA7B673C(inited);
                    v203 = v202;
                    swift_setDeallocating();
                    v204 = *(inited + 16);
                    swift_arrayDestroy();
                    v205 = sub_1DA7AE6E8(v201, v203, v214);
                    v17 = v213;

                    *(v197 + 4) = v205;
                    _os_log_impl(&dword_1DA7A9000, v195, v196, "Adding index: [%s]", v197, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v198);
                    MEMORY[0x1E12739F0](v198, -1, -1);
                    MEMORY[0x1E12739F0](v197, -1, -1);
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
                  v206 = swift_allocObject();
                  v17[23] = v206;
                  *(v206 + 16) = *(v168 + 58);
                  *(v206 + 32) = v194;
                  v207 = v194;
                  v208 = swift_task_alloc();
                  v17[24] = v208;
                  *v208 = v17;
                  v208[1] = sub_1DA8912C0;
                  v209 = *MEMORY[0x1E69E9840];

                  return sub_1DA7BEF8C(v206, 0, 1);
                }

                v71 = v167;
                v169 = sub_1DA9410E4();
                [(SEL *)v33 setIsCommunicationNotification:v169];

                v33 = &selRef_pushFlags;
                v170 = [(SEL *)v71 recipients];
                sub_1DA7AF3EC(0, &qword_1EE110BB8, 0x1E6983330);
                v171 = sub_1DA940BE4();

                if (!(v171 >> 62))
                {
                  v172 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_77;
                }

LABEL_106:
                v172 = sub_1DA941264();
LABEL_77:

                v173 = [(SEL *)v71 recipientCount];
                if (v173 > v172)
                {
                  v172 = v173;
                }

                v168 = &selRef_pushFlags;
                v174 = [(SEL *)v71 sender];
                if (v174 && (v174, __OFADD__(v172, 1)))
                {
                  __break(1u);
                }

                else
                {
                  v70 = sub_1DA9410F4();
                  [(SEL *)v210 setIsGroupThread:v70];
                  v175 = [(SEL *)v71 sender];
                  v168 = &OBJC_IVAR____TtC21UserNotificationsCore17ReplicatorManager_replicatedSources;
                  if (v175)
                  {
                    v176 = v175;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
                    v177 = swift_allocObject();
                    *(v177 + 16) = xmmword_1DA9593A0;
                    *(v177 + 32) = sub_1DA88D4FC();
                    sub_1DA7AF3EC(0, &qword_1EE110B78, 0x1E6964E50);
                    v178 = sub_1DA940BD4();

                    [(SEL *)v210 setAuthors:v178];

                    LODWORD(v177) = [v176 isDisplayNameSuggested];
                    v179 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
                    [(SEL *)v210 setIsMessageFromKnownSender:v179];
                  }

                  v180 = [v71 v33[16]];
                  v181 = sub_1DA940BE4();

                  if (v181 >> 62)
                  {
                    v182 = sub_1DA941264();
                  }

                  else
                  {
                    v182 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v182)
                  {
                    v214[0] = MEMORY[0x1E69E7CC0];
                    sub_1DA941404();
                    if (v182 < 0)
                    {
                      __break(1u);
                    }

                    v183 = 0;
                    do
                    {
                      if ((v181 & 0xC000000000000001) != 0)
                      {
                        v184 = MEMORY[0x1E1272460](v183, v181);
                      }

                      else
                      {
                        v184 = *(v181 + 8 * v183 + 32);
                      }

                      v185 = v184;
                      ++v183;
                      sub_1DA88D4FC();

                      sub_1DA9413E4();
                      v186 = *(v214[0] + 16);
                      sub_1DA941414();
                      sub_1DA941424();
                      sub_1DA9413F4();
                    }

                    while (v182 != v183);

                    v168 = &OBJC_IVAR____TtC21UserNotificationsCore17ReplicatorManager_replicatedSources;
                    goto LABEL_97;
                  }
                }

LABEL_97:
                sub_1DA7AF3EC(0, &qword_1EE110B78, 0x1E6964E50);
                v187 = sub_1DA940BD4();

                v33 = v210;
                [(SEL *)v210 setPrimaryRecipients:v187];

                goto LABEL_98;
              }

LABEL_105:
              __break(1u);
              goto LABEL_106;
            }
          }

          else
          {
            v114 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v114)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_65;
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    else
    {
      v70 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
        goto LABEL_40;
      }
    }

    v17 = v0;
    goto LABEL_52;
  }

  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[11];

  v24 = v0[1];
  v25 = *MEMORY[0x1E69E9840];

  return v24();
}

uint64_t sub_1DA8912C0()
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1DA8914D8;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1DA891410;
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DA891410()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 168);

  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);

  v6 = *(v0 + 8);
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1DA8914D8()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];

  v8 = v0[1];
  v9 = v0[25];
  v10 = *MEMORY[0x1E69E9840];

  return v8();
}

uint64_t sub_1DA8915B8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA8916F4, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DA8916F4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1DA891758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E98, &qword_1DA95DA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1DA8917C8(unint64_t a1)
{
  v3 = *(sub_1DA93FAF4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DA88D714(a1, (v1 + v4), v5);
}

void sub_1DA891864(void *a1)
{
  v3 = *(sub_1DA93FAF4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1DA88DC68(a1, v4);
}

uint64_t sub_1DA8918D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA89191C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7470;

  return sub_1DA88DBC0(a1, v4, v5, v7);
}

uint64_t sub_1DA8919FC()
{
  v15 = v0;
  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE11AFA0);

  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x1E1271CD0](v5, MEMORY[0x1E69E6158]);
    v10 = sub_1DA7AE6E8(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Removing index: [%{public}s]", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12739F0](v7, -1, -1);
    MEMORY[0x1E12739F0](v6, -1, -1);
  }

  v11 = *(v0 + 16);
  v12 = swift_task_alloc();
  *(v0 + 24) = v12;
  *v12 = v0;
  v12[1] = sub_1DA854D44;

  return sub_1DA7BEF8C(0, v11, 0);
}

uint64_t sub_1DA891BF0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1DA941134();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1DA891CBC()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
  sub_1DA940FE4();

  v4 = v1[5];

  v5 = *(*v1 + 128);
  v6 = *(v2 + 80);
  v7 = sub_1DA941134();
  (*(*(v7 - 8) + 8))(v1 + v5, v7);
  return v1;
}

uint64_t sub_1DA891DC0()
{
  sub_1DA891CBC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_1DA891E30@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t NotificationActionSelector.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NotificationActionSelector.notificationIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NotificationActionSelector.actionIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NotificationActionSelector.userText.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void __swiftcall NotificationActionSelector.init(bundleIdentifier:notificationIdentifier:actionIdentifier:userText:)(UserNotificationsCore::NotificationActionSelector *__return_ptr retstr, Swift::String bundleIdentifier, Swift::String notificationIdentifier, Swift::String actionIdentifier, Swift::String_optional userText)
{
  retstr->bundleIdentifier = bundleIdentifier;
  retstr->notificationIdentifier = notificationIdentifier;
  retstr->actionIdentifier = actionIdentifier;
  retstr->userText = userText;
}

unint64_t sub_1DA891F84()
{
  v1 = 0x7478655472657375;
  v2 = 0xD000000000000010;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DA892000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA892960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA892028(uint64_t a1)
{
  v2 = sub_1DA89290C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA892064(uint64_t a1)
{
  v2 = sub_1DA89290C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationActionSelector.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5F28, &qword_1DA95DB40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16[5] = v1[3];
  v16[6] = v10;
  v11 = v1[4];
  v16[3] = v1[5];
  v16[4] = v11;
  v12 = v1[6];
  v16[1] = v1[7];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89290C();
  sub_1DA941834();
  v20 = 0;
  v14 = v16[7];
  sub_1DA9415D4();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_1DA9415D4();
  v18 = 2;
  sub_1DA9415D4();
  v17 = 3;
  sub_1DA9415B4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t NotificationActionSelector.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5F38, &qword_1DA95DB48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89290C();
  sub_1DA941804();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1DA941554();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_1DA941554();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_1DA941554();
  v27 = v15;
  v35 = 3;
  v16 = sub_1DA941524();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  sub_1DA848A24(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return sub_1DA84A040(v34);
}

uint64_t UNCDecodeNotificationActionSelector(void *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = a1;
  v5 = sub_1DA93F9A4();
  v7 = v6;

  _Block_copy(v3);
  sub_1DA892AD4(v5, v7, v3);
  _Block_release(v3);
  _Block_release(v3);

  return sub_1DA828324(v5, v7);
}

uint64_t UNCDecodeNotificationActionSelector(data:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void, void, void, void, void, void))
{
  v4 = sub_1DA93F7A4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1DA93F794();
  sub_1DA865250();
  sub_1DA93F784();
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;

  a3(v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), 0);

  return sub_1DA84A040(v8);
}

uint64_t _s21UserNotificationsCore26NotificationActionSelectorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1DA941684()) && (v2 == v7 && v4 == v8 || (sub_1DA941684()) && (v3 == v9 && v5 == v10 || (sub_1DA941684()))
  {
    if (v6)
    {
      if (v11 && (v14 == v13 && v6 == v11 || (sub_1DA941684() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1DA89290C()
{
  result = qword_1ECBD5F30;
  if (!qword_1ECBD5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5F30);
  }

  return result;
}

uint64_t sub_1DA892960(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DA950340 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DA9533C0 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DA9533E0 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7478655472657375 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DA941684();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DA892AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DA93F7A4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1DA93F794();
  sub_1DA865250();
  sub_1DA93F784();
  v12[0] = v12[5];
  v12[1] = v12[6];
  v12[2] = v12[7];
  v12[3] = v13;

  v7 = sub_1DA940A04();
  v8 = sub_1DA940A04();
  v9 = sub_1DA940A04();
  if (*(&v13 + 1))
  {
    v10 = sub_1DA940A04();
  }

  else
  {
    v10 = 0;
  }

  (*(a3 + 16))(a3, v7, v8, v9, v10, 0);

  return sub_1DA84A040(v12);
}

unint64_t sub_1DA892CCC()
{
  result = qword_1ECBD5F40;
  if (!qword_1ECBD5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5F40);
  }

  return result;
}

unint64_t sub_1DA892D24()
{
  result = qword_1ECBD5F48;
  if (!qword_1ECBD5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5F48);
  }

  return result;
}

unint64_t sub_1DA892D7C()
{
  result = qword_1ECBD5F50;
  if (!qword_1ECBD5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5F50);
  }

  return result;
}

void sub_1DA892E0C()
{
  v0 = *MEMORY[0x1E6983338];
  v1 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v2 = v0;
  v3 = [v1 initWithDomain:v2 code:1 userInfo:0];

  qword_1EE111450 = v3;
}

uint64_t sub_1DA892E90()
{
  v1 = sub_1DA9407F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940854();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientConnection) invalidate];
  v14[0] = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1DA898464;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_227;
  v12 = _Block_copy(aBlock);

  sub_1DA940824();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1DA89846C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA8984C4();
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v10, v5, v12);
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void sub_1DA893138()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue_serverConnection;
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue_serverConnection) invalidate];
    v3 = *&v2[v1];
    *&v2[v1] = 0;
  }
}

void sub_1DA8931B8(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE11B068);
    v6 = v4;
    v7 = sub_1DA940584();
    v8 = sub_1DA940EF4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446210;
      if (*&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
      {
        v11 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
        v12 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
      }

      else
      {
        v12 = 0xE300000000000000;
        v11 = 7104878;
      }

      v13 = sub_1DA7AE6E8(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DA7A9000, v7, v8, a2, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12739F0](v10, -1, -1);
      MEMORY[0x1E12739F0](v9, -1, -1);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1DA892E90();
      sub_1DA8A4828(v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1DA8933A0(char a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA9405A4();
    __swift_project_value_buffer(v11, qword_1EE11B068);
    v12 = a3;

    v13 = sub_1DA940584();
    v14 = sub_1DA940F14();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136446466;
      if (*&v12[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
      {
        v17 = *&v12[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
        v18 = *&v12[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
      }

      else
      {
        v18 = 0xE300000000000000;
        v17 = 7104878;
      }

      v19 = sub_1DA7AE6E8(v17, v18, v21);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_1DA7AE6E8(a4, a5, v21);
      _os_log_impl(&dword_1DA7A9000, v13, v14, "[%{public}s] Not allowing service extension '%{public}s' to request user notifications at this time", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v16, -1, -1);
      MEMORY[0x1E12739F0](v15, -1, -1);
    }
  }

  result = swift_beginAccess();
  *(a6 + 16) = a1 & 1;
  return result;
}

id sub_1DA8935CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationServiceConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DA893690(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = sub_1DA7AEA10();
  if (v8)
  {
    v9 = v8;
    if (sub_1DA7AD2CC(a2, a3))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v10 = sub_1DA9405A4();
      __swift_project_value_buffer(v10, qword_1EE11B068);
      v11 = a1;

      v12 = sub_1DA940584();
      v13 = sub_1DA940EF4();

      if (os_log_type_enabled(v12, v13))
      {
        v29 = a4;
        v14 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v14 = 136446466;
        if (*&v11[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
        {
          v15 = *&v11[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v16 = *&v11[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        }

        else
        {
          v15 = 7104878;
          v16 = 0xE300000000000000;
        }

        v26 = sub_1DA7AE6E8(v15, v16, &v30);

        *(v14 + 4) = v26;
        *(v14 + 12) = 2082;
        *(v14 + 14) = sub_1DA7AE6E8(a2, a3, &v30);
        _os_log_impl(&dword_1DA7A9000, v12, v13, "[%{public}s] Forwarding setObservingUserNotifications: %{public}s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v28, -1, -1);
        MEMORY[0x1E12739F0](v14, -1, -1);

        a4 = v29;
      }

      else
      {
      }

      v27 = sub_1DA940A04();
      [v9 setObservingUserNotifications:a4 & 1 forBundleIdentifier:v27];

      if (swift_unknownObjectWeakLoadStrong())
      {
        if (a4)
        {
          sub_1DA8A4FBC(v11, a2, a3);
        }

        else
        {
          sub_1DA8A52D0(v11, a2, a3);
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DA9405A4();
  __swift_project_value_buffer(v17, qword_1EE11B068);
  v18 = a1;

  v19 = sub_1DA940584();
  v20 = sub_1DA940F14();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136446466;
    if (*&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v23 = *&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v24 = *&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v23 = 7104878;
      v24 = 0xE300000000000000;
    }

    v25 = sub_1DA7AE6E8(v23, v24, &v30);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1DA7AE6E8(a2, a3, &v30);
    _os_log_impl(&dword_1DA7A9000, v19, v20, "[%{public}s] setObservingUserNotifications not allowed: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v22, -1, -1);
    MEMORY[0x1E12739F0](v21, -1, -1);
  }
}

void sub_1DA893C24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  sub_1DA940A94();
  v13 = os_transaction_create();

  v14 = sub_1DA7AEA10();
  if (v14)
  {
    v15 = v14;
    if (sub_1DA7AD2CC(a3, a4))
    {
      v40 = a5;
      v41 = v13;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v16 = sub_1DA9405A4();
      __swift_project_value_buffer(v16, qword_1EE11B068);
      v17 = v7;

      v18 = sub_1DA940584();
      v19 = sub_1DA940EF4();

      if (os_log_type_enabled(v18, v19))
      {
        v42 = a6;
        v39 = a7;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock[0] = v21;
        *v20 = 136446466;
        v22 = *&v17[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v22)
        {
          v23 = *&v17[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v24 = v22;
        }

        else
        {
          v23 = 7104878;
          v24 = 0xE300000000000000;
        }

        v34 = sub_1DA7AE6E8(v23, v24, aBlock);

        *(v20 + 4) = v34;
        *(v20 + 12) = 2082;
        *(v20 + 14) = sub_1DA7AE6E8(a3, a4, aBlock);
        _os_log_impl(&dword_1DA7A9000, v18, v19, "[%{public}s] Forwarding replaceContentForRequest: %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v21, -1, -1);
        MEMORY[0x1E12739F0](v20, -1, -1);

        a7 = v39;
        a6 = v42;
      }

      else
      {
      }

      v35 = sub_1DA940A04();
      v36 = sub_1DA940A04();
      v37 = swift_allocObject();
      v37[2] = a6;
      v37[3] = a7;
      v37[4] = v41;
      aBlock[4] = sub_1DA8983E0;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_166;
      v38 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a6);
      swift_unknownObjectRetain();

      [v15 replaceContentForRequestWithIdentifier:v35 bundleIdentifier:v36 replacementContent:v40 completionHandler:v38];
      _Block_release(v38);
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

  v25 = sub_1DA9405A4();
  __swift_project_value_buffer(v25, qword_1EE11B068);
  v26 = v7;

  v27 = sub_1DA940584();
  v28 = sub_1DA940F14();

  if (os_log_type_enabled(v27, v28))
  {
    v43 = a6;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136446466;
    if (*&v26[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v31 = *&v26[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v32 = *&v26[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v31 = 7104878;
      v32 = 0xE300000000000000;
    }

    v33 = sub_1DA7AE6E8(v31, v32, aBlock);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1DA7AE6E8(a3, a4, aBlock);
    _os_log_impl(&dword_1DA7A9000, v27, v28, "[%{public}s] replaceContentForRequest not allowed: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v30, -1, -1);
    MEMORY[0x1E12739F0](v29, -1, -1);

    a6 = v43;
    if (v43)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a6)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a6(qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

void sub_1DA8942A8(void *a1, uint64_t a2, unint64_t a3)
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
        _os_log_impl(&dword_1DA7A9000, v10, v11, "[%{public}s] Forwarding setNotificationRequests: %{public}s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v13, -1, -1);
        MEMORY[0x1E12739F0](v12, -1, -1);
      }

      else
      {
      }

      sub_1DA7AF3EC(0, &unk_1EE110BE0, 0x1E6983298);
      v26 = sub_1DA940BD4();
      v18 = sub_1DA940A04();
      [v7 setNotificationRequests:v26 forBundleIdentifier:v18];
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
    _os_log_impl(&dword_1DA7A9000, v18, v19, "[%{public}s] setNotificationRequests not allowed: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v21, -1, -1);
    MEMORY[0x1E12739F0](v20, -1, -1);
  }

LABEL_20:
}

void sub_1DA8947CC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  sub_1DA940A94();
  v10 = os_transaction_create();

  v11 = sub_1DA7AEA10();
  if (v11)
  {
    v12 = v11;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v37 = v10;
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
        v38 = a5;
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
        _os_log_impl(&dword_1DA7A9000, v15, v16, "[%{public}s] Forwarding removeSimilarNotificationRequests: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v18, -1, -1);
        MEMORY[0x1E12739F0](v17, -1, -1);

        a5 = v38;
      }

      else
      {
      }

      sub_1DA7AF3EC(0, &unk_1EE110BE0, 0x1E6983298);
      v33 = sub_1DA940BD4();
      v34 = sub_1DA940A04();
      v35 = swift_allocObject();
      v35[2] = a4;
      v35[3] = a5;
      v35[4] = v37;
      aBlock[4] = sub_1DA7B6230;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_137_0;
      v36 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a4);
      swift_unknownObjectRetain();

      [v12 removeSimilarNotificationRequests:v33 forBundleIdentifier:v34 completionHandler:v36];
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
    _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{public}s] removeSimilarNotificationRequests not allowed: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v27, -1, -1);
    MEMORY[0x1E12739F0](v26, -1, -1);

    if (a4)
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

void sub_1DA894E50(uint64_t a1, unint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  sub_1DA940A94();
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      v35 = a4;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = v4;

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
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding removeAllPendingNotificationRequests: %{public}s", v16, 0x16u);
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
      v32[2] = a3;
      v32[3] = v35;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B6230;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_127;
      v33 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a3);
      swift_unknownObjectRetain();

      [v11 removeAllPendingNotificationRequestsForBundleIdentifier:v31 completionHandler:v33];
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
  v22 = v4;

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
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] removeAllPendingNotificationRequests not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);

    if (a3)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a3)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a3(0, qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

void sub_1DA895460(uint64_t a1, unint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  sub_1DA940A94();
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      v35 = a4;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = v4;

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
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding removeAllDeliveredNotifications: %{public}s", v16, 0x16u);
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
      v32[2] = a3;
      v32[3] = v35;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B6230;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_98_0;
      v33 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a3);
      swift_unknownObjectRetain();

      [v11 removeAllDeliveredNotificationsForBundleIdentifier:v31 completionHandler:v33];
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
  v22 = v4;

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
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] removeAllDeliveredNotifications not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);

    if (a3)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a3)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a3(0, qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1DA895B88(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DA940A94();
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
      v13 = v4;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v35 = a3;
        v36 = v9;
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

        v31 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v31;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getClearedInfoForDataProviderMigration: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        a3 = v35;
        v9 = v36;
      }

      else
      {
      }

      if ([v11 respondsToSelector_])
      {
        v32 = swift_allocObject();
        v32[2] = a3;
        v32[3] = a4;
        v32[4] = v9;

        swift_unknownObjectRetain();
        v33 = sub_1DA940A04();
        aBlock[4] = sub_1DA8965EC;
        aBlock[5] = v32;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DA896098;
        aBlock[3] = &block_descriptor_12;
        v34 = _Block_copy(aBlock);
        [v11 getClearedInfoForDataProviderMigrationWithBundleIdentifier:v33 withCompletionHandler:v34];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v34);
      }

      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = v4;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (!os_log_type_enabled(v23, v24))
  {

LABEL_23:

    return swift_unknownObjectRelease();
  }

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
  _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getClearedInfoForDataProviderMigration not allowed: %{public}s", v25, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E12739F0](v26, -1, -1);
  MEMORY[0x1E12739F0](v25, -1, -1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DA896098(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v6 = a2;
    sub_1DA848FE8(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_unknownObjectRetain();
  v4(v8);

  return sub_1DA896614(v8);
}

uint64_t sub_1DA8961DC(uint64_t a1, uint64_t a2)
{
  sub_1DA89667C(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_1DA941674();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  (*(a2 + 16))(a2, v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DA896318()
{
  sub_1DA940A94();
  os_transaction_create();

  v1 = [*(v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientConnection) remoteObjectProxy];
  sub_1DA941154();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6050, qword_1DA95DDD8);
  if (swift_dynamicCast())
  {
    v2 = sub_1DA93F994();
    v3 = sub_1DA940A04();
    [v5 didReceiveDeviceToken:v2 forBundleIdentifier:v3];

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1DA896518()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1DA940A04();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1DA93F8C4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1DA8965EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DA896614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7730, &qword_1DA95C370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA89667C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7730, &qword_1DA95C370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DA8966EC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void))
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
        _os_log_impl(&dword_1DA7A9000, v16, v17, "[%{public}s] Forwarding addRequest: %{public}s", v18, 0x16u);
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
      aBlock[3] = &block_descriptor_176;
      v35 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v13 addNotificationRequest:a1 forBundleIdentifier:v33 withCompletionHandler:v35];
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
    _os_log_impl(&dword_1DA7A9000, v25, v26, "[%{public}s] addRequest not allowed: %{public}s", v27, 0x16u);
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

void sub_1DA896C84(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
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
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getPendingNotificationRequests: %{public}s", v16, 0x16u);
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
      v32[2] = sub_1DA8983B4;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B2E58;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA8947A0;
      aBlock[3] = &block_descriptor_156;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getPendingNotificationRequestsForBundleIdentifier:v31 withCompletionHandler:v33];
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
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getPendingNotificationRequests not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  sub_1DA7AF3EC(0, &unk_1EE110BE0, 0x1E6983298);
  v35 = sub_1DA940BD4();
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

void sub_1DA8971F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void (**a6)(void, void))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  sub_1DA940A94();
  _Block_copy(a6);
  v12 = os_transaction_create();

  v13 = sub_1DA7AEA10();
  if (v13)
  {
    v14 = v13;
    if (sub_1DA7AD2CC(a3, a4))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v15 = sub_1DA9405A4();
      __swift_project_value_buffer(v15, qword_1EE11B068);
      v16 = a5;

      v17 = sub_1DA940584();
      v18 = sub_1DA940EF4();

      if (os_log_type_enabled(v17, v18))
      {
        v39 = a2;
        v40 = v12;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock[0] = v20;
        *v19 = 136446466;
        v21 = *&v16[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v21)
        {
          v22 = *&v16[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v23 = v21;
        }

        else
        {
          v22 = 7104878;
          v23 = 0xE300000000000000;
        }

        v35 = sub_1DA7AE6E8(v22, v23, aBlock);

        *(v19 + 4) = v35;
        *(v19 + 12) = 2082;
        *(v19 + 14) = sub_1DA7AE6E8(a3, a4, aBlock);
        _os_log_impl(&dword_1DA7A9000, v17, v18, "[%{public}s] Forwarding setBadgeString: %{public}s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v20, -1, -1);
        MEMORY[0x1E12739F0](v19, -1, -1);

        v12 = v40;
        if (!v39)
        {
          goto LABEL_26;
        }
      }

      else
      {

        if (!a2)
        {
LABEL_26:
          v33 = 0;
          goto LABEL_27;
        }
      }

      v33 = sub_1DA940A04();
LABEL_27:
      v36 = sub_1DA940A04();
      v37 = swift_allocObject();
      v37[2] = sub_1DA7B1C6C;
      v37[3] = v11;
      v37[4] = v12;
      aBlock[4] = sub_1DA7B1C68;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_59;
      v38 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v14 setBadgeString:v33 forBundleIdentifier:v36 withCompletionHandler:v38];
      _Block_release(v38);

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

  v24 = sub_1DA9405A4();
  __swift_project_value_buffer(v24, qword_1EE11B068);
  v25 = a5;

  v26 = sub_1DA940584();
  v27 = sub_1DA940F14();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136446466;
    v30 = *&v25[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    if (v30)
    {
      v31 = *&v25[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v32 = v30;
    }

    else
    {
      v31 = 7104878;
      v32 = 0xE300000000000000;
    }

    v34 = sub_1DA7AE6E8(v31, v32, aBlock);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_1DA7AE6E8(a3, a4, aBlock);
    _os_log_impl(&dword_1DA7A9000, v26, v27, "[%{public}s] setBadgeString not allowed: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v29, -1, -1);
    MEMORY[0x1E12739F0](v28, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v41 = sub_1DA93F8B4();
  (a6)[2](a6, v41);

  swift_unknownObjectRelease();
}

void sub_1DA8977BC(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
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
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getNotificationTopics: %{public}s", v16, 0x16u);
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
      v32[2] = sub_1DA898380;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA898594;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA895B3C;
      aBlock[3] = &block_descriptor_40;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getNotificationTopicsForBundleIdentifier:v31 withCompletionHandler:v33];
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
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getNotificationTopics not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1DA941264())
  {
    sub_1DA84DD50(MEMORY[0x1E69E7CC0]);
  }

  sub_1DA7AF3EC(0, &qword_1ECBD56D8, 0x1E69832C0);
  sub_1DA7B0D88(&unk_1ECBD6060, &qword_1ECBD56D8, 0x1E69832C0);
  v35 = sub_1DA940E84();
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

void sub_1DA897D94(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void, void))
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
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding requestRemoveAuthorization: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      if ([v11 respondsToSelector_])
      {
        v31 = swift_allocObject();
        v31[2] = sub_1DA7B43A8;
        v31[3] = v8;
        v31[4] = v9;

        swift_unknownObjectRetain();
        v32 = sub_1DA940A04();
        aBlock[4] = sub_1DA898554;
        aBlock[5] = v31;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DA7B43C0;
        aBlock[3] = &block_descriptor_22_1;
        v33 = _Block_copy(aBlock);
        [v11 requestRemoveAuthorizationForBundleIdentifier:v32 completionHandler:v33];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v33);
      }

      else
      {

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

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
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] requestRemoveAuthorization not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v35 = sub_1DA93F8B4();
  (a4)[2](a4, 0, v35);

  swift_unknownObjectRelease();
}