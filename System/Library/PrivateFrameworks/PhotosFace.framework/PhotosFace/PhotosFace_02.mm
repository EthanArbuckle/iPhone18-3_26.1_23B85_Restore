uint64_t DailyDatabase.delete(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD96A60);
}

uint64_t sub_22FD96A60()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD96ADC);
}

uint64_t sub_22FD96ADC()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FD98C6C);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD96B8C(uint64_t *a1, uint64_t a2)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FE49F60;
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v6 + v5, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8._object = 0x800000022FE45CE0;
  v8._countAndFlagsBits = 0xD000000000000030;
  DatabaseConnection.delete(sql:bindings:)(v8, v6);
  swift_setDeallocating();
  sub_22FD98EAC(v6 + v5, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t DailyDatabase.relate(photos:to:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FD96D38);
}

uint64_t sub_22FD96D38()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD96DBC);
}

uint64_t sub_22FD96DBC()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_22FD914F4(0, sub_22FD98C88);
  v0[8] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD96E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = *a1;
  v7[2] = a3;
  v7[3] = a4;
  v4 = sub_22FDD4678(sub_22FD93DE4, v7, a2);
  v5._object = 0x800000022FE45C60;
  v5._countAndFlagsBits = 0xD000000000000078;
  DatabaseConnection.insert(sql:bindings:)(v5, v4);
}

uint64_t sub_22FD96EF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v6 = *(type metadata accessor for DatabaseBinding() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22FE4A1C0;
  v10 = (v9 + v8);
  *v10 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v10 + v7) = 24;
  swift_storeEnumTagMultiPayload();
  *(v10 + 2 * v7) = a2;
  swift_storeEnumTagMultiPayload();
  *(v10 + 3 * v7) = 200000;
  swift_storeEnumTagMultiPayload();
  *(v10 + 4 * v7) = 24;
  swift_storeEnumTagMultiPayload();
  *(v10 + 5 * v7) = a3;
  swift_storeEnumTagMultiPayload();
  v11 = sub_22FE428C4();
  (*(*(v11 - 8) + 16))(v10 + 6 * v7, a4, v11);
  swift_storeEnumTagMultiPayload();
  v12._object = 0x800000022FE45B70;
  v12._countAndFlagsBits = 0xD0000000000000E7;
  DatabaseConnection.delete(sql:bindings:)(v12, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t DailyDatabase.unrelatePhotos(for:before:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD97150);
}

uint64_t sub_22FD97150(uint64_t (*a1)())
{
  v2 = v1[3];
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = v1[2];
    v1[5] = *(v1[4] + 16);
    v5 = swift_task_alloc();
    v1[6] = v5;
    v5[2] = 0;
    v5[3] = v3;
    v5[4] = v4;
    a1 = sub_22FD971EC;
  }

  return MEMORY[0x2822009F8](a1);
}

uint64_t sub_22FD971EC()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_22FD914F4(0, sub_22FD98CA8);
  v0[7] = 0;

  return MEMORY[0x2822009F8](sub_22FD908B4);
}

uint64_t DailyDatabase.clearPhotos(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22FE428C4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD9735C);
}

uint64_t sub_22FD9735C()
{
  v26 = v0;
  v1 = _s10PhotosFace13TimeUtilitiesO12currentEpochSivgZ_0();
  v0[7] = v1;
  if (qword_28148B120 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = sub_22FE42D34();
  __swift_project_value_buffer(v6, qword_28148B128);
  (*(v2 + 16))(v3, v5, v4);
  v7 = sub_22FE42D14();
  v8 = sub_22FE436C4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = v1;
    v25 = swift_slowAlloc();
    v14 = v25;
    *v13 = 136315650;
    *(v13 + 4) = sub_22FD98218(0xD000000000000011, 0x800000022FE45B30, &v25);
    *(v13 + 12) = 2080;
    sub_22FD98D90(&qword_27DAE41D0, 255, MEMORY[0x277CC95F0]);
    v15 = sub_22FE43C24();
    v17 = v16;
    (*(v10 + 8))(v11, v12);
    v18 = sub_22FD98218(v15, v17, &v25);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2048;
    *(v13 + 24) = 1;
    _os_log_impl(&dword_22FD6D000, v7, v8, "%s: unrelating photos for %s older than %ld days", v13, 0x20u);
    swift_arrayDestroy();
    v19 = v14;
    v1 = v24;
    MEMORY[0x23190C380](v19, -1, -1);
    MEMORY[0x23190C380](v13, -1, -1);
  }

  else
  {

    v20 = (*(v10 + 8))(v11, v12);
  }

  if (__OFSUB__(v1, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(v1 - 1, 1))
  {
LABEL_12:
    __break(1u);
    return MEMORY[0x2822009F8](v20);
  }

  v21 = v0[2];
  v0[8] = *(v0[3] + 16);
  v22 = swift_task_alloc();
  v0[9] = v22;
  v22[2] = 0;
  v22[3] = v1 - 2;
  v22[4] = v21;
  v20 = sub_22FD97630;

  return MEMORY[0x2822009F8](v20);
}

uint64_t sub_22FD97630()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_22FD914F4(0, sub_22FD98F3C);
  v0[10] = 0;

  return MEMORY[0x2822009F8](sub_22FD976E0);
}

uint64_t sub_22FD976E0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v1;
  v4[4] = v3;

  return MEMORY[0x2822009F8](sub_22FD97764);
}

uint64_t sub_22FD97764()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  sub_22FD914F4(0, sub_22FD98F3C);
  v0[12] = v2;

  if (v2)
  {
    v4 = sub_22FD978DC;
  }

  else
  {
    v4 = sub_22FD97878;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_22FD97814()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FD97878()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FD978DC()
{
  v1 = v0[12];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t DailyDatabase.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DailyDatabase.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22FD97998(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD979BC);
}

uint64_t sub_22FD979BC()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD97A38);
}

uint64_t sub_22FD97A38()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(1, sub_22FD98F24);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD97AE8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD97B0C);
}

uint64_t sub_22FD97B0C()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD97B88);
}

uint64_t sub_22FD97B88()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FD98F0C);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD97C38(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD73F54;

  return DailyDatabase.clearPhotos(for:)(a1);
}

uint64_t sub_22FD97CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22FD97CF8);
}

uint64_t sub_22FD97CF8()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD97D7C);
}

uint64_t sub_22FD97D7C()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_22FD914F4(0, sub_22FD98F54);
  v0[8] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD97E2C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22FD97E54);
}

uint64_t sub_22FD97E54(uint64_t (*a1)())
{
  v2 = v1[3];
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = v1[2];
    v1[5] = *(v1[4] + 16);
    v5 = swift_task_alloc();
    v1[6] = v5;
    v5[2] = 0;
    v5[3] = v3;
    v5[4] = v4;
    a1 = sub_22FD97EF0;
  }

  return MEMORY[0x2822009F8](a1);
}

uint64_t sub_22FD97EF0()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_22FD914F4(0, sub_22FD98F3C);
  v0[7] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD97FA0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD93F54;

  return DailyDatabase.queryList()();
}

uint64_t sub_22FD98030(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD93F54;

  return DailyDatabase.query(id:day:)(a1, a2);
}

uint64_t sub_22FD980D8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD93F54;

  return DailyDatabase.queryByDay(id:)(a1);
}

uint64_t sub_22FD98170(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD913F4;

  return DailyDatabase.queryPhotosForDays(from:to:)(a1, a2);
}

uint64_t sub_22FD98218(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22FD982E4(v11, 0, 0, 1, a1, a2);
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
    sub_22FD98E50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22FD982E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22FD983F0(a5, a6);
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
    result = sub_22FE43994();
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

uint64_t sub_22FD983F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FD9843C(a1, a2);
  sub_22FD9856C(&unk_2844CE6D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22FD9843C(uint64_t a1, unint64_t a2)
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

  v6 = sub_22FD98658(v5, 0);
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

  result = sub_22FE43994();
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
        v10 = sub_22FE43124();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22FD98658(v10, 0);
        result = sub_22FE438D4();
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

uint64_t sub_22FD9856C(uint64_t result)
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

  result = sub_22FD986CC(result, v12, 1, v3);
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

void *sub_22FD98658(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41E8, &qword_22FE4A2D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22FD986CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41E8, &qword_22FE4A2D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_22FD987C0(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2 = *(*(v47 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v47);
  v4 = MEMORY[0x28223BE20](v3);
  v49 = &v41 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v48 = &v41 - v7;
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - v10;
  v11 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v43 = *(v8 + 80);
  v13 = *(v8 + 72);
  v45 = (v43 + 32) & ~v43;
  v14 = a1 + v45;
  v42 = xmmword_22FE49F60;
  v46 = v9;
  v44 = v13;
  while (1)
  {
    v16 = v50;
    sub_22FD764B4(v14, v50, &qword_27DAE4068, &qword_22FE49FD8);
    v17 = v48;
    sub_22FD764B4(v16, v48, &qword_27DAE4068, &qword_22FE49FD8);
    v18 = *(v47 + 48);
    v19 = *(v17 + v18);
    v20 = v17;
    v21 = v49;
    sub_22FD98C04(v20, v49, type metadata accessor for StoredPhoto);
    *(v21 + v18) = v19;
    sub_22FD93E6C(v21, &qword_27DAE4068, &qword_22FE49FD8);
    v23 = sub_22FD74718(v19);
    v24 = v11[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v11[3] < v26)
    {
      sub_22FDDD204(v26, 1);
      v11 = v51;
      v28 = sub_22FD74718(v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {
      v30 = v11[7];
      sub_22FD93E04(v50, v46, &qword_27DAE4068, &qword_22FE49FD8);
      v31 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_22FD9195C(0, v31[2] + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_22FD9195C(v33 > 1, v34 + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v31[2] = v34 + 1;
      v15 = v44;
      sub_22FD93E04(v46, v31 + v45 + v34 * v44, &qword_27DAE4068, &qword_22FE49FD8);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A8, &qword_22FE4A1A8);
      v35 = v45;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      sub_22FD93E04(v50, v36 + v35, &qword_27DAE4068, &qword_22FE49FD8);
      v11[(v23 >> 6) + 8] |= 1 << v23;
      *(v11[6] + 8 * v23) = v19;
      *(v11[7] + 8 * v23) = v36;
      v37 = v11[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v11[2] = v39;
      v15 = v44;
    }

    v14 += v15;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FD98B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD98C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD98CC8(uint64_t a1, uint64_t a2)
{
  result = sub_22FD98D90(&qword_27DAE41D8, a2, type metadata accessor for DailyDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FD98D90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22FD98E50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22FD98EAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t GalleryDatabase.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t GalleryDatabase.insert(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD98FD4);
}

uint64_t sub_22FD98FD4()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD99050);
}

uint64_t sub_22FD99050()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(1, sub_22FD993B8);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD99100(uint64_t *a1, uint64_t a2)
{
  v19 = *a1;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FE49F60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v4 = *(type metadata accessor for DatabaseBinding() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FE49FB0;
  v8 = v7 + v6;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for ShuffleID();
  *(v8 + v5) = *(a2 + v10[6]);
  swift_storeEnumTagMultiPayload();
  *(v8 + 2 * v5) = *(a2 + v10[7]);
  swift_storeEnumTagMultiPayload();
  *(v8 + 3 * v5) = *(a2 + v10[8]);
  swift_storeEnumTagMultiPayload();
  *(inited + 32) = v7;
  v11._countAndFlagsBits = 0xD00000000000008ALL;
  v11._object = 0x800000022FE46870;
  DatabaseConnection.insert(sql:bindings:)(v11, inited);
  swift_setDeallocating();
  result = sub_22FD93E6C(inited + 32, &qword_27DAE4190, &qword_22FE4A190);
  if (!v13)
  {
    v20 = v19;
    v14 = *(a2 + v10[5]);
    MEMORY[0x28223BE20](result);
    v18[2] = a2;
    v16 = sub_22FDD47D8(sub_22FD9E2A4, v18, v15);
    v17._object = 0x800000022FE46900;
    v17._countAndFlagsBits = 0xD000000000000075;
    DatabaseConnection.insert(sql:bindings:)(v17, v16);
  }

  return result;
}

uint64_t sub_22FD993D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v7 = *(type metadata accessor for DatabaseBinding() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22FE49F70;
  v11 = (v10 + v9);
  *v11 = v6;
  *(v11 + 1) = v5;
  swift_storeEnumTagMultiPayload();
  v12 = sub_22FE428C4();
  (*(*(v12 - 8) + 16))(&v11[v8], a2, v12);
  swift_storeEnumTagMultiPayload();
  *a3 = v10;
}

uint64_t sub_22FD9956C()
{
  v18 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v11 = 0;
      goto LABEL_9;
    }
  }

  v17 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v17 = v3;
    v9._countAndFlagsBits = 0x6B6361626C6C6F72;
    v9._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v9);
    if (v10)
    {

LABEL_10:
      v12 = *(v0 + 8);

      return v12();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v17 = v3;
  sub_22FD99724(&v17, &v16);
  v17 = v3;
  v7._countAndFlagsBits = 0x74696D6D6F63;
  v7._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v7);
  if (v8)
  {
    v6 = v8;

    goto LABEL_5;
  }

  v14 = v16;
  v15 = *(v0 + 8);

  return v15(v14);
}

void sub_22FD99724(sqlite3_stmt **a1@<X0>, sqlite3_stmt **a2@<X8>)
{
  v98 = a2;
  v106 = sub_22FE428C4();
  v99 = *(v106 - 8);
  v3 = v99[8];
  MEMORY[0x28223BE20](v106);
  v105 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4200, &qword_22FE4A3E8);
  v5 = *(*(v97 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v97);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v79 - v9;
  v11 = type metadata accessor for ShuffleID();
  v100 = *(v11 - 8);
  v12 = *(v100 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v79 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v79 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v79 - v25;
  v108 = *a1;
  v27 = v104;
  v28 = sub_22FDB08B0();
  if (!v27)
  {
    v29 = v28;
    v84 = v21;
    v101 = v18;
    v102 = v11;
    v85 = v10;
    v103 = v8;
    sub_22FDB31B8(MEMORY[0x277D84F90], v28);
    sub_22FDB33A0(v29);
    v30 = MEMORY[0x277D84F90];
    for (i = v100; ; sub_22FD9E1E8(v24, v30 + ((*(i + 80) + 32) & ~*(i + 80)) + *(i + 72) * v34, type metadata accessor for ShuffleID))
    {
      v32 = sqlite3_step(v29);
      if (v32 != 100)
      {
        break;
      }

      v108 = v29;
      sub_22FD9A048(&v108, v26);
      sub_22FD9E120(v26, v24, type metadata accessor for ShuffleID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22FD91A3C(0, v30[2] + 1, 1, v30);
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_22FD91A3C(v33 > 1, v34 + 1, 1, v30);
      }

      sub_22FD9E188(v26, type metadata accessor for ShuffleID);
      v30[2] = v34 + 1;
    }

    v35 = v32;
    if (v32 == 101)
    {
      sub_22FDB35E0(v29);
      v36 = sub_22FD9DD00(v30);
      v79 = 0;

      v37 = *(v36 + 16);
      if (v37)
      {
        v108 = MEMORY[0x277D84F90];
        sub_22FD9246C(0, v37, 0);
        v38 = -1 << *(v36 + 32);
        v95 = v36 + 64;
        v96 = v108;
        v39 = sub_22FE43834();
        v40 = 0;
        v104 = *(v36 + 36);
        v41 = v99;
        v94 = v99 + 4;
        v80 = v36 + 72;
        v42 = v85;
        v83 = v36;
        v82 = v37;
        v81 = v99 + 2;
        while ((v39 & 0x8000000000000000) == 0 && v39 < 1 << *(v36 + 32))
        {
          if ((*(v95 + 8 * (v39 >> 6)) & (1 << v39)) == 0)
          {
            goto LABEL_40;
          }

          if (v104 != *(v36 + 36))
          {
            goto LABEL_41;
          }

          v90 = 1 << v39;
          v91 = v39 >> 6;
          v87 = v40;
          v46 = *(v36 + 48) + v41[9] * v39;
          v47 = v106;
          v92 = v41[2];
          v92(v42, v46, v106);
          v48 = *(*(v36 + 56) + 8 * v39);
          v49 = v41[4];
          v50 = v47;
          v51 = v103;
          v93 = v49;
          v49(v103, v42, v50);
          *(v51 + *(v97 + 48)) = v48;
          v52 = *(v48 + 16);
          if (!v52)
          {
            goto LABEL_42;
          }

          v88 = v39;
          v86 = v39 & 0x3F;
          v54 = v100;
          v53 = v101;
          v89 = (*(v100 + 80) + 32) & ~*(v100 + 80);
          v55 = v48 + v89;
          sub_22FD9E120(v48 + v89, v101, type metadata accessor for ShuffleID);
          v92(v105, v53, v50);
          v107 = MEMORY[0x277D84F90];
          v56 = v102[5];

          v57 = *(v54 + 72);
          do
          {
            sub_22FD9E120(v55, v15, type metadata accessor for ShuffleID);
            v58 = *&v15[v56];

            sub_22FD9E188(v15, type metadata accessor for ShuffleID);
            sub_22FDAD798(v58);
            v55 += v57;
            --v52;
          }

          while (v52);
          v59 = sub_22FDC2070(v107);

          v60 = v102;
          v61 = v101[v102[6]];
          v62 = v101[v102[7]];
          v63 = v101[v102[8]];
          sub_22FD9E188(v101, type metadata accessor for ShuffleID);
          v64 = v84;
          v93(v84, v105, v106);
          *(v64 + v60[5]) = v59;
          *(v64 + v60[6]) = v61;
          *(v64 + v60[7]) = v62;
          *(v64 + v60[8]) = v63;
          sub_22FD93E6C(v103, &qword_27DAE4200, &qword_22FE4A3E8);
          v65 = v96;
          v108 = v96;
          v67 = *(v96 + 2);
          v66 = *(v96 + 3);
          if (v67 >= v66 >> 1)
          {
            sub_22FD9246C(v66 > 1, v67 + 1, 1);
            v65 = v108;
          }

          *(v65 + 2) = v67 + 1;
          v96 = v65;
          sub_22FD9E1E8(v64, v65 + v89 + v67 * v57, type metadata accessor for ShuffleID);
          v36 = v83;
          v44 = 1 << *(v83 + 32);
          v41 = v99;
          if (v88 >= v44)
          {
            goto LABEL_43;
          }

          v68 = *(v95 + 8 * v91);
          if ((v68 & v90) == 0)
          {
            goto LABEL_44;
          }

          if (v104 != *(v83 + 36))
          {
            goto LABEL_45;
          }

          v69 = v68 & (-2 << v86);
          if (v69)
          {
            v43 = v88;
            sub_22FD72BF8(v88, v104, 0);
            v44 = __clz(__rbit64(v69)) | v43 & 0x7FFFFFFFFFFFFFC0;
            v45 = v98;
            v42 = v85;
          }

          else
          {
            v70 = v91 << 6;
            v71 = v91 + 1;
            v72 = (v80 + 8 * v91);
            v45 = v98;
            v42 = v85;
            while (v71 < (v44 + 63) >> 6)
            {
              v74 = *v72++;
              v73 = v74;
              v70 += 64;
              ++v71;
              if (v74)
              {
                sub_22FD72BF8(v88, v104, 0);
                v44 = __clz(__rbit64(v73)) + v70;
                goto LABEL_14;
              }
            }

            sub_22FD72BF8(v88, v104, 0);
          }

LABEL_14:
          v40 = v87 + 1;
          v39 = v44;
          if (v87 + 1 == v82)
          {

            *v45 = v96;
            return;
          }
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
      }

      else
      {

        *v98 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      if (sqlite3_errstr(v35))
      {
        v75 = sub_22FE43104();
        v77 = v76;
      }

      else
      {
        v77 = 0xE300000000000000;
        v75 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v78 = v35 | 0xA000000000000000;
      v78[1] = v75;
      v78[2] = v77;
      swift_willThrow();
      sub_22FDB35E0(v29);
    }
  }
}

int *sub_22FD9A048@<X0>(sqlite3_stmt **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v22[9] = *a1;
  result = DatabaseRow.readUUID(column:)(0);
  if (!v2)
  {
    v22[1] = 0;
    if (sqlite3_column_type(v10, 1) == 5 || !sqlite3_column_text(v10, 1))
    {
      v17 = MEMORY[0x277D84FA0];
    }

    else
    {
      v12 = sub_22FE43114();
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40E0, &qword_22FE4A100);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22FE49F60;
      *(inited + 32) = v12;
      v16 = inited + 32;
      *(inited + 40) = v14;
      v17 = sub_22FDA5654(inited);
      swift_setDeallocating();
      sub_22FD9E250(v16);
    }

    if (sqlite3_column_type(v10, 2) == 5)
    {

      sub_22FD9172C();
      swift_allocError();
      *v18 = 2;
    }

    else
    {
      v19 = sqlite3_column_int(v10, 2);
      if (sqlite3_column_type(v10, 3) == 5)
      {

        sub_22FD9172C();
        swift_allocError();
        *v18 = 3;
      }

      else
      {
        v20 = sqlite3_column_int(v10, 3);
        if (sqlite3_column_type(v10, 4) != 5)
        {
          v21 = sqlite3_column_int(v10, 4) == 1;
          (*(v6 + 32))(a2, v9, v5);
          result = type metadata accessor for ShuffleID();
          *(a2 + result[5]) = v17;
          *(a2 + result[6]) = v19 == 1;
          *(a2 + result[7]) = v20 == 1;
          *(a2 + result[8]) = v21;
          return result;
        }

        sub_22FD9172C();
        swift_allocError();
        *v18 = 4;
      }
    }

    *(v18 + 4) = 0;
    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t GalleryDatabase.queryByDay(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(type metadata accessor for StoredPhoto(0) - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = type metadata accessor for DatabaseBinding();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD9A550);
}

uint64_t sub_22FD9A550()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[2];
  v0[18] = *(v0[3] + 16);
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000313, 0x800000022FE45E90);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject() + v8;
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9, v6, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v5 + 56);
  v11(v9, 0, 1, v4);
  *(v9 + v7) = 17;
  swift_storeEnumTagMultiPayload();
  v11(v9 + v7, 0, 1, v4);
  sub_22FD764B4(v9, v2, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v2, v1, &qword_27DAE4070, &qword_22FE4A740);
  v28 = *(v5 + 48);
  v12 = v28(v1, 1, v4);
  v13 = v0[16];
  if (v12 == 1)
  {
    sub_22FD93E6C(v13, &qword_27DAE4070, &qword_22FE4A740);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_22FD9E1E8(v13, v0[13], type metadata accessor for DatabaseBinding);
    v14 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_22FD919C8(v15 > 1, v16 + 1, 1, v14);
    }

    v17 = v0[13];
    v14[2] = v16 + 1;
    sub_22FD9E1E8(v17, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for DatabaseBinding);
  }

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[11];
  sub_22FD764B4(v9 + v7, v18, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v18, v19, &qword_27DAE4070, &qword_22FE4A740);
  v21 = v28(v19, 1, v20);
  v22 = v0[16];
  if (v21 == 1)
  {
    sub_22FD93E6C(v22, &qword_27DAE4070, &qword_22FE4A740);
  }

  else
  {
    sub_22FD9E1E8(v22, v0[13], type metadata accessor for DatabaseBinding);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v24 = v14[2];
    v23 = v14[3];
    if (v24 >= v23 >> 1)
    {
      v14 = sub_22FD919C8(v23 > 1, v24 + 1, 1, v14);
    }

    v25 = v0[13];
    v14[2] = v24 + 1;
    sub_22FD9E1E8(v25, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for DatabaseBinding);
  }

  v0[21] = v14;
  v26 = v0[14];
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD9A9E8);
}

uint64_t sub_22FD9A9E8()
{
  *(v0 + 176) = sub_22FDA5C54(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 144));
  *(v0 + 184) = 0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_22FD9AA88);
}

uint64_t sub_22FD9AA88()
{
  v1 = v0[23];
  v43 = v0[5];
  v50 = v0[4];
  v51 = v0[9];
  v2 = sub_22FD9D774(v0[22]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4080, &qword_22FE4BEC0);
  v3 = sub_22FE43AE4();
  result = v2;
  v5 = 0;
  v6 = *(v2 + 64);
  v40 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v44 = v3;
  v45 = v3 + 8;
  v41 = v10;
  v42 = v2;
  if ((v8 & v6) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = *(result + 48);
      v16 = *(v15 + 8 * v14);
      v17 = *(*(result + 56) + 8 * v14);
      v18 = *(v17 + 16);
      if (v18)
      {
        v46 = *(v15 + 8 * v14);
        v47 = v14;
        v48 = v9;
        v49 = v5;
        v54 = MEMORY[0x277D84F90];

        sub_22FD92408(0, v18, 0);
        v19 = v54;
        v20 = v17 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v52 = *(v43 + 72);
        do
        {
          v53 = v0[10];
          v21 = v0[7];
          v22 = v0[8];
          v23 = v0[6];
          sub_22FD764B4(v20, v22, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD764B4(v22, v21, &qword_27DAE4068, &qword_22FE49FD8);
          v24 = *(v50 + 48);
          v25 = *(v21 + v24);
          sub_22FD9E1E8(v21, v23, type metadata accessor for StoredPhoto);
          *(v23 + v24) = v25;
          sub_22FD9E120(v23, v53, type metadata accessor for StoredPhoto);
          sub_22FD93E6C(v23, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD93E6C(v22, &qword_27DAE4068, &qword_22FE49FD8);
          v27 = *(v54 + 16);
          v26 = *(v54 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_22FD92408(v26 > 1, v27 + 1, 1);
          }

          v28 = v0[10];
          *(v54 + 16) = v27 + 1;
          sub_22FD9E1E8(v28, v54 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v27, type metadata accessor for StoredPhoto);
          v20 += v52;
          --v18;
        }

        while (v18);

        v3 = v44;
        v10 = v41;
        result = v42;
        v9 = v48;
        v5 = v49;
        v16 = v46;
        v14 = v47;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

      *(v45 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v3[6] + 8 * v14) = v16;
      *(v3[7] + 8 * v14) = v19;
      v29 = v3[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v3[2] = v31;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = *(v40 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v33 = v0[16];
    v32 = v0[17];
    v34 = v0[13];
    v35 = v0[10];
    v37 = v0[7];
    v36 = v0[8];
    v38 = v0[6];

    v39 = v0[1];

    return v39(v3);
  }

  return result;
}

uint64_t GalleryDatabase.query(id:day:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DatabaseBinding();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD9AF90);
}

uint64_t sub_22FD9AF90()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  v0[12] = *(v0[4] + 16);
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000328, 0x800000022FE461B0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[13] = 0;
  v0[14] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject() + v7;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, v5, v9);
  swift_storeEnumTagMultiPayload();
  v10 = *(v3 + 56);
  v10(v8, 0, 1, v2);
  *(v8 + v6) = v4;
  swift_storeEnumTagMultiPayload();
  v10(v8 + v6, 0, 1, v2);
  *(v8 + 2 * v6) = 17;
  swift_storeEnumTagMultiPayload();
  v10(v8 + 2 * v6, 0, 1, v2);
  v25 = v3;
  v11 = (v3 + 48);
  v12 = MEMORY[0x277D84F90];
  v13 = 3;
  v14 = v8;
  do
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[5];
    sub_22FD764B4(v14, v15, &qword_27DAE4070, &qword_22FE4A740);
    sub_22FD93E04(v15, v16, &qword_27DAE4070, &qword_22FE4A740);
    v18 = (*v11)(v16, 1, v17);
    v19 = v0[10];
    if (v18 == 1)
    {
      sub_22FD93E6C(v19, &qword_27DAE4070, &qword_22FE4A740);
    }

    else
    {
      sub_22FD9E1E8(v19, v0[7], type metadata accessor for DatabaseBinding);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22FD919C8(0, v12[2] + 1, 1, v12);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = sub_22FD919C8(v20 > 1, v21 + 1, 1, v12);
      }

      v22 = v0[7];
      v12[2] = v21 + 1;
      sub_22FD9E1E8(v22, v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for DatabaseBinding);
    }

    v0[16] = v12;
    v14 += v6;
    --v13;
  }

  while (v13);
  v23 = v0[8];
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD8ED48);
}

uint64_t GalleryDatabase.queryPhotosForDays(from:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD9B368);
}

uint64_t sub_22FD9B38C()
{
  v20 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v13 = 0;
      goto LABEL_9;
    }
  }

  v19 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v19 = v3;
    v11._countAndFlagsBits = 0x6B6361626C6C6F72;
    v11._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v11);
    if (v12)
    {

LABEL_10:
      v14 = v0[1];

      return v14();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = v0[2];
  v8 = v0[3];
  v19 = v3;
  sub_22FD9B548(&v19, v7, v8, &v18);
  v19 = v3;
  v9._countAndFlagsBits = 0x74696D6D6F63;
  v9._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v9);
  if (v10)
  {
    v6 = v10;

    goto LABEL_5;
  }

  v16 = v18;
  v17 = v0[1];

  return v17(v16);
}

void sub_22FD9B548(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v117 = a3;
  v116 = a2;
  v108 = a4;
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v109 = v5;
  v110 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v111 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = v105 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A0, &qword_22FE4A1A0);
  v112 = *(v119 - 8);
  v11 = *(v112 + 64);
  v12 = MEMORY[0x28223BE20](v119);
  v114 = (v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v113 = v105 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v105 - v16;
  v115 = *a1;
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000115, 0x800000022FE466D0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v18 = *(type metadata accessor for DatabaseBinding() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22FE49F90;
  v22 = (v21 + v20);
  *v22 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v22 + v19) = 24;
  swift_storeEnumTagMultiPayload();
  *(v22 + 2 * v19) = v116;
  swift_storeEnumTagMultiPayload();
  *(v22 + 3 * v19) = v117;
  swift_storeEnumTagMultiPayload();
  *(v22 + 4 * v19) = 17;
  swift_storeEnumTagMultiPayload();
  v120 = v115;
  v23 = v118;
  v24 = sub_22FDB08B0();
  if (v23)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return;
  }

  v25 = v24;

  sub_22FDB31B8(v21, v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22FDB33A0(v25);
  v26 = MEMORY[0x277D84F90];
  v27 = v114;
  while (1)
  {
    v28 = sqlite3_step(v25);
    v29 = v119;
    if (v28 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v25, 0) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v102 = 0;
LABEL_50:
      *(v102 + 4) = 0;
      swift_willThrow();
      goto LABEL_52;
    }

    *v17 = sqlite3_column_int(v25, 0);
    if (sqlite3_column_type(v25, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v102 = 1;
      goto LABEL_50;
    }

    v30 = v26;
    v31 = sqlite3_column_blob(v25, 1);
    if (!v31)
    {
      sub_22FD9172C();
      swift_allocError();
      *v103 = 1;
      *(v103 + 4) = 0;
      swift_willThrow();
LABEL_52:

LABEL_53:
      sub_22FDB35E0(v25);
      return;
    }

    v32 = v31;
    v33 = *(v29 + 48);
    v34 = sqlite3_column_bytes(v25, 1);
    v35 = sub_22FDB285C(v32, v34);
    LOBYTE(v120) = 2;
    UUID.init(serialized:version:)(v35, v36);
    if (sqlite3_column_type(v25, 2) == 5 || (v37 = sqlite3_column_blob(v25, 2)) == 0)
    {
      sub_22FD9172C();
      swift_allocError();
      *v96 = 2;
      *(v96 + 4) = 0;
      swift_willThrow();
      (*(v110 + 8))(&v17[v33], v109);
      goto LABEL_52;
    }

    v38 = v37;
    v39 = *(v119 + 64);
    v40 = sqlite3_column_bytes(v25, 2);
    v41 = sub_22FDB285C(v38, v40);
    LOBYTE(v120) = 2;
    UUID.init(serialized:version:)(v41, v42);
    sub_22FD764B4(v17, v113, &qword_27DAE41A0, &qword_22FE4A1A0);
    v43 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_22FD919F0(0, v30[2] + 1, 1, v30);
    }

    v27 = v114;
    v45 = v43[2];
    v44 = v43[3];
    v46 = v43;
    if (v45 >= v44 >> 1)
    {
      v46 = sub_22FD919F0(v44 > 1, v45 + 1, 1, v43);
    }

    sub_22FD93E6C(v17, &qword_27DAE41A0, &qword_22FE4A1A0);
    *(v46 + 16) = v45 + 1;
    v26 = v46;
    sub_22FD93E04(v113, v46 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v45, &qword_27DAE41A0, &qword_22FE4A1A0);
  }

  if (v28 != 101)
  {
    v97 = v28;

    v98 = v97;
    if (sqlite3_errstr(v97))
    {
      v99 = sub_22FE43104();
      v101 = v100;
    }

    else
    {
      v101 = 0xE300000000000000;
      v99 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v104 = v98 | 0xA000000000000000;
    v104[1] = v99;
    v104[2] = v101;
    swift_willThrow();
    goto LABEL_53;
  }

  sub_22FDB35E0(v25);
  v47 = sub_22FD75328(MEMORY[0x277D84F90]);
  v115 = v26[2];
  v116 = v26;
  if (!v115)
  {
    v49 = 0;
    v51 = 0;
    v95 = v108;
LABEL_55:

    sub_22FD6EBD8(v49);
    sub_22FD6EBD8(v51);
    *v95 = v47;
    return;
  }

  v48 = v26;
  v49 = 0;
  v50 = v29;
  v51 = 0;
  v52 = 0;
  v113 = *(v50 + 48);
  v107 = v48 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
  v53 = *(v50 + 64);
  v54 = v109;
  v119 = v110 + 32;
  v105[0] = v110 + 16;
  v105[1] = v110 + 8;
  v106 = v53;
  while (v52 < v116[2])
  {
    v55 = *(v112 + 72);
    v117 = v52;
    sub_22FD764B4(v107 + v55 * v52, v27, &qword_27DAE41A0, &qword_22FE4A1A0);
    v56 = v27;
    v57 = *v27;
    v58 = *v119;
    (*v119)(v122, v56 + v113, v54);
    v118 = v58;
    v58(v111, v56 + v106, v54);
    sub_22FD6EBD8(v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v47;
    v61 = sub_22FD74718(v57);
    v62 = v47[2];
    v63 = (v60 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_59;
    }

    v65 = v60;
    if (v47[3] >= v64)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v60)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_22FDDED7C();
        v47 = v120;
        if (v65)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_22FDDD908(v64, isUniquelyReferenced_nonNull_native);
      v47 = v120;
      v66 = sub_22FD74718(v57);
      if ((v65 & 1) != (v67 & 1))
      {
        goto LABEL_64;
      }

      v61 = v66;
      if (v65)
      {
        goto LABEL_28;
      }
    }

    v68 = sub_22FD75430(MEMORY[0x277D84F90]);
    v47[(v61 >> 6) + 8] |= 1 << v61;
    *(v47[6] + 8 * v61) = v57;
    *(v47[7] + 8 * v61) = v68;
    v69 = v47[2];
    v70 = __OFADD__(v69, 1);
    v71 = v69 + 1;
    if (v70)
    {
      goto LABEL_61;
    }

    v47[2] = v71;
LABEL_28:
    v72 = v47[7];
    sub_22FD6EBD8(v51);
    v73 = *(v72 + 8 * v61);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v72 + 8 * v61);
    v75 = v120;
    *(v72 + 8 * v61) = 0x8000000000000000;
    v77 = sub_22FD747EC(v122);
    v78 = v75[2];
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_60;
    }

    v81 = v76;
    if (v75[3] >= v80)
    {
      if ((v74 & 1) == 0)
      {
        sub_22FDDEAFC();
        v75 = v120;
      }
    }

    else
    {
      sub_22FDDD8F4(v80, v74);
      v75 = v120;
      v82 = sub_22FD747EC(v122);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_63;
      }

      v77 = v82;
    }

    v54 = v109;
    v84 = *(v72 + 8 * v61);
    *(v72 + 8 * v61) = v75;

    v85 = *(v72 + 8 * v61);
    v86 = v122;
    if ((v81 & 1) == 0)
    {
      v85[(v77 >> 6) + 8] |= 1 << v77;
      (*(v110 + 16))(v85[6] + *(v110 + 72) * v77, v86, v54);
      *(v85[7] + 8 * v77) = MEMORY[0x277D84F90];
      v87 = v85[2];
      v70 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v70)
      {
        goto LABEL_62;
      }

      v85[2] = v88;
    }

    v89 = v85[7];
    v90 = *(v89 + 8 * v77);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    *(v89 + 8 * v77) = v90;
    if ((v91 & 1) == 0)
    {
      v90 = sub_22FD91828(0, v90[2] + 1, 1, v90);
      *(v89 + 8 * v77) = v90;
    }

    v93 = v90[2];
    v92 = v90[3];
    if (v93 >= v92 >> 1)
    {
      v90 = sub_22FD91828(v92 > 1, v93 + 1, 1, v90);
      *(v89 + 8 * v77) = v90;
    }

    v27 = v114;
    v52 = v117 + 1;
    v90[2] = v93 + 1;
    v94 = v110;
    v118(v90 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v93, v111, v54);
    (*(v94 + 8))(v122, v54);
    v51 = sub_22FD8FDB0;
    v49 = sub_22FD8FD80;
    v95 = v108;
    if (v115 == v52)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  sub_22FE43D14();
  __break(1u);
LABEL_64:
  sub_22FE43D14();
  __break(1u);
}

uint64_t GalleryDatabase.delete(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD9C174);
}

uint64_t sub_22FD9C174()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9C1F0);
}

uint64_t sub_22FD9C1F0()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FD9DB50);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD9C2A0(uint64_t *a1, uint64_t a2)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FE49F60;
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v6 + v5, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8._object = 0x800000022FE46690;
  v8._countAndFlagsBits = 0xD000000000000034;
  DatabaseConnection.delete(sql:bindings:)(v8, v6);
  swift_setDeallocating();
  sub_22FD9E188(v6 + v5, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t sub_22FD9C46C()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  if (!*(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection))
  {
    sub_22FD9E790();
    if (!*(v1 + v2))
    {
      sub_22FD91684();
      swift_allocError();
      *v12 = 0;
      goto LABEL_10;
    }
  }

  v3._countAndFlagsBits = 0x6E69676562;
  v3._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v3);
  v5 = v4;
  if (v4 || (v6._object = 0x800000022FE464E0, v6._countAndFlagsBits = 0xD00000000000001FLL, DatabaseConnection.delete(sql:bindings:)(v6, MEMORY[0x277D84F90]), (v5 = v7) != 0))
  {
LABEL_6:
    v10._countAndFlagsBits = 0x6B6361626C6C6F72;
    v10._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v10);
    if (v11)
    {

LABEL_11:
      v13 = *(v0 + 8);
      goto LABEL_12;
    }

LABEL_10:
    swift_willThrow();
    goto LABEL_11;
  }

  v8._countAndFlagsBits = 0x74696D6D6F63;
  v8._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v8);
  if (v9)
  {
    v5 = v9;
    goto LABEL_6;
  }

  v13 = *(v0 + 8);
LABEL_12:

  return v13();
}

uint64_t GalleryDatabase.relate(photos:to:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FD9C62C);
}

uint64_t sub_22FD9C62C()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD9C6B0);
}

uint64_t sub_22FD9C6B0()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_22FD914F4(0, sub_22FD9DB6C);
  v0[8] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD9C760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = *a1;
  v7[2] = a3;
  v7[3] = a4;
  v4 = sub_22FDD4678(sub_22FD93DE4, v7, a2);
  v5._object = 0x800000022FE46610;
  v5._countAndFlagsBits = 0xD00000000000007CLL;
  DatabaseConnection.insert(sql:bindings:)(v5, v4);
}

uint64_t GalleryDatabase.unrelatePhotos(for:before:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD9C810);
}

uint64_t sub_22FD9C810()
{
  v1 = v0[3];
  v2 = v0[2];
  v0[5] = *(v0[4] + 16);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FD9C898);
}

uint64_t sub_22FD9C898()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_22FD914F4(0, sub_22FD9DB8C);
  v0[7] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD9C948(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v5 = *(type metadata accessor for DatabaseBinding() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FE49FB0;
  v9 = (v8 + v7);
  *v9 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v9 + v6) = 24;
  swift_storeEnumTagMultiPayload();
  *(v9 + 2 * v6) = a2;
  swift_storeEnumTagMultiPayload();
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9 + 3 * v6, a3, v10);
  swift_storeEnumTagMultiPayload();
  v11._object = 0x800000022FE46570;
  v11._countAndFlagsBits = 0xD000000000000096;
  DatabaseConnection.delete(sql:bindings:)(v11, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t GalleryDatabase.clearPhotos(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD9CB44);
}

uint64_t sub_22FD9CB44()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9CBC0);
}

uint64_t sub_22FD9CBC0()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FD9DBA8);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD908B4);
}

uint64_t sub_22FD9CC70(uint64_t *a1, uint64_t a2)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FE49F60;
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v6 + v5, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8._object = 0x800000022FE46530;
  v8._countAndFlagsBits = 0xD00000000000003BLL;
  DatabaseConnection.delete(sql:bindings:)(v8, v6);
  swift_setDeallocating();
  sub_22FD9E188(v6 + v5, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t GalleryDatabase.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t GalleryDatabase.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22FD9CE50(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD9CE74);
}

uint64_t sub_22FD9CE74()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9CEF0);
}

uint64_t sub_22FD9CEF0()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(1, sub_22FD9E2F4);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD9CFA0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD9CFC4);
}

uint64_t sub_22FD9CFC4()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9D040);
}

uint64_t sub_22FD9D040()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FD9E2DC);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD9D0F0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD9D114);
}

uint64_t sub_22FD9D114()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9D190);
}

uint64_t sub_22FD9D190()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FD9E2C4);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD9D240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22FD9D268);
}

uint64_t sub_22FD9D268()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD9D2EC);
}

uint64_t sub_22FD9D2EC()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_22FD914F4(0, sub_22FD9E30C);
  v0[8] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD9D39C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22FD9D3C4);
}

uint64_t sub_22FD9D3C4()
{
  v1 = v0[3];
  v2 = v0[2];
  v0[5] = *(v0[4] + 16);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FD9D44C);
}

uint64_t sub_22FD9D44C()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_22FD914F4(0, sub_22FD9E324);
  v0[7] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD9D4FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD93F54;

  return GalleryDatabase.queryList()();
}

uint64_t sub_22FD9D58C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD93F54;

  return GalleryDatabase.query(id:day:)(a1, a2);
}

uint64_t sub_22FD9D634(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD93F54;

  return GalleryDatabase.queryByDay(id:)(a1);
}

uint64_t sub_22FD9D6CC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD913F4;

  return GalleryDatabase.queryPhotosForDays(from:to:)(a1, a2);
}

uint64_t sub_22FD9D774(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2 = *(*(v47 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v47);
  v4 = MEMORY[0x28223BE20](v3);
  v49 = &v41 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v48 = &v41 - v7;
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - v10;
  v11 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v43 = *(v8 + 80);
  v13 = *(v8 + 72);
  v45 = (v43 + 32) & ~v43;
  v14 = a1 + v45;
  v42 = xmmword_22FE49F60;
  v46 = v9;
  v44 = v13;
  while (1)
  {
    v16 = v50;
    sub_22FD764B4(v14, v50, &qword_27DAE4068, &qword_22FE49FD8);
    v17 = v48;
    sub_22FD764B4(v16, v48, &qword_27DAE4068, &qword_22FE49FD8);
    v18 = *(v47 + 48);
    v19 = *(v17 + v18);
    v20 = v17;
    v21 = v49;
    sub_22FD9E1E8(v20, v49, type metadata accessor for StoredPhoto);
    *(v21 + v18) = v19;
    sub_22FD93E6C(v21, &qword_27DAE4068, &qword_22FE49FD8);
    v23 = sub_22FD74718(v19);
    v24 = v11[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v11[3] < v26)
    {
      sub_22FDDD204(v26, 1);
      v11 = v51;
      v28 = sub_22FD74718(v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {
      v30 = v11[7];
      sub_22FD93E04(v50, v46, &qword_27DAE4068, &qword_22FE49FD8);
      v31 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_22FD9195C(0, v31[2] + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_22FD9195C(v33 > 1, v34 + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v31[2] = v34 + 1;
      v15 = v44;
      sub_22FD93E04(v46, v31 + v45 + v34 * v44, &qword_27DAE4068, &qword_22FE49FD8);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A8, &qword_22FE4A1A8);
      v35 = v45;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      sub_22FD93E04(v50, v36 + v35, &qword_27DAE4068, &qword_22FE49FD8);
      v11[(v23 >> 6) + 8] |= 1 << v23;
      *(v11[6] + 8 * v23) = v19;
      *(v11[7] + 8 * v23) = v36;
      v37 = v11[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v11[2] = v39;
      v15 = v44;
    }

    v14 += v15;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FD9DBC4(uint64_t a1, uint64_t a2)
{
  result = sub_22FD9DC8C(&qword_27DAE41F0, a2, type metadata accessor for GalleryDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FD9DC8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FD9DD00(uint64_t a1)
{
  v2 = sub_22FE428C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShuffleID();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v41 - v13;
  v14 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v15 = *(a1 + 16);
  if (!v15)
  {
    return v14;
  }

  v45 = *(v12 + 80);
  v16 = v3;
  v17 = *(v12 + 72);
  v18 = a1 + ((v45 + 32) & ~v45);
  v50 = (v45 + 32) & ~v45;
  v51 = (v16 + 16);
  v43 = (v16 + 8);
  v44 = v16 + 32;
  v42 = xmmword_22FE49F60;
  v46 = v11;
  v47 = v16;
  v48 = v2;
  v49 = v17;
  while (1)
  {
    v21 = v52;
    sub_22FD9E120(v18, v52, type metadata accessor for ShuffleID);
    (*v51)(v6, v21, v2);
    v23 = sub_22FD747EC(v6);
    v24 = v14[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v14[3] < v26)
    {
      sub_22FDDD91C(v26, 1);
      v14 = v53;
      v28 = sub_22FD747EC(v6);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {
      (*v43)(v6, v2);
      v30 = v14[7];
      sub_22FD9E1E8(v52, v11, type metadata accessor for ShuffleID);
      v31 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_22FD91A3C(0, v31[2] + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_22FD91A3C(v33 > 1, v34 + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v31[2] = v34 + 1;
      v2 = v48;
      v19 = v49;
      v20 = v31 + v50 + v34 * v49;
      v11 = v46;
      sub_22FD9E1E8(v46, v20, type metadata accessor for ShuffleID);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40F0, &qword_22FE4A110);
      v35 = v50;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      sub_22FD9E1E8(v52, v36 + v35, type metadata accessor for ShuffleID);
      v14[(v23 >> 6) + 8] |= 1 << v23;
      (*(v47 + 32))(v14[6] + *(v47 + 72) * v23, v6, v2);
      *(v14[7] + 8 * v23) = v36;
      v37 = v14[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v14[2] = v39;
      v19 = v49;
    }

    v18 += v19;
    if (!--v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FD9E120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD9E188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FD9E1E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD9E350(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD9E374);
}

uint64_t sub_22FD9E398()
{
  v1 = v0[4];
  v2 = v0[2];

  sub_22FD9EEBC(1, v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t PhotosFaceIDDatabase.insert(storedPhotos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FD9E450);
}

uint64_t sub_22FD9E450()
{
  v1 = v0[5];
  v0[6] = (*(*(v0[4] + 8) + 24))(v0[3]);

  return MEMORY[0x2822009F8](sub_22FD9E4D4);
}

uint64_t sub_22FD9E4D4()
{
  v1 = v0[6];
  v2 = v0[2];

  sub_22FD9EEBC(1, v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FD9E570(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD9E594);
}

uint64_t sub_22FD9E5CC()
{
  v1 = *v0;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](v1);
  return sub_22FE43E04();
}

uint64_t sub_22FD9E640()
{
  v1 = *v0;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](v1);
  return sub_22FE43E04();
}

uint64_t PhotosFaceDatabase.__allocating_init(location:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection) = 0;
  sub_22FD9F36C(a1, v5 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location);
  return v5;
}

uint64_t PhotosFaceDatabase.init(location:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection) = 0;
  sub_22FD9F36C(a1, v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location);
  return v1;
}

void sub_22FD9E790()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DatabaseConnection.Location();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection))
  {
    sub_22FD91684();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    return;
  }

  v47 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v48 = v5;
  if (qword_28148B0A0 != -1)
  {
    swift_once();
  }

  v14 = sub_22FE42D34();
  v15 = __swift_project_value_buffer(v14, qword_28148B0A8);

  v16 = sub_22FE42D14();
  v17 = sub_22FE436C4();

  v49 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v45 = v1;
    v46 = v15;
    v18 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v18 = 136315138;
    sub_22FD9F5B0(v3 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location, v12);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
    if ((*(*(v19 - 8) + 48))(v12, 1, v19) == 1)
    {
      v20 = 0xE900000000000079;
      v21 = 0x726F6D654D2D6E49;
    }

    else
    {
      v22 = v48;
      (*(v48 + 32))(v8, v12, v4);
      sub_22FD9F614();
      v23 = sub_22FE43C24();
      v20 = v24;
      (*(v22 + 8))(v8, v4);
      v21 = v23;
    }

    v25 = sub_22FD98218(v21, v20, &v50);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_22FD6D000, v16, v49, "Attempting to connect to db at %s", v18, 0xCu);
    v26 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x23190C380](v26, -1, -1);
    MEMORY[0x23190C380](v18, -1, -1);

    v2 = v45;
  }

  else
  {
  }

  static DatabaseConnection.open(location:)(v3 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location, &v50);
  v27 = v2;
  if (v2)
  {
    goto LABEL_15;
  }

  v28 = v50;
  v29 = *v3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4210, &unk_22FE4A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FE4A410;
  *(inited + 32) = 0x6574616572635F30;
  *(inited + 40) = 0xEF73656C6261745FLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x800000022FE46980;
  *(inited + 72) = 0;
  strcpy((inited + 80), "2_add_day_link");
  *(inited + 95) = -18;
  *(inited + 96) = 0;
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x800000022FE469A0;
  *(inited + 120) = 0;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x800000022FE469C0;
  *(inited + 144) = 1;
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x800000022FE469E0;
  *(inited + 168) = 0;
  *(inited + 176) = 0x61645F6464615F36;
  *(inited + 184) = 0xEB00000000796C69;
  *(inited + 192) = 0;
  *(inited + 200) = 0xD000000000000019;
  *(inited + 208) = 0x800000022FE46A00;
  *(inited + 216) = 0;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x800000022FE46A20;
  *(inited + 240) = 0;
  DatabaseConnection.migrate(bundle:migrations:)(v31, inited);
  v27 = v33;
  if (v33)
  {

    swift_setDeallocating();
    swift_arrayDestroy();
LABEL_15:
    v34 = v27;
    v35 = sub_22FE42D14();
    v36 = sub_22FE436A4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v27;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_22FD6D000, v35, v36, "Error connecting to DB: %@", v37, 0xCu);
      sub_22FD9F3D0(v38);
      MEMORY[0x23190C380](v38, -1, -1);
      MEMORY[0x23190C380](v37, -1, -1);
    }

    else
    {
    }

    return;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v50 = v28;
  sub_22FD9F438(&v50, 1);
  *(v3 + v47) = v28;
  v41 = sub_22FE42D14();
  v42 = sub_22FE436C4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = 17;
    _os_log_impl(&dword_22FD6D000, v41, v42, "DB Initialized. Photo version: %ld", v43, 0xCu);
    MEMORY[0x23190C380](v43, -1, -1);
  }
}

uint64_t sub_22FD9EEBC(char a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v7 = *(a2 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v7)
  {
    sub_22FD9E790();
    if (v3)
    {
    }

    v7 = *(a2 + v6);
    if (!v7)
    {
      sub_22FD91684();
      swift_allocError();
      *v16 = 0;
      swift_willThrow();
    }
  }

  if (a1)
  {
    v17 = v7;
    sub_22FD9F438(&v17, 0);
    if (v3)
    {
    }
  }

  v17 = v7;
  v8._countAndFlagsBits = 0x6E69676562;
  v8._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v8);
  if (!v9)
  {
    v17 = v7;
    sub_22FDAAA5C(&v17, a3);
    v17 = v7;
    v10._countAndFlagsBits = 0x74696D6D6F63;
    v10._object = 0xE600000000000000;
    DatabaseConnection.execute(sql:)(v10);
    if (!v9)
    {
      if (a1)
      {
        v17 = v7;
        sub_22FD9F438(&v17, 1);
      }
    }
  }

  v11 = v9;
  v17 = v7;
  v12._countAndFlagsBits = 0x6B6361626C6C6F72;
  v12._object = 0xE800000000000000;
  DatabaseConnection.execute(sql:)(v12);
  if (v13)
  {
  }

  if (a1)
  {
    v17 = v7;
    sub_22FD9F438(&v17, 1);
  }

  swift_willThrow();
}

void sub_22FD9F060(char a1@<W0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v10 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v11 = *(v4 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v11)
  {
    sub_22FD9E790();
    if (v5)
    {
      return;
    }

    v11 = *(v4 + v10);
    if (!v11)
    {
      sub_22FD91684();
      swift_allocError();
      *v17 = 0;
      swift_willThrow();
      return;
    }
  }

  if ((a1 & 1) == 0 || (v20 = v11, sub_22FD9F438(&v20, 0), !v5))
  {
    v20 = v11;
    v12._countAndFlagsBits = 0x6E69676562;
    v12._object = 0xE500000000000000;
    DatabaseConnection.execute(sql:)(v12);
    if (v13)
    {
      v14 = v13;
      goto LABEL_7;
    }

    v20 = v11;
    a2(&v20);
    v20 = v11;
    v18._countAndFlagsBits = 0x74696D6D6F63;
    v18._object = 0xE600000000000000;
    DatabaseConnection.execute(sql:)(v18);
    if (v19)
    {
      v14 = v19;
      (*(*(a3 - 8) + 8))(a4, a3);
LABEL_7:
      v20 = v11;
      v15._countAndFlagsBits = 0x6B6361626C6C6F72;
      v15._object = 0xE800000000000000;
      DatabaseConnection.execute(sql:)(v15);
      if (v16)
      {
      }

      else
      {
        if (a1)
        {
          v20 = v11;
          sub_22FD9F438(&v20, 1);
        }

        swift_willThrow();
      }

      return;
    }

    if (a1)
    {
      v20 = v11;
      sub_22FD9F438(&v20, 1);
    }
  }
}

uint64_t PhotosFaceDatabase.deinit()
{
  sub_22FD9F66C(v0 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PhotosFaceDatabase.__deallocating_deinit()
{
  sub_22FD9F66C(v0 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_location);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FD9F2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD73F54;

  return PhotosFaceIDDatabase.insert(storedPhotos:)(a1, a2, a3);
}

uint64_t sub_22FD9F36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConnection.Location();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FD9F3D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4208, &qword_22FE4ACE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22FD9F438(uint64_t *a1, char a2)
{
  v4 = *a1;
  sub_22FE438F4();

  if (a2)
  {
    v5 = 28271;
  }

  else
  {
    v5 = 6710895;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x23190ACF0](v5, v6);

  v7 = sub_22FDB08B0();

  if (!v2)
  {
    sub_22FDB31B8(MEMORY[0x277D84F90], v7);
    sub_22FDB33A0(v7);
    v8 = sqlite3_step(v7);
    if ((v8 & 0xFFFFFFFE) != 0x64)
    {
      v9 = v8;
      if (sqlite3_errstr(v8))
      {
        v10 = sub_22FE43104();
        v12 = v11;
      }

      else
      {
        v12 = 0xE300000000000000;
        v10 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v13 = v9 | 0xA000000000000000;
      v13[1] = v10;
      v13[2] = v12;
      swift_willThrow();
    }

    sub_22FDB35E0(v7);
  }
}

uint64_t sub_22FD9F5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConnection.Location();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FD9F614()
{
  result = qword_28148BE60;
  if (!qword_28148BE60)
  {
    sub_22FE42774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148BE60);
  }

  return result;
}

uint64_t sub_22FD9F66C(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseConnection.Location();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PhotosFaceDatabase()
{
  result = qword_28148BDA0;
  if (!qword_28148BDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FD9F71C()
{
  result = type metadata accessor for DatabaseConnection.Location();
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

uint64_t dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FDA07CC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22FDA07CC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FDA07CC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryPhotosForDays(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22FD9FD38;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22FD9FD38(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.insert(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FD8C738;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.delete(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FD8C738;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FD73F54;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22FD8C738;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.unrelatePhotos(for:before:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22FD8C738;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PhotosFaceIDDatabase.insert(storedPhotos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FD8C738;

  return v11(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for PhotosFaceIDDatabaseFix(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PhotosFaceIDDatabaseFix(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PhotosFaceDatabase.Failure(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosFaceDatabase.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FDA0778()
{
  result = qword_27DAE4218;
  if (!qword_27DAE4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4218);
  }

  return result;
}

uint64_t ShuffleDatabase.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ShuffleDatabase.insert(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDA083C);
}

uint64_t sub_22FDA083C()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA08B8);
}

uint64_t sub_22FDA08B8()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(1, sub_22FDA0C20);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FDA0968(uint64_t *a1, uint64_t a2)
{
  v19 = *a1;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FE49F60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v4 = *(type metadata accessor for DatabaseBinding() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FE49FB0;
  v8 = v7 + v6;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for ShuffleID();
  *(v8 + v5) = *(a2 + v10[6]);
  swift_storeEnumTagMultiPayload();
  *(v8 + 2 * v5) = *(a2 + v10[7]);
  swift_storeEnumTagMultiPayload();
  *(v8 + 3 * v5) = *(a2 + v10[8]);
  swift_storeEnumTagMultiPayload();
  *(inited + 32) = v7;
  v11._countAndFlagsBits = 0xD00000000000008ALL;
  v11._object = 0x800000022FE47470;
  DatabaseConnection.insert(sql:bindings:)(v11, inited);
  swift_setDeallocating();
  result = sub_22FD93E6C(inited + 32, &qword_27DAE4190, &qword_22FE4A190);
  if (!v13)
  {
    v20 = v19;
    v14 = *(a2 + v10[5]);
    MEMORY[0x28223BE20](result);
    v18[2] = a2;
    v16 = sub_22FDD47D8(sub_22FD9E2A4, v18, v15);
    v17._object = 0x800000022FE47500;
    v17._countAndFlagsBits = 0xD000000000000075;
    DatabaseConnection.insert(sql:bindings:)(v17, v16);
  }

  return result;
}

uint64_t sub_22FDA0C80()
{
  v18 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v11 = 0;
      goto LABEL_9;
    }
  }

  v17 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v17 = v3;
    v9._countAndFlagsBits = 0x6B6361626C6C6F72;
    v9._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v9);
    if (v10)
    {

LABEL_10:
      v12 = *(v0 + 8);

      return v12();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v17 = v3;
  sub_22FDA0E38(&v17, &v16);
  v17 = v3;
  v7._countAndFlagsBits = 0x74696D6D6F63;
  v7._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v7);
  if (v8)
  {
    v6 = v8;

    goto LABEL_5;
  }

  v14 = v16;
  v15 = *(v0 + 8);

  return v15(v14);
}

void sub_22FDA0E38(sqlite3_stmt **a1@<X0>, sqlite3_stmt **a2@<X8>)
{
  v98 = a2;
  v106 = sub_22FE428C4();
  v99 = *(v106 - 8);
  v3 = v99[8];
  MEMORY[0x28223BE20](v106);
  v105 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4200, &qword_22FE4A3E8);
  v5 = *(*(v97 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v97);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v79 - v9;
  v11 = type metadata accessor for ShuffleID();
  v100 = *(v11 - 8);
  v12 = *(v100 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v79 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v79 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v79 - v25;
  v108 = *a1;
  v27 = v104;
  v28 = sub_22FDB08B0();
  if (!v27)
  {
    v29 = v28;
    v84 = v21;
    v101 = v18;
    v102 = v11;
    v85 = v10;
    v103 = v8;
    sub_22FDB31B8(MEMORY[0x277D84F90], v28);
    sub_22FDB33A0(v29);
    v30 = MEMORY[0x277D84F90];
    for (i = v100; ; sub_22FD9E1E8(v24, v30 + ((*(i + 80) + 32) & ~*(i + 80)) + *(i + 72) * v34, type metadata accessor for ShuffleID))
    {
      v32 = sqlite3_step(v29);
      if (v32 != 100)
      {
        break;
      }

      v108 = v29;
      sub_22FDA175C(&v108, v26);
      sub_22FD9E120(v26, v24, type metadata accessor for ShuffleID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22FD91A3C(0, v30[2] + 1, 1, v30);
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_22FD91A3C(v33 > 1, v34 + 1, 1, v30);
      }

      sub_22FD9E188(v26, type metadata accessor for ShuffleID);
      v30[2] = v34 + 1;
    }

    v35 = v32;
    if (v32 == 101)
    {
      sub_22FDB35E0(v29);
      v36 = sub_22FDA5234(v30);
      v79 = 0;

      v37 = *(v36 + 16);
      if (v37)
      {
        v108 = MEMORY[0x277D84F90];
        sub_22FD9246C(0, v37, 0);
        v38 = -1 << *(v36 + 32);
        v95 = v36 + 64;
        v96 = v108;
        v39 = sub_22FE43834();
        v40 = 0;
        v104 = *(v36 + 36);
        v41 = v99;
        v94 = v99 + 4;
        v80 = v36 + 72;
        v42 = v85;
        v83 = v36;
        v82 = v37;
        v81 = v99 + 2;
        while ((v39 & 0x8000000000000000) == 0 && v39 < 1 << *(v36 + 32))
        {
          if ((*(v95 + 8 * (v39 >> 6)) & (1 << v39)) == 0)
          {
            goto LABEL_40;
          }

          if (v104 != *(v36 + 36))
          {
            goto LABEL_41;
          }

          v90 = 1 << v39;
          v91 = v39 >> 6;
          v87 = v40;
          v46 = *(v36 + 48) + v41[9] * v39;
          v47 = v106;
          v92 = v41[2];
          v92(v42, v46, v106);
          v48 = *(*(v36 + 56) + 8 * v39);
          v49 = v41[4];
          v50 = v47;
          v51 = v103;
          v93 = v49;
          v49(v103, v42, v50);
          *(v51 + *(v97 + 48)) = v48;
          v52 = *(v48 + 16);
          if (!v52)
          {
            goto LABEL_42;
          }

          v88 = v39;
          v86 = v39 & 0x3F;
          v54 = v100;
          v53 = v101;
          v89 = (*(v100 + 80) + 32) & ~*(v100 + 80);
          v55 = v48 + v89;
          sub_22FD9E120(v48 + v89, v101, type metadata accessor for ShuffleID);
          v92(v105, v53, v50);
          v107 = MEMORY[0x277D84F90];
          v56 = v102[5];

          v57 = *(v54 + 72);
          do
          {
            sub_22FD9E120(v55, v15, type metadata accessor for ShuffleID);
            v58 = *&v15[v56];

            sub_22FD9E188(v15, type metadata accessor for ShuffleID);
            sub_22FDAD798(v58);
            v55 += v57;
            --v52;
          }

          while (v52);
          v59 = sub_22FDC2070(v107);

          v60 = v102;
          v61 = v101[v102[6]];
          v62 = v101[v102[7]];
          v63 = v101[v102[8]];
          sub_22FD9E188(v101, type metadata accessor for ShuffleID);
          v64 = v84;
          v93(v84, v105, v106);
          *(v64 + v60[5]) = v59;
          *(v64 + v60[6]) = v61;
          *(v64 + v60[7]) = v62;
          *(v64 + v60[8]) = v63;
          sub_22FD93E6C(v103, &qword_27DAE4200, &qword_22FE4A3E8);
          v65 = v96;
          v108 = v96;
          v67 = *(v96 + 2);
          v66 = *(v96 + 3);
          if (v67 >= v66 >> 1)
          {
            sub_22FD9246C(v66 > 1, v67 + 1, 1);
            v65 = v108;
          }

          *(v65 + 2) = v67 + 1;
          v96 = v65;
          sub_22FD9E1E8(v64, v65 + v89 + v67 * v57, type metadata accessor for ShuffleID);
          v36 = v83;
          v44 = 1 << *(v83 + 32);
          v41 = v99;
          if (v88 >= v44)
          {
            goto LABEL_43;
          }

          v68 = *(v95 + 8 * v91);
          if ((v68 & v90) == 0)
          {
            goto LABEL_44;
          }

          if (v104 != *(v83 + 36))
          {
            goto LABEL_45;
          }

          v69 = v68 & (-2 << v86);
          if (v69)
          {
            v43 = v88;
            sub_22FD72BF8(v88, v104, 0);
            v44 = __clz(__rbit64(v69)) | v43 & 0x7FFFFFFFFFFFFFC0;
            v45 = v98;
            v42 = v85;
          }

          else
          {
            v70 = v91 << 6;
            v71 = v91 + 1;
            v72 = (v80 + 8 * v91);
            v45 = v98;
            v42 = v85;
            while (v71 < (v44 + 63) >> 6)
            {
              v74 = *v72++;
              v73 = v74;
              v70 += 64;
              ++v71;
              if (v74)
              {
                sub_22FD72BF8(v88, v104, 0);
                v44 = __clz(__rbit64(v73)) + v70;
                goto LABEL_14;
              }
            }

            sub_22FD72BF8(v88, v104, 0);
          }

LABEL_14:
          v40 = v87 + 1;
          v39 = v44;
          if (v87 + 1 == v82)
          {

            *v45 = v96;
            return;
          }
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
      }

      else
      {

        *v98 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      if (sqlite3_errstr(v35))
      {
        v75 = sub_22FE43104();
        v77 = v76;
      }

      else
      {
        v77 = 0xE300000000000000;
        v75 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v78 = v35 | 0xA000000000000000;
      v78[1] = v75;
      v78[2] = v77;
      swift_willThrow();
      sub_22FDB35E0(v29);
    }
  }
}

int *sub_22FDA175C@<X0>(sqlite3_stmt **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v22[9] = *a1;
  result = DatabaseRow.readUUID(column:)(0);
  if (!v2)
  {
    v22[1] = 0;
    if (sqlite3_column_type(v10, 1) == 5 || !sqlite3_column_text(v10, 1))
    {
      v17 = MEMORY[0x277D84FA0];
    }

    else
    {
      v12 = sub_22FE43114();
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40E0, &qword_22FE4A100);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22FE49F60;
      *(inited + 32) = v12;
      v16 = inited + 32;
      *(inited + 40) = v14;
      v17 = sub_22FDA5654(inited);
      swift_setDeallocating();
      sub_22FD9E250(v16);
    }

    if (sqlite3_column_type(v10, 2) == 5)
    {

      sub_22FD9172C();
      swift_allocError();
      *v18 = 2;
    }

    else
    {
      v19 = sqlite3_column_int(v10, 2);
      if (sqlite3_column_type(v10, 3) == 5)
      {

        sub_22FD9172C();
        swift_allocError();
        *v18 = 3;
      }

      else
      {
        v20 = sqlite3_column_int(v10, 3);
        if (sqlite3_column_type(v10, 4) != 5)
        {
          v21 = sqlite3_column_int(v10, 4) == 1;
          (*(v6 + 32))(a2, v9, v5);
          result = type metadata accessor for ShuffleID();
          *(a2 + result[5]) = v17;
          *(a2 + result[6]) = v19 == 1;
          *(a2 + result[7]) = v20 == 1;
          *(a2 + result[8]) = v21;
          return result;
        }

        sub_22FD9172C();
        swift_allocError();
        *v18 = 4;
      }
    }

    *(v18 + 4) = 0;
    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t ShuffleDatabase.queryByDay(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(type metadata accessor for StoredPhoto(0) - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = type metadata accessor for DatabaseBinding();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDA1C64);
}

uint64_t sub_22FDA1C64()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[2];
  v0[18] = *(v0[3] + 16);
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000313, 0x800000022FE46AB0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject() + v8;
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9, v6, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v5 + 56);
  v11(v9, 0, 1, v4);
  *(v9 + v7) = 17;
  swift_storeEnumTagMultiPayload();
  v11(v9 + v7, 0, 1, v4);
  sub_22FD764B4(v9, v2, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v2, v1, &qword_27DAE4070, &qword_22FE4A740);
  v28 = *(v5 + 48);
  v12 = v28(v1, 1, v4);
  v13 = v0[16];
  if (v12 == 1)
  {
    sub_22FD93E6C(v13, &qword_27DAE4070, &qword_22FE4A740);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_22FD9E1E8(v13, v0[13], type metadata accessor for DatabaseBinding);
    v14 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_22FD919C8(v15 > 1, v16 + 1, 1, v14);
    }

    v17 = v0[13];
    v14[2] = v16 + 1;
    sub_22FD9E1E8(v17, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for DatabaseBinding);
  }

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[11];
  sub_22FD764B4(v9 + v7, v18, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v18, v19, &qword_27DAE4070, &qword_22FE4A740);
  v21 = v28(v19, 1, v20);
  v22 = v0[16];
  if (v21 == 1)
  {
    sub_22FD93E6C(v22, &qword_27DAE4070, &qword_22FE4A740);
  }

  else
  {
    sub_22FD9E1E8(v22, v0[13], type metadata accessor for DatabaseBinding);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v24 = v14[2];
    v23 = v14[3];
    if (v24 >= v23 >> 1)
    {
      v14 = sub_22FD919C8(v23 > 1, v24 + 1, 1, v14);
    }

    v25 = v0[13];
    v14[2] = v24 + 1;
    sub_22FD9E1E8(v25, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for DatabaseBinding);
  }

  v0[21] = v14;
  v26 = v0[14];
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FDA20FC);
}

uint64_t sub_22FDA20FC()
{
  *(v0 + 176) = sub_22FDA5C54(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 144));
  *(v0 + 184) = 0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_22FDA219C);
}

uint64_t sub_22FDA219C()
{
  v1 = v0[23];
  v43 = v0[5];
  v50 = v0[4];
  v51 = v0[9];
  v2 = sub_22FDA4CA8(v0[22]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4080, &qword_22FE4BEC0);
  v3 = sub_22FE43AE4();
  result = v2;
  v5 = 0;
  v6 = *(v2 + 64);
  v40 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v44 = v3;
  v45 = v3 + 8;
  v41 = v10;
  v42 = v2;
  if ((v8 & v6) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = *(result + 48);
      v16 = *(v15 + 8 * v14);
      v17 = *(*(result + 56) + 8 * v14);
      v18 = *(v17 + 16);
      if (v18)
      {
        v46 = *(v15 + 8 * v14);
        v47 = v14;
        v48 = v9;
        v49 = v5;
        v54 = MEMORY[0x277D84F90];

        sub_22FD92408(0, v18, 0);
        v19 = v54;
        v20 = v17 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v52 = *(v43 + 72);
        do
        {
          v53 = v0[10];
          v21 = v0[7];
          v22 = v0[8];
          v23 = v0[6];
          sub_22FD764B4(v20, v22, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD764B4(v22, v21, &qword_27DAE4068, &qword_22FE49FD8);
          v24 = *(v50 + 48);
          v25 = *(v21 + v24);
          sub_22FD9E1E8(v21, v23, type metadata accessor for StoredPhoto);
          *(v23 + v24) = v25;
          sub_22FD9E120(v23, v53, type metadata accessor for StoredPhoto);
          sub_22FD93E6C(v23, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD93E6C(v22, &qword_27DAE4068, &qword_22FE49FD8);
          v27 = *(v54 + 16);
          v26 = *(v54 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_22FD92408(v26 > 1, v27 + 1, 1);
          }

          v28 = v0[10];
          *(v54 + 16) = v27 + 1;
          sub_22FD9E1E8(v28, v54 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v27, type metadata accessor for StoredPhoto);
          v20 += v52;
          --v18;
        }

        while (v18);

        v3 = v44;
        v10 = v41;
        result = v42;
        v9 = v48;
        v5 = v49;
        v16 = v46;
        v14 = v47;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

      *(v45 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v3[6] + 8 * v14) = v16;
      *(v3[7] + 8 * v14) = v19;
      v29 = v3[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v3[2] = v31;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = *(v40 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v33 = v0[16];
    v32 = v0[17];
    v34 = v0[13];
    v35 = v0[10];
    v37 = v0[7];
    v36 = v0[8];
    v38 = v0[6];

    v39 = v0[1];

    return v39(v3);
  }

  return result;
}

uint64_t ShuffleDatabase.query(id:day:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DatabaseBinding();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDA26A4);
}

uint64_t sub_22FDA26A4()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  v0[12] = *(v0[4] + 16);
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000327, 0x800000022FE46DD0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[13] = 0;
  v0[14] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject() + v7;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, v5, v9);
  swift_storeEnumTagMultiPayload();
  v10 = *(v3 + 56);
  v10(v8, 0, 1, v2);
  *(v8 + v6) = v4;
  swift_storeEnumTagMultiPayload();
  v10(v8 + v6, 0, 1, v2);
  *(v8 + 2 * v6) = 17;
  swift_storeEnumTagMultiPayload();
  v10(v8 + 2 * v6, 0, 1, v2);
  v25 = v3;
  v11 = (v3 + 48);
  v12 = MEMORY[0x277D84F90];
  v13 = 3;
  v14 = v8;
  do
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[5];
    sub_22FD764B4(v14, v15, &qword_27DAE4070, &qword_22FE4A740);
    sub_22FD93E04(v15, v16, &qword_27DAE4070, &qword_22FE4A740);
    v18 = (*v11)(v16, 1, v17);
    v19 = v0[10];
    if (v18 == 1)
    {
      sub_22FD93E6C(v19, &qword_27DAE4070, &qword_22FE4A740);
    }

    else
    {
      sub_22FD9E1E8(v19, v0[7], type metadata accessor for DatabaseBinding);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22FD919C8(0, v12[2] + 1, 1, v12);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = sub_22FD919C8(v20 > 1, v21 + 1, 1, v12);
      }

      v22 = v0[7];
      v12[2] = v21 + 1;
      sub_22FD9E1E8(v22, v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for DatabaseBinding);
    }

    v0[16] = v12;
    v14 += v6;
    --v13;
  }

  while (v13);
  v23 = v0[8];
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD8ED48);
}

uint64_t ShuffleDatabase.queryPhotosForDays(from:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FDA2A7C);
}

uint64_t sub_22FDA2AA0()
{
  v20 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v13 = 0;
      goto LABEL_9;
    }
  }

  v19 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v19 = v3;
    v11._countAndFlagsBits = 0x6B6361626C6C6F72;
    v11._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v11);
    if (v12)
    {

LABEL_10:
      v14 = v0[1];

      return v14();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = v0[2];
  v8 = v0[3];
  v19 = v3;
  sub_22FDA2C5C(&v19, v7, v8, &v18);
  v19 = v3;
  v9._countAndFlagsBits = 0x74696D6D6F63;
  v9._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v9);
  if (v10)
  {
    v6 = v10;

    goto LABEL_5;
  }

  v16 = v18;
  v17 = v0[1];

  return v17(v16);
}

void sub_22FDA2C5C(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v117 = a3;
  v116 = a2;
  v108 = a4;
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v109 = v5;
  v110 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v111 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = v105 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A0, &qword_22FE4A1A0);
  v112 = *(v119 - 8);
  v11 = *(v112 + 64);
  v12 = MEMORY[0x28223BE20](v119);
  v114 = (v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v113 = v105 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v105 - v16;
  v115 = *a1;
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000115, 0x800000022FE472D0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v18 = *(type metadata accessor for DatabaseBinding() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22FE49F90;
  v22 = (v21 + v20);
  *v22 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v22 + v19) = 24;
  swift_storeEnumTagMultiPayload();
  *(v22 + 2 * v19) = v116;
  swift_storeEnumTagMultiPayload();
  *(v22 + 3 * v19) = v117;
  swift_storeEnumTagMultiPayload();
  *(v22 + 4 * v19) = 17;
  swift_storeEnumTagMultiPayload();
  v120 = v115;
  v23 = v118;
  v24 = sub_22FDB08B0();
  if (v23)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return;
  }

  v25 = v24;

  sub_22FDB31B8(v21, v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22FDB33A0(v25);
  v26 = MEMORY[0x277D84F90];
  v27 = v114;
  while (1)
  {
    v28 = sqlite3_step(v25);
    v29 = v119;
    if (v28 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v25, 0) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v102 = 0;
LABEL_50:
      *(v102 + 4) = 0;
      swift_willThrow();
      goto LABEL_52;
    }

    *v17 = sqlite3_column_int(v25, 0);
    if (sqlite3_column_type(v25, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v102 = 1;
      goto LABEL_50;
    }

    v30 = v26;
    v31 = sqlite3_column_blob(v25, 1);
    if (!v31)
    {
      sub_22FD9172C();
      swift_allocError();
      *v103 = 1;
      *(v103 + 4) = 0;
      swift_willThrow();
LABEL_52:

LABEL_53:
      sub_22FDB35E0(v25);
      return;
    }

    v32 = v31;
    v33 = *(v29 + 48);
    v34 = sqlite3_column_bytes(v25, 1);
    v35 = sub_22FDB285C(v32, v34);
    LOBYTE(v120) = 2;
    UUID.init(serialized:version:)(v35, v36);
    if (sqlite3_column_type(v25, 2) == 5 || (v37 = sqlite3_column_blob(v25, 2)) == 0)
    {
      sub_22FD9172C();
      swift_allocError();
      *v96 = 2;
      *(v96 + 4) = 0;
      swift_willThrow();
      (*(v110 + 8))(&v17[v33], v109);
      goto LABEL_52;
    }

    v38 = v37;
    v39 = *(v119 + 64);
    v40 = sqlite3_column_bytes(v25, 2);
    v41 = sub_22FDB285C(v38, v40);
    LOBYTE(v120) = 2;
    UUID.init(serialized:version:)(v41, v42);
    sub_22FD764B4(v17, v113, &qword_27DAE41A0, &qword_22FE4A1A0);
    v43 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_22FD919F0(0, v30[2] + 1, 1, v30);
    }

    v27 = v114;
    v45 = v43[2];
    v44 = v43[3];
    v46 = v43;
    if (v45 >= v44 >> 1)
    {
      v46 = sub_22FD919F0(v44 > 1, v45 + 1, 1, v43);
    }

    sub_22FD93E6C(v17, &qword_27DAE41A0, &qword_22FE4A1A0);
    *(v46 + 16) = v45 + 1;
    v26 = v46;
    sub_22FD93E04(v113, v46 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v45, &qword_27DAE41A0, &qword_22FE4A1A0);
  }

  if (v28 != 101)
  {
    v97 = v28;

    v98 = v97;
    if (sqlite3_errstr(v97))
    {
      v99 = sub_22FE43104();
      v101 = v100;
    }

    else
    {
      v101 = 0xE300000000000000;
      v99 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v104 = v98 | 0xA000000000000000;
    v104[1] = v99;
    v104[2] = v101;
    swift_willThrow();
    goto LABEL_53;
  }

  sub_22FDB35E0(v25);
  v47 = sub_22FD75328(MEMORY[0x277D84F90]);
  v115 = v26[2];
  v116 = v26;
  if (!v115)
  {
    v49 = 0;
    v51 = 0;
    v95 = v108;
LABEL_55:

    sub_22FD6EBD8(v49);
    sub_22FD6EBD8(v51);
    *v95 = v47;
    return;
  }

  v48 = v26;
  v49 = 0;
  v50 = v29;
  v51 = 0;
  v52 = 0;
  v113 = *(v50 + 48);
  v107 = v48 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
  v53 = *(v50 + 64);
  v54 = v109;
  v119 = v110 + 32;
  v105[0] = v110 + 16;
  v105[1] = v110 + 8;
  v106 = v53;
  while (v52 < v116[2])
  {
    v55 = *(v112 + 72);
    v117 = v52;
    sub_22FD764B4(v107 + v55 * v52, v27, &qword_27DAE41A0, &qword_22FE4A1A0);
    v56 = v27;
    v57 = *v27;
    v58 = *v119;
    (*v119)(v122, v56 + v113, v54);
    v118 = v58;
    v58(v111, v56 + v106, v54);
    sub_22FD6EBD8(v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v47;
    v61 = sub_22FD74718(v57);
    v62 = v47[2];
    v63 = (v60 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_59;
    }

    v65 = v60;
    if (v47[3] >= v64)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v60)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_22FDDED7C();
        v47 = v120;
        if (v65)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_22FDDD908(v64, isUniquelyReferenced_nonNull_native);
      v47 = v120;
      v66 = sub_22FD74718(v57);
      if ((v65 & 1) != (v67 & 1))
      {
        goto LABEL_64;
      }

      v61 = v66;
      if (v65)
      {
        goto LABEL_28;
      }
    }

    v68 = sub_22FD75430(MEMORY[0x277D84F90]);
    v47[(v61 >> 6) + 8] |= 1 << v61;
    *(v47[6] + 8 * v61) = v57;
    *(v47[7] + 8 * v61) = v68;
    v69 = v47[2];
    v70 = __OFADD__(v69, 1);
    v71 = v69 + 1;
    if (v70)
    {
      goto LABEL_61;
    }

    v47[2] = v71;
LABEL_28:
    v72 = v47[7];
    sub_22FD6EBD8(v51);
    v73 = *(v72 + 8 * v61);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v72 + 8 * v61);
    v75 = v120;
    *(v72 + 8 * v61) = 0x8000000000000000;
    v77 = sub_22FD747EC(v122);
    v78 = v75[2];
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_60;
    }

    v81 = v76;
    if (v75[3] >= v80)
    {
      if ((v74 & 1) == 0)
      {
        sub_22FDDEAFC();
        v75 = v120;
      }
    }

    else
    {
      sub_22FDDD8F4(v80, v74);
      v75 = v120;
      v82 = sub_22FD747EC(v122);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_63;
      }

      v77 = v82;
    }

    v54 = v109;
    v84 = *(v72 + 8 * v61);
    *(v72 + 8 * v61) = v75;

    v85 = *(v72 + 8 * v61);
    v86 = v122;
    if ((v81 & 1) == 0)
    {
      v85[(v77 >> 6) + 8] |= 1 << v77;
      (*(v110 + 16))(v85[6] + *(v110 + 72) * v77, v86, v54);
      *(v85[7] + 8 * v77) = MEMORY[0x277D84F90];
      v87 = v85[2];
      v70 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v70)
      {
        goto LABEL_62;
      }

      v85[2] = v88;
    }

    v89 = v85[7];
    v90 = *(v89 + 8 * v77);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    *(v89 + 8 * v77) = v90;
    if ((v91 & 1) == 0)
    {
      v90 = sub_22FD91828(0, v90[2] + 1, 1, v90);
      *(v89 + 8 * v77) = v90;
    }

    v93 = v90[2];
    v92 = v90[3];
    if (v93 >= v92 >> 1)
    {
      v90 = sub_22FD91828(v92 > 1, v93 + 1, 1, v90);
      *(v89 + 8 * v77) = v90;
    }

    v27 = v114;
    v52 = v117 + 1;
    v90[2] = v93 + 1;
    v94 = v110;
    v118(v90 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v93, v111, v54);
    (*(v94 + 8))(v122, v54);
    v51 = sub_22FD8FDB0;
    v49 = sub_22FD8FD80;
    v95 = v108;
    if (v115 == v52)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  sub_22FE43D14();
  __break(1u);
LABEL_64:
  sub_22FE43D14();
  __break(1u);
}

uint64_t ShuffleDatabase.delete(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDA3888);
}

uint64_t sub_22FDA3888()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA3904);
}

uint64_t sub_22FDA3904()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FDA5084);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FDA39B4(uint64_t *a1, uint64_t a2)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FE49F60;
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v6 + v5, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8._object = 0x800000022FE47290;
  v8._countAndFlagsBits = 0xD000000000000034;
  DatabaseConnection.delete(sql:bindings:)(v8, v6);
  swift_setDeallocating();
  sub_22FD9E188(v6 + v5, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t ShuffleDatabase.relate(photos:to:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FDA3B60);
}

uint64_t sub_22FDA3B60()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FDA3BE4);
}

uint64_t sub_22FDA3BE4()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_22FD914F4(0, sub_22FDA50A0);
  v0[8] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FDA3C94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = *a1;
  v7[2] = a3;
  v7[3] = a4;
  v4 = sub_22FDD4678(sub_22FD93DE4, v7, a2);
  v5._object = 0x800000022FE47210;
  v5._countAndFlagsBits = 0xD00000000000007CLL;
  DatabaseConnection.insert(sql:bindings:)(v5, v4);
}

uint64_t ShuffleDatabase.unrelatePhotos(for:before:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FDA3D44);
}

uint64_t sub_22FDA3D44()
{
  v1 = v0[3];
  v2 = v0[2];
  v0[5] = *(v0[4] + 16);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FDA3DCC);
}

uint64_t sub_22FDA3DCC()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_22FD914F4(0, sub_22FDA50C0);
  v0[7] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FDA3E7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v5 = *(type metadata accessor for DatabaseBinding() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FE49FB0;
  v9 = (v8 + v7);
  *v9 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v9 + v6) = 24;
  swift_storeEnumTagMultiPayload();
  *(v9 + 2 * v6) = a2;
  swift_storeEnumTagMultiPayload();
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9 + 3 * v6, a3, v10);
  swift_storeEnumTagMultiPayload();
  v11._object = 0x800000022FE47170;
  v11._countAndFlagsBits = 0xD000000000000096;
  DatabaseConnection.delete(sql:bindings:)(v11, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t ShuffleDatabase.clearPhotos(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDA4078);
}

uint64_t sub_22FDA4078()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA40F4);
}

uint64_t sub_22FDA40F4()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FDA50DC);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD908B4);
}

uint64_t sub_22FDA41A4(uint64_t *a1, uint64_t a2)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FE49F60;
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v6 + v5, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8._object = 0x800000022FE47130;
  v8._countAndFlagsBits = 0xD00000000000003BLL;
  DatabaseConnection.delete(sql:bindings:)(v8, v6);
  swift_setDeallocating();
  sub_22FD9E188(v6 + v5, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t ShuffleDatabase.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ShuffleDatabase.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22FDA4384(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FDA43A8);
}

uint64_t sub_22FDA43A8()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA4424);
}

uint64_t sub_22FDA4424()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(1, sub_22FDA57EC);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FDA44D4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FDA44F8);
}

uint64_t sub_22FDA44F8()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA4574);
}

uint64_t sub_22FDA4574()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FDA57D4);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FDA4624(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FDA4648);
}

uint64_t sub_22FDA4648()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FDA46C4);
}

uint64_t sub_22FDA46C4()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FDA57BC);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FDA4774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22FDA479C);
}

uint64_t sub_22FDA479C()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FDA4820);
}

uint64_t sub_22FDA4820()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_22FD914F4(0, sub_22FDA5804);
  v0[8] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FDA48D0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22FDA48F8);
}

uint64_t sub_22FDA48F8()
{
  v1 = v0[3];
  v2 = v0[2];
  v0[5] = *(v0[4] + 16);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FDA4980);
}

uint64_t sub_22FDA4980()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_22FD914F4(0, sub_22FDA581C);
  v0[7] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FDA4A30()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD93F54;

  return ShuffleDatabase.queryList()();
}

uint64_t sub_22FDA4AC0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD93F54;

  return ShuffleDatabase.query(id:day:)(a1, a2);
}

uint64_t sub_22FDA4B68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD93F54;

  return ShuffleDatabase.queryByDay(id:)(a1);
}

uint64_t sub_22FDA4C00(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD913F4;

  return ShuffleDatabase.queryPhotosForDays(from:to:)(a1, a2);
}

uint64_t sub_22FDA4CA8(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2 = *(*(v47 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v47);
  v4 = MEMORY[0x28223BE20](v3);
  v49 = &v41 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v48 = &v41 - v7;
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - v10;
  v11 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v43 = *(v8 + 80);
  v13 = *(v8 + 72);
  v45 = (v43 + 32) & ~v43;
  v14 = a1 + v45;
  v42 = xmmword_22FE49F60;
  v46 = v9;
  v44 = v13;
  while (1)
  {
    v16 = v50;
    sub_22FD764B4(v14, v50, &qword_27DAE4068, &qword_22FE49FD8);
    v17 = v48;
    sub_22FD764B4(v16, v48, &qword_27DAE4068, &qword_22FE49FD8);
    v18 = *(v47 + 48);
    v19 = *(v17 + v18);
    v20 = v17;
    v21 = v49;
    sub_22FD9E1E8(v20, v49, type metadata accessor for StoredPhoto);
    *(v21 + v18) = v19;
    sub_22FD93E6C(v21, &qword_27DAE4068, &qword_22FE49FD8);
    v23 = sub_22FD74718(v19);
    v24 = v11[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v11[3] < v26)
    {
      sub_22FDDD204(v26, 1);
      v11 = v51;
      v28 = sub_22FD74718(v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {
      v30 = v11[7];
      sub_22FD93E04(v50, v46, &qword_27DAE4068, &qword_22FE49FD8);
      v31 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_22FD9195C(0, v31[2] + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_22FD9195C(v33 > 1, v34 + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v31[2] = v34 + 1;
      v15 = v44;
      sub_22FD93E04(v46, v31 + v45 + v34 * v44, &qword_27DAE4068, &qword_22FE49FD8);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A8, &qword_22FE4A1A8);
      v35 = v45;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      sub_22FD93E04(v50, v36 + v35, &qword_27DAE4068, &qword_22FE49FD8);
      v11[(v23 >> 6) + 8] |= 1 << v23;
      *(v11[6] + 8 * v23) = v19;
      *(v11[7] + 8 * v23) = v36;
      v37 = v11[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v11[2] = v39;
      v15 = v44;
    }

    v14 += v15;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FDA50F8(uint64_t a1, uint64_t a2)
{
  result = sub_22FDA51C0(&qword_27DAE4220, a2, type metadata accessor for ShuffleDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FDA51C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FDA5234(uint64_t a1)
{
  v2 = sub_22FE428C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShuffleID();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v41 - v13;
  v14 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v15 = *(a1 + 16);
  if (!v15)
  {
    return v14;
  }

  v45 = *(v12 + 80);
  v16 = v3;
  v17 = *(v12 + 72);
  v18 = a1 + ((v45 + 32) & ~v45);
  v50 = (v45 + 32) & ~v45;
  v51 = (v16 + 16);
  v43 = (v16 + 8);
  v44 = v16 + 32;
  v42 = xmmword_22FE49F60;
  v46 = v11;
  v47 = v16;
  v48 = v2;
  v49 = v17;
  while (1)
  {
    v21 = v52;
    sub_22FD9E120(v18, v52, type metadata accessor for ShuffleID);
    (*v51)(v6, v21, v2);
    v23 = sub_22FD747EC(v6);
    v24 = v14[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v14[3] < v26)
    {
      sub_22FDDD91C(v26, 1);
      v14 = v53;
      v28 = sub_22FD747EC(v6);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {
      (*v43)(v6, v2);
      v30 = v14[7];
      sub_22FD9E1E8(v52, v11, type metadata accessor for ShuffleID);
      v31 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_22FD91A3C(0, v31[2] + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_22FD91A3C(v33 > 1, v34 + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v31[2] = v34 + 1;
      v2 = v48;
      v19 = v49;
      v20 = v31 + v50 + v34 * v49;
      v11 = v46;
      sub_22FD9E1E8(v46, v20, type metadata accessor for ShuffleID);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40F0, &qword_22FE4A110);
      v35 = v50;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      sub_22FD9E1E8(v52, v36 + v35, type metadata accessor for ShuffleID);
      v14[(v23 >> 6) + 8] |= 1 << v23;
      (*(v47 + 32))(v14[6] + *(v47 + 72) * v23, v6, v2);
      *(v14[7] + 8 * v23) = v36;
      v37 = v14[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v14[2] = v39;
      v19 = v49;
    }

    v18 += v19;
    if (!--v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FDA5654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4228, &qword_22FE4A728);
    v3 = sub_22FE438B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22FE43DB4();

      sub_22FE430D4();
      result = sub_22FE43E04();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_22FE43CB4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22FDA5834(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_22FE435E4();
  if (!v26)
  {
    return sub_22FE432D4();
  }

  v48 = v26;
  v52 = sub_22FE439C4();
  v39 = sub_22FE439D4();
  sub_22FE439A4();
  result = sub_22FE435D4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_22FE43664();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_22FE439B4();
      result = sub_22FE435F4();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_22FDA5C80(uint64_t a1, uint64_t a2, int64_t a3, void *a4, uint64_t a5)
{
  v74 = a3;
  v75 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830);
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v71 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41B8, &qword_22FE4A1B0);
  v76 = *(v12 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D0, &unk_22FE4A840);
  v16 = *(*(v84 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v84);
  v83 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v71 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v80 = *(v20 - 8);
  v81 = v20;
  v21 = *(v80 + 64);
  MEMORY[0x28223BE20](v20);
  v79 = &v71 - v22;
  v23 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v24 = *(a4 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v24)
  {
    sub_22FD9E790();
    if (v5)
    {
      return a4;
    }

    v24 = *(a4 + v23);
    if (!v24)
    {
      sub_22FD91684();
      swift_allocError();
      *v29 = 0;
      goto LABEL_11;
    }
  }

  v85 = v24;
  v25._countAndFlagsBits = 0x6E69676562;
  v25._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v25);
  v27 = v26;
  if (v26)
  {
LABEL_9:
    v85 = v24;
    v33._countAndFlagsBits = 0x6B6361626C6C6F72;
    a4 = &v85;
    v33._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v33);
    if (v34)
    {
      a4 = v34;

      return a4;
    }

LABEL_11:
    swift_willThrow();
    return a4;
  }

  v85 = v24;
  v28 = sub_22FDB08B0();
  v30 = (v75)(v74, v28);
  sub_22FDB35E0(v28);
  v85 = v24;
  v31._countAndFlagsBits = 0x74696D6D6F63;
  v31._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v31);
  v27 = v32;
  if (v32)
  {

    goto LABEL_9;
  }

  v36 = *(v30 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v85 = MEMORY[0x277D84F90];
    result = sub_22FD923C8(0, v36, 0);
    v38 = 0;
    v39 = *(v78 + 80);
    v73 = v30;
    v74 = v30 + ((v39 + 32) & ~v39);
    v75 = v85;
    v72 = v36;
    while (v38 < *(v30 + 16))
    {
      sub_22FD764B4(v74 + *(v78 + 72) * v38, v11, &qword_27DAE41C8, &unk_22FE4A830);
      *&v15[*(v12 + 64)] = sub_22FDA9084(v15, &v15[*(v12 + 48)], v11, *&v11[*(v77 + 48)]);
      sub_22FD93E6C(v11, &qword_27DAE41C8, &unk_22FE4A830);
      v40 = v75;
      v85 = v75;
      v42 = *(v75 + 16);
      v41 = *(v75 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_22FD923C8(v41 > 1, v42 + 1, 1);
        v40 = v85;
      }

      ++v38;
      v40[2] = v42 + 1;
      v43 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v75 = v40;
      result = sub_22FD93E04(v15, v40 + v43 + *(v76 + 72) * v42, &qword_27DAE41B8, &qword_22FE4A1B0);
      v30 = v73;
      if (v72 == v38)
      {

        v37 = MEMORY[0x277D84F90];
        v44 = v75;
        goto LABEL_21;
      }
    }
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
LABEL_21:
    v45 = sub_22FDADBC4(v44);

    v46 = *(v45 + 16);
    if (!v46)
    {

      return MEMORY[0x277D84F90];
    }

    v85 = v37;
    sub_22FD92348(0, v46, 0);
    a4 = v85;
    v47 = v45 + 64;
    v48 = -1 << *(v45 + 32);
    result = sub_22FE43834();
    v49 = result;
    v50 = 0;
    v78 = *(v45 + 36);
    v73 = v45 + 72;
    v74 = v46;
    v75 = v45 + 64;
    while ((v49 & 0x8000000000000000) == 0 && v49 < 1 << *(v45 + 32))
    {
      v52 = v49 >> 6;
      if ((*(v47 + 8 * (v49 >> 6)) & (1 << v49)) == 0)
      {
        goto LABEL_43;
      }

      v76 = v50;
      v77 = 1 << v49;
      if (v78 != *(v45 + 36))
      {
        goto LABEL_44;
      }

      v53 = *(v45 + 48);
      v54 = v45;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010);
      v56 = v82;
      sub_22FD764B4(v53 + *(*(v55 - 8) + 72) * v49, v82, &qword_27DAE2CE0, &unk_22FE49010);
      v57 = *(*(v45 + 56) + 8 * v49);
      v58 = v56;
      v59 = v83;
      sub_22FD93E04(v58, v83, &qword_27DAE2CE0, &unk_22FE49010);
      *(v59 + *(v84 + 48)) = v57;
      v60 = *(v81 + 48);

      v61 = v79;
      *(v61 + v60) = sub_22FDA9E48(v79, v59, v57);
      sub_22FD93E6C(v59, &qword_27DAE42D0, &unk_22FE4A840);
      v85 = a4;
      v63 = a4[2];
      v62 = a4[3];
      if (v63 >= v62 >> 1)
      {
        sub_22FD92348(v62 > 1, v63 + 1, 1);
        a4 = v85;
      }

      a4[2] = v63 + 1;
      result = sub_22FD93E04(v61, a4 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v63, &qword_27DAE4068, &qword_22FE49FD8);
      v51 = 1 << *(v54 + 32);
      if (v49 >= v51)
      {
        goto LABEL_45;
      }

      v47 = v75;
      v64 = *(v75 + 8 * v52);
      if ((v64 & v77) == 0)
      {
        goto LABEL_46;
      }

      v45 = v54;
      if (v78 != *(v54 + 36))
      {
        goto LABEL_47;
      }

      v65 = v64 & (-2 << (v49 & 0x3F));
      if (v65)
      {
        v51 = __clz(__rbit64(v65)) | v49 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v66 = v52 << 6;
        v67 = v52 + 1;
        v68 = (v73 + 8 * v52);
        while (v67 < (v51 + 63) >> 6)
        {
          v70 = *v68++;
          v69 = v70;
          v66 += 64;
          ++v67;
          if (v70)
          {
            result = sub_22FD72BF8(v49, v78, 0);
            v51 = __clz(__rbit64(v69)) + v66;
            goto LABEL_24;
          }
        }

        result = sub_22FD72BF8(v49, v78, 0);
      }

LABEL_24:
      v50 = v76 + 1;
      v49 = v51;
      if (v76 + 1 == v74)
      {

        return a4;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PhotosFaceDatabase.queryPhotos<A>(sql:bindings:extraReading:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a6;
  v39 = a6;
  v40 = a7;
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  type metadata accessor for StoredLayoutView();
  swift_getTupleTypeMetadata2();
  v10 = sub_22FE43354();
  sub_22FD9F060(0, sub_22FDA72E8, v10, &v47);
  if (!v7)
  {
    v38 = &v37;
    v12 = MEMORY[0x28223BE20](v11);
    v35 = v9;
    v36 = a7;
    MEMORY[0x28223BE20](v12);
    v31 = v9;
    v32 = a7;
    v33 = sub_22FDA9A4C;
    v34 = v13;
    v14 = type metadata accessor for StoredPhoto(255);
    type metadata accessor for StoredPhotoLayout(255);
    v37 = v14;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    WitnessTable = swift_getWitnessTable();
    v18 = sub_22FDA5834(sub_22FDA9B4C, v30, v10, TupleTypeMetadata3, v16, WitnessTable, MEMORY[0x277D84950], &v46);

    v38 = &v37;
    v47 = v18;
    v20 = MEMORY[0x28223BE20](v19);
    v35 = v9;
    v36 = a7;
    MEMORY[0x28223BE20](v20);
    v31 = v9;
    v32 = a7;
    v33 = sub_22FDA9CC0;
    v34 = v21;
    _s19ExtraPhotoContainerVMa();
    sub_22FE43354();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v22 = sub_22FE42F94();
    v38 = &v37;
    v47 = v22;
    v23 = MEMORY[0x28223BE20](v22);
    v35 = v9;
    v36 = a7;
    MEMORY[0x28223BE20](v23);
    v31 = v9;
    v32 = a7;
    v33 = sub_22FDAA590;
    v34 = v24;
    v25 = sub_22FE42FA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v27 = swift_getWitnessTable();
    v9 = sub_22FDA5834(sub_22FDAA8D4, v30, v25, TupleTypeMetadata2, MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v28);
  }

  return v9;
}

void *PhotosFaceDatabase.queryPhotos(sql:bindings:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - v13;
  v15 = type metadata accessor for StoredPhoto(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22FDA5C80(a1, a2, a3, v3, sub_22FDB2B48);
  if (!v4)
  {
    v21 = v30;
    v29[2] = 0;
    v22 = *(v20 + 16);
    if (v22)
    {
      v31 = MEMORY[0x277D84F90];
      v23 = v20;
      sub_22FD92408(0, v22, 0);
      v3 = v31;
      v24 = *(v21 + 80);
      v29[1] = v23;
      v25 = v23 + ((v24 + 32) & ~v24);
      v30 = *(v21 + 72);
      do
      {
        sub_22FD764B4(v25, v14, &qword_27DAE4068, &qword_22FE49FD8);
        sub_22FD93E04(v14, v12, &qword_27DAE4068, &qword_22FE49FD8);
        sub_22FDAF070(v12, v19, type metadata accessor for StoredPhoto);
        v31 = v3;
        v27 = v3[2];
        v26 = v3[3];
        if (v27 >= v26 >> 1)
        {
          sub_22FD92408(v26 > 1, v27 + 1, 1);
          v3 = v31;
        }

        v3[2] = v27 + 1;
        sub_22FDAF070(v19, v3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v27, type metadata accessor for StoredPhoto);
        v25 += v30;
        --v22;
      }

      while (v22);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *PhotosFaceDatabase.queryPhotos(identifiers:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v39 - v7;
  v51 = type metadata accessor for DatabaseBinding();
  v46 = *(v51 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](v51);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = *(a1 + 16);
  v49 = sub_22FDAE4A8(0x3F, 0xE100000000000000, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4230, &qword_22FE4A748);
  sub_22FDAE544();
  v14 = sub_22FE42FF4();
  v16 = v15;

  v49 = 0;
  v50 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD0000000000002B4, 0x800000022FE47580);
  MEMORY[0x23190ACF0](v14, v16);

  MEMORY[0x23190ACF0](0x2020202020200A29, 0xEA00000000002020);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v42 = v49;
  v43 = v50;
  v17 = MEMORY[0x277D84F90];
  if (v13)
  {
    v40 = v3;
    v49 = MEMORY[0x277D84F90];
    sub_22FD924B0(0, v13, 0);
    v17 = v49;
    v48 = sub_22FE428C4();
    v18 = *(v48 - 8);
    v47 = *(v18 + 16);
    v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v20 = *(v18 + 72);
    v21 = v46;
    do
    {
      v47(v12, v19, v48);
      swift_storeEnumTagMultiPayload();
      v49 = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        sub_22FD924B0(v22 > 1, v23 + 1, 1);
        v21 = v46;
        v17 = v49;
      }

      v17[2] = v23 + 1;
      sub_22FDAF070(v12, v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v23, type metadata accessor for DatabaseBinding);
      v19 += v20;
      --v13;
    }

    while (v13);
    v3 = v40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v24 = *(v3 + 72);
  v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v26 = swift_allocObject();
  *(v26 + v25) = 17;
  v27 = v51;
  swift_storeEnumTagMultiPayload();
  v28 = v46;
  (*(v46 + 56))(v26 + v25, 0, 1, v27);
  v29 = v41;
  sub_22FD764B4(v26 + v25, v41, &qword_27DAE4070, &qword_22FE4A740);
  v30 = v29;
  v31 = v44;
  sub_22FD93E04(v30, v44, &qword_27DAE4070, &qword_22FE4A740);
  if ((*(v28 + 48))(v31, 1, v27) == 1)
  {
    sub_22FD93E6C(v31, &qword_27DAE4070, &qword_22FE4A740);
    v32 = MEMORY[0x277D84F90];
    v34 = v42;
    v33 = v43;
  }

  else
  {
    sub_22FDAF070(v31, v45, type metadata accessor for DatabaseBinding);
    v32 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_22FD919C8(0, v32[2] + 1, 1, v32);
    }

    v36 = v32[2];
    v35 = v32[3];
    v34 = v42;
    if (v36 >= v35 >> 1)
    {
      v32 = sub_22FD919C8(v35 > 1, v36 + 1, 1, v32);
    }

    v32[2] = v36 + 1;
    sub_22FDAF070(v45, v32 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v36, type metadata accessor for DatabaseBinding);
    v33 = v43;
  }

  swift_setDeallocating();
  sub_22FD93E6C(v26 + v25, &qword_27DAE4070, &qword_22FE4A740);
  swift_deallocClassInstance();
  v49 = v17;
  sub_22FDADA80(v32, sub_22FD919C8, type metadata accessor for DatabaseBinding);
  v37 = PhotosFaceDatabase.queryPhotos(sql:bindings:)(v34, v33, v49);

  return v37;
}

uint64_t sub_22FDA7230@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v16[7] = *a1;
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a5;
  v16[5] = a6;
  type metadata accessor for StoredLayoutView();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = DatabaseConnection.query<A>(sql:bindings:step:)(a2, a3, a4, sub_22FDAF1D0, v16, TupleTypeMetadata2);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t type metadata accessor for StoredLayoutView()
{
  result = qword_27DAE42C0;
  if (!qword_27DAE42C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDA735C@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v4 = sub_22FE42854();
  v83 = *(v4 - 8);
  v5 = *(v83 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v61 - v9;
  v11 = sub_22FE428C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  result = DatabaseRow.readUUID(column:)(0);
  if (!v2)
  {
    v78 = v8;
    v79 = v4;
    v17 = v84;
    v81 = v12;
    v82 = v15;
    v18 = v10;
    v80 = v11;
    if (sqlite3_column_type(a1, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v19 = 1;
      *(v19 + 4) = 0;
      swift_willThrow();
      return (*(v81 + 8))(v82, v80);
    }

    v20 = a1;
    sqlite3_column_double(a1, 1);
    v21 = v10;
    sub_22FE42804();
    v22 = sqlite3_column_type(a1, 2);
    v23 = v80;
    v24 = v81;
    v25 = v82;
    if (v22 == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v26 = 2;
      *(v26 + 4) = 0;
      swift_willThrow();
      (*(v83 + 8))(v21, v79);
      return (*(v24 + 8))(v25, v23);
    }

    v27 = sqlite3_column_double(v20, 2);
    v28 = sqlite3_column_type(v20, 3);
    v29 = v79;
    if (v28 == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v30 = 3;
      *(v30 + 4) = 0;
      swift_willThrow();
      (*(v83 + 8))(v21, v29);
    }

    else
    {
      v31 = sqlite3_column_int(v20, 3);
      if (sqlite3_column_type(v20, 4) != 5)
      {
        v77 = v31;
        v76 = sqlite3_column_int(v20, 4);
        v33 = 5;
        v34 = v23;
        if (sqlite3_column_type(v20, 5) == 5)
        {
          goto LABEL_21;
        }

        v35 = sqlite3_column_int(v20, 5);
        v33 = 6;
        if (sqlite3_column_type(v20, 6) == 5)
        {
          goto LABEL_21;
        }

        v36 = sqlite3_column_double(v20, 6);
        v33 = 7;
        if (sqlite3_column_type(v20, 7) == 5)
        {
          goto LABEL_21;
        }

        v37 = sqlite3_column_double(v20, 7);
        v33 = 8;
        if (sqlite3_column_type(v20, 8) == 5)
        {
          goto LABEL_21;
        }

        v38 = sqlite3_column_double(v20, 8);
        v33 = 9;
        if (sqlite3_column_type(v20, 9) == 5)
        {
          goto LABEL_21;
        }

        v39 = sqlite3_column_double(v20, 9);
        v33 = 10;
        if (sqlite3_column_type(v20, 10) == 5 || (v75 = sqlite3_column_int(v20, 10), v33 = 11, sqlite3_column_type(v20, 11) == 5) || (v40 = sqlite3_column_double(v20, 11), v33 = 12, sqlite3_column_type(v20, 12) == 5) || (v74 = v35, v41 = sqlite3_column_double(v20, 12), v33 = 13, sqlite3_column_type(v20, 13) == 5))
        {
LABEL_21:
          sub_22FD9172C();
          swift_allocError();
          *v42 = v33;
          *(v42 + 4) = 0;
          swift_willThrow();
          (*(v83 + 8))(v21, v79);
          return (*(v24 + 8))(v82, v34);
        }

        v43 = sqlite3_column_double(v20, 13);
        v44 = 14;
        if (sqlite3_column_type(v20, 14) == 5)
        {
          goto LABEL_27;
        }

        v73 = sqlite3_column_double(v20, 14);
        v44 = 15;
        if (sqlite3_column_type(v20, 15) == 5 || (v72 = sqlite3_column_double(v20, 15), v44 = 16, sqlite3_column_type(v20, 16) == 5) || (v71 = sqlite3_column_double(v20, 16), v44 = 17, sqlite3_column_type(v20, 17) == 5) || (v70 = sqlite3_column_double(v20, 17), v44 = 18, sqlite3_column_type(v20, 18) == 5))
        {
LABEL_27:
          sub_22FD9172C();
          swift_allocError();
          *v45 = v44;
        }

        else
        {
          v66 = sqlite3_column_double(v20, 18);
          if (sqlite3_column_type(v20, 19) == 5 || !sqlite3_column_text(v20, 19))
          {
            v65 = 0;
            v69 = 0;
          }

          else
          {
            v65 = sub_22FE43114();
            v69 = v46;
          }

          if (sqlite3_column_type(v20, 20) == 5 || !sqlite3_column_text(v20, 20))
          {
            v64 = 0;
            v68 = 0;
          }

          else
          {
            v64 = sub_22FE43114();
            v68 = v47;
          }

          if (sqlite3_column_type(v20, 21) == 5 || !sqlite3_column_text(v20, 21))
          {
            v63 = 0;
            v67 = 0;
          }

          else
          {
            v63 = sub_22FE43114();
            v67 = v48;
          }

          if (sqlite3_column_type(v20, 22) != 5)
          {
            v62 = v77;
            v76 = v76;
            v74 = v74;
            v75 = v75 == 1;
            v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830) + 48);
            sqlite3_column_double(v20, 22);
            v49 = v78;
            sub_22FE42804();
            (*(v81 + 32))(v17, v82, v80);
            v50 = type metadata accessor for StoredLayoutView();
            v51 = *(v83 + 32);
            v52 = v79;
            v51(v17 + v50[5], v18, v79);
            *(v17 + v50[6]) = v27;
            *(v17 + v50[7]) = v62;
            *(v17 + v50[8]) = v76;
            v53 = v75;
            *(v17 + v50[9]) = v74;
            *(v17 + v50[10]) = v36;
            *(v17 + v50[11]) = v37;
            *(v17 + v50[12]) = v38;
            *(v17 + v50[13]) = v39;
            *(v17 + v50[14]) = v53;
            *(v17 + v50[15]) = v40;
            *(v17 + v50[16]) = v41;
            *(v17 + v50[17]) = v43;
            v54 = v72;
            *(v17 + v50[18]) = v73;
            *(v17 + v50[19]) = v54;
            *(v17 + v50[20]) = v71;
            *(v17 + v50[21]) = v70;
            *(v17 + v50[22]) = v66;
            v55 = (v17 + v50[23]);
            v56 = v69;
            *v55 = v65;
            v55[1] = v56;
            v57 = (v17 + v50[24]);
            v58 = v68;
            *v57 = v64;
            v57[1] = v58;
            v59 = (v17 + v50[25]);
            v60 = v67;
            *v59 = v63;
            v59[1] = v60;
            result = (v51)(v17 + v50[26], v49, v52);
            *(v17 + v77) = 0;
            return result;
          }

          sub_22FD9172C();
          swift_allocError();
          *v45 = 22;
        }

        *(v45 + 4) = 0;
        swift_willThrow();
        (*(v83 + 8))(v18, v79);
        return (*(v81 + 8))(v82, v80);
      }

      sub_22FD9172C();
      swift_allocError();
      *v32 = 4;
      *(v32 + 4) = 0;
      swift_willThrow();
      (*(v83 + 8))(v21, v79);
    }

    return (*(v24 + 8))(v82, v23);
  }

  return result;
}

uint64_t sub_22FDA7D5C@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v4 = sub_22FE42854();
  v81 = *(v4 - 8);
  v5 = *(v81 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - v9;
  v11 = sub_22FE428C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  result = DatabaseRow.readUUID(column:)(0);
  if (!v2)
  {
    v75 = v8;
    v76 = v4;
    v77 = v15;
    v78 = v11;
    v17 = v10;
    v79 = v12;
    if (sqlite3_column_type(a1, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v18 = 1;
      *(v18 + 4) = 0;
      swift_willThrow();
      return (*(v79 + 8))(v77, v78);
    }

    sqlite3_column_double(a1, 1);
    v19 = v10;
    sub_22FE42804();
    v20 = sqlite3_column_type(a1, 2);
    v21 = v78;
    v22 = v79;
    v23 = v77;
    if (v20 == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v24 = 2;
      *(v24 + 4) = 0;
      swift_willThrow();
      (*(v81 + 8))(v19, v76);
      return (*(v22 + 8))(v23, v21);
    }

    v25 = sqlite3_column_double(a1, 2);
    v26 = 3;
    v27 = sqlite3_column_type(a1, 3);
    v28 = v76;
    if (v27 == 5)
    {
      goto LABEL_17;
    }

    v74 = sqlite3_column_int(a1, 3);
    v26 = 4;
    if (sqlite3_column_type(a1, 4) == 5)
    {
      goto LABEL_17;
    }

    v73 = sqlite3_column_int(a1, 4);
    v26 = 5;
    if (sqlite3_column_type(a1, 5) == 5)
    {
      goto LABEL_17;
    }

    v72 = sqlite3_column_int(a1, 5);
    v26 = 6;
    if (sqlite3_column_type(a1, 6) == 5)
    {
      goto LABEL_17;
    }

    v29 = sqlite3_column_double(a1, 6);
    v26 = 7;
    if (sqlite3_column_type(a1, 7) == 5)
    {
      goto LABEL_17;
    }

    v30 = sqlite3_column_double(a1, 7);
    v26 = 8;
    if (sqlite3_column_type(a1, 8) == 5)
    {
      goto LABEL_17;
    }

    v31 = sqlite3_column_double(a1, 8);
    v26 = 9;
    if (sqlite3_column_type(a1, 9) == 5)
    {
      goto LABEL_17;
    }

    v32 = sqlite3_column_double(a1, 9);
    v26 = 10;
    if (sqlite3_column_type(a1, 10) == 5 || (v71 = sqlite3_column_int(a1, 10), v26 = 11, sqlite3_column_type(a1, 11) == 5) || (v33 = sqlite3_column_double(a1, 11), v26 = 12, sqlite3_column_type(a1, 12) == 5) || (v34 = sqlite3_column_double(a1, 12), v26 = 13, sqlite3_column_type(a1, 13) == 5))
    {
LABEL_17:
      sub_22FD9172C();
      swift_allocError();
      *v35 = v26;
      *(v35 + 4) = 0;
      swift_willThrow();
      (*(v81 + 8))(v19, v28);
      return (*(v22 + 8))(v23, v21);
    }

    v36 = sqlite3_column_double(a1, 13);
    v37 = 14;
    v38 = a1;
    if (sqlite3_column_type(a1, 14) == 5)
    {
      goto LABEL_25;
    }

    v70 = sqlite3_column_double(a1, 14);
    v37 = 15;
    if (sqlite3_column_type(a1, 15) == 5 || (v69 = sqlite3_column_double(a1, 15), v37 = 16, sqlite3_column_type(a1, 16) == 5) || (v68 = sqlite3_column_double(a1, 16), v37 = 17, sqlite3_column_type(a1, 17) == 5) || (v67 = sqlite3_column_double(a1, 17), v37 = 18, sqlite3_column_type(a1, 18) == 5))
    {
LABEL_25:
      sub_22FD9172C();
      swift_allocError();
      *v39 = v37;
LABEL_26:
      *(v39 + 4) = 0;
      swift_willThrow();
      (*(v81 + 8))(v17, v76);
      return (*(v79 + 8))(v77, v78);
    }

    v63 = sqlite3_column_double(a1, 18);
    if (sqlite3_column_type(a1, 19) == 5 || !sqlite3_column_text(a1, 19))
    {
      v62 = 0;
      v66 = 0;
    }

    else
    {
      v62 = sub_22FE43114();
      v66 = v40;
    }

    if (sqlite3_column_type(a1, 20) == 5 || !sqlite3_column_text(a1, 20))
    {
      v61 = 0;
      v65 = 0;
    }

    else
    {
      v61 = sub_22FE43114();
      v65 = v41;
    }

    if (sqlite3_column_type(a1, 21) == 5 || !sqlite3_column_text(a1, 21))
    {
      v60 = 0;
      v64 = 0;
    }

    else
    {
      v60 = sub_22FE43114();
      v64 = v42;
    }

    if (sqlite3_column_type(a1, 22) == 5)
    {

      sub_22FD9172C();
      swift_allocError();
      *v39 = 22;
      goto LABEL_26;
    }

    v58 = v74;
    v74 = v73;
    v72 = v72 == 1;
    LODWORD(v73) = v71 == 1;
    v59 = a1;
    sqlite3_column_double(a1, 22);
    v43 = v75;
    sub_22FE42804();
    v44 = v80;
    (*(v79 + 32))(v80, v77, v78);
    v45 = type metadata accessor for StoredLayoutView();
    v46 = *(v81 + 32);
    v47 = v76;
    v46(v44 + v45[5], v17, v76);
    *(v44 + v45[6]) = v25;
    *(v44 + v45[7]) = v58;
    *(v44 + v45[8]) = v74;
    v48 = v73;
    *(v44 + v45[9]) = v72;
    *(v44 + v45[10]) = v29;
    *(v44 + v45[11]) = v30;
    *(v44 + v45[12]) = v31;
    *(v44 + v45[13]) = v32;
    *(v44 + v45[14]) = v48;
    *(v44 + v45[15]) = v33;
    *(v44 + v45[16]) = v34;
    *(v44 + v45[17]) = v36;
    v49 = v69;
    *(v44 + v45[18]) = v70;
    *(v44 + v45[19]) = v49;
    *(v44 + v45[20]) = v68;
    *(v44 + v45[21]) = v67;
    *(v44 + v45[22]) = v63;
    v50 = (v44 + v45[23]);
    v51 = v66;
    *v50 = v62;
    v50[1] = v51;
    v52 = (v44 + v45[24]);
    v53 = v65;
    *v52 = v61;
    v52[1] = v53;
    v54 = (v44 + v45[25]);
    v55 = v64;
    *v54 = v60;
    v54[1] = v55;
    v46(v44 + v45[26], v43, v47);
    if (sqlite3_column_type(v59, 24) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v56 = 24;
      *(v56 + 4) = 0;
      swift_willThrow();
      return sub_22FDAF148(v80, type metadata accessor for StoredLayoutView);
    }

    else
    {
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830) + 48);
      result = sqlite3_column_int(v38, 24);
      *(v80 + v57) = result;
    }
  }

  return result;
}

uint64_t sub_22FDA8718@<X0>(sqlite3_stmt **a1@<X0>, uint64_t (*a2)(sqlite3_stmt **)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a4;
  v83 = a3;
  v84 = a2;
  v85 = a5;
  v7 = sub_22FE42854();
  v86 = *(v7 - 8);
  v8 = *(v86 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v61 - v12;
  v14 = sub_22FE428C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v87 = *a1;
  result = DatabaseRow.readUUID(column:)(0);
  if (!v5)
  {
    v76 = v11;
    v77 = 0;
    v80 = v18;
    v81 = v14;
    v21 = v13;
    v78 = v7;
    v79 = v15;
    if (sqlite3_column_type(v19, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v22 = 1;
      *(v22 + 4) = 0;
      swift_willThrow();
      return (*(v79 + 8))(v80, v81);
    }

    sqlite3_column_double(v19, 1);
    v23 = v13;
    sub_22FE42804();
    v24 = sqlite3_column_type(v19, 2);
    v26 = v80;
    v25 = v81;
    if (v24 == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v27 = 2;
      *(v27 + 4) = 0;
      swift_willThrow();
      (*(v86 + 8))(v23, v78);
      return (*(v79 + 8))(v26, v25);
    }

    v28 = sqlite3_column_double(v19, 2);
    v29 = 3;
    v30 = sqlite3_column_type(v19, 3);
    v31 = v86;
    v32 = v78;
    if (v30 == 5)
    {
      goto LABEL_17;
    }

    v33 = sqlite3_column_int(v19, 3);
    v29 = 4;
    if (sqlite3_column_type(v19, 4) == 5)
    {
      goto LABEL_17;
    }

    v75 = sqlite3_column_int(v19, 4);
    v29 = 5;
    if (sqlite3_column_type(v19, 5) == 5)
    {
      goto LABEL_17;
    }

    v74 = sqlite3_column_int(v19, 5);
    v29 = 6;
    if (sqlite3_column_type(v19, 6) == 5)
    {
      goto LABEL_17;
    }

    v34 = sqlite3_column_double(v19, 6);
    v29 = 7;
    if (sqlite3_column_type(v19, 7) == 5)
    {
      goto LABEL_17;
    }

    v35 = sqlite3_column_double(v19, 7);
    v29 = 8;
    if (sqlite3_column_type(v19, 8) == 5)
    {
      goto LABEL_17;
    }

    v36 = sqlite3_column_double(v19, 8);
    v29 = 9;
    if (sqlite3_column_type(v19, 9) == 5)
    {
      goto LABEL_17;
    }

    v37 = sqlite3_column_double(v19, 9);
    v29 = 10;
    if (sqlite3_column_type(v19, 10) == 5 || (v73 = sqlite3_column_int(v19, 10), v29 = 11, sqlite3_column_type(v19, 11) == 5) || (v38 = sqlite3_column_double(v19, 11), v29 = 12, sqlite3_column_type(v19, 12) == 5) || (v39 = sqlite3_column_double(v19, 12), v29 = 13, sqlite3_column_type(v19, 13) == 5))
    {
LABEL_17:
      sub_22FD9172C();
      swift_allocError();
      *v40 = v29;
      *(v40 + 4) = 0;
      swift_willThrow();
      (*(v31 + 8))(v23, v32);
      return (*(v79 + 8))(v26, v25);
    }

    v41 = sqlite3_column_double(v19, 13);
    v42 = 14;
    v43 = v19;
    if (sqlite3_column_type(v19, 14) == 5)
    {
      goto LABEL_39;
    }

    v72 = sqlite3_column_double(v19, 14);
    v42 = 15;
    if (sqlite3_column_type(v19, 15) == 5)
    {
      goto LABEL_39;
    }

    v71 = sqlite3_column_double(v19, 15);
    v42 = 16;
    if (sqlite3_column_type(v19, 16) == 5)
    {
      goto LABEL_39;
    }

    v70 = sqlite3_column_double(v19, 16);
    v42 = 17;
    if (sqlite3_column_type(v19, 17) == 5)
    {
      goto LABEL_39;
    }

    v69 = sqlite3_column_double(v19, 17);
    v42 = 18;
    if (sqlite3_column_type(v19, 18) == 5)
    {
      goto LABEL_39;
    }

    v65 = sqlite3_column_double(v19, 18);
    if (sqlite3_column_type(v19, 19) == 5 || !sqlite3_column_text(v19, 19))
    {
      v64 = 0;
      v68 = 0;
    }

    else
    {
      v64 = sub_22FE43114();
      v68 = v44;
    }

    if (sqlite3_column_type(v19, 20) == 5 || !sqlite3_column_text(v19, 20))
    {
      v63 = 0;
      v67 = 0;
    }

    else
    {
      v63 = sub_22FE43114();
      v67 = v45;
    }

    if (sqlite3_column_type(v19, 21) == 5 || !sqlite3_column_text(v19, 21))
    {
      v62 = 0;
      v66 = 0;
    }

    else
    {
      v62 = sub_22FE43114();
      v66 = v46;
    }

    v42 = 22;
    if (sqlite3_column_type(v19, 22) == 5)
    {

LABEL_39:
      sub_22FD9172C();
      swift_allocError();
      *v47 = v42;
      *(v47 + 4) = 0;
      swift_willThrow();
      (*(v86 + 8))(v21, v78);
      return (*(v79 + 8))(v80, v81);
    }

    v61 = v33;
    v75 = v75;
    v73 = v73 == 1;
    v48 = v74 == 1;
    v49 = type metadata accessor for StoredLayoutView();
    v82 = *(swift_getTupleTypeMetadata2() + 48);
    sqlite3_column_double(v19, 22);
    v50 = v76;
    sub_22FE42804();
    v51 = v85;
    (*(v79 + 32))(v85, v80, v81);
    v52 = *(v86 + 32);
    v53 = v78;
    v52(v51 + v49[5], v21, v78);
    *(v51 + v49[6]) = v28;
    *(v51 + v49[7]) = v61;
    *(v51 + v49[8]) = v75;
    *(v51 + v49[9]) = v48;
    *(v51 + v49[10]) = v34;
    *(v51 + v49[11]) = v35;
    *(v51 + v49[12]) = v36;
    *(v51 + v49[13]) = v37;
    *(v51 + v49[14]) = v73;
    *(v51 + v49[15]) = v38;
    *(v51 + v49[16]) = v39;
    *(v51 + v49[17]) = v41;
    *(v51 + v49[18]) = v72;
    *(v51 + v49[19]) = v71;
    *(v51 + v49[20]) = v70;
    *(v51 + v49[21]) = v69;
    *(v51 + v49[22]) = v65;
    v54 = (v51 + v49[23]);
    v55 = v68;
    *v54 = v64;
    v54[1] = v55;
    v56 = (v51 + v49[24]);
    v57 = v67;
    *v56 = v63;
    v56[1] = v57;
    v58 = (v51 + v49[25]);
    v59 = v66;
    *v58 = v62;
    v58[1] = v59;
    v52(v51 + v49[26], v50, v53);
    v87 = v43;
    v60 = v77;
    result = v84(&v87);
    if (v60)
    {
      return sub_22FDAF148(v85, type metadata accessor for StoredLayoutView);
    }
  }

  return result;
}

uint64_t sub_22FDA9084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v65 - v10;
  v12 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v76 = *(v12 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v12);
  v77 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StoredLayoutView();
  v16 = *(a3 + *(result + 32));
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = result;
  v18 = *(a3 + *(result + 28));
  if (v18 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v72 = v12;
  v73 = v16;
  v74 = a2;
  v75 = a4;
  v69 = v18;
  v19 = sub_22FE428C4();
  (*(*(v19 - 8) + 16))(a1, a3, v19);
  v71 = v17[5];
  v20 = type metadata accessor for StoredPhoto(0);
  v21 = v11;
  v22 = v20[5];
  v23 = sub_22FE42854();
  v24 = *(*(v23 - 8) + 16);
  v25 = a1 + v22;
  v26 = v21;
  v24(v25, a3 + v71, v23);
  v24(a1 + v20[6], a3 + v17[26], v23);
  v27 = *(a3 + v17[6]);
  v28 = v17[25];
  v29 = (a3 + v17[24]);
  v30 = *v29;
  v31 = v29[1];
  v32 = *(a3 + v28);
  v33 = *(a3 + v28 + 8);
  v34 = sub_22FD75168(MEMORY[0x277D84F90]);
  v35 = (a3 + v17[23]);
  v36 = *v35;
  v37 = v35[1];
  *(a1 + v20[7]) = v27;
  v38 = (a1 + v20[8]);
  *v38 = v30;
  v38[1] = v31;
  v70 = v31;
  v71 = v33;
  v39 = (a1 + v20[9]);
  *v39 = v32;
  v39[1] = v33;
  *(a1 + v20[10]) = v69;
  *(a1 + v20[11]) = v34;
  v40 = (a1 + v20[12]);
  *v40 = v36;
  v40[1] = v37;
  v69 = v37;
  v41 = sub_22FE42774();
  v42 = *(*(v41 - 8) + 56);
  v43 = 1;
  v42(v77, 1, 1, v41);
  if (*(a3 + v17[9]) == 1)
  {
    v42(v26, 1, 1, v41);
    v43 = 0;
  }

  v44 = *(v76 + 56);
  v45 = v43;
  v46 = v72;
  v44(v26, v45, 1, v72);
  v47 = v17[14];
  v76 = *(a3 + v17[15]);
  v48 = *(a3 + v17[16]);
  v66 = *(a3 + v17[17]);
  v67 = v48;
  v49 = *(a3 + v17[18]);
  v68 = *(a3 + v17[19]);
  v50 = *(a3 + v17[20]);
  v51 = *(a3 + v17[21]);
  v52 = *(a3 + v17[22]);
  v53 = *(a3 + v17[10]);
  v54 = *(a3 + v17[11]);
  v55 = *(a3 + v17[12]);
  v56 = *(a3 + v17[13]);
  v57 = *(a3 + v47);
  v58 = type metadata accessor for StoredPhotoLayout(0);
  v59 = v58[5];
  v60 = v74;
  v44(v74 + v59, 1, 1, v46);
  sub_22FDAF070(v77, v60, type metadata accessor for StoredPhotoLayout.ImageLocation);

  sub_22FDAF0D8(v26, v60 + v59);
  v61 = (v60 + v58[6]);
  v62 = v66;
  v63 = v67;
  *v61 = v76;
  v61[1] = v63;
  v61[2] = v62;
  v61[3] = v49;
  *(v60 + v58[7]) = v73;
  v64 = (v60 + v58[8]);
  *v64 = v68;
  v64[1] = v50;
  v64[2] = v51;
  v64[3] = v52;
  *(v60 + v58[9]) = v53;
  *(v60 + v58[10]) = v54;
  *(v60 + v58[11]) = v55;
  *(v60 + v58[12]) = v56;
  *(v60 + v58[13]) = v57;
  return v75;
}

uint64_t sub_22FDA9514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = &v67 - v13;
  v14 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  MEMORY[0x28223BE20](v14);
  v82 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StoredPhoto(0);
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StoredLayoutView();
  if ((*(a4 + *(result + 32)) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v22 = result;
  v23 = *(a4 + *(result + 28));
  if (v23 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v74 = *(a4 + *(result + 32));
  v75 = a1;
  v76 = a3;
  v77 = a5;
  v78 = a6;
  v71 = v23;
  v24 = sub_22FE428C4();
  (*(*(v24 - 8) + 16))(v20, a4, v24);
  v25 = v22[5];
  v26 = v17[5];
  v27 = sub_22FE42854();
  v28 = *(*(v27 - 8) + 16);
  v28(&v20[v26], a4 + v25, v27);
  v28(&v20[v17[6]], a4 + v22[26], v27);
  v29 = *(a4 + v22[6]);
  v30 = v22[25];
  v31 = (a4 + v22[24]);
  v32 = *v31;
  v33 = v31[1];
  v35 = *(a4 + v30);
  v34 = *(a4 + v30 + 8);
  v36 = sub_22FD75168(MEMORY[0x277D84F90]);
  v37 = (a4 + v22[23]);
  v38 = *v37;
  v39 = v37[1];
  *&v20[v17[7]] = v29;
  v40 = &v20[v17[8]];
  *v40 = v32;
  *(v40 + 1) = v33;
  v72 = v33;
  v73 = v34;
  v41 = &v20[v17[9]];
  *v41 = v35;
  *(v41 + 1) = v34;
  *&v20[v17[10]] = v71;
  *&v20[v17[11]] = v36;
  v42 = &v20[v17[12]];
  *v42 = v38;
  *(v42 + 1) = v39;
  v71 = v39;
  v43 = sub_22FE42774();
  v44 = *(*(v43 - 8) + 56);
  v45 = 1;
  v44(v82, 1, 1, v43);
  v46 = v83;
  if (*(a4 + v22[9]) == 1)
  {
    v44(v83, 1, 1, v43);
    v45 = 0;
  }

  v47 = *(v79 + 56);
  v48 = v46;
  v49 = v80;
  v47(v48, v45, 1, v80);
  v50 = v22[14];
  v79 = *(a4 + v22[15]);
  v51 = v22[17];
  v69 = *(a4 + v22[16]);
  v68 = *(a4 + v51);
  v52 = *(a4 + v22[18]);
  v70 = *(a4 + v22[19]);
  v53 = *(a4 + v22[20]);
  v54 = *(a4 + v22[21]);
  v55 = *(a4 + v22[22]);
  v56 = *(a4 + v22[10]);
  v57 = *(a4 + v22[11]);
  v58 = *(a4 + v22[12]);
  v59 = *(a4 + v22[13]);
  v60 = *(a4 + v50);
  v61 = type metadata accessor for StoredPhotoLayout(0);
  v62 = v61[5];
  v63 = v81;
  v47(v81 + v62, 1, 1, v49);
  sub_22FDAF070(v82, v63, type metadata accessor for StoredPhotoLayout.ImageLocation);

  sub_22FDAF0D8(v83, v63 + v62);
  v64 = (v63 + v61[6]);
  v65 = v69;
  *v64 = v79;
  v64[1] = v65;
  v64[2] = v68;
  v64[3] = v52;
  *(v63 + v61[7]) = v74;
  v66 = (v63 + v61[8]);
  *v66 = v70;
  v66[1] = v53;
  v66[2] = v54;
  v66[3] = v55;
  *(v63 + v61[9]) = v56;
  *(v63 + v61[10]) = v57;
  *(v63 + v61[11]) = v58;
  *(v63 + v61[12]) = v59;
  *(v63 + v61[13]) = v60;
  sub_22FDAF070(v20, v75, type metadata accessor for StoredPhoto);
  return (*(*(v78 - 8) + 16))(v76, v77);
}

uint64_t sub_22FDA9A68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void *a3@<X5>, uint64_t a4@<X8>)
{
  type metadata accessor for StoredLayoutView();
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  type metadata accessor for StoredPhoto(255);
  type metadata accessor for StoredPhotoLayout(255);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  result = a2(a4, a4 + *(TupleTypeMetadata3 + 48), a4 + *(TupleTypeMetadata3 + 64), a1, a1 + v9);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_22FDA9B4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  return sub_22FDA9A68(a1, *(v3 + 32), a2, a3);
}

uint64_t sub_22FDA9B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StoredPhoto(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDAEFA4(a1, v15, type metadata accessor for StoredPhoto);
  (*(v8 + 16))(v11, a2, a3);
  return sub_22FDA9CC8(v15, v11, a3, a4);
}

uint64_t sub_22FDA9CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22FDAF070(a1, a4, type metadata accessor for StoredPhoto);
  v7 = _s19ExtraPhotoContainerVMa();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t sub_22FDA9D6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for StoredPhoto(255);
  type metadata accessor for StoredPhotoLayout(255);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a1, a1 + *(TupleTypeMetadata3 + 48), a1 + *(TupleTypeMetadata3 + 64));
}

uint64_t sub_22FDA9E10(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_22FDA9D6C(a1, *(v1 + 32));
}

uint64_t sub_22FDA9E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41B8, &qword_22FE4A1B0);
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v51);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v46 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = type metadata accessor for StoredPhoto(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v43 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDAEFA4(a2, v43, type metadata accessor for StoredPhoto);
  v19 = *(a3 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v41 = v16;
    v42 = a2;
    v54 = MEMORY[0x277D84F90];
    sub_22FD92388(0, v19, 0);
    v20 = v54;
    v21 = a3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v45 = *(v5 + 72);
    v22 = v47;
    do
    {
      v53 = v19;
      v23 = v20;
      v24 = v15;
      v25 = v46;
      sub_22FD764B4(v21, v46, &qword_27DAE41B8, &qword_22FE4A1B0);
      v52 = *(v49 + 48);
      sub_22FD764B4(v25, v22, &qword_27DAE41B8, &qword_22FE4A1B0);
      v26 = v51;
      v27 = v22 + *(v51 + 48);
      v28 = *(v27 + *(type metadata accessor for StoredPhotoLayout(0) + 28));
      sub_22FDAF148(v27, type metadata accessor for StoredPhotoLayout);
      *v24 = v28;
      v29 = v25;
      v15 = v24;
      v20 = v23;
      v30 = v50;
      sub_22FD93E04(v29, v50, &qword_27DAE41B8, &qword_22FE4A1B0);
      sub_22FDAF070(v30 + *(v26 + 48), &v15[v52], type metadata accessor for StoredPhotoLayout);
      sub_22FDAF148(v30, type metadata accessor for StoredPhoto);
      sub_22FDAF148(v22, type metadata accessor for StoredPhoto);
      v54 = v23;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22FD92388(v31 > 1, v32 + 1, 1);
        v20 = v54;
      }

      *(v20 + 16) = v32 + 1;
      sub_22FD93E04(v15, v20 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v32, &qword_27DAE2CE8, &unk_22FE4A850);
      v21 += v45;
      v19 = v53 - 1;
    }

    while (v53 != 1);
    v16 = v41;
    a2 = v42;
  }

  if (*(v20 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
    v33 = sub_22FE43B04();
  }

  else
  {
    v33 = MEMORY[0x277D84F98];
  }

  v54 = v33;
  sub_22FDADFD8(v20, 1, &v54);

  v34 = v54;
  v35 = *(v16 + 44);
  v36 = v43;
  v37 = *(v43 + v35);

  *(v36 + v35) = v34;
  sub_22FDAEFA4(v36, v44, type metadata accessor for StoredPhoto);
  v38 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010) + 36));
  sub_22FDAF148(v36, type metadata accessor for StoredPhoto);
  return v38;
}

uint64_t sub_22FDAA310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for StoredPhoto(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22FDAEFA4(a3, v15, type metadata accessor for StoredPhoto);
  v30 = a4;
  v28 = a5;
  v29 = a6;
  type metadata accessor for StoredPhotoLayout(255);
  swift_getTupleTypeMetadata3();
  v16 = sub_22FE43354();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_22FDA5834(sub_22FDAF1B0, v27, v16, v17, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);
  if (*(v20 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
    v21 = sub_22FE43B04();
  }

  else
  {
    v21 = MEMORY[0x277D84F98];
  }

  v30 = v21;
  sub_22FDADFD8(v20, 1, &v30);

  v22 = v30;
  v23 = *(v12 + 44);
  v24 = *&v15[v23];

  *&v15[v23] = v22;
  sub_22FDAEFA4(v15, a1, type metadata accessor for StoredPhoto);
  v25 = _s19ExtraPhotoContainerVMa();
  (*(*(a5 - 8) + 16))(a2, a3 + *(v25 + 36), a5);
  return sub_22FDAF148(v15, type metadata accessor for StoredPhoto);
}

uint64_t sub_22FDAA598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24 = a3;
  type metadata accessor for StoredPhoto(255);
  v5 = type metadata accessor for StoredPhotoLayout(255);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = *(TupleTypeMetadata3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850) + 48);
  v14 = *(v7 + 16);
  v14(v13, a1, TupleTypeMetadata3);
  v15 = &v13[*(TupleTypeMetadata3 + 48)];
  v23 = *(TupleTypeMetadata3 + 64);
  v16 = *(v15 + *(v5 + 28));
  sub_22FDAF148(v15, type metadata accessor for StoredPhotoLayout);
  v17 = v24;
  *v24 = v16;
  v14(v11, a1, TupleTypeMetadata3);
  v18 = *(TupleTypeMetadata3 + 64);
  sub_22FDAF070(&v11[*(TupleTypeMetadata3 + 48)], v17 + v22, type metadata accessor for StoredPhotoLayout);
  v19 = *(*(a2 - 8) + 8);
  v19(&v11[v18], a2);
  sub_22FDAF148(v11, type metadata accessor for StoredPhoto);
  v19(&v13[v23], a2);
  return sub_22FDAF148(v13, type metadata accessor for StoredPhoto);
}

uint64_t sub_22FDAA7DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  _s19ExtraPhotoContainerVMa();
  type metadata accessor for StoredPhoto(255);
  type metadata accessor for StoredPhotoLayout(255);
  swift_getTupleTypeMetadata3();
  sub_22FE43354();
  v6 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, v6);
}

uint64_t sub_22FDAA8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_22FDAA7DC(a1, *(v2 + 32), a2);
}

uint64_t sub_22FDAA8F8(__int128 *a1, uint64_t a2)
{
  StoredPhoto.hash(into:)(a1);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = v2 + *(a2 + 36);
  return sub_22FE42FE4();
}

uint64_t sub_22FDAA93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((_s10PhotosFace11StoredPhotoV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(_s19ExtraPhotoContainerVMa() + 36);
  v6 = *(a4 + 8);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDAA9AC(uint64_t a1)
{
  sub_22FE43DB4();
  StoredPhoto.hash(into:)(v7);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v1 + *(a1 + 36);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDAAA0C(uint64_t a1, uint64_t a2)
{
  sub_22FE43DB4();
  sub_22FDAA8F8(v4, a2);
  return sub_22FE43E04();
}

uint64_t sub_22FDAB58C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for DatabaseBinding();
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v35 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v33 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = (&v33 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v14 = *(v4 + 72);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22FE4A410;
  v17 = v16 + v15;
  v18 = sub_22FE428C4();
  (*(*(v18 - 8) + 16))(v16 + v15, a1, v18);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for StoredPhoto(0);
  v20 = v19[5];
  v21 = sub_22FE42854();
  v22 = *(v21 - 8);
  v38 = *(v22 + 16);
  v39 = v21;
  v37 = v22 + 16;
  v38(v17 + v14, a1 + v20);
  swift_storeEnumTagMultiPayload();
  *(v17 + 2 * v14) = *(a1 + v19[7]);
  result = swift_storeEnumTagMultiPayload();
  v24 = *(a1 + v19[10]);
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v36 = v16;
    *(v17 + 3 * v14) = v24;
    swift_storeEnumTagMultiPayload();
    v25 = (a1 + v19[12]);
    v26 = v25[1];
    if (v26)
    {
      *v13 = *v25;
      v13[1] = v26;
      swift_storeEnumTagMultiPayload();
      sub_22FDAF070(v13, v17 + 4 * v14, type metadata accessor for DatabaseBinding);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
    }

    v27 = (a1 + v19[8]);
    v28 = v27[1];
    if (v28)
    {
      *v11 = *v27;
      v11[1] = v28;
      swift_storeEnumTagMultiPayload();
      sub_22FDAF070(v11, v17 + 5 * v14, type metadata accessor for DatabaseBinding);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
    }

    v29 = (a1 + v19[9]);
    v30 = v29[1];
    if (v30)
    {
      v31 = *v29;
      v34 = a1;
      v32 = v35;
      *v35 = v31;
      *(v32 + 8) = v30;
      swift_storeEnumTagMultiPayload();
      a1 = v34;
      sub_22FDAF070(v32, v17 + 6 * v14, type metadata accessor for DatabaseBinding);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
    }

    (v38)(v17 + 7 * v14, a1 + v19[6], v39);
    swift_storeEnumTagMultiPayload();
    *(v17 + 8 * v14) = 17;
    swift_storeEnumTagMultiPayload();
    *v40 = v36;
  }

  return result;
}

uint64_t sub_22FDAB9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v10 = *(type metadata accessor for DatabaseBinding() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22FE4A730;
  v14 = v13 + v12;
  v15 = sub_22FE428C4();
  (*(*(v15 - 8) + 16))(v14, a3, v15);
  result = swift_storeEnumTagMultiPayload();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v14 + v11) = a1;
    swift_storeEnumTagMultiPayload();
    v17 = type metadata accessor for StoredPhotoLayout(0);
    sub_22FD764B4(a2 + v17[5], v9, &qword_27DAE42D8, &unk_22FE4BA30);
    v18 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
    v19 = (*(*(v18 - 8) + 48))(v9, 1, v18) != 1;
    v23 = v13;
    sub_22FD93E6C(v9, &qword_27DAE42D8, &unk_22FE4BA30);
    *(v14 + 2 * v11) = v19;
    swift_storeEnumTagMultiPayload();
    *(v14 + 3 * v11) = *(a2 + v17[9]);
    swift_storeEnumTagMultiPayload();
    *(v14 + 4 * v11) = *(a2 + v17[10]);
    swift_storeEnumTagMultiPayload();
    *(v14 + 5 * v11) = *(a2 + v17[11]);
    swift_storeEnumTagMultiPayload();
    *(v14 + 6 * v11) = *(a2 + v17[12]);
    swift_storeEnumTagMultiPayload();
    *(v14 + 7 * v11) = *(a2 + v17[13]);
    swift_storeEnumTagMultiPayload();
    v20 = (a2 + v17[6]);
    *(v14 + 8 * v11) = *v20;
    swift_storeEnumTagMultiPayload();
    *(v14 + 9 * v11) = v20[1];
    swift_storeEnumTagMultiPayload();
    *(v14 + 10 * v11) = v20[2];
    swift_storeEnumTagMultiPayload();
    *(v14 + 11 * v11) = v20[3];
    swift_storeEnumTagMultiPayload();
    v21 = (a2 + v17[8]);
    *(v14 + 12 * v11) = *v21;
    swift_storeEnumTagMultiPayload();
    *(v14 + 13 * v11) = v21[1];
    swift_storeEnumTagMultiPayload();
    *(v14 + 14 * v11) = v21[2];
    swift_storeEnumTagMultiPayload();
    *(v14 - v11 + 16 * v11) = v21[3];
    swift_storeEnumTagMultiPayload();
    return v23;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotosFaceDatabase.delete(identifiers:)(Swift::OpaquePointer identifiers)
{
  v17 = sub_22FDAE4A8(0x3F, 0xE100000000000000, *(identifiers._rawValue + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4230, &qword_22FE4A748);
  sub_22FDAE544();
  v4 = sub_22FE42FF4();
  v6 = v5;

  v7 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v8 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v8)
  {
    sub_22FD9E790();
    if (v2)
    {

      return;
    }

    v8 = *(v1 + v7);
    if (!v8)
    {

      sub_22FD91684();
      swift_allocError();
      *v14 = 0;
LABEL_9:
      swift_willThrow();
      return;
    }
  }

  v17 = v8;
  v9._countAndFlagsBits = 0x6E69676562;
  v9._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v9);
  v11 = v10;
  if (v10)
  {

    goto LABEL_5;
  }

  v17 = v8;
  sub_22FDABF54(&v17, identifiers._rawValue, v4, v6);

  v17 = v8;
  v15._countAndFlagsBits = 0x74696D6D6F63;
  v15._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v15);
  v11 = v16;
  if (v16)
  {
LABEL_5:
    v17 = v8;
    v12._countAndFlagsBits = 0x6B6361626C6C6F72;
    v12._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v12);
    if (v13)
    {

      return;
    }

    goto LABEL_9;
  }
}

uint64_t PhotosFaceDatabase.storedPhotos()()
{
  v7 = *MEMORY[0x277D85DE8];
  v1[2] = v0;
  v2 = sub_22FE428C4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FDAC420);
}

uint64_t sub_22FDAC420()
{
  v86 = v0;
  v85 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v11 = 0;
      goto LABEL_46;
    }
  }

  *__dst = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_44:
    *__dst = v3;
    v68._countAndFlagsBits = 0x6B6361626C6C6F72;
    v68._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v68);
    if (v69)
    {

LABEL_47:
      v71 = v0[5];
      v70 = v0[6];

      v72 = v0[1];
      v73 = *MEMORY[0x277D85DE8];

      return v72();
    }

LABEL_46:
    swift_willThrow();
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v7 = *(type metadata accessor for DatabaseBinding() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22FE49F60;
  *(v10 + v9) = 17;
  swift_storeEnumTagMultiPayload();
  *__dst = v3;
  v12 = sub_22FDB08B0();
  sub_22FDB31B8(v10, v12);
  v13 = v0[4];
  swift_setDeallocating();
  sub_22FDAF148(v10 + v9, type metadata accessor for DatabaseBinding);
  swift_deallocClassInstance();
  sub_22FDB33A0(v12);
  v81 = (v13 + 16);
  v82 = v13;
  for (i = MEMORY[0x277D84F90]; ; (*(v82 + 32))(i + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v55, v56, v57))
  {
    v15 = sqlite3_step(v12);
    if (v15 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v12, 0) == 5 || (v16 = sqlite3_column_blob(v12, 0)) == 0)
    {
      sub_22FD9172C();
      v6 = swift_allocError();
      *v60 = 0;
      *(v60 + 4) = 0;
      swift_willThrow();
      goto LABEL_42;
    }

    v17 = v16;
    v18 = sqlite3_column_bytes(v12, 0);
    if (!v18)
    {
      v23 = 0;
      v24 = 0xC000000000000000;
LABEL_41:
      sub_22FD91780();
      v6 = swift_allocError();
      *v67 = 1;
      swift_willThrow();
      sub_22FD917D4(v23, v24);
LABEL_42:

LABEL_43:
      sub_22FDB35E0(v12);
      goto LABEL_44;
    }

    v19 = v18;
    if (v18 < 15)
    {
      memset(__dst, 0, sizeof(__dst));
      v84 = v18;
      memcpy(__dst, v17, v18);
      v23 = *__dst;
      v19 = v84;
      v24 = v80 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v84 << 48);
      v80 = v24;
    }

    else
    {
      v20 = sub_22FE42694();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      if (v19 == 0x7FFFFFFF)
      {
        v66 = sub_22FE42644();
        sub_22FE427A4();
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_22FE49F80;
        v24 = v66 | 0x8000000000000000;
        goto LABEL_41;
      }

      v23 = v19 << 32;
      v24 = sub_22FE42644() | 0x4000000000000000;
    }

    if (v19 != 16)
    {
      goto LABEL_41;
    }

    v25 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_28;
      }

      v26 = *(v23 + 16);
      v27 = sub_22FE42654();
      if (!v27)
      {
        sub_22FE42674();
LABEL_59:
        __break(1u);
LABEL_60:
        result = sub_22FE42674();
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      v28 = v27;
      v29 = sub_22FE42684();
      if (__OFSUB__(v26, v29))
      {
        goto LABEL_56;
      }

      v30 = (v26 - v29 + v28);
      sub_22FE42674();
      if (!v30)
      {
        goto LABEL_59;
      }

      goto LABEL_27;
    }

    if (v25)
    {
      if (v23 > v23 >> 32)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      v31 = sub_22FE42654();
      if (!v31)
      {
        goto LABEL_60;
      }

      v32 = v31;
      v33 = sub_22FE42684();
      if (__OFSUB__(v23, v33))
      {
        goto LABEL_57;
      }

      v30 = (v23 - v33 + v32);
      result = sub_22FE42674();
      if (!v30)
      {
        goto LABEL_61;
      }

LABEL_27:
      v35 = *v30;
      v36 = v30[1];
      v37 = v30[2];
      v38 = v30[3];
      v39 = v30[4];
      v40 = v30[5];
      v41 = v30[6];
      v42 = v30[7];
      v43 = v30[8];
      v44 = v30[9];
      v45 = v30[10];
      v46 = v30[11];
      v47 = v30[12];
      v48 = v30[13];
      v49 = v30[14];
      v50 = v30[15];
    }

LABEL_28:
    v52 = v0[5];
    v51 = v0[6];
    v53 = v0[3];
    sub_22FE42894();
    sub_22FD917D4(v23, v24);
    (*v81)(v52, v51, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_22FD91828(0, i[2] + 1, 1, i);
    }

    v55 = i[2];
    v54 = i[3];
    if (v55 >= v54 >> 1)
    {
      i = sub_22FD91828(v54 > 1, v55 + 1, 1, i);
    }

    v56 = v0[5];
    v57 = v0[3];
    (*(v82 + 8))(v0[6], v57);
    i[2] = v55 + 1;
  }

  if (v15 != 101)
  {
    v61 = v15;

    v62 = v61;
    if (sqlite3_errstr(v61))
    {
      v63 = sub_22FE43104();
      v65 = v64;
    }

    else
    {
      v65 = 0xE300000000000000;
      v63 = 4271950;
    }

    v78 = v62 | 0xA000000000000000;
    sub_22FD916D8();
    v6 = swift_allocError();
    *v79 = v78;
    v79[1] = v63;
    v79[2] = v65;
    swift_willThrow();
    goto LABEL_43;
  }

  sub_22FDB35E0(v12);
  *__dst = v3;
  v58._countAndFlagsBits = 0x74696D6D6F63;
  v58._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v58);
  if (v59)
  {
    v6 = v59;

    goto LABEL_44;
  }

  v75 = v0[5];
  v74 = v0[6];

  v76 = v0[1];
  v77 = *MEMORY[0x277D85DE8];

  return v76(i);
}

uint64_t PhotosFaceDatabase.timePositions(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22FE428C4();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4178, &qword_22FE4A770);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for DatabaseBinding();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDACE44);
}

uint64_t sub_22FDACE44()
{
  v1 = v0;
  v2 = v0[4];
  v3 = *(v1[3] + 16);
  v78 = v1;
  v1[2] = sub_22FDAE4A8(0x3F, 0xE100000000000000, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4230, &qword_22FE4A748);
  sub_22FDAE544();
  v4 = sub_22FE42FF4();
  v6 = v5;

  v7 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  if (!*(v2 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection))
  {
    v11 = v1[4];
    sub_22FD9E790();
    if (!*(v2 + v7))
    {

      sub_22FD91684();
      swift_allocError();
      *v37 = 0;
      goto LABEL_14;
    }
  }

  v8._countAndFlagsBits = 0x6E69676562;
  v8._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v8);
  if (v9)
  {
    v10 = v9;
LABEL_11:

LABEL_12:
    v29._countAndFlagsBits = 0x6B6361626C6C6F72;
    v29._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v29);
    if (v30)
    {

LABEL_15:
      v31 = v78[14];
      v32 = v78[10];
      v33 = v78[11];
      v34 = v78[7];

      v35 = v78[1];

      return v35();
    }

LABEL_14:
    swift_willThrow();
    goto LABEL_15;
  }

  v13 = v78[12];
  v12 = v78[13];
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD0000000000000C0, 0x800000022FE478B0);
  MEMORY[0x23190ACF0](v4, v6);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v14 = *(v12 + 72);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v81 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22FE49F60;
  *(v16 + v15) = 17;
  v79 = v15;
  swift_storeEnumTagMultiPayload();
  v17 = MEMORY[0x277D84F90];
  if (v3)
  {
    v18 = v78[6];
    v19 = v78[3];
    v83 = MEMORY[0x277D84F90];
    sub_22FD924B0(0, v3, 0);
    v21 = *(v18 + 16);
    v18 += 16;
    v20 = v21;
    v17 = v83;
    v22 = v19 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v23 = *(v18 + 56);
    do
    {
      v24 = v78[12];
      v20(v78[14], v22, v78[5]);
      swift_storeEnumTagMultiPayload();
      v26 = *(v83 + 16);
      v25 = *(v83 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22FD924B0(v25 > 1, v26 + 1, 1);
      }

      v27 = v78[14];
      *(v83 + 16) = v26 + 1;
      sub_22FDAF070(v27, v83 + v79 + v26 * v81, type metadata accessor for DatabaseBinding);
      v22 += v23;
      --v3;
    }

    while (v3);
  }

  sub_22FDADA80(v17, sub_22FD919C8, type metadata accessor for DatabaseBinding);
  v28 = v16;
  v38 = sub_22FDB08B0();

  sub_22FDB31B8(v28, v38);
  v80 = v78[8];
  v82 = v78[9];
  v39 = v78[6];

  sub_22FDB33A0(v38);
  v40 = MEMORY[0x277D84F90];
  v77 = (v39 + 32);
  while (1)
  {
    v41 = sqlite3_step(v38);
    if (v41 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v38, 0) == 5 || (v42 = sqlite3_column_blob(v38, 0)) == 0)
    {
      sub_22FD9172C();
      v10 = swift_allocError();
      *v60 = 0;
      *(v60 + 4) = 0;
      swift_willThrow();
      goto LABEL_40;
    }

    v43 = v42;
    v44 = v78[7];
    v45 = sqlite3_column_bytes(v38, 0);
    v46 = sub_22FDB285C(v43, v45);
    UUID.init(serialized:version:)(v46, v47);
    if (sqlite3_column_type(v38, 1) == 5)
    {
      v66 = v78[6];
      v67 = v78[7];
      v68 = v78[5];
      sub_22FD9172C();
      v10 = swift_allocError();
      v70 = 1;
LABEL_39:
      *v69 = v70;
      *(v69 + 4) = 0;
      swift_willThrow();
      (*(v66 + 8))(v67, v68);
LABEL_40:

LABEL_41:
      sub_22FDB35E0(v38);
      goto LABEL_12;
    }

    v48 = sqlite3_column_int(v38, 1);
    if (sqlite3_column_type(v38, 2) == 5)
    {
      v66 = v78[6];
      v67 = v78[7];
      v68 = v78[5];
      sub_22FD9172C();
      v10 = swift_allocError();
      v70 = 2;
      goto LABEL_39;
    }

    v49 = v48;
    result = sqlite3_column_int(v38, 2);
    if (v48 < 0)
    {
      __break(1u);
      return result;
    }

    v51 = v78[10];
    v50 = v78[11];
    v52 = result == 1;
    v53 = *(v80 + 48);
    v54 = *(v80 + 64);
    (*v77)(v50, v78[7], v78[5]);
    *(v50 + v53) = v49;
    *(v50 + v54) = v52;
    sub_22FD764B4(v50, v51, &qword_27DAE4178, &qword_22FE4A770);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_22FD91B98(0, v40[2] + 1, 1, v40);
    }

    v56 = v40[2];
    v55 = v40[3];
    if (v56 >= v55 >> 1)
    {
      v40 = sub_22FD91B98(v55 > 1, v56 + 1, 1, v40);
    }

    v57 = v78[10];
    sub_22FD93E6C(v78[11], &qword_27DAE4178, &qword_22FE4A770);
    v40[2] = v56 + 1;
    sub_22FD93E04(v57, v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v56, &qword_27DAE4178, &qword_22FE4A770);
  }

  if (v41 != 101)
  {
    v61 = v41;

    v62 = v61;
    if (sqlite3_errstr(v61))
    {
      v63 = sub_22FE43104();
      v65 = v64;
    }

    else
    {
      v65 = 0xE300000000000000;
      v63 = 4271950;
    }

    sub_22FD916D8();
    v10 = swift_allocError();
    *v76 = v62 | 0xA000000000000000;
    v76[1] = v63;
    v76[2] = v65;
    swift_willThrow();
    goto LABEL_41;
  }

  sub_22FDB35E0(v38);
  v58._countAndFlagsBits = 0x74696D6D6F63;
  v58._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v58);
  if (v59)
  {
    v10 = v59;
    goto LABEL_11;
  }

  v71 = v78[14];
  v73 = v78[10];
  v72 = v78[11];
  v74 = v78[7];

  v75 = v78[1];

  return v75(v40);
}

uint64_t sub_22FDAD6D0()
{
  v1 = *(v0 + 16);
  v2 = PhotosFaceDatabase.queryPhotos(sql:bindings:)(0xD000000000000375, 0x800000022FE47980, MEMORY[0x277D84F90]);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22FDAD798(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_22FD91850(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_22FDC1C54(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_22FD91850((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_22FDAF1A8();
  *v1 = v4;
  return result;
}

uint64_t sub_22FDADA80(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22FDADBC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010);
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41B8, &qword_22FE4A1B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - v10;
  v11 = MEMORY[0x277D84F98];
  v48 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v40 = *(v9 + 80);
  v13 = *(v9 + 72);
  v44 = (v40 + 32) & ~v40;
  v14 = a1 + v44;
  v39 = xmmword_22FE49F60;
  v41 = v5;
  v42 = v2;
  while (1)
  {
    v15 = v46;
    sub_22FD764B4(v14, v46, &qword_27DAE41B8, &qword_22FE4A1B0);
    v16 = *(v15 + *(v5 + 64));
    v17 = v15;
    v18 = v47;
    sub_22FDAEFA4(v17, v47, type metadata accessor for StoredPhoto);
    *(v18 + *(v2 + 36)) = v16;
    v20 = sub_22FD7475C(v18);
    v21 = v11[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v11[3] < v23)
    {
      sub_22FDDD574(v23, 1);
      v11 = v48;
      v25 = sub_22FD7475C(v47);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_19;
      }

      v20 = v25;
    }

    if (v24)
    {
      sub_22FD93E6C(v47, &qword_27DAE2CE0, &unk_22FE49010);
      v27 = v11[7];
      sub_22FD93E04(v46, v45, &qword_27DAE41B8, &qword_22FE4A1B0);
      v28 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_22FD91980(0, v28[2] + 1, 1, v28);
        *(v27 + 8 * v20) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_22FD91980(v30 > 1, v31 + 1, 1, v28);
        *(v27 + 8 * v20) = v28;
      }

      v28[2] = v31 + 1;
      sub_22FD93E04(v45, v28 + v44 + v31 * v13, &qword_27DAE41B8, &qword_22FE4A1B0);
      v5 = v41;
      v2 = v42;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41B0, &unk_22FE4A860);
      v32 = v44;
      v33 = swift_allocObject();
      *(v33 + 16) = v39;
      sub_22FD93E04(v46, v33 + v32, &qword_27DAE41B8, &qword_22FE4A1B0);
      v11[(v20 >> 6) + 8] |= 1 << v20;
      sub_22FD93E04(v47, v11[6] + *(v43 + 72) * v20, &qword_27DAE2CE0, &unk_22FE49010);
      *(v11[7] + 8 * v20) = v33;
      v34 = v11[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_18;
      }

      v11[2] = v36;
    }

    v14 += v13;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FDADFD8(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for StoredPhotoLayout(0);
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v50 - v17);
  v19 = *(a1 + 16);
  if (!v19)
  {
    return result;
  }

  LODWORD(v52) = a2;
  v20 = *(result + 48);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v54 = *(v16 + 72);
  v50 = v21;
  v51 = a1;
  sub_22FD764B4(a1 + v21, &v50 - v17, &qword_27DAE2CE8, &unk_22FE4A850);
  v22 = *v18;
  v23 = v20;
  sub_22FDAF070(v18 + v20, v12, type metadata accessor for StoredPhotoLayout);
  v24 = *a3;
  v26 = sub_22FD746AC(v22);
  v27 = v24[2];
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    goto LABEL_22;
  }

  LOBYTE(v3) = v25;
  if (v24[3] >= v29)
  {
    if ((v52 & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_7:
      v52 = v19;
      v33 = *a3;
      if (v3)
      {
        v26 *= *(v55 + 72);
        v34 = v53;
        sub_22FDAEFA4(v33[7] + v26, v53, type metadata accessor for StoredPhotoLayout);
        sub_22FDAF148(v12, type metadata accessor for StoredPhotoLayout);
        result = sub_22FDAF00C(v34, v33[7] + v26);
      }

      else
      {
        v33[(v26 >> 6) + 8] |= 1 << v26;
        *(v33[6] + 8 * v26) = v22;
        result = sub_22FDAF070(v12, v33[7] + *(v55 + 72) * v26, type metadata accessor for StoredPhotoLayout);
        v35 = v33[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v33[2] = v37;
      }

      v19 = v52 - 1;
      if (v52 == 1)
      {
        return result;
      }

      v3 = v51 + v54 + v50;
      while (1)
      {
        sub_22FD764B4(v3, v18, &qword_27DAE2CE8, &unk_22FE4A850);
        v22 = *v18;
        sub_22FDAF070(v18 + v23, v12, type metadata accessor for StoredPhotoLayout);
        v39 = *a3;
        v40 = sub_22FD746AC(v22);
        v42 = v39[2];
        v43 = (v41 & 1) == 0;
        v36 = __OFADD__(v42, v43);
        v44 = v42 + v43;
        if (v36)
        {
          break;
        }

        v26 = v41;
        if (v39[3] < v44)
        {
          sub_22FDDD218(v44, 1);
          v45 = *a3;
          v40 = sub_22FD746AC(v22);
          if ((v26 & 1) != (v46 & 1))
          {
            goto LABEL_25;
          }
        }

        v47 = *a3;
        if (v26)
        {
          v26 = *(v55 + 72) * v40;
          v38 = v53;
          sub_22FDAEFA4(v47[7] + v26, v53, type metadata accessor for StoredPhotoLayout);
          sub_22FDAF148(v12, type metadata accessor for StoredPhotoLayout);
          result = sub_22FDAF00C(v38, v47[7] + v26);
        }

        else
        {
          v47[(v40 >> 6) + 8] |= 1 << v40;
          *(v47[6] + 8 * v40) = v22;
          result = sub_22FDAF070(v12, v47[7] + *(v55 + 72) * v40, type metadata accessor for StoredPhotoLayout);
          v48 = v47[2];
          v36 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v36)
          {
            goto LABEL_23;
          }

          v47[2] = v49;
        }

        v3 += v54;
        if (!--v19)
        {
          return result;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_22FDDE8C8();
    }
  }

  sub_22FDDD218(v29, v52 & 1);
  v30 = *a3;
  v31 = sub_22FD746AC(v22);
  if ((v3 & 1) == (v32 & 1))
  {
    v26 = v31;
    goto LABEL_7;
  }

LABEL_25:
  type metadata accessor for PFCTimePosition(0);
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

void *sub_22FDAE4A8(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_22FE432E4();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_22FDAE544()
{
  result = qword_27DAE4238[0];
  if (!qword_27DAE4238[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE4230, &qword_22FE4A748);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAE4238);
  }

  return result;
}

uint64_t sub_22FDAE5A8(uint64_t a1)
{
  result = type metadata accessor for StoredPhoto(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FDAE630(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_22FE428C4() - 8);
  v7 = *(v6 + 84);
  v8 = sub_22FE42854();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(*(v8 - 8) + 64);
  v17 = *(v13 + 80);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v6 + 64) + v15;
  v20 = v16 + v15;
  v21 = (v16 + v15 + (v19 & ~v15)) & ~v15;
  v22 = v16 + 7;
  v23 = ((((((((((((v22 + v21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 16;
  if (a2 <= v18)
  {
    goto LABEL_34;
  }

  v24 = (v23 & ~v17) + *(v13 + 64);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_13;
  }

  v28 = ((a2 - v18 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_34;
      }

LABEL_21:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = (v23 & ~v17) + *(v13 + 64);
        }

        else
        {
          v30 = 4;
        }

        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v31 = *a1;
          }
        }

        else if (v30 == 1)
        {
          v31 = *a1;
        }

        else
        {
          v31 = *a1;
        }
      }

      else
      {
        v31 = 0;
      }

      return v18 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if (v12 < v14)
  {
    v32 = *(v13 + 48);
    v33 = ((a1 + v23) & ~v17);
    v34 = *(v13 + 84);
LABEL_38:

    return v32(v33, v34);
  }

  if (v7 == v12)
  {
    v32 = *(v6 + 48);
    v33 = a1;
    v34 = v7;
    goto LABEL_38;
  }

  if (v10 == v12)
  {
    v35 = *(v9 + 48);

    return v35((a1 + v19) & ~v15);
  }

  else
  {
    v36 = *((((((((((v22 + ((v20 + ((a1 + v19) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    return (v36 + 1);
  }
}