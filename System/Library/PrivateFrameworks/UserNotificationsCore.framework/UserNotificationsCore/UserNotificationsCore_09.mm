void *sub_1DA8C3148@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = result[7];
    [v4 lock];
    swift_getKeyPath();
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
    sub_1DA93FB74();

    v5 = v2[8];

    result = [v4 unlock];
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1DA8C322C(uint64_t a1, uint64_t a2))()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a2, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v5 + 32))(v10 + v9, v8, v4);

  return sub_1DA8C77F0;
}

uint64_t sub_1DA8C3374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v19 - v12;
  if (a1)
  {
    v14 = *(a1 + 56);
    [v14 lock];
    swift_getKeyPath();
    v19[1] = a1;
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
    sub_1DA93FB74();

    v15 = *(a1 + 64);

    [v14 unlock];
    v16 = sub_1DA940D34();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    (*(v5 + 16))(v8, a2, v4);
    v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = a1;
    (*(v5 + 32))(&v18[v17], v8, v4);
    *&v18[(v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = v15;

    sub_1DA8DB00C(0, 0, v13, &unk_1DA95FE80, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8C3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DA8C3644, 0, 0);
}

uint64_t sub_1DA8C3644()
{
  sub_1DA8C2854(v0[4], v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DA8C36A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66E8, &unk_1DA95FE90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  if (qword_1ECBD4778 != -1)
  {
    swift_once();
  }

  v15 = sub_1DA9405A4();
  __swift_project_value_buffer(v15, qword_1ECBD6650);
  v36 = *(v5 + 16);
  v36(v14, a1, v4);
  v16 = sub_1DA940584();
  v17 = sub_1DA940F34();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = a2;
    v32 = v20;
    v37 = v20;
    *v19 = 136315138;
    v36(v12, v14, v4);
    v21 = sub_1DA940A74();
    v34 = v9;
    v22 = v5;
    v24 = v23;
    v31 = *(v22 + 8);
    v31(v14, v4);
    v25 = sub_1DA7AE6E8(v21, v24, &v37);
    v5 = v22;
    v9 = v34;

    *(v19 + 4) = v25;
    _os_log_impl(&dword_1DA7A9000, v16, v17, "Terminating monitor. Reason: %s", v19, 0xCu);
    v26 = v32;
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E12739F0](v26, -1, -1);
    v27 = v19;
    a1 = v33;
    MEMORY[0x1E12739F0](v27, -1, -1);

    v28 = v31;
  }

  else
  {

    v28 = *(v5 + 8);
    v28(v14, v4);
  }

  v36(v9, a1, v4);
  result = (*(v5 + 88))(v9, v4);
  if (result != *MEMORY[0x1E69E8610])
  {
    if (result == *MEMORY[0x1E69E8618])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
      return sub_1DA940D64();
    }

    else
    {
      return (v28)(v9, v4);
    }
  }

  return result;
}

uint64_t NotificationSettingsProvider.Monitor.Iterator.next()()
{
  v1 = *(MEMORY[0x1E69E8680] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6678, &qword_1DA95FC48);
  *v2 = v0;
  v2[1] = sub_1DA8C3AC8;

  return MEMORY[0x1EEE6D9D0](v0 + 16, v3);
}

uint64_t sub_1DA8C3AC8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA835B58, 0, 0);
}

uint64_t sub_1DA8C3BC4(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = *(MEMORY[0x1E69E8680] + 4);
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6678, &qword_1DA95FC48);
  *v3 = v1;
  v3[1] = sub_1DA8C3C78;

  return MEMORY[0x1EEE6D9D0](v1 + 16, v4);
}

uint64_t sub_1DA8C3C78()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA8C3D74, 0, 0);
}

uint64_t sub_1DA8C3D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v6[8] = v10;
  *v10 = v6;
  v10[1] = sub_1DA8C3E4C;

  return MEMORY[0x1EEE6D8C8](v6 + 2, a5, a6);
}

uint64_t sub_1DA8C3E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v15 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 40);
      v6 = *(v2 + 48);
      swift_getObjectType();
      v7 = sub_1DA940C34();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1DA8C4000;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 40);
      v12 = *(v2 + 48);
      swift_getObjectType();
      v7 = sub_1DA940C34();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1DA8C3FDC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1DA8C4000()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t NotificationSettingsProvider.Monitor.makeAsyncIterator()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6680, &qword_1DA95FC50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6688, &qword_1DA95FC58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-v9];
  v11 = *v0;
  *v5 = 1;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8640], v1);
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6690, qword_1DA95FC60);
  sub_1DA940DC4();

  sub_1DA940D84();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DA8C4280()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6680, &qword_1DA95FC50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6688, &qword_1DA95FC58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-v9];
  v11 = *v0;
  *v5 = 1;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8640], v1);
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6690, qword_1DA95FC60);
  sub_1DA940DC4();

  sub_1DA940D84();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DA8C4460()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD6650);
  __swift_project_value_buffer(v0, qword_1ECBD6650);
  return sub_1DA940594();
}

uint64_t sub_1DA8C44E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1DA8C4520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSource();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66E0, &qword_1DA95FE70);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v50 - v14;
  if (a1 == a2)
  {
    v56 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v55 = a2;
    v16 = 0;
    v51 = a1;
    v17 = *(a1 + 64);
    v50 = a1 + 64;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v22 = &unk_1ECBD58F0;
    while (v20)
    {
      v57 = (v20 - 1) & v20;
      v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
      v29 = v51;
      v30 = v52;
      sub_1DA82A798(*(v51 + 48) + *(v53 + 72) * v23, v52);
      v31 = *(*(v29 + 56) + 8 * v23);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_1DA95C1F8);
      v33 = *(v32 + 48);
      sub_1DA8B9950(v30, v13);
      *&v13[v33] = v31;
      (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
      v34 = v31;
      v26 = v55;
LABEL_17:
      sub_1DA8C7780(v13, v15);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_1DA95C1F8);
      v36 = (*(*(v35 - 8) + 48))(v15, 1, v35);
      v56 = v36 == 1;
      if (v36 == 1)
      {
        return;
      }

      v37 = v21;
      v38 = v22;
      v39 = v13;
      v40 = *(v35 + 48);
      v41 = v54;
      sub_1DA8B9950(v15, v54);
      v42 = v15;
      v43 = *&v15[v40];
      v44 = sub_1DA85A894(v41);
      v46 = v45;
      sub_1DA82A7FC(v41);
      if ((v46 & 1) == 0)
      {

        goto LABEL_24;
      }

      sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
      v47 = *(*(v26 + 56) + 8 * v44);
      v48 = sub_1DA941114();

      v13 = v39;
      v15 = v42;
      v22 = v38;
      v21 = v37;
      v20 = v57;
      if ((v48 & 1) == 0)
      {
        return;
      }
    }

    if (v21 <= v16 + 1)
    {
      v24 = v16 + 1;
    }

    else
    {
      v24 = v21;
    }

    v25 = v24 - 1;
    v26 = v55;
    while (1)
    {
      v27 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v27 >= v21)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_1DA95C1F8);
        (*(*(v49 - 8) + 56))(v13, 1, 1, v49);
        v57 = 0;
        v16 = v25;
        goto LABEL_17;
      }

      v28 = *(v50 + 8 * v27);
      ++v16;
      if (v28)
      {
        v57 = (v28 - 1) & v28;
        v23 = __clz(__rbit64(v28)) | (v27 << 6);
        v16 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v56 = 0;
  }
}

uint64_t sub_1DA8C4948(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1DA862D8C(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_1DA85A4B4(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1DA862DE8(&v24);
      return 0;
    }

    sub_1DA862D8C(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x1E12723B0](v23, &v24);
    sub_1DA862DE8(v23);
    result = sub_1DA862DE8(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8C4AE4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1DA8C5DF4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1DA8C4C10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for NotificationSource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_1DA8C7718(v6))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1DA82A798(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12);
      sub_1DA8C60B8(v12, v6);
      sub_1DA82A7FC(v12);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8C4DDC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v50 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_1DA941764();

    sub_1DA940AB4();
    v24 = sub_1DA941794();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_1DA941684() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1DA8E4190(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_1DA941764();

            sub_1DA940AB4();
            v43 = sub_1DA941794();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_1DA941684() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_1DA8C639C(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x1E12739F0](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_1DA830720();
    goto LABEL_53;
  }

  result = MEMORY[0x1E12739F0](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1DA8C534C(unint64_t a1, char *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v91 - v10;
  v104 = type metadata accessor for NotificationSource();
  v12 = *(*(v104 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v104);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v108 = (&v91 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v91 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v95 = (&v91 - v22);
  if (!*(a2 + 2))
  {

    v85 = MEMORY[0x1E69E7CD0];
    goto LABEL_86;
  }

  v96 = v9;
  v92 = 0;
  v24 = a1 + 56;
  v23 = *(a1 + 56);
  v25 = -1 << *(a1 + 32);
  v105 = ~v25;
  if (-v25 < 64)
  {
    v26 = ~(-1 << -v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v23;
  v97 = (63 - v25) >> 6;
  v103 = (v21 + 56);
  v94 = v21;
  v102 = (v21 + 48);
  v110 = a2;
  v113 = a2 + 56;

  v29 = 0;
  v101 = a1;
  v100 = a1 + 56;
  for (i = v11; ; v11 = i)
  {
    v30 = v27;
    v31 = v29;
    if (v27)
    {
LABEL_15:
      v35 = (v30 - 1) & v30;
      sub_1DA82A798(*(a1 + 48) + v94[9] * (__clz(__rbit64(v30)) | (v31 << 6)), v11);
      v36 = 0;
      v33 = v31;
    }

    else
    {
      v32 = v97 <= (v29 + 1) ? v29 + 1 : v97;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_88;
        }

        if (v31 >= v97)
        {
          break;
        }

        v30 = *(v24 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_15;
        }
      }

      v35 = 0;
      v36 = 1;
    }

    v37 = v104;
    v99 = *v103;
    v99(v11, v36, 1, v104);
    v114 = a1;
    v115 = v24;
    v116 = v105;
    v117 = v33;
    v118 = v35;
    v98 = *v102;
    if (v98(v11, 1, v37) == 1)
    {
      sub_1DA8C7718(v11);
      sub_1DA830720();
      v85 = v110;
      goto LABEL_86;
    }

    v38 = v95;
    sub_1DA8B9950(v11, v95);
    v39 = *(v110 + 5);
    sub_1DA941764();
    v40 = *v38;
    v41 = v38[1];
    v107 = v35;
    v109 = v40;
    sub_1DA941784();
    if (v41)
    {
      sub_1DA940AB4();
    }

    v42 = v95;
    v43 = v95[3];
    v111 = v95[2];
    sub_1DA940AB4();
    LODWORD(v106) = *(v42 + 48);
    sub_1DA941784();
    v44 = sub_1DA941794();
    v45 = -1 << v110[32];
    v29 = v44 & ~v45;
    v27 = v29 >> 6;
    v2 = 1 << v29;
    if (((1 << v29) & v113[v29 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1DA82A7FC(v95);
    v29 = v33;
    v27 = v107;
    a1 = v101;
    v24 = v100;
  }

  v46 = ~v45;
  v112 = v94[9];
  while (1)
  {
    sub_1DA82A798(*(v110 + 6) + v112 * v29, v20);
    v47 = *(v20 + 1);
    if (v47)
    {
      break;
    }

    if (!v41)
    {
      goto LABEL_31;
    }

LABEL_22:
    sub_1DA82A7FC(v20);
LABEL_23:
    v29 = (v29 + 1) & v46;
    v27 = v29 >> 6;
    v2 = 1 << v29;
    if ((v113[v29 >> 6] & (1 << v29)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (!v41)
  {
    goto LABEL_22;
  }

  v48 = *v20 == v109 && v47 == v41;
  if (!v48 && (sub_1DA941684() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_31:
  v49 = *(v20 + 2) == v111 && *(v20 + 3) == v43;
  if (!v49 && (sub_1DA941684() & 1) == 0)
  {
    goto LABEL_22;
  }

  v50 = v20[48];
  sub_1DA82A7FC(v20);
  if (v106 != v50)
  {
    goto LABEL_23;
  }

  v51 = sub_1DA82A7FC(v95);
  v20 = v110;
  v52 = v110[32];
  i = ((1 << v52) + 63) >> 6;
  v28 = 8 * i;
  if ((v52 & 0x3Fu) > 0xD)
  {
    goto LABEL_89;
  }

  while (2)
  {
    v94 = &v91;
    MEMORY[0x1EEE9AC00](v51);
    v54 = &v91 - ((v53 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v54, v113, v53);
    v55 = *&v54[8 * v27] & ~v2;
    v56 = *(v20 + 2);
    v106 = v54;
    *&v54[8 * v27] = v55;
    v57 = v56 - 1;
    v27 = v101;
    v29 = v96;
    v58 = v100;
    v59 = v97;
    v2 = v107;
LABEL_41:
    v95 = v57;
    while (2)
    {
      if (v2)
      {
        v60 = v33;
LABEL_53:
        v63 = __clz(__rbit64(v2));
        v64 = (v2 - 1) & v2;
        sub_1DA82A798(*(v27 + 48) + (v63 | (v60 << 6)) * v112, v29);
        v65 = 0;
LABEL_54:
        v66 = v104;
        v99(v29, v65, 1, v104);
        v114 = v27;
        v115 = v58;
        v116 = v105;
        v117 = v33;
        v118 = v64;
        if (v98(v29, 1, v66) == 1)
        {
          sub_1DA8C7718(v29);
          v85 = sub_1DA8E43B4(v106, i, v95, v20);
          goto LABEL_83;
        }

        v67 = v108;
        sub_1DA8B9950(v29, v108);
        v68 = *(v20 + 5);
        sub_1DA941764();
        v69 = *v67;
        v70 = v67[1];
        v107 = v64;
        v111 = v69;
        sub_1DA941784();
        if (v70)
        {
          sub_1DA940AB4();
        }

        v71 = v108;
        v73 = v108[2];
        v72 = v108[3];
        sub_1DA940AB4();
        LODWORD(v109) = *(v71 + 48);
        sub_1DA941784();
        v74 = sub_1DA941794();
        v75 = -1 << v20[32];
        v76 = v74 & ~v75;
        v77 = v76 >> 6;
        v78 = 1 << v76;
        if (((1 << v76) & v113[v76 >> 6]) == 0)
        {
LABEL_42:
          sub_1DA82A7FC(v108);
          v27 = v101;
          v29 = v96;
          v58 = v100;
          v59 = v97;
          v2 = v107;
          continue;
        }

        v79 = ~v75;
LABEL_62:
        sub_1DA82A798(*(v20 + 6) + v76 * v112, v15);
        v80 = *(v15 + 1);
        if (v80)
        {
          if (v70)
          {
            v81 = *v15 == v111 && v80 == v70;
            if (v81 || (sub_1DA941684() & 1) != 0)
            {
LABEL_69:
              v82 = *(v15 + 2) == v73 && *(v15 + 3) == v72;
              if (v82 || (sub_1DA941684() & 1) != 0)
              {
                v83 = v15[48];
                sub_1DA82A7FC(v15);
                v48 = v109 == v83;
                v20 = v110;
                if (v48)
                {
                  sub_1DA82A7FC(v108);
                  v84 = v106[v77];
                  v106[v77] = v84 & ~v78;
                  v48 = (v84 & v78) == 0;
                  v27 = v101;
                  v29 = v96;
                  v58 = v100;
                  v59 = v97;
                  v2 = v107;
                  if (!v48)
                  {
                    v57 = v95 - 1;
                    if (__OFSUB__(v95, 1))
                    {
                      __break(1u);
                    }

                    if (v95 == 1)
                    {

                      v85 = MEMORY[0x1E69E7CD0];
                      goto LABEL_83;
                    }

                    goto LABEL_41;
                  }

                  continue;
                }

                goto LABEL_61;
              }
            }
          }
        }

        else if (!v70)
        {
          goto LABEL_69;
        }

        sub_1DA82A7FC(v15);
LABEL_61:
        v76 = (v76 + 1) & v79;
        v77 = v76 >> 6;
        v78 = 1 << v76;
        if ((v113[v76 >> 6] & (1 << v76)) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_62;
      }

      break;
    }

    if (v59 <= (v33 + 1))
    {
      v61 = v33 + 1;
    }

    else
    {
      v61 = v59;
    }

    v62 = v61 - 1;
    while (1)
    {
      v60 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v60 >= v59)
      {
        v64 = 0;
        v65 = 1;
        v33 = v62;
        goto LABEL_54;
      }

      v2 = *(v58 + 8 * v60);
      ++v33;
      if (v2)
      {
        v33 = v60;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    v88 = v28;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v89 = swift_slowAlloc();
  memcpy(v89, v113, v88);
  v90 = v92;
  v85 = sub_1DA8C65D4(v89, i, v20, v29, &v114);

  if (v90)
  {

    result = MEMORY[0x1E12739F0](v89, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x1E12739F0](v89, -1, -1);
    v105 = v116;
LABEL_83:
    sub_1DA830720();
LABEL_86:
    v86 = *MEMORY[0x1E69E9840];
    return v85;
  }

  return result;
}

uint64_t sub_1DA8C5DF4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DA941764();
  sub_1DA940AB4();
  v7 = sub_1DA941794();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DA941684() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DA8AB908();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1DA8C6BC0(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1DA8C5F30(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1DA9412A4();

    if (v7)
    {
      v8 = sub_1DA8C6A68();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for NotificationServiceConnection();
  v11 = *(v3 + 40);
  v12 = sub_1DA941104();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1DA941114();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DA8ABC9C();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1DA8C6D84(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1DA8C60B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NotificationSource();
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1DA941764();
  v12 = *a1;
  v11 = a1[1];
  sub_1DA941784();
  if (v11)
  {
    sub_1DA940AB4();
  }

  v13 = a1[2];
  v43 = a1[3];
  sub_1DA940AB4();
  v42 = *(a1 + 48);
  sub_1DA941784();
  v14 = sub_1DA941794();
  v15 = v9 + 56;
  v16 = -1 << *(v9 + 32);
  v17 = v14 & ~v16;
  if (((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
    v35 = 1;
    return (*(v40 + 56))(a2, v35, 1, v5);
  }

  v38 = v5;
  v39 = a2;
  v18 = ~v16;
  v19 = *(v40 + 72);
  while (1)
  {
    sub_1DA82A798(*(v9 + 48) + v19 * v17, v8);
    v20 = *(v8 + 1);
    if (v20)
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_6:
    sub_1DA82A7FC(v8);
LABEL_7:
    v17 = (v17 + 1) & v18;
    if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      v35 = 1;
      v5 = v38;
      a2 = v39;
      return (*(v40 + 56))(a2, v35, 1, v5);
    }
  }

  if (!v11)
  {
    goto LABEL_6;
  }

  v21 = *v8 == v12 && v20 == v11;
  if (!v21 && (sub_1DA941684() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  v22 = *(v8 + 2) == v13 && *(v8 + 3) == v43;
  if (!v22 && (sub_1DA941684() & 1) == 0)
  {
    goto LABEL_6;
  }

  v41 = v19 * v17;
  v23 = v11;
  v24 = v19;
  v25 = v18;
  v26 = v15;
  v27 = v9;
  v28 = v13;
  v29 = v12;
  v30 = v8[48];
  sub_1DA82A7FC(v8);
  v21 = v42 == v30;
  v12 = v29;
  v13 = v28;
  v9 = v27;
  v15 = v26;
  v18 = v25;
  v19 = v24;
  v11 = v23;
  if (!v21)
  {
    goto LABEL_7;
  }

  v31 = v37;
  v32 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v31;
  v44 = *v31;
  v5 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DA8ABDF0();
    v34 = v44;
  }

  a2 = v39;
  sub_1DA8B9950(*(v34 + 48) + v41, v39);
  sub_1DA8C6F24(v17);
  v35 = 0;
  *v31 = v44;
  return (*(v40 + 56))(a2, v35, 1, v5);
}

uint64_t sub_1DA8C639C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_1DA8E4190(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_1DA941764();

        sub_1DA940AB4();
        v20 = sub_1DA941794();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_1DA941684() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1DA8C65D4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v57 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v56 - v11;
  v63 = type metadata accessor for NotificationSource();
  v12 = *(*(v63 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v63);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v65 = v18;
  v66 = (&v56 - v17);
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20) & ((-1 << a4) - 1);
  v59 = a1;
  v60 = a5;
  *(a1 + v20) = v21;
  v22 = v19 - 1;
  v61 = (v18 + 48);
  v62 = (v18 + 56);
  v68 = a3 + 56;
LABEL_2:
  v58 = v22;
LABEL_4:
  while (2)
  {
    v24 = *a5;
    v23 = a5[1];
    v26 = a5[2];
    v25 = a5[3];
    v27 = a5[4];
    v71 = v26;
    if (v27)
    {
      v28 = v25;
LABEL_13:
      v32 = (v27 - 1) & v27;
      v33 = v64;
      sub_1DA82A798(*(v24 + 48) + *(v65 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v64);
      v34 = 0;
      v31 = v28;
LABEL_14:
      v35 = v63;
      (*v62)(v33, v34, 1, v63);
      *a5 = v24;
      a5[1] = v23;
      a5[2] = v71;
      a5[3] = v31;
      a5[4] = v32;
      if ((*v61)(v33, 1, v35) == 1)
      {
        sub_1DA8C7718(v33);

        return sub_1DA8E43B4(v59, v57, v58, a3);
      }

      v36 = v66;
      sub_1DA8B9950(v33, v66);
      v37 = *(a3 + 40);
      sub_1DA941764();
      v38 = *v36;
      v39 = v36[1];
      sub_1DA941784();
      if (v39)
      {
        sub_1DA940AB4();
      }

      v40 = v68;
      v41 = v66;
      v42 = v66[3];
      v71 = v66[2];
      v70 = v42;
      sub_1DA940AB4();
      v67 = *(v41 + 48);
      sub_1DA941784();
      v43 = sub_1DA941794();
      v44 = -1 << *(a3 + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      v47 = 1 << v45;
      if (((1 << v45) & *(v40 + 8 * (v45 >> 6))) == 0)
      {
LABEL_3:
        result = sub_1DA82A7FC(v66);
        a5 = v60;
        continue;
      }

      v69 = v38;
      v48 = ~v44;
      v49 = *(v65 + 72);
      while (1)
      {
        sub_1DA82A798(*(a3 + 48) + v49 * v45, v15);
        v50 = *(v15 + 1);
        if (v50)
        {
          if (!v39 || (*v15 == v69 ? (v51 = v50 == v39) : (v51 = 0), !v51 && (sub_1DA941684() & 1) == 0))
          {
LABEL_20:
            sub_1DA82A7FC(v15);
            goto LABEL_21;
          }
        }

        else if (v39)
        {
          goto LABEL_20;
        }

        v52 = *(v15 + 2) == v71 && *(v15 + 3) == v70;
        if (!v52 && (sub_1DA941684() & 1) == 0)
        {
          goto LABEL_20;
        }

        v53 = a3;
        v54 = v15[48];
        sub_1DA82A7FC(v15);
        v51 = v67 == v54;
        a3 = v53;
        v40 = v68;
        if (v51)
        {
          result = sub_1DA82A7FC(v66);
          a5 = v60;
          v55 = v59[v46];
          v59[v46] = v55 & ~v47;
          if ((v55 & v47) != 0)
          {
            v22 = v58 - 1;
            if (__OFSUB__(v58, 1))
            {
              goto LABEL_44;
            }

            if (v58 == 1)
            {
              return MEMORY[0x1E69E7CD0];
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

LABEL_21:
        v45 = (v45 + 1) & v48;
        v46 = v45 >> 6;
        v47 = 1 << v45;
        if ((*(v40 + 8 * (v45 >> 6)) & (1 << v45)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v29 = (v26 + 64) >> 6;
  if (v29 <= v25 + 1)
  {
    v30 = v25 + 1;
  }

  else
  {
    v30 = (v26 + 64) >> 6;
  }

  v31 = v30 - 1;
  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v29)
    {
      v32 = 0;
      v34 = 1;
      v33 = v64;
      goto LABEL_14;
    }

    v27 = *(v23 + 8 * v28);
    ++v25;
    if (v27)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1DA8C6A68()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1DA941264();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1DA8A9D7C(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1DA941104();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for NotificationServiceConnection();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1DA941114();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1DA8C6D84(v9);
  result = sub_1DA941114();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DA8C6BC0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DA9411F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1DA941764();

        sub_1DA940AB4();
        v15 = sub_1DA941794();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DA8C6D84(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DA9411F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1DA941104();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1DA8C6F24(unint64_t a1)
{
  v34 = type metadata accessor for NotificationSource();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v34);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_1DA9411F4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = (v14 + 1) & v12;
      v16 = *(v3 + 72);
      v35 = v9;
      while (1)
      {
        v17 = v16 * v11;
        sub_1DA82A798(*(v8 + 48) + v16 * v11, v7);
        v18 = *(v8 + 40);
        sub_1DA941764();
        if (*(v7 + 1))
        {
          v36 = v16 * v11;
          v19 = a1;
          v20 = v16;
          v21 = v8;
          v22 = v15;
          v23 = v12;
          v24 = *v7;
          sub_1DA941784();
          v12 = v23;
          v15 = v22;
          v8 = v21;
          v16 = v20;
          a1 = v19;
          v17 = v36;
          sub_1DA940AB4();
        }

        else
        {
          sub_1DA941784();
        }

        v25 = *(v7 + 2);
        v26 = *(v7 + 3);
        sub_1DA940AB4();
        v27 = v7[48];
        sub_1DA941784();
        v28 = sub_1DA941794();
        sub_1DA82A7FC(v7);
        v29 = v28 & v12;
        if (a1 >= v15)
        {
          break;
        }

        if (v29 < v15)
        {
          goto LABEL_14;
        }

LABEL_15:
        v30 = v16 * a1;
        if ((v16 * a1) < v17 || *(v8 + 48) + v16 * a1 >= *(v8 + 48) + v17 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v11;
          if (v30 == v17)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v11;
LABEL_6:
        v11 = (v11 + 1) & v12;
        v9 = v35;
        if (((*(v35 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (v29 < v15)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v29)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v31 = *(v8 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v33;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_1DA8C7200(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v2 + 64) = sub_1DA849B90(v5);
  *(v2 + 72) = 0;
  sub_1DA93FBA4();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  sub_1DA7B3DC0(a1);
  sub_1DA8C1E58();
  return v2;
}

uint64_t sub_1DA8C72F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA8C7360()
{
  result = sub_1DA93FBB4();
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

uint64_t sub_1DA8C7530(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1DA8C758C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1DA8C7614()
{
  sub_1DA8C7680();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DA8C7680()
{
  if (!qword_1ECBD66C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6690, qword_1DA95FC60);
    v0 = sub_1DA940DB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBD66C0);
    }
  }
}

uint64_t sub_1DA8C7718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA8C7780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66E0, &qword_1DA95FE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8C77F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1DA8C3374(v2, v3);
}

uint64_t sub_1DA8C7860(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DA7B7470;

  return sub_1DA8C3620(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1DA8C79A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0) & 1;
}

uint64_t sub_1DA8C79D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  *(v1 + 64) = *(v0 + 24);
}

uint64_t sub_1DA8C7A14(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DA8C36A8(a1, v4);
}

void sub_1DA8C7A90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

uint64_t DismissalSyncCache.__allocating_init(dateProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  DismissalSyncCache.init(dateProvider:)(a1);
  return v2;
}

uint64_t DismissalSyncCache.init(dateProvider:)(__int128 *a1)
{
  v2 = v1;
  v16 = a1;
  v15 = sub_1DA940FC4();
  v3 = *(v15 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940F74();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DA940854();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1DA7AC344();
  v14[1] = "SettingsProvider";
  v14[2] = v11;
  sub_1DA940824();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v15);
  *(v1 + 56) = sub_1DA941004();
  v12 = MEMORY[0x1E69E7CC0];
  *(v2 + 64) = sub_1DA84A1FC(MEMORY[0x1E69E7CC0]);
  *(v2 + 72) = sub_1DA84A1FC(v12);
  sub_1DA7B9FAC(v16, v2 + 16);
  return v2;
}

uint64_t DismissalSyncCache.addMessage(_:completion:)(_OWORD *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = sub_1DA9407F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA940854();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v32[2] = a1[2];
  v33 = v18;
  v19 = a1[1];
  v32[0] = *a1;
  v32[1] = v19;
  if (*(v33 + 16) || *(*(&v33 + 1) + 16))
  {
    v27[1] = *(v3 + 56);
    v29 = result;
    v28 = v13;
    v20 = v7;
    v21 = v11;
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v24 = a1[1];
    *(v23 + 40) = *a1;
    *(v23 + 56) = v24;
    v25 = a1[3];
    *(v23 + 72) = a1[2];
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v22;
    *(v23 + 88) = v25;
    aBlock[4] = sub_1DA8CC3D0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_18;
    v26 = _Block_copy(aBlock);
    sub_1DA7B3DC0(a2);

    sub_1DA8CC3E0(v32, v30);
    sub_1DA940824();
    v30[0] = MEMORY[0x1E69E7CC0];
    sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v17, v21, v26);
    _Block_release(v26);
    (*(v8 + 8))(v21, v20);
    (*(v28 + 8))(v17, v29);
  }

  else if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_1DA8C8130(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, __int128 *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = a4[1];
    v11 = *a4;
    v12 = v7;
    v8 = a4[3];
    v13 = a4[2];
    v14 = v8;
    sub_1DA8C81F0(&v11);
    v9 = a4[1];
    v11 = *a4;
    v12 = v9;
    v10 = a4[3];
    v13 = a4[2];
    v14 = v10;
    sub_1DA8C95EC(&v11);
  }

  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_1DA8C81F0(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DA93FAF4();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v48 - v9;
  v10 = sub_1DA9408C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v19 = v2[7];
  *v14 = v19;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v20 = v19;
  LOBYTE(v19) = sub_1DA9408F4();
  result = (*(v11 + 8))(v14, v10);
  if (v19)
  {
    v22 = sub_1DA940A84();
    v24 = v23;
    swift_beginAccess();
    v25 = v2[8];
    if (*(v25 + 16))
    {
      v26 = sub_1DA85A4B4(v22, v24);
      if (v27)
      {
        v28 = *(*(v25 + 56) + 8 * v26);
        swift_endAccess();

LABEL_9:

        return v28;
      }
    }

    swift_endAccess();
    if (v18)
    {
      v29 = sub_1DA940A84();
      v18 = v30;
      swift_beginAccess();
      v31 = v2[9];
      v32 = *(v31 + 16);

      if (v32)
      {
        v33 = sub_1DA85A4B4(v29, v18);
        if (v34)
        {
          v28 = *(*(v31 + 56) + 8 * v33);
          swift_endAccess();

          swift_bridgeObjectRelease_n();
          goto LABEL_9;
        }
      }

      v48 = v29;
      swift_endAccess();
    }

    else
    {
      v48 = v17;
    }

    sub_1DA7BABAC((v2 + 2), v53);
    v35 = type metadata accessor for DismissalSyncCacheSection(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v28 = swift_allocObject();
    v38 = MEMORY[0x1E69E7CC0];
    *(v28 + 56) = sub_1DA84A300(MEMORY[0x1E69E7CC0]);
    *(v28 + 64) = sub_1DA84A4E8(v38);
    sub_1DA7BABAC(v53, v28 + 16);
    v39 = v54;
    v40 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(v40 + 8))(v39, v40);
    v41 = v49;
    sub_1DA93FA34();
    v43 = v50;
    v42 = v51;
    (*(v50 + 8))(v8, v51);
    (*(v43 + 32))(v28 + OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate, v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v53);
    swift_beginAccess();
    swift_retain_n();
    v44 = v2[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v2[8];
    v2[8] = 0x8000000000000000;
    sub_1DA90C250(v28, v22, v24, isUniquelyReferenced_nonNull_native);

    v2[8] = v52;
    swift_endAccess();
    if (v18)
    {
      swift_beginAccess();
      v46 = v2[9];
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v2[9];
      v2[9] = 0x8000000000000000;
      sub_1DA90C250(v28, v48, v18, v47);

      v2[9] = v52;
      swift_endAccess();
    }

    else
    {
    }

    return v28;
  }

  __break(1u);
  return result;
}

uint64_t DismissalSyncCache.findMatchingBulletin(_:)()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66F8, &qword_1DA95FEA0);
  return sub_1DA940FE4();
}

uint64_t sub_1DA8C86EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_1DA940A84();
  v10 = v9;
  swift_beginAccess();
  v11 = *(a2 + 64);
  if (!*(v11 + 16) || (v12 = sub_1DA85A4B4(v8, v10), (v13 & 1) == 0))
  {
    swift_endAccess();

    if (!a1[3])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  swift_endAccess();

  sub_1DA8CA7D8(a1, &v26);

  if (v27)
  {
    if (!a1[3])
    {
      goto LABEL_12;
    }

LABEL_7:
    v16 = a1[2];
    v17 = sub_1DA940A84();
    v19 = v18;
    swift_beginAccess();
    v20 = *(a2 + 72);
    if (*(v20 + 16) && (v21 = sub_1DA85A4B4(v17, v19), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);
      swift_endAccess();

      sub_1DA8CA7D8(a1, &v26);

      if ((v27 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      swift_endAccess();
    }

LABEL_12:
    v25 = 0;
    v24 = 1;
    goto LABEL_13;
  }

LABEL_10:
  v24 = 0;
  v25 = v26;
LABEL_13:
  *a3 = v25;
  *(a3 + 8) = v24;
  return result;
}

uint64_t DismissalSyncCache.removeBulletin(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA9407F4();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DA940854();
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DismissalSyncBulletin(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v20 = *(v2 + 56);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1DA8CC7A8(a1, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DismissalSyncBulletin);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_1DA8CC810(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for DismissalSyncBulletin);
  aBlock[4] = sub_1DA8CC458;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_10_0;
  v18 = _Block_copy(aBlock);

  sub_1DA940824();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v7, v18);
  _Block_release(v18);
  (*(v22 + 8))(v7, v4);
  (*(v8 + 8))(v11, v21);
}

uint64_t sub_1DA8C8C3C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *a2;
    v6 = a2[1];
    v7 = sub_1DA940A84();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v4 + 64);
    if (*(v10 + 16) && (v11 = sub_1DA85A4B4(v7, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();

      sub_1DA8CAEF8(a2);

      if (!a2[3])
      {
      }
    }

    else
    {
      swift_endAccess();

      if (!a2[3])
      {
      }
    }

    v14 = a2[2];
    v15 = sub_1DA940A84();
    v17 = v16;
    swift_beginAccess();
    v18 = *(v4 + 72);
    if (*(v18 + 16) && (v19 = sub_1DA85A4B4(v15, v17), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();

      sub_1DA8CAEF8(a2);
    }

    else
    {
      swift_endAccess();
    }
  }

  return result;
}

Swift::Void __swiftcall DismissalSyncCache.retireIfNecessary()()
{
  v1 = sub_1DA9407F4();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA940854();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 56);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DA8CC4BC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_14_1;
  v10 = _Block_copy(aBlock);

  sub_1DA940824();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v13 + 8))(v4, v1);
  (*(v5 + 8))(v8, v12);
}

uint64_t sub_1DA8C9090()
{
  v0 = sub_1DA93FAF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v53 = &v45 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v45 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    v46 = v9;
    v10 = *(v9 + 64);
    v11 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;
    v49 = (v1 + 8);
    v50 = (v1 + 16);
    v48 = v10;

    v16 = 0;
    v51 = v0;
    v47 = v11;
    while (v14)
    {
LABEL_11:
      v18 = *(*(v48 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
      v20 = *(v18 + 5);
      v19 = *(v18 + 6);
      __swift_project_boxed_opaque_existential_1(v18 + 2, v20);
      v21 = *(v19 + 8);

      v21(v20, v19);
      v22 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
      swift_beginAccess();
      v23 = v51;
      v24 = v53;
      (*v50)(v53, &v18[v22], v51);
      LOBYTE(v22) = sub_1DA93FA64();
      v25 = *v49;
      (*v49)(v24, v23);
      if (v22)
      {
        sub_1DA8CB420();
      }

      v14 &= v14 - 1;

      result = (v25)(v54, v23);
      v11 = v47;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_11;
      }
    }

    v26 = v46;
    swift_beginAccess();
    v27 = *(v26 + 72);
    v30 = *(v27 + 64);
    v29 = v27 + 64;
    v28 = v30;
    v31 = 1 << *(*(v26 + 72) + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v28;
    v34 = (v31 + 63) >> 6;
    v54 = *(v26 + 72);

    v35 = 0;
    v48 = v29;
    while (v33)
    {
LABEL_22:
      v37 = *(*(v54 + 7) + ((v35 << 9) | (8 * __clz(__rbit64(v33)))));
      v38 = *(v37 + 5);
      v39 = *(v37 + 6);
      __swift_project_boxed_opaque_existential_1(v37 + 2, v38);
      v40 = *(v39 + 8);

      v40(v38, v39);
      v41 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
      swift_beginAccess();
      v42 = v51;
      v43 = v53;
      (*v50)(v53, &v37[v41], v51);
      LOBYTE(v41) = sub_1DA93FA64();
      v44 = *v49;
      (*v49)(v43, v42);
      if (v41)
      {
        sub_1DA8CB420();
      }

      v33 &= v33 - 1;

      result = (v44)(v52, v42);
      v29 = v48;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v34)
      {
      }

      v33 = *(v29 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_22;
      }
    }

LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t DismissalSyncCache.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return v0;
}

uint64_t DismissalSyncCache.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8C95EC(void *a1)
{
  v2 = v1;
  v163 = type metadata accessor for SyncDismissalHashEntry(0);
  v166 = *(v163 - 8);
  v4 = *(v166 + 64);
  v5 = MEMORY[0x1EEE9AC00](v163);
  v171 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v170 = &v149 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v159 = &v149 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v156 = &v149 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v158 = (&v149 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v168 = &v149 - v16;
  v154 = type metadata accessor for DismissalSyncItem(0);
  v178 = *(v154 - 8);
  v17 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v176 = (&v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = type metadata accessor for SyncDismissalIDEntry(0);
  v167 = *(v164 - 8);
  v19 = *(v167 + 64);
  v20 = MEMORY[0x1EEE9AC00](v164);
  v175 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v172 = &v149 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v161 = &v149 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v157 = &v149 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v160 = (&v149 - v28);
  v29 = sub_1DA93FAF4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v153 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v149 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v149 - v37;
  v177 = a1[1];
  v169 = a1[3];
  v39 = a1[5];
  v40 = a1[6];
  v41 = a1[7];
  if (!v39)
  {
    v39 = 15871;
  }

  v179 = v39;
  v42 = *(v2 + 5);
  v43 = *(v2 + 6);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v42);
  (*(v43 + 8))(v42, v43);
  v173 = v38;
  sub_1DA93FA34();
  v155 = v30;
  v46 = *(v30 + 8);
  v45 = v30 + 8;
  v44 = v46;
  v152 = v36;
  v174 = v29;
  (v46)(v36, v29);
  if (qword_1ECBD47D0 != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v150 = v44;
    v151 = v45;
    v47 = sub_1DA9405A4();
    __swift_project_value_buffer(v47, qword_1ECBE3DE8);

    v44 = sub_1DA940584();
    v48 = sub_1DA940EF4();

    v49 = v41;
    v45 = v40;
    if (os_log_type_enabled(v44, v48))
    {
      v41 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v182 = v40;
      *v41 = 136446466;
      v50 = MEMORY[0x1E1271CD0](v45, MEMORY[0x1E69E6158]);
      v52 = sub_1DA7AE6E8(v50, v51, &v182);

      *(v41 + 4) = v52;
      *(v41 + 12) = 2082;
      v53 = MEMORY[0x1E1271CD0](v49, v154);
      v55 = sub_1DA7AE6E8(v53, v54, &v182);

      *(v41 + 14) = v55;
      _os_log_impl(&dword_1DA7A9000, v44, v48, "Adding message ids %{public}s and items %{public}s to dismissal cache", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v40, -1, -1);
      MEMORY[0x1E12739F0](v41, -1, -1);
    }

    v56 = *(v45 + 16);
    v169 = v49;
    v177 = v56;
    if (!v56)
    {
      break;
    }

    swift_beginAccess();
    v57 = 0;
    v162 = (v155 + 16);
    v58 = (v45 + 40);
    v165 = v45;
    while (v57 < *(v45 + 16))
    {
      v40 = *(v58 - 1);
      v41 = *v58;
      v61 = HIBYTE(*v58) & 0xF;
      if ((*v58 & 0x2000000000000000) == 0)
      {
        v61 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (!v61)
      {
        goto LABEL_11;
      }

      v62 = *(v2 + 7);
      v45 = *(v62 + 16);
      v63 = *v58;

      if (v45)
      {

        v64 = sub_1DA85A4B4(v40, v41);
        if (v65)
        {
          v45 = *(v167 + 72);
          v66 = v157;
          sub_1DA8CC7A8(*(v62 + 56) + v45 * v64, v157, type metadata accessor for SyncDismissalIDEntry);

          v67 = v160;
          sub_1DA8CC810(v66, v160, type metadata accessor for SyncDismissalIDEntry);
          *v67 |= v179;
          swift_beginAccess();
          sub_1DA8CC7A8(v67, v161, type metadata accessor for SyncDismissalIDEntry);
          v68 = *(v2 + 7);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v181 = *(v2 + 7);
          v44 = v181;
          *(v2 + 7) = 0x8000000000000000;
          v71 = sub_1DA85A4B4(v40, v41);
          isa = v44[2].isa;
          v73 = (v70 & 1) == 0;
          v74 = isa + v73;
          if (__OFADD__(isa, v73))
          {
            goto LABEL_84;
          }

          v75 = v70;
          if (v44[3].isa >= v74)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v49 = v169;
              if ((v70 & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            else
            {
              sub_1DA862230();
              v49 = v169;
              if ((v75 & 1) == 0)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
            sub_1DA85ED08(v74, isUniquelyReferenced_nonNull_native);
            v76 = sub_1DA85A4B4(v40, v41);
            if ((v75 & 1) != (v77 & 1))
            {
              goto LABEL_89;
            }

            v71 = v76;
            v49 = v169;
            if ((v75 & 1) == 0)
            {
LABEL_38:
              v44 = v181;
              v181[(v71 >> 6) + 8].isa = (v181[(v71 >> 6) + 8].isa | (1 << v71));
              v93 = (v44[6].isa + 16 * v71);
              *v93 = v40;
              v93[1] = v41;
              sub_1DA8CC810(v161, v44[7].isa + v71 * v45, type metadata accessor for SyncDismissalIDEntry);
              v94 = v44[2].isa;
              v85 = __OFADD__(v94, 1);
              v95 = (v94 + 1);
              if (v85)
              {
                goto LABEL_86;
              }

              v44[2].isa = v95;
              goto LABEL_40;
            }
          }

          v44 = v181;
          sub_1DA8CC8D8(v161, v181[7].isa + v71 * v45, type metadata accessor for SyncDismissalIDEntry);
LABEL_40:
          v96 = *(v2 + 7);
          *(v2 + 7) = v44;

          swift_endAccess();
          v60 = v160;
          v45 = v165;
          goto LABEL_10;
        }
      }

      v78 = v172;
      (*v162)(&v172[*(v164 + 24)], v173, v174);
      *v78 = v179;
      v78[1] = v40;
      v78[2] = v41;
      swift_beginAccess();
      sub_1DA8CC7A8(v78, v175, type metadata accessor for SyncDismissalIDEntry);
      v79 = *(v2 + 7);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v181 = *(v2 + 7);
      v44 = v181;
      *(v2 + 7) = 0x8000000000000000;
      v81 = sub_1DA85A4B4(v40, v41);
      v83 = v44[2].isa;
      v84 = (v82 & 1) == 0;
      v85 = __OFADD__(v83, v84);
      v86 = v83 + v84;
      if (v85)
      {
        goto LABEL_80;
      }

      v87 = v82;
      if (v44[3].isa < v86)
      {
        sub_1DA85ED08(v86, v80);
        v81 = sub_1DA85A4B4(v40, v41);
        v45 = v165;
        if ((v87 & 1) != (v88 & 1))
        {
LABEL_89:
          result = sub_1DA9416E4();
          __break(1u);
          return result;
        }

LABEL_29:
        v44 = v181;
        if ((v87 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      v45 = v165;
      if (v80)
      {
        goto LABEL_29;
      }

      v92 = v81;
      sub_1DA862230();
      v81 = v92;
      v45 = v165;
      v44 = v181;
      if ((v87 & 1) == 0)
      {
LABEL_30:
        v44[(v81 >> 6) + 8].isa = (v44[(v81 >> 6) + 8].isa | (1 << v81));
        v89 = (v44[6].isa + 16 * v81);
        *v89 = v40;
        v89[1] = v41;
        sub_1DA8CC810(v175, v44[7].isa + *(v167 + 72) * v81, type metadata accessor for SyncDismissalIDEntry);
        v90 = v44[2].isa;
        v85 = __OFADD__(v90, 1);
        v91 = (v90 + 1);
        if (v85)
        {
          goto LABEL_82;
        }

        v44[2].isa = v91;

        goto LABEL_9;
      }

LABEL_8:
      sub_1DA8CC8D8(v175, v44[7].isa + *(v167 + 72) * v81, type metadata accessor for SyncDismissalIDEntry);
LABEL_9:
      v59 = *(v2 + 7);
      *(v2 + 7) = v44;

      swift_endAccess();
      v60 = v172;
LABEL_10:
      sub_1DA8CC878(v60, type metadata accessor for SyncDismissalIDEntry);
LABEL_11:
      ++v57;
      v58 += 2;
      if (v177 == v57)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

LABEL_41:
  v97 = v168;
  if (*(v49 + 16))
  {
    v98 = *(v49 + 16);
    v177 = *(v154 + 20);
    v175 = v49 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
    swift_beginAccess();
    v45 = 0;
    v172 = (v155 + 16);
    while (1)
    {
      if (v45 >= *(v49 + 16))
      {
        goto LABEL_79;
      }

      v44 = v176;
      sub_1DA8CC7A8(v175 + *(v178 + 72) * v45, v176, type metadata accessor for DismissalSyncItem);
      v41 = v44->isa;
      v40 = v44[1].isa;
      sub_1DA84A0CC(v44 + v177, v97, &unk_1ECBD6530, &unk_1DA958820);
      v99 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v99 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v99)
      {
        break;
      }

      sub_1DA7BA120(v97, &unk_1ECBD6530, &unk_1DA958820);

LABEL_44:
      if (v98 == ++v45)
      {
        goto LABEL_75;
      }
    }

    v100 = *(v2 + 8);
    if (*(v100 + 16))
    {
      v101 = *(v2 + 8);

      v102 = sub_1DA85A4B4(v41, v40);
      if (v103)
      {
        v104 = *(v166 + 72);
        v105 = v156;
        sub_1DA8CC7A8(*(v100 + 56) + v104 * v102, v156, type metadata accessor for SyncDismissalHashEntry);

        v106 = v158;
        sub_1DA8CC810(v105, v158, type metadata accessor for SyncDismissalHashEntry);
        *v106 |= v179;
        swift_beginAccess();
        sub_1DA8CC7A8(v106, v159, type metadata accessor for SyncDismissalHashEntry);
        v107 = *(v2 + 8);
        v108 = swift_isUniquelyReferenced_nonNull_native();
        v180 = *(v2 + 8);
        v44 = v180;
        *(v2 + 8) = 0x8000000000000000;
        v109 = sub_1DA85A4B4(v41, v40);
        v111 = v44[2].isa;
        v112 = (v110 & 1) == 0;
        v85 = __OFADD__(v111, v112);
        v113 = v111 + v112;
        if (v85)
        {
          goto LABEL_85;
        }

        v114 = v110;
        if (v44[3].isa >= v113)
        {
          if ((v108 & 1) == 0)
          {
            v134 = v109;
            sub_1DA861FA0();
            v109 = v134;
            v49 = v169;
            if (v114)
            {
              goto LABEL_65;
            }

            goto LABEL_71;
          }
        }

        else
        {
          sub_1DA85E98C(v113, v108);
          v109 = sub_1DA85A4B4(v41, v40);
          if ((v114 & 1) != (v115 & 1))
          {
            goto LABEL_89;
          }
        }

        v49 = v169;
        if (v114)
        {
LABEL_65:
          v41 = v109;

          v44 = v180;
          sub_1DA8CC8D8(v159, v180[7].isa + v41 * v104, type metadata accessor for SyncDismissalHashEntry);
LABEL_73:
          v138 = *(v2 + 8);
          *(v2 + 8) = v44;

          swift_endAccess();
          v133 = v158;
          goto LABEL_74;
        }

LABEL_71:
        v44 = v180;
        v180[(v109 >> 6) + 8].isa = (v180[(v109 >> 6) + 8].isa | (1 << v109));
        v135 = (v44[6].isa + 16 * v109);
        *v135 = v41;
        v135[1] = v40;
        sub_1DA8CC810(v159, v44[7].isa + v109 * v104, type metadata accessor for SyncDismissalHashEntry);
        v136 = v44[2].isa;
        v85 = __OFADD__(v136, 1);
        v137 = (v136 + 1);
        if (v85)
        {
          goto LABEL_87;
        }

        v44[2].isa = v137;
        goto LABEL_73;
      }
    }

    v116 = v163;
    v117 = v170;
    sub_1DA825D4C(v97, &v170[*(v163 + 24)]);
    (*v172)(v117 + *(v116 + 28), v173, v174);
    *v117 = v179;
    v117[1] = v41;
    v117[2] = v40;
    swift_beginAccess();
    sub_1DA8CC7A8(v117, v171, type metadata accessor for SyncDismissalHashEntry);

    v118 = *(v2 + 8);
    v119 = swift_isUniquelyReferenced_nonNull_native();
    v180 = *(v2 + 8);
    v44 = v180;
    *(v2 + 8) = 0x8000000000000000;
    v120 = sub_1DA85A4B4(v41, v40);
    v122 = v44[2].isa;
    v123 = (v121 & 1) == 0;
    v85 = __OFADD__(v122, v123);
    v124 = v122 + v123;
    if (v85)
    {
      goto LABEL_81;
    }

    v125 = v121;
    if (v44[3].isa >= v124)
    {
      if ((v119 & 1) == 0)
      {
        v128 = v120;
        sub_1DA861FA0();
        v120 = v128;
        v49 = v169;
        if (v125)
        {
          goto LABEL_62;
        }

        goto LABEL_67;
      }
    }

    else
    {
      sub_1DA85E98C(v124, v119);
      v120 = sub_1DA85A4B4(v41, v40);
      if ((v125 & 1) != (v126 & 1))
      {
        goto LABEL_89;
      }
    }

    v49 = v169;
    if (v125)
    {
LABEL_62:
      v127 = v120;

      v44 = v180;
      sub_1DA8CC8D8(v171, v180[7].isa + *(v166 + 72) * v127, type metadata accessor for SyncDismissalHashEntry);
LABEL_69:
      v132 = *(v2 + 8);
      *(v2 + 8) = v44;

      swift_endAccess();
      v133 = v170;
LABEL_74:
      sub_1DA8CC878(v133, type metadata accessor for SyncDismissalHashEntry);
      v97 = v168;
      sub_1DA7BA120(v168, &unk_1ECBD6530, &unk_1DA958820);
      goto LABEL_44;
    }

LABEL_67:
    v44 = v180;
    v180[(v120 >> 6) + 8].isa = (v180[(v120 >> 6) + 8].isa | (1 << v120));
    v129 = (v44[6].isa + 16 * v120);
    *v129 = v41;
    v129[1] = v40;
    sub_1DA8CC810(v171, v44[7].isa + *(v166 + 72) * v120, type metadata accessor for SyncDismissalHashEntry);
    v130 = v44[2].isa;
    v85 = __OFADD__(v130, 1);
    v131 = (v130 + 1);
    if (v85)
    {
      goto LABEL_83;
    }

    v44[2].isa = v131;
    goto LABEL_69;
  }

LABEL_75:
  v139 = *(v2 + 5);
  v140 = *(v2 + 6);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v139);
  v141 = v153;
  (*(v140 + 8))(v139, v140);
  v142 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
  swift_beginAccess();
  v143 = v152;
  v144 = v174;
  (*(v155 + 16))(v152, &v2[v142], v174);
  LOBYTE(v142) = sub_1DA93FA64();
  v145 = v143;
  v146 = v150;
  (v150)(v145, v144);
  if (v142)
  {
    sub_1DA8CB420();
  }

  v147 = v174;
  (v146)(v141, v174);
  return (v146)(v173, v147);
}

uint64_t sub_1DA8CA7D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v5 = type metadata accessor for SyncDismissalHashEntry(0);
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = (&v59 - v10);
  v11 = type metadata accessor for SyncDismissalIDEntry(0);
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = (&v59 - v16);
  v17 = sub_1DA93FAF4();
  v64 = *(v17 - 8);
  v65 = v17;
  v18 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v3[5];
  v22 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v21);
  v23 = v20;
  (*(v22 + 8))(v21, v22);
  v24 = *(a1 + 56);
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = *(a1 + 48);
  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
LABEL_12:
    v39 = DismissalSyncBulletin.dismissalHash.getter();
    v41 = v40;
    swift_beginAccess();
    v42 = v3[8];
    v28 = v23;
    if (*(v42 + 16))
    {

      v43 = sub_1DA85A4B4(v39, v41);
      if (v44)
      {
        sub_1DA8CC7A8(*(v42 + 56) + *(v62 + 72) * v43, v9, type metadata accessor for SyncDismissalHashEntry);

        v31 = v63;
        sub_1DA8CC810(v9, v63, type metadata accessor for SyncDismissalHashEntry);
        v45 = *(v5 + 28);
        if ((sub_1DA93FA64() & 1) != 0 && DismissalSyncBulletin.withinDismissableWindow(_:)(v31 + *(v5 + 24)))
        {
          if (qword_1ECBD47D0 != -1)
          {
            swift_once();
          }

          v46 = sub_1DA9405A4();
          __swift_project_value_buffer(v46, qword_1ECBE3DE8);

          v47 = sub_1DA940584();
          v48 = sub_1DA940EF4();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = v28;
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v67 = v51;
            *v50 = 136446210;
            v52 = sub_1DA7AE6E8(v39, v41, &v67);

            *(v50 + 4) = v52;
            _os_log_impl(&dword_1DA7A9000, v47, v48, "Found hash entry for %{public}s in dismissal cache", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v51);
            MEMORY[0x1E12739F0](v51, -1, -1);
            MEMORY[0x1E12739F0](v50, -1, -1);

            (*(v64 + 8))(v49, v65);
          }

          else
          {

            (*(v64 + 8))(v28, v65);
          }

          v55 = *v31;
          v58 = type metadata accessor for SyncDismissalHashEntry;
          goto LABEL_32;
        }

        v53 = type metadata accessor for SyncDismissalHashEntry;
        goto LABEL_25;
      }
    }

    goto LABEL_21;
  }

  swift_beginAccess();
  v27 = v3[7];
  v28 = v23;
  if (*(v27 + 16))
  {

    v29 = sub_1DA85A4B4(v25, v24);
    if (v30)
    {
      sub_1DA8CC7A8(*(v27 + 56) + *(v60 + 72) * v29, v15, type metadata accessor for SyncDismissalIDEntry);

      v31 = v61;
      sub_1DA8CC810(v15, v61, type metadata accessor for SyncDismissalIDEntry);
      v32 = *(v11 + 24);
      if (sub_1DA93FA64())
      {
        if (qword_1ECBD47D0 != -1)
        {
          swift_once();
        }

        v33 = sub_1DA9405A4();
        __swift_project_value_buffer(v33, qword_1ECBE3DE8);

        v34 = sub_1DA940584();
        v35 = sub_1DA940EF4();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = v28;
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v67 = v38;
          *v37 = 136446210;
          *(v37 + 4) = sub_1DA7AE6E8(v25, v24, &v67);
          _os_log_impl(&dword_1DA7A9000, v34, v35, "Found id entry for %{public}s in dismissal cache", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x1E12739F0](v38, -1, -1);
          MEMORY[0x1E12739F0](v37, -1, -1);

          (*(v64 + 8))(v36, v65);
        }

        else
        {

          (*(v64 + 8))(v28, v65);
        }

        v55 = *v31;
        v58 = type metadata accessor for SyncDismissalIDEntry;
LABEL_32:
        result = sub_1DA8CC878(v31, v58);
        v56 = 0;
        goto LABEL_27;
      }

      v53 = type metadata accessor for SyncDismissalIDEntry;
LABEL_25:
      sub_1DA8CC878(v31, v53);
      goto LABEL_26;
    }

LABEL_21:
  }

LABEL_26:
  result = (*(v64 + 8))(v28, v65);
  v55 = 0;
  v56 = 1;
LABEL_27:
  v57 = v66;
  *v66 = v55;
  *(v57 + 8) = v56;
  return result;
}

uint64_t sub_1DA8CAEF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6738, &qword_1DA95FFE8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6740, &qword_1DA95FFF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49 - v18;
  v20 = *(a1 + 56);
  if (v20)
  {
    v21 = *(a1 + 48);
    if (qword_1ECBD47D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1ECBE3DE8);

    v23 = sub_1DA940584();
    v24 = sub_1DA940EF4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v51 = v4;
      v26 = v25;
      v27 = swift_slowAlloc();
      v50 = v11;
      v28 = v21;
      v29 = v27;
      v52[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1DA7AE6E8(v28, v20, v52);
      _os_log_impl(&dword_1DA7A9000, v23, v24, "Removing id entry for %{public}s from dismissal cache", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v30 = v29;
      v21 = v28;
      v11 = v50;
      MEMORY[0x1E12739F0](v30, -1, -1);
      v31 = v26;
      v4 = v51;
      MEMORY[0x1E12739F0](v31, -1, -1);
    }

    swift_beginAccess();
    sub_1DA8F4C08(v21, v20, v19);
    sub_1DA7BA120(v19, &qword_1ECBD6740, &qword_1DA95FFF0);
    swift_endAccess();
  }

  else
  {
    v32 = DismissalSyncBulletin.dismissalHash.getter();
    v34 = v33;
    if (qword_1ECBD47D0 != -1)
    {
      swift_once();
    }

    v35 = sub_1DA9405A4();
    __swift_project_value_buffer(v35, qword_1ECBE3DE8);

    v36 = sub_1DA940584();
    v37 = sub_1DA940EF4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v51 = v4;
      v39 = v38;
      v40 = swift_slowAlloc();
      v50 = v32;
      v41 = v40;
      v52[0] = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_1DA7AE6E8(v50, v34, v52);
      _os_log_impl(&dword_1DA7A9000, v36, v37, "Removing hash entry for %{public}s from dismissal cache", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v42 = v41;
      v32 = v50;
      MEMORY[0x1E12739F0](v42, -1, -1);
      v43 = v39;
      v4 = v51;
      MEMORY[0x1E12739F0](v43, -1, -1);
    }

    swift_beginAccess();
    sub_1DA8F4BB4(v32, v34, v15);
    sub_1DA7BA120(v15, &qword_1ECBD6738, &qword_1DA95FFE8);
    swift_endAccess();
  }

  v44 = *(v2 + 5);
  v45 = *(v2 + 6);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v44);
  (*(v45 + 8))(v44, v45);
  v46 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
  swift_beginAccess();
  (*(v5 + 16))(v9, &v2[v46], v4);
  LOBYTE(v46) = sub_1DA93FA64();
  v47 = *(v5 + 8);
  v47(v9, v4);
  if (v46)
  {
    sub_1DA8CB420();
  }

  return (v47)(v11, v4);
}

uint64_t sub_1DA8CB420()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6738, &qword_1DA95FFE8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v140 = &v136 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6740, &qword_1DA95FFF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v139 = &v136 - v7;
  v150 = type metadata accessor for SyncDismissalHashEntry(0);
  v147 = *(v150 - 8);
  v8 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v141 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6748, &qword_1DA95FFF8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v145 = (&v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v144 = (&v136 - v14);
  v151 = type metadata accessor for SyncDismissalIDEntry(0);
  v148 = *(v151 - 8);
  v15 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v142 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6750, &qword_1DA960000);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v146 = &v136 - v22;
  v155 = sub_1DA93FAF4();
  v23 = *(v155 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v155);
  v154 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v156 = &v136 - v27;
  if (qword_1ECBD47D0 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v28 = sub_1DA9405A4();
    __swift_project_value_buffer(v28, qword_1ECBE3DE8);
    v29 = sub_1DA940584();
    v30 = sub_1DA940EF4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DA7A9000, v29, v30, "Retiring all expired entries in dismissal cache", v31, 2u);
      MEMORY[0x1E12739F0](v31, -1, -1);
    }

    v32 = *(v1 + 5);
    v33 = *(v1 + 6);
    __swift_project_boxed_opaque_existential_1(v1 + 2, v32);
    (*(v33 + 8))(v32, v33);
    swift_beginAccess();
    v149 = v1;
    v34 = *(v1 + 7);
    v35 = *(v34 + 64);
    v138 = v34 + 64;
    v36 = 1 << *(v34 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & v35;
    v39 = (v36 + 63) >> 6;
    v152 = (v23 + 16);
    v136 = v23;
    v153 = (v23 + 8);
    v143 = v34;

    v40 = 0;
    v137 = MEMORY[0x1E69E7CC0];
    v41 = &unk_1ECBD6758;
LABEL_7:
    v42 = v40;
    if (v38)
    {
      break;
    }

LABEL_9:
    if (v39 <= v42 + 1)
    {
      v43 = v42 + 1;
    }

    else
    {
      v43 = v39;
    }

    v40 = v43 - 1;
    while (1)
    {
      v23 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v23 >= v39)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v41, &qword_1DA960008);
        (*(*(v59 - 8) + 56))(v21, 1, 1, v59);
        v38 = 0;
        goto LABEL_17;
      }

      v38 = *(v138 + 8 * v23);
      ++v42;
      if (v38)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
  }

  while (1)
  {
    v23 = v42;
LABEL_16:
    v44 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v45 = v44 | (v23 << 6);
    v46 = (*(v143 + 48) + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    v49 = v142;
    sub_1DA8CC7A8(*(v143 + 56) + *(v148 + 72) * v45, v142, type metadata accessor for SyncDismissalIDEntry);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v41, &qword_1DA960008);
    v51 = *(v50 + 48);
    *v21 = v48;
    *(v21 + 1) = v47;
    sub_1DA8CC810(v49, &v21[v51], type metadata accessor for SyncDismissalIDEntry);
    (*(*(v50 - 8) + 56))(v21, 0, 1, v50);

    v40 = v23;
LABEL_17:
    v1 = v146;
    sub_1DA84A0CC(v21, v146, &qword_1ECBD6750, &qword_1DA960000);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v41, &qword_1DA960008);
    if ((*(*(v52 - 8) + 48))(v1, 1, v52) == 1)
    {
      break;
    }

    v53 = v41;
    v54 = v21;
    v55 = *v1;
    v56 = *(v1 + 1);
    v57 = &v1[*(v52 + 48)];
    v58 = v154;
    v1 = v155;
    (*v152)(v154, v57 + *(v151 + 24), v155);
    sub_1DA8CC878(v57, type metadata accessor for SyncDismissalIDEntry);
    LOBYTE(v57) = sub_1DA93FA64();
    (*v153)(v58, v1);
    if (v57)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_1DA7B6928(0, *(v137 + 2) + 1, 1, v137);
      }

      v21 = v54;
      v61 = *(v137 + 2);
      v60 = *(v137 + 3);
      v1 = (v61 + 1);
      v41 = v53;
      if (v61 >= v60 >> 1)
      {
        v137 = sub_1DA7B6928((v60 > 1), v61 + 1, 1, v137);
      }

      v62 = v137;
      *(v137 + 2) = v1;
      v63 = &v62[16 * v61];
      *(v63 + 4) = v55;
      *(v63 + 5) = v56;
      goto LABEL_7;
    }

    v42 = v40;
    v21 = v54;
    v41 = v53;
    if (!v38)
    {
      goto LABEL_9;
    }
  }

  v64 = v149;
  swift_beginAccess();
  v21 = *(v64 + 8);
  v65 = 1 << v21[32];
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v21 + 8);
  v68 = (v65 + 63) >> 6;
  v69 = *(v64 + 8);

  v70 = 0;
  v146 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v71 = v70;
  if (!v67)
  {
LABEL_32:
    if (v68 <= v71 + 1)
    {
      v72 = v71 + 1;
    }

    else
    {
      v72 = v68;
    }

    v70 = v72 - 1;
    while (1)
    {
      v23 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_68;
      }

      if (v23 >= v68)
      {
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6760, &unk_1DA960010);
        v90 = v145;
        (*(*(v89 - 8) + 56))(v145, 1, 1, v89);
        v82 = v90;
        v67 = 0;
        goto LABEL_40;
      }

      v67 = *&v21[8 * v23 + 64];
      ++v71;
      if (v67)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
    v23 = v71;
LABEL_39:
    v73 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    v74 = v73 | (v23 << 6);
    v75 = (*(v21 + 6) + 16 * v74);
    v76 = *v75;
    v77 = v75[1];
    v78 = v141;
    sub_1DA8CC7A8(*(v21 + 7) + *(v147 + 72) * v74, v141, type metadata accessor for SyncDismissalHashEntry);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6760, &unk_1DA960010);
    v80 = *(v79 + 48);
    v81 = v145;
    *v145 = v76;
    v81[1] = v77;
    sub_1DA8CC810(v78, v81 + v80, type metadata accessor for SyncDismissalHashEntry);
    (*(*(v79 - 8) + 56))(v81, 0, 1, v79);

    v70 = v23;
    v82 = v81;
LABEL_40:
    v83 = v144;
    sub_1DA84A0CC(v82, v144, &qword_1ECBD6748, &qword_1DA95FFF8);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6760, &unk_1DA960010);
    if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
    {
      break;
    }

    v85 = *v83;
    v86 = v83[1];
    v87 = v83 + *(v84 + 48);
    v88 = v154;
    v1 = v155;
    (*v152)(v154, v87 + *(v150 + 28), v155);
    sub_1DA8CC878(v87, type metadata accessor for SyncDismissalHashEntry);
    LOBYTE(v87) = sub_1DA93FA64();
    (*v153)(v88, v1);
    if (v87)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v146 = sub_1DA7B6928(0, *(v146 + 2) + 1, 1, v146);
      }

      v92 = *(v146 + 2);
      v91 = *(v146 + 3);
      v1 = (v92 + 1);
      if (v92 >= v91 >> 1)
      {
        v146 = sub_1DA7B6928((v91 > 1), v92 + 1, 1, v146);
      }

      v93 = v146;
      *(v146 + 2) = v1;
      v94 = &v93[16 * v92];
      *(v94 + 4) = v85;
      *(v94 + 5) = v86;
      goto LABEL_30;
    }

    v71 = v70;
    if (!v67)
    {
      goto LABEL_32;
    }
  }

  v95 = *(v137 + 2);
  if (v95)
  {
    v96 = v149;
    v97 = (v148 + 56);
    v98 = (v137 + 40);
    do
    {
      v102 = *(v98 - 1);
      v101 = *v98;
      swift_beginAccess();
      v103 = *(v96 + 7);

      v104 = sub_1DA85A4B4(v102, v101);
      if (v105)
      {
        v106 = v104;
        v107 = *(v96 + 7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = *(v96 + 7);
        v157 = v109;
        *(v96 + 7) = 0x8000000000000000;
        v100 = v139;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DA862230();
          v109 = v157;
        }

        v110 = *(*(v109 + 48) + 16 * v106 + 8);

        sub_1DA8CC810(*(v109 + 56) + *(v148 + 72) * v106, v100, type metadata accessor for SyncDismissalIDEntry);
        sub_1DA8F5E90(v106, v109);
        v111 = *(v96 + 7);
        *(v96 + 7) = v109;

        v99 = 0;
      }

      else
      {
        v99 = 1;
        v100 = v139;
      }

      (*v97)(v100, v99, 1, v151);
      sub_1DA7BA120(v100, &qword_1ECBD6740, &qword_1DA95FFF0);
      swift_endAccess();

      v98 += 2;
      --v95;
    }

    while (v95);
  }

  v112 = *(v146 + 2);
  if (v112)
  {
    v113 = (v147 + 56);
    v114 = (v146 + 40);
    v115 = v149;
    do
    {
      v119 = *(v114 - 1);
      v118 = *v114;
      swift_beginAccess();
      v120 = *(v115 + 8);

      v121 = sub_1DA85A4B4(v119, v118);
      if (v122)
      {
        v123 = v121;
        v124 = *(v115 + 8);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v126 = *(v115 + 8);
        v157 = v126;
        *(v115 + 8) = 0x8000000000000000;
        v117 = v140;
        if (!v125)
        {
          sub_1DA861FA0();
          v126 = v157;
        }

        v127 = *(*(v126 + 48) + 16 * v123 + 8);

        sub_1DA8CC810(*(v126 + 56) + *(v147 + 72) * v123, v117, type metadata accessor for SyncDismissalHashEntry);
        sub_1DA8F5E78(v123, v126);
        v128 = *(v115 + 8);
        *(v115 + 8) = v126;

        v116 = 0;
      }

      else
      {
        v116 = 1;
        v117 = v140;
      }

      (*v113)(v117, v116, 1, v150);
      sub_1DA7BA120(v117, &qword_1ECBD6738, &qword_1DA95FFE8);
      swift_endAccess();

      v114 += 2;
      --v112;
    }

    while (v112);
  }

  v129 = v154;
  v130 = v156;
  sub_1DA93FA34();
  v131 = v136;
  v132 = v155;
  (*(v136 + 8))(v130, v155);
  v133 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
  v134 = v149;
  swift_beginAccess();
  (*(v131 + 40))(&v134[v133], v129, v132);
  return swift_endAccess();
}

uint64_t sub_1DA8CC31C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
  v4 = sub_1DA93FAF4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8CC458()
{
  v1 = *(type metadata accessor for DismissalSyncBulletin(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1DA8C8C3C(v2, v3);
}

uint64_t sub_1DA8CC54C()
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

void sub_1DA8CC640()
{
  sub_1DA8235A8();
  if (v0 <= 0x3F)
  {
    sub_1DA93FAF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DA8CC724()
{
  result = sub_1DA93FAF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DA8CC7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8CC810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8CC878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA8CC8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8CC950()
{
  MEMORY[0x1E12739F0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8CCAB4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1DA8CCB14(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___UNCNotificationCoreServiceClientImpl_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1DA8CCBAC;
}

void sub_1DA8CCBAC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id NotificationCoreServiceClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationCoreServiceClient.init()()
{
  v14 = sub_1DA940FC4();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DA940854();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v13 = OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue;
  v9 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v12[1] = "cationsCore10UnfairLock";
  v12[2] = v9;
  sub_1DA940824();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v14);
  *&v0[v13] = sub_1DA941004();
  *&v0[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection] = 0;
  swift_unknownObjectWeakInit();
  v10 = type metadata accessor for NotificationCoreServiceClient();
  v15.receiver = v0;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, sel_init);
}

id NotificationCoreServiceClient.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DA8D27D4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1DA82B5F8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7B8000;
  aBlock[3] = &block_descriptor_19;
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
    v8.super_class = type metadata accessor for NotificationCoreServiceClient();
    return objc_msgSendSuper2(&v8, sel_dealloc);
  }

  return result;
}

void sub_1DA8CD178()
{
  v0 = sub_1DA8D16E0(0xD00000000000003FLL, 0x80000001DA955470);
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

void sub_1DA8CD268()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DA8CD178();
}

void sub_1DA8CD2B4(uint64_t *a1@<X8>)
{
  v2 = sub_1DA8D16E0(0xD000000000000026, 0x80000001DA955440);
  if (v2)
  {
    v3 = [v2 allBundleIdentifiersForNotifications];
    v4 = sub_1DA940BE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
}

void sub_1DA8CD3B4(uint64_t *a1@<X8>)
{
  v2 = sub_1DA8D16E0(0xD000000000000029, 0x80000001DA955410);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DA940A04();
    v5 = [v3 notificationRecordsForBundleIdentifier_];

    sub_1DA7AF3EC(0, &qword_1ECBD4C00, off_1E85D5D68);
    v6 = sub_1DA940BE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v6;
}

void sub_1DA8CD494(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1DA8CD3B4(a1);
}

uint64_t sub_1DA8CD5C4@<X0>(void *a1@<X8>)
{
  result = sub_1DA8D16E0(0xD000000000000033, 0x80000001DA9553D0);
  if (result)
  {
    v3 = result;
    v4 = sub_1DA940A04();
    v5 = sub_1DA940A04();
    v6 = [v3 notificationRecordForIdentifier:v4 bundleIdentifier:v5];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1DA8CD6F0(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28[0] = a4;
  v14 = sub_1DA9407F4();
  v31 = *(v14 - 8);
  v15 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA940854();
  v29 = *(v18 - 8);
  v30 = v18;
  v19 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = *&v7[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v22 = swift_allocObject();
  *(v22 + 16) = v7;
  *(v22 + 24) = a6;
  *(v22 + 32) = a7;
  *(v22 + 40) = a1;
  *(v22 + 48) = a2;
  *(v22 + 56) = a3;
  *(v22 + 64) = v28[0];
  *(v22 + 72) = a5;
  aBlock[4] = sub_1DA8CDBE4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_15_0;
  v23 = _Block_copy(aBlock);
  v24 = v7;
  sub_1DA7B3DC0(a6);
  v25 = a2;

  v26 = a1;
  sub_1DA940824();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v21, v17, v23);
  _Block_release(v23);
  (*(v31 + 8))(v17, v14);
  (*(v29 + 8))(v21, v30);
}

void sub_1DA8CD9F8(uint64_t a1, void (*a2)(void, id), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_1DA8D16E0(0xD000000000000050, 0x80000001DA955350);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v14 = sub_1DA940A04();
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    aBlock[4] = sub_1DA8D26C0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA8CDC88;
    aBlock[3] = &block_descriptor_167;
    v16 = _Block_copy(aBlock);
    sub_1DA7B3DC0(a2);

    [v12 saveNotificationRecord:a4 targetRevisionNumber:a5 shouldRepost:v13 forBundleIdentifier:v14 completionHandler:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    v17 = _UNCNilRemoteTargetError("save(_:targetRevisionNumber:shouldRepost:forBundleIdentifier:completionHandler:)");
    a2(0, v17);
  }
}

void sub_1DA8CDBE4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1DA8CD9F8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t sub_1DA8CDBFC(uint64_t result, uint64_t a2, void (*a3)(id, uint64_t))
{
  if (a3)
  {
    if (result)
    {
      v5 = result;

      v6 = [v5 unsignedIntegerValue];
    }

    else
    {

      v6 = 0;
    }

    a3(v6, a2);

    return sub_1DA7B5220(a3);
  }

  return result;
}

void sub_1DA8CDC88(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1DA8CDE24(uint64_t a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1DA8CDE94(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a2;
  v32 = sub_1DA9407F4();
  v35 = *(v32 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1DA940854();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1DA93FAF4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v31 = *&v5[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  (*(v16 + 16))(&v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v15);
  v18 = (*(v16 + 80) + 33) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = a1;
  *(v19 + 32) = v28;
  (*(v16 + 32))(v19 + v18, &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v15);
  v20 = (v19 + ((v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v30;
  *v20 = v29;
  v20[1] = v21;
  aBlock[4] = sub_1DA8CE368;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_21;
  v22 = _Block_copy(aBlock);
  v23 = v5;
  v24 = a1;

  sub_1DA940824();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  v25 = v32;
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v14, v10, v22);
  _Block_release(v22);
  (*(v35 + 8))(v10, v25);
  (*(v33 + 8))(v14, v34);
}

void sub_1DA8CE254(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1DA8D16E0(0xD00000000000003DLL, 0x80000001DA955310);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v8 = sub_1DA93FA44();
    v9 = sub_1DA940A04();
    [v6 saveNotificationRequest:a2 shouldRepost:v7 apsMessageTimestamp:v8 forBundleIdentifier:v9];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CE368()
{
  v1 = *(sub_1DA93FAF4() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 33) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_1DA8CE254(v2, v3, v4);
}

uint64_t sub_1DA8CE55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v26 = *&v6[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
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
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v27);
}

void sub_1DA8CE82C()
{
  v0 = sub_1DA8D16E0(0xD000000000000046, 0x80000001DA9552C0);
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DA940BD4();
    v3 = sub_1DA940A04();
    [v1 removeNotificationRecordsForIdentifiers:v2 bundleIdentifier:v3];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CE908()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DA8CE82C();
}

void sub_1DA8CE9C4()
{
  v0 = sub_1DA8D16E0(0xD000000000000038, 0x80000001DA955280);
  if (v0)
  {
    v1 = v0;
    sub_1DA7AF3EC(0, &qword_1ECBD4C00, off_1E85D5D68);
    v2 = sub_1DA940BD4();
    v3 = sub_1DA940A04();
    [v1 removeSimilarNotificationRecords:v2 forBundleIdentifier:v3];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CEAB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DA8CE9C4();
}

void sub_1DA8CEB10()
{
  v0 = sub_1DA8D16E0(0xD000000000000041, 0x80000001DA955230);
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DA940A04();
    [v1 removeNotificationRecordsWithNonPushTriggerForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CEBC0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DA8CEB10();
}

uint64_t sub_1DA8CEC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v9 = sub_1DA9407F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DA940854();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v5[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = v22[0];
  v19 = _Block_copy(aBlock);
  v20 = v5;

  sub_1DA940824();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void sub_1DA8CEED0()
{
  v0 = sub_1DA8D16E0(0xD000000000000036, 0x80000001DA9551F0);
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DA940A04();
    [v1 removeInvalidNotificationRecordsForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CEF80()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DA8CEED0();
}

void sub_1DA8CEFCC()
{
  v0 = sub_1DA8D16E0(0xD000000000000032, 0x80000001DA9551B0);
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DA940A04();
    [v1 removeAllNotificationRecordsForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CF07C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DA8CEFCC();
}

void sub_1DA8CF0C8()
{
  v0 = sub_1DA8D16E0(0xD000000000000021, 0x80000001DA955180);
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DA940A04();
    [v1 removeStoreForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CF178()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DA8CF0C8();
}

uint64_t sub_1DA8CF19C()
{
  v1 = *(v0 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7740, &unk_1DA964EA0);
  sub_1DA940FE4();
  return v3;
}

uint64_t sub_1DA8CF220@<X0>(void *a1@<X8>)
{
  result = sub_1DA8D16E0(0xD000000000000021, 0x80000001DA955150);
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

uint64_t sub_1DA8CF2D0@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DA8CF220(a1);
}

uint64_t sub_1DA8CF3A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1DA9407F4();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DA940854();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v5[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  aBlock[4] = sub_1DA8CF808;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_63;
  v20 = _Block_copy(aBlock);
  v21 = v5;
  sub_1DA7B3DC0(a4);
  v22 = a1;

  sub_1DA940824();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v18, v14, v20);
  _Block_release(v20);
  (*(v26 + 8))(v14, v11);
  (*(v15 + 8))(v18, v25);
}

void sub_1DA8CF698(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DA8D16E0(0xD000000000000038, 0x80000001DA955110);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1DA940A04();
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_161;
      a2 = _Block_copy(aBlock);
    }

    [v8 setBadgeNumber:a4 forBundleIdentifier:v9 completionHandler:a2];
    _Block_release(a2);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    v10 = _UNCNilRemoteTargetError("setBadgeNumber(_:forBundleIdentifier:completionHandler:)");
    (a2)();
  }
}

uint64_t sub_1DA8CF90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1DA9407F4();
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DA940854();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v5[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  aBlock[4] = sub_1DA8CFD90;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_69_0;
  v20 = _Block_copy(aBlock);
  v21 = v5;
  sub_1DA7B3DC0(a4);

  sub_1DA940824();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v18, v14, v20);
  _Block_release(v20);
  (*(v25 + 8))(v14, v11);
  (*(v15 + 8))(v18, v24);
}

void sub_1DA8CFBFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DA8D16E0(0xD000000000000037, 0x80000001DA9550D0);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v10 = sub_1DA940A04();
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_158;
      a2 = _Block_copy(aBlock);
    }

    [v8 setBadgeCount:v9 forBundleIdentifier:v10 completionHandler:a2];
    _Block_release(a2);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    v11 = _UNCNilRemoteTargetError("setBadgeCount(_:forBundleIdentifier:completionHandler:)");
    (a2)();
  }
}

uint64_t sub_1DA8CFE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v12 = sub_1DA9407F4();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DA940854();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&v6[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v20 = swift_allocObject();
  v20[2] = v6;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a3;
  v20[8] = v25;
  aBlock[4] = sub_1DA8D0334;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_75;
  v21 = _Block_copy(aBlock);
  v22 = v6;
  sub_1DA7B3DC0(a5);

  sub_1DA940824();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v19, v15, v21);
  _Block_release(v21);
  (*(v28 + 8))(v15, v12);
  (*(v16 + 8))(v19, v27);
}

void sub_1DA8D019C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DA8D16E0(0xD000000000000038, 0x80000001DA955090);
  if (v8)
  {
    v9 = v8;
    if (a5)
    {
      a5 = sub_1DA940A04();
    }

    v10 = sub_1DA940A04();
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_155;
      a2 = _Block_copy(aBlock);
    }

    [v9 setBadgeString:a5 forBundleIdentifier:v10 completionHandler:a2];
    _Block_release(a2);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    v11 = _UNCNilRemoteTargetError("setBadgeString(_:forBundleIdentifier:completionHandler:)");
    (a2)();
  }
}

void sub_1DA8D0334()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DA8D019C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

void sub_1DA8D0474()
{
  v0 = sub_1DA8D16E0(0xD000000000000029, 0x80000001DA955060);
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DA940A04();
    [v1 categoryRepositoryDidChangeCategoriesForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

uint64_t objectdestroy_35Tm_0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1DA8D0564()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DA8D0474();
}

uint64_t sub_1DA8D0588(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1DA940A14();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1DA8D060C()
{
  v1 = *(v0 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA940FE4();
  return v3;
}

void sub_1DA8D0680(uint64_t *a1@<X8>)
{
  v2 = sub_1DA8D16E0(0xD000000000000023, 0x80000001DA955030);
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

id sub_1DA8D0758(char *a1)
{
  v1 = *&a1[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA940FE4();

  v3 = sub_1DA940BD4();

  return v3;
}

uint64_t sub_1DA8D082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *(v6 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1DA940FE4();
  return v9;
}

uint64_t sub_1DA8D08A0@<X0>(void *a1@<X8>)
{
  result = sub_1DA8D16E0(0xD000000000000029, 0x80000001DA955000);
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

id sub_1DA8D09CC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1DA940A14();
  sub_1DA940A14();
  v9 = *&a1[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1DA940FE4();

  return v12;
}

uint64_t sub_1DA8D0ACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(v4 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1DA940FE4();
  return v7;
}

void sub_1DA8D0B3C(uint64_t *a1@<X8>)
{
  v2 = sub_1DA8D16E0(0xD000000000000020, 0x80000001DA954FD0);
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

void sub_1DA8D0C1C(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1DA8D0B3C(a1);
}

void sub_1DA8D0D4C()
{
  v0 = sub_1DA8D16E0(0xD000000000000025, 0x80000001DA954FA0);
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

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1DA8D0E84()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DA8D0D4C();
}

uint64_t sub_1DA8D0EB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  sub_1DA7AF3EC(0, a5, a6);
  v9 = sub_1DA940BE4();
  v10 = sub_1DA940A14();
  v12 = v11;
  v13 = a1;
  a7(v9, v10, v12);
}

uint64_t sub_1DA8D0F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1DA940A04();
    v12 = sub_1DA940A04();
    v13 = sub_1DA940A04();
    if (a8)
    {
      v14 = sub_1DA940A04();
    }

    else
    {
      v14 = 0;
    }

    [v10 performAction:v11 forNotification:v12 inApp:v13 withUserText:v14];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA8D16E0(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DA9408C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
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

  v12 = OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection;
  v13 = *(v2 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection);
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
    sub_1DA8D2514();
    sub_1DA8D1A5C();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6880, &qword_1DA9600E0);
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
    _os_log_impl(&dword_1DA7A9000, v21, v22, "No remote target for %s in core service client", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12739F0](v24, -1, -1);
    MEMORY[0x1E12739F0](v23, -1, -1);
  }

  sub_1DA896614(&v28);
  return 0;
}

void sub_1DA8D1A5C()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
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

  v8 = OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection;
  if (*&v0[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection])
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
      v18 = sub_1DA8D2648;
      *(v17 + 16) = sub_1DA8D2648;
      *(v17 + 24) = v16;
      aBlock[4] = sub_1DA8D2650;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA88419C;
      aBlock[3] = &block_descriptor_101;
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

    sub_1DA7B5220(v18);
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
  v25 = sub_1DA940EF4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DA7A9000, v24, v25, "No endpoint in core service client", v26, 2u);
    MEMORY[0x1E12739F0](v26, -1, -1);
  }
}

void sub_1DA8D1EB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_1DA8D2658;
  v16 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1DA7B00D0;
  v14 = &block_descriptor_107;
  v8 = _Block_copy(&v11);

  [a1 setInterruptionHandler_];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_1DA8D2660;
  v16 = v9;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1DA7B00D0;
  v14 = &block_descriptor_111;
  v10 = _Block_copy(&v11);

  [a1 setInvalidationHandler_];
  _Block_release(v10);
}

uint64_t sub_1DA8D20A4()
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
      _os_log_impl(&dword_1DA7A9000, v3, v4, "Core service client connection is interrupted", v5, 2u);
      MEMORY[0x1E12739F0](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1DA8D27D4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1DA8D2794;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7B8000;
    aBlock[3] = &block_descriptor_131_0;
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

uint64_t sub_1DA8D22DC()
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
      _os_log_impl(&dword_1DA7A9000, v3, v4, "Core service client connection is invalidated", v5, 2u);
      MEMORY[0x1E12739F0](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1DA8D2668;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1DA8D2794;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7B8000;
    aBlock[3] = &block_descriptor_121;
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

void sub_1DA8D2514()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1DA9408F4();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection;
    [*(v0 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection) invalidate];
    v9 = *(v0 + v8);
    *(v0 + v8) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DA8D2820(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserNotificationsCloudRecord(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v76 = (&v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v74 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v74 - v12);
  v14 = a1[1];
  v81 = *a1;
  v82 = v14;
  v15 = a1[3];
  v83 = a1[2];
  v84 = v15;
  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v16 = sub_1DA9405A4();
  __swift_project_value_buffer(v16, qword_1EE11AD48);
  sub_1DA848A24(&v81, v80);

  v17 = sub_1DA940584();
  v18 = sub_1DA940F34();
  sub_1DA84A040(&v81);

  v19 = os_log_type_enabled(v17, v18);
  v77 = v13;
  v78 = v2;
  v75 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v79[0] = v21;
    *v20 = 136315906;
    *(v20 + 4) = sub_1DA7AE6E8(v83, *(&v83 + 1), v79);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1DA7AE6E8(v81, *(&v81 + 1), v79);
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_1DA7AE6E8(v82, *(&v82 + 1), v79);
    *(v20 + 32) = 2080;
    sub_1DA7BABAC((v2 + 2), v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v22 = sub_1DA940A74();
    v24 = sub_1DA7AE6E8(v22, v23, v79);

    *(v20 + 34) = v24;
    _os_log_impl(&dword_1DA7A9000, v17, v18, "NotificationActionHandlerCloudSender perform(action:): actionIdentifier: %s bundleIdentifier: %s notificationIdentifier: %s pushTarget: %s", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v21, -1, -1);
    v25 = v20;
    v13 = v77;
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  v26 = v81;
  v27 = (v13 + *(v4 + 20));
  v28 = v82;
  *v27 = v81;
  v27[1] = v28;
  v29 = v84;
  v27[2] = v83;
  v27[3] = v29;
  type metadata accessor for CloudAction(0);
  swift_storeEnumTagMultiPayload();
  *v13 = v26;
  v79[3] = v4;
  v79[4] = sub_1DA8D3354();
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v79);
  sub_1DA8D33AC(v13, boxed_opaque_existential_2);
  sub_1DA848A24(&v81, v80);

  v31 = sub_1DA841298(v79, 0, 1);
  v33 = v32;
  result = __swift_destroy_boxed_opaque_existential_1(v79);
  v35 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v35 != 2)
    {
      goto LABEL_19;
    }

    v37 = *(v31 + 16);
    v36 = *(v31 + 24);
    v38 = __OFSUB__(v36, v37);
    v39 = v36 - v37;
    if (!v38)
    {
      if (v39)
      {
        goto LABEL_12;
      }

LABEL_19:
      v74 = v31;
      if (qword_1EE110E68 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v16, qword_1EE11ADC0);
      v60 = v75;
      sub_1DA8D33AC(v13, v75);
      v61 = v78;

      v62 = sub_1DA940584();
      v63 = sub_1DA940F14();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v79[0] = v65;
        *v64 = 136315394;
        v66 = v76;
        sub_1DA8D33AC(v60, v76);
        *&v80[0] = 0;
        *(&v80[0] + 1) = 0xE000000000000000;
        MEMORY[0x1E1271BD0](*v66, v66[1]);
        MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
        sub_1DA8D346C(v66 + *(v4 + 20));
        v67 = v33;
        v68 = v80[0];
        sub_1DA8D3410(v60);
        sub_1DA8D3410(v66);
        v69 = sub_1DA7AE6E8(v68, *(&v68 + 1), v79);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2080;
        sub_1DA7BABAC((v61 + 2), v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
        v70 = sub_1DA940A74();
        v72 = sub_1DA7AE6E8(v70, v71, v79);

        *(v64 + 14) = v72;
        _os_log_impl(&dword_1DA7A9000, v62, v63, "NotificationActionHandlerCloudSender sendAction(response): %s target:%s data.count == 0", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v65, -1, -1);
        MEMORY[0x1E12739F0](v64, -1, -1);

        sub_1DA828324(v74, v67);
        v73 = v77;
        return sub_1DA8D3410(v73);
      }

      sub_1DA828324(v74, v33);
      sub_1DA8D3410(v60);
LABEL_24:
      v73 = v13;
      return sub_1DA8D3410(v73);
    }

    __break(1u);
  }

  else
  {
    if (!v35)
    {
      if (!BYTE6(v33))
      {
        goto LABEL_19;
      }

LABEL_12:
      v40 = v31;
      if (qword_1EE110E68 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v16, qword_1EE11ADC0);
      sub_1DA848A24(&v81, v80);
      v41 = v78;

      sub_1DA841874(v31, v33);
      v42 = sub_1DA940584();
      v43 = sub_1DA940F34();
      sub_1DA84A040(&v81);

      sub_1DA828324(v40, v33);
      v44 = v33;
      if (os_log_type_enabled(v42, v43))
      {
        v45 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v79[0] = v76;
        *v45 = 136316162;
        *(v45 + 4) = sub_1DA7AE6E8(v83, *(&v83 + 1), v79);
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_1DA7AE6E8(v26, *(&v26 + 1), v79);
        *(v45 + 22) = 2080;
        *(v45 + 24) = sub_1DA7AE6E8(v82, *(&v82 + 1), v79);
        *(v45 + 32) = 2080;
        sub_1DA7BABAC((v41 + 2), v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
        v46 = sub_1DA940A74();
        v48 = sub_1DA7AE6E8(v46, v47, v79);
        LODWORD(v75) = v43;
        v49 = v48;

        *(v45 + 34) = v49;
        *(v45 + 42) = 2080;
        sub_1DA841874(v40, v33);
        v50 = sub_1DA93F984();
        v52 = v51;
        sub_1DA828324(v40, v44);
        v53 = sub_1DA7AE6E8(v50, v52, v79);

        *(v45 + 44) = v53;
        _os_log_impl(&dword_1DA7A9000, v42, v75, "NotificationActionHandlerCloudSender sendAction(response): actionIdentifier: %s bundleIdentifier: %s notificationIdentifier: %s target:%s notificationData: %s", v45, 0x34u);
        v54 = v76;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v54, -1, -1);
        v55 = v45;
        v13 = v77;
        MEMORY[0x1E12739F0](v55, -1, -1);
      }

      v56 = v41[5];
      v57 = v41[6];
      __swift_project_boxed_opaque_existential_1(v41 + 2, v56);
      v80[0] = v81;
      v80[1] = v82;
      v80[2] = v83;
      v80[3] = v84;
      sub_1DA848A24(&v81, v79);
      v58 = sub_1DA940A74();
      (*(v57 + 16))(v40, v44, v58, v59, v26, *(&v26 + 1), v56, v57);

      sub_1DA828324(v40, v44);
      goto LABEL_24;
    }

    if (!__OFSUB__(HIDWORD(v31), v31))
    {
      if (HIDWORD(v31) != v31)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DA8D3354()
{
  result = qword_1EE114560;
  if (!qword_1EE114560)
  {
    type metadata accessor for UserNotificationsCloudRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114560);
  }

  return result;
}

uint64_t sub_1DA8D33AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationsCloudRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8D3410(uint64_t a1)
{
  v2 = type metadata accessor for UserNotificationsCloudRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA8D346C(uint64_t a1)
{
  v2 = type metadata accessor for CloudAction(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA8D6770(a1, v5, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1DA8D67D8(v5, type metadata accessor for CloudAction);
      v7 = 0x80000001DA9540B0;
      v8 = 0xD000000000000012;
    }

    else
    {
      sub_1DA8D67D8(v5, type metadata accessor for CloudAction);
      v7 = 0xEF6E6F6974616369;
      v8 = 0x6669746F4E646461;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1DA8D67D8(v5, type metadata accessor for CloudAction);
    v8 = 0xD000000000000010;
    v7 = 0x80000001DA954090;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1DA8D67D8(v5, type metadata accessor for CloudAction);
    v7 = 0xED00006E6F697463;
    v8 = 0x416D726F66726570;
  }

  else
  {
    v7 = 0x80000001DA954070;
    sub_1DA8D67D8(v5, type metadata accessor for CloudAction);
    v8 = 0xD000000000000011;
  }

  MEMORY[0x1E1271BD0](v8, v7);
}

uint64_t AlertCoordinationMessage.init(notificationID:didAlert:date:result:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for AlertCoordinationMessage(0);
  v10 = *(v9 + 24);
  v11 = sub_1DA93FAF4();
  result = (*(*(v11 - 8) + 32))(a6 + v10, a4, v11);
  *(a6 + *(v9 + 28)) = v8;
  return result;
}

uint64_t sub_1DA8D371C()
{
  v1 = type metadata accessor for CloudAction(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA8D6770(v0, v4, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1DA8D67D8(v4, type metadata accessor for CloudAction);
      return 0xD000000000000012;
    }

    else
    {
      sub_1DA8D67D8(v4, type metadata accessor for CloudAction);
      return 0x6669746F4E646461;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1DA8D67D8(v4, type metadata accessor for CloudAction);
    return 0xD000000000000010;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1DA8D67D8(v4, type metadata accessor for CloudAction);
    return 0x416D726F66726570;
  }

  else
  {
    sub_1DA8D67D8(v4, type metadata accessor for CloudAction);
    return 0xD000000000000011;
  }
}

uint64_t AlertCoordinationMessage.notificationID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AlertCoordinationMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlertCoordinationMessage(0) + 24);
  v4 = sub_1DA93FAF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AlertCoordinationMessage.result.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AlertCoordinationMessage(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AlertCoordinationMessage.description.getter()
{
  v1 = v0;
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000010, 0x80000001DA955500);
  MEMORY[0x1E1271BD0](*v1, v1[1]);
  MEMORY[0x1E1271BD0](0x656C41646964203BLL, 0xEC000000203A7472);
  if (*(v0 + 16))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v2, v3);

  MEMORY[0x1E1271BD0](0x203A65746164203BLL, 0xE800000000000000);
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  v5 = *(v4 + 24);
  sub_1DA93FAF4();
  sub_1DA8D3F94(&qword_1EE114C88, MEMORY[0x1E6969530]);
  v6 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v6);

  MEMORY[0x1E1271BD0](0x746C75736572203BLL, 0xEA0000000000203ALL);
  v9 = *(v1 + *(v4 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD68F0, &qword_1DA960170);
  v7 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v7);

  return 0;
}

uint64_t sub_1DA8D3BC0()
{
  v1 = 0x6163696669746F6ELL;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x746C75736572;
  }

  if (*v0)
  {
    v1 = 0x7472656C41646964;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DA8D3C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA8D76FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA8D3C64(uint64_t a1)
{
  v2 = sub_1DA8D3F40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8D3CA0(uint64_t a1)
{
  v2 = sub_1DA8D3F40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlertCoordinationMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD68F8, &qword_1DA960178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8D3F40();
  sub_1DA941834();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_1DA9415D4();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v20 = 1;
    sub_1DA9415E4();
    v15 = type metadata accessor for AlertCoordinationMessage(0);
    v16 = *(v15 + 24);
    v19 = 2;
    sub_1DA93FAF4();
    sub_1DA8D3F94(&qword_1ECBD6908, MEMORY[0x1E6969530]);
    sub_1DA941604();
    v18 = *(v3 + *(v15 + 28));
    v17[9] = 3;
    sub_1DA8D3FDC();
    sub_1DA9415C4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DA8D3F40()
{
  result = qword_1ECBD6900;
  if (!qword_1ECBD6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6900);
  }

  return result;
}

uint64_t sub_1DA8D3F94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA8D3FDC()
{
  result = qword_1ECBD6910;
  if (!qword_1ECBD6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6910);
  }

  return result;
}

uint64_t AlertCoordinationMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1DA93FAF4();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6918, &qword_1DA960180);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for AlertCoordinationMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8D3F40();
  v24 = v10;
  v16 = v25;
  sub_1DA941804();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v22;
  v30 = 0;
  *v14 = sub_1DA941554();
  *(v14 + 1) = v18;
  v25 = v18;
  v29 = 1;
  v14[16] = sub_1DA941564() & 1;
  v28 = 2;
  sub_1DA8D3F94(&qword_1ECBD6920, MEMORY[0x1E6969530]);
  sub_1DA941584();
  (*(v21 + 32))(&v14[*(v11 + 24)], v6, v3);
  v27 = 3;
  sub_1DA8D443C();
  sub_1DA941544();
  (*(v17 + 8))(v24, v23);
  *&v14[*(v11 + 28)] = v26;
  sub_1DA8D6770(v14, v20, type metadata accessor for AlertCoordinationMessage);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA8D67D8(v14, type metadata accessor for AlertCoordinationMessage);
}

unint64_t sub_1DA8D443C()
{
  result = qword_1ECBD6928;
  if (!qword_1ECBD6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6928);
  }

  return result;
}

uint64_t sub_1DA8D44D0()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8D4594()
{
  *v0;
  *v0;
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA8D4644()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8D4704@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA8D7C04();
  *a2 = result;
  return result;
}

void sub_1DA8D4734(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xD000000000000010;
  v5 = 0x80000001DA9506B0;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001DA9506D0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001DA950690;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1DA8D47B4()
{
  v1 = 1701869940;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DA8D4830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA8D7C04();
  *a1 = result;
  return result;
}

uint64_t sub_1DA8D4858(uint64_t a1)
{
  v2 = sub_1DA8D7864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8D4894(uint64_t a1)
{
  v2 = sub_1DA8D7864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DA8D48D0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA8D7CA4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA8D49AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = type metadata accessor for AlertCoordinationMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6988, &unk_1DA960660);
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58[-v9];
  v11 = type metadata accessor for CloudAction(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1[3];
  v15 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DA8D7864();
  v17 = v69;
  sub_1DA941804();
  if (!v17)
  {
    v69 = v11;
    v66 = v14;
    v18 = v68;
    LOBYTE(v75) = 0;
    sub_1DA8D78B8();
    sub_1DA941584();
    if (v71 <= 1u)
    {
      if (!v71)
      {
        LOBYTE(v75) = 1;
        v20 = sub_1DA83E640();
        sub_1DA941584();
        v65 = v20;
        v21 = v71;
        sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
        sub_1DA7AF3EC(0, &unk_1EE110B90, off_1E85D5D70);
        v22 = sub_1DA940F44();
        v64 = v21 >> 64;
        v62 = v21;
        if (v22)
        {
          v63 = v22;
          LOBYTE(v75) = 2;
          sub_1DA941584();
          v39 = v71;
          sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
          v40 = sub_1DA940F44();
          v60 = 0;
          v61 = v40;
          sub_1DA828324(v39, *(&v39 + 1));
          v57 = v64;
          LOBYTE(v75) = 3;
          v41 = v60;
          sub_1DA941584();
          if (v41)
          {
            if (qword_1EE110D80 != -1)
            {
              swift_once();
            }

            v42 = sub_1DA9405A4();
            __swift_project_value_buffer(v42, qword_1EE11AD48);
            v43 = v63;
            v44 = sub_1DA940584();
            v45 = sub_1DA940F34();

            v65 = v44;
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              *&v71 = v60;
              *v46 = 136315138;
              v47 = v43;
              v48 = [v47 description];
              v59 = sub_1DA940A14();
              v50 = v49;

              v51 = sub_1DA7AE6E8(v59, v50, &v71);

              *(v46 + 4) = v51;
              v52 = v65;
              _os_log_impl(&dword_1DA7A9000, v65, v45, "CloudAction: no communicationImage for: %s", v46, 0xCu);
              v53 = v60;
              __swift_destroy_boxed_opaque_existential_1(v60);
              MEMORY[0x1E12739F0](v53, -1, -1);
              MEMORY[0x1E12739F0](v46, -1, -1);
              sub_1DA828324(v62, v64);
            }

            else
            {
              sub_1DA828324(v62, v64);
            }

            (*(v18 + 8))(v10, v7);
            v54 = xmmword_1DA960160;
          }

          else
          {
            (*(v18 + 8))(v10, v7);
            sub_1DA828324(v62, v57);
            v54 = v71;
          }

          v29 = v66;
          v55 = v67;
          v56 = v61;
          *v66 = v63;
          v29[1] = v56;
          *(v29 + 1) = v54;
          swift_storeEnumTagMultiPayload();
          v31 = v55;
          goto LABEL_14;
        }

        sub_1DA8D7974();
        swift_allocError();
        *v36 = 0;
        swift_willThrow();
        v35 = v62;
        v37 = v64;
LABEL_27:
        sub_1DA828324(v35, v37);
        (*(v18 + 8))(v10, v7);
        return __swift_destroy_boxed_opaque_existential_1(v70);
      }

      LOBYTE(v75) = 1;
      sub_1DA83E640();
      sub_1DA941584();
      v23 = *(&v71 + 1);
      v26 = v71;
      sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
      sub_1DA7AF3EC(0, &qword_1EE110B88, off_1E85D5D78);
      v27 = sub_1DA940F44();
      if (v27)
      {
        v32 = v27;
        (*(v18 + 8))(v10, v7);
        sub_1DA828324(v26, v23);
        v33 = v66;
        *v66 = v32;
        v29 = v33;
        goto LABEL_13;
      }

      sub_1DA8D7974();
      swift_allocError();
      *v38 = 0;
      swift_willThrow();
      v35 = v26;
    }

    else
    {
      if (v71 != 2)
      {
        if (v71 == 3)
        {
          LOBYTE(v75) = 1;
          sub_1DA865250();
          sub_1DA941584();
          (*(v18 + 8))(v10, v7);
          v28 = v72;
          v29 = v66;
          *v66 = v71;
          *(v29 + 1) = v28;
          v30 = v74;
          *(v29 + 2) = v73;
          *(v29 + 3) = v30;
        }

        else
        {
          LOBYTE(v71) = 1;
          sub_1DA8D3F94(&qword_1ECBD6998, type metadata accessor for AlertCoordinationMessage);
          sub_1DA941584();
          (*(v18 + 8))(v10, v7);
          v29 = v66;
          sub_1DA8D790C(v6, v66, type metadata accessor for AlertCoordinationMessage);
        }

        goto LABEL_13;
      }

      LOBYTE(v75) = 1;
      sub_1DA83E640();
      sub_1DA941584();
      v23 = *(&v71 + 1);
      v24 = v71;
      sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A08, &qword_1DA95C368);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1DA958370;
      *(v25 + 32) = sub_1DA7AF3EC(0, &qword_1EE110B80, 0x1E695DEC8);
      *(v25 + 40) = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
      sub_1DA940F54();

      if (*(&v72 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7900, qword_1DA960078);
        if (swift_dynamicCast())
        {
          (*(v18 + 8))(v10, v7);
          sub_1DA828324(v24, v23);
          v29 = v66;
          *v66 = v75;
LABEL_13:
          swift_storeEnumTagMultiPayload();
          v31 = v67;
LABEL_14:
          sub_1DA8D790C(v29, v31, type metadata accessor for CloudAction);
          return __swift_destroy_boxed_opaque_existential_1(v70);
        }
      }

      else
      {
        sub_1DA896614(&v71);
      }

      sub_1DA8D7974();
      swift_allocError();
      *v34 = 1;
      swift_willThrow();
      v35 = v24;
    }

    v37 = v23;
    goto LABEL_27;
  }

  return __swift_destroy_boxed_opaque_existential_1(v70);
}

void sub_1DA8D55E0(void *a1)
{
  v2 = v1;
  v90 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CloudAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD69A8, &unk_1DA960670);
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v76 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8D7864();
  v80 = v15;
  sub_1DA941834();
  sub_1DA8D6770(v2, v11, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v36 = *v11;
      LOBYTE(v86) = 1;
      LOBYTE(v82) = 0;
      sub_1DA8D79C8();
      v38 = v79;
      v37 = v80;
      v39 = v77;
      sub_1DA941604();
      if (v39)
      {
        (*(v78 + 8))(v37, v38);
      }

      else
      {
        v55 = [v36 notificationRecord];
        [v55 setUserInfo_];

        v56 = objc_opt_self();
        *&v86 = 0;
        v57 = [v56 archivedDataWithRootObject:v36 requiringSecureCoding:1 error:&v86];
        v58 = v86;
        if (v57)
        {
          v59 = sub_1DA93F9A4();
          v61 = v60;

          *&v86 = v59;
          *(&v86 + 1) = v61;
          LOBYTE(v82) = 1;
          sub_1DA83E88C();
          sub_1DA941604();

          sub_1DA828324(v86, *(&v86 + 1));
        }

        else
        {
          v64 = v58;
          sub_1DA93F8C4();

          swift_willThrow();
        }

        (*(v78 + 8))(v37, v38);
      }
    }

    else
    {
      v23 = *v11;
      v24 = *(v11 + 1);
      v25 = *(v11 + 2);
      v26 = *(v11 + 3);
      LOBYTE(v86) = 0;
      LOBYTE(v82) = 0;
      sub_1DA8D79C8();
      v27 = v79;
      v28 = v80;
      v29 = v77;
      sub_1DA941604();
      if (v29)
      {
        (*(v78 + 8))(v28, v27);
      }

      else
      {
        v47 = [v23 notificationRecord];
        [v47 setUserInfo_];

        v48 = objc_opt_self();
        *&v86 = 0;
        v49 = [v48 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v86];
        v50 = v86;
        if (!v49)
        {
          v63 = v50;
          sub_1DA93F8C4();

          swift_willThrow();
          sub_1DA852CB0(v25, v26);

          (*(v78 + 8))(v80, v79);
          goto LABEL_29;
        }

        v77 = v25;
        v51 = sub_1DA93F9A4();
        v53 = v52;

        *&v86 = v51;
        *(&v86 + 1) = v53;
        LOBYTE(v82) = 1;
        sub_1DA83E88C();
        v54 = v79;
        sub_1DA941604();
        sub_1DA828324(v86, *(&v86 + 1));
        v25 = v77;
        if (v24)
        {
          *&v86 = 0;
          v66 = v24;
          v67 = v48;
          v68 = v66;
          v69 = [v67 archivedDataWithRootObject:v66 requiringSecureCoding:1 error:&v86];
          v70 = v86;
          if (!v69)
          {
            v75 = v70;
            sub_1DA93F8C4();

            swift_willThrow();
            sub_1DA852CB0(v25, v26);

            (*(v78 + 8))(v80, v54);
            goto LABEL_29;
          }

          v71 = sub_1DA93F9A4();
          v73 = v72;

          *&v86 = v71;
          *(&v86 + 1) = v73;
          v54 = v79;
          v74 = v80;
          LOBYTE(v82) = 2;
          sub_1DA941604();
          sub_1DA828324(v86, *(&v86 + 1));

          v25 = v77;
        }

        else
        {
          v74 = v80;
        }

        if (v26 >> 60 == 15)
        {
          (*(v78 + 8))(v74, v54);

          goto LABEL_29;
        }

        *&v86 = v25;
        *(&v86 + 1) = v26;
        LOBYTE(v82) = 3;
        sub_1DA941604();
        (*(v78 + 8))(v74, v54);
      }

      sub_1DA852CB0(v25, v26);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v30 = *v11;
    LOBYTE(v86) = 2;
    LOBYTE(v82) = 0;
    sub_1DA8D79C8();
    v32 = v79;
    v31 = v80;
    v33 = v77;
    sub_1DA941604();
    if (v33)
    {
      (*(v78 + 8))(v31, v32);
    }

    else
    {
      v40 = objc_opt_self();
      sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
      v41 = sub_1DA940BD4();

      *&v86 = 0;
      v42 = [v40 archivedDataWithRootObject:v41 requiringSecureCoding:1 error:&v86];

      v43 = v86;
      if (v42)
      {
        v44 = sub_1DA93F9A4();
        v46 = v45;

        *&v86 = v44;
        *(&v86 + 1) = v46;
        LOBYTE(v82) = 1;
        sub_1DA83E88C();
        sub_1DA941604();
        sub_1DA828324(v86, *(&v86 + 1));
      }

      else
      {
        v62 = v43;
        sub_1DA93F8C4();

        swift_willThrow();
      }

      (*(v78 + 8))(v31, v32);
    }
  }

  else
  {
    v18 = v80;
    if (EnumCaseMultiPayload == 3)
    {
      v19 = *(v11 + 1);
      v86 = *v11;
      v87 = v19;
      v20 = *(v11 + 3);
      v88 = *(v11 + 2);
      v89 = v20;
      LOBYTE(v82) = 3;
      v81 = 0;
      sub_1DA8D79C8();
      v21 = v79;
      v22 = v77;
      sub_1DA941604();
      if (!v22)
      {
        v82 = v86;
        v83 = v87;
        v84 = v88;
        v85 = v89;
        v81 = 1;
        sub_1DA864940();
        sub_1DA941604();
      }

      (*(v78 + 8))(v18, v21);
      sub_1DA84A040(&v86);
    }

    else
    {
      sub_1DA8D790C(v11, v7, type metadata accessor for AlertCoordinationMessage);
      LOBYTE(v86) = 4;
      LOBYTE(v82) = 0;
      sub_1DA8D79C8();
      v34 = v79;
      v35 = v77;
      sub_1DA941604();
      if (!v35)
      {
        LOBYTE(v86) = 1;
        sub_1DA8D3F94(&qword_1ECBD69B0, type metadata accessor for AlertCoordinationMessage);
        sub_1DA941604();
      }

      sub_1DA8D67D8(v7, type metadata accessor for AlertCoordinationMessage);
      (*(v78 + 8))(v18, v34);
    }
  }

LABEL_29:
  v65 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DA8D5FF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6F69746361;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = 0x80000001DA950340;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E6F69746361;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x80000001DA950340;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DA941684();
  }

  return v9 & 1;
}

uint64_t sub_1DA8D60A0()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8D6124()
{
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA8D6194()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8D6214@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DA9414F4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DA8D6274(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DA950340;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x6E6F69746361;
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1DA8D62B4()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1DA8D62F0@<X0>(char *a1@<X8>)
{
  v2 = sub_1DA9414F4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DA8D6354(uint64_t a1)
{
  v2 = sub_1DA8D671C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8D6390(uint64_t a1)
{
  v2 = sub_1DA8D671C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserNotificationsCloudRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for CloudAction(0);
  v4 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6930, &qword_1DA960188);
  v21 = *(v23 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v18 - v8;
  v10 = type metadata accessor for UserNotificationsCloudRecord(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8D671C();
  sub_1DA941804();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v15 = v21;
  v25 = 0;
  *v13 = sub_1DA941554();
  v13[1] = v16;
  v18 = v16;
  v24 = 1;
  sub_1DA8D3F94(&qword_1ECBD6938, type metadata accessor for CloudAction);
  sub_1DA941584();
  (*(v15 + 8))(v9, v23);
  sub_1DA8D790C(v6, v13 + *(v19 + 20), type metadata accessor for CloudAction);
  sub_1DA8D6770(v13, v20, type metadata accessor for UserNotificationsCloudRecord);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA8D67D8(v13, type metadata accessor for UserNotificationsCloudRecord);
}

unint64_t sub_1DA8D671C()
{
  result = qword_1EE114578[0];
  if (!qword_1EE114578[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE114578);
  }

  return result;
}

uint64_t sub_1DA8D6770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8D67D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UserNotificationsCloudRecord.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6940, &qword_1DA960190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8D671C();
  sub_1DA941834();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1DA9415D4();
  if (!v2)
  {
    v13 = *(type metadata accessor for UserNotificationsCloudRecord(0) + 20);
    v15[14] = 1;
    type metadata accessor for CloudAction(0);
    sub_1DA8D3F94(&qword_1EE113C70, type metadata accessor for CloudAction);
    sub_1DA941604();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DA8D6A20()
{
  v1 = v0;
  v2 = type metadata accessor for AlertCoordinationMessage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloudAction(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA8D6770(v1, v9, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v26 = *v9;
      *&v38 = 0;
      *(&v38 + 1) = 0xE000000000000000;
      sub_1DA941364();

      *&v38 = 0xD000000000000013;
      *(&v38 + 1) = 0x80000001DA955560;
      v27 = [v26 notificationRecord];
      v28 = [v27 identifier];

      if (v28)
      {
        v29 = sub_1DA940A14();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      *&v36[0] = v29;
      *(&v36[0] + 1) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
      v35 = sub_1DA940A74();
      MEMORY[0x1E1271BD0](v35);

      MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    }

    else
    {
      v14 = *v9;
      v15 = *(v9 + 1);
      sub_1DA852CB0(*(v9 + 2), *(v9 + 3));
      *&v38 = 0;
      *(&v38 + 1) = 0xE000000000000000;
      sub_1DA941364();

      *&v38 = 0xD000000000000010;
      *(&v38 + 1) = 0x80000001DA955580;
      v16 = [v14 notificationRecord];
      v17 = [v16 identifier];

      if (v17)
      {
        v18 = sub_1DA940A14();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      *&v36[0] = v18;
      *(&v36[0] + 1) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
      v32 = sub_1DA940A74();
      MEMORY[0x1E1271BD0](v32);

      MEMORY[0x1E1271BD0](0x6E6974746573202CLL, 0xEC000000203F7367);
      if (v15)
      {
        v33 = 7562617;
      }

      else
      {
        v33 = 28526;
      }

      if (v15)
      {
        v34 = 0xE300000000000000;
      }

      else
      {
        v34 = 0xE200000000000000;
      }

      MEMORY[0x1E1271BD0](v33, v34);

      MEMORY[0x1E1271BD0](694100012, 0xE400000000000000);
    }

    return v38;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v21 = *v9;
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_1DA941364();

    *&v38 = 0xD000000000000011;
    *(&v38 + 1) = 0x80000001DA955540;
    if (v21 >> 62)
    {
      v22 = sub_1DA941264();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v36[0] = v22;
    v23 = sub_1DA941614();
    MEMORY[0x1E1271BD0](v23);

    MEMORY[0x1E1271BD0](0x726F676574616320, 0xEC00000029736569);
    return v38;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v11 = *(v9 + 1);
    v38 = *v9;
    v39 = v11;
    v12 = *(v9 + 3);
    v40 = *(v9 + 2);
    v41 = v12;
    *&v36[0] = 0;
    *(&v36[0] + 1) = 0xE000000000000000;
    sub_1DA941364();
    v37 = v36[0];
    MEMORY[0x1E1271BD0](0x416D726F66726570, 0xEE00286E6F697463);
    v36[0] = v38;
    v36[1] = v39;
    v36[2] = v40;
    v36[3] = v41;
    sub_1DA941494();
    sub_1DA84A040(&v38);
    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    return v37;
  }

  else
  {
    sub_1DA8D790C(v9, v5, type metadata accessor for AlertCoordinationMessage);
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_1DA941364();

    *&v38 = 0xD000000000000012;
    *(&v38 + 1) = 0x80000001DA955520;
    v24 = AlertCoordinationMessage.description.getter();
    MEMORY[0x1E1271BD0](v24);

    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    v25 = v38;
    sub_1DA8D67D8(v5, type metadata accessor for AlertCoordinationMessage);
    return v25;
  }
}

uint64_t UserNotificationsCloudRecord.description.getter()
{
  MEMORY[0x1E1271BD0](*v0, v0[1]);
  MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
  v1 = type metadata accessor for UserNotificationsCloudRecord(0);
  sub_1DA8D346C(v0 + *(v1 + 20));
  return 0;
}

uint64_t UserNotificationsCloudRecord.debugDescription.getter()
{
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
  v1 = v0 + *(type metadata accessor for UserNotificationsCloudRecord(0) + 20);
  v2 = sub_1DA8D6A20();
  MEMORY[0x1E1271BD0](v2);

  return v4;
}

uint64_t sub_1DA8D7054(uint64_t a1)
{
  MEMORY[0x1E1271BD0](*v1, v1[1]);
  MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
  sub_1DA8D346C(v1 + *(a1 + 20));
  return 0;
}

uint64_t sub_1DA8D70C0(uint64_t a1)
{
  v6 = *v1;
  v7 = v1[1];

  MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
  v3 = v1 + *(a1 + 20);
  v4 = sub_1DA8D6A20();
  MEMORY[0x1E1271BD0](v4);

  return v6;
}

void sub_1DA8D7170()
{
  sub_1DA93FAF4();
  if (v0 <= 0x3F)
  {
    sub_1DA8D720C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA8D720C()
{
  if (!qword_1ECBD6948)
  {
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBD6948);
    }
  }
}

uint64_t sub_1DA8D7284()
{
  result = type metadata accessor for CloudAction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DA8D7310()
{
  sub_1DA8D73C4();
  if (v0 <= 0x3F)
  {
    sub_1DA7AF3EC(319, &qword_1EE110B88, off_1E85D5D78);
    if (v1 <= 0x3F)
    {
      sub_1DA8D7474();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AlertCoordinationMessage(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1DA8D73C4()
{
  if (!qword_1ECBD6950)
  {
    sub_1DA7AF3EC(255, &unk_1EE110B90, off_1E85D5D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD5900, &qword_1DA95C200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6958, &qword_1DA960370);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECBD6950);
    }
  }
}

void sub_1DA8D7474()
{
  if (!qword_1ECBD6960)
  {
    sub_1DA7AF3EC(255, &qword_1EE114D80, off_1E85D5C60);
    v0 = sub_1DA940C24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBD6960);
    }
  }
}

unint64_t sub_1DA8D74F0()
{
  result = qword_1ECBD6968;
  if (!qword_1ECBD6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6968);
  }

  return result;
}

unint64_t sub_1DA8D7548()
{
  result = qword_1ECBD6970;
  if (!qword_1ECBD6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6970);
  }

  return result;
}

unint64_t sub_1DA8D75A0()
{
  result = qword_1EE114568;
  if (!qword_1EE114568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114568);
  }

  return result;
}

unint64_t sub_1DA8D75F8()
{
  result = qword_1EE114570;
  if (!qword_1EE114570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114570);
  }

  return result;
}

unint64_t sub_1DA8D7650()
{
  result = qword_1ECBD6978;
  if (!qword_1ECBD6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6978);
  }

  return result;
}

unint64_t sub_1DA8D76A8()
{
  result = qword_1ECBD6980;
  if (!qword_1ECBD6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6980);
  }

  return result;
}

uint64_t sub_1DA8D76FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696669746F6ELL && a2 == 0xEE0044496E6F6974;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472656C41646964 && a2 == 0xE800000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1DA8D7864()
{
  result = qword_1EE113C88;
  if (!qword_1EE113C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113C88);
  }

  return result;
}

unint64_t sub_1DA8D78B8()
{
  result = qword_1ECBD6990;
  if (!qword_1ECBD6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6990);
  }

  return result;
}

uint64_t sub_1DA8D790C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DA8D7974()
{
  result = qword_1ECBD69A0;
  if (!qword_1ECBD69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69A0);
  }

  return result;
}

unint64_t sub_1DA8D79C8()
{
  result = qword_1EE113C98[0];
  if (!qword_1EE113C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE113C98);
  }

  return result;
}

unint64_t sub_1DA8D7A50()
{
  result = qword_1ECBD69B8;
  if (!qword_1ECBD69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69B8);
  }

  return result;
}

unint64_t sub_1DA8D7AA8()
{
  result = qword_1ECBD69C0;
  if (!qword_1ECBD69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69C0);
  }

  return result;
}

unint64_t sub_1DA8D7B00()
{
  result = qword_1ECBD69C8;
  if (!qword_1ECBD69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69C8);
  }

  return result;
}

unint64_t sub_1DA8D7B58()
{
  result = qword_1EE113C78;
  if (!qword_1EE113C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113C78);
  }

  return result;
}

unint64_t sub_1DA8D7BB0()
{
  result = qword_1EE113C80;
  if (!qword_1EE113C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113C80);
  }

  return result;
}

uint64_t sub_1DA8D7C04()
{
  v0 = sub_1DA9414F4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DA8D7C50()
{
  result = qword_1EE113C90;
  if (!qword_1EE113C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113C90);
  }

  return result;
}

unint64_t sub_1DA8D7CA4(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t static SpotlightReader.readAllExistingSummaries()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA8D7D60;

  return sub_1DA8D7E78();
}

uint64_t sub_1DA8D7D60(uint64_t a1)
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

uint64_t sub_1DA8D7E94()
{
  if (UNCCatchMe() && (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0() & 1) != 0)
  {
    v0[2] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v1 = swift_allocObject();
    v0[3] = v1;
    *(v1 + 16) = xmmword_1DA960970;
    if (qword_1EE115568 != -1)
    {
      swift_once();
    }

    v2 = unk_1EE11B030;
    *(v1 + 32) = qword_1EE11B028;
    *(v1 + 40) = v2;
    v3 = qword_1EE115580;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = unk_1EE11B060;
    *(v1 + 48) = qword_1EE11B058;
    *(v1 + 56) = v4;
    v5 = qword_1EE115578;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = unk_1EE11B050;
    *(v1 + 64) = qword_1EE11B048;
    *(v1 + 72) = v6;
    v7 = qword_1EE115570;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = unk_1EE11B040;
    *(v1 + 80) = qword_1EE11B038;
    *(v1 + 88) = v8;
    v9 = qword_1EE115558;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = unk_1EE11B010;
    *(v1 + 96) = qword_1EE11B008;
    *(v1 + 104) = v10;
    v11 = qword_1EE112AA8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = unk_1EE11AED0;
    *(v1 + 112) = qword_1EE11AEC8;
    *(v1 + 120) = v12;

    v13 = swift_task_alloc();
    v0[4] = v13;
    *v13 = v0;
    v13[1] = sub_1DA8D818C;

    return sub_1DA835894(1, v1);
  }

  else
  {
    sub_1DA8D87E8();
    swift_allocError();
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1DA8D818C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v8 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v6 = sub_1DA8D8794;
  }

  else
  {
    v6 = sub_1DA8D82C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DA8D82C0()
{
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_41;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = *(v0 + 40); v2; i = *(v0 + 40))
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v46 = v1 & 0xFFFFFFFFFFFFFF8;
    v44 = MEMORY[0x1E69E7CC0];
    v45 = i + 32;
    v1 = &selRef_imageDataForContentURL_;
    v6 = &selRef_imageDataForContentURL_;
    v47 = v5;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x1E1272460](v4, *(v0 + 40));
      }

      else
      {
        if (v4 >= *(v46 + 16))
        {
          goto LABEL_40;
        }

        v7 = *(v45 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v10 = [v7 *(v1 + 3792)];
      v11 = [v10 v6[53]];

      if (!v11)
      {
        goto LABEL_5;
      }

      v12 = [v8 *(v1 + 3792)];
      v13 = [v12 providerDataTypeIdentifiers];

      if (v13)
      {
        v50 = v8;
        v51 = v11;
        v14 = sub_1DA940BE4();

        v15 = 0;
        v1 = *(v14 + 16);
        v16 = v14 + 40;
        v17 = MEMORY[0x1E69E7CC0];
LABEL_14:
        v18 = v16;
        v19 = (v16 + 16 * v15);
        while (v1 != v15)
        {
          if (v15 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_39;
          }

          v0 = (v19 + 2);
          ++v15;
          v21 = *(v19 - 1);
          v20 = *v19;

          v22 = sub_1DA93FE94();
          v24 = v23;

          v19 = v0;
          if (v24)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1DA7B6928(0, *(v17 + 2) + 1, 1, v17);
            }

            v0 = *(v17 + 2);
            v25 = *(v17 + 3);
            if (v0 >= v25 >> 1)
            {
              v17 = sub_1DA7B6928((v25 > 1), v0 + 1, 1, v17);
            }

            *(v17 + 2) = v0 + 1;
            v26 = &v17[16 * v0];
            *(v26 + 4) = v22;
            *(v26 + 5) = v24;
            v16 = v18;
            goto LABEL_14;
          }
        }

        if (*(v17 + 2))
        {
          v27 = [v50 uniqueIdentifier];
          if (!v27)
          {
            sub_1DA940A14();
            v27 = sub_1DA940A04();
          }

          v28 = [v50 attributeSet];
          v29 = [v28 threadIdentifier];

          if (v29)
          {
            sub_1DA940A14();
            v31 = v30;
          }

          else
          {
            v31 = 0;
          }

          v32 = [v50 attributeSet];
          v33 = [v32 summarizationContentTopLine];

          v34 = v33;
          v35 = sub_1DA940BD4();

          if (v31)
          {
            v36 = sub_1DA940A04();
          }

          else
          {
            v36 = 0;
          }

          v37 = [objc_allocWithZone(UNCSummary) initWithBundleIdentifier:v51 requestIdentifiers:v35 spotlightIdentifier:v27 groupSummary:1 content:v34 threadIdentifier:v36];

          v38 = v37;
          v0 = v49;
          MEMORY[0x1E1271CA0]();
          if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((v49[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1DA940C04();
          }

          sub_1DA940C14();

          v44 = v49[2];
        }

        else
        {

          v0 = v49;
        }

        v5 = v47;
        v2 = v48;
        v1 = 0x1E85D9000;
        v6 = &selRef_imageDataForContentURL_;
        if (v4 == v48)
        {
LABEL_37:
          v40 = *(v0 + 40);
          v41 = v44;
          goto LABEL_43;
        }
      }

      else
      {

LABEL_5:
        if (v4 == v2)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v2 = sub_1DA941264();
  }

  v41 = MEMORY[0x1E69E7CC0];
LABEL_43:

  v42 = *(v0 + 8);

  return v42(v41);
}

unint64_t sub_1DA8D87E8()
{
  result = qword_1EE1133D8;
  if (!qword_1EE1133D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1133D8);
  }

  return result;
}

unint64_t sub_1DA8D8850()
{
  result = qword_1ECBD69D0;
  if (!qword_1ECBD69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69D0);
  }

  return result;
}

uint64_t sub_1DA8D88C8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1DA8D8974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA8D8998, 0, 0);
}

uint64_t sub_1DA8D8998()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 168);
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v25 = *(v0 + 160);

    MEMORY[0x1E1271BD0](58, 0xE100000000000000);
    MEMORY[0x1E1271BD0](v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1DA960970;
    if (qword_1EE115568 != -1)
    {
      swift_once();
    }

    v5 = unk_1EE11B030;
    *(v4 + 32) = qword_1EE11B028;
    *(v4 + 40) = v5;
    v6 = qword_1EE115558;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = unk_1EE11B010;
    *(v4 + 48) = qword_1EE11B008;
    *(v4 + 56) = v7;
    v8 = qword_1EE115570;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = unk_1EE11B040;
    *(v4 + 64) = qword_1EE11B038;
    *(v4 + 72) = v9;
    v10 = qword_1EE115580;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = unk_1EE11B060;
    *(v4 + 80) = qword_1EE11B058;
    *(v4 + 88) = v11;
    v12 = qword_1EE115578;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = unk_1EE11B050;
    *(v4 + 96) = qword_1EE11B048;
    *(v4 + 104) = v13;
    v14 = qword_1EE115548;

    if (v14 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = unk_1EE11B000;
    *(v4 + 112) = qword_1EE11AFF8;
    *(v4 + 120) = v17;
    *(v0 + 80) = 0;
    *(v0 + 88) = v25;
    *(v0 + 96) = v1;
    *(v0 + 104) = 0;
    *(v0 + 112) = v16;
    *(v0 + 120) = v1;
    *(v0 + 128) = v4;
    *(v0 + 136) = MEMORY[0x1E69E7CC0];
    v18 = *(v0 + 80);
    v19 = *(v0 + 96);
    v20 = *(v0 + 128);
    *(v0 + 48) = *(v0 + 112);
    *(v0 + 64) = v20;
    *(v0 + 16) = v18;
    *(v0 + 32) = v19;

    v21 = swift_task_alloc();
    *(v0 + 176) = v21;
    *v21 = v0;
    v21[1] = sub_1DA8D8D08;

    return sub_1DA835BD8(v0 + 16);
  }

  else
  {
    sub_1DA8D9780();
    swift_allocError();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0;
    *(v23 + 40) = 4;
    swift_willThrow();
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1DA8D8D08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_1DA8DB008;
  }

  else
  {
    sub_1DA88395C(v3 + 80);
    v5 = sub_1DA8D8E24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1DA8D8E24()
{
  v1 = v0[23];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v16 = v0[23];
    }

    v2 = sub_1DA941264();
    if (v2 != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 != 1)
    {
LABEL_3:
      if (v2)
      {
        v9 = v0[23];
        v11 = v0[20];
        v10 = v0[21];
        v13 = v0[18];
        v12 = v0[19];

        sub_1DA8D9780();
        swift_allocError();
        *v14 = v13;
        *(v14 + 8) = v12;
        *(v14 + 16) = v11;
        *(v14 + 24) = v10;
        *(v14 + 32) = v2;
        *(v14 + 40) = 3;
        swift_willThrow();
      }

      else
      {
        v3 = v0[23];
        v5 = v0[20];
        v4 = v0[21];
        v7 = v0[18];
        v6 = v0[19];

        sub_1DA8D9780();
        swift_allocError();
        *v8 = v7;
        *(v8 + 8) = v6;
        *(v8 + 16) = v5;
        *(v8 + 24) = v4;
        *(v8 + 32) = 0;
        *(v8 + 40) = 2;
        swift_willThrow();
      }

      v15 = v0[1];

      v15();
      return;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1E1272460](0, v0[23]);
    v19 = v0[23];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v0[23] + 32);
  }

  v18 = v0[1];

  v18(v17);
}

uint64_t sub_1DA8D9020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v11 = swift_task_alloc();
  v6[20] = v11;
  *v11 = v6;
  v11[1] = sub_1DA8D90D8;

  return sub_1DA8D8974(a1, a2, a3, a4);
}

uint64_t sub_1DA8D90D8(uint64_t a1)
{
  v3 = *(*v2 + 160);
  v4 = *v2;
  *(v4 + 168) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA8D920C, 0, 0);
  }
}

uint64_t sub_1DA8D920C()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 168);
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    [v1 setIsUpdate_];
    v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v5 = sub_1DA940A04();

    v6 = [v4 initWithString_];

    v7 = [v1 attributeSet];
    [v7 setSummarizationContentTopLine_];

    v8 = [v1 attributeSet];
    [v8 setSummarizationStatus_];

    v9 = *MEMORY[0x1E696A388];
    v10 = objc_allocWithZone(MEMORY[0x1E6964E78]);
    v11 = v9;
    v12 = sub_1DA940A04();
    v13 = sub_1DA940A04();
    v14 = [v10 initWithName:v12 protectionClass:v11 bundleIdentifier:v13];
    *(v0 + 176) = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DA9593A0;
    *(v15 + 32) = v1;
    sub_1DA7B9060();
    v16 = v1;
    v17 = sub_1DA940BD4();
    *(v0 + 184) = v17;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1DA8D9580;
    v18 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD69E0, &qword_1DA960AD0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DA8D88C8;
    *(v0 + 104) = &block_descriptor_20;
    *(v0 + 112) = v18;
    [v14 indexSearchableItems:v17 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    sub_1DA8D9780();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0;
    *(v19 + 40) = 4;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1DA8D9580()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1DA8D9700;
  }

  else
  {
    v3 = sub_1DA8D9690;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA8D9690()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DA8D9700()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  swift_willThrow();

  v4 = *(v0 + 192);
  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_1DA8D9780()
{
  result = qword_1ECBD69D8;
  if (!qword_1ECBD69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69D8);
  }

  return result;
}

uint64_t sub_1DA8D97D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA8D97F8, 0, 0);
}

uint64_t sub_1DA8D97F8()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DA960970;
    if (qword_1EE115568 != -1)
    {
      swift_once();
    }

    v4 = unk_1EE11B030;
    *(v3 + 32) = qword_1EE11B028;
    *(v3 + 40) = v4;
    v5 = qword_1EE115558;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = unk_1EE11B010;
    *(v3 + 48) = qword_1EE11B008;
    *(v3 + 56) = v6;
    v7 = qword_1EE115570;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = unk_1EE11B040;
    *(v3 + 64) = qword_1EE11B038;
    *(v3 + 72) = v8;
    v9 = qword_1EE115580;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = unk_1EE11B060;
    *(v3 + 80) = qword_1EE11B058;
    *(v3 + 88) = v10;
    v11 = qword_1EE115578;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = unk_1EE11B050;
    *(v3 + 96) = qword_1EE11B048;
    *(v3 + 104) = v12;
    v13 = qword_1EE115548;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 160);
    v15 = *(v0 + 168);
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);
    v18 = unk_1EE11B000;
    *(v3 + 112) = qword_1EE11AFF8;
    *(v3 + 120) = v18;
    *(v0 + 80) = 1;
    *(v0 + 88) = v16;
    *(v0 + 96) = v2;
    *(v0 + 104) = 0;
    *(v0 + 112) = v14;
    *(v0 + 120) = v1;
    *(v0 + 128) = v3;
    *(v0 + 136) = MEMORY[0x1E69E7CC0];
    v19 = *(v0 + 80);
    v20 = *(v0 + 96);
    v21 = *(v0 + 128);
    *(v0 + 48) = *(v0 + 112);
    *(v0 + 64) = v21;
    *(v0 + 16) = v19;
    *(v0 + 32) = v20;

    v22 = swift_task_alloc();
    *(v0 + 176) = v22;
    *v22 = v0;
    v22[1] = sub_1DA8D9B48;

    return sub_1DA835BD8(v0 + 16);
  }

  else
  {
    sub_1DA8D9780();
    swift_allocError();
    *v24 = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0;
    *(v24 + 40) = 4;
    swift_willThrow();
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1DA8D9B48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_1DA8D9E5C;
  }

  else
  {
    sub_1DA88395C(v3 + 80);
    v5 = sub_1DA8D9C64;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1DA8D9C64()
{
  v1 = v0[23];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v16 = v0[23];
    }

    v2 = sub_1DA941264();
    if (v2 != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 != 1)
    {
LABEL_3:
      if (v2)
      {
        v9 = v0[23];
        v11 = v0[20];
        v10 = v0[21];
        v13 = v0[18];
        v12 = v0[19];

        sub_1DA8D9780();
        swift_allocError();
        *v14 = v13;
        *(v14 + 8) = v12;
        *(v14 + 16) = v11;
        *(v14 + 24) = v10;
        *(v14 + 32) = v2;
        *(v14 + 40) = 1;
        swift_willThrow();
      }

      else
      {
        v3 = v0[23];
        v5 = v0[20];
        v4 = v0[21];
        v7 = v0[18];
        v6 = v0[19];

        sub_1DA8D9780();
        swift_allocError();
        *v8 = v7;
        *(v8 + 8) = v6;
        *(v8 + 16) = v5;
        *(v8 + 24) = v4;
        *(v8 + 32) = 0;
        *(v8 + 40) = 0;
        swift_willThrow();
      }

      v15 = v0[1];

      v15();
      return;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1E1272460](0, v0[23]);
    v19 = v0[23];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v0[23] + 32);
  }

  v18 = v0[1];

  v18(v17);
}

uint64_t sub_1DA8D9E5C()
{
  sub_1DA88395C(v0 + 80);
  v1 = *(v0 + 192);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DA8D9EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v9 = sub_1DA93FAF4();
  v4[22] = v9;
  v10 = *(v9 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();
  v12 = swift_task_alloc();
  v4[25] = v12;
  *v12 = v4;
  v12[1] = sub_1DA8D9FD8;

  return sub_1DA8D97D4(a1, a2, a3, a4);
}

uint64_t sub_1DA8D9FD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v5 = *v2;
  *(*v2 + 208) = a1;

  if (v1)
  {
    v6 = *(v3 + 192);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA8DA128, 0, 0);
  }
}

uint64_t sub_1DA8DA128()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000020, 0x80000001DA955600);
  MEMORY[0x1E1271BD0](v7, v6);
  MEMORY[0x1E1271BD0](0xD000000000000016, 0x80000001DA955630);
  MEMORY[0x1E1271BD0](v5, v4);
  MEMORY[0x1E1271BD0](544497952, 0xE400000000000000);
  sub_1DA93FAC4();
  sub_1DA831984();
  v8 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v8);

  (*(v2 + 8))(v1, v3);
  MEMORY[0x1E1271BD0](46, 0xE100000000000000);
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;

  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v9 = *(v0 + 208);
    [v9 setIsUpdate_];
    v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v11 = sub_1DA940A04();

    v12 = [v10 initWithString_];

    v13 = [v9 attributeSet];
    [v13 setSummarizationContentTopLine_];

    v14 = [v9 attributeSet];
    [v14 setSummarizationStatus_];

    v15 = *MEMORY[0x1E696A388];
    v16 = objc_allocWithZone(MEMORY[0x1E6964E78]);
    v17 = v15;
    v18 = sub_1DA940A04();
    v19 = sub_1DA940A04();
    v20 = [v16 initWithName:v18 protectionClass:v17 bundleIdentifier:v19];
    *(v0 + 232) = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DA9593A0;
    *(v21 + 32) = v9;
    sub_1DA7B9060();
    v22 = v9;
    v23 = sub_1DA940BD4();
    *(v0 + 240) = v23;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1DA8DA5B0;
    v24 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD69E0, &qword_1DA960AD0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DA8D88C8;
    *(v0 + 104) = &block_descriptor_9_1;
    *(v0 + 112) = v24;
    [v20 indexSearchableItems:v23 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    sub_1DA8D9780();
    swift_allocError();
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0;
    *(v25 + 40) = 4;
    swift_willThrow();

    v26 = *(v0 + 192);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1DA8DA5B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  if (v3)
  {
    v4 = *(v1 + 224);

    v5 = sub_1DA8DA758;
  }

  else
  {
    v5 = sub_1DA8DA6C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA8DA6C8()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[24];

  v6 = v0[1];
  v7 = v0[27];
  v8 = v0[28];

  return v6(v7, v8);
}

uint64_t sub_1DA8DA758()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_willThrow();

  v5 = *(v0 + 248);
  v6 = *(v0 + 192);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DA8DA7F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 184) = a1;
  v10 = swift_task_alloc();
  *(v5 + 144) = v10;
  *v10 = v5;
  v10[1] = sub_1DA8DA8A8;

  return sub_1DA8D8974(a2, a3, a4, a5);
}

uint64_t sub_1DA8DA8A8(uint64_t a1)
{
  v3 = *(*v2 + 144);
  v4 = *v2;
  *(v4 + 152) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA8DA9DC, 0, 0);
  }
}

uint64_t sub_1DA8DA9DC()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 184);
    [v1 setIsUpdate_];
    v3 = [v1 attributeSet];
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v3 setIsUrgent_];

    v5 = *MEMORY[0x1E696A388];
    v6 = objc_allocWithZone(MEMORY[0x1E6964E78]);
    v7 = v5;
    v8 = sub_1DA940A04();
    v9 = sub_1DA940A04();
    v10 = [v6 initWithName:v8 protectionClass:v7 bundleIdentifier:v9];
    *(v0 + 160) = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DA9593A0;
    *(v11 + 32) = v1;
    sub_1DA7B9060();
    v12 = v1;
    v13 = sub_1DA940BD4();
    *(v0 + 168) = v13;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1DA8DACFC;
    v14 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD69E0, &qword_1DA960AD0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DA8D88C8;
    *(v0 + 104) = &block_descriptor_16_0;
    *(v0 + 112) = v14;
    [v10 indexSearchableItems:v13 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    sub_1DA8D9780();
    swift_allocError();
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0;
    *(v15 + 40) = 4;
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1DA8DACFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1DA8DAE7C;
  }

  else
  {
    v3 = sub_1DA8DAE0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA8DAE0C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DA8DAE7C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  swift_willThrow();

  v4 = *(v0 + 176);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore15SpotlightWriterC0E5Error33_F1751C88FCC2022EBA4273B7444D478ALLO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}