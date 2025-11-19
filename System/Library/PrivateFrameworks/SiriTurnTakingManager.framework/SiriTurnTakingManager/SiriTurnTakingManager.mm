id TTClient.init()()
{
  v1 = v0;
  v2 = type metadata accessor for NeuralCombiner();
  swift_allocObject();
  v3 = sub_269462DA0();
  v4 = &v0[OBJC_IVAR____TtC21SiriTurnTakingManager8TTClient_nc];
  v4[3] = v2;
  v4[4] = &off_2879FCF38;
  *v4 = v3;
  v5 = *__swift_project_boxed_opaque_existential_1(v4, v2);
  LOBYTE(v5) = sub_2694655C0();
  v17 = &unk_2879FD5C8;
  v18 = &off_2879FD5E8;
  v6 = swift_allocObject();
  *&v16 = v6;
  *(v6 + 56) = v5 & 1;
  *(v6 + 64) = sub_26946532C();
  v7 = type metadata accessor for SELFLogger();
  v8 = swift_allocObject();
  v9 = type metadata accessor for SelfEmitter();
  v10 = swift_allocObject();
  v8[5] = v9;
  v8[6] = &off_2879FD810;
  v8[2] = v10;
  *(v6 + 40) = v7;
  *(v6 + 48) = &off_2879FD7B0;
  *(v6 + 16) = v8;
  sub_2694657CC(&v16, &v1[OBJC_IVAR____TtC21SiriTurnTakingManager8TTClient_overrideSystem]);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v11[5] = v9;
  v11[6] = &off_2879FD810;
  v11[2] = v12;
  v13 = &v1[OBJC_IVAR____TtC21SiriTurnTakingManager8TTClient_selfLogger];
  *(v13 + 3) = v7;
  *(v13 + 4) = &off_2879FD7B0;
  *v13 = v11;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TTClient();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_269462D60()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_269462DA0()
{
  v1 = v0;
  *(v0 + 16) = 0;
  type metadata accessor for NCAssetPathGetter();
  v2 = swift_allocObject();
  sub_269463050();
  *(v1 + 72) = v2;
  *(v1 + 80) = 0;
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v3 = sub_2694847EC();
  __swift_project_value_buffer(v3, qword_2813286A0);
  v4 = sub_2694847DC();
  sub_269484ADC();
  v5 = OUTLINED_FUNCTION_5();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_7();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_12(v7);
    OUTLINED_FUNCTION_2();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_1();
    MEMORY[0x26D63EF60](v14);
  }

  v15 = type metadata accessor for SELFLogger();
  v16 = swift_allocObject();
  v17 = type metadata accessor for SelfEmitter();
  v18 = swift_allocObject();
  v16[5] = v17;
  v16[6] = &off_2879FD810;
  v16[2] = v18;
  *(v1 + 48) = v15;
  *(v1 + 56) = &off_2879FD7B0;
  *(v1 + 24) = v16;
  v19 = [objc_opt_self() sharedInstance];
  sub_269484BBC();
  swift_unknownObjectRelease();
  sub_269463554(0, &qword_281327DC8, 0x277D014E8);
  v20 = swift_dynamicCast();
  v21 = v34;
  if (!v20)
  {
    v21 = 0;
  }

  *(v1 + 64) = v21;
  v22 = *(v1 + 72);
  v23 = v22[4];
  v24 = v22[5];
  if ((v24 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  v27 = v22[2];
  v26 = v22[3];

  if (v25)
  {

    sub_2694648B0(v27, v26, v23, v24);
  }

  else
  {
    sub_2694648B0(v27, v26, 0, 0xE000000000000000);
  }

  v28 = sub_2694847DC();
  sub_269484ADC();
  v29 = OUTLINED_FUNCTION_6();
  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_7();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11(&dword_269461000, v31, v32, "loadModelFromTrial completed");
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  return v1;
}

uint64_t sub_269463050()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  sub_2694630A0();
  return v0;
}

void sub_2694630A0()
{
  v1 = sub_26948487C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - v7;
  v9 = [objc_opt_self() sharedHandler];
  sub_269484BBC();
  swift_unknownObjectRelease();
  sub_269463554(0, &qword_281327DB8, 0x277D014F0);
  if (swift_dynamicCast())
  {
    v10 = aBlock[6];
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v12 = swift_allocObject();
    v12[2] = v0;
    v12[3] = v10;
    v12[4] = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_2694636C4;
    *(v13 + 24) = v12;
    aBlock[4] = sub_2694636D0;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269463600;
    aBlock[3] = &block_descriptor_84;
    v14 = _Block_copy(aBlock);

    v15 = v10;
    v16 = v11;

    [v15 getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion:v14];
    _Block_release(v14);
    sub_26948486C();
    if (qword_281328198 != -1)
    {
      swift_once();
    }

    v17 = sub_26948480C();
    v18 = __swift_project_value_buffer(v17, qword_2813286E0);
    MEMORY[0x26D63E460](v6, v18);
    v19 = *(v2 + 8);
    v19(v6, v1);
    sub_269484AFC();
    v19(v8, v1);
    if (sub_26948481C())
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v20 = sub_2694847EC();
      __swift_project_value_buffer(v20, qword_2813286A0);
      v21 = sub_2694847DC();
      sub_269484AEC();
      v22 = OUTLINED_FUNCTION_6();
      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_7();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11(&dword_269461000, v24, v25, "Timed out waiting to get asset path with getNeuralCombinerConfigFile api");
        OUTLINED_FUNCTION_4();
        MEMORY[0x26D63EF60]();
      }

      sub_2694822FC();
    }
  }

  else
  {
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v26 = sub_2694847EC();
    __swift_project_value_buffer(v26, qword_2813286A0);
    v15 = sub_2694847DC();
    v27 = sub_269484AEC();
    if (os_log_type_enabled(v15, v27))
    {
      OUTLINED_FUNCTION_7();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27(&dword_269461000, v28, v29, "NCAssetPathGetter - Error trying to fetch config from CSAttSiriMitigationAssetProvider");
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }
  }
}

uint64_t sub_2694634DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269463524()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_269463554(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_269463600(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = sub_2694848FC();
  v9 = v8;
  v10 = sub_2694848FC();
  v12 = v11;

  v13 = a4;
  v6(v7, v9, v10, v12, v13);
}

uint64_t sub_2694636D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2694636F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, id a5, void *a6, void *a7, void *a8)
{
  if (a5)
  {
    v14 = a5;
    if (qword_281327EE0 != -1)
    {
      swift_once();
    }

    v15 = sub_2694847EC();
    __swift_project_value_buffer(v15, qword_2813286A0);
    v16 = a5;
    v17 = sub_2694847DC();
    v18 = sub_269484AEC();

    if (os_log_type_enabled(v17, v18))
    {
      buf = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *buf = 136315138;
      v19 = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E58, &qword_269485620);
      v20 = sub_26948494C();
      v22 = a3;
      v23 = sub_269463C18(v20, v21, aBlock);

      *(buf + 4) = v23;
      a3 = v22;
      _os_log_impl(&dword_269461000, v17, v18, "fetching bnnsIr from MitigationAssetProvider with error: %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x26D63EF60](v46, -1, -1);
      MEMORY[0x26D63EF60](buf, -1, -1);
    }

    else
    {
    }
  }

  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v24 = sub_2694847EC();
  __swift_project_value_buffer(v24, qword_2813286A0);

  v25 = sub_2694847DC();
  v26 = sub_269484ADC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v47 = a1;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315394;
    if (a2)
    {
      v29 = v47;
    }

    else
    {
      v29 = 0;
    }

    if (a2)
    {
      v30 = a2;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v31 = sub_269463C18(v29, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    if (a4)
    {
      v32 = a3;
    }

    else
    {
      v32 = 0;
    }

    if (a4)
    {
      v33 = a4;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v34 = sub_269463C18(v32, v33, aBlock);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_269461000, v25, v26, "Completion block of getNeuralCombinerConfigFile invoked and configPath, bnnsIrPath is cached - %s %s", v27, 0x16u);
    swift_arrayDestroy();
    v35 = v28;
    a1 = v47;
    MEMORY[0x26D63EF60](v35, -1, -1);
    MEMORY[0x26D63EF60](v27, -1, -1);
  }

  if (a2)
  {
    v36 = a1;
  }

  else
  {
    v36 = 0;
  }

  v37 = a6[3];
  if (a2)
  {
    v38 = a2;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  a6[2] = v36;
  a6[3] = v38;

  if (a4)
  {
    v39 = a3;
  }

  else
  {
    v39 = 0;
  }

  v40 = a6[5];
  if (a4)
  {
    v41 = a4;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  a6[4] = v39;
  a6[5] = v41;

  v42 = swift_allocObject();
  *(v42 + 16) = a6;
  *(v42 + 24) = a8;
  aBlock[4] = sub_269464044;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26946404C;
  aBlock[3] = &block_descriptor_90;
  v43 = _Block_copy(aBlock);

  v44 = a8;

  [a7 shouldRunCAROverrideWithCompletion_];
  _Block_release(v43);
}

uint64_t sub_269463B70()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void *sub_269463BA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FB0, qword_269486450);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_269463C18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_269463E44(v11, 0, 0, 1, a1, a2);
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
    sub_269464C8C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

uint64_t sub_269463CDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_269463D2C(a1, a2);
  sub_269463F44(&unk_2879FC6B8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_269463D2C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2694849BC())
  {
    result = sub_269463BA8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_269484C0C();
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
          result = sub_269484C3C();
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

unint64_t sub_269463E44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_269463CDC(a5, a6);
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
    result = sub_269484C3C();
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

uint64_t sub_269463F44(uint64_t result)
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

    result = sub_2694640A4(result, v8, 1, v3);
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

uint64_t sub_26946404C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

char *sub_2694640A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FB0, qword_269486450);
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

uint64_t OUTLINED_FUNCTION_15_0()
{

  return sub_26946F0D0(v0 - 128, v0 - 192);
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_269484D5C();
}

void sub_269464214(char a1, uint64_t a2, NSObject *a3)
{
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v6 = sub_2694847EC();
  __swift_project_value_buffer(v6, qword_2813286A0);
  v7 = sub_2694847DC();
  v8 = sub_269484ADC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_269461000, v7, v8, "Completion block of shouldRunCAROverride invoked and config value is cached - %{BOOL}d", v9, 8u);
    MEMORY[0x26D63EF60](v9, -1, -1);
  }

  *(a2 + 48) = a1 & 1;

  dispatch_group_leave(a3);
}

uint64_t sub_26946437C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_269464414()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2_4();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_269464448()
{
  sub_2694645DC(v0 + OBJC_IVAR____TtC21SiriTurnTakingManager15AnnounceMatcher_announceTaskCache, &qword_280318060, &qword_269486538);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
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

uint64_t OUTLINED_FUNCTION_2_2()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_2_6()
{

  JUMPOUT(0x26D63EF60);
}

uint64_t sub_2694645DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26946463C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_269464694()
{
  sub_2694646C8();

  return MEMORY[0x2821FE8D8](v0, 81, 7);
}

uint64_t sub_2694646C8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  v1 = *(v0 + 72);

  return v0;
}

uint64_t sub_269464700()
{
  sub_269464734();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_269464734()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

void OUTLINED_FUNCTION_7_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, a1);
  *(v1 + *(v2 + 60)) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  v4 = *(v2 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_0(char a1)
{
  v2 = sub_26946D5A4(a1);
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0Tm((v1 - 192));

  return sub_269463C18(v2, v4, (v1 - 144));
}

void OUTLINED_FUNCTION_12_1()
{

  JUMPOUT(0x26D63EF60);
}

unint64_t OUTLINED_FUNCTION_12_2()
{

  return sub_269480E90(v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_3(uint64_t a1)
{

  return sub_2694645DC(a1, v1, v2);
}

void sub_2694648B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v68 = a1;
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v8 = sub_2694847EC();
  __swift_project_value_buffer(v8, qword_2813286A0);

  v9 = sub_2694847DC();
  v10 = sub_269484ADC();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_26();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_9();
    v12 = swift_slowAlloc();
    v70[0] = v12;
    *v11 = 136315138;
    v19 = OUTLINED_FUNCTION_24(v12, v13, v70, v14, v15, v16, v17, v18, v66, v68);
    *(v11 + 4) = sub_269463C18(v19, v20, v21);
    _os_log_impl(&dword_269461000, v9, v10, "using config path - %s for loading NC", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v22 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v23 = objc_allocWithZone(MEMORY[0x277D5C310]);

  if (v22)
  {

    v40 = OUTLINED_FUNCTION_24(v32, v33, v34, v35, v36, v37, v38, v39, v66, v68);
    v42 = sub_26946990C(v40, v41, a3, a4);
  }

  else
  {
    v49 = OUTLINED_FUNCTION_24(v24, v25, v26, v27, v28, v29, v30, v31, v66, v68);
    v42 = sub_269465210(v49, v50);
  }

  v43 = *(v5 + 16);
  *(v5 + 16) = v42;

  if (*(v5 + 16))
  {
    v44 = sub_2694847DC();
    sub_269484ADC();
    v45 = OUTLINED_FUNCTION_6();
    if (os_log_type_enabled(v45, v46))
    {
      OUTLINED_FUNCTION_7();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11(&dword_269461000, v47, v48, "Loaded NC model succesfully");
LABEL_16:
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }
  }

  else
  {

    v44 = sub_2694847DC();
    v51 = sub_269484AEC();

    if (os_log_type_enabled(v44, v51))
    {
      OUTLINED_FUNCTION_26();
      v52 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v53 = swift_slowAlloc();
      v70[0] = v53;
      *v52 = 136315138;
      v60 = OUTLINED_FUNCTION_24(v53, v54, v70, v55, v56, v57, v58, v59, v67, v69);
      *(v52 + 4) = sub_269463C18(v60, v61, v62);
      _os_log_impl(&dword_269461000, v44, v51, "error initializing model (SLUresMitigator) using config path - %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      goto LABEL_16;
    }
  }

  v63 = sub_2694848EC();
  v64 = sub_2694848EC();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v63, v64, 0);

  *(v5 + 80) = AppBooleanValue != 0;
}

void OUTLINED_FUNCTION_6_1()
{

  JUMPOUT(0x26D63EF60);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 + 32);
  v12 = *(v9 + 24);
  v13 = *(v9 + 16);
  v14 = *a3;
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = v14;
  *(v8 + 24) = 0;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 72) = a8;
  *(v8 + 80) = v13;
  *(v8 + 88) = v12;
  *(v8 + 56) = a7;
  *(v8 + 64) = v11;

  return type metadata accessor for TTCandidate(0);
}

uint64_t sub_269464C8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_4_2()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D63EF60);
}

uint64_t sub_269464DF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_2694848FC();
  v5 = v4;

  v2(v3, v5);
}

void sub_269464E64(uint64_t a1, unint64_t a2, uint64_t a3, NSObject *a4)
{
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v8 = sub_2694847EC();
  __swift_project_value_buffer(v8, qword_2813286A0);

  v9 = sub_2694847DC();
  v10 = sub_269484ADC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_269463C18(a1, a2, &v14);
    _os_log_impl(&dword_269461000, v9, v10, "Completion block of getAllowPhrasesListOverrideFile invoked and configPath is cached - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x26D63EF60](v12, -1, -1);
    MEMORY[0x26D63EF60](v11, -1, -1);
  }

  v13 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;

  dispatch_group_leave(a4);
}

uint64_t OUTLINED_FUNCTION_13_2@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  v3 = *(type metadata accessor for TTCandidate(0) + 56);

  return sub_26948478C();
}

uint64_t OUTLINED_FUNCTION_13_4(uint64_t a1)
{

  return sub_2694645DC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_1_0()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 160);
  __swift_project_boxed_opaque_existential_1((v0 - 192), v1);
  v3 = *(v2 + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return sub_26948434C();
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_22()
{
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
}

void OUTLINED_FUNCTION_22_0()
{

  JUMPOUT(0x26D63EF60);
}

id sub_269465210(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = sub_2694848EC();
  }

  else
  {
    v3 = 0;
  }

  v9[0] = 0;
  v4 = [v2 initWithConfig:v3 error:v9];

  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_2694842AC();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_26946532C()
{
  active = type metadata accessor for ConcurrentActiveRequestMatcher();
  v1 = [objc_allocWithZone(active) init];
  v2 = sub_269465648(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = v2[2];
  v3 = v2[3];
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = OUTLINED_FUNCTION_0_2(v3);
  }

  v30 = active;
  v31 = &off_2879FDAF8;
  *&v29 = v1;
  v2[2] = v5;
  OUTLINED_FUNCTION_9_0(&v29, &v2[5 * v4]);
  v6 = type metadata accessor for ShortcutMatcher();
  [objc_allocWithZone(v6) init];
  OUTLINED_FUNCTION_3_1();
  if (v8)
  {
    v2 = OUTLINED_FUNCTION_0_2(v7);
  }

  v30 = v6;
  v31 = &off_2879FD798;
  *&v29 = v1;
  v2[2] = v5;
  OUTLINED_FUNCTION_9_0(&v29, &v2[5 * v4]);
  v9 = type metadata accessor for LASOverrideMatcher();
  [objc_allocWithZone(v9) init];
  OUTLINED_FUNCTION_3_1();
  if (v8)
  {
    v2 = OUTLINED_FUNCTION_0_2(v10);
  }

  v30 = v9;
  v31 = &off_2879FE4D0;
  *&v29 = v1;
  v2[2] = v5;
  OUTLINED_FUNCTION_9_0(&v29, &v2[5 * v4]);
  v11 = type metadata accessor for UniversalCommandMatcher();
  [objc_allocWithZone(v11) init];
  OUTLINED_FUNCTION_3_1();
  if (v8)
  {
    v2 = OUTLINED_FUNCTION_0_2(v12);
  }

  v30 = v11;
  v31 = &off_2879FE4B8;
  *&v29 = v1;
  v2[2] = v5;
  OUTLINED_FUNCTION_9_0(&v29, &v2[5 * v4]);
  v13 = type metadata accessor for AllowListMatcher();
  v14 = [objc_allocWithZone(v13) init];
  v16 = v2[2];
  v15 = v2[3];
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    v27 = OUTLINED_FUNCTION_4_1(v15);
    v2 = sub_269465648(v27, v16 + 1, 1, v2);
  }

  v30 = v13;
  v31 = &off_2879FD820;
  *&v29 = v14;
  v2[2] = v17;
  OUTLINED_FUNCTION_9_0(&v29, &v2[5 * v16]);
  v18 = type metadata accessor for AnnounceMatcher();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC21SiriTurnTakingManager15AnnounceMatcher_announceTaskCache;
  v23 = sub_26948438C();
  __swift_storeEnumTagSinglePayload(v21 + v22, 1, 1, v23);
  v24 = v2[3];
  v25 = v16 + 2;
  if (v25 > (v24 >> 1))
  {
    v28 = OUTLINED_FUNCTION_4_1(v24);
    v2 = sub_269465648(v28, v25, 1, v2);
  }

  v30 = v18;
  v31 = &off_2879FDB10;
  *&v29 = v21;
  v2[2] = v25;
  sub_2694657CC(&v29, &v2[5 * v17 + 4]);
  return v2;
}

id sub_2694655F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcurrentActiveRequestMatcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

void *sub_269465648(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317ED0, &qword_2694857C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317ED8, &qword_2694857C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2694657CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_269465808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShortcutMatcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

void *OUTLINED_FUNCTION_0_2@<X0>(unint64_t a1@<X8>)
{

  return sub_269465648((a1 > 1), v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_3()
{
  v2 = *(*(v1 - 216) + 8);
  result = v0;
  v4 = *(v1 - 400);
  return result;
}

id sub_269465930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LASOverrideMatcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2694659AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalCommandMatcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *sub_269465A28()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC21SiriTurnTakingManager16AllowListMatcher_allowedUtterances] = MEMORY[0x277D84FA0];
  v2 = OBJC_IVAR____TtC21SiriTurnTakingManager16AllowListMatcher_allowListAssetPathGetter;
  type metadata accessor for AllowListAssetPathGetter();
  OUTLINED_FUNCTION_2_4();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  sub_269465BD0();
  *&v1[v2] = v3;
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = sub_2694847EC();
  __swift_project_value_buffer(v4, qword_2813286A0);
  v5 = sub_2694847DC();
  v6 = sub_269484ADC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269461000, v5, v6, "fetching allow list path from CSAttSiriMitigationAssetProvider", v7, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v14.receiver = v1;
  v14.super_class = type metadata accessor for AllowListMatcher();
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC21SiriTurnTakingManager16AllowListMatcher_allowListAssetPathGetter];
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = v8;

  sub_269466034(v10);

  return v12;
}

void sub_269465BD0()
{
  v1 = sub_26948487C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - v7;
  v9 = [objc_opt_self() sharedHandler];
  sub_269484BBC();
  swift_unknownObjectRelease();
  sub_269465FF0();
  if (swift_dynamicCast())
  {
    v10 = aBlock[6];
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    OUTLINED_FUNCTION_2_4();
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    *(v12 + 24) = v11;
    aBlock[4] = sub_269464E5C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269464DF0;
    aBlock[3] = &block_descriptor_1;
    v13 = _Block_copy(aBlock);

    v14 = v11;

    [v10 getAllowPhrasesListOverrideFileWithCompletion_];
    _Block_release(v13);
    sub_26948486C();
    if (qword_281327FB0 != -1)
    {
      swift_once();
    }

    v15 = sub_26948480C();
    v16 = __swift_project_value_buffer(v15, qword_2813286B8);
    MEMORY[0x26D63E460](v6, v16);
    v17 = *(v2 + 8);
    v17(v6, v1);
    sub_269484AFC();
    v17(v8, v1);
    if (sub_26948481C())
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v18 = sub_2694847EC();
      __swift_project_value_buffer(v18, qword_2813286A0);
      v19 = sub_2694847DC();
      v20 = sub_269484AEC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_269461000, v19, v20, "Timed out waiting to get asset path with getAllowPhrasesListOverrideFile api", v21, 2u);
        OUTLINED_FUNCTION_6_1();
      }
    }
  }

  else
  {
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v22 = sub_2694847EC();
    __swift_project_value_buffer(v22, qword_2813286A0);
    v14 = sub_2694847DC();
    v23 = sub_269484AEC();
    if (os_log_type_enabled(v14, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_269461000, v14, v23, "AllowListAssetPathGetter - Error trying to fetch config from CSAttSiriMitigationAssetProvider", v24, 2u);
      OUTLINED_FUNCTION_6_1();
    }
  }
}

uint64_t sub_269465FB4()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_2_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

unint64_t sub_269465FF0()
{
  result = qword_281327DB8;
  if (!qword_281327DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281327DB8);
  }

  return result;
}

void sub_269466034(uint64_t a1)
{
  v2 = v1;
  v31[0] = sub_2694848DC();
  v31[1] = v13;
  v14 = sub_269466374();
  v15 = MEMORY[0x26D63E780](10, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v14);

  v16 = v15[2];
  if (v16)
  {
    v31[0] = MEMORY[0x277D84F90];
    sub_2694664C8(0, v16, 0);
    v17 = 0;
    v18 = v31[0];
    v19 = v15 + 7;
    while (v17 < v15[2])
    {
      v20 = *(v19 - 3);
      v21 = *(v19 - 2);
      v22 = *(v19 - 1);
      v23 = *v19;

      a1 = MEMORY[0x26D63E540](v20, v21, v22, v23);
      v25 = v24;

      v31[0] = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2694664C8(v26 > 1, v27 + 1, 1);
        v18 = v31[0];
      }

      ++v17;
      *(v18 + 16) = v27 + 1;
      v28 = v18 + 16 * v27;
      *(v28 + 32) = a1;
      *(v28 + 40) = v25;
      v19 += 4;
      if (v16 == v17)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
    OUTLINED_FUNCTION_0();
    v4 = sub_2694847EC();
    __swift_project_value_buffer(v4, qword_2813286A0);
    v5 = v15;

    v6 = sub_2694847DC();
    v7 = sub_269484AEC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v8 = 136315394;
      v31[2] = v15;
      v9 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E58, &qword_269485620);
      v10 = sub_26948494C();
      v12 = sub_269463C18(v10, v11, v31);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_269463C18(a1, v16, v31);
      _os_log_impl(&dword_269461000, v6, v7, "Error %s when reading file %s", v8, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_15:
    v29 = sub_2694664E8(v18);
    v30 = *(v2 + OBJC_IVAR____TtC21SiriTurnTakingManager16AllowListMatcher_allowedUtterances);
    *(v2 + OBJC_IVAR____TtC21SiriTurnTakingManager16AllowListMatcher_allowedUtterances) = v29;
  }
}

unint64_t sub_269466374()
{
  result = qword_281327E20;
  if (!qword_281327E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281327E20);
  }

  return result;
}

uint64_t sub_2694663C8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318048, &unk_269486440);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26946C92C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2694664C8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2694663C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2694664E8(uint64_t a1)
{
  result = MEMORY[0x26D63E680](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_2694665A8(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_2694665A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_269484DCC();
  sub_26948499C();
  v9 = sub_269484DEC();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_269484D5C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_2694666F4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_2694666F4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_269476A60(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_269476E14(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_269484DCC();
      sub_26948499C();
      result = sub_269484DEC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_269484D5C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_269476CBC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_269484D6C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t type metadata accessor for AnnounceMatcher()
{
  result = qword_281328280;
  if (!qword_281328280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26946693C()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_269466978()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_269466A14()
{
  v1 = sub_2694842EC();
  OUTLINED_FUNCTION_0_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_269466CC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E40, &unk_269485610);
    v9 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_269466D54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E40, &unk_269485610);
    v8 = v5 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269466F6C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2694670FC(unsigned __int8 a1)
{
  sub_269484DCC();
  MEMORY[0x26D63E9B0](a1);
  return sub_269484DEC();
}

uint64_t sub_269467160()
{
  v1 = *v0;
  sub_269484DCC();
  MEMORY[0x26D63E9B0](v1);
  return sub_269484DEC();
}

uint64_t sub_2694671B4()
{
  v0 = sub_26948480C();
  __swift_allocate_value_buffer(v0, qword_2813286E0);
  *__swift_project_value_buffer(v0, qword_2813286E0) = 500;
  v1 = *MEMORY[0x277D85178];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_269467244(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v11 = type metadata accessor for TTCandidate(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + 48);
  v43 = v4;
  v16 = *__swift_project_boxed_opaque_existential_1((v4 + 24), v15);
  v44 = a2;
  v45 = a3;
  v46 = a4;
  sub_269471CE8();
  v17 = 0;
  v41 = a1;
  v42 = *(a1 + 16);
  v18 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v42 == v17)
    {
      v38 = *__swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
      sub_269472FE4();
      return v18;
    }

    sub_269469A68(v41 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v17, v14);
    sub_269467774(v14, v44, v45, v46, &v52);
    if (v6)
    {
      sub_269469ACC(v14);

      return v18;
    }

    v47 = 0;
    v50 = v52;
    v51[0] = v53[0];
    *(v51 + 14) = *(v53 + 14);
    v20 = *v14;
    v19 = v14[1];
    v21 = v14;
    swift_isUniquelyReferenced_nonNull_native();
    v54 = v18;
    v22 = sub_269480E90(v20, v19);
    if (__OFADD__(v18[2], (v23 & 1) == 0))
    {
      break;
    }

    v24 = v22;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E60, &qword_269485628);
    if (sub_269484C5C())
    {
      v26 = sub_269480E90(v20, v19);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_18;
      }

      v24 = v26;
    }

    if (v25)
    {
      v18 = v54;
      v28 = v54[7] + 40 * v24;
      v29 = *(v28 + 30);
      v30 = *(v28 + 16);
      v48 = *v28;
      v49[0] = v30;
      *(v49 + 14) = v29;
      *(v28 + 30) = *(v51 + 14);
      v31 = v51[0];
      *v28 = v50;
      *(v28 + 16) = v31;
      sub_269469CF0(&v48);
    }

    else
    {
      v18 = v54;
      v54[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v18[6] + 16 * v24);
      *v32 = v20;
      v32[1] = v19;
      v33 = v18[7] + 40 * v24;
      v34 = v51[0];
      *v33 = v50;
      *(v33 + 16) = v34;
      *(v33 + 30) = *(v51 + 14);
      v35 = v18[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_17;
      }

      v18[2] = v37;
    }

    v14 = v21;
    sub_269469ACC(v21);
    ++v17;
    v6 = v47;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_269484D7C();
  __break(1u);
  return result;
}

uint64_t sub_269467584(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 3:
      OUTLINED_FUNCTION_21();
      goto LABEL_3;
    case 4:
      break;
    default:
LABEL_3:
      v1 = sub_269484D5C();
      break;
  }

  return v1 & 1;
}

id sub_26946767C(uint64_t a1, void *a2)
{
  if ((sub_269467584(a1) & 1) == 0)
  {
    return [a2 invocationType];
  }

  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v3 = sub_2694847EC();
  __swift_project_value_buffer(v3, qword_2813286A0);
  v4 = sub_2694847DC();
  v5 = sub_269484ADC();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_7();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_27(&dword_269461000, v6, v7, "using invocation type as followup when invocationtype is announce as a workaround until model is ready to consume announce invocation type");
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
}

void sub_269467774(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int *a5@<X8>)
{
  v364 = a5;
  v6 = v5;
  v366 = a3;
  v356 = a2;
  v363 = v6;
  v358 = *v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E40, &unk_269485610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v368 = &v349 - v11;
  v367 = type metadata accessor for TTCandidate(0);
  v12 = *(*(v367 - 8) + 64);
  MEMORY[0x28223BE20](v367);
  v375 = (&v349 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v359 = v15;
  OUTLINED_FUNCTION_13();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v349 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v351 = v20;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v350 = v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v361 = v24;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v373 = v26;
  OUTLINED_FUNCTION_13();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v349 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = (&v349 - v31);
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v33 = sub_2694847EC();
  v34 = __swift_project_value_buffer(v33, qword_2813286A0);
  sub_269469A68(a1, v32);
  v379 = a1;
  sub_269469A68(a1, v30);

  v35 = sub_2694847DC();
  v36 = sub_269484ADC();

  v37 = os_log_type_enabled(v35, v36);
  v365 = a4;
  v353 = v19;
  if (v37)
  {
    OUTLINED_FUNCTION_9();
    v38 = swift_slowAlloc();
    v374 = swift_slowAlloc();
    aBlock[0] = v374;
    *v38 = 136315650;
    v360 = v34;
    v40 = *v32;
    v39 = v32[1];

    sub_269469ACC(v32);
    v41 = sub_269463C18(v40, v39, aBlock);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v42 = OUTLINED_FUNCTION_15();
    v34 = v360;
    *(v38 + 14) = sub_269463C18(v42, v43, v44);
    *(v38 + 22) = 2080;
    v45 = *(v30 + 9);
    v46 = *(v30 + 10);

    sub_269469ACC(v30);
    v47 = sub_269463C18(v45, v46, aBlock);

    *(v38 + 24) = v47;
    _os_log_impl(&dword_269461000, v35, v36, "invoking NC for  candidate with tcuId - %s, trpCandidateId %s and utterance - %s", v38, 0x20u);
    swift_arrayDestroy();
    v48 = OUTLINED_FUNCTION_1();
    MEMORY[0x26D63EF60](v48);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  else
  {

    sub_269469ACC(v30);
    sub_269469ACC(v32);
  }

  v49 = swift_allocObject();
  v374 = v49;
  *(v49 + 16) = -1082130432;
  v362 = (v49 + 16);
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v352 = (v51 + 16);
  v370 = v51;
  *(v51 + 24) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v355 = v52 + 16;
  v371 = v52;
  *(v52 + 20) = 1;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v354 = v53 + 16;
  v372 = v53;
  *(v53 + 20) = 1;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v357 = v54 + 16;
  v55 = v368;
  v56 = v379;
  sub_269469B28(v379 + *(v367 + 56), v368);
  v57 = sub_26948478C();
  if (__swift_getEnumTagSinglePayload(v55, 1, v57) == 1)
  {
    sub_2694645DC(v55, &qword_280317E40, &unk_269485610);
    v58 = 0;
  }

  else
  {
    v59 = sub_26948476C();
    (*(*(v57 - 8) + 8))(v55, v57);
    v58 = v59 ^ 1u;
  }

  v60 = v373;
  v61 = v56[4];
  v62 = v375;
  if (v61)
  {
    v367 = v50 + 16;
    v368 = v58;
    v375 = v61;
    v63 = sub_2694847DC();
    sub_269484ADC();
    v64 = OUTLINED_FUNCTION_6();
    v66 = os_log_type_enabled(v64, v65);
    v67 = &property descriptor for TTManagerRequest.trpCandidateId;
    v369 = v54;
    if (v66)
    {
      v68 = swift_slowAlloc();
      v69 = v375;
      v70 = v50;
      v71 = v68;
      v72 = swift_slowAlloc();
      *v71 = 138413570;
      v73 = [v69 invocationType];
      *(v71 + 4) = v73;
      *v72 = v73;
      *(v71 + 12) = 2048;
      [v69 spkrIdScore];
      *(v71 + 14) = v74;
      *(v71 + 22) = 2048;
      [v69 aftmScore];
      *(v71 + 24) = v75;
      *(v71 + 32) = 2048;
      [v69 odldScore];
      *(v71 + 34) = v76;
      *(v71 + 42) = 2048;
      [v69 lrnnScore];
      *(v71 + 44) = v77;
      *(v71 + 52) = 2048;
      v54 = v369;
      [v69 conversationalOdldScore];
      *(v71 + 54) = v78;
      OUTLINED_FUNCTION_19();
      _os_log_impl(v79, v80, v81, v82, v71, 0x3Eu);
      sub_2694645DC(v72, &qword_280317E50, &qword_269485F30);
      v60 = v373;
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      v50 = v70;
      v67 = &property descriptor for TTManagerRequest.trpCandidateId;
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }

    v83 = v375;
    v84 = [v375 v67[21]];
    v85 = v379;
    v86 = sub_26946767C(v379, v83);
    if (v86)
    {
      v360 = v86;
      v87 = v363[8];
      if (v87)
      {
        v88 = [v87 getIsAssetMagusSupported];
      }

      else
      {
        v88 = 0;
      }

      v56 = v361;
      v102 = sub_26946985C(v84);
      if (((sub_269467584(v379) | v102) & 1) != 0 && (v88 & 1) == 0)
      {
        v373 = v50;
        sub_269469A68(v379, v56);

        v103 = sub_2694847DC();
        v104 = sub_269484ADC();

        if (os_log_type_enabled(v103, v104))
        {
          OUTLINED_FUNCTION_9();
          v105 = v56;
          v56 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v361 = v84;
          aBlock[0] = v106;
          *v56 = 136315650;
          v107 = TTCandidate.description.getter();
          v109 = v108;
          sub_269469ACC(v105);
          v110 = sub_269463C18(v107, v109, aBlock);

          *(v56 + 4) = v110;
          *(v56 + 6) = 2080;
          v111 = OUTLINED_FUNCTION_15();
          v114 = sub_269463C18(v111, v112, v113);
          OUTLINED_FUNCTION_14(v114);
          v56[3] = 0xBFF0000000000000;
          _os_log_impl(&dword_269461000, v103, v104, "Setting NC result for candidate - %s, trpCandidateId: %s to mitigated because magus is not supported. Score - %f", v56, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
          v115 = OUTLINED_FUNCTION_1();
          MEMORY[0x26D63EF60](v115);
        }

        else
        {

          sub_269469ACC(v56);
        }

        v204 = 0;
        *v364 = -1082130432;
        OUTLINED_FUNCTION_17();
        goto LABEL_105;
      }

      [v375 lrnnScore];
      if (v116 == -1.0)
      {
        v117 = sub_2694847DC();
        LOBYTE(v56) = sub_269484ADC();
        v118 = OUTLINED_FUNCTION_6();
        if (os_log_type_enabled(v118, v119))
        {
          OUTLINED_FUNCTION_7();
          v120 = swift_slowAlloc();
          v361 = v84;
          v121 = v50;
          v122 = v120;
          *v120 = 0;
          OUTLINED_FUNCTION_19();
          _os_log_impl(v123, v124, v125, v126, v122, 2u);
          v50 = v121;
          v84 = v361;
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
        }

        if ((v102 & 1) == 0 && (sub_269467584(v379) & 1) == 0)
        {
          v292 = sub_2694847DC();
          sub_269484ADC();
          v293 = OUTLINED_FUNCTION_5();
          if (os_log_type_enabled(v293, v294))
          {
            OUTLINED_FUNCTION_7();
            v295 = swift_slowAlloc();
            OUTLINED_FUNCTION_12(v295);
            OUTLINED_FUNCTION_2();
            _os_log_impl(v296, v297, v298, v299, v300, v301);
            v302 = OUTLINED_FUNCTION_1();
            MEMORY[0x26D63EF60](v302);
          }

          v204 = 0;
          v303 = -1082130432;
          goto LABEL_90;
        }

        v127 = sub_2694847DC();
        sub_269484ADC();
        v128 = OUTLINED_FUNCTION_5();
        if (os_log_type_enabled(v128, v129))
        {
          OUTLINED_FUNCTION_7();
          v130 = swift_slowAlloc();
          OUTLINED_FUNCTION_12(v130);
          OUTLINED_FUNCTION_2();
          _os_log_impl(v131, v132, v133, v134, v135, v136);
          v137 = OUTLINED_FUNCTION_1();
          MEMORY[0x26D63EF60](v137);
        }

        v138 = sub_2694847DC();
        sub_269484ADC();
        v139 = OUTLINED_FUNCTION_5();
        if (os_log_type_enabled(v139, v140))
        {
          OUTLINED_FUNCTION_7();
          v141 = swift_slowAlloc();
          OUTLINED_FUNCTION_12(v141);
          OUTLINED_FUNCTION_2();
          _os_log_impl(v142, v143, v144, v145, v146, v147);
          v148 = OUTLINED_FUNCTION_1();
          MEMORY[0x26D63EF60](v148);
        }
      }

      v149 = [objc_allocWithZone(MEMORY[0x277D5C320]) initWithDefaults];
      if (!v149)
      {
        v207 = sub_2694847DC();
        sub_269484AEC();
        v208 = OUTLINED_FUNCTION_5();
        if (os_log_type_enabled(v208, v209))
        {
          OUTLINED_FUNCTION_7();
          v210 = swift_slowAlloc();
          OUTLINED_FUNCTION_12(v210);
          OUTLINED_FUNCTION_2();
          _os_log_impl(v211, v212, v213, v214, v215, v216);
          v217 = OUTLINED_FUNCTION_1();
          MEMORY[0x26D63EF60](v217);
        }

        sub_269469BC0();
        swift_allocError();
        *v218 = 3;
        swift_willThrow();

        v219 = v360;
        goto LABEL_87;
      }

      v150 = v149;
      v373 = v50;
      v151 = v360;
      [v149 setInputOrigin_];
      sub_269463554(0, &qword_281327DA8, 0x277CCABB0);
      v152 = v375;
      [v375 spkrIdScore];
      v153 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v153, sel_setSpeakerIDScore_);

      [v152 aftmScore];
      v154 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v154, sel_setAcousticFTMScores_);

      [v152 odldScore];
      v155 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v155, sel_setNldaScore_);

      [v152 lrnnScore];
      v156 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v156, sel_setLrnnScore_);

      [v152 lrnnThreshold];
      v157 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v157, sel_setLrnnThreshold_);

      [v152 lrnnScale];
      v158 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v158, sel_setExternalLrnnScale_);

      [v152 lrnnOffset];
      v159 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v159, sel_setExternalLrnnOffset_);

      [v152 conversationalOdldScore];
      v160 = sub_269484B2C();
      [v150 setConversationalNldaScore_];

      v161 = sub_269484ABC();
      LOBYTE(v159) = sub_269484A7C();

      [v150 setIsConversational_];
      v162 = v150;
      v163 = v54;
      v164 = v84;
      v165 = v151;
      v166 = sub_2694847DC();
      v167 = sub_269484ADC();
      v349 = v165;

      v168 = v164;
      v169 = v163;
      v359 = v162;

      v170 = os_log_type_enabled(v166, v167);
      v361 = v168;
      if (v170)
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        *v171 = 138412546;
        v173 = v359;
        *(v171 + 4) = v359;
        *(v171 + 12) = 2112;
        v174 = v349;
        *(v171 + 14) = v349;
        v175 = v360;
        *v172 = v150;
        v172[1] = v175;
        v176 = v173;
        v177 = v174;
        _os_log_impl(&dword_269461000, v166, v167, "inputFeats - %@ - derivedInvocationType - %@", v171, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E50, &qword_269485F30);
        swift_arrayDestroy();
        v168 = v361;
        OUTLINED_FUNCTION_4();
        MEMORY[0x26D63EF60]();
        v178 = OUTLINED_FUNCTION_1();
        MEMORY[0x26D63EF60](v178);
      }

      v179 = v363[2];
      if (v179)
      {
        v360 = v34;
        v180 = swift_allocObject();
        v182 = v373;
        v181 = v374;
        v180[2] = v169;
        v180[3] = v181;
        v184 = v370;
        v183 = v371;
        v180[4] = v182;
        v180[5] = v184;
        v185 = v372;
        v180[6] = v183;
        v180[7] = v185;
        v180[8] = v358;
        aBlock[4] = sub_269469C14;
        v377 = v180;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2694697F0;
        aBlock[3] = &block_descriptor;
        v186 = _Block_copy(aBlock);
        v358 = v377;
        v187 = v359;
        v188 = v179;

        v189 = v369;

        v359 = v188;
        [v188 processInputFeats:v187 completion:v186];
        _Block_release(v186);
        v358 = v187;

        OUTLINED_FUNCTION_10();
        if (*(v189 + 16) != 1)
        {
          v235 = v351;
          sub_269469A68(v379, v351);
          v236 = v365;

          v237 = sub_2694847DC();
          v238 = sub_269484ACC();

          if (os_log_type_enabled(v237, v238))
          {
            LODWORD(v379) = v238;
            v239 = swift_slowAlloc();
            v378[0] = swift_slowAlloc();
            *v239 = 136316674;
            v240 = *v235;
            v241 = v235[1];
            v242 = v370;

            v243 = sub_269469ACC(v235);
            OUTLINED_FUNCTION_28(v243, v244, v378);
            OUTLINED_FUNCTION_25();

            *(v239 + 4) = v240;
            *(v239 + 12) = 2080;
            v245 = sub_269463C18(v366, v236, v378);
            OUTLINED_FUNCTION_14(v245);
            v246 = v362;
            OUTLINED_FUNCTION_8();
            *(v239 + 24) = *v246;
            *(v239 + 32) = 2080;
            v247 = v367;
            OUTLINED_FUNCTION_8();
            if (*v247)
            {
              v248 = 0x657461676974694DLL;
            }

            else
            {
              v248 = 0x64657463656C6553;
            }

            if (*v247)
            {
              v249 = 0xE900000000000064;
            }

            else
            {
              v249 = 0xE800000000000000;
            }

            v250 = sub_269463C18(v248, v249, v378);

            *(v239 + 34) = v250;
            *(v239 + 42) = 2080;
            v251 = v352;
            OUTLINED_FUNCTION_8();
            v252 = *(v242 + 24);
            if (v252)
            {
              v253 = *v251;
              v254 = *(v242 + 24);
            }

            else
            {
              v252 = 0xE300000000000000;
              v253 = 7104878;
            }

            v313 = v375;

            v317 = sub_269463C18(v253, v252, v378);

            *(v239 + 44) = v317;
            *(v239 + 52) = 2048;
            OUTLINED_FUNCTION_10();
            v318 = *(v371 + 16);
            v319 = *(v371 + 20);

            v320 = v318;
            if (v319)
            {
              v320 = 0.0;
            }

            *(v239 + 54) = v320;
            *(v239 + 62) = 2048;
            OUTLINED_FUNCTION_10();
            v321 = *(v372 + 16);
            v322 = *(v372 + 20);

            v323 = v321;
            if (v322)
            {
              v323 = 0.0;
            }

            *(v239 + 64) = v323;
            OUTLINED_FUNCTION_23();
            _os_log_impl(v324, v325, v326, v327, v328, 0x48u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_4();
            MEMORY[0x26D63EF60]();
            v329 = OUTLINED_FUNCTION_1();
            MEMORY[0x26D63EF60](v329);

            v312 = v373;
            v314 = v361;
            v315 = v367;
          }

          else
          {
            v312 = v182;

            sub_269469ACC(v235);
            v313 = v375;
            v314 = v361;
            v315 = v367;
          }

          v330 = AFIsInternalInstall();
          v331 = v358;
          if (v330 && (sub_26946985C(v314) & 1) != 0 && *(v363 + 80) == 1)
          {
            swift_beginAccess();
            *v315 = 0;
            v332 = sub_2694847DC();
            sub_269484ADC();
            v333 = OUTLINED_FUNCTION_5();
            if (os_log_type_enabled(v333, v334))
            {
              OUTLINED_FUNCTION_7();
              v335 = swift_slowAlloc();
              OUTLINED_FUNCTION_12(v335);
              OUTLINED_FUNCTION_2();
              _os_log_impl(v336, v337, v338, v339, v340, v341);
              v342 = OUTLINED_FUNCTION_1();
              MEMORY[0x26D63EF60](v342);
            }

            v343 = v314;
            v313 = v349;
          }

          else
          {
            v343 = v349;
            v332 = v331;
            v331 = v314;
          }

          v344 = v362;
          OUTLINED_FUNCTION_10();
          v345 = *v344;
          OUTLINED_FUNCTION_10();
          LODWORD(v379) = *(v312 + 16);
          OUTLINED_FUNCTION_8();
          v346 = *(v370 + 24);
          v375 = *(v370 + 16);
          OUTLINED_FUNCTION_10();
          v347 = *(v371 + 16);
          v348 = *(v371 + 20);
          OUTLINED_FUNCTION_10();
          v204 = *(v372 + 16);
          LOBYTE(v56) = *(v372 + 20);

          v206 = v364;
          *v364 = v345;
          *(v206 + 4) = v379;
          *(v206 + 1) = v375;
          *(v206 + 2) = v346;
          v206[6] = v347;
          *(v206 + 28) = v348;
          goto LABEL_105;
        }

        v190 = v350;
        sub_269469A68(v379, v350);
        v191 = sub_2694847DC();
        sub_269484AEC();
        v192 = OUTLINED_FUNCTION_6();
        if (os_log_type_enabled(v192, v193))
        {
          OUTLINED_FUNCTION_26();
          v194 = swift_slowAlloc();
          OUTLINED_FUNCTION_9();
          v195 = swift_slowAlloc();
          v378[0] = v195;
          *v194 = 136315138;
          v196 = *v190;
          v197 = v190[1];

          v198 = sub_269469ACC(v190);
          OUTLINED_FUNCTION_28(v198, v199, v378);
          OUTLINED_FUNCTION_25();

          *(v194 + 4) = v196;
          OUTLINED_FUNCTION_19();
          _os_log_impl(v200, v201, v202, v203, v194, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v195);
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
        }

        else
        {

          sub_269469ACC(v190);
        }

        v309 = v361;
        v310 = v349;
        OUTLINED_FUNCTION_29();
        sub_269473558();
        sub_269469BC0();
        swift_allocError();
        *v311 = 1;
        swift_willThrow();

        goto LABEL_86;
      }

      v220 = v353;
      sub_269469A68(v379, v353);
      v221 = sub_2694847DC();
      sub_269484AEC();
      v222 = OUTLINED_FUNCTION_6();
      if (os_log_type_enabled(v222, v223))
      {
        OUTLINED_FUNCTION_26();
        v224 = v220;
        v225 = swift_slowAlloc();
        OUTLINED_FUNCTION_9();
        v226 = swift_slowAlloc();
        aBlock[0] = v226;
        *v225 = 136315138;
        v227 = *v224;
        v228 = v224[1];

        v229 = sub_269469ACC(v224);
        OUTLINED_FUNCTION_28(v229, v230, aBlock);
        OUTLINED_FUNCTION_25();

        *(v225 + 4) = v227;
        v168 = v361;
        OUTLINED_FUNCTION_19();
        _os_log_impl(v231, v232, v233, v234, v225, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v226);
        OUTLINED_FUNCTION_4();
        MEMORY[0x26D63EF60]();
        OUTLINED_FUNCTION_4();
        MEMORY[0x26D63EF60]();
      }

      else
      {

        sub_269469ACC(v220);
      }

      v304 = v363[9];
      sub_2694630A0();
      v305 = v304[2];
      v306 = v304[3];
      v56 = v304[4];
      v307 = v304[5];

      sub_2694648B0(v305, v306, v56, v307);

      if (sub_26946985C(v168) & 1) != 0 || (sub_269467584(v379))
      {
        OUTLINED_FUNCTION_29();
        sub_269473558();
        sub_269469BC0();
        swift_allocError();
        *v308 = 0;
        swift_willThrow();

LABEL_86:
        v219 = v359;
LABEL_87:

        return;
      }

      v204 = 0;
      v303 = 1065353216;
LABEL_90:
      v316 = v364;
      *v364 = v303;
      *(v316 + 4) = 0;
      OUTLINED_FUNCTION_22();
LABEL_105:
      LOBYTE(v58) = v368;
      goto LABEL_106;
    }

    sub_269469A68(v85, v60);

    v89 = sub_2694847DC();
    LOBYTE(v56) = sub_269484AEC();

    if (os_log_type_enabled(v89, v56))
    {
      OUTLINED_FUNCTION_9();
      v58 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v373 = v50;
      aBlock[0] = v90;
      *v58 = 136315650;
      v361 = v84;
      v91 = *v60;
      v92 = v60[1];

      v93 = sub_269469ACC(v60);
      OUTLINED_FUNCTION_28(v93, v94, aBlock);
      OUTLINED_FUNCTION_25();

      *(v58 + 4) = v91;
      *(v58 + 12) = 2080;
      v95 = OUTLINED_FUNCTION_15();
      *(v58 + 14) = sub_269463C18(v95, v96, v97);
      *(v58 + 22) = 2048;
      *(v58 + 24) = 0xBFF0000000000000;
      OUTLINED_FUNCTION_19();
      _os_log_impl(v98, v99, v100, v101, v58, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      LOBYTE(v58) = v368;
    }

    else
    {

      sub_269469ACC(v60);

      LOBYTE(v58) = v368;
    }

    v204 = 0;
    v205 = v364;
    *v364 = -1082130432;
    *(v205 + 4) = 0;
  }

  else
  {
    if ((v56[11] & 1) == 0)
    {
      switch(*(v56 + 16))
      {
        case 1:

          goto LABEL_62;
        case 3:
          OUTLINED_FUNCTION_21();
          break;
        default:
          break;
      }

      v255 = sub_269484D5C();

      v62 = v375;
      if (v255)
      {
LABEL_62:
        v256 = v58;
        v257 = v56;
        v56 = v359;
        sub_269469A68(v257, v359);
        v258 = v365;

        v259 = sub_2694847DC();
        v260 = sub_269484ADC();

        if (os_log_type_enabled(v259, v260))
        {
          OUTLINED_FUNCTION_9();
          v261 = swift_slowAlloc();
          LODWORD(v375) = v260;
          v262 = v261;
          v379 = swift_slowAlloc();
          aBlock[0] = v379;
          *v262 = 136315650;
          v368 = v256;
          v263 = *v56;
          v264 = v56[1];

          sub_269469ACC(v56);
          v256 = sub_269463C18(v263, v264, aBlock);

          *(v262 + 4) = v256;
          LOBYTE(v256) = v368;
          *(v262 + 12) = 2080;
          *(v262 + 14) = sub_269463C18(v366, v258, aBlock);
          *(v262 + 22) = 2048;
          v265 = v362;
          OUTLINED_FUNCTION_8();
          *(v262 + 24) = *v265;
          _os_log_impl(&dword_269461000, v259, v375, "FlexibleFollowup: siri intended info is nil - Rejecting Candidate - %s, trpCandidateId %s. Score - %f, mitigationDecision:Rejected", v262, 0x20u);
          LOBYTE(v56) = v379;
          swift_arrayDestroy();
          v266 = OUTLINED_FUNCTION_1();
          MEMORY[0x26D63EF60](v266);
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
        }

        else
        {

          sub_269469ACC(v56);
          v265 = v362;
        }

        OUTLINED_FUNCTION_8();
        v291 = *v265;

        v204 = 0;
        *v364 = v291;
        OUTLINED_FUNCTION_17();
        LOBYTE(v58) = v256;
        goto LABEL_106;
      }
    }

    v369 = v54;
    v267 = v62;
    sub_269469A68(v56, v62);
    v268 = v365;

    LOBYTE(v56) = v374;

    v269 = sub_2694847DC();
    v270 = sub_269484ADC();

    LODWORD(v379) = v270;
    v271 = v270;
    v272 = v269;
    if (os_log_type_enabled(v269, v271))
    {
      v56 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v56 = 136315906;
      v367 = v50 + 16;
      v273 = *v267;
      v274 = v267[1];
      v373 = v50;

      sub_269469ACC(v267);
      v275 = sub_269463C18(v273, v274, aBlock);

      *(v56 + 4) = v275;
      *(v56 + 6) = 2080;
      v276 = sub_269463C18(v366, v268, aBlock);
      OUTLINED_FUNCTION_14(v276);
      v277 = v362;
      OUTLINED_FUNCTION_10();
      *(v56 + 3) = *v277;
      *(v56 + 16) = 2080;
      OUTLINED_FUNCTION_10();
      if (*v367)
      {
        v278 = 0x657461676974694DLL;
      }

      else
      {
        v278 = 0x64657463656C6553;
      }

      if (*v367)
      {
        v279 = 0xE900000000000064;
      }

      else
      {
        v279 = 0xE800000000000000;
      }

      v280 = sub_269463C18(v278, v279, aBlock);
      v281 = v58;

      *(v56 + 34) = v280;
      v58 = v373;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v282, v283, v284, v285, v286, 0x2Au);
      swift_arrayDestroy();
      v50 = v58;
      LOBYTE(v58) = v281;
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      v287 = OUTLINED_FUNCTION_1();
      MEMORY[0x26D63EF60](v287);
    }

    else
    {

      sub_269469ACC(v267);
      v277 = v362;
    }

    OUTLINED_FUNCTION_10();
    v288 = *v277;
    OUTLINED_FUNCTION_10();
    v289 = *(v50 + 16);

    v204 = 0;
    v290 = v364;
    *v364 = v288;
    *(v290 + 4) = v289;
  }

  OUTLINED_FUNCTION_22();
LABEL_106:
  v206[8] = v204;
  *(v206 + 36) = v56;
  *(v206 + 37) = v58 & 1;
}

uint64_t sub_269469618(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a3 + 16);
  v14 = a1 == 0;
  swift_beginAccess();
  *(a2 + 16) = v14;
  if (a1)
  {
    [a1 score];
    v16 = v15;
    swift_beginAccess();
    *v13 = v16;
    v17 = [a1 didMitigate];
  }

  else
  {
    swift_beginAccess();
    v17 = 0;
    *v13 = -1082130432;
  }

  swift_beginAccess();
  *(a4 + 16) = v17;
  if (a1)
  {
    v18 = sub_269469C28(a1);
    v20 = v19;
    swift_beginAccess();
    v21 = *(a5 + 24);
    *(a5 + 16) = v18;
    *(a5 + 24) = v20;

    [a1 threshold];
    v23 = v22;
  }

  else
  {
    swift_beginAccess();
    v24 = *(a5 + 24);
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;

    v23 = 0;
  }

  swift_beginAccess();
  *(a6 + 16) = v23;
  *(a6 + 20) = a1 == 0;
  if (a1)
  {
    [a1 speakerIDThreshold];
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  result = swift_beginAccess();
  *(a7 + 16) = v26;
  *(a7 + 20) = a1 == 0;
  return result;
}

void sub_2694697F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_26946985C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v3 = v2;
  if (a1)
  {
    if (!v2)
    {
      v5 = 0;
      return v5 & 1;
    }

    sub_269463554(0, &qword_281327DA8, 0x277CCABB0);
    v4 = a1;
    v5 = sub_269484B3C();

    v3 = v4;
  }

  else
  {
    if (!v2)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

id sub_26946990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = sub_2694848EC();

    if (a4)
    {
LABEL_3:
      v7 = sub_2694848EC();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v13[0] = 0;
  v8 = [v4 initWithConfig:v6 bnnsIrPath:v7 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    sub_2694842AC();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
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

uint64_t sub_269469A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269469ACC(uint64_t a1)
{
  v2 = type metadata accessor for TTCandidate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269469B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E40, &unk_269485610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269469BC0()
{
  result = qword_280317E48;
  if (!qword_280317E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317E48);
  }

  return result;
}

uint64_t sub_269469C28(void *a1)
{
  v1 = [a1 assetVersion];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2694848FC();

  return v3;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269469D34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 38))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269469D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NCError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NCError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_269469F70()
{
  result = qword_280317E68;
  if (!qword_280317E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317E68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2048;
  return result;
}

void OUTLINED_FUNCTION_17()
{
  *(v0 + 4) = 1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
}

id OUTLINED_FUNCTION_20(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_269463C18(v3, v4, a3);
}

uint64_t *OUTLINED_FUNCTION_29()
{
  result = __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 24), *(*(v0 + 112) + 48));
  v3 = *(v1 - 72);
  v4 = *v3;
  v5 = v3[1];
  v6 = *result;
  return result;
}

uint64_t sub_26946A0E0()
{
  v0 = sub_2694847EC();
  __swift_allocate_value_buffer(v0, qword_2813286A0);
  __swift_project_value_buffer(v0, qword_2813286A0);
  sub_26946A174();
  sub_269484B4C();
  return sub_2694847FC();
}

unint64_t sub_26946A174()
{
  result = qword_281327DA0;
  if (!qword_281327DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281327DA0);
  }

  return result;
}

uint64_t sub_26946A208(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707274 && a2 == 0xE500000000000000;
  if (v4 || (sub_269484D5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144756374 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_269484D5C();

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

uint64_t sub_26946A30C(char a1)
{
  sub_269484DCC();
  MEMORY[0x26D63E9B0](a1 & 1);
  return sub_269484DEC();
}

uint64_t sub_26946A360(char a1)
{
  if (a1)
  {
    return 0x61746144756374;
  }

  else
  {
    return 0x6449707274;
  }
}

uint64_t sub_26946A3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26946A208(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26946A400@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26946A2CC();
  *a1 = result;
  return result;
}

uint64_t sub_26946A428(uint64_t a1)
{
  v2 = sub_26946CC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26946A464(uint64_t a1)
{
  v2 = sub_26946CC34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26946A4A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EE0, &qword_2694858E0);
  OUTLINED_FUNCTION_0_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26946CC34();
  sub_269484E0C();
  v18 = 0;
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5_0();
  sub_269484D0C();
  if (!v4)
  {
    v16[1] = v16[0];
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EF0, &qword_2694858E8);
    sub_26946CD98(&qword_280317EF8, sub_26946CC88);
    sub_269484D3C();
  }

  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_26946A658(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F20, &qword_269485900);
  OUTLINED_FUNCTION_0_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26946CC34();
  sub_269484DFC();
  if (!v1)
  {
    sub_269484CBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EF0, &qword_2694858E8);
    sub_26946CD98(&qword_280317F28, sub_26946CE10);
    sub_269484CEC();
    v9 = OUTLINED_FUNCTION_7_0();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return OUTLINED_FUNCTION_6_0();
}

uint64_t sub_26946A860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
  if (v4 || (sub_269484D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6353746C75736572 && a2 == 0xEB0000000065726FLL;
    if (v6 || (sub_269484D5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676974694D646964 && a2 == 0xEB00000000657461;
      if (v7 || (sub_269484D5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
        if (v8 || (sub_269484D5C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_269484D5C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26946AA18(char a1)
{
  result = 0x6449756374;
  switch(a1)
  {
    case 1:
      result = 0x6353746C75736572;
      break;
    case 2:
      result = 0x676974694D646964;
      break;
    case 3:
      result = 0x636E617265747475;
      break;
    case 4:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26946AAC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F18, &qword_2694858F8);
  OUTLINED_FUNCTION_0_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26946CCDC();
  sub_269484E0C();
  v14 = *v3;
  v15 = v3[1];
  v23[15] = 0;
  OUTLINED_FUNCTION_5_0();
  sub_269484D0C();
  if (!v2)
  {
    v16 = *(v3 + 4);
    v23[14] = 1;
    sub_269484D2C();
    v17 = *(v3 + 20);
    v23[13] = 2;
    sub_269484D1C();
    v18 = v3[3];
    v19 = v3[4];
    v23[12] = 3;
    OUTLINED_FUNCTION_5_0();
    sub_269484CFC();
    v20 = v3[5];
    v21 = v3[6];
    v23[11] = 4;
    OUTLINED_FUNCTION_5_0();
    sub_269484CFC();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_26946AC7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F08, &qword_2694858F0);
  OUTLINED_FUNCTION_0_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26946CCDC();
  sub_269484DFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v38[0]) = 0;
  OUTLINED_FUNCTION_2_0();
  v14 = sub_269484CBC();
  v16 = v15;
  LOBYTE(v38[0]) = 1;
  OUTLINED_FUNCTION_2_0();
  sub_269484CDC();
  v18 = v17;
  LOBYTE(v38[0]) = 2;
  OUTLINED_FUNCTION_2_0();
  LODWORD(v32) = sub_269484CCC();
  LOBYTE(v38[0]) = 3;
  OUTLINED_FUNCTION_2_0();
  v31 = sub_269484CAC();
  v33 = v19;
  v45 = 4;
  v20 = sub_269484CAC();
  v30 = v32 & 1;
  v21 = *(v7 + 8);
  v32 = v20;
  v23 = v22;
  v21(v12, v5);
  *&v34 = v14;
  *(&v34 + 1) = v16;
  LODWORD(v35) = v18;
  v24 = v30;
  BYTE4(v35) = v30;
  v25 = v31;
  v26 = v33;
  *(&v35 + 1) = v31;
  *&v36 = v33;
  *(&v36 + 1) = v32;
  v37 = v23;
  sub_26946CD30(&v34, v38);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v38[0] = v14;
  v38[1] = v16;
  v39 = v18;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v32;
  v44 = v23;
  result = sub_26946CD68(v38);
  v28 = v35;
  *a2 = v34;
  *(a2 + 16) = v28;
  *(a2 + 32) = v36;
  *(a2 + 48) = v37;
  return result;
}

uint64_t sub_26946AF34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26946A658(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_26946AF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26946A860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26946AFB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26946AA10();
  *a1 = result;
  return result;
}

uint64_t sub_26946AFDC(uint64_t a1)
{
  v2 = sub_26946CCDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26946B018(uint64_t a1)
{
  v2 = sub_26946CCDC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26946B054@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26946AC7C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

BOOL sub_26946B0BC()
{
  v0 = sub_2694848EC();
  v1 = sub_2694848EC();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  if (AppBooleanValue)
  {
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v3 = sub_2694847EC();
    __swift_project_value_buffer(v3, qword_2813286A0);
    v4 = sub_2694847DC();
    v5 = sub_269484ADC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "MHLogger - com.apple.voicetrigger 'AttentiveSiri AudioLogging Enabled' is enabled";
LABEL_10:
      _os_log_impl(&dword_269461000, v4, v5, v7, v6, 2u);
      MEMORY[0x26D63EF60](v6, -1, -1);
    }
  }

  else
  {
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v8 = sub_2694847EC();
    __swift_project_value_buffer(v8, qword_2813286A0);
    v4 = sub_2694847DC();
    v5 = sub_269484ADC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "MHLogger - com.apple.voicetrigger 'AttentiveSiri AudioLogging Enabled' is not set/present";
      goto LABEL_10;
    }
  }

  return AppBooleanValue != 0;
}

void sub_26946B270(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EA0, &qword_2694857A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269485720;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_26946CA20();
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v7 = objc_allocWithZone(MEMORY[0x277CBEAA8]);

  v8 = [v7 init];
  [v8 timeIntervalSince1970];
  v10 = v9;
  v11 = v9;

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = sub_269484D4C();
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v12;
  *(v4 + 80) = v13;
  sub_26948491C();
  sub_269463554(0, &qword_280317EB0, 0x277CBEBC0);
  v14 = sub_26946B478();
  v15 = sub_2694848EC();
  v16 = [v14 URLByAppendingPathComponent_];

  if (v16)
  {

    sub_2694842CC();

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_26946B478()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2694848EC();

  v2 = [v0 initFileURLWithPath_];

  return v2;
}

uint64_t sub_26946B4EC(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for TTCandidate(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v46 = &v45 - v9;
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v49 = OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_ttCandidates;
  v50 = a1;
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v47 = v14;
  v48 = a1 + 64;
  if (v13)
  {
LABEL_4:
    v57 = v17;
LABEL_9:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v16 << 6);
    v21 = (*(v50 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v50 + 56) + 40 * v20;
    v25 = *v24;
    v54 = *(v24 + 4);
    v26 = *(v24 + 8);
    v55 = *(v24 + 16);
    v56 = v26;
    v27 = *(v51 + v49);
    v28 = *(v27 + 16);

    for (i = 0; ; ++i)
    {
      if (v28 == i)
      {
        v52 = 0;
        v53 = 0;
LABEL_20:
        v17 = v57;
        if (v54 == 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = sub_269484D5C();
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v54 = v33;
        if ((result & 1) == 0)
        {
          result = sub_26946C6D0(0, *(v17 + 16) + 1, 1, v17);
          v17 = result;
        }

        v35 = *(v17 + 16);
        v34 = *(v17 + 24);
        if (v35 >= v34 >> 1)
        {
          result = sub_26946C6D0((v34 > 1), v35 + 1, 1, v17);
          v17 = result;
        }

        v36 = v54 & 1;
        *(v17 + 16) = v35 + 1;
        v37 = v17 + 56 * v35;
        *(v37 + 32) = v22;
        *(v37 + 40) = v23;
        *(v37 + 48) = v25;
        *(v37 + 52) = v36;
        v38 = v59;
        *(v37 + 53) = v58;
        *(v37 + 55) = v38;
        v39 = v52;
        *(v37 + 56) = v53;
        *(v37 + 64) = v39;
        v40 = v55;
        *(v37 + 72) = v56;
        *(v37 + 80) = v40;
        v14 = v47;
        v10 = v48;
        if (!v13)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (i >= *(v27 + 16))
      {
        break;
      }

      sub_269469A68(v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, v8);
      v30 = *v8 == v22 && v8[1] == v23;
      if (v30 || (sub_269484D5C() & 1) != 0)
      {
        v31 = v46;
        sub_26946CA74(v8, v46);
        v32 = *(v31 + 72);
        v52 = *(v31 + 80);
        v53 = v32;

        sub_269469ACC(v31);
        goto LABEL_20;
      }

      result = sub_269469ACC(v8);
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v42 = *(v51 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId);
        v41 = *(v51 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId + 8);
        v43 = *(v51 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId);
        v44 = *(v51 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId + 8);

        sub_26946B904(v42, v41, v17, v43, v44);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v57 = v17;
        v16 = v18;
        goto LABEL_9;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26946B904(void (*a1)(void, void), uint64_t a2, uint64_t (*a3)(uint64_t a1), unint64_t a4, uint64_t a5)
{
  v78 = a5;
  v76 = a4;
  v86 = a2;
  v87 = a3;
  v85 = a1;
  v6 = sub_26948482C();
  v7 = OUTLINED_FUNCTION_0_1(v6);
  v84 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v82 = v12 - v11;
  v83 = sub_26948485C();
  v13 = OUTLINED_FUNCTION_0_1(v83);
  v81 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v80 = v18 - v17;
  v19 = sub_26948483C();
  v20 = OUTLINED_FUNCTION_0_1(v19);
  v75 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  v79 = sub_2694842EC();
  v27 = OUTLINED_FUNCTION_0_1(v79);
  v77 = v28;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v32 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v69 - v33;
  v35 = sub_26948493C();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  OUTLINED_FUNCTION_3();
  v37 = sub_26948425C();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  OUTLINED_FUNCTION_3();
  result = sub_26946B0BC();
  if (result)
  {
    v73 = v6;
    v74 = v34;
    v40 = sub_26948429C();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = sub_26948428C();
    sub_26948424C();
    sub_26948426C();
    aBlock = v85;
    v89 = v86;
    v90 = v87;
    sub_26946C514();
    v44 = sub_26948427C();
    if (!v5)
    {
      v46 = v44;
      v47 = v45;
      v87 = v43;
      sub_26948492C();
      v48 = sub_26948490C();
      if (v49)
      {
        v50 = v74;
        v70 = v48;
        v72 = v46;
        v69 = v49;
        sub_26946B270(v76, v78);
        v86 = 0;
        sub_2694842BC();
        sub_2694842DC();

        v51 = v77;
        v52 = *(v77 + 8);
        v78 = v77 + 8;
        v85 = v52;
        v76 = v47;
        v53 = v79;
        v52(v32, v79);
        sub_269463554(0, &qword_280317E78, 0x277D85C78);
        v54 = v75;
        (*(v75 + 104))(v26, *MEMORY[0x277D851C8], v19);
        v71 = sub_269484B1C();
        (*(v54 + 8))(v26, v19);
        (*(v51 + 16))(v32, v50, v53);
        v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v56 = swift_allocObject();
        v57 = v69;
        *(v56 + 16) = v70;
        *(v56 + 24) = v57;
        (*(v51 + 32))(v56 + v55, v32, v53);
        v92 = sub_26946C5C0;
        v93 = v56;
        aBlock = MEMORY[0x277D85DD0];
        v89 = 1107296256;
        v90 = sub_26946C4AC;
        v91 = &block_descriptor_0;
        v58 = _Block_copy(&aBlock);
        v59 = v80;
        sub_26948484C();
        v94 = MEMORY[0x277D84F90];
        sub_26946C9D8(&qword_280317E80, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E88, &unk_269485790);
        sub_26946C624();
        v60 = v82;
        v61 = v73;
        sub_269484BCC();
        v62 = v71;
        MEMORY[0x26D63E6E0](0, v59, v60, v58);
        _Block_release(v58);

        sub_26946C568(v72, v76);

        (*(v84 + 8))(v60, v61);
        (*(v81 + 8))(v59, v83);
        v85(v74, v53);
      }

      else
      {
        if (qword_281327EE0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v63 = sub_2694847EC();
        __swift_project_value_buffer(v63, qword_2813286A0);
        v64 = sub_2694847DC();
        v65 = sub_269484AEC();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_269461000, v64, v65, "error serializing ncData to json string", v66, 2u);
          MEMORY[0x26D63EF60](v66, -1, -1);
        }

        v67 = OUTLINED_FUNCTION_6_0();
        sub_26946C568(v67, v68);
      }
    }
  }

  return result;
}

uint64_t sub_26946BFF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v39 = a1;
  v5 = sub_26948493C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2694842EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v15 = sub_2694847EC();
  v16 = __swift_project_value_buffer(v15, qword_2813286A0);
  (*(v11 + 16))(v14, a3, v10);

  v40 = a2;
  v38 = v16;
  v17 = sub_2694847DC();
  v18 = v40;
  v19 = v17;
  v20 = sub_269484ADC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = v5;
    v22 = v21;
    v35 = swift_slowAlloc();
    v36 = a3;
    v41[0] = v35;
    *v22 = 136315394;
    v34 = v20;
    v23 = v39;
    *(v22 + 4) = sub_269463C18(v39, v18, v41);
    *(v22 + 12) = 2080;
    sub_26946C9D8(&qword_280317E98, MEMORY[0x277CC9260]);
    v24 = sub_269484D4C();
    v25 = v9;
    v26 = v6;
    v28 = v27;
    (*(v11 + 8))(v14, v10);
    v29 = sub_269463C18(v24, v28, v41);
    v6 = v26;
    v9 = v25;

    *(v22 + 14) = v29;
    v18 = v40;
    _os_log_impl(&dword_269461000, v19, v34, "writing to file with json %s at %s", v22, 0x16u);
    v30 = v35;
    swift_arrayDestroy();
    MEMORY[0x26D63EF60](v30, -1, -1);
    v31 = v22;
    v5 = v37;
    MEMORY[0x26D63EF60](v31, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    v23 = v39;
  }

  v41[0] = v23;
  v41[1] = v18;
  sub_26948492C();
  sub_269466374();
  sub_269484B9C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26946C4AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_26946C514()
{
  result = qword_280317E70;
  if (!qword_280317E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317E70);
  }

  return result;
}

uint64_t sub_26946C568(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26946C5C0()
{
  v1 = *(sub_2694842EC() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_26946BFF8(v2, v3, v4);
}

unint64_t sub_26946C624()
{
  result = qword_280317E90;
  if (!qword_280317E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280317E88, &unk_269485790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317E90);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_26946C6D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EB8, &qword_2694857A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26946C820(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || &v15[48 * v10] <= v14)
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_26946C92C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_0(a3, result);
  }

  return result;
}

char *sub_26946C94C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_0(a3, result);
  }

  return result;
}

uint64_t sub_26946C970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E50, &qword_269485F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26946C9D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26946CA20()
{
  result = qword_280317EA8;
  if (!qword_280317EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317EA8);
  }

  return result;
}

uint64_t sub_26946CA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTCandidate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26946CAF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26946CB34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_26946CBA4(uint64_t a1, int a2)
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

uint64_t sub_26946CBE4(uint64_t result, int a2, int a3)
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

unint64_t sub_26946CC34()
{
  result = qword_280317EE8;
  if (!qword_280317EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317EE8);
  }

  return result;
}

unint64_t sub_26946CC88()
{
  result = qword_280317F00;
  if (!qword_280317F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F00);
  }

  return result;
}

unint64_t sub_26946CCDC()
{
  result = qword_280317F10;
  if (!qword_280317F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F10);
  }

  return result;
}

uint64_t sub_26946CD98(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280317EF0, &qword_2694858E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26946CE10()
{
  result = qword_280317F30;
  if (!qword_280317F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NCTCUData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NCMode(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for NCData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_26946D0B4()
{
  result = qword_280317F38;
  if (!qword_280317F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F38);
  }

  return result;
}

unint64_t sub_26946D10C()
{
  result = qword_280317F40;
  if (!qword_280317F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F40);
  }

  return result;
}

unint64_t sub_26946D164()
{
  result = qword_280317F48;
  if (!qword_280317F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F48);
  }

  return result;
}

unint64_t sub_26946D1BC()
{
  result = qword_280317F50;
  if (!qword_280317F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F50);
  }

  return result;
}

unint64_t sub_26946D214()
{
  result = qword_280317F58;
  if (!qword_280317F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F58);
  }

  return result;
}

unint64_t sub_26946D26C()
{
  result = qword_280317F60;
  if (!qword_280317F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F60);
  }

  return result;
}

uint64_t TTClientError.hashValue.getter()
{
  v1 = *v0;
  sub_269484DCC();
  MEMORY[0x26D63E9B0](v1);
  return sub_269484DEC();
}

unint64_t sub_26946D364()
{
  result = qword_280317F68;
  if (!qword_280317F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TTClientError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26946D50C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26946D54C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26946D5A4(char a1)
{
  result = 0x74756374726F6873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = OUTLINED_FUNCTION_11_0();
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26946D694()
{
  v0 = sub_269484C9C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26946D6E0(char a1)
{
  result = 0x657461676974696DLL;
  switch(a1)
  {
    case 1:
      result = 0x74694D746F6E6F64;
      break;
    case 2:
      result = OUTLINED_FUNCTION_2_1();
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26946D784@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26946D5A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26946D7B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2694827C8();
}

uint64_t sub_26946D7D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26946D694();
  *a2 = result;
  return result;
}

uint64_t sub_26946D804@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26946D6E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26946D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for TTCandidate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x277D84F98];
  v88 = MEMORY[0x277D84F98];
  v15 = v4[3];
  v81 = v4;
  v16 = *__swift_project_boxed_opaque_existential_1(v4, v15);
  v78 = a2;
  v79 = a3;
  v80 = a4;
  sub_269473AF0();
  v17 = *(a1 + 16);
  v72 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v76 = *(v10 + 72);
    v77 = v13;
    while (1)
    {
      sub_269469A68(v19, v13);
      LODWORD(v82) = sub_26946DEC4(v13, v78, v79, v80);
      v21 = v20;
      if (v18)
      {

        v14 = v88;
      }

      v23 = *v13;
      v22 = v13[1];

      swift_isUniquelyReferenced_nonNull_native();
      *&v85 = v14;
      v24 = sub_269480E90(v23, v22);
      if (__OFADD__(*(v14 + 16), (v25 & 1) == 0))
      {
        break;
      }

      v26 = v24;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F70, &qword_269485CB8);
      if (sub_269484C5C())
      {
        v28 = sub_269480E90(v23, v22);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_49;
        }

        v26 = v28;
      }

      v14 = v85;
      if (v27)
      {
        v30 = *(v85 + 56) + 16 * v26;
        v31 = *(v30 + 8);
        *v30 = v82;
        v10 = v21;
        *(v30 + 8) = v21;
      }

      else
      {
        *(v85 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v32 = (*(v14 + 48) + 16 * v26);
        *v32 = v23;
        v32[1] = v22;
        v33 = *(v14 + 56) + 16 * v26;
        *v33 = v82;
        *(v33 + 8) = v21;
        v34 = *(v14 + 16);
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_48;
        }

        v10 = v21;
        *(v14 + 16) = v36;
      }

      v88 = v14;
      v13 = v77;
      sub_269469ACC(v77);
      v19 += v76;
      v18 = 1;
      if (!--v17)
      {
        goto LABEL_14;
      }
    }

LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_14:
    v37 = v81;
    v38 = *__swift_project_boxed_opaque_existential_1(v81, v81[3]);
    sub_2694745C0(v78, v79, v80, v14);
    if (v37[5])
    {
LABEL_42:
      v69 = v88;
      if (v72)
      {
      }

      return v69;
    }

    v71 = v10;
    v39 = v14 + 64;
    v40 = 1 << *(v14 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v14 + 64);
    v43 = (v40 + 63) >> 6;
    v81 = 0x8000000269486C90;
    v82 = "reservedForTests";
    OUTLINED_FUNCTION_13_0();
    v79 = v44;
    v80 = v45;
    OUTLINED_FUNCTION_13_0();
    v78 = v46;

    v47 = 0;
    v74 = v14 + 64;
    v73 = v43;
    if (v42)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v43)
      {

        goto LABEL_42;
      }

      v42 = *(v39 + 8 * v48);
      ++v47;
      if (v42)
      {
        v47 = v48;
        do
        {
LABEL_22:
          v77 = ((v42 - 1) & v42);
          v49 = (v47 << 10) | (16 * __clz(__rbit64(v42)));
          v50 = *(v14 + 56);
          v51 = (*(v14 + 48) + v49);
          v52 = v51[1];
          v75 = *v51;
          v53 = *(v50 + v49 + 8);
          v54 = *(v53 + 16);
          v55 = v53 + 32;
          v76 = v52;

          v56 = 0;
          v57 = MEMORY[0x277D84F90];
          while (v54 != v56)
          {
            if (v56 >= *(v53 + 16))
            {
              __break(1u);
              goto LABEL_46;
            }

            sub_26946EC94(v55, &v85);
            v58 = *&v86[8];
            __swift_project_boxed_opaque_existential_1(&v85, *&v86[8]);
            switch((*(*(&v58 + 1) + 16))(v58, *(&v58 + 1)))
            {
              case 4u:
                OUTLINED_FUNCTION_11_0();
                goto LABEL_28;
              case 5u:

                goto LABEL_29;
              default:
LABEL_28:
                v59 = sub_269484D5C();

                if (v59)
                {
LABEL_29:
                  sub_26946F018(&v85);
                }

                else
                {
                  v83 = v85;
                  v84[0] = *v86;
                  *(v84 + 9) = *&v86[9];
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v87 = v57;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_26947B2AC(0, *(v57 + 16) + 1, 1);
                    v57 = v87;
                  }

                  v62 = *(v57 + 16);
                  v61 = *(v57 + 24);
                  if (v62 >= v61 >> 1)
                  {
                    v66 = OUTLINED_FUNCTION_4_1(v61);
                    sub_26947B2AC(v66, v62 + 1, 1);
                    v57 = v87;
                  }

                  *(v57 + 16) = v62 + 1;
                  v63 = (v57 + 48 * v62);
                  v64 = v83;
                  v65 = v84[0];
                  *(v63 + 57) = *(v84 + 9);
                  v63[2] = v64;
                  v63[3] = v65;
                }

                v55 += 48;
                ++v56;
                break;
            }
          }

          v68 = sub_26946EB84(&v85, v75, v76);
          if (*(v67 + 8))
          {
            *(v67 + 8) = v57;
          }

          else
          {
          }

          (v68)(&v85, 0);
          v39 = v74;
          v43 = v73;
          v42 = v77;
        }

        while (v42);
      }
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_269484D7C();
  __break(1u);
  return result;
}

uint64_t sub_26946DEC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v109 = a4;
  v108 = a3;
  v107 = a2;
  v5 = type metadata accessor for TTCandidate(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v102 - v10);
  if (qword_281327EE0 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v12 = sub_2694847EC();
    v13 = __swift_project_value_buffer(v12, qword_2813286A0);
    sub_269469A68(a1, v11);
    sub_269469A68(a1, v9);
    v120 = v13;
    v14 = sub_2694847DC();
    v15 = sub_269484ADC();
    v16 = os_log_type_enabled(v14, v15);
    v113 = a1;
    if (v16)
    {
      v17 = swift_slowAlloc();
      *&v121 = swift_slowAlloc();
      *v17 = 136315394;
      v18 = *v11;
      v19 = v11[1];

      sub_269469ACC(v11);
      v20 = sub_269463C18(v18, v19, &v121);
      a1 = v113;

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      v21 = *(v9 + 9);
      v22 = *(v9 + 10);

      sub_269469ACC(v9);
      v23 = sub_269463C18(v21, v22, &v121);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_269461000, v14, v15, "processing overrides on tcu candidate with id -%s and utterance - %s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_269469ACC(v9);
      sub_269469ACC(v11);
    }

    v11 = v116[6];
    v115 = v11[2];
    if (!v115)
    {
      break;
    }

    v117 = 0;
    v24 = 0;
    v25 = (v11 + 4);
    OUTLINED_FUNCTION_13_0();
    v119 = v26;
    v106 = 0x8000000269486C90;
    v105 = 0x8000000269486CD0;
    OUTLINED_FUNCTION_13_0();
    v104 = v27;
    v103 = 0x8000000269486D10;
    v110 = 0x8000000269486860;
    v118 = MEMORY[0x277D84F90];
    *&v28 = 136315138;
    v111 = v28;
    *&v28 = 136315394;
    v102 = v28;
    v29 = 0;
    v114 = v11;
    while (v29 < v11[2])
    {
      sub_26946F0D0(v25, v124);
      OUTLINED_FUNCTION_15_0();
      v30 = sub_2694847DC();
      v31 = sub_269484ADC();
      if (os_log_type_enabled(v30, v31))
      {
        v112 = 0;
        v32 = v119;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v123[0] = v34;
        *v33 = v111;
        v35 = OUTLINED_FUNCTION_1_0();
        v36(v35);
        OUTLINED_FUNCTION_10_0();
        v38 = v37 + 7;
        a1 = v113;
        switch(v39)
        {
          case 1:
            v38 = v37 - 5;
            v40 = &v126;
            goto LABEL_18;
          case 2:
            v38 = v37 - 7;
            v40 = &v127;
            goto LABEL_18;
          case 3:
            v38 = 0xD000000000000017;
            v40 = &v128;
            goto LABEL_18;
          case 4:
            v38 = 0x65636E756F6E6E61;
            goto LABEL_16;
          case 5:
            break;
          case 6:
            v38 = v37 - 7;
            v40 = &v129;
LABEL_18:
            v32 = *(v40 - 32);
            break;
          default:
            v38 = 0x74756374726F6873;
LABEL_16:
            v32 = 0xEF7265686374614DLL;
            break;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v121);
        v41 = sub_269463C18(v38, v32, v123);

        *(v33 + 4) = v41;
        _os_log_impl(&dword_269461000, v30, v31, "Running TTM Override %s ..", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();

        v24 = v112;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v121);
      }

      v42 = v125;
      v43 = v126;
      __swift_project_boxed_opaque_existential_1(v124, v125);
      v44 = v24;
      v45 = (*(v43 + 8))(a1, v42, v43);
      if (v24)
      {
        if ((v117 & 0x100000000) != 0)
        {
        }

        else
        {
          v63 = v24;
          v64 = __swift_project_boxed_opaque_existential_1(v116, v116[3]);
          v65 = *a1;
          v66 = a1[1];
          v67 = *v64;
          sub_269474B64();
          OUTLINED_FUNCTION_15_0();
          v68 = sub_2694847DC();
          v69 = sub_269484ADC();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v123[0] = v71;
            *v70 = v111;
            v72 = OUTLINED_FUNCTION_1_0();
            a1 = v113;
            v74 = v73(v72);
            v75 = OUTLINED_FUNCTION_12_0(v74);

            *(v70 + 4) = v75;
            _os_log_impl(&dword_269461000, v68, v69, "%s resulted in error", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v71);
            OUTLINED_FUNCTION_6_1();
            OUTLINED_FUNCTION_6_1();
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0Tm(&v121);
          }
        }

        v24 = 0;
        v46 = 2;
        HIDWORD(v117) = 1;
      }

      else
      {
        v46 = v45;
        OUTLINED_FUNCTION_15_0();
        v122[24] = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_26946C7E8(0, *(v118 + 2) + 1, 1, v118);
        }

        v48 = *(v118 + 2);
        v47 = *(v118 + 3);
        if (v48 >= v47 >> 1)
        {
          v88 = OUTLINED_FUNCTION_4_1(v47);
          v118 = sub_26946C7E8(v88, v48 + 1, 1, v118);
        }

        v49 = v118;
        *(v118 + 2) = v48 + 1;
        v50 = &v49[48 * v48];
        v51 = v121;
        v52 = *v122;
        *(v50 + 57) = *&v122[9];
        *(v50 + 2) = v51;
        *(v50 + 3) = v52;
        OUTLINED_FUNCTION_15_0();
        v53 = sub_2694847DC();
        v54 = sub_269484ACC();
        if (os_log_type_enabled(v53, v54))
        {
          v112 = v29;
          v55 = swift_slowAlloc();
          v123[0] = swift_slowAlloc();
          *v55 = v102;
          v56 = OUTLINED_FUNCTION_1_0();
          v58 = v57(v56);
          v59 = OUTLINED_FUNCTION_12_0(v58);

          *(v55 + 4) = v59;
          *(v55 + 12) = 2080;
          v60 = 0xE800000000000000;
          v61 = 0x657461676974696DLL;
          a1 = v113;
          switch(v46)
          {
            case 1u:
              v61 = 0x74694D746F6E6F64;
              v62 = 1952540521;
              goto LABEL_36;
            case 2u:
              v61 = OUTLINED_FUNCTION_2_1();
              v62 = 1684632178;
LABEL_36:
              v60 = v62 | 0xED00006500000000;
              break;
            case 3u:
              v61 = 0xD000000000000017;
              v60 = v110;
              break;
            default:
              break;
          }

          v76 = sub_269463C18(v61, v60, v123);

          *(v55 + 14) = v76;
          _os_log_impl(&dword_269461000, v53, v54, "%s returned %s", v55, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_6_1();

          v29 = v112;
          v24 = 0;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v121);
        }
      }

      ++v29;
      v77 = v125;
      v78 = v126;
      __swift_project_boxed_opaque_existential_1(v124, v125);
      v9 = 0xED00006574616769;
      switch((*(v78 + 16))(v77, v78))
      {
        case 1u:
          OUTLINED_FUNCTION_10_0();
          v79 = &v126;
          goto LABEL_46;
        case 2u:
          OUTLINED_FUNCTION_10_0();
          v79 = &v127;
          goto LABEL_46;
        case 3u:
          OUTLINED_FUNCTION_7_1(&v128);
          break;
        case 4u:
          OUTLINED_FUNCTION_11_0();
          break;
        case 5u:

          goto LABEL_48;
        case 6u:
          OUTLINED_FUNCTION_10_0();
          v79 = &v129;
LABEL_46:
          v80 = *(v79 - 32);
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_10_0();
      v81 = sub_269484D5C();

      if ((v81 & 1) == 0)
      {
LABEL_53:
        v83 = v46;
        switch(v46)
        {
          case 0u:
            goto LABEL_56;
          case 1u:

            goto LABEL_74;
          case 2u:
            OUTLINED_FUNCTION_2_1();
            goto LABEL_56;
          case 3u:
            OUTLINED_FUNCTION_7_1(&v130);
LABEL_56:
            v84 = v83;
            v85 = sub_269484D5C();

            if ((v85 & 1) == 0)
            {
              switch(v84)
              {
                case 0:

                  v86 = 1;
                  goto LABEL_62;
                case 1:
                  goto LABEL_61;
                case 2:
                  v9 = 0xED00006564697272;
                  OUTLINED_FUNCTION_2_1();
                  goto LABEL_61;
                case 3:
                  v9 = v110;
LABEL_61:
                  v87 = OUTLINED_FUNCTION_8_1();

                  v86 = v87 | v117;
LABEL_62:
                  LODWORD(v117) = v86;
                  goto LABEL_63;
                default:
                  goto LABEL_83;
              }
            }

LABEL_74:
            v97 = sub_2694847DC();
            v98 = sub_269484ACC();
            if (os_log_type_enabled(v97, v98))
            {
              *swift_slowAlloc() = 0;
              OUTLINED_FUNCTION_27(&dword_269461000, v99, v100, "OverridesContainer returned a result of donot Mitigate");
              OUTLINED_FUNCTION_6_1();
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v124);
            v95 = 1;
            break;
          default:
LABEL_83:
            JUMPOUT(0);
        }

        return v95;
      }

LABEL_48:
      if (*(v116 + 40) == 1)
      {
        switch(v46)
        {
          case 1u:
            goto LABEL_52;
          case 2u:
            OUTLINED_FUNCTION_2_1();
            goto LABEL_52;
          case 3u:
            OUTLINED_FUNCTION_7_1(&v130);
LABEL_52:
            v82 = OUTLINED_FUNCTION_8_1();

            if ((v82 & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_78;
          default:

LABEL_78:
            __swift_destroy_boxed_opaque_existential_0Tm(v124);
            break;
        }

        return 0;
      }

LABEL_63:
      v11 = v114;
      __swift_destroy_boxed_opaque_existential_0Tm(v124);
      v25 += 40;
      if (v115 == v29)
      {
        if ((v117 & 1) == 0)
        {
          goto LABEL_70;
        }

        v89 = sub_2694847DC();
        v90 = sub_269484ACC();
        if (os_log_type_enabled(v89, v90))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_27(&dword_269461000, v91, v92, "OverridesContainer returned a result of mitigate");
          OUTLINED_FUNCTION_6_1();
        }

        return 0;
      }
    }

    __break(1u);
LABEL_82:
    swift_once();
  }

  v118 = MEMORY[0x277D84F90];
LABEL_70:
  v93 = sub_2694847DC();
  v94 = sub_269484ACC();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = 2;
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_269461000, v93, v94, "OverridesContainer returned a result of donot Override", v96, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    return 2;
  }

  return v95;
}

void (*sub_26946EB84(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_26946ECCC(v6, a2, a3);
  return sub_26946EBF8;
}

void sub_26946EBF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_26946EC44(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void (*sub_26946ECCC(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_26946EFE4(v7);
  v7[9] = sub_26946EDC4(v7 + 4, a2, a3);
  return sub_26946ED64;
}

void sub_26946ED64(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_26946EDC4(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v8;
  v8[3] = a3;
  v8[4] = v3;
  v8[2] = a2;
  v9 = *v3;
  v10 = sub_269480E90(a2, a3);
  *(v8 + 48) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F70, &qword_269485CB8);
  if (sub_269484C5C())
  {
    v14 = *v4;
    v15 = sub_269480E90(a2, a3);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_269484D7C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[5] = v12;
  if (v13)
  {
    v17 = (*(*v4 + 56) + 16 * v12);
    v18 = *v17;
    v19 = *(v17 + 1);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  *v8 = v18;
  v8[1] = v19;
  return sub_26946EF10;
}

void sub_26946EF10(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = *(*a1 + 48);
  if (v3)
  {
    v5 = v1[5];
    v6 = *v1[4];
    if (v4)
    {
      v7 = v6[7] + 16 * v5;
      *v7 = v2;
      *(v7 + 8) = v3;
    }

    else
    {
      sub_26946EC44(v5, v1[2], v1[3], v2, v3, v6);
    }
  }

  else if ((*a1)[6])
  {
    sub_26946F07C(*(*v1[4] + 48) + 16 * v1[5]);
    sub_269484C6C();
  }

  v8 = v1[1];

  free(v1);
}

uint64_t (*sub_26946EFE4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26946F00C;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_26946F0D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26946F140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26946F180(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26946F1DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26946F21C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_26946F274(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26946F2FC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26946F3D8()
{
  result = qword_280317F78;
  if (!qword_280317F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return sub_269484D5C();
}

uint64_t sub_26946F470(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2694843DC();
  v4 = *(v37 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v37);
  v33 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v33 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = (&v33 - v11);
  if (qword_281327EE0 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v35 = v10;
  v36 = v2;
  v13 = sub_2694847EC();
  v34 = __swift_project_value_buffer(v13, qword_2813286A0);
  v10 = sub_2694847DC();
  v14 = sub_269484ADC();
  if (os_log_type_enabled(v10, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_269461000, v10, v14, "Running shortcuts override", v15, 2u);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  v16 = 0;
  v17 = *(a1 + 40);
  a1 = *(v17 + 16);
  v18 = v4 + 16;
  v38 = (v4 + 8);
  v2 = v37;
  while (1)
  {
    if (a1 == v16)
    {
      return 2;
    }

    if (v16 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v19 = *(v4 + 16);
    v20 = v18;
    v19(v12, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v2);
    v10 = v12;
    if (sub_26946F84C())
    {
      break;
    }

    ++v16;
    (*v38)(v12, v2);
    v18 = v20;
  }

  v22 = v35;
  v19(v35, v12, v2);
  v23 = sub_2694847DC();
  v24 = sub_269484ADC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34 = v25;
    v37 = swift_slowAlloc();
    v39 = v37;
    *v25 = 136315138;
    v19(v33, v22, v2);
    v26 = sub_26948494C();
    v28 = v27;
    v29 = *v38;
    (*v38)(v22, v2);
    v30 = sub_269463C18(v26, v28, &v39);

    v31 = v34;
    *(v34 + 4) = v30;
    _os_log_impl(&dword_269461000, v23, v24, "Parse: %s is shortcut; recommending .donotMitigate", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();

    v29(v12, v2);
  }

  else
  {

    v32 = *v38;
    (*v38)(v22, v2);
    v32(v12, v2);
  }

  return 1;
}

BOOL sub_26946F84C()
{
  sub_26946FC0C();
  sub_26948453C();

  sub_2694704C8(v24, v22);
  if (v23)
  {
    sub_26948460C();
    if (OUTLINED_FUNCTION_2_2())
    {
      v0 = v20[0];
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    sub_269470538(v22);
    v0 = 0;
  }

  sub_2694704C8(v24, v22);
  if (v23)
  {
    sub_2694846CC();
    if (OUTLINED_FUNCTION_2_2())
    {
      v1 = v20[0];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    sub_269470538(v22);
    v1 = 0;
  }

  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v2 = sub_2694847EC();
  __swift_project_value_buffer(v2, qword_2813286A0);
  sub_2694704C8(v24, v22);

  v3 = sub_2694847DC();
  v4 = sub_269484ADC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v5 = 136315906;
    if (v0 | v1)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v0 | v1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_269463C18(v6, v7, &v21);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    sub_2694704C8(v22, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F80, qword_2694867F0);
    v9 = sub_26948494C();
    v11 = v10;
    sub_269470538(v22);
    v12 = sub_269463C18(v9, v11, &v21);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2080;
    v20[0] = v0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F88, &qword_269485E50);
    v13 = sub_26948494C();
    v15 = sub_269463C18(v13, v14, &v21);

    *(v5 + 24) = v15;
    *(v5 + 32) = 2080;
    v20[0] = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F90, &qword_269485E58);
    v16 = sub_26948494C();
    v18 = sub_269463C18(v16, v17, &v21);

    *(v5 + 34) = v18;
    _os_log_impl(&dword_269461000, v3, v4, "isShortcutIntent: %s where task is %s; as runTask %s as execTask %s", v5, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  else
  {

    sub_269470538(v22);
  }

  sub_269470538(v24);
  return (v0 | v1) != 0;
}

id sub_26946FBC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShortcutMatcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26946FC0C()
{
  v1 = sub_2694843DC();
  v66 = *(v1 - 8);
  v67 = v1;
  v2 = *(v66 + 64);
  MEMORY[0x28223BE20](v1);
  v65 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26948446C();
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v4);
  v69 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26948444C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = sub_2694843AC();
  v16 = *(v15 - 8);
  v72 = v15;
  v73 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v68 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v74 = &v64 - v20;
  v64 = v0;
  v21 = sub_2694843BC();
  v22 = 0;
  v23 = *(v21 + 16);
  while (1)
  {
    if (v23 == v22)
    {

      if (qword_281327EE0 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }

    if (v22 >= *(v21 + 16))
    {
      __break(1u);
LABEL_29:
      swift_once();
LABEL_9:
      v28 = sub_2694847EC();
      __swift_project_value_buffer(v28, qword_2813286A0);
      v29 = sub_2694847DC();
      v30 = sub_269484AEC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_269461000, v29, v30, "Failed to parse userParse. Returning nil intent", v31, 2u);
        MEMORY[0x26D63EF60](v31, -1, -1);
      }

      return 0;
    }

    (*(v8 + 16))(v12, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v7);
    if (sub_2694843EC())
    {
      break;
    }

    ++v22;
    (*(v8 + 8))(v12, v7);
  }

  (*(v8 + 32))(v14, v12, v7);
  v24 = v69;
  sub_26948442C();
  (*(v8 + 8))(v14, v7);
  v25 = v68;
  sub_26948445C();
  (*(v70 + 8))(v24, v71);
  v26 = v73;
  v27 = v72;
  (*(v73 + 32))(v74, v25, v72);
  v71 = sub_2694844FC();
  v34 = MEMORY[0x26D63E100]();
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v35 = sub_2694847EC();
  v36 = __swift_project_value_buffer(v35, qword_2813286A0);
  v38 = v65;
  v37 = v66;
  v39 = v67;
  (*(v66 + 16))(v65, v64, v67);

  v70 = v36;
  v40 = sub_2694847DC();
  v41 = sub_269484ADC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v76[0] = v69;
    *v42 = 136315394;
    v43 = sub_26948472C();
    v44 = MEMORY[0x26D63E620](v34, v43);
    v46 = v38;
    v47 = sub_269463C18(v44, v45, v76);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    sub_2694843BC();
    v48 = MEMORY[0x26D63E620]();
    v50 = v49;

    (*(v37 + 8))(v46, v67);
    v51 = sub_269463C18(v48, v50, v76);

    *(v42 + 14) = v51;
    _os_log_impl(&dword_269461000, v40, v41, "tasks are %s where userDialogActs are %s", v42, 0x16u);
    v52 = v69;
    swift_arrayDestroy();
    v26 = v73;
    MEMORY[0x26D63EF60](v52, -1, -1);
    MEMORY[0x26D63EF60](v42, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v38, v39);
  }

  if (!sub_269484008(v34))
  {

    v61 = sub_2694847DC();
    v62 = sub_269484AEC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_269461000, v61, v62, "NL Parse has no tasks. Returning nil intent", v63, 2u);
      MEMORY[0x26D63EF60](v63, -1, -1);
    }

    (*(v26 + 8))(v74, v27);
    return 0;
  }

  sub_26948402C(0, (v34 & 0xC000000000000001) == 0, v34);
  if ((v34 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x26D63E800](0, v34);
  }

  else
  {
    v32 = *(v34 + 32);
  }

  v53 = sub_2694847DC();
  v54 = sub_269484ADC();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v75 = v32;
    v76[0] = v56;
    *v55 = 136315138;
    sub_26948472C();

    v57 = sub_26948494C();
    v59 = v27;
    v60 = sub_269463C18(v57, v58, v76);

    *(v55 + 4) = v60;
    _os_log_impl(&dword_269461000, v53, v54, "firstTask is %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    MEMORY[0x26D63EF60](v56, -1, -1);
    MEMORY[0x26D63EF60](v55, -1, -1);

    (*(v26 + 8))(v74, v59);
  }

  else
  {

    (*(v26 + 8))(v74, v27);
  }

  return v32;
}

uint64_t sub_2694704C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F80, qword_2694867F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269470538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F80, qword_2694867F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269470690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26948436C();
  sub_269463554(0, &qword_281327DD8, 0x277D5AA68);
  sub_26948435C();
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

void sub_269470744()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_35();
  v8 = OUTLINED_FUNCTION_0_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_2();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_50();
  sub_2694842FC();
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    sub_2694645DC(v0, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v17 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v17, qword_2813286A0);

    v18 = sub_2694847DC();
    sub_269484AEC();

    if (OUTLINED_FUNCTION_59())
    {
      OUTLINED_FUNCTION_31();
      v19 = OUTLINED_FUNCTION_16_0();
      v53 = v19;
      OUTLINED_FUNCTION_27_0(4.8149e-34);
      v20 = OUTLINED_FUNCTION_50();
      *(v15 + 4) = sub_269463C18(v20, v21, v22);
      OUTLINED_FUNCTION_42();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    v29 = OUTLINED_FUNCTION_55(v10);
    v30(v29);
    v31 = objc_opt_self();
    v32 = sub_26948431C();
    v33 = [v31 derivedIdentifierForComponentName:37 fromSourceIdentifier:v32];

    if (v33)
    {
      sub_26948432C();

      v34 = *(v10 + 8);
      v35 = OUTLINED_FUNCTION_14_0();
      v36(v35);
      v28 = 0;
      goto LABEL_10;
    }

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v37 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v37, qword_2813286A0);
    v38 = OUTLINED_FUNCTION_52(v10);
    v39(v38);
    v40 = sub_2694847DC();
    v41 = sub_269484AEC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_31();
      v52 = v2;
      v53 = OUTLINED_FUNCTION_30();
      v43 = v53;
      *v42 = 136315138;
      v51 = sub_26948430C();
      v45 = v44;
      v46 = *(v10 + 8);
      v46(v15, v7);
      v47 = sub_269463C18(v51, v45, &v53);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_269461000, v40, v41, "error generating derived indeitifier for TTM from request UUID - %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      v2 = v52;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_22_0();

      v48 = OUTLINED_FUNCTION_14_0();
      (v46)(v48);
    }

    else
    {

      v49 = *(v10 + 8);
      v49(v15, v7);
      v50 = OUTLINED_FUNCTION_14_0();
      (v49)(v50);
    }
  }

  v28 = 1;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v2, v28, 1, v7);
  OUTLINED_FUNCTION_29_0();
}

void sub_269470B24()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_35();
  v10 = OUTLINED_FUNCTION_0_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_2();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  sub_269476360(v4, v0);
  OUTLINED_FUNCTION_3_2(v0);
  if (!v24)
  {
    (*(v12 + 32))(v23, v0, v9);
    v33 = [objc_allocWithZone(MEMORY[0x277D5B098]) init];
    if (v33)
    {
      v34 = v33;
      v35 = [objc_allocWithZone(MEMORY[0x277D5B0A0]) init];
      if (v35)
      {
        v36 = v35;
        sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
        v57 = v2;
        v37 = *(v12 + 16);
        v38 = OUTLINED_FUNCTION_39();
        v37(v38);
        v39 = sub_269470FF4(v21);
        [v36 setTtmId_];

        (v37)(v21, v57, v9);
        v40 = sub_269470FF4(v21);
        [v36 setTrpId_];

        [v34 setEventMetadata_];
        (*(v12 + 8))(v23, v9);
        goto LABEL_22;
      }

      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v49 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v49, qword_2813286A0);
      v50 = sub_2694847DC();
      v51 = sub_269484AEC();
      if (OUTLINED_FUNCTION_37(v51))
      {
        *OUTLINED_FUNCTION_36() = 0;
        OUTLINED_FUNCTION_43();
        _os_log_impl(v52, v53, v54, v55, v56, 2u);
        OUTLINED_FUNCTION_6_1();
      }
    }

    else
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v41 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v41, qword_2813286A0);
      v42 = sub_2694847DC();
      v43 = sub_269484AEC();
      if (OUTLINED_FUNCTION_37(v43))
      {
        *OUTLINED_FUNCTION_36() = 0;
        OUTLINED_FUNCTION_42();
        _os_log_impl(v44, v45, v46, v47, v48, 2u);
        OUTLINED_FUNCTION_12_1();
      }
    }

    (*(v12 + 8))(v23, v9);
    goto LABEL_22;
  }

  sub_2694645DC(v0, &qword_280317F98, &qword_269485F18);
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v25 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v25, qword_2813286A0);
  (*(v12 + 16))(v17, v2, v9);
  v26 = sub_2694847DC();
  v27 = sub_269484AEC();
  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_31();
    v28 = OUTLINED_FUNCTION_16_0();
    v58 = v28;
    *v2 = 136315138;
    sub_2694763D0();
    v29 = sub_269484D4C();
    v31 = v30;
    (*(v12 + 8))(v17, v9);
    v32 = sub_269463C18(v29, v31, &v58);

    *(v2 + 4) = v32;
    _os_log_impl(&dword_269461000, v26, v27, "cannot generate ttmClient event with nil ttmID and trpID - %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_12_1();
  }

  else
  {

    (*(v12 + 8))(v17, v9);
  }

LABEL_22:
  OUTLINED_FUNCTION_29_0();
}

id sub_269470FF4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26948431C();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_26948434C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_2694710AC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = sub_26948434C();
  v9 = OUTLINED_FUNCTION_0_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_0();
  v49 = v12;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = 0;
  v55 = MEMORY[0x277D84F90];
  v17 = *(v1 + OBJC_IVAR____TtC21SiriTurnTakingManager17TTManagerResponse_ttResults);
  v18 = (v17 + 32);
  v47 = (v19 + 16);
  v48 = (v19 + 32);
  v20 = (v19 + 8);
  v50 = v17;
  v51 = *(v17 + 16);
  while (v51 != v16)
  {
    if (v16 >= *(v50 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v21 = *v18;
    v22 = v18[1];
    *&v54[9] = *(v18 + 25);
    v53 = v21;
    *v54 = v22;
    v23 = objc_allocWithZone(MEMORY[0x277D5B130]);
    sub_2694762B0(&v53, v52);
    v24 = [v23 init];
    if (!v24)
    {
      sub_26947630C(&v53);

      if (qword_281327EE0 == -1)
      {
LABEL_10:
        v30 = sub_2694847EC();
        OUTLINED_FUNCTION_13_1(v30, qword_2813286A0);
        v31 = sub_2694847DC();
        v32 = sub_269484AEC();
        if (OUTLINED_FUNCTION_49(v32))
        {
          v33 = OUTLINED_FUNCTION_36();
          *v33 = 0;
          OUTLINED_FUNCTION_18_0();
          _os_log_impl(v34, v35, v36, v37, v33, 2u);
          OUTLINED_FUNCTION_6_1();
        }

        break;
      }

LABEL_20:
      OUTLINED_FUNCTION_0_0();
      swift_once();
      goto LABEL_10;
    }

    v25 = v24;
    v26 = v53;
    sub_2694762B0(&v53, v52);
    sub_2694842FC();
    sub_26947630C(&v53);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {

      sub_2694645DC(v7, &qword_280317F98, &qword_269485F18);
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v38 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v38, qword_2813286A0);
      sub_2694762B0(&v53, v52);
      v39 = sub_2694847DC();
      sub_269484AEC();
      sub_26947630C(&v53);
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_31();
        v40 = OUTLINED_FUNCTION_24_0();
        v52[0] = v40;
        *v8 = 136315138;
        v41 = sub_269463C18(v26, *(&v26 + 1), v52);
        sub_26947630C(&v53);
        *(v8 + 4) = v41;
        OUTLINED_FUNCTION_18_0();
        _os_log_impl(v42, v43, v44, v45, v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_11_1();
      }

      else
      {

        sub_26947630C(&v53);
      }

      break;
    }

    (*v48)(v15, v7, v8);
    sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
    v27 = v49;
    (*v47)(v49, v15, v8);
    v28 = sub_269470FF4(v27);
    [v25 setTcuId_];

    [v25 setDecision_];
    sub_26947630C(&v53);
    v29 = v25;
    MEMORY[0x26D63E600]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_269484A5C();
    }

    OUTLINED_FUNCTION_32();
    sub_269484A6C();

    (*v20)(v15, v8);
    v18 += 3;
    ++v16;
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_269471554()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_51();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_10_1();
  v9 = OUTLINED_FUNCTION_0_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_32();
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v1);
  if (v14)
  {
    sub_2694645DC(v1, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v15 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v15, qword_2813286A0);

    v16 = sub_2694847DC();
    sub_269484AEC();
    OUTLINED_FUNCTION_44();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_31();
      v17 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v17);
      OUTLINED_FUNCTION_27_0(4.8149e-34);
      v18 = OUTLINED_FUNCTION_32();
      *(v0 + 4) = sub_269463C18(v18, v19, v20);
      OUTLINED_FUNCTION_7_2(&dword_269461000, v21, v22, "error converting trpID %s to UUID");
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    v23 = OUTLINED_FUNCTION_9_1(v11);
    v24(v23);
    v25 = OUTLINED_FUNCTION_57(objc_allocWithZone(MEMORY[0x277D5B118]));
    v26 = v25;
    if (v25)
    {
      v27 = v25;
      sub_2694710AC();
      if (v28)
      {
        sub_269463554(0, &qword_281327DE0, 0x277D5B130);
        v29 = sub_269484A3C();
      }

      else
      {
        v29 = 0;
      }

      [v27 setResults_];

      v3 = &property descriptor for TTManagerRequest.trpCandidateId;
    }

    v30 = [objc_allocWithZone(MEMORY[0x277D5B110]) v3[54]];
    [v30 setEnded_];
    sub_269470B24();
    if (v31)
    {
      v32 = v31;
      [v31 setTtmRequestContext_];
      OUTLINED_FUNCTION_48();
      v33 = OUTLINED_FUNCTION_32();
      sub_269470690(v33, v34, v32);
    }

    else
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v35 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v35, qword_2813286A0);
      v36 = sub_2694847DC();
      v37 = sub_269484AEC();
      if (OUTLINED_FUNCTION_20_0(v37))
      {
        *OUTLINED_FUNCTION_36() = 0;
        OUTLINED_FUNCTION_54();
        _os_log_impl(v38, v39, v40, v41, v42, 2u);
        OUTLINED_FUNCTION_22_0();
      }

      else
      {
      }
    }

    v43 = *(v11 + 8);
    v44 = OUTLINED_FUNCTION_34();
    v45(v44);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2694718B0(char *a1)
{
  v1 = *a1;
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v2 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v2, qword_2813286A0);
  v3 = sub_2694847DC();
  v4 = sub_269484AEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_31();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    sub_26947625C();
    swift_allocError();
    *v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_269461000, v3, v4, "Neural Combiner failure reason %@", v5, 0xCu);
    sub_2694645DC(v6, &qword_280317E50, &qword_269485F30);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_6_1();
  }

  return 4 * ((v1 & 0xFE) == 2);
}

void sub_2694719E4()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_10_1();
  v10 = OUTLINED_FUNCTION_0_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v15 = *v4;
  OUTLINED_FUNCTION_14_0();
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v1);
  if (v16)
  {
    sub_2694645DC(v1, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v17 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v17, qword_2813286A0);

    v18 = sub_2694847DC();
    sub_269484AEC();
    OUTLINED_FUNCTION_44();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_31();
      v19 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v19);
      OUTLINED_FUNCTION_27_0(4.8149e-34);
      v20 = OUTLINED_FUNCTION_14_0();
      *(v0 + 4) = sub_269463C18(v20, v21, v22);
      OUTLINED_FUNCTION_7_2(&dword_269461000, v23, v24, "error converting trpID %s to UUID");
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    v25 = OUTLINED_FUNCTION_9_1(v12);
    v26(v25);
    v27 = OUTLINED_FUNCTION_57(objc_allocWithZone(MEMORY[0x277D5B120]));
    v28 = v27;
    if (v27)
    {
      v46 = v15;
      [v27 setReason_];
    }

    v29 = [objc_allocWithZone(MEMORY[0x277D5B110]) (v2 + 2936)];
    [v29 setFailed_];
    sub_269470B24();
    if (v30)
    {
      v31 = v30;
      [v30 setTtmRequestContext_];
      OUTLINED_FUNCTION_48();
      v32 = OUTLINED_FUNCTION_14_0();
      sub_269470690(v32, v33, v31);
    }

    else
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v34 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v34, qword_2813286A0);
      v35 = sub_2694847DC();
      v36 = sub_269484AEC();
      if (OUTLINED_FUNCTION_20_0(v36))
      {
        v37 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_38(v37);
        OUTLINED_FUNCTION_5_2();
        _os_log_impl(v38, v39, v40, v41, v42, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      else
      {
      }
    }

    v43 = *(v12 + 8);
    v44 = OUTLINED_FUNCTION_34();
    v45(v44);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_269471D04()
{
  OUTLINED_FUNCTION_28_0();
  v46 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = sub_26948434C();
  v13 = OUTLINED_FUNCTION_0_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_14_0();
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v11);
  if (v18)
  {
    sub_2694645DC(v11, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v19 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v19, qword_2813286A0);

    v20 = sub_2694847DC();
    sub_269484AEC();
    OUTLINED_FUNCTION_44();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_31();
      v21 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v21);
      OUTLINED_FUNCTION_27_0(4.8149e-34);
      v22 = OUTLINED_FUNCTION_14_0();
      *(v0 + 4) = sub_269463C18(v22, v23, v24);
      OUTLINED_FUNCTION_7_2(&dword_269461000, v25, v26, "error converting trpID %s to UUID");
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    (*(v15 + 32))(v0, v11, v12);
    v27 = OUTLINED_FUNCTION_57(objc_allocWithZone(*v5));
    v28 = v27;
    if (v27)
    {
      [v27 setExists_];
    }

    v29 = [objc_allocWithZone(*v3) v11 + 2936];
    [v29 setStartedOrChanged_];
    sub_269470B24();
    if (v30)
    {
      v31 = v30;
      [v30 *v46];
      OUTLINED_FUNCTION_48();
      v32 = OUTLINED_FUNCTION_14_0();
      sub_269470690(v32, v33, v31);
    }

    else
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v34 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v34, qword_2813286A0);
      v35 = sub_2694847DC();
      v36 = sub_269484AEC();
      if (OUTLINED_FUNCTION_20_0(v36))
      {
        v37 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_38(v37);
        OUTLINED_FUNCTION_5_2();
        _os_log_impl(v38, v39, v40, v41, v42, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      else
      {
      }
    }

    v43 = *(v15 + 8);
    v44 = OUTLINED_FUNCTION_34();
    v45(v44);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_269472028(_BYTE *a1)
{
  if (*a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_26947203C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v7);
  v68 = &v60 - v8;
  v9 = sub_26948434C();
  v10 = OUTLINED_FUNCTION_0_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_0();
  v64 = v13;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  v67 = &v60 - v15;
  v16 = MEMORY[0x277D84F90];
  v71 = MEMORY[0x277D84F90];
  v18 = a1 + 64;
  v17 = *(a1 + 64);
  v19 = *(a1 + 32);
  OUTLINED_FUNCTION_8_2();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v63 = (v25 + 16);
  v65 = (v25 + 32);
  v66 = (v25 + 8);
  v69 = a1;

  v26 = 0;
  v62 = v24;
  if (!v22)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v61 = v16;
LABEL_7:
    v28 = __clz(__rbit64(v22)) | (v26 << 6);
    v29 = (*(v69 + 48) + 16 * v28);
    v16 = *v29;
    v2 = v29[1];
    v30 = *(v69 + 56) + 40 * v28;
    v31 = *v30;
    v32 = *(v30 + 4);
    v33 = *(v30 + 37);

    v34 = v68;
    sub_2694842FC();
    if (__swift_getEnumTagSinglePayload(v34, 1, v9) == 1)
    {

      sub_2694645DC(v34, &qword_280317F98, &qword_269485F18);
      if (qword_281327EE0 != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    v35 = v67;
    (*v65)(v67, v34, v9);
    v36 = [objc_allocWithZone(MEMORY[0x277D5B0C8]) init];
    if (!v36)
    {
      break;
    }

    v37 = v36;
    sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
    v1 = v9;
    v38 = v64;
    (*v63)(v64, v35, v1);
    v39 = sub_269470FF4(v38);
    [v37 setTcuId_];

    LODWORD(v40) = v31;
    [v37 setNeuralCombinerScore_];
    [v37 setRecommendation_];
    if (v33)
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }

    [v37 setMode_];
    v2 = v37;
    MEMORY[0x26D63E600]();
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_269484A5C();
    }

    v22 &= v22 - 1;
    sub_269484A6C();

    (*v66)(v35, v1);
    v16 = v71;
    v9 = v1;
    v24 = v62;
    if (!v22)
    {
LABEL_3:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v24)
        {

          return v16;
        }

        v22 = *(v18 + 8 * v27);
        ++v26;
        if (v22)
        {
          v61 = v16;
          v26 = v27;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_30:
      OUTLINED_FUNCTION_0_0();
      swift_once();
LABEL_18:
      v42 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v42, qword_2813286A0);

      v43 = sub_2694847DC();
      sub_269484AEC();

      if (OUTLINED_FUNCTION_58())
      {
        OUTLINED_FUNCTION_31();
        v44 = OUTLINED_FUNCTION_24_0();
        v70 = v44;
        *v1 = 136315138;
        v45 = sub_269463C18(v16, v2, &v70);

        *(v1 + 4) = v45;
        OUTLINED_FUNCTION_5_2();
        _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_11_1();
      }

      else
      {
      }

      return 0;
    }
  }

  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v51 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v51, qword_2813286A0);
  v52 = sub_2694847DC();
  v53 = sub_269484AEC();
  if (OUTLINED_FUNCTION_37(v53))
  {
    *OUTLINED_FUNCTION_36() = 0;
    OUTLINED_FUNCTION_43();
    _os_log_impl(v54, v55, v56, v57, v58, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  (*v66)(v67, v9);
  return 0;
}

void *sub_269472590(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v78 = a1;
  v79 = a2;
  sub_269466374();
  v5 = &v78;
  v6 = sub_269484B8C();
  v7 = *(v6 + 16);
  if (v7 <= 1)
  {

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v8 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v8, qword_2813286A0);

    v2 = sub_2694847DC();
    sub_269484AEC();
    OUTLINED_FUNCTION_44();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_103;
    }

    OUTLINED_FUNCTION_31();
    v78 = OUTLINED_FUNCTION_16_0();
    *v6 = 136315138;
    v9 = OUTLINED_FUNCTION_14_0();
    *(v6 + 4) = sub_269463C18(v9, v10, v11);
    OUTLINED_FUNCTION_7_2(&dword_269461000, v12, v13, "The assertVersion=%s doesn't follow semantic version scheme");
    OUTLINED_FUNCTION_4_2();
    goto LABEL_32;
  }

  v14 = objc_allocWithZone(MEMORY[0x277D5ACA0]);
  v15 = [v14 init];
  if (!v15)
  {

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v27 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v27, qword_2813286A0);
    v2 = sub_2694847DC();
    v28 = sub_269484AEC();
    if (!OUTLINED_FUNCTION_49(v28))
    {
      goto LABEL_103;
    }

    v29 = OUTLINED_FUNCTION_36();
    *v29 = 0;
    OUTLINED_FUNCTION_18_0();
    _os_log_impl(v30, v31, v32, v33, v29, 2u);
LABEL_32:
    OUTLINED_FUNCTION_6_1();
    goto LABEL_103;
  }

  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_87;
  }

  v2 = v15;
  v5 = *(v6 + 32);
  v3 = *(v6 + 40);
  v16 = HIBYTE(v3) & 0xF;
  v17 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v18 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_82;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
LABEL_87:

    v21 = sub_269475770(v5, v3, 10);

    if ((v21 & 0x100000000) == 0)
    {
      goto LABEL_88;
    }

LABEL_82:

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v44 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v44, qword_2813286A0);

    v45 = sub_2694847DC();
    v46 = sub_269484AEC();

    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_102;
    }

    goto LABEL_100;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v78 = *(v6 + 32);
    v79 = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v5 == 43)
    {
      if (v16)
      {
        if (v16 != 1)
        {
          OUTLINED_FUNCTION_53();
          while (1)
          {
            OUTLINED_FUNCTION_15_1();
            if (!v23 & v22)
            {
              break;
            }

            OUTLINED_FUNCTION_46();
            if (!v23)
            {
              break;
            }

            v21 = v39 + v38;
            if (__CFADD__(v39, v38))
            {
              break;
            }

            OUTLINED_FUNCTION_45();
            if (v23)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }
    }

    else
    {
      if (v5 != 45)
      {
        if (v16)
        {
          while (1)
          {
            OUTLINED_FUNCTION_15_1();
            if (!v23 & v22)
            {
              break;
            }

            OUTLINED_FUNCTION_46();
            if (!v23)
            {
              break;
            }

            v21 = v43 + v42;
            if (__CFADD__(v43, v42))
            {
              break;
            }

            OUTLINED_FUNCTION_45();
            if (v23)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

      if (v16)
      {
        if (v16 != 1)
        {
          OUTLINED_FUNCTION_53();
          while (1)
          {
            OUTLINED_FUNCTION_15_1();
            if (!v23 & v22)
            {
              break;
            }

            OUTLINED_FUNCTION_46();
            if (!v23)
            {
              break;
            }

            v21 = v35 - v34;
            if (v35 < v34)
            {
              break;
            }

            OUTLINED_FUNCTION_45();
            if (v23)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
    }

    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    OUTLINED_FUNCTION_0_0();
    swift_once();
    goto LABEL_107;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    goto LABEL_111;
  }

  for (i = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_269484C3C())
  {
    v20 = *i;
    if (v20 == 43)
    {
      if (v17 < 1)
      {
        goto LABEL_114;
      }

      if (v17 != 1)
      {
        v21 = 0;
        if (!i)
        {
          goto LABEL_71;
        }

        while (1)
        {
          OUTLINED_FUNCTION_15_1();
          if (!v23 & v22)
          {
            break;
          }

          OUTLINED_FUNCTION_46();
          if (!v23)
          {
            break;
          }

          v21 = v37 + v36;
          if (__CFADD__(v37, v36))
          {
            break;
          }

          OUTLINED_FUNCTION_45();
          if (v23)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else if (v20 == 45)
    {
      if (v17 < 1)
      {
        __break(1u);
        goto LABEL_113;
      }

      if (v17 != 1)
      {
        v21 = 0;
        if (!i)
        {
          goto LABEL_71;
        }

        while (1)
        {
          OUTLINED_FUNCTION_15_1();
          if (!v23 & v22)
          {
            break;
          }

          OUTLINED_FUNCTION_46();
          if (!v23)
          {
            break;
          }

          v21 = v25 - v24;
          if (v25 < v24)
          {
            break;
          }

          OUTLINED_FUNCTION_45();
          if (v23)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else if (v17)
    {
      v21 = 0;
      if (!i)
      {
LABEL_71:
        v26 = 0;
        goto LABEL_81;
      }

      while (1)
      {
        v40 = *i - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v21;
        if ((v41 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        v21 = v41 + v40;
        if (__CFADD__(v41, v40))
        {
          break;
        }

        ++i;
        if (!--v17)
        {
          goto LABEL_71;
        }
      }
    }

LABEL_80:
    v21 = 0;
    v26 = 1;
LABEL_81:
    LOBYTE(v77) = v26;
    if (v26)
    {
      goto LABEL_82;
    }

LABEL_88:
    if (*(v6 + 16) >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_111:
    ;
  }

  v47 = *(v6 + 48);
  v48 = *(v6 + 56);

  v49 = sub_269472D04(v47, v48);
  if ((v49 & 0x100000000) != 0)
  {

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v55 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v55, qword_2813286A0);

    v45 = sub_2694847DC();
    v56 = sub_269484AEC();

    if (!os_log_type_enabled(v45, v56))
    {
      goto LABEL_102;
    }

LABEL_100:
    v57 = OUTLINED_FUNCTION_31();
    v58 = OUTLINED_FUNCTION_30();
    v78 = v58;
    *v57 = 136315138;
    v59 = OUTLINED_FUNCTION_14_0();
    *(v57 + 4) = sub_269463C18(v59, v60, v61);
    OUTLINED_FUNCTION_43();
    _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    OUTLINED_FUNCTION_22_0();
    goto LABEL_101;
  }

  v50 = v49;
  if (v7 == 2)
  {
LABEL_94:
    [v2 setMajor_];
    [v2 setMinor_];
    if (v7 == 4)
    {
      if (*(v6 + 16) < 4uLL)
      {
        goto LABEL_117;
      }

      v53 = *(v6 + 80);
      v54 = *(v6 + 88);

      sub_269476174(v53, v54, v2);
    }

    else
    {
    }
  }

  else
  {
    if (*(v6 + 16) < 3uLL)
    {
      goto LABEL_116;
    }

    v51 = *(v6 + 64);
    v4 = *(v6 + 72);

    v52 = sub_269472D04(v51, v4);
    if ((v52 & 0x100000000) == 0)
    {
      [v2 setPatch_];
      goto LABEL_94;
    }

    if (qword_281327EE0 != -1)
    {
      goto LABEL_118;
    }

LABEL_107:
    v68 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v68, qword_2813286A0);

    v45 = sub_2694847DC();
    sub_269484AEC();

    if (OUTLINED_FUNCTION_58())
    {
      OUTLINED_FUNCTION_31();
      v78 = OUTLINED_FUNCTION_24_0();
      *v4 = 136315138;
      v69 = *(v6 + 64);
      v70 = *(v6 + 72);

      v71 = sub_269463C18(v69, v70, &v78);

      *(v4 + 4) = v71;
      OUTLINED_FUNCTION_5_2();
      _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
      OUTLINED_FUNCTION_4_2();
LABEL_101:
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }

LABEL_102:

LABEL_103:
    return 0;
  }

  return v2;
}

uint64_t sub_269472D04(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v26 = 0;
    LOBYTE(v25) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v25;
    return v26 | ((v25 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_269475770(result, a2, 10);

    v25 = (v7 >> 32) & 1;
LABEL_63:
    v26 = v7;
    if (v25)
    {
      v26 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_269484C3C();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v7) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if ((v16 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v7) = v16 + v15;
              if (__CFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v21 + v20;
            if (__CFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v7) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if ((v10 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v10 - v9;
            if (v10 < v9)
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v25) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v27;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v24 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v24 + v23;
          if (__CFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v27 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if ((v13 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v13 - v12;
          if (v13 < v12)
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v27 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if ((v19 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v7) = v19 + v18;
        if (__CFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

void sub_269472FE4()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_10_1();
  v13 = OUTLINED_FUNCTION_0_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v1);
  if (!v18)
  {
    v73 = v7;
    v74 = v0;
    (*(v15 + 32))(v0, v1, v12);
    v25 = [objc_allocWithZone(MEMORY[0x277D5B0B0]) init];
    v7 = v3 + 64;
    v26 = *(v3 + 64);
    v27 = *(v3 + 32);
    OUTLINED_FUNCTION_8_2();
    v30 = v29 & v28;
    v32 = (v31 + 63) >> 6;

    v33 = 0;
    if (v30)
    {
      while (1)
      {
        v0 = v33;
LABEL_12:
        v34 = *(v3 + 56) + 40 * (__clz(__rbit64(v30)) | (v0 << 6));
        v35 = *(v34 + 16);
        if (v35)
        {
          break;
        }

        v30 &= v30 - 1;

        v33 = v0;
        if (!v30)
        {
          goto LABEL_9;
        }
      }

      v66 = *(v34 + 8);
      v67 = *(v34 + 16);

      v68 = [objc_allocWithZone(MEMORY[0x277D5A798]) init];
      v69 = v68;
      if (v68)
      {
        v70 = v68;
        v71 = sub_269472590(v66, v35);

        [v70 setAssetVersion_];
      }

      else
      {
      }

      v0 = v74;
      v36 = v25;
      v72 = v25;
      [v72 setAsset_];

LABEL_16:
      OUTLINED_FUNCTION_19_0();
      while (v39)
      {
LABEL_21:
        OUTLINED_FUNCTION_33();
        if ((*(v41 + 28) & 1) == 0)
        {
          LODWORD(v42) = *(v41 + 24);
          [v36 setNeuralCombinerThreshold_];
LABEL_23:
          OUTLINED_FUNCTION_19_0();
          while (v45)
          {
LABEL_28:
            OUTLINED_FUNCTION_33();
            if ((*(v47 + 36) & 1) == 0)
            {
              LODWORD(v48) = *(v47 + 32);
              [v36 setSpeakerIdThreshold_];
LABEL_30:
              if (v36)
              {
                v49 = v36;
                if (sub_26947203C(v3))
                {
                  sub_269463554(0, &qword_281327DB0, 0x277D5B0C8);
                  v50 = sub_269484A3C();
                }

                else
                {
                  v50 = 0;
                }

                [v49 setResults_];
              }

              v51 = [objc_allocWithZone(MEMORY[0x277D5B0A8]) init];
              [v51 setEnded_];
              sub_269470B24();
              if (v52)
              {
                v53 = v52;
                [v52 setTtmNeuralCombinerRequestContext_];
                OUTLINED_FUNCTION_48();
                sub_269470690(v73, v5, v53);
              }

              else
              {
                if (qword_281327EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_0();
                  swift_once();
                }

                v54 = sub_2694847EC();
                OUTLINED_FUNCTION_13_1(v54, qword_2813286A0);
                v55 = sub_2694847DC();
                v56 = sub_269484AEC();
                if (OUTLINED_FUNCTION_20_0(v56))
                {
                  v57 = OUTLINED_FUNCTION_36();
                  OUTLINED_FUNCTION_38(v57);
                  OUTLINED_FUNCTION_5_2();
                  _os_log_impl(v58, v59, v60, v61, v62, 2u);
                  OUTLINED_FUNCTION_11_1();
                }

                else
                {
                }
              }

              v63 = *(v15 + 8);
              v64 = OUTLINED_FUNCTION_34();
              v65(v64);
              goto LABEL_43;
            }
          }

          while (1)
          {
            v46 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_50;
            }

            if (v46 >= v44)
            {
              goto LABEL_30;
            }

            ++v43;
            if (*(v7 + 8 * v46))
            {
              goto LABEL_28;
            }
          }
        }
      }

      while (1)
      {
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v40 >= v38)
        {
          goto LABEL_23;
        }

        ++v37;
        if (*(v7 + 8 * v40))
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_9:
      while (1)
      {
        v0 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v0 >= v32)
        {

          v36 = v25;
          v0 = v74;
          goto LABEL_16;
        }

        v30 = *(v7 + 8 * v0);
        ++v33;
        if (v30)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_2694645DC(v1, &qword_280317F98, &qword_269485F18);
  if (qword_281327EE0 != -1)
  {
LABEL_51:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v19 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v19, qword_2813286A0);

  v20 = sub_2694847DC();
  sub_269484AEC();
  OUTLINED_FUNCTION_44();
  if (OUTLINED_FUNCTION_40())
  {
    OUTLINED_FUNCTION_31();
    v21 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v21);
    OUTLINED_FUNCTION_27_0(4.8149e-34);
    *(v0 + 4) = sub_269463C18(v7, v5, v22);
    OUTLINED_FUNCTION_7_2(&dword_269461000, v23, v24, "error converting trpID %s to UUID");
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_12_1();
  }

LABEL_43:
  OUTLINED_FUNCTION_29_0();
}