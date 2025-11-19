uint64_t type metadata accessor for PrefetchableImage.Coordinator()
{
  result = qword_1EC29F640;
  if (!qword_1EC29F640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C830C84C()
{
  sub_1C830C93C(319, qword_1EC29F650, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C830C93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C840BB2C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t static PrefetchableImage.Coordinator.current.getter()
{
  if (qword_1EC29CF58 != -1)
  {
    OUTLINED_FUNCTION_3_15();
  }
}

uint64_t OUTLINED_FUNCTION_3_5()
{
  v3 = v0[69];
  *(v1 - 168) = v0[72];
  *(v1 - 160) = v3;
  v4 = v0[65];
  *(v1 - 152) = v0[68];
  *(v1 - 144) = v4;
  v5 = v0[61];
  *(v1 - 136) = v0[64];
  *(v1 - 128) = v5;
  v6 = v0[57];
  *(v1 - 120) = v0[58];
  *(v1 - 112) = v6;
  v7 = v0[53];
  *(v1 - 104) = v0[54];
  *(v1 - 96) = v7;
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return ParameterSummaryContent.text.getter();
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_18()
{

  return sub_1C840CD9C();
}

void *sub_1C830CD34()
{
  type metadata accessor for PrefetchableImage.Coordinator();
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  v0 = swift_allocObject();
  result = sub_1C830CDA0(0x746C7561666564, 0xE700000000000000, v2);
  qword_1EC29F4D8 = v0;
  return result;
}

void *sub_1C830CDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F998);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  v3[21] = v8;
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = 0;
  v3[22] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F918);
  v10 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_102();
  v11 = sub_1C840CD3C();
  v3[23] = 1;
  v3[24] = v11;
  OUTLINED_FUNCTION_102();
  v12 = sub_1C840CD3C();
  v3[25] = 1;
  v3[26] = v12;
  v13 = OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_environment;
  v14 = sub_1C840BB2C();
  OUTLINED_FUNCTION_69_0(v4 + v13, v15, v16, v14);
  *(v4 + OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_reportedStages) = v10;
  *(v4 + OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_stagesToPrefetch) = v10;
  *(v4 + OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_seenImages) = MEMORY[0x1E69E7CD0];
  v4[14] = a1;
  v4[15] = a2;
  if (*(a3 + 24))
  {
    sub_1C832DE28(a3, &v24);
  }

  else
  {
    v17 = *(a3 + 16);
    v24 = *a3;
    v25 = v17;
    v26 = *(a3 + 32);
  }

  if (*(&v25 + 1))
  {
    if (*(a3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a3);
    }

    sub_1C830D408(&v24, &v27);
  }

  else
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;

    sub_1C840D3DC();

    *&v27 = 0xD000000000000012;
    *(&v27 + 1) = 0x80000001C84206D0;
    v18 = OUTLINED_FUNCTION_74_2();
    MEMORY[0x1CCA75890](v18);

    v19 = *(&v27 + 1);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F9A0);
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_82_2();
    v22 = sub_1C830D340(v21, v19);
    v28 = v20;
    v29 = sub_1C830D3C0(&qword_1EC29F9A8, &qword_1EC29F9A0);
    *&v27 = v22;
    if (*(a3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a3);
    }

    if (*(&v25 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
    }
  }

  sub_1C830D408(&v27, (v4 + 16));
  return v4;
}

void sub_1C830D050(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t result)
{
  v2[4] = result;
  *v2 = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return sub_1C832DE28(v0 - 144, v0 - 208);
}

uint64_t sub_1C830D340(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  v5 = objc_opt_self();

  v6 = [v5 standardUserDefaults];
  *(v2 + 128) = xmmword_1C841B140;
  *(v2 + 144) = v6;
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return v2;
}

uint64_t sub_1C830D3C0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C830D408(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1C830D444()
{
  v1 = v0;
  v2 = v0[21];
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));
  if ((v3 & 1) == 0)
  {
    if (qword_1EC29CF48 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v4 = sub_1C840B4AC();
    OUTLINED_FUNCTION_36_3(v4, qword_1EC2A9D48);

    v5 = sub_1C840B48C();
    v6 = sub_1C840D18C();

    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_51_2();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_7();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1C830E180(v1[14], v1[15], &v10);
      _os_log_impl(&dword_1C830A000, v5, v6, "[%s] Activate", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_7_9();
      MEMORY[0x1CCA773B0]();
      OUTLINED_FUNCTION_7_9();
      MEMORY[0x1CCA773B0]();
    }

    v9 = v1[22];
    os_unfair_lock_lock((v9 + 20));
    sub_1C830E6E4((v9 + 16));

    os_unfair_lock_unlock((v9 + 20));
  }
}

id OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return [v2 (v1 + 632)];
}

id OUTLINED_FUNCTION_0_6()
{

  return [v0 (v3 + 3192)];
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return swift_once();
}

uint64_t sub_1C830D8CC()
{
  v0 = sub_1C840B4AC();
  __swift_allocate_value_buffer(v0, qword_1EC2A9D48);
  __swift_project_value_buffer(v0, qword_1EC2A9D48);
  return sub_1C840B49C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_82(uint64_t result)
{
  v1[4] = result;
  *v1 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_1()
{
}

uint64_t OUTLINED_FUNCTION_44_2(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 16) = v3;
  return v1;
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return sub_1C840BC6C();
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_1C840D60C();
}

unint64_t sub_1C830DB2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C830E454(a5, a6);
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
    result = sub_1C840D43C();
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

uint64_t sub_1C830DC2C(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1C83B7634(result, v7, 1, v3);
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

uint64_t sub_1C830DD10(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  *a1 = 1;
  v7 = sub_1C840D08C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_1C83BE2BC();
}

uint64_t sub_1C830DE0C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_1C840CD9C();
}

uint64_t sub_1C830E024()
{
  OUTLINED_FUNCTION_10_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_0_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_2(v1);

  return v4(v3);
}

id OUTLINED_FUNCTION_16_3()
{

  return [v1 (v0 + 632)];
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return sub_1C840D69C();
}

unint64_t sub_1C830E180(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_47_3();

  v6 = sub_1C830DB2C(v11, 0, 0, 1, v4, v3);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = v4;
    v11[1] = v3;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1C830E4A4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_39_0()
{
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_39_2(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void *sub_1C830E2CC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F988);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1C830E33C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1C840CEAC())
  {
    result = sub_1C830E2CC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C840D3BC();
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
          result = sub_1C840D43C();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C830E454(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C830E33C(a1, a2);
  sub_1C830DC2C(&unk_1F4804380);
  return v3;
}

uint64_t sub_1C830E4A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return sub_1C840D77C();
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1)
{
  *(a1 + 8) = sub_1C8357DA0;
  v3 = *(v1 + 384);
  result = *(v1 + 320);
  *(v2 + 32) = *(v1 + 400);
  *(v2 + 16) = v3;
  return result;
}

char *OUTLINED_FUNCTION_8_9@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  *v2 = a1;
  return v2 + v3;
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t a1)
{
  v5 = v1 + *(a1 + 20);

  return sub_1C8312D74(v3, v5, v2);
}

__n128 OUTLINED_FUNCTION_8_14()
{
  result = *(v0 - 128);
  v2 = *(v0 - 112);
  *(v0 - 192) = result;
  *(v0 - 176) = v2;
  *(v0 - 160) = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{

  return sub_1C836361C(a1, a2, v8, a4, v9, v7, a7);
}

void OUTLINED_FUNCTION_81_0()
{

  sub_1C839CFD8(v2, v0, v1, v3);
}

id OUTLINED_FUNCTION_41_2()
{

  return sub_1C83A4560(0x726F66736E617274, 0xEF656C6163732E6DLL);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_4_4()
{
  v2 = v0[77];
  *(v1 - 104) = v0[71];
  *(v1 - 96) = v0[70];
  *(v1 - 88) = v2;
}

__n128 OUTLINED_FUNCTION_4_9()
{
  result = *(v0 - 144);
  v2 = *(v0 - 128);
  *(v0 - 208) = result;
  *(v0 - 192) = v2;
  *(v0 - 176) = *(v0 - 112);
  return result;
}

uint64_t sub_1C830EA08()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_0_14(v3);
  *v4 = v5;
  v4[1] = sub_1C8311D50;

  return v7(v1);
}

uint64_t sub_1C830EAF4()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_80_2();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_0_14(v2);
  *v3 = v4;
  v3[1] = sub_1C838C18C;
  v5 = OUTLINED_FUNCTION_33_0();

  return sub_1C830EE20(v5, v6, v7, v1);
}

uint64_t OUTLINED_FUNCTION_13_8()
{

  return MEMORY[0x1EEE4D8D8](0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return sub_1C840CE4C();
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(*(v1 - 144), 1, 1, a1);

  return sub_1C840BF3C();
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_1C840D69C();
}

uint64_t OUTLINED_FUNCTION_12_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  *(v2 + 16) = v3;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
}

uint64_t sub_1C830EE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1C83158E0;

  return sub_1C830EF68();
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t sub_1C830EF68()
{
  OUTLINED_FUNCTION_130();
  v1[4] = v0;
  v2 = sub_1C840B3FC();
  v1[5] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[6] = v3;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_getTupleTypeMetadata();
}

void OUTLINED_FUNCTION_11_1(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_1C832F230(v2 + a2, v4, v3 + a2, a1);
}

id OUTLINED_FUNCTION_11_3(uint64_t a1)
{

  return [v3 (v2 + 3192)];
}

void OUTLINED_FUNCTION_11_6()
{
  v1 = *(v0 - 424);
  *(v0 - 224) = *(v0 - 432);
  *(v0 - 216) = v1;
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  v3 = MEMORY[0x1E69DAE88];

  return sub_1C83BB368(v0, v3, v1);
}

uint64_t sub_1C830F1B8(char a1)
{
  if (a1)
  {
    return 0x7942736567616D69;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

_BYTE *sub_1C830F1FC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_61_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_59_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C830F2B8);
      case 4:
        result = OUTLINED_FUNCTION_60_2(result, v6);
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
          result = OUTLINED_FUNCTION_35_4(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_1C840CD9C();
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return sub_1C840D69C();
}

id OUTLINED_FUNCTION_5_6()
{

  return SystemActionDarkChicletColorScheme.chicletBaseGradient.getter();
}

id OUTLINED_FUNCTION_5_15()
{

  return [v0 (v1 + 2168)];
}

void *OUTLINED_FUNCTION_46(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 240), 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_46_0()
{
}

void OUTLINED_FUNCTION_46_3()
{

  sub_1C832E644();
}

unint64_t sub_1C830F51C()
{
  result = qword_1EC29F8F8;
  if (!qword_1EC29F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F8F8);
  }

  return result;
}

void OUTLINED_FUNCTION_60_1()
{

  sub_1C832F008();
}

uint64_t sub_1C830F5B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_62_2(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_62_2((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_62_2((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_62_2((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_62_2(v8);
}

void sub_1C830F640()
{
  OUTLINED_FUNCTION_28_1();
  v38 = v0;
  v3 = v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F8C0);
  OUTLINED_FUNCTION_5();
  v35[4] = v4;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F8C8);
  OUTLINED_FUNCTION_5();
  v35[3] = v7;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F8D0);
  OUTLINED_FUNCTION_5();
  v36 = v12;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_52_1(v3, v3[3]);
  sub_1C8313554();
  v14 = v38;
  sub_1C840D7EC();
  if (v14)
  {
    goto LABEL_8;
  }

  v35[1] = v6;
  v35[2] = v10;
  v38 = v3;
  v15 = sub_1C840D5DC();
  v19 = sub_1C8313680(v15, 0);
  if (v17 == v18 >> 1)
  {
LABEL_7:
    v25 = sub_1C840D42C();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F848);
    *v27 = &type metadata for PrefetchableImage.Image.Kind;
    sub_1C840D56C();
    sub_1C840D41C();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = OUTLINED_FUNCTION_24_3();
    v29(v28, v11);
    v3 = v38;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_9:
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v35[0] = 0;
  if (v17 < (v18 >> 1))
  {
    v20 = *(v16 + v17);
    sub_1C83136C8(v17 + 1, v18 >> 1, v19, v16, v17, v18);
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      if (v20)
      {
        OUTLINED_FUNCTION_78_2();
        sub_1C830FD0C();
        OUTLINED_FUNCTION_68_2();
        sub_1C840D58C();
        v30 = v36;
        swift_unknownObjectRelease();
        v31 = OUTLINED_FUNCTION_84_2();
        v32(v31);
      }

      else
      {
        sub_1C83B7E4C();
        OUTLINED_FUNCTION_68_2();
        sub_1C840D58C();
        swift_unknownObjectRelease();
        v33 = OUTLINED_FUNCTION_73_2();
        v34(v33);
        v30 = v36;
      }

      (*(v30 + 8))(v1, v24);
      __swift_destroy_boxed_opaque_existential_1(v38);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C830FB44(uint64_t a1@<X8>)
{
  sub_1C830F640();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
  }
}

unint64_t sub_1C830FB8C()
{
  result = qword_1EC29FAF0;
  if (!qword_1EC29FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAF0);
  }

  return result;
}

unint64_t sub_1C830FBE4()
{
  result = qword_1EC29FAF8;
  if (!qword_1EC29FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAF8);
  }

  return result;
}

unint64_t sub_1C830FC3C()
{
  result = qword_1EC29FB00;
  if (!qword_1EC29FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB00);
  }

  return result;
}

unint64_t sub_1C830FC90()
{
  result = qword_1EC29FB08;
  if (!qword_1EC29FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB08);
  }

  return result;
}

uint64_t sub_1C830FCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C83135A8(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1C830FD0C()
{
  result = qword_1EC29F888;
  if (!qword_1EC29F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F888);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_1C840CB3C();
}

uint64_t OUTLINED_FUNCTION_70_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_70_3()
{
}

uint64_t sub_1C830FDE8()
{
  OUTLINED_FUNCTION_34();
  if (qword_1EC29CF50 != -1)
  {
    OUTLINED_FUNCTION_2_11();
    swift_once();
  }

  v1 = sub_1C840B42C();
  __swift_project_value_buffer(v1, qword_1EC2A9D60);
  sub_1C840B3EC();
  v2 = sub_1C840B41C();
  sub_1C840D21C();
  if (sub_1C840D2EC())
  {
    v3 = OUTLINED_FUNCTION_70_2();
    OUTLINED_FUNCTION_79_1(v3);
    v4 = sub_1C840B3DC();
    OUTLINED_FUNCTION_86_0(&dword_1C830A000, v5, v6, v4, "Prefetch.Persistence", "Load");
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
  }

  v7 = v0[4];

  v8 = OUTLINED_FUNCTION_15();
  v9(v8);
  sub_1C840B46C();
  OUTLINED_FUNCTION_54_1();
  swift_allocObject();
  OUTLINED_FUNCTION_82_2();
  v0[9] = sub_1C840B45C();
  v10 = OUTLINED_FUNCTION_79();
  v11(v10);
  v12 = v7[19];
  v13 = v7[20];
  __swift_project_boxed_opaque_existential_1(v7 + 16, v12);
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_45_3();
  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_1C83151C8;

  return (v17)(v0 + 2, v12, v13);
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE4AED0](a1, a2);
}

void OUTLINED_FUNCTION_2_4()
{
  v2 = v0[72];
  *(v1 - 168) = v0[73];
  *(v1 - 160) = v2;
  v3 = v0[68];
  *(v1 - 152) = v0[69];
  *(v1 - 144) = v3;
  v4 = v0[64];
  *(v1 - 136) = v0[65];
  *(v1 - 128) = v4;
  v6 = v0[57];
  v5 = v0[58];
  *(v1 - 120) = v0[61];
  *(v1 - 112) = v5;
  v7 = v0[53];
  v8 = v0[54];
  *(v1 - 104) = v6;
  *(v1 - 96) = v8;
  *(v1 - 88) = v7;
}

uint64_t OUTLINED_FUNCTION_2_6(unint64_t *a1, uint64_t *a2)
{

  return sub_1C830D3C0(a1, a2);
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_2_14()
{
}

uint64_t OUTLINED_FUNCTION_2_15@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
}

id OUTLINED_FUNCTION_2_16()
{

  return [v0 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_2_18()
{

  return sub_1C8312180(0, v0);
}

uint64_t sub_1C8310368()
{
  v0 = sub_1C840B4AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C840B42C();
  __swift_allocate_value_buffer(v4, qword_1EC2A9D60);
  __swift_project_value_buffer(v4, qword_1EC2A9D60);
  if (qword_1EC29CF48 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EC2A9D48);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1C840B40C();
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_64_1()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_64_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_73()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_73_0(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(a1 + 32) = a4;
  *(a1 + 48) = a3;
  *(a1 + 57) = a2;
}

void *OUTLINED_FUNCTION_47(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 104), 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_48()
{
}

void OUTLINED_FUNCTION_48_0()
{
  *(v3 - 128) = v0;
  *(v3 - 120) = v1;
  *(v3 - 136) = *(v2 + 376);
}

void OUTLINED_FUNCTION_48_2(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0x6C6F686563616C50;
  v2[1] = 0xEB00000000726564;
}

uint64_t OUTLINED_FUNCTION_19@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return MEMORY[0x1EEDE1268](0);
}

__n128 OUTLINED_FUNCTION_19_7@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 208);
  v5 = *(v2 - 192);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 176);
  return result;
}

void *OUTLINED_FUNCTION_19_9(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
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

uint64_t sub_1C83107B8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C83107D8, v3, 0);
}

uint64_t sub_1C83107D8()
{
  OUTLINED_FUNCTION_10_0();
  sub_1C831084C();
  OUTLINED_FUNCTION_41();

  return v0();
}

void sub_1C831084C()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v0;
  v5 = v4;
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = *(*v0 + 80);
  v28 = *(v6 - 8);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22_7();
  if (qword_1EC29CF48 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v8 = sub_1C840B4AC();
  __swift_project_value_buffer(v8, qword_1EC2A9D48);

  v9 = sub_1C840B48C();
  v10 = sub_1C840D18C();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_51_2();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_7();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1C830E180(*(v3 + 112), *(v3 + 120), v29);
    _os_log_impl(&dword_1C830A000, v9, v10, "UserDefaultsPersistence loading from default:%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
  }

  v13 = sub_1C8310BCC();
  if (v14 >> 60 == 15)
  {
    v15 = v5;
    v16 = 1;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v15, v16, 1, v6);
    goto LABEL_12;
  }

  v17 = v13;
  v18 = v14;
  v19 = sub_1C840B15C();
  v29[0] = 0;
  v20 = [v19 decompressedDataUsingAlgorithm:0 error:v29];

  v21 = v29[0];
  if (!v20)
  {
    v26 = v29[0];
    sub_1C840B0EC();

    swift_willThrow();
    sub_1C8315114(v17, v18);
    goto LABEL_12;
  }

  v27 = v5;
  sub_1C840AF4C();
  OUTLINED_FUNCTION_54_1();
  swift_allocObject();
  v22 = v21;
  sub_1C840AF3C();
  v23 = MEMORY[0x1CCA73B40](v20);
  v25 = v24;
  sub_1C840AF2C();
  sub_1C8315114(v17, v18);

  sub_1C8315128(v23, v25);

  if (!v1)
  {
    (*(v28 + 32))(v27, v2, v6);
    v15 = v27;
    v16 = 0;
    goto LABEL_7;
  }

LABEL_12:
  OUTLINED_FUNCTION_29_0();
}

id OUTLINED_FUNCTION_42_2()
{

  return [v2 (v1 + 3192)];
}

uint64_t sub_1C8310BCC()
{
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v1 = *(v0 + 144);
  v4[0] = *(v0 + 128);
  v4[1] = v1;
  v5 = *(v0 + 160);
  sub_1C832D46C(v4, v3, &qword_1EC29F970);
  sub_1C8310DFC(v3);
  sub_1C832D574(v4, &qword_1EC29F970);
  return *&v3[0];
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return sub_1C840D58C();
}

unint64_t sub_1C8310D28()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C8310DB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C8310DB8()
{
  result = qword_1EC29F758;
  if (!qword_1EC29F758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29F758);
  }

  return result;
}

uint64_t sub_1C8310DFC@<X0>(__int128 *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1C840CD9C();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1C840D35C();
    swift_unknownObjectRelease();
    sub_1C8310F24(v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F968);
    result = swift_dynamicCast();
    if (result)
    {
      *a1 = v10;
      return result;
    }

    v10 = xmmword_1C841B150;
    v13 = *v1;
    *a1 = v13;
    v7 = &v13;
    v8 = &v9;
  }

  else
  {
    v12[0] = *v1;
    *a1 = v12[0];
    v7 = v12;
    v8 = v11;
  }

  return sub_1C832D46C(v7, v8, &qword_1EC29F968);
}

_OWORD *sub_1C8310F24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C8310F34(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F8F0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_7();
  v4 = a1[3];
  OUTLINED_FUNCTION_52_1(a1, v4);
  sub_1C830F51C();
  OUTLINED_FUNCTION_65_2();
  if (!v1)
  {
    v4 = sub_1C840D5AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F900);
    sub_1C8311320();
    sub_1C840D5CC();
    v5 = OUTLINED_FUNCTION_23_5();
    v6(v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1C83110C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C8310F34(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1C83110F8()
{
  result = qword_1EC29FAC0;
  if (!qword_1EC29FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAC0);
  }

  return result;
}

unint64_t sub_1C8311150()
{
  result = qword_1EC29FAC8;
  if (!qword_1EC29FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_1C840CE4C();
}

void OUTLINED_FUNCTION_7_2(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1)
{

  return sub_1C832D574(a1, v1);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_1C840D50C();
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 248) = a1;
  *(v2 - 216) = a2;
  return 255;
}

unint64_t sub_1C8311320()
{
  result = qword_1EC29F908;
  if (!qword_1EC29F908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29F900);
    sub_1C83113DC(&qword_1EC29F910, sub_1C8311454);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F908);
  }

  return result;
}

uint64_t sub_1C83113DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29F918);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8311454()
{
  result = qword_1EC29F920;
  if (!qword_1EC29F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F920);
  }

  return result;
}

uint64_t sub_1C83114B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_62_2(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_62_2((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_62_2((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_62_2((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_62_2(v8);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_1C840D77C();
}

id OUTLINED_FUNCTION_56_1(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

void PrefetchableImage.Image.init(from:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F588);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_52_1(v2, v2[3]);
  sub_1C831191C();
  sub_1C840D7EC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1C8311970();
    OUTLINED_FUNCTION_4_14();
    sub_1C840D5CC();
    OUTLINED_FUNCTION_78_2();
    sub_1C8313898();
    OUTLINED_FUNCTION_4_14();
    sub_1C840D57C();
    sub_1C8313A54();
    OUTLINED_FUNCTION_4_14();
    sub_1C840D57C();
    sub_1C8313B9C();
    OUTLINED_FUNCTION_4_14();
    sub_1C840D57C();
    v6 = OUTLINED_FUNCTION_46_2();
    v7(v6);
    *v4 = v8;
    *(v4 + 8) = v9;
    *(v4 + 16) = v10;
    *(v4 + 17) = v8;
    *(v4 + 18) = v8;
    *(v4 + 24) = v8;
    *(v4 + 32) = v9;
    sub_1C83150F0();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1C83150F8();
  }

  OUTLINED_FUNCTION_29_0();
}

unint64_t sub_1C8311808()
{
  result = qword_1EC29F7A0;
  if (!qword_1EC29F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F7A0);
  }

  return result;
}

unint64_t sub_1C8311860()
{
  result = qword_1EC29F7A8;
  if (!qword_1EC29F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F7A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_33_3(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

unint64_t sub_1C831191C()
{
  result = qword_1EC29F560;
  if (!qword_1EC29F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F560);
  }

  return result;
}

unint64_t sub_1C8311970()
{
  result = qword_1EC29F590;
  if (!qword_1EC29F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F590);
  }

  return result;
}

uint64_t sub_1C83119CC(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6163536567616D69;
      break;
    case 2:
      result = 0x61566C6F626D7973;
      break;
    case 3:
      result = 1953394534;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_1C8311A64(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_61_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_59_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C8311B20);
      case 4:
        result = OUTLINED_FUNCTION_60_2(result, v6);
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
          result = OUTLINED_FUNCTION_35_4(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8311B4C()
{
  result = qword_1EC29FB20;
  if (!qword_1EC29FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB20);
  }

  return result;
}

unint64_t sub_1C8311BA0()
{
  result = qword_1EC29FB28;
  if (!qword_1EC29FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB28);
  }

  return result;
}

uint64_t sub_1C8311BF4(char a1)
{
  if (!a1)
  {
    return 0x6C79745374786574;
  }

  if (a1 == 1)
  {
    return 0x69536D6574737973;
  }

  return 0x74536D6574737973;
}

uint64_t sub_1C8311C5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C8311D50()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  v1 = *v0;
  OUTLINED_FUNCTION_95();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return v3();
}

unint64_t sub_1C8311E58()
{
  result = qword_1EC29FB10;
  if (!qword_1EC29FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB10);
  }

  return result;
}

unint64_t sub_1C8311EAC()
{
  result = qword_1EC29FB40;
  if (!qword_1EC29FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB40);
  }

  return result;
}

unint64_t sub_1C8311F00()
{
  result = qword_1EC29F7E0;
  if (!qword_1EC29F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F7E0);
  }

  return result;
}

uint64_t sub_1C8311F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8314BA8(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1C8311F7C()
{
  result = qword_1EC29F548;
  if (!qword_1EC29F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F548);
  }

  return result;
}

uint64_t type metadata accessor for TopHitViewColorScheme()
{
  result = qword_1EC29CEC8;
  if (!qword_1EC29CEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8312088()
{
  v0 = sub_1C8312180(319, &qword_1EC29CF20);
  if (v1 <= 0x3F)
  {
    v0 = sub_1C8312180(319, &qword_1EC29CF10);
    if (v2 <= 0x3F)
    {
      v3 = type metadata accessor for TopHitViewTextStyle(319);
      if (v4 > 0x3F)
      {
        return v3;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1C8312180(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C83121E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8312238()
{
  result = type metadata accessor for TopHitViewTextStyle.Resolved(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C83122A4()
{
  sub_1C8312328();
  if (v0 <= 0x3F)
  {
    sub_1C840C62C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8312328()
{
  if (!qword_1EC29CD68)
  {
    v0 = sub_1C840D2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC29CD68);
    }
  }
}

void sub_1C8312394()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C830C93C(319, &qword_1EC29F288, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t PrefetchableImage.RootView.init(content:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PrefetchableImage.RootView() + 36);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F268);
  v5 = swift_storeEnumTagMultiPayload();
  return a1(v5);
}

void TopHitViewColorScheme.init(bundleIdentifier:style:)(uint64_t a1, uint64_t a2, char *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = *a3;
  if (qword_1EC29CCE0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC2A9CD8;
  v5 = sub_1C840CD9C();

  v12[0] = 0;
  v6 = [v4 colorsForBundleIdentifier:v5 error:v12];

  v7 = v12[0];
  if (v6)
  {
    LOBYTE(v12[0]) = v3;
    v8 = v7;
    TopHitViewColorScheme.init(appShortcutColors:style:)(v6, v12);
  }

  else
  {
    v9 = v12[0];
    v10 = sub_1C840B0EC();

    swift_willThrow();
    v11 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithSystemColor_];
    LOBYTE(v12[0]) = v3;
    static TopHitViewColorScheme.default(for:style:)(v11, v12);
  }
}

id sub_1C8312644()
{
  result = [objc_allocWithZone(MEMORY[0x1E69E0988]) init];
  qword_1EC2A9CD8 = result;
  return result;
}

void TopHitViewColorScheme.init(appShortcutColors:style:)(void *a1, unsigned __int8 *a2)
{
  v5 = OUTLINED_FUNCTION_4_17();
  v6 = type metadata accessor for TopHitViewTextStyle(v5);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v41 - v11;
  v13 = *a2;
  v14 = [a1 backgroundGradient];
  if (!v14)
  {
    v19 = [a1 tintColor];
    v46 = v13;
    static TopHitViewColorScheme.default(for:style:)(v19, &v46);

    goto LABEL_8;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithSystemColor_];
  if ((v13 & 1) == 0)
  {
    sub_1C8312180(0, &unk_1ED7EE740);
    v17 = [v15 baseColor];
    v18 = sub_1C840D26C();

    if (v18)
    {
      v19 = [a1 tintColor];
      v45 = 0;
      static TopHitViewColorScheme.default(for:style:)(v19, &v45);

LABEL_8:
      return;
    }
  }

  v20 = [a1 isDefaultTintColor];
  v44 = v13;
  v43 = v16;
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = &selRef_whiteColor;
  }

  else
  {
    v22 = &selRef_tintColor;
    v21 = a1;
  }

  v41 = [v21 *v22];
  v42 = [a1 tintColor];
  v23 = [v15 isDark];
  if (v23)
  {
    v24 = 3924420890;
  }

  else
  {
    v24 = 32;
  }

  if (v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = [objc_opt_self() colorWithRGBAValue_];
  v27 = [v26 platformColor];
  v28 = sub_1C840C26C();

  static TopHitViewColorScheme.entityTitleTextStyle(for:)(v15);
  static TopHitViewColorScheme.noEntitiesLabelTextStyle(for:)(v15);
  v29 = [v15 isDark];
  if (v29)
  {
    v30 = 3924420900;
  }

  else
  {
    v30 = 64;
  }

  if (v29)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  v32 = [objc_opt_self() colorWithRGBAValue_];
  v33 = [v32 platformColor];
  v34 = sub_1C840C26C();

  v35 = v41;

  *v2 = v15;
  v2[1] = v35;
  v2[2] = v28;
  v2[3] = v25;
  v2[4] = v28;
  v2[5] = v25;
  v36 = type metadata accessor for TopHitViewColorScheme();
  OUTLINED_FUNCTION_0_20();
  v38 = v37;
  sub_1C8312D74(v12, v2 + v39, v37);
  sub_1C8312D74(v8, v2 + v36[8], v38);
  v40 = (v2 + v36[9]);
  *v40 = v34;
  v40[1] = v31;
  v40[2] = v34;
  v40[3] = v31;
  *(v2 + v36[10]) = v42;
  *(v2 + v36[11]) = v44;
}

uint64_t static TopHitViewColorScheme.entityTitleTextStyle(for:)(void *a1)
{
  OUTLINED_FUNCTION_4_17();
  sub_1C840C62C();
  OUTLINED_FUNCTION_6_16();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  type metadata accessor for TopHitViewTextStyle.Resolved(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = (v6 - v5);
  if ([a1 isDark])
  {
    v8 = sub_1C840C2CC();
  }

  else
  {
    sub_1C840C2AC();
    v8 = sub_1C840C2DC();
  }

  v9 = OUTLINED_FUNCTION_7_12();
  v10(v9);
  *v7 = v8;
  v11 = OUTLINED_FUNCTION_5_16();
  v12(v11);
  OUTLINED_FUNCTION_3_20();
  sub_1C8312B90(v7, v1, v13);
  v14 = type metadata accessor for TopHitViewTextStyle(0);
  return OUTLINED_FUNCTION_8_13(v14);
}

uint64_t sub_1C8312B90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t static TopHitViewColorScheme.noEntitiesLabelTextStyle(for:)(void *a1)
{
  OUTLINED_FUNCTION_4_17();
  sub_1C840C62C();
  OUTLINED_FUNCTION_6_16();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  type metadata accessor for TopHitViewTextStyle.Resolved(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = (v6 - v5);
  if ([a1 isDark])
  {
    sub_1C840C2CC();
  }

  else
  {
    sub_1C840C2AC();
  }

  v8 = sub_1C840C2DC();

  v9 = OUTLINED_FUNCTION_7_12();
  v10(v9);
  *v7 = v8;
  v11 = OUTLINED_FUNCTION_5_16();
  v12(v11);
  OUTLINED_FUNCTION_3_20();
  sub_1C8312B90(v7, v1, v13);
  v14 = type metadata accessor for TopHitViewTextStyle(0);
  return OUTLINED_FUNCTION_8_13(v14);
}

uint64_t sub_1C8312D74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C8312DD8()
{
  result = qword_1ED7EE968;
  if (!qword_1ED7EE968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE968);
  }

  return result;
}

uint64_t sub_1C8312E80()
{
  v0 = OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_1C840B85C();
  OUTLINED_FUNCTION_6_8();
  sub_1C830D3C0(v1, &qword_1EC29D8A8);
  OUTLINED_FUNCTION_1_1();
  return swift_getWitnessTable();
}

unint64_t sub_1C8312F08()
{
  result = qword_1ED7EE9B0;
  if (!qword_1ED7EE9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FB80);
    sub_1C8312DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE9B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_4@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 + v1;
  *v4 = a1;
  *(v4 + 8) = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_1C840CD9C();
}

uint64_t OUTLINED_FUNCTION_1_9(unint64_t *a1, uint64_t *a2)
{

  return sub_1C830D3C0(a1, a2);
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return sub_1C840C53C();
}

id OUTLINED_FUNCTION_1_19(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_1_22()
{

  return [v0 (v1 + 2808)];
}

uint64_t type metadata accessor for PlatterBackground()
{
  result = qword_1EC29F278;
  if (!qword_1EC29F278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WFIconColorBackgroundBlendMode.blendMode.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C840C62C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E6981DF0];
  if (a1 == 1)
  {
    v6 = MEMORY[0x1E6981DB8];
  }

  if (a1 == 2)
  {
    v6 = MEMORY[0x1E6981DA0];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

unint64_t sub_1C831329C()
{
  result = qword_1EC29C950;
  if (!qword_1EC29C950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FB78);
    sub_1C8312F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C950);
  }

  return result;
}

void sub_1C8313320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C8313384(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C840B60C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C83133D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C840B60C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C831342C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C840B60C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C8313494()
{
  result = qword_1EC29FAE0;
  if (!qword_1EC29FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAE0);
  }

  return result;
}

unint64_t sub_1C83134E8()
{
  result = qword_1EC29FAE8;
  if (!qword_1EC29FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAE8);
  }

  return result;
}

unint64_t sub_1C8313554()
{
  result = qword_1EC29F880;
  if (!qword_1EC29F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F880);
  }

  return result;
}

uint64_t sub_1C83135A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6D6574737973 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1C840D69C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C84206F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C840D69C();

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

uint64_t sub_1C8313680(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C83136C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_62_1(uint64_t a1)
{
  *(v1 - 312) = a1;
}

uint64_t sub_1C831379C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x614E6D6574737973;
  }
}

uint64_t OUTLINED_FUNCTION_78_3()
{
  v3 = *(v1 + 8);
  *v0 = *v1;
  *(v0 + 8) = v3;
}

unint64_t sub_1C8313898()
{
  result = qword_1EC29F598;
  if (!qword_1EC29F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F598);
  }

  return result;
}

_BYTE *sub_1C83138EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_61_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_59_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C83139A8);
      case 4:
        result = OUTLINED_FUNCTION_60_2(result, v6);
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
          result = OUTLINED_FUNCTION_35_4(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_1()
{
}

unint64_t sub_1C8313A54()
{
  result = qword_1EC29F5A0;
  if (!qword_1EC29F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F5A0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PrefetchableImage.Image.SymbolVariants(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C8313B74);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

unint64_t sub_1C8313B9C()
{
  result = qword_1EC29F5A8;
  if (!qword_1EC29F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F5A8);
  }

  return result;
}

void PrefetchableImage.Font.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13)
{
  OUTLINED_FUNCTION_28_1();
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F538);
  OUTLINED_FUNCTION_5();
  v20 = v19;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - v22;
  OUTLINED_FUNCTION_52_1(v15, v15[3]);
  sub_1C8313EBC();
  sub_1C840D7EC();
  if (!v13)
  {
    sub_1C8313F10();
    OUTLINED_FUNCTION_19_8();
    sub_1C840D5CC();
    v29 = v30;
    v24 = v31;
    v25 = v32;
    sub_1C8311F7C();
    OUTLINED_FUNCTION_19_8();
    sub_1C840D57C();
    v27 = v24;
    v28 = v25;
    sub_1C831501C();
    OUTLINED_FUNCTION_19_8();
    sub_1C840D57C();
    (*(v20 + 8))(v23, v18);
    *v17 = v29;
    v26 = v28;
    *(v17 + 8) = v27;
    *(v17 + 9) = v26;
    *(v17 + 10) = a13;
    *(v17 + 11) = a11;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_29_0();
}

unint64_t sub_1C8313E10()
{
  result = qword_1EC29F7B0;
  if (!qword_1EC29F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F7B0);
  }

  return result;
}

unint64_t sub_1C8313E68()
{
  result = qword_1EC29F7B8;
  if (!qword_1EC29F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F7B8);
  }

  return result;
}

unint64_t sub_1C8313EBC()
{
  result = qword_1EC29F518;
  if (!qword_1EC29F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F518);
  }

  return result;
}

unint64_t sub_1C8313F10()
{
  result = qword_1EC29F540;
  if (!qword_1EC29F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F540);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_2@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return static ParameterSummaryContent.value(_:fallbackName:)(a1, 0, 0xE000000000000000, a2);
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return sub_1C840D5CC();
}

uint64_t sub_1C8314024(char a1)
{
  if (!a1)
  {
    return 1702060386;
  }

  if (a1 == 1)
  {
    return 0x746867696577;
  }

  return 0x676E696461656CLL;
}

uint64_t sub_1C8314070(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_62_2(-1);
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
      return OUTLINED_FUNCTION_62_2((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_62_2((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_62_2((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_62_2(v8);
}

uint64_t sub_1C83140FC(void *a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F828);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v47 - v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F830);
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v4 = &v47 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F838);
  v51 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F840);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v12 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1C8311F00();
  v13 = v57;
  sub_1C840D7EC();
  if (v13)
  {
    goto LABEL_11;
  }

  v49 = v7;
  v14 = v55;
  v57 = v9;
  v15 = sub_1C840D5DC();
  result = sub_1C8313680(v15, 0);
  if (v18 == v19 >> 1)
  {
    goto LABEL_10;
  }

  v48 = 0;
  if (v18 < (v19 >> 1))
  {
    v20 = v11;
    v21 = v8;
    v22 = *(v17 + v18);
    sub_1C83136C8(v18 + 1, v19 >> 1, result, v17, v18, v19);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (v22)
      {
        v59 = v22;
        if (v22 != 1)
        {
          LOBYTE(v58) = 2;
          sub_1C83B743C();
          v36 = v14;
          v37 = v21;
          v38 = v20;
          v39 = v48;
          sub_1C840D55C();
          if (v39)
          {
            (*(v57 + 8))(v20, v37);
            swift_unknownObjectRelease();
            v32 = v56;
          }

          else
          {
            v62 = 0;
            sub_1C83B7DA4();
            v42 = v53;
            sub_1C840D5CC();
            v32 = v56;
            v43 = v57;
            v45 = v36;
            v46 = v58;
            v61 = 1;
            sub_1C83B7DF8();
            sub_1C840D57C();
            v54 = v62;
            v60 = 2;
            sub_1C8311F7C();
            sub_1C840D57C();
            swift_unknownObjectRelease();
            (*(v50 + 8))(v45, v42);
            (*(v43 + 8))(v38, v37);
            v4 = v46 | (v54 << 8) | (v61 << 16);
          }

          goto LABEL_12;
        }

        LOBYTE(v58) = 1;
        sub_1C8314CCC();
        v27 = v4;
        v28 = v21;
        v29 = v48;
        sub_1C840D55C();
        if (!v29)
        {
          v62 = 0;
          sub_1C8314D28();
          v40 = v52;
          sub_1C840D5CC();
          v4 = v58;
          v61 = 1;
          sub_1C8311F7C();
          sub_1C840D57C();
          v44 = v54;
          swift_unknownObjectRelease();
          (*(v44 + 8))(v27, v40);
          (*(v57 + 8))(v20, v21);
          v32 = v56;
          goto LABEL_12;
        }
      }

      else
      {
        v4 = v22;
        LOBYTE(v58) = 0;
        sub_1C83B758C();
        v33 = v48;
        v34 = v49;
        v28 = v21;
        v35 = v20;
        sub_1C840D55C();
        if (!v33)
        {
          v59 = v4;
          sub_1C83B7DA4();
          sub_1C840D5CC();
          v32 = v56;
          v41 = v57;
          swift_unknownObjectRelease();
          (*(v51 + 8))(v34, v5);
          (*(v41 + 8))(v35, v28);
          v4 = v58;
          goto LABEL_12;
        }
      }

      (*(v57 + 8))(v20, v28);
      swift_unknownObjectRelease();
LABEL_11:
      v32 = v56;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v32);
      return v4;
    }

    v8 = v21;
    v11 = v20;
LABEL_10:
    v30 = sub_1C840D42C();
    swift_allocError();
    v4 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F848);
    *v4 = &type metadata for PrefetchableImage.Font.Base;
    sub_1C840D56C();
    sub_1C840D41C();
    (*(*(v30 - 8) + 104))(v4, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v11, v8);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C83149D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C83140FC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

unint64_t sub_1C8314A24()
{
  result = qword_1EC29FB30;
  if (!qword_1EC29FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB30);
  }

  return result;
}

unint64_t sub_1C8314A78()
{
  result = qword_1EC29FB38;
  if (!qword_1EC29FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB38);
  }

  return result;
}

unint64_t sub_1C8314AE8()
{
  result = qword_1EC29FB18;
  if (!qword_1EC29FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB18);
  }

  return result;
}

unint64_t sub_1C8314B54()
{
  result = qword_1EC29FB48;
  if (!qword_1EC29FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB48);
  }

  return result;
}

uint64_t sub_1C8314BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C79745374786574 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C840D69C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69536D6574737973 && a2 == 0xEA0000000000657ALL;
    if (v6 || (sub_1C840D69C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74536D6574737973 && a2 == 0xEB00000000656C79)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C840D69C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1C8314CCC()
{
  result = qword_1EC29F800;
  if (!qword_1EC29F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F800);
  }

  return result;
}

unint64_t sub_1C8314D28()
{
  result = qword_1EC29F860;
  if (!qword_1EC29F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F860);
  }

  return result;
}

uint64_t sub_1C8314D84(char a1)
{
  if (a1)
  {
    return 0x746867696577;
  }

  else
  {
    return 1702521203;
  }
}

unint64_t sub_1C8314E10()
{
  result = qword_1EC29F818;
  if (!qword_1EC29F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F818);
  }

  return result;
}

unint64_t sub_1C8314E64@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C8314E90(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C8314E90(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrefetchableImage.Font.Weight(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrefetchableImage.Font.Weight(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x1C8314FF4);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C831501C()
{
  result = qword_1EC29F550;
  if (!qword_1EC29F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F550);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PrefetchableImage.Font(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{
  *(v1 + 1040) = a1;

  return swift_beginAccess();
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C8315114(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C8315128(a1, a2);
  }

  return a1;
}

uint64_t sub_1C8315128(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C831518C(uint64_t result, int a2, int a3)
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

uint64_t sub_1C83151C8()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *v1;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1C83B2D2C;
  }

  else
  {
    v6 = sub_1C83152E8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C83152E8()
{
  v25 = v0;
  v1 = v0[3];
  if (!v1)
  {
    if (qword_1EC29CF48 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v3 = sub_1C840B4AC();
    __swift_project_value_buffer(v3, qword_1EC2A9D48);
    OUTLINED_FUNCTION_28_3();

    v4 = sub_1C840B48C();
    v5 = sub_1C840D14C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[4];
      OUTLINED_FUNCTION_51_2();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_7();
      v8 = swift_slowAlloc();
      v24[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1C830E180(*(v6 + 112), *(v6 + 120), v24);
      OUTLINED_FUNCTION_87_0(&dword_1C830A000, v9, v10, "[%s] Missing persisted data");
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_7_9();
      MEMORY[0x1CCA773B0]();
      OUTLINED_FUNCTION_7_9();
      MEMORY[0x1CCA773B0]();
    }

    goto LABEL_12;
  }

  if (v0[2] == 1)
  {
    v2 = v0[4];
    *(v2 + 184) = 1;
    *(v2 + 192) = v1;

    goto LABEL_14;
  }

  sub_1C83B8098();
  v11 = swift_allocError();
  swift_willThrow();
  if (qword_1EC29CF48 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v12 = v0[4];
  v13 = sub_1C840B4AC();
  __swift_project_value_buffer(v13, qword_1EC2A9D48);
  OUTLINED_FUNCTION_28_3();

  v14 = v11;
  v4 = sub_1C840B48C();
  sub_1C840D16C();
  OUTLINED_FUNCTION_71_2();

  if (OUTLINED_FUNCTION_88_1())
  {
    v15 = v0[4];
    OUTLINED_FUNCTION_58_2();
    v16 = OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_18_7();
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v12 = 136315394;
    v18 = sub_1C830E180(*(v15 + 112), *(v15 + 120), v24);
    OUTLINED_FUNCTION_33_3(v18);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v16 = v19;
    OUTLINED_FUNCTION_32_2(&dword_1C830A000, v20, v21, "[%s] Failed to load coordinator state: %@");
    sub_1C832D574(v16, &qword_1EC29E910);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();

LABEL_12:
    goto LABEL_14;
  }

LABEL_14:
  sub_1C83155E8();

  OUTLINED_FUNCTION_41();

  return v22();
}

void sub_1C83155E8()
{
  OUTLINED_FUNCTION_26_4();
  v1 = v0;
  v2 = sub_1C840B43C();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1C840B3FC();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  if (qword_1EC29CF50 != -1)
  {
    OUTLINED_FUNCTION_2_11();
    swift_once();
  }

  v16 = sub_1C840B42C();
  OUTLINED_FUNCTION_36_3(v16, qword_1EC2A9D60);
  v17 = sub_1C840B41C();
  sub_1C840B44C();
  v18 = sub_1C840D20C();
  if (sub_1C840D2EC())
  {

    sub_1C840B47C();

    if ((*(v4 + 88))(v8, v2) == *MEMORY[0x1E69E93E8])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v8, v2);
      v19 = "";
    }

    v20 = OUTLINED_FUNCTION_70_2();
    OUTLINED_FUNCTION_79_1(v20);
    v21 = sub_1C840B3DC();
    _os_signpost_emit_with_name_impl(&dword_1C830A000, v17, v18, v21, "Prefetch.Persistence", v19, v1, 2u);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
  }

  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_27_0();
}

uint64_t OUTLINED_FUNCTION_69_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void *OUTLINED_FUNCTION_69_2()
{

  return memcpy((v0 + 432), (v0 + 16), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return sub_1C840D55C();
}

uint64_t OUTLINED_FUNCTION_68_3()
{

  return sub_1C840C83C();
}

uint64_t sub_1C83158E0()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  v1 = *v0;
  OUTLINED_FUNCTION_95();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t *a2)
{

  return __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return sub_1C832DE28(v1 + 40 * v0, v2 + 216);
}

id OUTLINED_FUNCTION_10_5(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_10_6(unint64_t *a1, uint64_t a2)
{

  return sub_1C83527D8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1)
{
  *(v1 + 40) = a1;

  return swift_getWitnessTable();
}

uint64_t sub_1C8315B8C()
{
  OUTLINED_FUNCTION_130();
  sub_1C8315BF0(1953066601, 0xE400000000000000);
  OUTLINED_FUNCTION_41();

  return v0();
}

void sub_1C8315BF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 176);
  os_unfair_lock_lock((v6 + 20));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 20));
  if (v7 == 1)
  {
    v8 = OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_reportedStages;
    OUTLINED_FUNCTION_17_1();
    v9 = swift_beginAccess();
    v10 = *(v3 + v8);
    v27[0] = a1;
    v27[1] = a2;
    MEMORY[0x1EEE9AC00](v9);
    v26[2] = v27;

    v11 = sub_1C8315EB4(sub_1C8323BB8, v26, v10);

    if (!v11)
    {
      if (qword_1EC29CF48 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      v12 = sub_1C840B4AC();
      OUTLINED_FUNCTION_36_3(v12, qword_1EC2A9D48);

      v13 = sub_1C840B48C();
      v14 = sub_1C840D18C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_58_2();
        v27[0] = swift_slowAlloc();
        *v15 = 136315394;
        *(v15 + 4) = sub_1C830E180(*(v3 + 112), *(v3 + 120), v27);
        *(v15 + 12) = 2080;
        v16 = OUTLINED_FUNCTION_74_2();
        *(v15 + 14) = sub_1C830E180(v16, v17, v18);
        _os_log_impl(&dword_1C830A000, v13, v14, "[%s] Completed Stage: [%s]", v15, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_9();
        MEMORY[0x1CCA773B0]();
        OUTLINED_FUNCTION_7_9();
        MEMORY[0x1CCA773B0]();
      }

      OUTLINED_FUNCTION_64_0();

      sub_1C832E528();
      v19 = *(*(v3 + v8) + 16);
      sub_1C832E5CC(v19);
      v20 = *(v3 + v8);
      *(v20 + 16) = v19 + 1;
      v21 = v20 + 16 * v19;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v3 + v8) = v20;
      swift_endAccess();
      v22 = OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_stagesToPrefetch;
      OUTLINED_FUNCTION_64_0();

      sub_1C832E528();
      v23 = *(*(v3 + v22) + 16);
      sub_1C832E5CC(v23);
      v24 = *(v3 + v22);
      *(v24 + 16) = v23 + 1;
      v25 = v24 + 16 * v23;
      *(v25 + 32) = a1;
      *(v25 + 40) = a2;
      *(v3 + v22) = v24;
      swift_endAccess();
      sub_1C831622C();
    }
  }
}

BOOL sub_1C8315EB4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_beginAccess();
}

_OWORD *OUTLINED_FUNCTION_53_0()
{
  v1 = v0[8];
  v0[4] = v0[7];
  v0[5] = v1;
  *(v0 + 89) = *(v0 + 137);
  return v0 + 4;
}

uint64_t OUTLINED_FUNCTION_53_2()
{
}

char *sub_1C8315FD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_1C8317A78();
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_27_2()
{
  *(v1 - 112) = v0[118];
  v2 = v0[116];
  *(v1 - 160) = v0[114];
  *(v1 - 152) = v0[113];
  *(v1 - 144) = v2;
  v3 = v0[77];
  *(v1 - 136) = v0[71];
  *(v1 - 128) = v0[70];
  *(v1 - 120) = v3;
  *(v1 - 168) = v0[58];
}

void sub_1C831622C()
{
  OUTLINED_FUNCTION_26_4();
  v77 = sub_1C840B43C();
  OUTLINED_FUNCTION_5();
  v82 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v76 = v5 - v4;
  v81 = sub_1C840B3FC();
  OUTLINED_FUNCTION_5();
  v78 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v80 = &v64 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v64 - v14;
  v16 = OUTLINED_FUNCTION_74_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v16);
  OUTLINED_FUNCTION_59(v17);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_43();
  v19 = sub_1C840BB2C();
  OUTLINED_FUNCTION_5();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_environment;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v85 = v0;
  sub_1C832D46C(v0 + v26, v1, &qword_1EC29F4F0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v19) == 1)
  {
    sub_1C832D574(v1, &qword_1EC29F4F0);
LABEL_24:
    OUTLINED_FUNCTION_27_0();
    return;
  }

  (*(v21 + 32))(v25, v1, v19);
  v27 = *(v85 + 176);
  os_unfair_lock_lock((v27 + 20));
  v28 = *(v27 + 16);
  os_unfair_lock_unlock((v27 + 20));
  if (v28 != 1 || (v29 = OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_stagesToPrefetch, v30 = v85, swift_beginAccess(), v31 = *(v30 + v29), (v84 = *(v31 + 16)) == 0))
  {
    (*(v21 + 8))(v25, v19);
    goto LABEL_24;
  }

  v65 = v29;
  v66 = v19;
  v75 = v15;
  v79 = v10;
  v72 = (v78 + 2);
  v32 = v78 + 1;
  v70 = (v82 + 88);
  v69 = *MEMORY[0x1E69E93E8];
  v67 = (v82 + 8);

  v33 = 0;
  v34 = (v31 + 40);
  *&v35 = 136446466;
  v68 = v35;
  v36 = v81;
  v73 = v31;
  v74 = v21;
  v83 = v25;
  v78 = v32;
  while (v33 < *(v31 + 16))
  {
    v37 = *(v85 + 192);
    if (*(v37 + 16))
    {
      v38 = *(v34 - 1);
      v39 = *v34;

      v40 = sub_1C8317708();
      if (v41)
      {
        v42 = *(*(v37 + 56) + 8 * v40);

        if (qword_1EC29CF50 != -1)
        {
          OUTLINED_FUNCTION_2_11();
          swift_once();
        }

        v43 = sub_1C840B42C();
        OUTLINED_FUNCTION_36_3(v43, qword_1EC2A9D60);

        v44 = v75;
        sub_1C840B3EC();
        v82 = v37;
        v45 = sub_1C840B41C();
        v46 = sub_1C840D21C();

        if (sub_1C840D2EC())
        {
          v47 = OUTLINED_FUNCTION_58_2();
          OUTLINED_FUNCTION_18_7();
          v48 = swift_slowAlloc();
          v71 = v46;
          v49 = v48;
          v86 = v48;
          *v47 = v68;
          v50 = sub_1C830E180(v38, v39, &v86);

          *(v47 + 4) = v50;
          *(v47 + 12) = 2050;
          *(v47 + 14) = *(v42 + 16);

          v51 = sub_1C840B3DC();
          _os_signpost_emit_with_name_impl(&dword_1C830A000, v45, v71, v51, "Prefetch.Images", "stage:%{public}s images:%{public}ld", v47, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v49);
          OUTLINED_FUNCTION_7_9();
          MEMORY[0x1CCA773B0]();
          v36 = v81;
          OUTLINED_FUNCTION_7_9();
          MEMORY[0x1CCA773B0]();
        }

        else
        {
        }

        (*v72)(v80, v44, v36);
        sub_1C840B46C();
        OUTLINED_FUNCTION_54_1();
        swift_allocObject();
        OUTLINED_FUNCTION_28_3();
        sub_1C840B45C();
        v52 = *v78;
        v53 = OUTLINED_FUNCTION_85_1();
        v52(v53);
        type metadata accessor for PrefetchableImage.Coordinator();
        sub_1C8318E44(v42, v83);

        v54 = sub_1C840B41C();
        sub_1C840B44C();
        v55 = sub_1C840D20C();
        if (sub_1C840D2EC())
        {

          v56 = v76;
          sub_1C840B47C();

          v57 = (*v70)(v56, v77);
          v58 = "[Error] Interval already ended";
          if (v57 != v69)
          {
            (*v67)(v76, v77);
            v58 = "";
          }

          v59 = OUTLINED_FUNCTION_70_2();
          OUTLINED_FUNCTION_79_1(v59);
          v60 = v79;
          v61 = sub_1C840B3DC();
          _os_signpost_emit_with_name_impl(&dword_1C830A000, v54, v55, v61, "Prefetch.Images", v58, v36, 2u);
          OUTLINED_FUNCTION_7_9();
          MEMORY[0x1CCA773B0]();

          v62 = v60;
          v36 = v81;
          v63 = v81;
        }

        else
        {

          v62 = OUTLINED_FUNCTION_79();
        }

        (v52)(v62, v63);
        v31 = v73;
        v21 = v74;
        v25 = v83;
      }

      else
      {
      }
    }

    ++v33;
    v34 += 2;
    if (v84 == v33)
    {

      (*(v21 + 8))(v25, v66);
      *(v85 + v65) = MEMORY[0x1E69E7CC0];

      goto LABEL_24;
    }
  }

  __break(1u);
}

unint64_t sub_1C83169E4()
{
  result = qword_1EC29CA98;
  if (!qword_1EC29CA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FB70);
    sub_1C831329C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA98);
  }

  return result;
}

void sub_1C8316A70()
{
  sub_1C83133D8(319, &qword_1EC29CE38, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_1C83133D8(319, &qword_1EC29F288, MEMORY[0x1E697F228]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8316B94()
{
  sub_1C831342C(319, &qword_1EC29CE38, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_1C831342C(319, &qword_1EC29CE30, MEMORY[0x1E697F610]);
    if (v1 <= 0x3F)
    {
      sub_1C8316CA0();
      if (v2 <= 0x3F)
      {
        sub_1C8316CE4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C8316CA0()
{
  result = qword_1EC29CF20;
  if (!qword_1EC29CF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29CF20);
  }

  return result;
}

unint64_t sub_1C8316CE4()
{
  result = qword_1EC29CD48;
  if (!qword_1EC29CD48)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC29CD48);
  }

  return result;
}

uint64_t sub_1C8316D2C()
{
  OUTLINED_FUNCTION_120();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F990);
  OUTLINED_FUNCTION_59(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_0_14(v3);
  *v4 = v5;
  v4[1] = sub_1C838C18C;
  v6 = OUTLINED_FUNCTION_33_0();

  return sub_1C83170B8(v6, v7, v8, v2, v9);
}

uint64_t sub_1C83170B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C83175D0, a4, 0);
}

void sub_1C83170D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26_4();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  OUTLINED_FUNCTION_59(v26);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_43();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F990);
  v29 = OUTLINED_FUNCTION_13(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v29);
  v35 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &a9 - v36;
  v38 = *(v20 + 176);
  os_unfair_lock_lock((v38 + 20));
  v39 = *(v38 + 16);
  os_unfair_lock_unlock((v38 + 20));
  if (v39 == 1)
  {
    v25();
    v40 = sub_1C840D08C();
    OUTLINED_FUNCTION_69_0(v21, v41, v42, v40);
    sub_1C832D46C(v37, v35, &qword_1EC29F990);
    v43 = (*(v31 + 80) + 40) & ~*(v31 + 80);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v20;
    sub_1C8317AF0(v35, v44 + v43);

    OUTLINED_FUNCTION_20_7();
    sub_1C83BE2BC();

    sub_1C832D574(v37, &qword_1EC29F990);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C83172BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F990);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  sub_1C840BB2C();
  OUTLINED_FUNCTION_6();
  (*(v7 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

void sub_1C83173AC()
{
  OUTLINED_FUNCTION_26_4();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F4F0);
  OUTLINED_FUNCTION_59(v5);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_43();
  sub_1C840B3FC();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  if (qword_1EC29CF50 != -1)
  {
    OUTLINED_FUNCTION_2_11();
    swift_once();
  }

  v8 = sub_1C840B42C();
  OUTLINED_FUNCTION_36_3(v8, qword_1EC2A9D60);
  sub_1C840B3EC();
  v9 = sub_1C840B41C();
  v10 = sub_1C840D22C();
  if (sub_1C840D2EC())
  {
    v11 = OUTLINED_FUNCTION_70_2();
    *v11 = 0;
    v12 = sub_1C840B3DC();
    _os_signpost_emit_with_name_impl(&dword_1C830A000, v9, v10, v12, "Prefetch.Environment", "", v11, 2u);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
  }

  v13 = OUTLINED_FUNCTION_85_1();
  v14(v13);
  v15 = sub_1C840BB2C();
  OUTLINED_FUNCTION_6();
  (*(v16 + 16))(v1, v4, v15);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v15);
  v17 = OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_environment;
  OUTLINED_FUNCTION_64_0();
  sub_1C8317698(v1, v2 + v17);
  swift_endAccess();
  sub_1C831622C();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C83175D0()
{
  OUTLINED_FUNCTION_130();
  sub_1C83173AC();
  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_1C8317628()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C8317698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F4F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8317708()
{
  OUTLINED_FUNCTION_47_3();
  v0 = sub_1C840D77C();
  OUTLINED_FUNCTION_81_1(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  sub_1C840CE4C();
  sub_1C840D7CC();
  v8 = OUTLINED_FUNCTION_25_8();

  return sub_1C83179C4(v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_75()
{

  return sub_1C832D46C(v1 + v3, v0, v2);
}

uint64_t OUTLINED_FUNCTION_20_2()
{
  if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_20_3()
{
  *(v4 - 136) = v0;
  *(v4 - 128) = v1;
  *(v4 - 144) = *(v2 + 376);
  return v3;
}

uint64_t OUTLINED_FUNCTION_89()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_8()
{
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return sub_1C840CDDC();
}

uint64_t OUTLINED_FUNCTION_18_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 176) = a1;

  return sub_1C840D37C();
}

unint64_t sub_1C83179C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C840D69C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C8317A78()
{
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_12();
  v3(v2);
  return v0;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1C8317AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C8317B68(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  OUTLINED_FUNCTION_59(v3);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-v5 - 8];
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  v19 = *(a1 + 8);
  v8 = *(v1 + 176);
  os_unfair_lock_lock((v8 + 20));
  v9 = *(v8 + 16);
  os_unfair_lock_unlock((v8 + 20));
  if (v9 == 1)
  {
    v10 = sub_1C840D08C();
    OUTLINED_FUNCTION_69_0(v6, v11, v12, v10);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v1;
    v14 = v18;
    *(v13 + 40) = v17;
    *(v13 + 56) = v14;
    *(v13 + 72) = v19;

    sub_1C8319A60(&v17, v16);
    OUTLINED_FUNCTION_20_7();
    sub_1C83BE2BC();
  }
}

uint64_t sub_1C8317C8C()
{
  swift_unknownObjectRelease();

  sub_1C83150F8();

  return MEMORY[0x1EEE6BDD0](v0, 76, 7);
}

double sub_1C8317CD8@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_1C840BB2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  if (*(v1 + 8) != 1)
  {

    sub_1C840D17C();
    v18 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();
    sub_1C831E878(v10, 0);
    (*(v7 + 8))(v9, v6);
    if (v26 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = sub_1C8319D30();
    *&v23 = v13;
    BYTE8(v23) = v19;
    *(&v23 + 9) = 2305;
    BYTE11(v23) = 3;
    sub_1C8318108(v11, v12, 1);
    v23 = v26;
    v24 = v27;
    v25 = 0;
    goto LABEL_6;
  }

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_3:

  v14 = sub_1C840C42C();
  v15 = sub_1C840BE7C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v15);
  v16 = sub_1C840BF2C();
  sub_1C8324628(v5);
  KeyPath = swift_getKeyPath();
  *&v23 = v14;
  *(&v23 + 1) = KeyPath;
  v24 = v16;
  v25 = 1;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FB80);
  sub_1C8312F08();
  sub_1C840BC6C();
  result = *&v26;
  v21 = v27;
  v22 = v28;
  *a1 = v26;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  return result;
}

void *sub_1C8318000()
{
  type metadata accessor for CGSize(0);
  result = sub_1C840CD3C();
  off_1ED7EEAB8 = result;
  return result;
}

uint64_t sub_1C8318044@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8318078();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8318078()
{
  sub_1C83180B4();
  sub_1C840BB3C();
  return v1;
}

unint64_t sub_1C83180B4()
{
  result = qword_1EC29C968;
  if (!qword_1EC29C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C968);
  }

  return result;
}

uint64_t sub_1C8318108(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_47_3();
  v7 = v6;
  v9 = *v8;
  v10 = *(v8 + 10);
  v18 = *(v8 + 9);
  v19 = *(v8 + 8);
  v17 = *(v8 + 11);
  v12 = v11 & 1;
  sub_1C83150F0();
  if (qword_1EC29CF58 != -1)
  {
    OUTLINED_FUNCTION_3_15();
  }

  *&v20 = v4;
  *(&v20 + 1) = v3;
  v21 = v12;
  v22 = 3;
  v23 = 4;
  v24 = v9;
  v25 = v19 | (v18 << 8) | (v10 << 16) | (v17 << 24);

  sub_1C8317B68(&v20);

  OUTLINED_FUNCTION_25_8();
  if (a3)
  {
    v13 = sub_1C840C42C();
  }

  else
  {
    v13 = sub_1C840C3DC();
  }

  v14 = v13;
  *&v20 = v9;
  BYTE8(v20) = v19;
  BYTE9(v20) = v18;
  BYTE10(v20) = v10;
  BYTE11(v20) = v17;
  v15 = sub_1C8318828();
  result = swift_getKeyPath();
  *v7 = v14;
  v7[1] = result;
  v7[2] = v15;
  return result;
}

uint64_t sub_1C8318250@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_3_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C831827C(int a1, __int16 a2)
{
  v2 = a2;
  v4 = HIBYTE(a2);
  v5 = sub_1C840BFEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E740);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v25 - v14;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v2 != 9)
      {
        sub_1C8319B54(v2);
      }

      v17 = sub_1C840BE7C();
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v17);
      v18 = sub_1C840BF2C();
      sub_1C832D574(v15, &qword_1EC29E740);
    }

    else
    {
      sub_1C83B4608();
      v16 = MEMORY[0x1E6980E20];
      switch(BYTE1(a1))
      {
        case 1:
          v16 = MEMORY[0x1E6980E10];
          goto LABEL_16;
        case 2:
          v16 = MEMORY[0x1E6980E28];
          goto LABEL_16;
        case 3:
          v16 = MEMORY[0x1E6980E08];
          goto LABEL_16;
        case 4:
          v19 = sub_1C840BE7C();
          v20 = v12;
          v21 = 1;
          goto LABEL_17;
        default:
LABEL_16:
          v22 = *v16;
          v23 = sub_1C840BE7C();
          (*(*(v23 - 8) + 104))(v12, v22, v23);
          v20 = v12;
          v21 = 0;
          v19 = v23;
LABEL_17:
          __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
          if (BYTE2(a1) != 9)
          {
            sub_1C8319B54(SBYTE2(a1));
          }

          v18 = sub_1C840BF3C();
          sub_1C832D574(v12, &qword_1EC29E740);
          (*(v6 + 8))(v8, v5);
          break;
      }
    }

    return v18;
  }

  else
  {
    switch(a1)
    {
      case 1:

        result = MEMORY[0x1EEDE2C68](v13);
        break;
      case 2:

        result = MEMORY[0x1EEDE2D70](v13);
        break;
      case 3:

        result = MEMORY[0x1EEDE2D78](v13);
        break;
      case 4:

        result = sub_1C840BFDC();
        break;
      case 5:

        result = sub_1C840BE3C();
        break;
      case 6:

        result = MEMORY[0x1EEDE2C00](v13);
        break;
      case 7:

        result = MEMORY[0x1EEDE2DE0](v13);
        break;
      case 8:

        result = MEMORY[0x1EEDE2E30](v13);
        break;
      case 9:

        result = MEMORY[0x1EEDE2DF0](v13);
        break;
      case 10:

        result = sub_1C840BFBC();
        break;
      default:

        result = MEMORY[0x1EEDE2B18](v13);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8318828()
{
  v1 = sub_1C840BF7C();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = *(v0 + 10);
  v12 = *(v0 + 11);
  v13 = sub_1C831827C(*v0, *(v0 + 8));
  if (v11 != 9)
  {
    sub_1C8319B54(v11);
    v14 = sub_1C840BF6C();

    v13 = v14;
  }

  v15 = MEMORY[0x1E6980EB0];
  switch(v12)
  {
    case 1:
      v15 = MEMORY[0x1E6980EA8];
      goto LABEL_6;
    case 2:
      v15 = MEMORY[0x1E6980E98];
      goto LABEL_6;
    case 3:
      return v13;
    default:
LABEL_6:
      (*(v3 + 104))(v7, *v15, v1);
      (*(v3 + 32))(v10, v7, v1);
      v16 = sub_1C840BFAC();

      (*(v3 + 8))(v10, v1);
      return v16;
  }
}

uint64_t static SymbolAlignment.absoluteOffset(for:fontSize:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7EEAB0 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_0_16();
  }

  OUTLINED_FUNCTION_3_16();
  v4 = off_1ED7EEAB8 + 64;
  OUTLINED_FUNCTION_1_16();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v27 = v10;

  v11 = 0;
  v26 = a2;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v9)
        {
        }

        v7 = *&v4[8 * v12];
        ++v11;
        if (v7)
        {
          v11 = v12;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_8:
    v13 = (*(v27 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
    v15 = *v13;
    v14 = v13[1];

    OUTLINED_FUNCTION_6_14();
    if (sub_1C840CEFC())
    {
      OUTLINED_FUNCTION_6_14();
      if (__OFSUB__(0, sub_1C840CE5C()))
      {
        goto LABEL_24;
      }

      sub_1C840CE7C();
      OUTLINED_FUNCTION_8_12();
      v16 = sub_1C840CF2C();
      v15 = MEMORY[0x1CCA75810](v16);
      v18 = v17;

      OUTLINED_FUNCTION_3_16();

      v14 = v18;
    }

    OUTLINED_FUNCTION_6_14();
    if (sub_1C840CEFC())
    {
      OUTLINED_FUNCTION_6_14();
      if (__OFSUB__(0, sub_1C840CE5C()))
      {
        goto LABEL_25;
      }

      sub_1C840CE7C();
      OUTLINED_FUNCTION_8_12();
      v19 = sub_1C840CF2C();
      v20 = MEMORY[0x1CCA75810](v19);
      v22 = v21;
      a2 = v26;
    }

    else
    {

      v20 = a1;
      v22 = a2;
    }

    if (v15 == v20 && v14 == v22)
    {
      break;
    }

    v7 &= v7 - 1;
    v24 = sub_1C840D69C();

    OUTLINED_FUNCTION_3_16();
    if (v24)
    {
    }
  }
}

uint64_t ProbablyAlignedSymbol.init(symbolName:fontSize:fontWeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = a4;
  *(a3 + 40) = a5;
  return result;
}

uint64_t sub_1C8318D4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8318078();
  *a1 = result & 1;
  return result;
}

uint64_t ProbablyAlignedSymbol.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = v1[3];
  v15 = *v1;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = *(v1 + 2);
  sub_1C8317CD8(&v12);
  v11 = v12;
  v6 = v13;
  v7 = v14;
  type metadata accessor for SymbolAlignment();
  result = static SymbolAlignment.absoluteOffset(for:fontSize:)(v4, v5);
  *a1 = v11;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_1C8318E44(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v87 = sub_1C840BF7C();
  v3 = *(v87 - 8);
  v4 = MEMORY[0x1EEE9AC00](v87);
  v86 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F950);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v92 = &v76 - v8;
  v112 = sub_1C840B82C();
  v9 = *(v112 - 8);
  v10 = MEMORY[0x1EEE9AC00](v112);
  v99 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v76 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v76 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v76 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v76 - v21;
  v98 = sub_1C840C45C();
  v22 = *(v98 - 8);
  v23 = MEMORY[0x1EEE9AC00](v98);
  v97 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v76 - v25;
  v111 = sub_1C840BB2C();
  result = MEMORY[0x1EEE9AC00](v111);
  v105 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  if (v30)
  {
    v102 = (v27 + 16);
    v94 = (v22 + 104);
    v93 = (v22 + 32);
    v90 = (v9 + 32);
    v89 = (v9 + 16);
    v31 = (v9 + 8);
    v84 = (v3 + 104);
    v83 = (v3 + 32);
    v82 = *MEMORY[0x1E69816C0];
    v81 = (v3 + 8);
    v101 = (v27 + 8);
    v80 = *MEMORY[0x1E69816E0];
    v100 = *MEMORY[0x1E69816C8];
    v77 = *MEMORY[0x1E6980E98];
    v78 = *MEMORY[0x1E6980EA8];
    v79 = *MEMORY[0x1E6980EB0];
    v32 = (a1 + 64);
    *&v28 = 136446210;
    v88 = v28;
    v95 = v17;
    v106 = (v9 + 8);
    v103 = v20;
    while (2)
    {
      v110 = v30;
      v33 = *(v32 - 4);
      v34 = *(v32 - 3);
      v35 = *(v32 - 16);
      v113 = *(v32 - 15);
      v36 = *(v32 - 7);
      v107 = *(v32 - 1);
      v114 = *v32;
      sub_1C83150F0();
      if (qword_1EC29CF48 != -1)
      {
        swift_once();
      }

      v115 = v36;
      v37 = sub_1C840B4AC();
      __swift_project_value_buffer(v37, qword_1EC2A9D48);
      sub_1C83150F0();
      v38 = sub_1C840B48C();
      v39 = sub_1C840D18C();
      sub_1C83150F8();
      v40 = os_log_type_enabled(v38, v39);
      v108 = v34;
      v109 = v33;
      v116 = v35;
      if (v40)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v124 = v42;
        *v41 = v88;
        v117 = v33;
        v118 = v34;
        v119 = v35;
        v120 = v113;
        v121 = v115;
        v122 = v107;
        v123 = v114;
        sub_1C83150F0();
        v43 = sub_1C840CDFC();
        v45 = v14;
        v46 = sub_1C830E180(v43, v44, &v124);
        v31 = v106;

        *(v41 + 4) = v46;
        v14 = v45;
        _os_log_impl(&dword_1C830A000, v38, v39, "Prefetch: %{public}s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        v47 = v42;
        v17 = v95;
        MEMORY[0x1CCA773B0](v47, -1, -1);
        MEMORY[0x1CCA773B0](v41, -1, -1);
      }

      v48 = v105;
      v32 += 10;
      (*v102)(v105, v104, v111);
      v49 = v103;
      v50 = v100;
      v51 = v115;
      switch(v113)
      {
        case 1:
          v52 = &v110 + 4;
          goto LABEL_10;
        case 2:
          v52 = &v112 + 4;
LABEL_10:
          v50 = *(v52 - 64);
          goto LABEL_11;
        case 3:
          goto LABEL_12;
        default:
LABEL_11:
          v53 = v97;
          v54 = v98;
          (*v94)(v97, v50, v98);
          (*v93)(v96, v53, v54);
          sub_1C840B98C();
LABEL_12:
          if (v51 != 4)
          {
            v55 = v90;
            switch(&v124)
            {
              case 1u:
                sub_1C840B80C();
                goto LABEL_19;
              case 2u:
                sub_1C840B81C();
                goto LABEL_19;
              case 3u:
                v56 = v92;
                v57 = v112;
                __swift_storeEnumTagSinglePayload(v92, 1, 1, v112);
                sub_1C840B7DC();
                if (__swift_getEnumTagSinglePayload(v56, 1, v57) != 1)
                {
                  sub_1C832D574(v92, &qword_1EC29F950);
                }

                goto LABEL_20;
              default:
                sub_1C840B7FC();
LABEL_19:
                v58 = *v55;
                v59 = v92;
                v60 = v112;
                (*v55)(v92, v17, v112);
                __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
                v58(v49, v59, v60);
                v51 = v115;
LABEL_20:
                (*v89)(v14, v49, v112);
                if ((byte_1EC29F4E0 & ~(v51 >> 8)) == 0)
                {
                  v61 = v99;
                  sub_1C840B7BC();
                  v62 = v112;
                  (*v31)(v14, v112);
                  (*v55)(v14, v61, v62);
                }

                if ((byte_1EC29F4E1 & ~(v51 >> 8)) == 0)
                {
                  v63 = v99;
                  sub_1C840B7EC();
                  v64 = v112;
                  (*v31)(v14, v112);
                  (*v55)(v14, v63, v64);
                }

                if ((byte_1EC29F4E2 & ~(v51 >> 8)) != 0)
                {
                  v68 = *v55;
                }

                else
                {
                  v65 = v55;
                  v66 = v99;
                  sub_1C840B7AC();
                  v67 = v112;
                  (*v106)(v14, v112);
                  v68 = *v65;
                  (*v65)(v14, v66, v67);
                  v31 = v106;
                }

                v69 = v112;
                v68(v91, v14, v112);
                (*v31)(v49, v69);
                sub_1C840B9DC();
                break;
            }
          }

          v70 = BYTE2(v114);
          if ((~v114 & 0xFF00) != 0)
          {
            v71 = BYTE3(v114);
            sub_1C831827C(v107, v114);
            switch(v70)
            {
              case 1:
                sub_1C840BEBC();
                goto LABEL_39;
              case 2:
                sub_1C840BEEC();
                goto LABEL_39;
              case 3:
                sub_1C840BF0C();
                goto LABEL_39;
              case 4:
                sub_1C840BEFC();
                goto LABEL_39;
              case 5:
                sub_1C840BF1C();
                goto LABEL_39;
              case 6:
                sub_1C840BEAC();
                goto LABEL_39;
              case 7:
                sub_1C840BEDC();
                goto LABEL_39;
              case 8:
                sub_1C840BECC();
                goto LABEL_39;
              case 9:
                goto LABEL_40;
              default:
                sub_1C840BE8C();
LABEL_39:
                sub_1C840BF6C();

LABEL_40:
                if (v71 != 3)
                {
                  v72 = v79;
                  if (v71)
                  {
                    v72 = v78;
                    if (v71 != 1)
                    {
                      v72 = v77;
                    }
                  }

                  v73 = v86;
                  v74 = v87;
                  (*v84)(v86, v72, v87);
                  v75 = v85;
                  (*v83)(v85, v73, v74);
                  sub_1C840BFAC();

                  (*v81)(v75, v74);
                  v17 = v95;
                }

                sub_1C840BAAC();
                break;
            }
          }

          if (v116)
          {
            sub_1C840C42C();
          }

          else
          {
            sub_1C840C3DC();
          }

          sub_1C840C47C();

          (*v101)(v48, v111);
          result = sub_1C83150F8();
          v30 = v110 - 1;
          if (v110 == 1)
          {
            return result;
          }

          continue;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_61()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

id OUTLINED_FUNCTION_61_0@<X0>(id a1@<X0>, SEL a2@<X1>, __int128 *a3@<X8>, __int128 a4, __int128 a5, __int128 a6)
{
  v7 = a3[1];
  a4 = *a3;
  a5 = v7;
  a6 = a3[2];

  return [a1 a2];
}

double TopHitCollectionViewStyle.contentViewHorizontalPadding.getter()
{
  result = 14.0;
  if (*v0)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_1C8319B54(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_1C840BEBC();
      break;
    case 2:
      result = sub_1C840BEEC();
      break;
    case 3:
      result = sub_1C840BF0C();
      break;
    case 4:
      result = sub_1C840BEFC();
      break;
    case 5:
      result = sub_1C840BF1C();
      break;
    case 6:
      result = sub_1C840BEAC();
      break;
    case 7:
      result = sub_1C840BEDC();
      break;
    case 8:
      result = sub_1C840BECC();
      break;
    default:
      result = sub_1C840BE8C();
      break;
  }

  return result;
}

unint64_t sub_1C8319BC0()
{
  result = qword_1ED7EE7A8;
  if (!qword_1ED7EE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE7A8);
  }

  return result;
}

uint64_t PlatterBackground.init(baseColor:renderUnderglow:cornerRadius:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for PlatterBackground();
  v9 = v8[5];
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F268);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v8[9]) = 0x4024000000000000;
  *(a3 + v8[6]) = a1;
  *(a3 + v8[7]) = a2;
  *(a3 + v8[8]) = a4;
  return result;
}

uint64_t sub_1C8319D30()
{
  sub_1C840BE8C();
  if (sub_1C840BE9C())
  {
    return 0;
  }

  sub_1C840BEBC();
  if (sub_1C840BE9C())
  {
    return 1;
  }

  sub_1C840BEEC();
  if (sub_1C840BE9C())
  {
    return 2;
  }

  sub_1C840BF0C();
  if (sub_1C840BE9C())
  {
    return 3;
  }

  sub_1C840BEFC();
  if (sub_1C840BE9C())
  {
    return 4;
  }

  sub_1C840BF1C();
  if (sub_1C840BE9C())
  {
    return 5;
  }

  sub_1C840BEAC();
  if (sub_1C840BE9C())
  {
    return 6;
  }

  sub_1C840BEDC();
  if (sub_1C840BE9C())
  {
    return 7;
  }

  sub_1C840BECC();
  if (sub_1C840BE9C())
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

uint64_t Shape.fill(_:direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a2;
  OUTLINED_FUNCTION_7_13(a1, a5);
  sub_1C840B64C();
  v7 = sub_1C840B85C();
  OUTLINED_FUNCTION_0();
  v53 = v8;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v9);
  v51 = v44 - v10;
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[0] = a3;
  v58[1] = MEMORY[0x1E69815C0];
  v58[2] = a4;
  v58[3] = MEMORY[0x1E6981568];
  v44[2] = sub_1C840B5CC();
  OUTLINED_FUNCTION_7();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_12(WitnessTable, &v59);
  v18 = type metadata accessor for GradientColorResolverView();
  OUTLINED_FUNCTION_0();
  v49 = v19;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = OUTLINED_FUNCTION_9_10(v21, v44[0]);
  v44[3] = v22;
  OUTLINED_FUNCTION_6_10();
  v23 = swift_getWitnessTable();
  v56 = v22;
  v57 = v23;
  OUTLINED_FUNCTION_1_1();
  v48 = v24;
  v45 = v7;
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_11(v25);
  v26 = sub_1C840B8DC();
  OUTLINED_FUNCTION_11_12(v26, &v60);
  v46 = sub_1C840B85C();
  OUTLINED_FUNCTION_0();
  v47 = v27;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v44 - v29;
  v31 = OUTLINED_FUNCTION_13_9();
  v32(v31);
  v33 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = a4;
  (*(v12 + 32))(v34 + v33, v16, a3);
  v35 = v44[0];
  v36 = v50;
  GradientColorResolverView.init(gradient:_:)(v50, sub_1C83C4D34, v34, v44[0]);
  sub_1C831A820(v36, v58);
  OUTLINED_FUNCTION_8_14();
  v37 = v51;
  sub_1C840C23C();
  sub_1C831A8CC(v58);
  OUTLINED_FUNCTION_1_0();
  v38 = swift_getWitnessTable();
  sub_1C840C5FC();
  v39 = v45;
  sub_1C840C1CC();
  (*(v53 + 8))(v37, v39);
  (*(v49 + 8))(v35, v18);
  OUTLINED_FUNCTION_0_12();
  v40 = swift_getWitnessTable();
  v54 = v38;
  v55 = v40;
  OUTLINED_FUNCTION_10_12();
  v42 = *(v41 - 256);
  swift_getWitnessTable();
  sub_1C840C15C();
  return (*(v47 + 8))(v30, v42);
}

uint64_t sub_1C831A29C()
{
  OUTLINED_FUNCTION_14_8();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t OUTLINED_FUNCTION_9_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

id OUTLINED_FUNCTION_9_4(uint64_t a1)
{

  return [v3 (v1 + 632)];
}

unint64_t OUTLINED_FUNCTION_9_10@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 336) = &a2 - a1;

  return sub_1C8319BC0();
}

uint64_t GradientColorResolverView.init(gradient:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for GradientColorResolverView();
  v9 = v8[9];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5A0);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + v8[10]) = a1;
  v11 = (a4 + v8[11]);
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t PrefetchableImage.Image.debugDescription.getter()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 32);
  sub_1C83150F0();
  v7 = sub_1C840CDFC();
  if (v1 != 3)
  {
    v4 = sub_1C840CDFC();
    MEMORY[0x1CCA75890](v4);

    OUTLINED_FUNCTION_66_1();
  }

  if (v2 != 4)
  {
    sub_1C840D3DC();

    v5 = sub_1C840CDFC();
    MEMORY[0x1CCA75890](v5);

    OUTLINED_FUNCTION_66_1();
  }

  if ((~v3 & 0xFF00) != 0)
  {
    MEMORY[0x1CCA75890](0x3A746E6F6620, 0xE600000000000000);
    sub_1C840D4CC();
    OUTLINED_FUNCTION_66_1();
  }

  return v7;
}

uint64_t Gradient.init(_:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C8414650;
  v3 = [a1 startColor];
  v4 = [v3 platformColor];
  v5 = sub_1C840C26C();

  *(v2 + 32) = v5;
  v6 = [a1 endColor];
  v7 = [v6 platformColor];
  v8 = sub_1C840C26C();

  *(v2 + 40) = v8;
  v9 = MEMORY[0x1CCA74FC0](v2);

  return v9;
}

__n128 sub_1C831A820@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  Gradient.init(_:)(a1);
  sub_1C840B78C();
  result = v5;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

id OUTLINED_FUNCTION_59_0()
{
  v4 = *(v2 + v0);

  return [v4 (v1 + 2168)];
}

uint64_t PrefetchableImage.Font.debugDescription.getter()
{
  v1 = *(v0 + 10);
  v2 = *(v0 + 11);
  v6 = sub_1C840CDFC();
  if (v1 != 9)
  {
    v3 = sub_1C840CDFC();
    MEMORY[0x1CCA75890](v3);

    MEMORY[0x1CCA75890](41, 0xE100000000000000);
    MEMORY[0x1CCA75890](0x287468676965772ELL, 0xE800000000000000);
  }

  if (v2 != 3)
  {
    v4 = sub_1C840CDFC();
    MEMORY[0x1CCA75890](v4);

    MEMORY[0x1CCA75890](41, 0xE100000000000000);
    MEMORY[0x1CCA75890](0x676E696461656C2ELL, 0xE900000000000028);
  }

  return v6;
}

uint64_t sub_1C831AAC4(int a1, __int16 a2)
{
  v2 = BYTE2(a1);
  if (HIBYTE(a2))
  {
    if (HIBYTE(a2) == 1)
    {
      v3 = a2;
      strcpy(v11, ".systemSize(");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      v4 = sub_1C840D0CC();
      MEMORY[0x1CCA75890](v4);

      if (v3 == 9)
      {
LABEL_10:
        MEMORY[0x1CCA75890](41, 0xE100000000000000);
        return v11[0];
      }
    }

    else
    {
      v6 = BYTE1(a1);
      strcpy(v11, ".systemStyle(");
      HIWORD(v11[1]) = -4864;
      v7 = sub_1C840CDFC();
      MEMORY[0x1CCA75890](v7);

      if (v6 != 4)
      {
        v8 = sub_1C840CDFC();
        MEMORY[0x1CCA75890](v8);

        MEMORY[0x1CCA75890](0x6E6769736564202CLL, 0xE90000000000003ALL);
      }

      if (v2 == 9)
      {
        goto LABEL_10;
      }
    }

    v9 = sub_1C840CDFC();
    MEMORY[0x1CCA75890](v9);

    MEMORY[0x1CCA75890](0x746867696577202CLL, 0xE90000000000003ALL);

    goto LABEL_10;
  }

  v11[0] = 46;
  v11[1] = 0xE100000000000000;
  v5 = sub_1C840CDFC();
  MEMORY[0x1CCA75890](v5);

  return v11[0];
}

uint64_t TopHitViewColorScheme.entityTitleTextStyle.getter()
{
  OUTLINED_FUNCTION_4_17();
  type metadata accessor for TopHitViewColorScheme();
  OUTLINED_FUNCTION_0_20();
  return sub_1C8312B90(v1 + v2, v0, v3);
}

uint64_t TopHitViewTextStyle.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C840B5EC();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v5);
  v11 = (*(v7 + 88))(v10, v5);
  if (v11 == *MEMORY[0x1E697DBB8])
  {
    v12 = v2;
    return sub_1C831AEC0(v12, a2);
  }

  if (v11 == *MEMORY[0x1E697DBA8])
  {
    v12 = v2 + *(type metadata accessor for TopHitViewTextStyle(0) + 20);
    return sub_1C831AEC0(v12, a2);
  }

  sub_1C831AEC0(v2, a2);
  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C831AEC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopHitViewTextStyle.Resolved(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TopHitViewTextStyle.Resolved.blendMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TopHitViewTextStyle.Resolved(0) + 20);
  v4 = sub_1C840C62C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C831AFA4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1C831AFD4(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 16) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

id TopHitViewIconBackgroundStyle.resolve(in:)(uint64_t a1)
{
  sub_1C840BB2C();
  OUTLINED_FUNCTION_5();
  v45 = v4;
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1C840B5EC();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  v18 = v1[1];
  v19 = v1[3];
  v43 = v1[2];
  v44 = v18;
  v42 = v19;
  v20 = *(v7 + 16);
  v20(&v41 - v16, a1, v5, v15);
  v21 = (*(v7 + 88))(v17, v5);
  if (v21 == *MEMORY[0x1E697DBB8])
  {
    (*(v7 + 104))(v13, v21, v5);

    sub_1C840BB1C();
    (v20)(v10, v13, v5);
    sub_1C840B9AC();
    sub_1C840C2FC();
    v22 = sub_1C840C30C();
    v23 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithCGColor_];
    v24 = objc_allocWithZone(MEMORY[0x1E69E0B48]);
    v25 = [v24 initWithColor:v23 blendMode:v44];

    v26 = OUTLINED_FUNCTION_2_13();
    v27(v26);
    (*(v7 + 8))(v13, v5);
  }

  else
  {
    v28 = *(v7 + 104);
    if (v21 != *MEMORY[0x1E697DBA8])
    {
      v28(v13);

      sub_1C840BB1C();
      (v20)(v10, v13, v5);
      sub_1C840B9AC();
      sub_1C840C2FC();
      v34 = sub_1C840C30C();
      v35 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithCGColor_];
      v36 = objc_allocWithZone(MEMORY[0x1E69E0B48]);
      v25 = [v36 initWithColor:v35 blendMode:v44];

      v37 = OUTLINED_FUNCTION_2_13();
      v38(v37);
      v39 = *(v7 + 8);
      v39(v13, v5);

      v39(v17, v5);
      return v25;
    }

    (v28)(v13, v21, v5);

    sub_1C840BB1C();
    (v20)(v10, v13, v5);
    sub_1C840B9AC();
    sub_1C840C2FC();
    v29 = sub_1C840C30C();
    v30 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithCGColor_];
    v31 = objc_allocWithZone(MEMORY[0x1E69E0B48]);
    v25 = [v31 initWithColor:v30 blendMode:v42];

    v32 = OUTLINED_FUNCTION_2_13();
    v33(v32);
    (*(v7 + 8))(v13, v5);
  }

  return v25;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C831B4D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t PlatterBackground.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = type metadata accessor for PlatterBackground();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C840BB2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C83A8F74(v10);
  sub_1C840C2FC();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  v19 = sub_1C831BAB4();
  sub_1C831BDBC(v1, v6);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = v20 + v5;
  v22 = swift_allocObject();
  result = sub_1C831BE20(v6, v22 + v20);
  *(v22 + v21) = v19;
  v24 = (v22 + (v21 & 0xFFFFFFFFFFFFFFFCLL));
  v24[1] = v12;
  v24[2] = v14;
  v24[3] = v16;
  v24[4] = v18;
  *a1 = sub_1C83A9288;
  a1[1] = v22;
  return result;
}

uint64_t sub_1C831B710()
{
  v1 = type metadata accessor for PlatterBackground();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C840B5EC();
    OUTLINED_FUNCTION_6();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C840BB2C();
    OUTLINED_FUNCTION_6();
    (*(v7 + 8))(v0 + v3 + v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFFCLL) + 20, v2 | 7);
}

uint64_t sub_1C831B8A0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1C840BB2C();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  sub_1C8344AB4(v6, &v21 - v16, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2(0);
    OUTLINED_FUNCTION_6();
    return (*(v18 + 32))(a3, v17);
  }

  else
  {
    sub_1C840D17C();
    v20 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v14, v8);
  }
}

BOOL sub_1C831BAB4()
{
  v0 = sub_1C840B5EC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - v5;
  v7 = sub_1C840BB2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C83A8F74(v10);
  sub_1C840C2FC();
  (*(v8 + 8))(v10, v7);
  sub_1C83A8D74(v6);
  v11 = *MEMORY[0x1E697DBA8];
  v12 = *(v1 + 104);
  v12(v4, v11, v0);
  LOBYTE(v7) = sub_1C840B5DC();
  v13 = *(v1 + 8);
  v13(v4, v0);
  v13(v6, v0);
  if (v7)
  {
    v14 = 0.2;
  }

  else
  {
    v14 = 0.8;
  }

  sub_1C840C31C();
  v16 = v15 * 0.299;
  sub_1C840C33C();
  v18 = v16 + (v17 * 0.587);
  sub_1C840C32C();
  v20 = v18 + (v19 * 0.114);
  sub_1C83A8D74(v6);
  v12(v4, v11, v0);
  v21 = sub_1C840B5DC();
  v13(v4, v0);
  v13(v6, v0);
  if (v21)
  {
    return v20 < v14;
  }

  else
  {
    return v14 < v20;
  }
}

uint64_t sub_1C831BDBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterBackground();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C831BE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterBackground();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_18WorkflowUIServices8IconViewV11DisplayModeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t IconView.body.getter()
{
  v1 = v0[1];
  v3 = *v0;
  v4[0] = v1;
  *(v4 + 10) = *(v0 + 26);
  return sub_1C831BEE8(&v3);
}

uint64_t sub_1C831BEE8(uint64_t a1)
{
  v2 = sub_1C840B4AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = *(a1 + 41);
    *&v34[2] = swift_getKeyPath();
    BYTE8(v34[2]) = 0;
    *&v34[3] = swift_getKeyPath();
    BYTE8(v34[5]) = 0;
    *&v46[0] = 0;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E7B0);
    sub_1C840C50C();
    v34[6] = __dst[0];
    *&v34[0] = v8;
    *(v34 + 8) = *(a1 + 8);
    BYTE8(v34[1]) = *(a1 + 24);
    v35 = v9;
    sub_1C83361FC(v34, __dst);
    v48 = 0;
    sub_1C831CABC();
    sub_1C831CA68();
    sub_1C840BC6C();
    sub_1C8317A78();
    v49 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DBA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DBA8);
    sub_1C831CB9C();
    sub_1C831CB10();
    sub_1C840BC6C();
    sub_1C8352B5C(&v36, &qword_1EC29DBA0);
    sub_1C8317A78();
    v50 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB98);
    sub_1C831CC28();
    sub_1C840BC6C();
    sub_1C8352B5C(v46, &qword_1EC29DB98);
    return sub_1C8336258(v34);
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    __dst[0] = *(a1 + 8);
    LOBYTE(__dst[1]) = *(a1 + 24);
    v51 = *(a1 + 32);
    v52 = *(a1 + 40);
    HIBYTE(v46[0]) = v52;
    *(v46 + 7) = v51;
    KeyPath = swift_getKeyPath();
    v45 = 0;
    v15 = swift_getKeyPath();
    v43 = 0;
    v16 = swift_getKeyPath();
    v40 = 0;
    type metadata accessor for SymbolIconView.SymbolIconMetrics();
    v17 = swift_allocObject();
    v18 = v6;
    sub_1C831C970(&v51, &v36);
    sub_1C831C9CC();
    *(v17 + 16) = sub_1C840CD3C();
    *&v34[0] = v17;
    sub_1C840C50C();
    *&v34[0] = v13;
    *(v34 + 8) = __dst[0];
    BYTE8(v34[1]) = __dst[1];
    *(&v34[1] + 9) = v46[0];
    *(&v34[2] + 9) = v36;
    HIDWORD(v34[2]) = *(&v36 + 3);
    *&v34[3] = KeyPath;
    BYTE8(v34[3]) = v45;
    HIDWORD(v34[3]) = *&v44[3];
    *(&v34[3] + 9) = *v44;
    *&v34[4] = v15;
    BYTE8(v34[4]) = 0;
    BYTE9(v34[4]) = v43;
    HIWORD(v34[4]) = v42;
    *(&v34[4] + 10) = v41;
    *&v34[5] = v16;
    BYTE8(v34[5]) = v40;
    HIDWORD(v34[5]) = *&v39[3];
    *(&v34[5] + 9) = *v39;
    v34[6] = v36;
    memcpy(__dst, v34, sizeof(__dst));
    v48 = 1;
    sub_1C831CA20(v34, v46);
    sub_1C831CABC();
    sub_1C831CA68();
    sub_1C840BC6C();
    sub_1C8317A78();
    v49 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DBA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DBA8);
    sub_1C831CB9C();
    sub_1C831CB10();
    sub_1C840BC6C();
    sub_1C8352B5C(&v36, &qword_1EC29DBA0);
    sub_1C8317A78();
    v50 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB98);
    sub_1C831CC28();
    sub_1C840BC6C();
    sub_1C831CCB4(v34);
LABEL_7:

    return sub_1C8352B5C(v46, &qword_1EC29DB98);
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    *(v34 + 8) = *(a1 + 8);
    BYTE8(v34[1]) = *(a1 + 24);
    v51 = *(a1 + 32);
    v52 = *(a1 + 40);
    *(__dst + 7) = v51;
    HIBYTE(__dst[0]) = v52;
    v21 = swift_getKeyPath();
    LOBYTE(v46[0]) = 0;
    *&v34[0] = v20;
    *(&v34[1] + 9) = __dst[0];
    *&v34[3] = v21;
    BYTE8(v34[3]) = 0;
    __dst[0] = v34[0];
    __dst[1] = v34[1];
    __dst[2] = v34[2];
    *(&__dst[2] + 9) = *(&v34[2] + 9);
    v44[0] = 0;
    BYTE9(__dst[3]) = 0;
    v18 = v6;
    sub_1C831C970(&v51, v46);
    sub_1C83519EC(v34, v46);
    sub_1C8321FFC();
    sub_1C83221E8();
    sub_1C840BC6C();
    __dst[0] = v36;
    __dst[1] = v37;
    __dst[2] = v38[0];
    *(&__dst[2] + 10) = *(v38 + 10);
    v49 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DBA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DBA8);
    sub_1C831CB9C();
    sub_1C831CB10();
    sub_1C840BC6C();
    sub_1C8317A78();
    v50 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB98);
    sub_1C831CC28();
    sub_1C840BC6C();
    sub_1C835210C(v34);
    goto LABEL_7;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v24 = *(a1 + 24);
    LOBYTE(v34[0]) = 1;
    *&__dst[0] = v22;
    *(__dst + 8) = *(a1 + 8);
    BYTE8(__dst[1]) = v24;
    BYTE9(__dst[3]) = 1;
    sub_1C8321FFC();
    sub_1C83221E8();
    v25 = v6;
    v26 = v23;
    sub_1C840BC6C();
    __dst[0] = v36;
    __dst[1] = v37;
    __dst[2] = v38[0];
    *(&__dst[2] + 10) = *(v38 + 10);
    v49 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DBA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DBA8);
    sub_1C831CB9C();
    sub_1C831CB10();
    sub_1C840BC6C();
    sub_1C8317A78();
    v50 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB98);
    sub_1C831CC28();
    sub_1C840BC6C();

    return sub_1C8352B5C(v46, &qword_1EC29DB98);
  }

  sub_1C840B36C();
  v27 = v6;
  v28 = sub_1C840B48C();
  v29 = sub_1C840D16C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_1C830A000, v28, v29, "Unsupported icon type found: %@", v30, 0xCu);
    sub_1C8352B5C(v31, &qword_1EC29E910);
    MEMORY[0x1CCA773B0](v31, -1, -1);
    MEMORY[0x1CCA773B0](v30, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v50 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB98);
  sub_1C831CC28();
  return sub_1C840BC6C();
}

uint64_t sub_1C831C8F0()
{
  OUTLINED_FUNCTION_22_0();
  result = sub_1C840B9BC();
  *v0 = v2;
  return result;
}

unint64_t sub_1C831C9CC()
{
  result = qword_1EC29CD28;
  if (!qword_1EC29CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CD28);
  }

  return result;
}

unint64_t sub_1C831CA68()
{
  result = qword_1ED7EE840;
  if (!qword_1ED7EE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE840);
  }

  return result;
}

unint64_t sub_1C831CABC()
{
  result = qword_1ED7EEAC0;
  if (!qword_1ED7EEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EEAC0);
  }

  return result;
}

unint64_t sub_1C831CB10()
{
  result = qword_1ED7EE798;
  if (!qword_1ED7EE798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DBA8);
    sub_1C8321FFC();
    sub_1C83221E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE798);
  }

  return result;
}

unint64_t sub_1C831CB9C()
{
  result = qword_1ED7EE790;
  if (!qword_1ED7EE790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DBA0);
    sub_1C831CABC();
    sub_1C831CA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE790);
  }

  return result;
}

unint64_t sub_1C831CC28()
{
  result = qword_1ED7EE788;
  if (!qword_1ED7EE788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB98);
    sub_1C831CB9C();
    sub_1C831CB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE788);
  }

  return result;
}

_BYTE *_s16MaskShapeContextOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C831CDB4);
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

uint64_t _s16MaskShapeContextOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t EnvironmentValues.iconViewBorderStyle.getter()
{
  v0 = sub_1C831CFC0();
  OUTLINED_FUNCTION_0_7(v0, &_s22IconViewBorderStyleKeyVN);

  return sub_1C840BB3C();
}

uint64_t sub_1C831CEA4()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_80_2();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_0_14(v2);
  *v3 = v4;
  v3[1] = sub_1C838C18C;
  v5 = OUTLINED_FUNCTION_33_0();

  return sub_1C831CF48(v5, v6, v7, v1, v8);
}

uint64_t sub_1C831CF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C831D014, a4, 0);
}

uint64_t sub_1C831CF68@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.iconViewBorderStyle.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1C831CFA4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C831CFC0()
{
  result = qword_1EC29CD98;
  if (!qword_1EC29CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CD98);
  }

  return result;
}

uint64_t sub_1C831D014()
{
  OUTLINED_FUNCTION_130();
  sub_1C831D074(*(v0 + 24));
  OUTLINED_FUNCTION_41();

  return v1();
}

void sub_1C831D074(__int128 *a1)
{
  v3 = v1;
  v4 = a1[1];
  v42 = *a1;
  v43 = v4;
  v44 = *(a1 + 8);
  v5 = v1[22];
  os_unfair_lock_lock((v5 + 20));
  v6 = *(v5 + 16);
  os_unfair_lock_unlock((v5 + 20));
  if (v6 != 1)
  {
    return;
  }

  v7 = OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_seenImages;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_1C831D494(&v42, v8);

  if (v9)
  {
    return;
  }

  OUTLINED_FUNCTION_64_0();
  sub_1C8319A60(&v42, v40);
  sub_1C831DF94(v40, &v42);
  swift_endAccess();
  OUTLINED_FUNCTION_15();
  sub_1C83150F8();
  sub_1C8323310();
  v11 = v10;
  if (qword_1EC29CF48 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v12 = sub_1C840B4AC();
  OUTLINED_FUNCTION_36_3(v12, qword_1EC2A9D48);
  sub_1C8319A60(&v42, v40);

  v13 = sub_1C840B48C();
  sub_1C840D18C();
  OUTLINED_FUNCTION_71_2();

  sub_1C83233E0(&v42);
  if (OUTLINED_FUNCTION_88_1())
  {
    OUTLINED_FUNCTION_18_7();
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_1C830E180(v3[14], v3[15], &v39);
    *(v14 + 12) = 2080;
    v15 = OUTLINED_FUNCTION_25_8();
    *(v14 + 14) = sub_1C830E180(v15, v16, v17);
    *(v14 + 22) = 2080;
    v40[0] = v42;
    v40[1] = v43;
    v41 = v44;
    sub_1C8319A60(&v42, &v38);
    v18 = sub_1C840CDFC();
    v20 = sub_1C830E180(v18, v19, &v39);

    *(v14 + 24) = v20;
    _os_log_impl(&dword_1C830A000, v13, v2, "[%s] Used [%s] %s", v14, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
  }

  OUTLINED_FUNCTION_64_0();
  sub_1C8319A60(&v42, v40);
  swift_isUniquelyReferenced_nonNull_native();
  *&v40[0] = v3[26];
  v21 = *&v40[0];
  v3[26] = 0x8000000000000000;
  OUTLINED_FUNCTION_25_8();
  v22 = sub_1C8317708();
  if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v22;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F958);
  if (sub_1C840D4EC())
  {
    OUTLINED_FUNCTION_25_8();
    v26 = sub_1C8317708();
    if ((v25 & 1) == (v27 & 1))
    {
      v24 = v26;
      goto LABEL_11;
    }

LABEL_17:
    sub_1C840D6DC();
    __break(1u);
    return;
  }

LABEL_11:
  v28 = *&v40[0];
  v3[26] = *&v40[0];
  if (v25)
  {
  }

  else
  {
    v29 = OUTLINED_FUNCTION_74_2();
    sub_1C831E6DC(v29, v30, v11, v31, v28);
  }

  v32 = v28[7] + 8 * v24;
  sub_1C832E540();
  v33 = *(*v32 + 16);
  sub_1C832E5E4(v33);
  v34 = *v32;
  *(v34 + 16) = v33 + 1;
  v35 = v34 + 40 * v33;
  v36 = v42;
  v37 = v43;
  *(v35 + 64) = v44;
  *(v35 + 32) = v36;
  *(v35 + 48) = v37;
  swift_endAccess();
}

uint64_t sub_1C831D494(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C840D77C();
  PrefetchableImage.Image.hash(into:)();
  v4 = sub_1C840D7CC();
  v5 = a2 + 56;
  v6 = -1 << *(a2 + 32);
  v7 = v4 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  v43 = *(a1 + 17);
  v9 = *(a1 + 9);
  v10 = *(a1 + 3);
  v11 = *(a1 + 8);
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  v40 = v9;
  v39 = v9 >> 8;
  v41 = v11 & 0xFF00;
  v42 = v9;
  v34 = v11;
  v35 = v11;
  v38 = BYTE1(v11);
  v36 = BYTE2(v11);
  v33 = HIBYTE(v11);
  v15 = *(a2 + 48);
  v31 = BYTE2(v10);
  v32 = BYTE1(v10);
  v37 = LODWORD(v10);
  v16 = v10;
  v44 = v12;
  while (1)
  {
    v17 = v15 + 40 * v7;
    v18 = *(v17 + 17);
    v19 = *(v17 + 18);
    v20 = *(v17 + 24);
    v21 = *(v17 + 32);
    if (*(v17 + 16))
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (v14)
    {
      goto LABEL_37;
    }

    if (*v17 != *&v12 || *(v17 + 8) != v13)
    {
      v23 = sub_1C840D69C();
      v12 = v44;
      if ((v23 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    if (v18 == 3)
    {
      if (v43 != 3)
      {
        goto LABEL_37;
      }
    }

    else if (v43 == 3 || v18 != v43)
    {
      goto LABEL_37;
    }

    if (v19 == 4)
    {
      if (v42 != 4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v42 == 4)
      {
        goto LABEL_37;
      }

      v25 = v19 == 3 ? v40 == 3 : (v19 ^ v40) == 0;
      if (!v25 || v19 >> 8 != v39)
      {
        goto LABEL_37;
      }
    }

    if ((~v21 & 0xFF00) == 0)
    {
      if (v41 == 65280)
      {
        return 1;
      }

      goto LABEL_37;
    }

    if (v41 == 65280)
    {
      goto LABEL_37;
    }

    if (!BYTE1(v21))
    {
      if (v38 || LOBYTE(v20) != v37)
      {
        goto LABEL_37;
      }

      goto LABEL_52;
    }

    if (BYTE1(v21) == 1)
    {
      if (v38 != 1 || v20 != v16)
      {
        goto LABEL_37;
      }

      if (v21 != 9)
      {
        if (v35 == 9 || v21 != v34)
        {
          goto LABEL_37;
        }

        goto LABEL_52;
      }

      v28 = v35;
    }

    else
    {
      if (v38 != 2 || LOBYTE(v20) != v37)
      {
        goto LABEL_37;
      }

      if ((LOWORD(v20) & 0xFF00) == 0x400)
      {
        if (v32 != 4)
        {
          goto LABEL_37;
        }
      }

      else if (v32 == 4 || ((LOWORD(v20) ^ v37) & 0xFF00) != 0)
      {
        goto LABEL_37;
      }

      if ((*&v20 & 0xFF0000) != 0x90000)
      {
        if (v31 == 9 || ((LODWORD(v20) ^ v37) & 0xFF0000) != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_52;
      }

      v28 = v31;
    }

    if (v28 != 9)
    {
      goto LABEL_37;
    }

LABEL_52:
    if ((v21 & 0xFF0000) == 0x90000)
    {
      if (v36 != 9)
      {
        goto LABEL_37;
      }
    }

    else if (v36 == 9 || ((v21 ^ v34) & 0xFF0000) != 0)
    {
      goto LABEL_37;
    }

    if (HIBYTE(v21) != 3)
    {
      break;
    }

    if (v33 == 3)
    {
      return 1;
    }

LABEL_37:
    v7 = (v7 + 1) & v8;
    if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  if (v33 == 3 || HIBYTE(v21) != v33)
  {
    goto LABEL_37;
  }

  return 1;
}

uint64_t EnvironmentValues.symbolIconFontWeight.getter()
{
  sub_1C831E3F8();
  sub_1C840BB3C();
  return v1;
}

uint64_t sub_1C831D888(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v49 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C831EAD4();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1C83B7C20();
        goto LABEL_87;
      }

      sub_1C831DCF8();
    }

    v8 = *v3;
    sub_1C840D77C();
    PrefetchableImage.Image.hash(into:)();
    result = sub_1C840D7CC();
    v9 = v8 + 56;
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      v50 = *(v5 + 17);
      v12 = *(v5 + 24);
      v13 = *(v5 + 32);
      v14 = *v5;
      v15 = *(v5 + 8);
      v16 = *(v5 + 16);
      v45 = *(v5 + 18);
      v46 = v13 & 0xFF00;
      v47 = *(v5 + 18);
      v40 = v13;
      v41 = v13;
      v44 = BYTE1(v13);
      v42 = BYTE2(v13);
      v39 = HIBYTE(v13);
      v17 = *(v8 + 48);
      v37 = BYTE2(v12);
      v38 = BYTE1(v12);
      v43 = LODWORD(v12);
      v18 = v12;
      v51 = *v5;
      while (1)
      {
        v19 = v17 + 40 * a2;
        result = *v19;
        v20 = *(v19 + 17);
        v21 = *(v19 + 18);
        v22 = *(v19 + 24);
        v23 = *(v19 + 32);
        if (*(v19 + 16))
        {
          if ((v16 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v16)
        {
          goto LABEL_43;
        }

        if (result != v14 || *(v19 + 8) != v15)
        {
          result = sub_1C840D69C();
          v14 = v51;
          if ((result & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        if (v20 == 3)
        {
          if (v50 != 3)
          {
            goto LABEL_43;
          }
        }

        else if (v50 == 3 || v20 != v50)
        {
          goto LABEL_43;
        }

        if (v21 == 4)
        {
          if (v47 != 4)
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v47 == 4)
          {
            goto LABEL_43;
          }

          v26 = v21 == 3 ? v45 == 3 : (v21 ^ v45) == 0;
          if (!v26 || v21 >> 8 != v45 >> 8)
          {
            goto LABEL_43;
          }
        }

        if ((~v23 & 0xFF00) == 0)
        {
          if (v46 == 65280)
          {
            goto LABEL_90;
          }

          goto LABEL_43;
        }

        if (v46 != 65280)
        {
          break;
        }

LABEL_43:
        a2 = (a2 + 1) & v11;
        if (((*(v9 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      if (BYTE1(v23))
      {
        if (BYTE1(v23) == 1)
        {
          if (v44 != 1 || v22 != v18)
          {
            goto LABEL_43;
          }

          if (v23 == 9)
          {
            v29 = v41;
            goto LABEL_54;
          }

          if (v41 == 9 || v23 != v40)
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v44 != 2 || LOBYTE(v22) != v43)
          {
            goto LABEL_43;
          }

          if ((LOWORD(v22) & 0xFF00) == 0x400)
          {
            if (v38 != 4)
            {
              goto LABEL_43;
            }
          }

          else if (v38 == 4 || ((LOWORD(v22) ^ v43) & 0xFF00) != 0)
          {
            goto LABEL_43;
          }

          if ((*&v22 & 0xFF0000) == 0x90000)
          {
            v29 = v37;
LABEL_54:
            if (v29 != 9)
            {
              goto LABEL_43;
            }

            goto LABEL_58;
          }

          if (v37 == 9 || ((LODWORD(v22) ^ v43) & 0xFF0000) != 0)
          {
            goto LABEL_43;
          }
        }
      }

      else if (v44 || LOBYTE(v22) != v43)
      {
        goto LABEL_43;
      }

LABEL_58:
      if ((v23 & 0xFF0000) == 0x90000)
      {
        if (v42 != 9)
        {
          goto LABEL_43;
        }
      }

      else if (v42 == 9 || ((v23 ^ v40) & 0xFF0000) != 0)
      {
        goto LABEL_43;
      }

      if (HIBYTE(v23) == 3)
      {
        if (v39 == 3)
        {
          goto LABEL_90;
        }
      }

      else if (v39 != 3 && HIBYTE(v23) == v39)
      {
        goto LABEL_90;
      }

      goto LABEL_43;
    }
  }

LABEL_87:
  v31 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v32 = *(v31 + 48) + 40 * a2;
  v33 = *(v49 + 16);
  *v32 = *v49;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(v49 + 32);
  v34 = *(v31 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_90:
    result = sub_1C840D6CC();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v36;
  }

  return result;
}

uint64_t sub_1C831DCC8()
{
  OUTLINED_FUNCTION_22_0();
  result = EnvironmentValues.symbolIconFontWeight.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C831DCF8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F960);
  result = sub_1C840D3AC();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 40 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v31 = *(v15 + 18);
        v32 = *(v15 + 17);
        v30 = *(v15 + 24);
        v29 = *(v15 + 32);
        sub_1C840D77C();
        sub_1C83150F0();
        PrefetchableImage.Image.hash(into:)();
        result = sub_1C840D7CC();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v4 + 48) + 40 * v22;
        *v27 = v16;
        *(v27 + 8) = v17;
        *(v27 + 16) = v18;
        *(v27 + 17) = v32;
        *(v27 + 18) = v31;
        *(v27 + 24) = v30;
        *(v27 + 32) = v29;
        ++*(v4 + 16);
        v2 = v28;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C831DF94(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v62 = *a2;
  v63 = v5;
  v64 = *(a2 + 32);
  sub_1C840D77C();
  PrefetchableImage.Image.hash(into:)();
  v6 = sub_1C840D7CC();
  v7 = v4 + 56;
  v8 = -1 << *(v4 + 32);
  v9 = v6 & ~v8;
  v55 = a2;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_80:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v62 = *v53;
    sub_1C8319A60(v55, v61);
    sub_1C831D888(v55, v9, isUniquelyReferenced_nonNull_native);
    *v53 = v62;
    v33 = *(v55 + 16);
    *a1 = *v55;
    *(a1 + 16) = v33;
    *(a1 + 32) = *(v55 + 32);
    return 1;
  }

  v10 = ~v8;
  v11 = *(a2 + 18);
  v58 = *(a2 + 17);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v57 = v11;
  v52 = v11;
  v51 = v11 >> 8;
  v54 = v13 & 0xFF00;
  v46 = v13;
  v47 = v13;
  v50 = BYTE1(v13);
  v48 = BYTE2(v13);
  v45 = HIBYTE(v13);
  v44 = v4;
  v17 = *(v4 + 48);
  v42 = BYTE2(v12);
  v43 = BYTE1(v12);
  v49 = LODWORD(v12);
  v18 = v12;
  v59 = v15;
  v60 = v14;
  while (1)
  {
    v19 = v17 + 40 * v9;
    v20 = *(v19 + 17);
    v21 = *(v19 + 18);
    v22 = *(v19 + 24);
    v23 = *(v19 + 32);
    if (*(v19 + 16))
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (v16)
    {
      goto LABEL_36;
    }

    if (*v19 != v14 || *(v19 + 8) != v15)
    {
      v25 = sub_1C840D69C();
      v15 = v59;
      v14 = v60;
      if ((v25 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (v20 == 3)
    {
      if (v58 != 3)
      {
        goto LABEL_36;
      }
    }

    else if (v58 == 3 || v20 != v58)
    {
      goto LABEL_36;
    }

    if (v21 == 4)
    {
      if (v57 != 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v57 == 4)
      {
        goto LABEL_36;
      }

      v27 = v21 == 3 ? v52 == 3 : (v21 ^ v52) == 0;
      if (!v27 || v21 >> 8 != v51)
      {
        goto LABEL_36;
      }
    }

    if ((~v23 & 0xFF00) == 0)
    {
      if (v54 == 65280)
      {
        goto LABEL_81;
      }

      goto LABEL_36;
    }

    if (v54 == 65280)
    {
      goto LABEL_36;
    }

    if (!BYTE1(v23))
    {
      if (v50 || LOBYTE(v22) != v49)
      {
        goto LABEL_36;
      }

      goto LABEL_51;
    }

    if (BYTE1(v23) == 1)
    {
      if (v50 != 1 || v22 != v18)
      {
        goto LABEL_36;
      }

      if (v23 != 9)
      {
        if (v47 == 9 || v23 != v46)
        {
          goto LABEL_36;
        }

        goto LABEL_51;
      }

      v30 = v47;
    }

    else
    {
      if (v50 != 2 || LOBYTE(v22) != v49)
      {
        goto LABEL_36;
      }

      if ((LOWORD(v22) & 0xFF00) == 0x400)
      {
        if (v43 != 4)
        {
          goto LABEL_36;
        }
      }

      else if (v43 == 4 || ((LOWORD(v22) ^ v49) & 0xFF00) != 0)
      {
        goto LABEL_36;
      }

      if ((*&v22 & 0xFF0000) != 0x90000)
      {
        if (v42 == 9 || ((LODWORD(v22) ^ v49) & 0xFF0000) != 0)
        {
          goto LABEL_36;
        }

        goto LABEL_51;
      }

      v30 = v42;
    }

    if (v30 != 9)
    {
      goto LABEL_36;
    }

LABEL_51:
    if ((v23 & 0xFF0000) == 0x90000)
    {
      if (v48 != 9)
      {
        goto LABEL_36;
      }
    }

    else if (v48 == 9 || ((v23 ^ v46) & 0xFF0000) != 0)
    {
      goto LABEL_36;
    }

    if (HIBYTE(v23) != 3)
    {
      break;
    }

    if (v45 == 3)
    {
      goto LABEL_81;
    }

LABEL_36:
    v9 = (v9 + 1) & v10;
    if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  if (v45 == 3 || HIBYTE(v23) != v45)
  {
    goto LABEL_36;
  }

LABEL_81:
  sub_1C83233E0(v55);
  v35 = *(v44 + 48) + 40 * v9;
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = *(v35 + 16);
  v39 = *(v35 + 17);
  v40 = *(v35 + 18);
  v41 = *(v35 + 24);
  LODWORD(v35) = *(v35 + 32);
  *a1 = v36;
  *(a1 + 8) = v37;
  *(a1 + 16) = v38;
  *(a1 + 17) = v39;
  *(a1 + 18) = v40;
  *(a1 + 24) = v41;
  *(a1 + 32) = v35;
  sub_1C83150F0();
  return 0;
}

unint64_t sub_1C831E3F8()
{
  result = qword_1ED7EE7A0;
  if (!qword_1ED7EE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE7A0);
  }

  return result;
}

uint64_t EnvironmentValues.maskShapeContext.getter()
{
  v0 = sub_1C831E680();
  OUTLINED_FUNCTION_0_7(v0, &_s19MaskShapeContextKeyVN);

  return sub_1C840BB3C();
}

unint64_t sub_1C831E4A0()
{
  result = qword_1EC29F5B8[0];
  if (!qword_1EC29F5B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC29F5B8);
  }

  return result;
}

uint64_t sub_1C831E4F4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.maskShapeContext.getter();
  *a1 = v3;
  return result;
}

uint64_t PrefetchableImage.Image.hash(into:)()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 32);
  MEMORY[0x1CCA76180](*(v0 + 16));
  sub_1C840CE4C();
  sub_1C840D79C();
  if (v1 != 3)
  {
    MEMORY[0x1CCA76180](v1);
  }

  if (v2 != 4)
  {
    sub_1C840D79C();
    sub_1C840D79C();
    if (v2 != 3)
    {
      MEMORY[0x1CCA76180](v2);
    }
  }

  sub_1C840D79C();
  if ((~v3 & 0xFF00) == 0)
  {
    return sub_1C840D79C();
  }

  sub_1C840D79C();
  v4 = OUTLINED_FUNCTION_15();
  sub_1C83231A8(v4, v5, v3);
  sub_1C840D79C();
  if ((v3 & 0xFF0000) != 0x90000)
  {
    MEMORY[0x1CCA76180](BYTE2(v3));
  }

  if ((v3 >> 24) == 3)
  {
    return sub_1C840D79C();
  }

  sub_1C840D79C();
  return MEMORY[0x1CCA76180](v3 >> 24);
}

unint64_t sub_1C831E680()
{
  result = qword_1EC29C970;
  if (!qword_1EC29C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C970);
  }

  return result;
}

unint64_t sub_1C831E6DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1C831E724@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  if (__dst[4] && (__dst[4] == 1 || (__dst[5] & 1) == 0))
  {
    v3 = 0;
  }

  else
  {
    v3 = [__dst[0] background];
  }

  v4 = swift_allocObject();
  memcpy((v4 + 16), v1, 0x70uLL);
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0;
  *(a1 + 64) = swift_getKeyPath();
  *(a1 + 72) = 0;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DCE0) + 52);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB58);
  swift_storeEnumTagMultiPayload();
  *a1 = *(v1 + 8);
  *(a1 + 16) = *(v1 + 24);
  *(a1 + 24) = v3;
  *(a1 + 32) = sub_1C8321C70;
  *(a1 + 40) = v4;
  return sub_1C831CA20(__dst, &v7);
}

uint64_t sub_1C831E878(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C831E884()
{
  OUTLINED_FUNCTION_22_0();
  result = EnvironmentValues.clipsCorners.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C831E93C()
{
  v1 = *(v0 + 48);
  if (v1 >= 2)
  {
  }

  sub_1C831E878(*(v0 + 64), *(v0 + 72));
  sub_1C83515E0(*(v0 + 80), *(v0 + 88), *(v0 + 89));
  sub_1C831E878(*(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

char *sub_1C831E9BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C831EAD4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F960);
  result = sub_1C840D3AC();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      sub_1C83B7BBC(0, (v28 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 40 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v32 = *(v15 + 18);
    v33 = *(v15 + 17);
    v31 = *(v15 + 24);
    v30 = *(v15 + 32);
    sub_1C840D77C();
    PrefetchableImage.Image.hash(into:)();
    result = sub_1C840D7CC();
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v4 + 48) + 40 * v22;
    *v27 = v16;
    *(v27 + 8) = v17;
    *(v27 + 16) = v18;
    *(v27 + 17) = v33;
    *(v27 + 18) = v32;
    *(v27 + 24) = v31;
    *(v27 + 32) = v30;
    ++*(v4 + 16);
    v2 = v29;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v11 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t EnvironmentValues.clipsCorners.getter()
{
  sub_1C831F148();
  sub_1C840BB3C();
  return v1;
}

void sub_1C831EDCC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(sub_1C840BB2C() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = v11 + 1;
  v16 = (v14 & ~v13) + v11 + 1;
  v17 = 8 * v16;
  if (a3 <= v12)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v12 < a2)
  {
    v19 = ~v12 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        return;
      case 2:
        *&a1[v16] = v20;
        return;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v16] = v20;
        return;
      default:
        return;
    }
  }

  switch(v18)
  {
    case 1:
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_57:
      __break(1u);
      JUMPOUT(0x1C831F110);
    case 4:
      *&a1[v16] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        if (v9 < 0xFE)
        {
          v24 = (&a1[v14] & ~v13);
          if (a2 > 0xFE)
          {
            if (v15 <= 3)
            {
              v25 = ~(-1 << (8 * v15));
            }

            else
            {
              v25 = -1;
            }

            if (v15)
            {
              v26 = v25 & (a2 - 255);
              if (v15 <= 3)
              {
                v27 = v15;
              }

              else
              {
                v27 = 4;
              }

              bzero(v24, v15);
              switch(v27)
              {
                case 2:
                  *v24 = v26;
                  break;
                case 3:
                  *v24 = v26;
                  v24[2] = BYTE2(v26);
                  break;
                case 4:
                  *v24 = v26;
                  break;
                default:
                  *v24 = v26;
                  break;
              }
            }
          }

          else
          {
            v24[v11] = -a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }
      }

      return;
  }
}

unint64_t sub_1C831F148()
{
  result = qword_1EC29CDB0;
  if (!qword_1EC29CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CDB0);
  }

  return result;
}

uint64_t sub_1C831F19C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1C840BB2C() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_27;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v7 < 0xFE)
      {
        v21 = *(((a1 + v12) & ~v11) + v9);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

uint64_t sub_1C831F3E8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t static IconView.DisplayMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*a1)
  {
    if (!v3)
    {
      sub_1C831F58C(0);
      sub_1C831F58C(0);
      v5 = 1;
      return v5 & 1;
    }

    goto LABEL_8;
  }

  if (*a1 == 1)
  {
    if (v3 == 1)
    {
      v5 = 1;
      sub_1C831F58C(1);
      sub_1C831F58C(1);
      return v5 & 1;
    }

LABEL_8:
    v6 = OUTLINED_FUNCTION_42();
    sub_1C831F57C(v6);
    v7 = OUTLINED_FUNCTION_31();
    sub_1C831F57C(v7);
    v8 = OUTLINED_FUNCTION_31();
    sub_1C831F58C(v8);
    v9 = OUTLINED_FUNCTION_42();
    sub_1C831F58C(v9);
    v5 = 0;
    return v5 & 1;
  }

  if (v3 < 2)
  {
    goto LABEL_8;
  }

  sub_1C8312180(0, &unk_1ED7EE740);
  v10 = OUTLINED_FUNCTION_42();
  sub_1C831F57C(v10);
  v11 = OUTLINED_FUNCTION_31();
  sub_1C831F57C(v11);
  v12 = sub_1C840D26C();
  v13 = OUTLINED_FUNCTION_31();
  sub_1C831F58C(v13);
  v14 = OUTLINED_FUNCTION_42();
  sub_1C831F58C(v14);
  if (v12)
  {
    v5 = v4 ^ v2 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t EnvironmentValues.iconBlendMode.getter()
{
  v0 = sub_1C831F59C();
  OUTLINED_FUNCTION_0_7(v0, &_s16IconBlendModeKeyVN);

  return sub_1C840BB3C();
}

id sub_1C831F57C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1C831F58C(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_1C831F59C()
{
  result = qword_1EC29C978;
  if (!qword_1EC29C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C978);
  }

  return result;
}

uint64_t sub_1C831F5F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC29C980 != -1)
  {
    swift_once();
  }

  v2 = sub_1C840C62C();
  v3 = __swift_project_value_buffer(v2, qword_1EC29E4A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RoundedBackgroundIconView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v132 = a2;
  v5 = *(a1 + 16);
  sub_1C840B8BC();
  OUTLINED_FUNCTION_17_0();
  v122 = sub_1C840B85C();
  v124 = sub_1C840B85C();
  v123 = sub_1C840B85C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB60);
  OUTLINED_FUNCTION_17_0();
  v125 = sub_1C840B85C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB68);
  OUTLINED_FUNCTION_17_0();
  v133 = sub_1C840B85C();
  sub_1C840BC7C();
  v6 = sub_1C840C3AC();
  sub_1C840B85C();
  OUTLINED_FUNCTION_5();
  v118 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  v116 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v117 = &v115 - v12;
  v131 = v13;
  sub_1C840BC7C();
  OUTLINED_FUNCTION_5();
  v120 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_22();
  v119 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v115 - v19;
  v130 = v20;
  sub_1C840BC7C();
  OUTLINED_FUNCTION_5();
  v128 = v22;
  v129 = v21;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_10_1();
  v127 = v24;
  v134 = v6;
  v126 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_22();
  v28 = v26 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v115 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v115 - v33;
  v35 = *(v2 + 16);
  v175 = *v2;
  v176 = v35;
  v36 = sub_1C8320544();
  v37 = sub_1C8320690(v36, 1.0);
  [v37 size];
  v39 = v38;

  v40 = sub_1C8320890(v39);
  v41 = *(a1 + 24);
  v135 = v5;
  v136 = v41;
  v137 = v3;
  v138 = v40;
  v139 = v42;
  v173 = v41;
  v174 = MEMORY[0x1E697EBB8];
  WitnessTable = swift_getWitnessTable();
  v172 = MEMORY[0x1E697E270];
  v43 = swift_getWitnessTable();
  v44 = MEMORY[0x1E697E040];
  v169 = v43;
  v170 = MEMORY[0x1E697E040];
  v45 = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_5();
  v47 = sub_1C83527D8(v46, &qword_1EC29DB60);
  v167 = v45;
  v168 = v47;
  v48 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_5();
  v50 = sub_1C83527D8(v49, &qword_1EC29DB68);
  v165 = v48;
  v166 = v50;
  v163 = swift_getWitnessTable();
  v164 = v41;
  v51 = v34;
  OUTLINED_FUNCTION_4_3();
  v52 = swift_getWitnessTable();
  sub_1C840C39C();
  v53 = *(v3 + 16);
  v54 = v53 >> 5;
  v133 = v52;
  if (!(v53 >> 5) || v54 == 3 || v54 == 4 && v53 == 128 && !*(v3 + 1) && *v3 == 2)
  {
    v162 = v52;
    OUTLINED_FUNCTION_0_3();
    v55 = v134;
    v56 = swift_getWitnessTable();
    sub_1C8317B60(v51, v55, v56);
    sub_1C8317B60(v32, v55, v56);
    v160 = v56;
    v161 = v44;
    OUTLINED_FUNCTION_1_1();
    v158 = swift_getWitnessTable();
    v159 = v158;
    OUTLINED_FUNCTION_4_3();
    v57 = v130;
    v58 = swift_getWitnessTable();
    v59 = v127;
    sub_1C8322590(v28, v57, v55, v58, v56, v60, v61, v62, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
    v63 = *(v126 + 8);
    v63(v28, v55);
    v63(v32, v55);
    v63(v51, v55);
    v65 = v128;
    v64 = v129;
  }

  else
  {
    v115 = v51;
    if ((v53 & 0xE0) == 0x40 && !*(v3 + 3))
    {
      sub_1C840C60C();
      v142 = v52;
      OUTLINED_FUNCTION_0_3();
      v99 = swift_getWitnessTable();
      v100 = v116;
      sub_1C840C19C();
      v140 = v99;
      v141 = v44;
      OUTLINED_FUNCTION_1_1();
      v68 = v131;
      swift_getWitnessTable();
      v69 = v117;
      OUTLINED_FUNCTION_29();
      sub_1C8317B60(v101, v102, v103);
      v73 = *(v118 + 8);
      v73(v100, v68);
      OUTLINED_FUNCTION_29();
      sub_1C8317B60(v104, v105, v106);
      v77 = v121;
      OUTLINED_FUNCTION_30_0();
      sub_1C832271C(v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
      v86 = v100;
    }

    else
    {
      sub_1C840C5FC();
      v150 = v52;
      OUTLINED_FUNCTION_0_3();
      v66 = swift_getWitnessTable();
      v67 = v116;
      sub_1C840C19C();
      v148 = v66;
      v149 = v44;
      OUTLINED_FUNCTION_1_1();
      v68 = v131;
      swift_getWitnessTable();
      v69 = v117;
      OUTLINED_FUNCTION_29();
      sub_1C8317B60(v70, v71, v72);
      v73 = *(v118 + 8);
      v73(v67, v68);
      OUTLINED_FUNCTION_29();
      sub_1C8317B60(v74, v75, v76);
      v77 = v121;
      OUTLINED_FUNCTION_30_0();
      sub_1C8322590(v78, v79, v80, v81, v82, v83, v84, v85, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
      v86 = v67;
    }

    v73(v86, v68);
    v73(v69, v68);
    v65 = v128;
    v64 = v129;
    v87 = v134;
    v147 = v133;
    OUTLINED_FUNCTION_0_3();
    v88 = swift_getWitnessTable();
    v145 = v88;
    v146 = MEMORY[0x1E697E040];
    OUTLINED_FUNCTION_1_1();
    v143 = swift_getWitnessTable();
    v144 = v143;
    OUTLINED_FUNCTION_4_3();
    v89 = v130;
    v90 = swift_getWitnessTable();
    v91 = v119;
    sub_1C8317B60(v77, v89, v90);
    v59 = v127;
    sub_1C832271C(v91, v89, v87, v90, v88, v92, v93, v94, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
    v95 = *(v120 + 8);
    v95(v91, v89);
    v95(v121, v89);
    (*(v126 + 8))(v115, v87);
  }

  v157 = v133;
  OUTLINED_FUNCTION_0_3();
  v96 = swift_getWitnessTable();
  v155 = v96;
  v156 = MEMORY[0x1E697E040];
  OUTLINED_FUNCTION_1_1();
  v153 = swift_getWitnessTable();
  v154 = v153;
  v151 = swift_getWitnessTable();
  v152 = v96;
  v97 = swift_getWitnessTable();
  sub_1C8317B60(v59, v64, v97);
  return (*(v65 + 8))(v59, v64);
}

_BYTE *sub_1C8320008(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t Shape.fill(_:shouldUseClearBackground:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a2;
  OUTLINED_FUNCTION_7_13(a1, a4);
  v6 = v5;
  v48 = v5;
  sub_1C840B64C();
  v7 = sub_1C840B85C();
  OUTLINED_FUNCTION_0();
  v58 = v8;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v9);
  v57 = v46 - v10;
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63[0] = a3;
  v63[1] = MEMORY[0x1E69815C0];
  v63[2] = v6;
  v63[3] = MEMORY[0x1E6981568];
  sub_1C840B5CC();
  OUTLINED_FUNCTION_7();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_12(WitnessTable, &v64);
  v18 = type metadata accessor for GradientColorResolverView();
  OUTLINED_FUNCTION_0();
  v56 = v19;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = OUTLINED_FUNCTION_9_10(v21, v46[0]);
  v49 = v22;
  OUTLINED_FUNCTION_6_10();
  v23 = swift_getWitnessTable();
  v61 = v22;
  v62 = v23;
  OUTLINED_FUNCTION_1_1();
  v53 = v24;
  v50 = v7;
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_11(v25);
  v26 = sub_1C840B8DC();
  OUTLINED_FUNCTION_11_12(v26, &v65);
  v51 = sub_1C840B85C();
  OUTLINED_FUNCTION_0();
  v52 = v27;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v46 - v29;
  v31 = OUTLINED_FUNCTION_13_9();
  v32(v31);
  v33 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v34 = v33 + v14;
  v35 = swift_allocObject();
  v36 = v48;
  *(v35 + 16) = a3;
  *(v35 + 24) = v36;
  (*(v12 + 32))(v35 + v33, v16, a3);
  *(v35 + v34) = v54;
  v37 = v47;
  v38 = v55;
  GradientColorResolverView.init(gradient:_:)(v55, sub_1C83C4AF0, v35, v47);
  Gradient.init(_:)(v38);
  sub_1C840B78C();
  OUTLINED_FUNCTION_8_14();
  v39 = v57;
  sub_1C840C23C();
  sub_1C831A8CC(v63);
  OUTLINED_FUNCTION_1_0();
  v40 = swift_getWitnessTable();
  sub_1C840C5FC();
  v41 = v50;
  sub_1C840C1CC();
  (*(v58 + 8))(v39, v41);
  (*(v56 + 8))(v37, v18);
  OUTLINED_FUNCTION_0_12();
  v42 = swift_getWitnessTable();
  v59 = v40;
  v60 = v42;
  OUTLINED_FUNCTION_10_12();
  v44 = *(v43 - 256);
  swift_getWitnessTable();
  sub_1C840C15C();
  return (*(v52 + 8))(v30, v44);
}