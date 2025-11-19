uint64_t sub_266AD53EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736163646F70 && a2 == 0xE900000000000064;
  if (v4 || (sub_266AD867C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266AD867C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266AD54F4(char a1)
{
  sub_266AD86AC();
  MEMORY[0x26D5E9590](a1 & 1);
  return sub_266AD86CC();
}

uint64_t sub_266AD553C(char a1)
{
  if (a1)
  {
    return 1701669236;
  }

  else
  {
    return 0x4974736163646F70;
  }
}

uint64_t sub_266AD558C()
{
  v1 = *v0;
  sub_266AD86AC();
  MEMORY[0x26D5E9590](v1);
  return sub_266AD86CC();
}

uint64_t sub_266AD55D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AD53EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AD5618(uint64_t a1)
{
  v2 = sub_266AD805C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AD5654(uint64_t a1)
{
  v2 = sub_266AD805C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AD5690(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD148, &qword_266AD8B78);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AD805C();
  sub_266AD86EC();
  v13[15] = 0;
  sub_266AD865C();
  if (!v1)
  {
    v13[14] = 1;
    sub_266AD866C();
  }

  return (*(v6 + 8))(v10, v3);
}

double sub_266AD5804(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD150, &qword_266AD8B80);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AD805C();
  sub_266AD86DC();
  if (!v1)
  {
    sub_266AD863C();
    sub_266AD864C();
    v2 = v10;
    v11 = OUTLINED_FUNCTION_3();
    v12(v11);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

void sub_266AD59BC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_266AD5804(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_266AD59EC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_266AD5690(a1);
}

uint64_t sub_266AD5A28()
{
  v0 = type metadata accessor for DBKnowledgeStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_266AD6B7C();
  qword_2800BD548 = v3;
  return result;
}

uint64_t static DBKnowledgeStore.instance.getter()
{
  if (_MergedGlobals != -1)
  {
    swift_once();
  }
}

uint64_t sub_266AD5AC4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD120, &qword_266AD8AA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_266AD84CC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v16 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  sub_266AD6A34();
  v19 = sub_266AD85BC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v19);
  (*(v12 + 16))(v16, v18, v9);
  v20 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v2;
  *(v21 + 5) = a1;
  *(v21 + 6) = a2;
  (*(v12 + 32))(&v21[v20], v16, v9);

  sub_266AD6414(0, 0, v8, &unk_266AD8AB8, v21);

  return (*(v12 + 8))(v18, v9);
}

uint64_t sub_266AD5CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_266AD5CF0, 0, 0);
}

uint64_t sub_266AD5CF0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_266AD5DEC;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_266AD5DEC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v2 + 56);
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = sub_266AD5F0C;
  }

  else
  {
    v8 = *(v3 + 48);

    v7 = sub_266AD5EF8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_266AD5F0C()
{
  v14 = v0;
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  v4 = sub_266AD84DC();
  v5 = sub_266AD85DC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_266AD6E18(v9, v8, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_266AD6E18(0xD000000000000016, 0x8000000266AD8C80, &v13);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_266AD6E18(0xD00000000000002ELL, 0x8000000266AD8D40, &v13);
    _os_log_impl(&dword_266AD4000, v4, v5, "Failed to set value %s for %s. Error: %s", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  v11 = v0[1];

  return v11();
}

void sub_266AD60CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v28 = a5;
  v31 = a4;
  v29 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD128, &qword_266AD8AD8);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v27 - v12;
  v14 = sub_266AD84CC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + OBJC_IVAR____TtC25SiriDailyBriefingInternal16DBKnowledgeStore_knowledgeStore);
  v31 = sub_266AD850C();
  v30 = sub_266AD850C();
  (*(v17 + 16))(v20, v28, v14);
  (*(v9 + 16))(v13, v29, v6);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = (v19 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v27;
  (*(v17 + 32))(v23 + v21, v20, v14);
  (*(v9 + 32))(v23 + v22, v13, v6);
  aBlock[4] = sub_266AD7B88;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266AD63A8;
  aBlock[3] = &block_descriptor;
  v24 = _Block_copy(aBlock);

  v25 = v31;
  v26 = v30;
  [v32 setValue:v31 forKey:v30 completionHandler:v24];
  _Block_release(v24);
}

void sub_266AD63A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_266AD6414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD120, &qword_266AD8AA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_266AD77C0(a3, v26 - v11);
  v13 = sub_266AD85BC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_266AD7858(v12);
  }

  else
  {
    sub_266AD85AC();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_266AD857C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_266AD855C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_266AD7858(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_266AD7858(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_266AD66B8()
{
  v0 = sub_266AD853C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_266AD847C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_266AD846C();
  sub_266AD7E84();
  v5 = sub_266AD845C();
  v7 = v6;

  sub_266AD852C();
  v8 = sub_266AD851C();
  v10 = v9;
  result = sub_266AD7ED8(v5, v7);
  if (v10)
  {
    sub_266AD5AC4(v8, v10);
  }

  return result;
}

uint64_t sub_266AD68F8(uint64_t a1, unint64_t a2, double a3)
{

  v6 = sub_266AD84DC();
  v7 = sub_266AD85CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_266AD6E18(a1, a2, &v11);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a3;
    _os_log_impl(&dword_266AD4000, v6, v7, "InternalKnowledgeStore: Setting PodcastLastInvocation for podcast: %s at time: %f", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  return sub_266AD66B8();
}

uint64_t sub_266AD6A34()
{
  v1 = *(v0 + OBJC_IVAR____TtC25SiriDailyBriefingInternal16DBKnowledgeStore_mainLog);
  sub_266AD84BC();
  sub_266AD85FC();

  return sub_266AD84AC();
}

uint64_t DBKnowledgeStore.deinit()
{
  v1 = OBJC_IVAR____TtC25SiriDailyBriefingInternal16DBKnowledgeStore_logger;
  v2 = sub_266AD84FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DBKnowledgeStore.__deallocating_deinit()
{
  DBKnowledgeStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_266AD6B7C()
{
  OUTLINED_FUNCTION_4();
  sub_266AD84EC();
  v1 = OBJC_IVAR____TtC25SiriDailyBriefingInternal16DBKnowledgeStore_mainLog;
  sub_266AD7F30();
  OUTLINED_FUNCTION_4();
  *(v0 + v1) = sub_266AD860C();
  v2 = OBJC_IVAR____TtC25SiriDailyBriefingInternal16DBKnowledgeStore_knowledgeStore;
  sub_266AD849C();
  *(v0 + v2) = sub_266AD848C();
  return v0;
}

uint64_t sub_266AD6C38(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266AD6D30;

  return v7(a1);
}

uint64_t sub_266AD6D30()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_266AD6E18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266AD6EDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_266AD7E24(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_266AD6EDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_266AD6FDC(a5, a6);
    *a1 = v9;
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
    result = sub_266AD862C();
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

uint64_t sub_266AD6FDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_266AD7028(a1, a2);
  sub_266AD7140(&unk_287841EB0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_266AD7028(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_266AD856C())
  {
    result = sub_266AD7224(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266AD861C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_266AD862C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_266AD7140(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_266AD7294(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_266AD7224(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD130, &qword_266AD8AE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_266AD7294(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD130, &qword_266AD8AE0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t type metadata accessor for DBKnowledgeStore()
{
  result = qword_2800BD178;
  if (!qword_2800BD178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266AD73DC()
{
  result = sub_266AD84FC();
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_266AD7528()
{
  v1 = sub_266AD84CC();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 6);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_266AD75F0()
{
  v2 = *(sub_266AD84CC() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_266AD76DC;

  return sub_266AD5CCC(v7, v8, v9, v4, v5, v6, v0 + v3);
}

uint64_t sub_266AD76DC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_266AD77C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD120, &qword_266AD8AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266AD7858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD120, &qword_266AD8AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266AD78C0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_2(v4);

  return v6(v5);
}

uint64_t sub_266AD7960()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266AD7998()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_2(v4);

  return v6(v5);
}

uint64_t sub_266AD7A44()
{
  v1 = sub_266AD84CC();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD128, &qword_266AD8AD8);
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_266AD7B88(uint64_t a1)
{
  v2 = v1;
  v4 = *(sub_266AD84CC() - 8);
  v5 = ((*(v4 + 80) + 24) & ~*(v4 + 80)) + *(v4 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD128, &qword_266AD8AD8) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  sub_266AD85EC();
  v9 = *(v8 + OBJC_IVAR____TtC25SiriDailyBriefingInternal16DBKnowledgeStore_mainLog);
  sub_266AD84AC();
  if (a1)
  {
    MEMORY[0x26D5E9760](a1);
    v10 = sub_266AD84DC();
    v11 = sub_266AD85DC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_266AD6E18(0xD000000000000028, 0x8000000266AD8D70, &v17);
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v13 = sub_266AD869C();
      v15 = sub_266AD6E18(v13, v14, &v17);

      *(v12 + 14) = v15;
      _os_log_impl(&dword_266AD4000, v10, v11, "Error while updating value for %s: %s", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5();
    }

    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD128, &qword_266AD8AD8);
    return sub_266AD858C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD128, &qword_266AD8AD8);
    return sub_266AD859C();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266AD7E24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_266AD7E84()
{
  result = qword_2800BD138;
  if (!qword_2800BD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD138);
  }

  return result;
}

uint64_t sub_266AD7ED8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_266AD7F30()
{
  result = qword_2800BD140;
  if (!qword_2800BD140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800BD140);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_266AD7F88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266AD7FC8(uint64_t result, int a2, int a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_266AD805C()
{
  result = qword_2800BD290[0];
  if (!qword_2800BD290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800BD290);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for PodcastLastInvocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PodcastLastInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x266AD8260);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266AD82B4()
{
  result = qword_2800BD3A0[0];
  if (!qword_2800BD3A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800BD3A0);
  }

  return result;
}

unint64_t sub_266AD830C()
{
  result = qword_2800BD4B0;
  if (!qword_2800BD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD4B0);
  }

  return result;
}

unint64_t sub_266AD8364()
{
  result = qword_2800BD4B8[0];
  if (!qword_2800BD4B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800BD4B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_5()
{

  JUMPOUT(0x26D5E9830);
}