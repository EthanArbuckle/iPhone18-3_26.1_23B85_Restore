uint64_t sub_25E6B2F00()
{
  v0 = sub_25E6B46CC();
  sub_25E6B4628(v0, qword_27FD009F8);
  sub_25E6B3E28(v0, qword_27FD009F8);
  return sub_25E6B46BC();
}

uint64_t PhotosSearchClientWorker.doWork(context:durationThreshold:)(uint64_t a1, double a2)
{
  *(v2 + 64) = a2;
  *(v2 + 56) = a1;
  v3 = sub_25E6B475C();
  *(v2 + 72) = v3;
  v4 = *(v3 - 8);
  *(v2 + 80) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v6 = sub_25E6B476C();
  *(v2 + 104) = v6;
  v7 = *(v6 - 8);
  *(v2 + 112) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25E6B30B0, 0, 0);
}

uint64_t sub_25E6B30B0()
{
  v52 = v0;
  if (sub_25E6B470C())
  {
    if (qword_27FD009F0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 56);
    v2 = sub_25E6B46CC();
    sub_25E6B3E28(v2, qword_27FD009F8);
    v3 = v1;
    v4 = sub_25E6B46AC();
    v5 = sub_25E6B471C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 56);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v51[0] = v8;
      *v7 = 136315394;
      v9 = sub_25E6B468C();
      v11 = sub_25E6B3E60(v9, v10, v51);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = sub_25E6B469C();
      v14 = sub_25E6B3E60(v12, v13, v51);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_25E6B2000, v4, v5, "TaskId: %s, TaskName: %s: asked to stop!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8BBAD0](v8, -1, -1);
      MEMORY[0x25F8BBAD0](v7, -1, -1);
    }

    v15 = *(v0 + 120);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    sub_25E6B46FC();
    sub_25E6B4408(&qword_27FD009E0, MEMORY[0x277D85678]);
    swift_allocError();
    sub_25E6B46DC();
    swift_willThrow();

    v18 = *(v0 + 8);
LABEL_13:

    return v18(0);
  }

  *(v0 + 128) = 0;
  v19 = sub_25E6B470C();
  *(v0 + 33) = v19 & 1;
  if (v19)
  {
    if (qword_27FD009F0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 56);
    v21 = sub_25E6B46CC();
    sub_25E6B3E28(v21, qword_27FD009F8);
    v22 = v20;
    v23 = sub_25E6B46AC();
    v24 = sub_25E6B471C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 56);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51[0] = v27;
      *v26 = 136315650;
      v28 = sub_25E6B468C();
      v30 = sub_25E6B3E60(v28, v29, v51);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = sub_25E6B469C();
      v33 = sub_25E6B3E60(v31, v32, v51);

      *(v26 + 14) = v33;
      *(v26 + 22) = 2048;
      *(v26 + 24) = 0;
      _os_log_impl(&dword_25E6B2000, v23, v24, "TaskId: %s, TaskName: %s: currentDuration: %f", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8BBAD0](v27, -1, -1);
      MEMORY[0x25F8BBAD0](v26, -1, -1);
    }

    v34 = *(v0 + 120);
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);

    v18 = *(v0 + 8);
    goto LABEL_13;
  }

  v38 = *(v0 + 120);
  v40 = *(v0 + 96);
  v39 = *(v0 + 104);
  v42 = *(v0 + 80);
  v41 = *(v0 + 88);
  v43 = *(v0 + 72);
  sub_25E6B47AC();
  *(v0 + 40) = xmmword_25E6B49D0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v44 = sub_25E6B4408(&qword_27FD009D0, MEMORY[0x277D85928]);
  sub_25E6B478C();
  sub_25E6B4408(&qword_27FD009D8, MEMORY[0x277D858F8]);
  sub_25E6B477C();
  v45 = *(v42 + 8);
  *(v0 + 136) = v45;
  *(v0 + 144) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45(v41, v43);
  v46 = *(MEMORY[0x277D85A58] + 4);
  v47 = swift_task_alloc();
  *(v0 + 152) = v47;
  *v47 = v0;
  v47[1] = sub_25E6B3638;
  v48 = *(v0 + 120);
  v50 = *(v0 + 96);
  v49 = *(v0 + 104);

  return MEMORY[0x2822008C8](v50, v0 + 16, v49, v44);
}

uint64_t sub_25E6B3638()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  v4 = *(v2 + 144);
  if (v0)
  {
    (*(v2 + 136))(*(v2 + 96), *(v2 + 72));
    v5 = sub_25E6B3B54;
  }

  else
  {
    v7 = *(v2 + 112);
    v6 = *(v2 + 120);
    v8 = *(v2 + 104);
    (*(v2 + 136))(*(v2 + 96), *(v2 + 72));
    (*(v7 + 8))(v6, v8);
    v5 = sub_25E6B3790;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25E6B3790()
{
  v37 = v0;
  v1 = *(v0 + 128) + 0.25;
  if (v1 >= *(v0 + 64))
  {
    v3 = *(v0 + 33) ^ 1;
    goto LABEL_5;
  }

  *(v0 + 128) = v1;
  v2 = sub_25E6B470C();
  *(v0 + 33) = v2 & 1;
  if (v2)
  {
    v3 = 0;
LABEL_5:
    if (qword_27FD009F0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 56);
    v5 = sub_25E6B46CC();
    sub_25E6B3E28(v5, qword_27FD009F8);
    v6 = v4;
    v7 = sub_25E6B46AC();
    v8 = sub_25E6B471C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 56);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136315650;
      v12 = sub_25E6B468C();
      v14 = sub_25E6B3E60(v12, v13, &v36);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = sub_25E6B469C();
      v17 = sub_25E6B3E60(v15, v16, &v36);

      *(v10 + 14) = v17;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v1;
      _os_log_impl(&dword_25E6B2000, v7, v8, "TaskId: %s, TaskName: %s: currentDuration: %f", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8BBAD0](v11, -1, -1);
      MEMORY[0x25F8BBAD0](v10, -1, -1);
    }

    v18 = *(v0 + 120);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);

    v21 = *(v0 + 8);

    return v21(v3 & 1);
  }

  v23 = *(v0 + 120);
  v25 = *(v0 + 96);
  v24 = *(v0 + 104);
  v27 = *(v0 + 80);
  v26 = *(v0 + 88);
  v28 = *(v0 + 72);
  sub_25E6B47AC();
  *(v0 + 40) = xmmword_25E6B49D0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v29 = sub_25E6B4408(&qword_27FD009D0, MEMORY[0x277D85928]);
  sub_25E6B478C();
  sub_25E6B4408(&qword_27FD009D8, MEMORY[0x277D858F8]);
  sub_25E6B477C();
  v30 = *(v27 + 8);
  *(v0 + 136) = v30;
  *(v0 + 144) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v26, v28);
  v31 = *(MEMORY[0x277D85A58] + 4);
  v32 = swift_task_alloc();
  *(v0 + 152) = v32;
  *v32 = v0;
  v32[1] = sub_25E6B3638;
  v33 = *(v0 + 120);
  v35 = *(v0 + 96);
  v34 = *(v0 + 104);

  return MEMORY[0x2822008C8](v35, v0 + 16, v34, v29);
}

uint64_t sub_25E6B3B54()
{
  v27 = v0;
  (*(v0[14] + 8))(v0[15], v0[13]);
  if (qword_27FD009F0 != -1)
  {
    swift_once();
  }

  v1 = sub_25E6B46CC();
  sub_25E6B3E28(v1, qword_27FD009F8);
  v2 = sub_25E6B46AC();
  v3 = sub_25E6B472C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25E6B2000, v2, v3, "Task interruped while sleeping.", v6, 2u);
    MEMORY[0x25F8BBAD0](v6, -1, -1);
  }

  MEMORY[0x25F8BBA50](v5);

  v7 = v0[16];
  if (qword_27FD009F0 != -1)
  {
    swift_once();
  }

  v8 = v0[7];
  sub_25E6B3E28(v1, qword_27FD009F8);
  v9 = v8;
  v10 = sub_25E6B46AC();
  v11 = sub_25E6B471C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315650;
    v15 = sub_25E6B468C();
    v17 = sub_25E6B3E60(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_25E6B469C();
    v20 = sub_25E6B3E60(v18, v19, &v26);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v7;
    _os_log_impl(&dword_25E6B2000, v10, v11, "TaskId: %s, TaskName: %s: currentDuration: %f", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8BBAD0](v14, -1, -1);
    MEMORY[0x25F8BBAD0](v13, -1, -1);
  }

  v21 = v0[15];
  v22 = v0[11];
  v23 = v0[12];

  v24 = v0[1];

  return v24(0);
}

uint64_t sub_25E6B3E28(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25E6B3E60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E6B3F2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_25E6B4580(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_25E6B4534(v11);
  return v7;
}

unint64_t sub_25E6B3F2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25E6B4038(a5, a6);
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
    result = sub_25E6B474C();
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

uint64_t sub_25E6B4038(uint64_t a1, unint64_t a2)
{
  v4 = sub_25E6B4084(a1, a2);
  sub_25E6B41B4(&unk_28705D1F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25E6B4084(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25E6B42A0(v5, 0);
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

  result = sub_25E6B474C();
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
        v10 = sub_25E6B46EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25E6B42A0(v10, 0);
        result = sub_25E6B473C();
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

uint64_t sub_25E6B41B4(uint64_t result)
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

  result = sub_25E6B4314(result, v12, 1, v3);
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

void *sub_25E6B42A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_25E6B45DC(&qword_27FD009E8, &unk_25E6B4A40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25E6B4314(char *result, int64_t a2, char a3, char *a4)
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
    sub_25E6B45DC(&qword_27FD009E8, &unk_25E6B4A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_25E6B4408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PhotosSearchClientWorker(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PhotosSearchClientWorker(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_25E6B4534(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25E6B4580(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25E6B45DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_25E6B4628(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}