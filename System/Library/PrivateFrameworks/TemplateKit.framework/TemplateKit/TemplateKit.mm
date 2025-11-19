uint64_t sub_1BBA22B24()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1BBA22B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = v23 - v11;
  if (sub_1BBA62260())
  {
    sub_1BBA62570();
    v13 = sub_1BBA62560();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1BBA62260();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1BBA62250())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1BBA62460();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1BBA60C70(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1BBA22E74(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1BBA22EBC(void *a1, uint64_t a2)
{
  v5 = v2 + qword_1EBC7A4F0;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1BBA22F24(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7A5D0);
  }

  else
  {

    return sub_1BBA625A0();
  }
}

uint64_t sub_1BBA22F98()
{
  v0 = sub_1BBA62130();
  __swift_allocate_value_buffer(v0, qword_1EBC7AB48);
  __swift_project_value_buffer(v0, qword_1EBC7AB48);
  return sub_1BBA62120();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_1BBA230E8()
{
  v1 = (v0 + qword_1EBC7A4F8);
  if (*(v0 + qword_1EBC7A4F8 + 8))
  {
    v2 = *v1;
  }

  else
  {
    type metadata accessor for AsyncCache();
    swift_getWitnessTable();
    v2 = sub_1BBA62590();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

unint64_t sub_1BBA231E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BBA2536C(v11, 0, 0, 1, a1, a2);
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
    sub_1BBA232B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_1BBA232B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BBA2331C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1BBA2337C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1BBA236D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBA2370C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBA2374C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  sub_1BBA22F24(v9, v9);
  v10 = *(v9 - 8);
  swift_allocObject();
  v11 = sub_1BBA62220();
  (*(v10 + 16))(v12, a1, v9);
  sub_1BBA622A0();
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = *((v8 & v7) + 0x58);
  v13[4] = *((v8 & v7) + 0x60);
  v13[5] = a2;
  v13[6] = a3;

  sub_1BBA25704(v11, sub_1BBA2C2A4, v13);
}

uint64_t sub_1BBA238F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BBA23928(uint64_t a1)
{
  v13 = 0xE000000000000000;
  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0xD000000000000019, 0x80000001BBA68B20);
  v11 = a1;
  v3 = sub_1BBA622A0();
  swift_getWitnessTable();
  sub_1BBA625C0();
  v4 = sub_1BBA623D0();
  sub_1BBA2515C(v4, 0, 0xE000000000000000);

  v12 = a1;
  v10 = v1;
  v5 = sub_1BBA623F0();
  WitnessTable = swift_getWitnessTable();
  return sub_1BBA23AB0(sub_1BBA25A9C, &v9, v3, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
}

uint64_t sub_1BBA23AB0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1BBA62380();
  if (!v19)
  {
    return sub_1BBA62240();
  }

  v41 = v19;
  v45 = sub_1BBA62510();
  v32 = sub_1BBA62520();
  sub_1BBA624C0();
  result = sub_1BBA62370();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1BBA623C0();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1BBA62500();
      result = sub_1BBA62390();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBA23F54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;
  v3[16] = a1;

  v6 = swift_task_alloc();
  v3[17] = v6;
  *v6 = v5;
  v6[1] = sub_1BBA2BC08;
  v7 = v3[5];

  return sub_1BBA240D8(v7, a1);
}

uint64_t sub_1BBA240D8(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v3[29] = v6;
  v3[30] = *((v5 & v4) + 0x58);
  v3[31] = *((v5 & v4) + 0x60);
  v3[32] = type metadata accessor for AsyncCache.LookaheadElement();
  v7 = sub_1BBA623F0();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v8 = sub_1BBA623F0();
  v3[37] = v8;
  v3[38] = *(v8 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_getTupleTypeMetadata2();
  sub_1BBA623F0();
  v3[45] = swift_task_alloc();
  sub_1BBA622F0();
  v3[46] = sub_1BBA622E0();
  v10 = sub_1BBA622B0();

  return MEMORY[0x1EEE6DFA0](sub_1BBA2B588, v10, v9);
}

char *TLKAsyncCache.init()()
{
  v1 = OBJC_IVAR___TLKAsyncCache_wrappedCache;
  *&v0[v1] = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A518)) init];
  v17.receiver = v0;
  v17.super_class = type metadata accessor for TLKAsyncCache();
  v2 = objc_msgSendSuper2(&v17, sel_init);
  v3 = OBJC_IVAR___TLKAsyncCache_wrappedCache;
  v4 = *&v2[OBJC_IVAR___TLKAsyncCache_wrappedCache];
  v6 = sub_1BBA22E74(&qword_1EBC7A0C8, v5, type metadata accessor for TLKAsyncCache);
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x90);
  v8 = v2;
  v9 = v4;
  v7(v2, v6);

  v10 = *&v2[v3];
  v11 = [v8 description];
  v12 = sub_1BBA621B0();
  v14 = v13;

  v15 = &v10[qword_1EBC7A4F8];
  *v15 = v12;
  v15[1] = v14;

  return v8;
}

id AsyncCache.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  *&v1[qword_1EBC7A4F0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[qword_1EBC7A4F8];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = qword_1EBC7A500;
  v6 = *((v3 & v2) + 0x50);
  v7 = *((v3 & v2) + 0x60);
  type metadata accessor for _AsyncComputeCache();
  *&v1[v5] = sub_1BBA24A90();
  v8 = qword_1EBC7A508;
  v9 = type metadata accessor for AsyncCache.LookaheadElement();
  swift_getTupleTypeMetadata2();
  v10 = sub_1BBA62240();
  v11 = sub_1BBA22B80(v10, v6, v9, v7);

  *&v1[v8] = v11;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for AsyncCache();
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  [v15 addObserver:v14 selector:sel_clear name:*MEMORY[0x1E69DDAD8] object:0];

  v16 = [v13 defaultCenter];
  [v16 addObserver:v14 selector:sel_clear name:*MEMORY[0x1E69DDAC8] object:0];

  return v14;
}

uint64_t *sub_1BBA24A90()
{
  v0 = swift_allocObject();
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = *(v1 + 80);
  sub_1BBA623F0();
  v3 = *(v1 + 96);
  sub_1BBA62150();
  v4 = type metadata accessor for ComputationTracker();
  swift_getTupleTypeMetadata2();
  v5 = sub_1BBA62240();
  v6 = sub_1BBA22B80(v5, v2, v4, v3);

  v0[14] = v6;
  return v0;
}

uint64_t sub_1BBA24BA4()
{
  result = type metadata accessor for ComputationTracker.State();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BBA24C80()
{
  result = sub_1BBA623F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BBA24D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v18 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v5 = type metadata accessor for AsyncCache.LookaheadElement();
  v19 = sub_1BBA623F0();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v17 - v7;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0xD000000000000018, 0x80000001BBA68B00);
  sub_1BBA22F24(v4, v4);
  v9 = *(v4 - 8);
  swift_allocObject();
  v10 = sub_1BBA62220();
  (*(v9 + 16))(v11, a1, v4);
  sub_1BBA622A0();
  v21 = v10;
  swift_getWitnessTable();
  sub_1BBA625C0();

  v12 = v22;
  v13 = v23;
  v14 = sub_1BBA623D0();
  sub_1BBA2515C(v14, v12, v13);

  swift_beginAccess();

  sub_1BBA62170();

  if ((*(*(v5 - 8) + 48))(v8, 1, v5))
  {
    (*(v6 + 8))(v8, v19);
    return (*(*(v18 - 8) + 56))(v20, 1, 1);
  }

  else
  {
    v16 = sub_1BBA623F0();
    (*(*(v16 - 8) + 16))(v20, v8, v16);
    return (*(v6 + 8))(v8, v19);
  }
}

void sub_1BBA2515C(os_log_type_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EBC7A920 != -1)
  {
    swift_once();
  }

  v7 = sub_1BBA62130();
  __swift_project_value_buffer(v7, qword_1EBC7AB48);
  v8 = v3;

  oslog = sub_1BBA62110();

  if (os_log_type_enabled(oslog, a1))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315650;
    v12 = sub_1BBA230E8();
    v14 = sub_1BBA231E8(v12, v13, &v17);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = [objc_opt_self() currentThread];
    *(v9 + 14) = v15;
    *v10 = v15;
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_1BBA231E8(a2, a3, &v17);
    _os_log_impl(&dword_1BBA1F000, oslog, a1, "[%s|%@]: %s", v9, 0x20u);
    sub_1BBA2331C(v10, &qword_1EBC7A530);
    MEMORY[0x1BFB153E0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1BFB153E0](v11, -1, -1);
    MEMORY[0x1BFB153E0](v9, -1, -1);
  }
}

unint64_t sub_1BBA2536C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1BBA608A0(a5, a6);
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
    result = sub_1BBA62480();
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
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

uint64_t sub_1BBA254D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TLKSpotlightPlusUIEnabled()
{
  if (+[TLKUtilities isSiri])
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t TLKBiggerSuggestionsLayoutEnabled()
{
  if (+[TLKUtilities isMacOS])
  {
    return 0;
  }

  v1 = +[TLKTrialManager sharedManager];
  v2 = [v1 biggerSuggestionsLayoutEnabled];

  return v2;
}

uint64_t sub_1BBA25704(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A510);
  MEMORY[0x1EEE9AC00]();
  v10 = &v24 - v9;
  v11 = *((v8 & v7) + 0xE0);
  v12 = (v8 & v7) + 224;
  v29 = v11(a1);
  v26 = *(v12 - 144);
  v27 = *(v12 - 136);
  sub_1BBA623F0();
  sub_1BBA622A0();
  swift_getWitnessTable();
  sub_1BBA621F0();

  v13 = sub_1BBA62260();
  if (v13 == sub_1BBA62260())
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1BBA62410();
    MEMORY[0x1BFB145D0](0xD000000000000020, 0x80000001BBA68EA0);
    v28 = a1;
    sub_1BBA622A0();
    swift_getWitnessTable();
    sub_1BBA625C0();
    v14 = v29;
    v15 = v30;
    v16 = sub_1BBA623D0();
    sub_1BBA2515C(v16, v14, v15);

    v17 = sub_1BBA62530();

    v25(v17);
  }

  else
  {

    sub_1BBA62300();
    v19 = sub_1BBA62320();
    (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
    sub_1BBA622F0();
    v20 = v4;

    v21 = sub_1BBA622E0();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v20;
    v22[5] = a1;
    v22[6] = v25;
    v22[7] = a3;
    sub_1BBA5EDD0(0, 0, v10, &unk_1BBA684D8, v22);
  }
}

uint64_t sub_1BBA25A40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BBA25B6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BBA27BE8;

  return sub_1BBA25C24(a1, v4);
}

uint64_t sub_1BBA25C24(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BBA2C290;

  return v6(a1);
}

uint64_t sub_1BBA25D1C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BBA26BD0;

  return sub_1BBA25DC8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1BBA25DC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[8] = *MEMORY[0x1E69E7D40] & *a4;
  sub_1BBA622F0();
  v7[9] = sub_1BBA622E0();
  v9 = sub_1BBA622B0();
  v7[10] = v9;
  v7[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BBA25E9C, v9, v8);
}

uint64_t sub_1BBA25E9C()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0xD00000000000001BLL, 0x80000001BBA68ED0);
  v0[2] = v2;
  v0[12] = *(v1 + 80);
  v0[13] = sub_1BBA622A0();
  swift_getWitnessTable();
  sub_1BBA625C0();
  v3 = sub_1BBA623D0();
  sub_1BBA2515C(v3, 0, 0xE000000000000000);

  v4 = sub_1BBA2601C();
  v6 = v5;
  v0[14] = v4;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1BBA23F54;
  v8 = v0[5];

  return sub_1BBA261AC(v8, v4, v6);
}

uint64_t sub_1BBA2601C()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  if (!result)
  {
    type metadata accessor for AsyncCache();
    v2 = v0;
    swift_getExtendedExistentialTypeMetadata();
    if ((swift_dynamicCast() & 1) == 0 || (result = v3) == 0)
    {
      result = sub_1BBA62540();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BBA261AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1BBA272E4, v3, 0);
}

uint64_t sub_1BBA261F8(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BBA26BD0;

  return sub_1BBA26298(a1, v5, v6, v4);
}

uint64_t sub_1BBA26298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a4 + 176) + **(*a4 + 176));
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1BBA26A8C;

  return v8(a1);
}

uint64_t sub_1BBA263C0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*v1 + 80);
  v2[5] = v3;
  v4 = sub_1BBA622D0();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v2[8] = *(v5 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  type metadata accessor for ComputationTracker.State();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BBA26558, v1, 0);
}

uint64_t sub_1BBA26558()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 40);
  (*(**(v0 + 32) + 120))();
  v4 = (*(v2 + 48))(v1, 2, v3);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = *(v0 + 104);
      v6 = *(v0 + 80);
      v8 = *(v0 + 32);
      v7 = *(v0 + 40);
      v9 = *(v6 + 56);
      *(v0 + 128) = v9;
      *(v0 + 136) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v9(v5, 2, 2, v7);
      v10 = *(*v8 + 128);
      v11 = (*v8 + 128) & 0xFFFFFFFFFFFFLL | 0x69A7000000000000;
      *(v0 + 144) = v10;
      *(v0 + 152) = v11;
      v10(v5);
      v22 = (*(v8 + *(*v8 + 104)) + **(v8 + *(*v8 + 104)));
      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v12[1] = sub_1BBA29E98;
      v13 = *(v0 + 96);

      return v22(v13);
    }

    else
    {
      v16 = *(v0 + 32);
      type metadata accessor for ComputationTracker();
      WitnessTable = swift_getWitnessTable();
      v18 = swift_task_alloc();
      *(v0 + 120) = v18;
      *v18 = v0;
      v18[1] = sub_1BBA2A288;
      v19 = *(v0 + 32);
      v20 = *(v0 + 40);
      v21 = *(v0 + 24);

      return MEMORY[0x1EEE6DDE0](v21, v16, WitnessTable, 0x28657475706D6F63, 0xE900000000000029, sub_1BBA60E54, v19, v20);
    }
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 24), *(v0 + 112), *(v0 + 40));

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1BBA26894@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = type metadata accessor for ComputationTracker.State();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BBA26A8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1BBA26B84()
{
  result = qword_1EBC7A0B8;
  if (!qword_1EBC7A0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC7A0B8);
  }

  return result;
}

uint64_t sub_1BBA26BD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BBA26CC8(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = *v3;
  v7 = *(v42 + 80);
  v8 = *(v7 - 8);
  v38 = *(v8 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v46 = &v36 - v10;
  v47 = v9;
  v11 = sub_1BBA622A0();

  swift_getWitnessTable();
  v45 = v3;
  v12 = sub_1BBA62490();
  v40 = 0;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0x20646E756F46, 0xE600000000000000);
  v49 = sub_1BBA62260();
  v13 = sub_1BBA62590();
  MEMORY[0x1BFB145D0](v13);

  MEMORY[0x1BFB145D0](0xD000000000000014, 0x80000001BBA68DA0);
  v41 = a1;
  v49 = a1;
  swift_getWitnessTable();
  sub_1BBA625C0();
  v14 = v47;
  v15 = v48;
  v16 = sub_1BBA623D0();
  sub_1BBA27A2C(v16, v14, v15);

  v47 = v12;
  WitnessTable = swift_getWitnessTable();
  if (sub_1BBA623B0())
  {
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  if (((*(a3 + 32))(ObjectType, a3) & 1) == 0)
  {
    goto LABEL_14;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0xD000000000000029, 0x80000001BBA68DC0);
  v49 = v41;
  v37 = v11;
  sub_1BBA625C0();
  v18 = v47;
  v19 = v48;
  v20 = sub_1BBA623D0();
  sub_1BBA27A2C(v20, v18, v19);

  v21 = v42;
  sub_1BBA623F0();
  v44 = *(v21 + 96);
  sub_1BBA62150();
  v22 = type metadata accessor for ComputationTracker();
  v23 = swift_allocObject();
  v23[2] = v45;
  v23[3] = v12;
  v23[4] = a2;
  v23[5] = a3;
  v36 = a3;
  v43 = v22;
  v24 = swift_allocObject();

  v25 = a2;
  sub_1BBA28F3C(&unk_1BBA68490, v23);
  if (!sub_1BBA62260())
  {
LABEL_13:

    v11 = v37;
LABEL_14:

    v47 = v41;
    MEMORY[0x1EEE9AC00](v31);
    *(&v36 - 4) = v45;
    *(&v36 - 3) = v32;
    *(&v36 - 2) = a2;
    *(&v36 - 1) = v33;
    sub_1BBA623F0();
    sub_1BBA62150();
    v34 = type metadata accessor for ComputationTracker();
    return sub_1BBA23AB0(sub_1BBA27BEC, (&v36 - 6), v11, v34, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v35);
  }

  v26 = 0;
  while (1)
  {
    v27 = sub_1BBA62250();
    sub_1BBA62230();
    if (v27)
    {
      v28 = a2;
      (*(v8 + 16))(v46, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26, v7);
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    result = sub_1BBA62460();
    if (v38 != 8)
    {
      break;
    }

    v28 = a2;
    v47 = result;
    (*(v8 + 16))(v46, &v47, v7);
    swift_unknownObjectRelease();
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_7:
    v49 = v24;
    swift_beginAccess();
    sub_1BBA62150();

    sub_1BBA62180();
    swift_endAccess();
    ++v26;
    a2 = v28;
    if (v29 == sub_1BBA62260())
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBA2729C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BBA272E4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = sub_1BBA26CC8(v3, *(v0 + 56), *(v0 + 64));
  *(v0 + 88) = v4;
  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0xD000000000000019, 0x80000001BBA68D60);
  *(v0 + 16) = v3;
  v5 = v2[10];
  *(v0 + 96) = v5;
  *(v0 + 104) = sub_1BBA622A0();
  *(v0 + 112) = swift_getWitnessTable();
  sub_1BBA625C0();
  v6 = sub_1BBA623D0();
  sub_1BBA27A2C(v6, 0, 0xE000000000000000);

  v7 = v2[11];
  *(v0 + 120) = v7;
  *(v0 + 128) = sub_1BBA623F0();
  v8 = v2[12];
  *(v0 + 136) = v8;
  v9 = sub_1BBA62150();
  type metadata accessor for _AsyncComputeCache();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  v11[2] = v5;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v4;
  v12 = sub_1BBA623F0();
  v13 = swift_task_alloc();
  *(v0 + 152) = v13;
  *v13 = v0;
  v13[1] = sub_1BBA28980;

  return MEMORY[0x1EEE6DD58](v0 + 24, v9, v12, v1, WitnessTable, &unk_1BBA68460, v11, v9);
}

BOOL sub_1BBA27534()
{
  swift_beginAccess();
  sub_1BBA623F0();
  sub_1BBA62150();
  type metadata accessor for ComputationTracker();

  sub_1BBA62170();

  if (v1)
  {
  }

  return v1 == 0;
}

uint64_t sub_1BBA2763C()
{

  if (v0)
  {

    v1 = sub_1BBA5E1B8;
  }

  else
  {
    v1 = sub_1BBA27754;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1BBA27754()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v1 + 64;
    v25 = v0 + 3;
    v3 = -1;
    v4 = -1 << *(v1 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v1 + 64);
    v6 = (63 - v4) >> 6;

    v12 = 0;
    v26 = v1;
    if (v5)
    {
      while (1)
      {
        v13 = v12;
LABEL_10:
        v14 = v27[13];
        v15 = v27[14];
        v16 = v27[12];
        v17 = v27[8];
        v18 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v19 = *(v1 + 48) + *(v16 + 72) * (v18 | (v13 << 6));
        v20 = *(v16 + 16);
        v20(v15, v19, v17);
        v20(v14, v15, v17);
        v1 = v26;
        sub_1BBA62170();
        (*(v16 + 8))(v15, v17);
        v7 = sub_1BBA62180();
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v7, v8, v9, v10, v11);
      }

      if (v13 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v13);
      ++v12;
      if (v5)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }

    v21 = swift_task_alloc();
    v27[21] = v21;
    *v21 = v27;
    v21[1] = sub_1BBA2763C;
    v10 = v27[18];
    v11 = v27 + 4;
    v7 = v25;
    v8 = 0;
    v9 = 0;

    return MEMORY[0x1EEE6DAD8](v7, v8, v9, v10, v11);
  }

  else
  {
    v22 = v0[5];
    (*(v0[19] + 8))(v0[20], v0[18]);
    *v22 = v0[2];

    v23 = v0[1];

    return v23();
  }
}

void sub_1BBA27A2C(os_log_type_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EBC7A920 != -1)
  {
    swift_once();
  }

  v6 = sub_1BBA62130();
  __swift_project_value_buffer(v6, qword_1EBC7AB48);

  oslog = sub_1BBA62110();

  if (os_log_type_enabled(oslog, a1))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v7 = 138412546;
    v10 = [objc_opt_self() currentThread];
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1BBA231E8(a2, a3, &v12);
    _os_log_impl(&dword_1BBA1F000, oslog, a1, "[%@]: %s", v7, 0x16u);
    sub_1BBA2331C(v8, &qword_1EBC7A530);
    MEMORY[0x1BFB153E0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1BFB153E0](v9, -1, -1);
    MEMORY[0x1BFB153E0](v7, -1, -1);
  }
}

uint64_t sub_1BBA27C1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v37 = a5;
  v38 = a4;
  v35 = a3;
  v9 = *a2;
  v10 = *(*a2 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v33 - v13;
  swift_beginAccess();
  v36 = *(v9 + 88);
  sub_1BBA623F0();
  v15 = *(v9 + 96);
  sub_1BBA62150();
  type metadata accessor for ComputationTracker();

  v39 = a1;
  sub_1BBA62170();

  v16 = v40;
  if (v40)
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1BBA62410();
    MEMORY[0x1BFB145D0](0xD000000000000017, 0x80000001BBA68E20);
    sub_1BBA22F24(v10, v10);
    swift_allocObject();
    v17 = sub_1BBA62220();
    (*(v11 + 16))(v18, v39, v10);
    sub_1BBA622A0();
    v42 = v17;
    swift_getWitnessTable();
    sub_1BBA625C0();

    v19 = v40;
    v20 = v41;
    v21 = sub_1BBA623D0();
    sub_1BBA27A2C(v21, v19, v20);
  }

  else
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1BBA62410();
    MEMORY[0x1BFB145D0](0xD00000000000002BLL, 0x80000001BBA68DF0);
    v42 = v35;
    sub_1BBA622A0();
    swift_getWitnessTable();
    sub_1BBA625C0();
    v23 = v40;
    v24 = v41;
    v25 = sub_1BBA623D0();
    sub_1BBA27A2C(v25, v23, v24);

    v35 = a6;
    v34 = *(v11 + 16);
    v34(v14, v39, v10);
    v26 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v27 = swift_allocObject();
    v28 = v36;
    *(v27 + 2) = v10;
    *(v27 + 3) = v28;
    *(v27 + 4) = v15;
    *(v27 + 5) = a2;
    (*(v11 + 32))(&v27[v26], v14, v10);
    v29 = &v27[(v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];
    v30 = v37;
    v31 = v38;
    *v29 = v38;
    *(v29 + 1) = v30;
    v16 = swift_allocObject();

    v32 = v31;
    sub_1BBA28F3C(&unk_1BBA684A0, v27);
    v34(v14, v39, v10);
    a6 = v35;
    v42 = v16;
    swift_beginAccess();
    sub_1BBA62150();

    sub_1BBA62180();
    result = swift_endAccess();
  }

  *a6 = v16;
  return result;
}

uint64_t sub_1BBA2807C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1BBA28170(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1BBA27BE8;

  return sub_1BBA28238(a1, a2, v8, v6, v7, v9);
}

uint64_t sub_1BBA28238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a4;
  v6[9] = a6;
  v6[6] = a2;
  v6[7] = a3;
  v6[5] = a1;
  v6[10] = sub_1BBA623F0();
  sub_1BBA623F0();
  v6[11] = swift_task_alloc();
  v6[12] = *(a4 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A510);
  v6[15] = swift_task_alloc();
  v6[16] = sub_1BBA62150();
  v6[17] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7A5B0);
  v8 = sub_1BBA62350();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BBA28430, 0, 0);
}

uint64_t sub_1BBA28430()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  swift_getTupleTypeMetadata2();
  v4 = sub_1BBA62240();
  v5 = sub_1BBA22B80(v4, v3, v1, v2);

  v0[2] = v5;
  v6 = type metadata accessor for ComputationTracker();
  if (sub_1BBA62260())
  {
    v7 = 0;
    v19 = v0[7] + 32;
    do
    {
      v8 = sub_1BBA62250();
      sub_1BBA62230();
      if (v8)
      {
        v9 = *(v19 + 8 * v7);

        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = sub_1BBA62460();
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v11 = v6;
      v12 = v0[15];
      v13 = sub_1BBA62320();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v9;
      sub_1BBA62360();
      sub_1BBA2872C(v12, &unk_1BBA68478, v14);
      v15 = v12;
      v6 = v11;
      sub_1BBA2331C(v15, &qword_1EBC7A510);
      ++v7;
    }

    while (v10 != sub_1BBA62260());
  }

  sub_1BBA62330();
  v16 = swift_task_alloc();
  v0[21] = v16;
  *v16 = v0;
  v16[1] = sub_1BBA2763C;
  v17 = v0[18];

  return MEMORY[0x1EEE6DAD8](v0 + 3, 0, 0, v17, v0 + 4);
}

uint64_t sub_1BBA286EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBA2872C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A510);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1BBA28910(a1, v18 - v8);
  v10 = sub_1BBA62320();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BBA2331C(v9, &qword_1EBC7A510);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1BBA622B0();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BBA62310();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1BBA28910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBA28980()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {

    v4 = sub_1BBA5E034;
  }

  else
  {

    v4 = sub_1BBA28B08;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BBA28B08()
{
  v1 = v0[3];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[6];
  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0xD000000000000017, 0x80000001BBA68D80);
  v0[4] = v7;
  sub_1BBA625C0();
  v8 = sub_1BBA623D0();
  sub_1BBA27A2C(v8, 0, 0xE000000000000000);

  v0[5] = v7;
  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v4;
  v9[4] = v3;
  v9[5] = v1;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1BBA23AB0(sub_1BBA28C98, v9, v5, v2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_1BBA28CC8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_1BBA623F0();
  v5 = sub_1BBA623F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  if (v9)
  {
    sub_1BBA62170();
    v10 = *(v4 - 8);
    if ((*(v10 + 48))(v8, 1, v4) != 1)
    {
      return (*(v10 + 32))(a2, v8, v4);
    }
  }

  else
  {
    v10 = *(v4 - 8);
    (*(v10 + 56))(v8, 1, 1, v4);
  }

  (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  result = (*(v10 + 48))(v8, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t *sub_1BBA28F3C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  (*(*(*(v5 + 80) - 8) + 56))(v2 + *(*v2 + 96), 1, 2, *(v5 + 80));
  v6 = *(*v2 + 112);
  sub_1BBA622D0();
  *(v2 + v6) = sub_1BBA62240();
  v7 = (v2 + *(*v2 + 104));
  *v7 = a1;
  v7[1] = a2;
  return v2;
}

uint64_t sub_1BBA2903C(uint64_t a1)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = type metadata accessor for ComputationTracker.State();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BBA290F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BBA27BE8;

  return sub_1BBA291B0(a1, v4, v5, v7, v6);
}

uint64_t sub_1BBA291B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v5[20] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1BBA291FC, a2, 0);
}

uint64_t sub_1BBA291FC()
{
  v1 = v0[20];
  v10 = v0[19];
  v2 = v0[17];
  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0x676E696863746566, 0xEE00207379656B20);
  v0[10] = v2;
  v0[21] = *(v1 + 80);
  v0[22] = sub_1BBA622A0();
  v0[23] = swift_getWitnessTable();
  sub_1BBA625C0();
  v3 = sub_1BBA623D0();
  sub_1BBA27A2C(v3, 0, 0xE000000000000000);

  ObjectType = swift_getObjectType();
  v9 = (*(v10 + 48) + **(v10 + 48));
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_1BBA29AEC;
  v6 = v0[19];
  v7 = v0[17];

  return v9(v7, ObjectType, v6);
}

uint64_t sub_1BBA293E8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BBA29408, 0, 0);
}

uint64_t sub_1BBA29408()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A538);
  *v2 = v0;
  v2[1] = sub_1BBA299B8;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000013, 0x80000001BBA68B60, sub_1BBA62078, v1, v3);
}

void sub_1BBA29514(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A5C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  if ([a2 respondsToSelector_])
  {
    (*(v5 + 16))(v7, a1, v4);
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    (*(v5 + 32))(v9 + v8, v7, v4);
    sub_1BBA26B84();
    swift_unknownObjectRetain();
    v10 = sub_1BBA62200();
    aBlock[4] = sub_1BBA297D4;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BBA2975C;
    aBlock[3] = &block_descriptor;
    v11 = _Block_copy(aBlock);

    [a2 computeObjectsForKeys:v10 completionHandler:v11];
    _Block_release(v11);

    swift_unknownObjectRelease();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BBA2975C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1BBA26B84();
    v2 = sub_1BBA62210();
  }

  v3(v2);
}

uint64_t sub_1BBA297D4(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A5C0);
  if (!a1 || (a1 >> 62 ? (v2 = sub_1BBA62550()) : (v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10)), !v2))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A5C0);
    return sub_1BBA622C0();
  }

  result = sub_1BBA624D0();
  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_1BBA26B84();
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB14870](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v8 = sub_1BBA623E0();

      if (v8)
      {
      }

      ++v4;
      sub_1BBA624A0();
      sub_1BBA624E0();
      sub_1BBA624F0();
      sub_1BBA624B0();
    }

    while (v2 != v4);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBA299B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BBA29AE8, 0, 0);
}

uint64_t sub_1BBA29AEC(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 200) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BBA29C04, v2, 0);
}

uint64_t sub_1BBA29C04()
{
  v1 = *(v0 + 176);
  v14 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v13 = *(v0 + 136);
  v15 = *(v0 + 120);
  *(v0 + 88) = v13;
  *(v0 + 96) = v14;
  v4 = *(v2 + 88);
  sub_1BBA623F0();
  v5 = sub_1BBA622A0();
  WitnessTable = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  sub_1BBA625D0();
  *(v0 + 64) = *(v0 + 48);
  v8 = swift_task_alloc();
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = *(v2 + 96);
  *(v0 + 16) = v1;
  *(v0 + 24) = v5;
  *(v0 + 32) = WitnessTable;
  *(v0 + 40) = v7;
  sub_1BBA62450();
  swift_getWitnessTable();
  v9 = sub_1BBA62160();

  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0x2064656863746566, 0xED0000207379656BLL);
  *(v0 + 104) = v13;
  sub_1BBA625C0();
  MEMORY[0x1BFB145D0](8236, 0xE200000000000000);
  *(v0 + 112) = v14;
  swift_getWitnessTable();
  sub_1BBA625C0();

  v10 = sub_1BBA623D0();
  sub_1BBA27A2C(v10, 0, 0xE000000000000000);

  *v15 = v9;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1BBA29E98()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1BBA29FA8, v1, 0);
}

uint64_t sub_1BBA29FA8()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[5];
  v5 = v0[4];
  v19 = *(v0[10] + 16);
  v19(v3, v0[12], v4);
  v2(v3, 0, 2, v4);
  v6 = v1(v3);
  v7 = (*(*v5 + 152))(v6);
  if (sub_1BBA62260())
  {
    v8 = 0;
    v9 = v0[7];
    v18 = v0[8];
    do
    {
      v10 = sub_1BBA62250();
      sub_1BBA62230();
      if (v10)
      {
        (*(v9 + 16))(v0[9], v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8, v0[6]);
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1BBA62460();
        if (v18 != 8)
        {
          __break(1u);
          return result;
        }

        v15 = v0[9];
        v16 = v0[6];
        v0[2] = result;
        (*(v9 + 16))(v15, v0 + 2, v16);
        swift_unknownObjectRelease();
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      v12 = v0[9];
      v13 = v0[6];
      v19(v0[11], v0[12], v0[5]);
      sub_1BBA622C0();
      (*(v9 + 8))(v12, v13);
      ++v8;
    }

    while (v11 != sub_1BBA62260());
  }

  (*(v0[10] + 32))(v0[3], v0[12], v0[5]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1BBA2A288()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1BBA2A398, v1, 0);
}

uint64_t sub_1BBA2A398()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1BBA2B588()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 304);
  v43 = *(v0 + 272);
  v47 = *(v0 + 256);
  v4 = *(v0 + 224);
  v56 = *(v0 + 208);

  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0xD00000000000001BLL, 0x80000001BBA68C70);
  *(v0 + 176) = v56;
  v5 = sub_1BBA622A0();
  swift_getWitnessTable();
  sub_1BBA625C0();
  v6 = sub_1BBA623D0();
  sub_1BBA2515C(v6, 0, 0xE000000000000000);

  *(v0 + 184) = v56;
  v7 = sub_1BBA622A0();
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  sub_1BBA625D0();
  v57 = *(v0 + 144);
  v10 = qword_1EBC7A508;
  swift_beginAccess();
  v59 = *(v4 + v10);
  *(v0 + 160) = v57;

  v55 = v7;
  v58 = v5;
  *(v0 + 56) = v5;
  *(v0 + 64) = v7;
  *(v0 + 72) = WitnessTable;
  v53 = v9;
  v54 = WitnessTable;
  *(v0 + 80) = v9;
  sub_1BBA62450();
  sub_1BBA62420();
  v51 = v1;
  v52 = v1 - 8;
  v49 = (v3 + 32);
  v50 = (v2 + 32);
  v46 = (v3 + 8);
  v48 = (v47 - 8);
  v44 = (v43 + 8);
  v45 = (v2 + 8);
  v40 = (v3 + 16);
  v41 = (v2 + 16);
  while (1)
  {
    v15 = *(v0 + 352);
    v14 = *(v0 + 360);
    *(v0 + 88) = v58;
    *(v0 + 96) = v55;
    *(v0 + 104) = v54;
    *(v0 + 112) = v53;
    sub_1BBA62440();
    sub_1BBA62430();
    if ((*(*v52 + 48))(v14, 1, v15) == 1)
    {
      break;
    }

    v16 = *(v0 + 360);
    v17 = *(v0 + 320);
    v19 = *(v0 + 288);
    v18 = *(v0 + 296);
    v20 = *(v0 + 256);
    v21 = *(v51 + 48);
    (*v50)(*(v0 + 344), v16, *(v0 + 232));
    (*v49)(v17, v16 + v21, v18);
    sub_1BBA62170();
    v22 = *v48;
    v23 = (*(*v48 + 48))(v19, 1, v20);
    v24 = *(v0 + 344);
    if (v23 == 1)
    {
      v25 = *(v0 + 336);
      v26 = *(v0 + 312);
      v27 = *(v0 + 320);
      v28 = *(v0 + 296);
      v29 = *(v0 + 280);
      v42 = *(v0 + 256);
      v30 = *(v0 + 232);
      (*v44)(*(v0 + 288), *(v0 + 264));
      (*v41)(v25, v24, v30);
      (*v40)(v26, v27, v28);
      v31 = sub_1BBA623F0();
      (*(*(v31 - 8) + 32))(v29, v26, v31);
      (*(v22 + 56))(v29, 0, 1, v42);
      sub_1BBA62150();
      sub_1BBA62180();
      (*v46)(v27, v28);
      (*v45)(v24, v30);
    }

    else
    {
      v11 = *(v0 + 288);
      v12 = *(v0 + 264);
      v13 = *(v0 + 232);
      (*v46)(*(v0 + 320), *(v0 + 296));
      (*v45)(v24, v13);
      (*v44)(v11, v12);
    }
  }

  v32 = *(v0 + 224);
  v33 = *(v0 + 208);

  v34 = qword_1EBC7A508;

  swift_beginAccess();
  *(v32 + v34) = v59;

  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0xD00000000000001FLL, 0x80000001BBA68C90);
  *(v0 + 200) = v33;
  sub_1BBA625C0();
  v35 = sub_1BBA623D0();
  sub_1BBA2515C(v35, 0, 0xE000000000000000);

  v36 = qword_1EBC7A508;
  swift_beginAccess();
  v37 = *(v32 + v36);

  v38 = *(v0 + 8);

  return v38(v37);
}

uint64_t sub_1BBA2BC08(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 144) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BBA2BD64, v4, v3);
}

uint64_t sub_1BBA2BD64()
{
  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[5];

  v0[3] = v6;
  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = *(v4 + 88);
  v7[4] = *(v4 + 96);
  v7[5] = v1;
  v8 = sub_1BBA623F0();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1BBA23AB0(sub_1BBA2C0AC, v7, v2, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v5(v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BBA2BEAC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AsyncCache.LookaheadElement();
  v5 = sub_1BBA623F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1BBA62170();
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  }

  else
  {
    v11 = sub_1BBA623F0();
    (*(*(v11 - 8) + 16))(a2, v8, v11);
    return (*(v9 + 8))(v8, v4);
  }
}

uint64_t sub_1BBA2C0E4(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v11 = MEMORY[0x1E69E7CC0];
      sub_1BBA624D0();
      v6 = (a1 + 32);
      do
      {
        v9 = *v6++;
        v7 = v9;
        if (!v9)
        {
          [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
          v7 = 0;
        }

        v8 = v7;
        sub_1BBA624A0();
        sub_1BBA624E0();
        sub_1BBA624F0();
        sub_1BBA624B0();
        --v4;
      }

      while (v4);
      v5 = v11;
    }
  }

  else
  {
    v5 = 0;
  }

  a2(v5);
}

void sub_1BBA2C200(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1BBA26B84();
    v3 = sub_1BBA62200();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1BBA2C2B0(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1BBA623F0();
  v8 = sub_1BBA623F0();
  v9 = *(v8 - 8);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = v17 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v17 - v14;
  if (a1)
  {
    v17[1] = a1;
    sub_1BBA622A0();
    v17[0] = a4;
    swift_getWitnessTable();
    a4 = v17[0];
    sub_1BBA623A0();
    if ((*(v13 + 48))(v12, 1, v7) != 1)
    {
      (*(v13 + 32))(v15, v12, v7);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v13 + 56))(v12, 1, 1, v7);
  }

  (*(*(a4 - 8) + 56))(v15, 1, 1, a4);
  if ((*(v13 + 48))(v12, 1, v7) != 1)
  {
    (*(v9 + 8))(v12, v8);
  }

LABEL_7:
  a2(v15);
  return (*(v13 + 8))(v15, v7);
}

uint64_t sub_1BBA2F16C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1BBA2F1B8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1BBA2F1CC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1BBA307C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BBA30F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double *__SK_RGBtoHSV(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 >= a5)
  {
    v6 = a4;
  }

  else
  {
    v6 = a5;
  }

  if (v6 < a6)
  {
    v6 = a6;
  }

  v7 = v6;
  v8 = v7;
  *a3 = v7;
  if (v7 == 0.0)
  {
    *result = NAN;
    *a2 = 0.0;
    *a3 = 0.0;
  }

  else
  {
    if (a4 <= a5)
    {
      v9 = a4;
    }

    else
    {
      v9 = a5;
    }

    if (v9 > a6)
    {
      v9 = a6;
    }

    v10 = v9;
    v11 = v7 - v10;
    *a2 = (v11 / v7);
    v12 = v11;
    if (v8 == a4)
    {
      v13 = (a5 - a6) / v12;
    }

    else
    {
      v14 = v8 == a5;
      v15 = (a4 - a5) / v12 + 4.0;
      v13 = (a6 - a4) / v12 + 2.0;
      if (!v14)
      {
        v13 = v15;
      }
    }

    v16 = v13 * 60.0;
    if (v16 < 0.0)
    {
      v16 = v16 + 360.0;
    }

    *result = v16;
  }

  return result;
}

void sub_1BBA3E350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BBA47338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BBA5CFD8()
{
  if (qword_1EBC7A920 != -1)
  {
    swift_once();
  }

  v0 = sub_1BBA62130();

  return __swift_project_value_buffer(v0, qword_1EBC7AB48);
}

uint64_t sub_1BBA5D03C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBC7A920 != -1)
  {
    swift_once();
  }

  v2 = sub_1BBA62130();
  v3 = __swift_project_value_buffer(v2, qword_1EBC7AB48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BBA5D188()
{
  v1 = *(v0 + *(*v0 + 104));

  return v1;
}

uint64_t sub_1BBA5D1D0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1BBA28F3C(a1, a2);
  return v4;
}

uint64_t sub_1BBA5D220()
{
  sub_1BBA622D0();

  return sub_1BBA62240();
}

uint64_t sub_1BBA5D268(uint64_t a1)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BBA5D33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBA622D0();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v9[-v5], a1, v4);
  v7 = (*(*a2 + 168))(v9);
  sub_1BBA622A0();
  sub_1BBA62270();
  return v7(v9, 0);
}

uint64_t sub_1BBA5D48C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for ComputationTracker.State();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v3 + 120))(v7);
  v10 = *(v4 - 8);
  if ((*(v10 + 48))(v9, 2, v4))
  {
    (*(v6 + 8))(v9, v5);
    v11 = 1;
  }

  else
  {
    (*(v10 + 32))(a1, v9, v4);
    v11 = 0;
  }

  return (*(v10 + 56))(a1, v11, 1, v4);
}

uint64_t sub_1BBA5D644()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for ComputationTracker.State();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1BBA5D70C()
{
  sub_1BBA5D644();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BBA5D760(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = *a2;
  v7 = sub_1BBA623F0();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BBA5D86C, a2, 0);
}

uint64_t sub_1BBA5D86C()
{
  v1 = *(v0 + 80);
  v17 = *(v0 + 72);
  v2 = *(v0 + 56);
  MEMORY[0x1BFB145D0](0x676E696863746566, 0xED00002079656B20);
  v3 = *(v1 + 80);
  *(v0 + 112) = v3;
  sub_1BBA22F24(v3, v3);
  v4 = *(v3 - 8);
  *(v0 + 120) = *(v4 + 72);
  *(v0 + 168) = *(v4 + 80);
  swift_allocObject();
  v5 = sub_1BBA62220();
  v6 = *(v4 + 16);
  *(v0 + 128) = v6;
  *(v0 + 136) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v7, v2, v3);
  v8 = sub_1BBA622A0();
  *(v0 + 16) = v5;
  *(v0 + 144) = v8;
  *(v0 + 152) = swift_getWitnessTable();
  sub_1BBA625C0();

  v9 = sub_1BBA623D0();
  sub_1BBA27A2C(v9, 0, 0xE000000000000000);

  ObjectType = swift_getObjectType();
  v16 = (*(v17 + 40) + **(v17 + 40));
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_1BBA5DB04;
  v12 = *(v0 + 104);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);

  return v16(v12, v14, ObjectType, v13);
}

uint64_t sub_1BBA5DB04()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BBA5DC14, v1, 0);
}

uint64_t sub_1BBA5DC14()
{
  v1 = v0[16];
  v21 = v1;
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[11];
  v22 = v0[10];
  v5 = v0[7];
  v20 = v5;
  v23 = v0[5];
  v24 = v0[13];
  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0x2064656863746566, 0xEC0000002079656BLL);
  sub_1BBA22F24(v2, v2);
  swift_allocObject();
  v6 = sub_1BBA62220();
  v1(v7, v5, v2);
  sub_1BBA622A0();
  v0[3] = v6;
  sub_1BBA625C0();

  MEMORY[0x1BFB145D0](8236, 0xE200000000000000);
  sub_1BBA625A0();
  swift_allocObject();
  v8 = sub_1BBA62220();
  v9 = *(v3 + 16);
  v9(v10, v24, v4);
  sub_1BBA622A0();
  v0[4] = v8;
  swift_getWitnessTable();
  sub_1BBA625C0();

  v11 = sub_1BBA623D0();
  sub_1BBA27A2C(v11, 0, 0xE000000000000000);

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1BBA625A0();
  swift_allocObject();
  v13 = sub_1BBA62220();
  v15 = v14;
  v16 = *(TupleTypeMetadata2 + 48);
  v21(v14, v20, v2);
  v9(v15 + v16, v24, v4);
  sub_1BBA622A0();
  v17 = sub_1BBA22B80(v13, v2, v4, *(v22 + 96));

  (*(v3 + 8))(v24, v4);
  *v23 = v17;

  v18 = v0[1];

  return v18();
}

uint64_t sub_1BBA5DF5C()
{
  swift_beginAccess();
  sub_1BBA623F0();
  sub_1BBA62150();
  type metadata accessor for ComputationTracker();
  sub_1BBA62150();
  sub_1BBA62140();
  return swift_endAccess();
}

uint64_t sub_1BBA5E034()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[6];
  sub_1BBA62410();
  MEMORY[0x1BFB145D0](0xD000000000000017, 0x80000001BBA68D80);
  v0[4] = v6;
  sub_1BBA625C0();
  v7 = sub_1BBA623D0();
  sub_1BBA27A2C(v7, 0, 0xE000000000000000);

  v0[5] = v6;
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = 0;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1BBA23AB0(sub_1BBA28C98, v8, v4, v1, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1BBA5E1B8()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BBA5E274()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BBA5E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BBA26BD0;

  return AsyncCacheComputer.computeValue(for:)(a1, v8, a3, a4);
}

uint64_t AsyncCacheComputer.computeValue(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BBA5E390, 0, 0);
}

uint64_t sub_1BBA5E390()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v1, 1, 1, AssociatedTypeWitness);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BBA5E43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BBA5E4F0;

  return (sub_1BBA60E5C)(a2, a3);
}

uint64_t sub_1BBA5E4F0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t AsyncCacheComputer.computeValues(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BBA6206C;

  return (sub_1BBA60E5C)(a2, a3);
}

uint64_t sub_1BBA5E6AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BBA5E708(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);
  v5 = *a1;
  return v4(v2, v3);
}

void (*sub_1BBA5E77C(uint64_t *a1))(id **a1, char a2)
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
  v5 = qword_1EBC7A4F0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BBA5E81C;
}

void sub_1BBA5E81C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1BBA5E8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AsyncCache.LookaheadElement();
  swift_getTupleTypeMetadata2();
  v6 = sub_1BBA62240();
  v7 = sub_1BBA22B80(v6, a1, v5, a3);

  return v7;
}

uint64_t sub_1BBA5E964(uint64_t a1)
{
  v3 = qword_1EBC7A508;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id AsyncCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BBA5E9F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A510);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1BBA62320();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1BBA622F0();
  v5 = v0;
  v6 = sub_1BBA622E0();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_1BBA5EDD0(0, 0, v3, &unk_1BBA68130, v7);
}

uint64_t sub_1BBA5EB14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[5] = a4;
  v4[6] = *MEMORY[0x1E69E7D40] & *a4;
  sub_1BBA622F0();
  v4[7] = sub_1BBA622E0();
  v6 = sub_1BBA622B0();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BBA5EBE4, v6, v5);
}

uint64_t sub_1BBA5EBE4()
{
  v1 = *(v0 + 40);
  v2 = sub_1BBA623D0();
  sub_1BBA2515C(v2, 0xD000000000000012, 0x80000001BBA68E80);
  swift_beginAccess();
  type metadata accessor for AsyncCache.LookaheadElement();
  sub_1BBA62150();
  sub_1BBA62140();
  swift_endAccess();
  v3 = *(v1 + qword_1EBC7A500);
  *(v0 + 80) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BBA5ECE0, v3, 0);
}

uint64_t sub_1BBA5ECE0()
{
  sub_1BBA5DF5C();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BBA5ED44, v1, v2);
}

uint64_t sub_1BBA5ED44()
{

  v1 = sub_1BBA623D0();
  sub_1BBA2515C(v1, 0x2064657261656C43, 0xED00006568636163);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BBA5EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A510);
  MEMORY[0x1EEE9AC00]();
  v10 = v24 - v9;
  sub_1BBA28910(a3, v24 - v9);
  v11 = sub_1BBA62320();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1BBA2331C(v10, &qword_1EBC7A510);
  }

  else
  {
    sub_1BBA62310();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BBA622B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BBA621C0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1BBA2331C(a3, &qword_1EBC7A510);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BBA2331C(a3, &qword_1EBC7A510);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1BBA5F0C0(void *a1)
{
  v1 = a1;
  sub_1BBA5E9F0();
}

id AsyncCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BBA5F18C(uint64_t a1)
{
  sub_1BBA60FE4(a1 + qword_1EBC7A4F0);
}

id sub_1BBA5F1FC()
{
  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A518));

  return [v0 init];
}

uint64_t sub_1BBA5F240(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___TLKAsyncCache_wrappedCache);
  v4 = a1;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD8))(&v5, &v4);
  return v5;
}

uint64_t sub_1BBA5F2B4()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR___TLKAsyncCache_wrappedCache)) + 0xE0))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1BBA624D0();
    v3 = 32;
    do
    {
      v4 = *(v1 + v3);
      if (!v4)
      {
        [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v4 = 0;
      }

      v5 = v4;
      sub_1BBA624A0();
      sub_1BBA624E0();
      sub_1BBA624F0();
      sub_1BBA624B0();
      v3 += 8;
      --v2;
    }

    while (v2);

    return v7;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1BBA5F484(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(v3 + OBJC_IVAR___TLKAsyncCache_wrappedCache);
    v9 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xE8);

    v8(&v9, sub_1BBA2C588, v7);
  }

  return result;
}

uint64_t sub_1BBA5F550(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = result;
    v7 = *(v3 + OBJC_IVAR___TLKAsyncCache_wrappedCache);
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xF0);
    sub_1BBA6100C(a2);

    v9(v6, sub_1BBA2C0DC, v8);

    return sub_1BBA6101C(a2);
  }

  return result;
}

id TLKAsyncCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TLKAsyncCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TLKAsyncCache.computeObject(forKey:)()
{
  sub_1BBA622F0();
  *(v0 + 16) = sub_1BBA622E0();
  v2 = sub_1BBA622B0();

  return MEMORY[0x1EEE6DFA0](sub_1BBA5F814, v2, v1);
}

uint64_t sub_1BBA5F814()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1BBA5FA00(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = sub_1BBA622F0();
  v2[4] = sub_1BBA622E0();
  v4 = sub_1BBA622B0();

  return MEMORY[0x1EEE6DFA0](sub_1BBA5FA9C, v4, v3);
}

uint64_t sub_1BBA5FA9C()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_1BBA622E0();
  v3 = sub_1BBA622B0();

  return MEMORY[0x1EEE6DFA0](sub_1BBA5FB3C, v3, v2);
}

uint64_t sub_1BBA5FB3C()
{
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v2[2](v2, 0);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t TLKAsyncCache.computeValue(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BBA5FC0C, 0, 0);
}

uint64_t sub_1BBA5FC0C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A530);
  *v2 = v0;
  v2[1] = sub_1BBA5FD18;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000012, 0x80000001BBA68B40, sub_1BBA6102C, v1, v3);
}

uint64_t sub_1BBA5FD18()
{

  return MEMORY[0x1EEE6DFA0](sub_1BBA29AD0, 0, 0);
}

void sub_1BBA5FE30(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A5C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1BBA61F44;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBA5FFE8;
  aBlock[3] = &block_descriptor_101;
  v12 = _Block_copy(aBlock);

  [a2 computeObjectForKey:a3 completionHandler:v12];
  _Block_release(v12);
}

void sub_1BBA5FFE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t TLKAsyncCache.computeValues(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BBA60074, 0, 0);
}

uint64_t sub_1BBA60074()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A538);
  *v2 = v0;
  v2[1] = sub_1BBA299B8;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000013, 0x80000001BBA68B60, sub_1BBA29744, v1, v3);
}

uint64_t sub_1BBA60180(uint64_t a1, void *a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v3[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1BBA601A8, 0, 0);
}

uint64_t sub_1BBA601A8()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A530);
  *v2 = v0;
  v2[1] = sub_1BBA602B0;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000012, 0x80000001BBA68B40, sub_1BBA6207C, v1, v3);
}

uint64_t sub_1BBA602B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BBA603C8, 0, 0);
}

uint64_t sub_1BBA603E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BBA27BE8;

  return v6();
}

uint64_t sub_1BBA604CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BBA27BE8;

  return v7();
}

uint64_t sub_1BBA605B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A510);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1BBA28910(a3, v23 - v10);
  v12 = sub_1BBA62320();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BBA2331C(v11, &qword_1EBC7A510);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1BBA62310();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1BBA622B0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1BBA621C0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1BBA2331C(a3, &qword_1EBC7A510);

    return v21;
  }

LABEL_8:
  sub_1BBA2331C(a3, &qword_1EBC7A510);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1BBA608A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BBA608EC(a1, a2);
  sub_1BBA60A1C(&unk_1F3A9BFB8);
  return v3;
}

uint64_t sub_1BBA608EC(uint64_t a1, unint64_t a2)
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

  v6 = sub_1BBA60B08(v5, 0);
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

  result = sub_1BBA62480();
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
        v10 = sub_1BBA621E0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BBA60B08(v10, 0);
        result = sub_1BBA62400();
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

uint64_t sub_1BBA60A1C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BBA60B7C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BBA60B08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A5B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BBA60B7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A5B8);
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

unint64_t sub_1BBA60C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBA62190();

  return sub_1BBA60CCC(a1, v6, a2, a3);
}

unint64_t sub_1BBA60CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00]();
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1BBA621A0();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1BBA60E5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BBA60E7C, 0, 0);
}

uint64_t sub_1BBA60E7C()
{
  swift_getAssociatedTypeWitness();
  sub_1BBA623F0();
  v1 = sub_1BBA62240();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BBA60F50()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BBA27BE8;

  return sub_1BBA5EB14(v3, v4, v5, v2);
}

uint64_t sub_1BBA6100C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BBA6101C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BBA61090(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_1BBA61264(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t dispatch thunk of AsyncCacheComputer.computeValue(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BBA27BE8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AsyncCacheComputer.computeValues(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BBA5E4F0;

  return v9(a1, a2, a3);
}

uint64_t sub_1BBA61A1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BBA27BE8;

  return sub_1BBA5FA00(v2, v3);
}

uint64_t sub_1BBA61AD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BBA27BE8;

  return sub_1BBA603E4(v2, v3, v4);
}

uint64_t objectdestroy_35Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BBA61BD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BBA27BE8;

  return sub_1BBA604CC(a1, v4, v5, v6);
}

uint64_t sub_1BBA61C9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BBA27BE8;

  return sub_1BBA25C24(a1, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BBA61DA0(uint64_t a1)
{
  v4 = (*(*(*(v1 + 16) - 8) + 80) + 48) & ~*(*(*(v1 + 16) - 8) + 80);
  v5 = *(v1 + 40);
  v6 = (v1 + ((*(*(*(v1 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BBA27BE8;

  return sub_1BBA5D760(a1, v5, v1 + v4, v7, v8);
}

uint64_t objectdestroy_94Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1BBA61F44(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A5C8);
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v3 = v2;
  if (a1)
  {
    sub_1BBA26B84();
    v4 = sub_1BBA623E0();

    v5 = a1;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {

    v5 = 0;
  }

  v6 = v5;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A5C8);
  return sub_1BBA622C0();
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}