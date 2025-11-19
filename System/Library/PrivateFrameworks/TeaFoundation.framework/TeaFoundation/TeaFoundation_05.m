unint64_t sub_1BF047E24()
{
  result = qword_1ED8EA048;
  if (!qword_1ED8EA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA048);
  }

  return result;
}

uint64_t sub_1BF047E90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_1BF035DD4;

  return v12(a1, a6);
}

void sub_1BF047F9C()
{
  if (!qword_1ED8E9C98)
  {
    sub_1BF04801C();
    sub_1BF0264F8();
    v0 = sub_1BF179E9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9C98);
    }
  }
}

uint64_t Version.qualifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1BF026144(v2, v3);
}

void sub_1BF04801C()
{
  if (!qword_1ED8E9C28)
  {
    v0 = sub_1BF17A9AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9C28);
    }
  }
}

uint64_t sub_1BF048074(uint64_t a1, int a2)
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

uint64_t sub_1BF0480B4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 16);

    v10 = sub_1BF0CE1C8;
  }

  else
  {
    v10 = sub_1BF04825C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

unint64_t sub_1BF0481B8()
{
  result = qword_1ED8E9C88;
  if (!qword_1ED8E9C88)
  {
    sub_1BF047F9C();
    sub_1BF0483C4();
    sub_1BF048418(&qword_1ED8E9C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9C88);
  }

  return result;
}

uint64_t sub_1BF04825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_26_1();
  v13 = v12[19];
  v14 = v12[10];
  v15 = OUTLINED_FUNCTION_27_6();
  OUTLINED_FUNCTION_51_2(v15, v16, v14);
  if (v17)
  {
    v18 = v12[29];
    v19 = v12[26];
    v20 = v12[24];
    v22 = v12[17];
    v21 = v12[18];
    v23 = v12[13];
    v24 = v12[4];
    (*(v12[22] + 8))(v12[23], v12[21]);
    *v24 = v12[2];

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_23_1();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  else
  {
    v34 = v12[13];
    v35 = OUTLINED_FUNCTION_46_3(v12[12]);
    v36(v35);
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5DC();
    v37 = *(MEMORY[0x1E69E8710] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    v12[30] = v38;
    *v38 = v39;
    OUTLINED_FUNCTION_9_19();
    OUTLINED_FUNCTION_23_1();

    return MEMORY[0x1EEE6DAD8](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }
}

unint64_t sub_1BF0483C4()
{
  result = qword_1ED8EAB98;
  if (!qword_1ED8EAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EAB98);
  }

  return result;
}

uint64_t sub_1BF048418(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BF04801C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Promise.resolveAsync()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_8(sub_1BF0430C4);
}

uint64_t sub_1BF048508(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF048544(uint64_t a1, int a2)
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

uint64_t ReferenceType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_11();
  sub_1BF17BBBC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_2_11();
    v6 = sub_1BF17B89C();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1(AssociatedTypeWitness);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 72) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 8);

  (*(v5 + 8))(&v0[v7], AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v9, v6 | 7);
}

void *ReferenceEncodingPool.types.getter()
{
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BF048EC8(*(v1 + 16), 0);
  v4 = sub_1BF049018(&v6, v3 + 4, v2, v1);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF003FE8();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t ReferenceService.createDecodingPool(from:)()
{
  v2 = v1;
  v3 = ReferenceEncodingPool.types.getter();
  v4 = 0;
  v5 = v3[2];
  v6 = MEMORY[0x1E69E7CC0];
  v7 = v3 + 5;
  while (v5 != v4)
  {
    if (v4 >= v3[2])
    {
      __break(1u);
      goto LABEL_39;
    }

    v8 = *(v7 - 1);
    v0 = *v7;
    swift_beginAccess();
    v9 = *(v2 + 16);
    if (*(v9 + 16))
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v10 = sub_1BEFF4AB0(v8, v0);
      if (v11)
      {
        sub_1BEFE6A78(*(v9 + 56) + 40 * v10, &v40);
      }

      else
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
      }
    }

    else
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    swift_endAccess();

    if (*(&v41 + 1))
    {
      sub_1BEFE87B0(&v40, &v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v6 + 16);
        sub_1BF0491A8();
        v6 = v14;
      }

      v12 = *(v6 + 16);
      v0 = v12 + 1;
      if (v12 >= *(v6 + 24) >> 1)
      {
        sub_1BF0491A8();
        v6 = v15;
      }

      *(v6 + 16) = v0;
      sub_1BEFE87B0(&v43, v6 + 40 * v12 + 32);
    }

    else
    {
      sub_1BF0ABBDC(&v40, &unk_1EBDCAED0, sub_1BF0AB7F0, MEMORY[0x1E69E6720], sub_1BF0ABA08);
    }

    v7 += 2;
    ++v4;
  }

  v16 = *(v6 + 16);
  v17 = ReferenceEncodingPool.types.getter()[2];

  if (v16 == v17)
  {
    if (v16)
    {
      v46 = MEMORY[0x1E69E7CC0];
      sub_1BF17B35C();
      v18 = v6 + 32;
      while (1)
      {
        sub_1BEFE6A78(v18, &v43);
        v19 = v44;
        v20 = v45;
        __swift_project_boxed_opaque_existential_1(&v43, v44);
        OUTLINED_FUNCTION_9_10();
        v21(v19, v20);
        v39 = v40;
        v22 = ReferenceEncodingPool.subscript.getter(&v39);

        if (!v22)
        {
          goto LABEL_24;
        }

        if (!*(v22 + 16))
        {
          break;
        }

        v23 = v44;
        v24 = v45;
        __swift_project_boxed_opaque_existential_1(&v43, v44);
        (*(v24 + 16))(v22, v23, v24);

LABEL_25:
        __swift_destroy_boxed_opaque_existential_1(&v43);
        sub_1BF17B32C();
        v25 = *(v46 + 16);
        sub_1BF17B36C();
        sub_1BF17B37C();
        sub_1BF17B33C();
        v18 += 40;
        if (!--v16)
        {

          v0 = v46;
          goto LABEL_34;
        }
      }

LABEL_24:
      sub_1BF0AB8A0(0, &qword_1ED8E9CE0, &qword_1ED8E9C58, &type metadata for AnyReference, type metadata accessor for Promise);
      swift_allocObject();
      sub_1BF0AAF30(MEMORY[0x1E69E7CC0], &qword_1EBDCA9F8, &qword_1ED8E9C58, &type metadata for AnyReference);
      goto LABEL_25;
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_34:
    if (qword_1ED8F0210 != -1)
    {
LABEL_39:
      swift_once();
    }

    sub_1BF049E28(off_1ED8F0218, v0);

    sub_1BF04EE80();
    v35 = v34;
  }

  else
  {
    v26 = ReferenceEncodingPool.types.getter();
    sub_1BF09E9CC(v26);
    if (v16)
    {
      *&v39 = MEMORY[0x1E69E7CC0];
      sub_1BF0706C0();
      v27 = v39;
      v28 = v6 + 32;
      do
      {
        sub_1BEFE6A78(v28, &v43);
        v29 = v44;
        v30 = v45;
        __swift_project_boxed_opaque_existential_1(&v43, v44);
        OUTLINED_FUNCTION_9_10();
        v31(v29, v30);
        __swift_destroy_boxed_opaque_existential_1(&v43);
        v32 = v40;
        *&v39 = v27;
        v33 = *(v27 + 16);
        if (v33 >= *(v27 + 24) >> 1)
        {
          sub_1BF0706C0();
          v27 = v39;
        }

        *(v27 + 16) = v33 + 1;
        *(v27 + 16 * v33 + 32) = v32;
        v28 += 40;
        --v16;
      }

      while (v16);
    }

    sub_1BF0A71D4();
    v35 = v36;

    sub_1BF0AB84C();
    swift_allocError();
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    *v37 = v35;
    *(v37 + 24) = 0;
    swift_willThrow();
  }

  return v35;
}

void *Promise.__allocating_init<A>(task:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_8();
  sub_1BF0491C4(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1BF049174();
  sub_1BF17A77C();
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_46();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v10;

  sub_1BF089AC0();

  return v10;
}

uint64_t sub_1BF048E88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void *sub_1BF048EC8(uint64_t a1, uint64_t a2)
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

  sub_1BF048F48(0, &qword_1ED8E9B40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void sub_1BF048F48(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BF17B70C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *sub_1BF048F94()
{
  v1 = *(*v0 + 80);
  type metadata accessor for Seal();
  v4 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v2 = UnfairLock.init(options:)(&v4);
  v0[2] = sub_1BF004E88(v2);
  return v0;
}

uint64_t sub_1BF049018(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BF0491C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BF049228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ReferenceEncodingPool.subscript.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_1BEFF4AB0(v2, v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

uint64_t sub_1BF049310(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4(v8);
  *v9 = v10;
  v9[1] = sub_1BF035DD0;

  return sub_1BF0493D0(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_1BF0493D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  v6[3] = a6;
  v8 = *a6;
  v9 = sub_1BF17A6EC();
  v6[4] = v9;
  v10 = *(v9 - 8);
  v6[5] = v10;
  v11 = *(v10 + 64) + 15;
  v6[6] = swift_task_alloc();
  v12 = *(v8 + 80);
  v6[7] = v12;
  v13 = *(v12 - 8);
  v6[8] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v6[9] = v15;
  v19 = (a4 + *a4);
  v16 = a4[1];
  v17 = swift_task_alloc();
  v6[10] = v17;
  *v17 = v6;
  v17[1] = sub_1BF054A58;

  return v19(v15);
}

BOOL sub_1BF0495E0(uint64_t *a1)
{
  v1 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

void *StateMachine.init(state:log:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_37();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_7_37();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v15 = *(v14 + 88);
  v16 = *(v14 + 96);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21[0] = v6;
  v21[1] = v15;
  v21[2] = AssociatedConformanceWitness;
  v21[3] = v16;
  type metadata accessor for StateMachineTransition();
  sub_1BF17A65C();
  v18 = *(AssociatedConformanceWitness + 8);
  v2[3] = sub_1BF179CEC();
  v19 = *(v8 + 16);
  OUTLINED_FUNCTION_1_26();
  v19();
  OUTLINED_FUNCTION_7_2();
  v2[2] = sub_1BEFFCE64(v13, v6);
  swift_endAccess();
  OUTLINED_FUNCTION_1_26();
  v19();
  OUTLINED_FUNCTION_7_2();
  v2[5] = sub_1BEFFCE64(v13, v6);
  swift_endAccess();
  (*(v8 + 8))(a1, v6);
  v2[4] = a2;
  return v2;
}

void __swiftcall Version.init(_:)(TeaFoundation::Version *__return_ptr retstr, Swift::OpaquePointer a2)
{
  retstr->base.numbers = a2;
  retstr->qualifier.value.name._countAndFlagsBits = 0;
  retstr->qualifier.value.name._object = 0;
  retstr->qualifier.value.version.value.numbers._rawValue = 0;
}

uint64_t StartupTaskManager.promise(for:phase:)(uint64_t *a1, char *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  LOBYTE(v16[0]) = *a2;
  sub_1BEFFEBA4(v16);
  v7 = OUTLINED_FUNCTION_73_1();
  sub_1BF003FF0(v7, v8, v2);
  OUTLINED_FUNCTION_95();

  if (v3)
  {
    OUTLINED_FUNCTION_3_5();
    v9 = *(v3 + 16);
    if (v9)
    {
LABEL_5:

      return v9;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_0_14();
  v10 = OUTLINED_FUNCTION_131();
  sub_1BEFEC638(v10, v11, v12, v13);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v14 = sub_1BEFFEC08();
  v16[0] = v4;
  v16[1] = v5;
  v17 = v6;
  sub_1BF00377C(v14, v16, &v17);
  result = OUTLINED_FUNCTION_3_5();
  v9 = *(v14 + 16);
  if (v9)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t Reference.init(value:type:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*a3 + *MEMORY[0x1E69E77B0]);
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  (*(v11 + 16))(a4, a1, v8);
  v12 = type metadata accessor for Reference();
  v13 = (a4 + *(v12 + 32));
  *v13 = v6;
  v13[1] = v7;
  swift_getAtKeyPath();

  result = (*(v10 + 8))(a1, v8);
  v15 = a4 + *(v12 + 28);
  *v15 = v16;
  *(v15 + 8) = v17;
  *(v15 + 16) = 0;
  return result;
}

__n128 AnyReference.init<A>(reference:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = type metadata accessor for Reference();
  v7 = (a1 + *(v6 + 32));
  v9 = *v7;
  v8 = v7[1];
  a3->n128_u64[0] = v9;
  a3->n128_u64[1] = v8;
  a3[4].n128_u64[0] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&a3[2].n128_i64[1]);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_0, a1, a2);
  v11 = (a1 + *(v6 + 28));
  v12 = v11[1].n128_u8[0];
  result = *v11;
  a3[1] = *v11;
  a3[2].n128_u8[0] = v12;
  return result;
}

uint64_t Reference.init(value:type:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for Reference();
  v12 = (a6 + *(result + 32));
  *v12 = v9;
  v12[1] = v10;
  v13 = a6 + *(result + 28);
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 0;
  return result;
}

uint64_t sub_1BF049BEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF049C3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t *StateMachineTransition.init(state:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v1 + 3) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 9) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 15) = 0u;
  v5 = *(v3 + 80);
  sub_1BF00CCEC(v5, v5);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = *(v5 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  swift_allocObject();
  v12 = sub_1BF17A50C();
  (*(v9 + 16))(v13, a1, v5);
  sub_1BF00CD7C();
  if (sub_1BF17A5AC())
  {
    v14 = sub_1BF02C7D0(v12, v5, *(*(v4 + 96) + 8));
    (*(v9 + 8))(a1, v5);
  }

  else
  {
    (*(v9 + 8))(a1, v5);

    v14 = MEMORY[0x1E69E7CD0];
  }

  v1[2] = v14;
  return v1;
}

void sub_1BF04A08C(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v4 = v3;
    v5 = v2;
    sub_1BEFFF95C(255, &unk_1ED8E9C30);
    v6 = OUTLINED_FUNCTION_75();
    v7 = v4(v6);
    if (!v8)
    {
      atomic_store(v7, v5);
    }
  }
}

uint64_t sub_1BF04A110(uint64_t a1)
{
  v5 = *v1;
  v4 = *(a1 + 16);
  sub_1BF04A44C();
  sub_1BF04AB00();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v2 = sub_1BF17A38C();

  return v2;
}

uint64_t sub_1BF04A1B0()
{
  v1 = v0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v2 = (v0 + 16);
  v6[0] = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  UnfairLock.init(options:)(v6);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_1BF04A08C(0, &unk_1ED8E9CD8);
  swift_allocObject();
  swift_unownedRetain();
  v3 = sub_1BF04A33C();
  swift_unownedRelease();
  swift_unownedRelease();
  swift_beginAccess();
  v4 = *v2;
  *v2 = v3;

  return v1;
}

void sub_1BF04A2AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BEFFFCCC(255, &qword_1ED8E9C30, &qword_1ED8E9C58, &type metadata for AnyReference, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF04A33C()
{
  OUTLINED_FUNCTION_17_3();
  sub_1BF04A2AC(0, &qword_1ED8E9DB8, type metadata accessor for Seal);
  OUTLINED_FUNCTION_50_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_13_6(v1, MEMORY[0x1E69E7CC0]);
  sub_1BF04A2AC(0, &qword_1ED8EA288, type metadata accessor for PromiseWeakResolver);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v0;
}

uint64_t StateMachineTransition.didEnter(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  v4 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  OUTLINED_FUNCTION_0_33(v5);
}

void sub_1BF04A44C()
{
  if (!qword_1ED8ED788)
  {
    v0 = sub_1BF179DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ED788);
    }
  }
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return type metadata accessor for UnfairLock();
}

uint64_t StateMachine.add(transition:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_1_37();
  v70 = v4;
  v68 = *v5;
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_2_3();
  v59 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_16();
  v67 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v72 = v57 - v14;
  v15 = sub_1BF17AE6C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v57 - v17;
  v19 = sub_1BF179C5C();
  OUTLINED_FUNCTION_2_3();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = (v26 - v25);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v27 = sub_1BF17AD5C();
  (*(v21 + 104))(v27, *MEMORY[0x1E69E8020], v19);
  v28 = sub_1BF179C8C();
  result = (*(v21 + 8))(v27, v19);
  if (v28)
  {
    v66 = a1;
    v30 = *(a1 + 16);
    if ((v30 & 0xC000000000000001) != 0)
    {
      if (v30 < 0)
      {
        v31 = *(a1 + 16);
      }

      v32 = *(a1 + 16);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF17B0FC();
      v34 = *(v70 + 88);
      v33 = *(v70 + 96);
      v35 = *(swift_getAssociatedConformanceWitness() + 8);
      result = sub_1BF17A97C();
      v30 = v78;
      v58 = v79;
      v36 = v80;
      v69 = v81;
      v37 = v82;
    }

    else
    {
      v38 = -1 << *(v30 + 32);
      v39 = *(v30 + 56);
      v58 = v30 + 56;
      v40 = ~v38;
      v41 = -v38;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v37 = v42 & v39;
      result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v36 = v40;
      v69 = 0;
    }

    v57[1] = v36;
    v43 = (v36 + 64) >> 6;
    v71 = (v59 + 16);
    v61 = (v59 + 32);
    v60 = (v59 + 8);
    v63 = v30;
    v62 = v43;
    v64 = v18;
    v65 = v2;
    v44 = v67;
    if (v30 < 0)
    {
      goto LABEL_13;
    }

    while (v37)
    {
      v45 = v69;
LABEL_20:
      v47 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      (*(v59 + 16))(v18, *(v30 + 48) + *(v59 + 72) * (v47 | (v45 << 6)), v7);
      while (1)
      {
        __swift_storeEnumTagSinglePayload(v18, 0, 1, v7);
        (*v61)(v72, v18, v7);
        swift_beginAccess();
        v48 = *(v2 + 24);
        v49 = *(v68 + 96);
        v50 = *(v70 + 88);
        v51 = *(v70 + 96);
        v73 = v7;
        v74 = v50;
        v75 = v49;
        v76 = v51;
        type metadata accessor for StateMachineTransition();
        sub_1BF17A65C();
        v52 = *(v49 + 8);
        sub_1BF179EAC();
        v53 = v73;
        swift_endAccess();
        if (!v53)
        {
          sub_1BF17A56C();
        }

        v54 = v72;
        (*v71)(v44, v72, v7);
        sub_1BF041640();
        swift_allocObject();
        sub_1BF17A50C();
        *v55 = v66;
        sub_1BF00CD7C();

        v56 = sub_1BF17A54C();

        v77 = v56;
        v2 = v65;
        OUTLINED_FUNCTION_7_2();
        sub_1BF179E9C();
        sub_1BF179EBC();
        swift_endAccess();
        result = (*v60)(v54, v7);
        v18 = v64;
        v30 = v63;
        v43 = v62;
        if ((v63 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_13:
        if (!sub_1BF17B10C())
        {
          goto LABEL_25;
        }

        sub_1BF17B82C();
        swift_unknownObjectRelease();
      }
    }

    v46 = v69;
    while (1)
    {
      v45 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v45 >= v43)
      {
LABEL_25:
        __swift_storeEnumTagSinglePayload(v18, 1, 1, v7);
        return sub_1BF003FE8();
      }

      v37 = *(v58 + 8 * v45);
      ++v46;
      if (v37)
      {
        v69 = v45;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF04AB00()
{
  result = qword_1ED8ED790;
  if (!qword_1ED8ED790)
  {
    sub_1BF04A44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ED790);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_123_0()
{
  v3 = *(v0 + 8 * v1 + 32);
}

void OUTLINED_FUNCTION_69_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_69_1(void *a1)
{
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = v4;
  a1[5] = v6;
  a1[6] = v2;
  a1[7] = v1;
}

uint64_t *combine<A, B, C, D, E, F>(_:_:_:_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = *a1;
  v13 = *a2;
  v14 = *a3;
  v20 = *a4;
  v21 = *a5;
  v22 = *a6;
  v15 = swift_allocObject();
  v16 = *(v12 + 80);
  v15[2] = v16;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a6;

  v23 = *(v13 + 80);
  v24 = *(v14 + 80);
  v25 = *(v20 + 80);
  v26 = *(v21 + 80);
  v27 = *(v22 + 80);
  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = sub_1BF014EDC(v16, TupleTypeMetadata);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF04AE14()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t *ThreadsafeSet.init()()
{
  v1 = *v0;
  v7 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v0[2] = UnfairLock.init(options:)(&v7);
  OUTLINED_FUNCTION_0_35();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_0_35();
  v5 = *(v4 + 88);
  v0[3] = sub_1BF179D1C();
  return v0;
}

uint64_t sub_1BF04AEF8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 16) + 16);
  sub_1BEFEC638(0, &qword_1ED8EDC50, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v8 = sub_1BEFFFF04();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  swift_retain_n();

  v10 = sub_1BF04B410(a1, sub_1BF0A90F0, v8, sub_1BF02E2A4, v8, sub_1BF001C0C, v9);

  (v10)(v11);
  result = swift_beginAccess();
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = *(v8 + 16);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF04B0A8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v42 = a2;
  v49 = a6;
  v10 = *a3;
  v12 = *a4;
  v38 = *a2;
  v39 = v12;
  v13 = *a6;
  v40 = *a5;
  v41 = v13;
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v16);
  v36 = (*(v14 + 80) + 96) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v19 = v38;
  *(v18 + 2) = a7;
  v38 = *(v19 + 80);
  v20 = v10;
  *(v18 + 3) = v38;
  v21 = a3;
  v37 = *(v20 + 80);
  v22 = v39;
  *(v18 + 4) = v37;
  v23 = a4;
  v39 = *(v22 + 80);
  v24 = v40;
  *(v18 + 5) = v39;
  v25 = a5;
  v26 = *(v24 + 80);
  v27 = v41;
  *(v18 + 6) = v26;
  v28 = v49;
  v29 = *(v27 + 80);
  *(v18 + 7) = v29;
  *(v18 + 8) = v21;
  *(v18 + 9) = v23;
  *(v18 + 10) = v25;
  *(v18 + 11) = v28;
  (*(v14 + 32))(&v18[v36], &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a7);

  v30 = v38;
  v43 = a7;
  v44 = v38;
  v45 = v37;
  v46 = v39;
  v47 = v26;
  v48 = v29;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v32 = sub_1BF014EDC(v30, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v34 = v33;

  return v34;
}

uint64_t sub_1BF04B338()
{
  OUTLINED_FUNCTION_2_56();
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = OUTLINED_FUNCTION_92();
  v10(v9);
  v11 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

void (*sub_1BF04B410(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v25 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF003C20();
  v18 = v17;
  v20 = v19;

  os_unfair_lock_unlock(*(v25 + 16));
  if (!v20)
  {
    v21 = sub_1BF04B6BC(v18, 0, v16, a6, a7);
LABEL_7:
    v23 = v21;
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    if (v20 != 2)
    {
      return nullsub_1;
    }

    v21 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v18;

  sub_1BF0019A0(v18, 1);
  v23 = sub_1BF006210(v16, sub_1BF02E21C, v22);

LABEL_8:
  sub_1BF001964(v18, v20);
  return v23;
}

void (*sub_1BF04B6BC(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

uint64_t SceneStateManager.insert(monitor:before:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v9 = sub_1BEFE90AC(v8);
  if (!v9)
  {
    return SceneStateManager.add(monitor:)(a1, a3);
  }

  v10 = v9;
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; ; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](i, v8);
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v13 = *(v8 + 8 * i + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {

        v16 = _s13TeaFoundation17DisposableMonitorCMa_0();
        swift_allocObject();
        v17 = swift_unknownObjectRetain();
        v18 = sub_1BF009D14(v17, a1);
        swift_beginAccess();
        sub_1BF04C040(i, *(v4 + 16));

        sub_1BF04BA78(i, i, v18);
        result = swift_endAccess();
        a3[3] = v16;
        a3[4] = &off_1F3DC2820;
        *a3 = v18;
        return result;
      }
    }

    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 == v10)
    {

      return SceneStateManager.add(monitor:)(a1, a3);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BF04BAB8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a3;
  v58 = a5;
  v51 = a4;
  v44 = a1;
  v45 = a2;
  v10 = *a3;
  v46 = *a2;
  v47 = v10;
  v11 = *a5;
  v48 = *a4;
  v49 = v11;
  v12 = *(a8 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v43 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v19, v20);
  v21 = *(v12 + 16);
  v42 = a8;
  v21(&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v44, a8);
  v22 = (*(v16 + 80) + 88) & ~*(v16 + 80);
  v23 = (v17 + *(v12 + 80) + v22) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v46;
  v26 = a7;
  *(v24 + 2) = a7;
  *(v24 + 3) = a8;
  v27 = *(v25 + 80);
  *(v24 + 4) = v27;
  v29 = v50;
  v28 = v51;
  v47 = *(v47 + 80);
  *(v24 + 5) = v47;
  v30 = *(v48 + 80);
  *(v24 + 6) = v30;
  v31 = v58;
  v32 = *(v49 + 80);
  *(v24 + 7) = v32;
  *(v24 + 8) = v29;
  *(v24 + 9) = v28;
  *(v24 + 10) = v31;
  v33 = v18;
  v34 = v26;
  (*(v16 + 32))(&v24[v22], v33);
  v35 = v42;
  (*(v12 + 32))(&v24[v23], v43, v42);

  v52 = v34;
  v53 = v35;
  v54 = v27;
  v55 = v47;
  v56 = v30;
  v57 = v32;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v37 = sub_1BF014EDC(v27, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v39 = v38;

  return v39;
}

uint64_t sub_1BF04BDC8()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_0_62();
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  OUTLINED_FUNCTION_12_3();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16_18();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_21_12();
  v10 = *(v9 + 64);
  v11 = v0[8];

  v12 = v0[9];

  v13 = v0[10];

  v14 = OUTLINED_FUNCTION_86_2();
  v15(v14);
  v16 = OUTLINED_FUNCTION_128_1();
  v17(v16);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v18, v19, v20);
}

uint64_t sub_1BF04BEC0()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_12_3();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_12_3();
  return sub_1BF04C0B0(v10, *(v0 + 64), *(v0 + 72), *(v0 + 80), v0 + (v9 & ~v8), v0 + (((v9 & ~v8) + *(v6 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80)), v11, v7, v12);
}

uint64_t sub_1BF04BF74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t), void (*a5)(void), void (*a6)(uint64_t, uint64_t, unint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = *v6;
  result = sub_1BEFE90B4(*v6);
  if (result < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = a2 - v12;
  if (__OFSUB__(a2, v12))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = a4(v13);
  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (!v17)
  {
    sub_1BEFFD468(result);
    return sub_1BF04CDA4(v12, a2, 1, a3, a5, a6);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1BF04C0B0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a6;
  v48 = a1;
  v54 = a3;
  v55 = a4;
  v62 = a2;
  v10 = *a3;
  v49 = *a2;
  v50 = v10;
  v11 = *a4;
  v53 = *(a9 - 8);
  v12 = *(v53 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v45 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))();
  v21 = *(v15 + 16);
  v22 = a8;
  v42 = a8;
  v21(&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v47, a8);
  v23 = v53;
  v24 = *(v53 + 16);
  v43 = a9;
  v24(&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v48, a9);
  v25 = (*(v19 + 80) + 80) & ~*(v19 + 80);
  v26 = (v20 + *(v15 + 80) + v25) & ~*(v15 + 80);
  v27 = (v16 + *(v23 + 80) + v26) & ~*(v23 + 80);
  v28 = swift_allocObject();
  v29 = v49;
  *(v28 + 2) = v52;
  *(v28 + 3) = v22;
  *(v28 + 4) = a9;
  v30 = *(v29 + 80);
  *(v28 + 5) = v30;
  v32 = v54;
  v31 = v55;
  v33 = *(v50 + 80);
  *(v28 + 6) = v33;
  v34 = *(v51 + 80);
  *(v28 + 7) = v34;
  *(v28 + 8) = v32;
  *(v28 + 9) = v31;
  (*(v19 + 32))(&v28[v25], v44);
  v35 = v42;
  (*(v15 + 32))(&v28[v26], v45, v42);
  v36 = v43;
  (*(v53 + 32))(&v28[v27], v46, v43);

  v56 = v52;
  v57 = v35;
  v58 = v36;
  v59 = v30;
  v60 = v33;
  v61 = v34;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v38 = sub_1BF014EDC(v30, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v40 = v39;

  return v40;
}

uint64_t sub_1BF04C470()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[2];
  v27 = v0[4];
  v28 = v0[3];
  OUTLINED_FUNCTION_2_3();
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  OUTLINED_FUNCTION_12_3();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_34();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_73_2();
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_22();
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_51_4();
  v13 = *(v12 + 64);
  v14 = v0[8];

  v15 = v0[9];

  v16 = OUTLINED_FUNCTION_106_0();
  v17(v16);
  v18 = OUTLINED_FUNCTION_153();
  v19(v18);
  v20 = OUTLINED_FUNCTION_152();
  v21(v20);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6BDD0](v22, v23, v24);
}

void sub_1BF04C5C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a1;
  v7 = *a6;
  sub_1BF04C044();
}

uint64_t sub_1BF04C5E0()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  OUTLINED_FUNCTION_12_3();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_12_3();
  v8 = *(v7 + 64);
  v10 = *(v9 - 8);
  OUTLINED_FUNCTION_80_2();
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_80_2();
  return sub_1BF04C740(v17, *(v0 + 64), *(v0 + 72), v0 + v15, v0 + v16, v0 + ((v16 + *(v13 + 64) + *(*(v14 - 8) + 80)) & ~*(*(v14 - 8) + 80)), v18, v19, v14, v20);
}

uint64_t sub_1BF04C6E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1BF17B50C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF04C740(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v57 = a6;
  v58 = a1;
  v64 = a3;
  v71 = a2;
  v55 = a5;
  v56 = a10;
  v60 = *a2;
  v11 = *a3;
  v62 = *(a10 - 8);
  v59 = *(v62 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v63 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a9;
  v14 = *(a9 - 8);
  v54 = *(v14 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v17;
  v49 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v15);
  v52 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))();
  v47 = v19;
  (*(v19 + 16))(&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v55, a8);
  v48 = v14;
  (*(v14 + 16))(v17, v57, a9);
  v25 = v62;
  v26 = v56;
  (*(v62 + 16))(v63, v58, v56);
  v27 = (*(v23 + 80) + 72) & ~*(v23 + 80);
  v28 = (v24 + *(v19 + 80) + v27) & ~*(v19 + 80);
  v29 = (v54 + *(v25 + 80) + ((v20 + *(v14 + 80) + v28) & ~*(v14 + 80))) & ~*(v25 + 80);
  v57 = (v20 + *(v14 + 80) + v28) & ~*(v14 + 80);
  v58 = v29;
  v30 = swift_allocObject();
  v31 = v60;
  v32 = v50;
  v33 = v49;
  *(v30 + 2) = v50;
  *(v30 + 3) = v33;
  v34 = v46;
  *(v30 + 4) = v46;
  *(v30 + 5) = v26;
  v35 = *(v31 + 80);
  *(v30 + 6) = v35;
  v36 = v64;
  v37 = *(v61 + 80);
  *(v30 + 7) = v37;
  *(v30 + 8) = v36;
  v38 = &v30[v27];
  v39 = v32;
  (*(v23 + 32))(v38, v51);
  (*(v47 + 32))(&v30[v28], v52, v33);
  (*(v48 + 32))(&v30[v57], v53, v34);
  (*(v62 + 32))(&v30[v58], v63, v26);

  v65 = v39;
  v66 = v33;
  v67 = v34;
  v68 = v26;
  v69 = v35;
  v70 = v37;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v41 = sub_1BF014EDC(v35, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v43 = v42;

  return v43;
}

uint64_t sub_1BF04CBE4()
{
  OUTLINED_FUNCTION_97_0();
  v34 = *(v0 + 3);
  v35 = *(v0 + 2);
  v32 = *(v0 + 5);
  v33 = *(v0 + 4);
  OUTLINED_FUNCTION_2_3();
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  OUTLINED_FUNCTION_12_3();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_5_34();
  v6 = v5;
  v8 = (v2 + v7 + *(v5 + 80)) & ~*(v5 + 80);
  OUTLINED_FUNCTION_73_2();
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_22();
  v12 = v11;
  v14 = (v8 + v13 + *(v11 + 80)) & ~*(v11 + 80);
  OUTLINED_FUNCTION_73_2();
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_17_14();
  v19 = (v14 + v18 + *(v17 + 80)) & ~*(v17 + 80);
  OUTLINED_FUNCTION_73_2();
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_165();
  v22 = *(v0 + 8);

  v23 = OUTLINED_FUNCTION_129_0();
  v24(v23, v35);
  (*(v6 + 8))(&v0[v8], v34);
  (*(v12 + 8))(&v0[v14], v33);
  v25 = OUTLINED_FUNCTION_151();
  v26(v25);
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x1EEE6BDD0](v27, v28, v29);
}

uint64_t sub_1BF04CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(uint64_t, uint64_t, unint64_t *))
{
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = a6;
  v9 = a3;
  v11 = a2;
  v8 = a1;
  v19 = a4;
  v15 = *v7;
  v13 = *v7 & 0xFFFFFFFFFFFFFF8;
  v6 = v13 + 32;
  v12 = v13 + 32 + 8 * a1;
  a5(0);
  swift_arrayDestroy();
  v16 = __OFSUB__(v9, v14);
  v14 = v9 - v14;
  if (v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = (v12 + 8 * v9);
  if (!v14)
  {
    goto LABEL_12;
  }

  v12 = v15 >> 62;
  if (!(v15 >> 62))
  {
    result = *(v13 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1BF17B50C();
LABEL_6:
  if (__OFSUB__(result, v11))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v10(v6 + 8 * v11, result - v11, v7);
  if (v12)
  {
    result = sub_1BF17B50C();
  }

  else
  {
    result = *(v13 + 16);
  }

  if (__OFADD__(result, v14))
  {
    goto LABEL_23;
  }

  *(v13 + 16) = result + v14;
LABEL_12:
  if (v9 < 1)
  {
  }

  else
  {
    v18 = v13 + 8 * v8;
    result = v19;
    *(v18 + 32) = v19;
    if (v18 + 40 < v7)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF04CF44()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(*(v0 + 16) - 8);
  v5 = *(v0 + 48);
  OUTLINED_FUNCTION_73_2();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_73_2();
  v9 = *(v8 + 64);
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_72_0();
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_72_0();
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_27_9();
  v19 = (v18 + v17 + *(v16 + 80)) & ~*(v16 + 80);
  return sub_1BF04D0BC(v23, *(v0 + 64), v0 + v22, v0 + v18, v0 + v19, v0 + ((v19 + *(v20 + 64) + *(*(v21 - 8) + 80)) & ~*(*(v21 - 8) + 80)), v24, v25, v26, v21, v27);
}

void OUTLINED_FUNCTION_133_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[7];
}

uint64_t sub_1BF04D0BC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58 = a5;
  v59 = a6;
  v56 = a4;
  v76 = a2;
  v60 = a1;
  v67 = a11;
  v12 = *a2;
  v66 = *(a11 - 8);
  v61 = *(v66 + 64);
  v64 = a10;
  v65 = a9;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v69 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v15 - 8);
  v57 = *(v63 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v68 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v54 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v53 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))();
  v49 = v23;
  (*(v23 + 16))(&v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v56, a8);
  v50 = v19;
  (*(v19 + 16))(&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v65);
  v29 = v63;
  (*(v63 + 16))(v68, v59, v64);
  v30 = v66;
  (*(v66 + 16))(v69, v60, v67);
  v31 = (*(v27 + 80) + 64) & ~*(v27 + 80);
  v58 = (v28 + *(v23 + 80) + v31) & ~*(v23 + 80);
  v32 = (v24 + *(v19 + 80) + v58) & ~*(v19 + 80);
  v33 = (v20 + *(v29 + 80) + v32) & ~*(v29 + 80);
  v59 = (v57 + *(v30 + 80) + v33) & ~*(v30 + 80);
  v60 = v33;
  v34 = swift_allocObject();
  v35 = v52;
  v36 = v51;
  *(v34 + 2) = v52;
  *(v34 + 3) = v36;
  v37 = v64;
  v38 = v65;
  *(v34 + 4) = v65;
  *(v34 + 5) = v37;
  v39 = v67;
  *(v34 + 6) = v67;
  v40 = *(v62 + 80);
  *(v34 + 7) = v40;
  v41 = &v34[v31];
  v42 = v35;
  (*(v27 + 32))(v41, v53);
  (*(v49 + 32))(&v34[v58], v54, v36);
  (*(v50 + 32))(&v34[v32], v55, v38);
  (*(v63 + 32))(&v34[v60], v68, v37);
  (*(v66 + 32))(&v34[v59], v69, v39);
  v70 = v42;
  v71 = v36;
  v72 = v38;
  v73 = v37;
  v74 = v39;
  v75 = v40;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v44 = sub_1BF014EDC(v40, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v46 = v45;

  return v46;
}

uint64_t sub_1BF04D620()
{
  OUTLINED_FUNCTION_97_0();
  v37 = v0[4];
  v38 = v0[3];
  v35 = v0[6];
  v36 = v0[5];
  OUTLINED_FUNCTION_77_2(v37, v0[2]);
  v2 = *(v1 + 8);
  v4 = (((*(v1 + 80) + 64) & ~*(v1 + 80)) + *(v1 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  OUTLINED_FUNCTION_71_1();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_34_5();
  v8 = v7;
  v10 = (v4 + v9 + *(v7 + 80)) & ~*(v7 + 80);
  OUTLINED_FUNCTION_80_2();
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_34_5();
  v14 = v13;
  v16 = (v10 + v15 + *(v13 + 80)) & ~*(v13 + 80);
  OUTLINED_FUNCTION_80_2();
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_34_5();
  v21 = (v16 + v20 + *(v19 + 80)) & ~*(v19 + 80);
  OUTLINED_FUNCTION_80_2();
  v34 = *(v22 + 64);
  v24(v0 + v23);
  v25 = OUTLINED_FUNCTION_129_0();
  v26(v25, v38);
  (*(v8 + 8))(v0 + v10, v37);
  (*(v14 + 8))(v0 + v16, v36);
  v27 = OUTLINED_FUNCTION_151();
  v28(v27);
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x1EEE6BDD0](v29, v30, v31);
}

uint64_t sub_1BF04D858()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0[2] - 8);
  v5 = v0[6];
  v6 = v0[7];
  OUTLINED_FUNCTION_169();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_169();
  v13 = ((v11 & ~v12) + *(v9 + 64) + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80);
  OUTLINED_FUNCTION_146_0(v14, *(*(v10 - 8) + 64), v15);
  v19 = (v18 + v17 + *(v16 + 80)) & ~*(v16 + 80);
  OUTLINED_FUNCTION_146_0(v21, *(v20 + 64), v22);
  v26 = (v25 + v24 + *(v23 + 80)) & ~*(v23 + 80);
  return sub_1BF04DA94(v31, v0 + v29, v0 + v30, v0 + v25, v0 + v26, v0 + ((v26 + *(v27 + 64) + *(*(v28 - 8) + 80)) & ~*(*(v28 - 8) + 80)), v32, v33, v34, v35, v36, v28, v37);
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:name:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 56))();
}

{
  return (*(a8 + 64))();
}

uint64_t ProxyResolver.resolve<A>(_:name:with:)()
{
  OUTLINED_FUNCTION_4_28();
  v1 = v0;
  v6 = toKey<A>(type:name:)(v2, v3, v4, v5, &v19);
  v7 = v20;
  OUTLINED_FUNCTION_3_36(v6, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v17, v18, v19);
  v17 = v7;
  OUTLINED_FUNCTION_1_52(v16, v1);
}

{
  OUTLINED_FUNCTION_4_28();
  v0 = toKey<A>(type:name:)();
  OUTLINED_FUNCTION_3_36(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v10, v11, v12);
  v10 = v13;
  OUTLINED_FUNCTION_1_52(v9, &v14);

  return v14;
}

uint64_t sub_1BF04DA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = TupleTypeMetadata[12];
  v18 = TupleTypeMetadata[16];
  v21 = TupleTypeMetadata[20];
  v23 = TupleTypeMetadata[24];
  v25 = TupleTypeMetadata[28];
  (*(*(a7 - 8) + 16))(a9, a2, a7);
  (*(*(a8 - 8) + 16))(a9 + v17, a3, a8);
  (*(*(a10 - 8) + 16))(a9 + v18, a4, a10);
  (*(*(a11 - 8) + 16))(a9 + v21, a5, a11);
  (*(*(a12 - 8) + 16))(a9 + v23, a6, a12);
  return (*(*(a13 - 8) + 16))(a9 + v25, a1, a13);
}

void sub_1BF04DC90()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_49_1();
  v5 = v4;
  v7 = OUTLINED_FUNCTION_16_2(v4, v6);
  v8 = sub_1BF00088C(v7);
  OUTLINED_FUNCTION_1_5(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_1();
  sub_1BF04DFC0();
  if (OUTLINED_FUNCTION_18_3())
  {
    v11 = *v1;
    sub_1BF00088C(v0);
    OUTLINED_FUNCTION_47_0();
    if (!v13)
    {
      goto LABEL_14;
    }

    v3 = v12;
  }

  if (v2)
  {
    v14 = *(*v1 + 56);
    v15 = *(v14 + 8 * v3);
    *(v14 + 8 * v3) = v5;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_55();

    sub_1BF04E0B8(v17, v18, v19, v20);
  }
}

uint64_t ObservableProperty.__deallocating_deinit()
{
  ObservableProperty.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *ObservableProperty.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  OUTLINED_FUNCTION_29();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v3 + 96)]);
  return v0;
}

uint64_t sub_1BF04DE34(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v9 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *a2;
    sub_1BF04DC90();
    *a2 = v11;
    swift_endAccess();
    v10 = *(v11 + 16);
    result = sub_1BEFE90AC(a5);
    if (v10 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      sub_1BF04E11C(0, v10, a2);
      sub_1BF000C1C();
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_49_3(void *result)
{
  result[2] = v2;
  result[3] = v5;
  result[4] = v1;
  result[5] = v4;
  result[6] = v3;
  return result;
}

void sub_1BF04DFC0()
{
  if (!qword_1ED8E9BB0)
  {
    sub_1BEFEC0B0(255, &qword_1ED8E9C58, &type metadata for AnyReference, MEMORY[0x1E69E62F8]);
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9BB0);
    }
  }
}

void OUTLINED_FUNCTION_53_3()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
}

void sub_1BF04E0B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14_9(v4, v5, v6, v7);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_13(v8, v9);
  }
}

uint64_t sub_1BF04E11C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = result;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = result;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (a2 == i)
    {
      return v8;
    }

    if (a2 < v7)
    {
      break;
    }

    if (v9 < v7)
    {
      goto LABEL_17;
    }

    if (i >= a2)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    v11 = *a3;
    if (*(*a3 + 16))
    {
      v12 = sub_1BF00088C(i);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);
        swift_endAccess();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = v4;
        if ((result & 1) == 0)
        {
          result = sub_1BF04E290(0, v8[2] + 1, 1, v8);
          v8 = result;
        }

        v16 = v8[2];
        v15 = v8[3];
        if (v16 >= v15 >> 1)
        {
          result = sub_1BF04E290((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        v9 = i + 1;
        v8[2] = v16 + 1;
        v8[v16 + 4] = v14;
        v4 = v17;
        goto LABEL_2;
      }
    }

    result = swift_endAccess();
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BF04E290(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BEFFF95C(0, &unk_1ED8E9B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BEFEC638(0, &qword_1ED8E9C58, &type metadata for AnyReference, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id OUTLINED_FUNCTION_79_1(void *a1)
{
  a1[2] = v1;
  a1[3] = v7;
  a1[4] = v3;
  a1[5] = v6;
  a1[6] = v4;
  a1[7] = v2;
  a1[8] = v5;

  return v1;
}

uint64_t OUTLINED_FUNCTION_155()
{
}

uint64_t static Promise.timeout<A>(after:on:promise:message:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*a3 + 80);
  v7 = type metadata accessor for Promise();
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v8 = sub_1BF17A50C();
  v10 = v9;
  *v9 = a3;

  v10[1] = static Promise.timeout<A>(after:on:message:)(a1, a2);
  sub_1BF00CD7C();
  static Promise.race(_:)(v8);
  OUTLINED_FUNCTION_65();
  return v7;
}

uint64_t NSProcessInfo.launchArgument<A>(forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() processInfo];
  v7 = [v6 arguments];

  v8 = sub_1BF17A4DC();
  v9 = sub_1BEFFF260();
  v11 = sub_1BF0432FC(v9, v10, v8);
  LOBYTE(v7) = v12;

  if (v7)
  {

    v14 = OUTLINED_FUNCTION_0_50();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }

  v18 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 >= *(v8 + 16))
  {
    v22 = OUTLINED_FUNCTION_0_50();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_10;
  }

  if (v18 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v19 = v8 + 16 * v18;
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF0D4630(v20, v21, a1, a2, a3);
LABEL_10:
}

void sub_1BF04E6FC()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BF000E90(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BF000E50(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BF000E90(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

uint64_t static Promise.timeout<A>(after:on:message:)(uint64_t a1, void *a2)
{
  v3 = sub_1BF04E824(a2);
  type metadata accessor for Promise();
  v6 = *(v2 + 80);
  v4 = Promise.__allocating_init(resolver:)();

  return v4;
}

id sub_1BF04E824(void *a1)
{
  v16 = a1;
  v1 = sub_1BF179B6C();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v9 = v16;
  if (off_1ED8F0218 == v16)
  {
    goto LABEL_12;
  }

  if (qword_1ED8EFB98 != -1)
  {
    swift_once();
    v9 = v16;
  }

  if (qword_1ED8EFC18 == v9)
  {
LABEL_12:
    sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7F98], v1);
    v12 = sub_1BF17ADAC();
    (*(v4 + 8))(v8, v1);
    return v12;
  }

  sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);
  if (qword_1ED8EF920 != -1)
  {
    swift_once();
  }

  if (sub_1BF17ADEC())
  {
    v10 = [objc_opt_self() isMainThread];
    sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
    if (v10)
    {
      v11 = MEMORY[0x1E69E7F88];
    }

    else
    {
      v11 = MEMORY[0x1E69E7F98];
    }

    (*(v4 + 104))(v8, *v11, v1);
    v12 = sub_1BF17ADAC();
    (*(v4 + 8))(v8, v1);
    return v12;
  }

  v13 = v16;

  return v13;
}

uint64_t SyncObservable.__deallocating_deinit()
{
  SyncObservable.deinit();
  v0 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF04EB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  return sub_1BF04EB6C(a1, a2, a3, a4, v4[4], v4[5], v4[6], v4[7]);
}

void *SyncObservable.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_1BF04EB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a6;
  v27 = a5;
  v12 = sub_1BF179B5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF179BBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a7;
  v22[5] = a8;
  aBlock[4] = sub_1BF0BB6BC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_3;
  v23 = _Block_copy(aBlock);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF179B8C();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7458(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
  sub_1BF027D54(0);
  sub_1BEFF7458(&qword_1ED8EFBD0, sub_1BF027D54);
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B00](v26, v21, v16, v23);
  _Block_release(v23);
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
}

uint64_t sub_1BF04EE44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1BF04EE80()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_115_0(v1, &unk_1ED8EAB08);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v2 = OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_14_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v3);

  v4 = OUTLINED_FUNCTION_3_8();
  sub_1BF04F60C(v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_19_5();

  v0(v11);
  OUTLINED_FUNCTION_18_4();
  if (*(v2 + 16))
  {
    v12 = *(v2 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void static Promise.race(_:)(uint64_t a1)
{
  v2 = a1;
  v1 = sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  static Promise.race<A>(_:)(&v2, v1);
}

void static Promise.race<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v27[0] = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v27 - v19;
  if (sub_1BF17AA7C())
  {
    sub_1BF095D40();
    swift_allocError();
    *v21 = xmmword_1BF184A50;
    *(v21 + 16) = 2;
    OUTLINED_FUNCTION_26_2();

    Promise.__allocating_init(error:)();
  }

  else
  {
    v23 = *(v2 + 80);
    type metadata accessor for OnlyOnceDeferredPromise();
    v24 = OnlyOnceDeferredPromise.__allocating_init()();
    (*(v6 + 16))(v11, a1, a2);
    sub_1BF17A32C();
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1BF17AF0C();
      if (!v27[1])
      {
        break;
      }

      v25 = sub_1BF041694();
      sub_1BF04F448();
    }

    (*(v27[0] + 8))(v20, AssociatedTypeWitness);
    swift_beginAccess();
    if (*(v24 + 16))
    {
      v26 = *(v24 + 16);

      OUTLINED_FUNCTION_26_2();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BF04F2C8()
{
  OUTLINED_FUNCTION_86_1();
  swift_unownedRetain();
  swift_unownedRetain();

  v3 = OUTLINED_FUNCTION_130();
  sub_1BEFEEEE0(v3, v4);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();
  swift_unownedRetain();
  v5 = OUTLINED_FUNCTION_80_1();
  v2(v5);
  OUTLINED_FUNCTION_95();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_125();
  v6 = *v0;
  *v0 = v2;

  return v1;
}

uint64_t sub_1BF04F3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  OUTLINED_FUNCTION_17_3();
  v7(0);
  OUTLINED_FUNCTION_50_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_13_6(v8, MEMORY[0x1E69E7CC0]);
  a5(0);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v5;
}

uint64_t sub_1BF04F448()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 16);
  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_1_10();
    swift_once();
  }

  v2 = off_1ED8F0218;
  sub_1BF04F558();
  sub_1BF04F5CC();
  sub_1BF04F91C();
  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v2(v3);
  OUTLINED_FUNCTION_55();
}

void (*sub_1BF04F60C(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v24 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  v17 = sub_1BF04F7FC(sub_1BF0A8FC4, v15);
  v19 = v18;

  os_unfair_lock_unlock(*(v24 + 16));
  if (!v19)
  {
    v20 = sub_1BF04F95C(v17, 0, v16, a6, a7);
LABEL_7:
    v22 = v20;
    goto LABEL_8;
  }

  if (v19 != 1)
  {
    if (v19 != 2)
    {
      return nullsub_1;
    }

    v20 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = v17;

  sub_1BF0019A0(v17, 1);
  v22 = sub_1BF006210(v16, sub_1BF02E21C, v21);

LABEL_8:
  sub_1BF001964(v17, v19);
  return v22;
}

uint64_t sub_1BF04F7FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_assert_owner(*(*(v3 + 16) + 16));
  if ((*(v3 + 24) & 1) == 0)
  {
    sub_1BF04A08C(0, &unk_1ED8E9DE8);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v10);
    sub_1BF005F5C(*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    return 0;
  }

  result = swift_beginAccess();
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
    v8 = *(v3 + 40);
    sub_1BF000E90(v8, v7);
    return v8;
  }

  __break(1u);
  return result;
}

void (*sub_1BF04F95C(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

uint64_t sub_1BF04FB50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ReferenceDecodingPool();
  swift_allocObject();
  v4 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  result = ReferenceDecodingPool.init(references:)(v4);
  *a2 = result;
  return result;
}

uint64_t DoublyLinkedList.head.getter()
{
  OUTLINED_FUNCTION_26_4();
  v1 = *(v0 + 16);
}

uint64_t sub_1BF04FBE0(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  sub_1BF000C1C();
}

Swift::Void __swiftcall DoublyLinkedList.removeAll()()
{
  OUTLINED_FUNCTION_26_4();
  while (*(v0 + 16))
  {
    v1 = *(v0 + 16);

    DoublyLinkedList.remove(node:)(v2);
  }
}

uint64_t sub_1BF04FD74(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF04FD6C(a1, *(v1 + 16));
}

uint64_t static Promise.all(_:)(uint64_t a1)
{
  v9 = a1;
  v2 = *(v1 + 80);
  v3 = sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1BF041694();
  static Promise.all<A>(on:_:)(v5, &v9, v3, WitnessTable);
  v7 = v6;

  return v7;
}

uint64_t ReferenceDecodingPool.init(references:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      v5 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      ReferenceDecodingPool.insert(contentsOf:)(v5);

      --v2;
    }

    while (v2);
  }

  return v1;
}

Swift::Void __swiftcall ReferenceDecodingPool.insert(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v1 = *(contentsOf._rawValue + 2);
  if (v1)
  {
    v2 = (contentsOf._rawValue + 32);
    do
    {
      ReferenceDecodingPool.insert(_:)(v2);
      v2 += 9;
      --v1;
    }

    while (v1);
  }
}

uint64_t ReferenceDecodingPool.insert(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  v6 = sub_1BF04FEBC(v4, v5, *(v2 + 16));
  swift_endAccess();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v9 = v3[2];
  v8 = v3[3];
  if ((v3[4] & 1) == 0)
  {
    sub_1BF0075BC((v3 + 5), v42);
    OUTLINED_FUNCTION_8_13();
    sub_1BF050334();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1BF050248();
    OUTLINED_FUNCTION_8_13();
    sub_1BF050674();
LABEL_24:
    v32 = *v3;
    v33 = v3[1];
    swift_beginAccess();
    v34 = *(v2 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v2 + 16);
    sub_1BF0507AC();
    *(v2 + 16) = v41;
    return swift_endAccess();
  }

  sub_1BF0075BC((v3 + 5), v42);
  v10 = OUTLINED_FUNCTION_1_24();
  sub_1BF0BD690(v10, v11, v12);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_13();
    sub_1BF050674();
    goto LABEL_24;
  }

  v13 = v40;
  v39 = *(v40 + 16);
  if (v39 != *(v9 + 16))
  {
    OUTLINED_FUNCTION_8_13();
    sub_1BF050674();

    goto LABEL_24;
  }

  v36 = v3;
  v37 = v2;
  v38 = v9;
  v14 = 0;
  v15 = v40 + 32;
  v16 = (v9 + 40);
  while (1)
  {
    if (v39 == v14)
    {
      sub_1BF050674();

      v3 = v36;
      v2 = v37;
      goto LABEL_24;
    }

    if (v14 >= *(v9 + 16))
    {
      break;
    }

    if (v14 >= *(v13 + 16))
    {
      goto LABEL_26;
    }

    v17 = *(v16 - 1);
    v18 = *v16;
    v19 = v16;
    v20 = v15;
    sub_1BF0075BC(v15, v42);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1BF014CA8();
    if (__OFADD__(v7[2], (v22 & 1) == 0))
    {
      goto LABEL_27;
    }

    v23 = v21;
    v24 = v22;
    sub_1BF0BD5D0(0, &qword_1ED8E9BC8, MEMORY[0x1E69E6DC8]);
    if (sub_1BF17B43C())
    {
      v25 = sub_1BF014CA8();
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_29;
      }

      v23 = v25;
    }

    if (v24)
    {

      v27 = (v7[7] + 32 * v23);
      __swift_destroy_boxed_opaque_existential_1(v27);
      sub_1BEFF9A40(v42, v27);
    }

    else
    {
      v7[(v23 >> 6) + 8] |= 1 << v23;
      v28 = (v7[6] + 16 * v23);
      *v28 = v17;
      v28[1] = v18;
      sub_1BEFF9A40(v42, (v7[7] + 32 * v23));
      v29 = v7[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_28;
      }

      v7[2] = v31;
    }

    v16 = v19 + 2;
    v15 = v20 + 32;
    ++v14;
    v9 = v38;
    v13 = v40;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

_OWORD *sub_1BF050248()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_27_2();
  v4 = v3;
  OUTLINED_FUNCTION_6_4(v3, v5);
  v6 = sub_1BF014CA8();
  OUTLINED_FUNCTION_1_5(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_19_4();
  sub_1BF050340();
  if (OUTLINED_FUNCTION_10_7())
  {
    v9 = *v0;
    OUTLINED_FUNCTION_41_0();
    sub_1BF014CA8();
    OUTLINED_FUNCTION_8_2();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v0 + 56) + 32 * v2));
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_55();

    return sub_1BEFF9A40(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    sub_1BF0505FC(v16, v17, v18, v4, v19);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF050340()
{
  if (!qword_1ED8E9BC8)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9BC8);
    }
  }
}

uint64_t Result.init(value:error:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1BF17AE6C();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v26 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v21 = (v20 - v19);
  (*(v11 + 16))(v16, a1, v8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, a3);
  v23 = *(v11 + 8);
  if (EnumTagSinglePayload == 1)
  {
    v23(v16, v8);
    if (!a2)
    {
      type metadata accessor for Result.Errors();
      swift_getWitnessTable();
      a2 = swift_allocError();
    }

    v23(a1, v8);
    *a4 = a2;
    type metadata accessor for Result();
  }

  else
  {
    v23(a1, v8);

    v24 = *(v17 + 32);
    v24(v21, v16, a3);
    v24(a4, v21, a3);
    type metadata accessor for Result();
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1BF0505FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_29(a1, a2, a3, a4, a5);
  sub_1BEFF9A40(v8, (v7 + 32 * v6));
  OUTLINED_FUNCTION_12_11();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF050680()
{
  OUTLINED_FUNCTION_80();
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  OUTLINED_FUNCTION_6_4(v7, v9);
  sub_1BEFF6B90();
  OUTLINED_FUNCTION_1_5(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_1BEFE9FF8(0, v5, v3, sub_1BF0264F8);
  if (OUTLINED_FUNCTION_14_4())
  {
    v17 = *v0;
    sub_1BEFF6B90();
    OUTLINED_FUNCTION_11_2();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  if (v16)
  {
    v20 = *(*v6 + 56);
    v21 = *(v20 + 8 * v15);
    *(v20 + 8 * v15) = v8;
    OUTLINED_FUNCTION_33();
  }

  else
  {
    v24 = OUTLINED_FUNCTION_58_0();
    v26(v24);
    OUTLINED_FUNCTION_33();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

Swift::String_optional __swiftcall Dictionary.jsonRepresentation(options:)(NSJSONWritingOptions options)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BF17A12C();
  v3 = OUTLINED_FUNCTION_68(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = objc_opt_self();
  OUTLINED_FUNCTION_17_2();
  v7 = sub_1BF179D3C();
  v21[0] = 0;
  v8 = [v6 dataWithJSONObject:v7 options:options error:v21];

  v9 = v21[0];
  if (v8)
  {
    v10 = sub_1BF17935C();
    v12 = v11;

    sub_1BF17A10C();
    v13 = sub_1BF17A0CC();
    v8 = v14;
    sub_1BF014E18(v10, v12);
  }

  else
  {
    v15 = v9;
    v16 = sub_1BF17911C();

    swift_willThrow();
    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  v18 = v13;
  v19 = v8;
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  return result;
}

void sub_1BF050964()
{
  if (!qword_1ED8EAE98)
  {
    v0 = sub_1BF179E9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAE98);
    }
  }
}

uint64_t combine<A, B, C>(_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = swift_allocObject();
  v9 = *(v5 + 80);
  v8[2] = v9;
  v8[3] = a2;
  v8[4] = a3;
  v10 = *(v6 + 80);
  v11 = *(v7 + 80);

  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = sub_1BF014EDC(v9, TupleTypeMetadata3);
  Promise.then<A>(on:closure:)();
  v15 = v14;

  return v15;
}

uint64_t sub_1BF050AE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF050B50(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a4;
  v12 = *(v6 + 80);
  *(v11 + 3) = v12;
  *(v11 + 4) = *(v7 + 80);
  *(v11 + 5) = a3;
  (*(v8 + 32))(&v11[v10], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4);

  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = sub_1BF014EDC(v12, TupleTypeMetadata3);
  Promise.then<A>(on:closure:)();
  v16 = v15;

  return v16;
}

uint64_t sub_1BF050D18()
{
  OUTLINED_FUNCTION_2_56();
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = *(v0 + 40);

  v6 = OUTLINED_FUNCTION_92();
  v7(v6);
  v8 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v8, v9, v10);
}

uint64_t sub_1BF050DB4(uint64_t a1, void (*a2)(uint64_t, void))
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_49_0();
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_32_8();

    a2(v5, 0);
    OUTLINED_FUNCTION_31_9();
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return OUTLINED_FUNCTION_6_5();
}

void sub_1BF050E50()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BF0512E4(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BF050ED8(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BF0512E4(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

void sub_1BF050ED8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BF000FDC(a1, a2, MEMORY[0x1E69E7D48]);
  }
}

uint64_t sub_1BF050F30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v28 = *a2;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v15, v16);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5);
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = (v13 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  v20 = *(v28 + 80);
  *(v19 + 4) = v20;
  (*(v12 + 32))(&v19[v17], v14, a4);
  (*(v8 + 32))(&v19[v18], v27, a5);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v22 = sub_1BF014EDC(v20, TupleTypeMetadata3);
  Promise.then<A>(on:closure:)();
  v24 = v23;

  return v24;
}

uint64_t sub_1BF0511A4(uint64_t a1)
{
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_77_2(a1, *(v1 + 16));
  v4 = *(v3 + 8);
  v5 = *(v2 - 8);
  v6 = (((*(v3 + 80) + 40) & ~*(v3 + 80)) + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  OUTLINED_FUNCTION_71_1();
  v8 = *(v7 + 64);
  v11 = v9 | v10;
  v13(v1 + v12);
  (*(v5 + 8))(v1 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + v8, v11 | 7);
}

id sub_1BF0512E4(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1BF051300()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] - 8);
  OUTLINED_FUNCTION_167();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_167();
  return sub_1BF0513D8(v9, v0 + v8, v0 + ((v8 + *(v6 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80)), v10, v7, v11, v12);
}

uint64_t OUTLINED_FUNCTION_104_0()
{
  v2 = v0[2];
  *(v1 - 104) = v0[3];
  *(v1 - 96) = v2;
  result = v0[5];
  *(v1 - 120) = v0[4];
  return result;
}

uint64_t sub_1BF0513D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(TupleTypeMetadata3 + 48);
  v16 = *(TupleTypeMetadata3 + 64);
  (*(*(a4 - 8) + 16))(a7, a2, a4);
  (*(*(a5 - 8) + 16))(a7 + v15, a3, a5);
  return (*(*(a6 - 8) + 16))(a7 + v16, a1, a6);
}

void Multicaster.makeStream(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v20;
  a20 = v21;
  v23 = *(v22 + 16);
  v24 = sub_1BF17A7BC();
  v25 = sub_1BF17AE6C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &a9 - v27;
  v29 = sub_1BF1794FC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_62();
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  sub_1BF17A78C();
  sub_1BF1794EC();
  (*(v32 + 16))(v28, v37, v24);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v24);
  OUTLINED_FUNCTION_0_89();
  sub_1BEFE7314(v38, v39);
  sub_1BF179E9C();
  sub_1BF179EBC();
  (*(v32 + 8))(v37, v24);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF05171C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1BF022610();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_1BF17B42C();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_1_38();
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v24, v15, v16);
    v29[3] = type metadata accessor for ReferenceDecodingPool();
    v29[0] = a4;
    swift_beginAccess();

    sub_1BF022668(v29, v24);
    swift_endAccess();
    sub_1BF015544(a1, a2, a3, a5, a6, a7);
    return sub_1BF0581A0();
  }

  return result;
}

id sub_1BF051984@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v68 = a2;
  v7 = sub_1BF1794AC();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v63 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v63 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v63 - v20;
  v22 = *a1;
  v23 = *v4;
  v24 = *(v4 + 8);
  if (*(v4 + 16))
  {
    if (*(v4 + 16) == 1)
    {
      v66 = &type metadata for _JSONDecoder;
      v67 = sub_1BF0172B8();
      v25 = swift_allocObject();
      v65[0] = v25;
      *(v25 + 48) = v68;
      *(v25 + 56) = a3;
      *(v25 + 16) = v22;
      *(v25 + 24) = v23;
      *(v25 + 32) = v24;
      *(v25 + 40) = 1;
      sub_1BF01716C(v22);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01730C(v23, v24, 1);
      (v23)(v65);
      return __swift_destroy_boxed_opaque_existential_1(v65);
    }

    v36 = *v4;
    switch(v23)
    {
      case 1uLL:
        if (v22 >> 61 != 3)
        {
          sub_1BF05350C();
          swift_allocError();
          v39 = 0xE600000000000000;
          v40 = 0x7463656A626FLL;
          switch(v22 >> 61)
          {
            case 1uLL:
              goto LABEL_28;
            case 2uLL:
              goto LABEL_39;
            case 3uLL:
              goto LABEL_22;
            case 4uLL:
              goto LABEL_35;
            default:
              goto LABEL_40;
          }

          goto LABEL_40;
        }

        v54 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v53 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF052280(v54, v53);
        if ((v55 & 1) == 0)
        {
          return sub_1BF17943C();
        }

        goto LABEL_21;
      case 2uLL:
        if (v22 >> 61 == 3)
        {
          v42 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v41 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          sub_1BF052280(v42, v41);
          if ((v43 & 1) == 0)
          {
            return sub_1BF17943C();
          }

LABEL_21:
          sub_1BF05350C();
          swift_allocError();
LABEL_22:
          v39 = 0xE600000000000000;
          v40 = 0x7265626D756ELL;
        }

        else
        {
          sub_1BF05350C();
          swift_allocError();
          v39 = 0xE600000000000000;
          v40 = 0x7463656A626FLL;
          switch(v22 >> 61)
          {
            case 1uLL:
LABEL_28:
              v39 = 0xE500000000000000;
              v40 = 0x7961727261;
              break;
            case 2uLL:
LABEL_39:
              v40 = 0x676E69727473;
              break;
            case 3uLL:
              goto LABEL_22;
            case 4uLL:
LABEL_35:
              v39 = 0xE400000000000000;
              v40 = 1702195828;
              v59 = 0xE500000000000000;
              v60 = 0x65736C6166;
              if (v22 != 0x8000000000000008)
              {
                v60 = 1819047278;
                v59 = 0xE400000000000000;
              }

              if (v22 != 0x8000000000000000)
              {
                v40 = v60;
                v39 = v59;
              }

              break;
            default:
              break;
          }
        }

LABEL_40:
        v61 = 0x7265626D756ELL;
        goto LABEL_45;
      case 3uLL:
        if (v22 >> 61 != 2)
        {
          sub_1BF05350C();
          swift_allocError();
          v57 = 0xE600000000000000;
          v58 = 0x7463656A626FLL;
          switch(v22 >> 61)
          {
            case 1uLL:
              v57 = 0xE500000000000000;
              v58 = 0x7961727261;
              break;
            case 2uLL:
              v58 = 0x676E69727473;
              break;
            case 3uLL:
              v58 = 0x7265626D756ELL;
              break;
            case 4uLL:
              if (v22 == 0x8000000000000000)
              {
                v57 = 0xE400000000000000;
                v58 = 1702195828;
              }

              else if (v22 == 0x8000000000000008)
              {
                v57 = 0xE500000000000000;
                v58 = 0x65736C6166;
              }

              else
              {
                v57 = 0xE400000000000000;
                v58 = 1819047278;
              }

              break;
            default:
              break;
          }

          *v38 = v68;
          *(v38 + 8) = 0x676E69727473;
          *(v38 + 16) = 0xE600000000000000;
          *(v38 + 24) = v58;
          *(v38 + 32) = v57;
          goto LABEL_46;
        }

        v44 = v19;
        v45 = v18;
        v47 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v46 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v48 = qword_1ED8EA730;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if (v48 != -1)
        {
          swift_once();
        }

        v49 = qword_1ED8EA738;
        v50 = sub_1BF17A07C();
        v51 = [v49 dateFromString_];

        if (v51)
        {

          sub_1BF17945C();

          v52 = *(v44 + 32);
          v52(v21, v17, v45);
          return (v52)(v64, v21, v45);
        }

        sub_1BF05350C();
        swift_allocError();
        *v62 = v68;
        *(v62 + 8) = v47;
        *(v62 + 16) = v46;
        *(v62 + 80) = 8;
        swift_willThrow();
        break;
      default:
        v66 = &type metadata for _JSONDecoder;
        v67 = sub_1BF0172B8();
        v37 = swift_allocObject();
        v65[0] = v37;
        *(v37 + 48) = v68;
        *(v37 + 56) = a3;
        *(v37 + 16) = v22;
        *(v37 + 24) = v23;
        *(v37 + 32) = v24;
        *(v37 + 40) = 2;
        sub_1BF01716C(v22);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return sub_1BF17947C();
    }

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  if (v22 >> 61 != 2)
  {
    sub_1BF05350C();
    swift_allocError();
    v39 = 0xE600000000000000;
    v40 = 0x7463656A626FLL;
    switch(v22 >> 61)
    {
      case 1uLL:
        v39 = 0xE500000000000000;
        v40 = 0x7961727261;
        break;
      case 2uLL:
        v40 = 0x676E69727473;
        break;
      case 3uLL:
        v40 = 0x7265626D756ELL;
        break;
      case 4uLL:
        if (v22 == 0x8000000000000000)
        {
          v39 = 0xE400000000000000;
          v40 = 1702195828;
        }

        else if (v22 == 0x8000000000000008)
        {
          v39 = 0xE500000000000000;
          v40 = 0x65736C6166;
        }

        else
        {
          v39 = 0xE400000000000000;
          v40 = 1819047278;
        }

        break;
      default:
        break;
    }

    v61 = 0x676E69727473;
LABEL_45:
    *v38 = v68;
    *(v38 + 8) = v61;
    *(v38 + 16) = 0xE600000000000000;
    *(v38 + 24) = v40;
    *(v38 + 32) = v39;
LABEL_46:
    *(v38 + 80) = 10;
    swift_willThrow();
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  v27 = v19;
  v63 = v18;
  v28 = v22 & 0x1FFFFFFFFFFFFFFFLL;
  v30 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v29 = *(v28 + 24);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v31 = sub_1BF17A07C();
  v32 = [v23 dateFromString_];

  if (v32)
  {

    sub_1BF17945C();

    v33 = *(v27 + 32);
    v34 = v11;
    v35 = v63;
    v33(v14, v34, v63);
    return (v33)(v64, v14, v35);
  }

  else
  {
    sub_1BF05350C();
    swift_allocError();
    *v56 = v68;
    *(v56 + 8) = v23;
    *(v56 + 16) = v30;
    *(v56 + 24) = v29;
    *(v56 + 80) = 5;
    swift_willThrow();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    return sub_1BF01730C(v23, v24, 0);
  }
}

uint64_t sub_1BF052280(uint64_t a1, uint64_t a2)
{
  sub_1BF0524C4(a1, a2);

  return 0;
}

uint64_t sub_1BF0522E4()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 == 3)
  {
    v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
    v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *(v4 + 24);
    swift_bridgeObjectRetain_n();
    sub_1BF052280(v6, v5);
    if ((v7 & 1) == 0)
    {
    }

    sub_1BF05350C();
    swift_allocError();
    *v8 = v2;
    *(v8 + 8) = v6;
    *(v8 + 16) = v5;
    v9 = 13;
  }

  else
  {
    sub_1BF05350C();
    swift_allocError();
    v10 = 0xE600000000000000;
    v11 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v10 = 0xE500000000000000;
        v11 = 0x7961727261;
        break;
      case 2uLL:
        v11 = 0x676E69727473;
        break;
      case 3uLL:
        v11 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v10 = 0xE400000000000000;
        v11 = 1702195828;
        v13 = 0xE500000000000000;
        v14 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v14 = 1819047278;
          v13 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v11 = v14;
          v10 = v13;
        }

        break;
      default:
        break;
    }

    *v8 = v2;
    *(v8 + 8) = 0x7265626D756ELL;
    *(v8 + 16) = 0xE600000000000000;
    *(v8 + 24) = v11;
    v9 = 10;
    *(v8 + 32) = v10;
  }

  *(v8 + 80) = v9;
  swift_willThrow();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

BOOL sub_1BF0524C4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1BF17B1BC();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_1BF0525F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Version.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_11();
  sub_1BF17BBBC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    OUTLINED_FUNCTION_2_11();
    v6 = sub_1BF17B89C();
    v8 = v6;
    v9 = v7;
    sub_1BF024410(v6, v7, &v14);
    v10 = v14;
    if (v14)
    {
      v11 = v16;
      v13 = v15;

      __swift_destroy_boxed_opaque_existential_1(v17);
      *a2 = v10;
      *(a2 + 8) = v13;
      *(a2 + 24) = v11;
    }

    else
    {
      v14 = 0;
      *&v15 = 0xE000000000000000;
      sub_1BF17B1EC();

      v14 = 0xD00000000000001ELL;
      *&v15 = 0x80000001BF18F5F0;
      MEMORY[0x1BFB52000](v8, v9);

      MEMORY[0x1BFB52000](39, 0xE100000000000000);
      sub_1BF17B29C();
      swift_allocError();
      sub_1BF17B26C();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int sub_1BF0528C0(Swift::Int *a1)
{
  result = Stack.index(after:)(*a1);
  *a1 = result;
  return result;
}

void SafeishArray.init(from:)()
{
  OUTLINED_FUNCTION_25_11();
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v31 = v7;
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v8);
  v33 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_3();
  v32 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_1();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  v24 = v6[3];
  v23 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v24);
  Decoder.safeishUnkeyedContainer()(v24, v23, &v39);
  if (v0)
  {
    v28 = v6;
  }

  else
  {
    v36 = v19;
    v37 = v8;
    v30 = v6;
    v42 = sub_1BF17A56C();
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_1BF17B72C();
    if ((v25 & 1) == 0)
    {
      sub_1BF17A65C();
      OUTLINED_FUNCTION_14_24();
      sub_1BF17A52C();
    }

    v34 = (v32 + 16);
    v35 = (v32 + 32);
    v26 = (v32 + 8);
    v27 = (v33 + 8);
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v40, v41);
      if (sub_1BF17B74C())
      {
        break;
      }

      SafeishUnkeyedDecodingContainer.decode<A>(_:)();
      if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
      {
        (*v27)(v1, v37);
      }

      else
      {
        (*v35)(v22, v1, v4);
        (*v34)(v36, v22, v4);
        sub_1BF17A65C();
        OUTLINED_FUNCTION_14_24();
        sub_1BF17A5DC();
        (*v26)(v22, v4);
      }
    }

    sub_1BF053310(&v39);
    v28 = v30;
    *v31 = v42;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_24_1();
}

void (*sub_1BF052BF0(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  Stack.subscript.getter(a2, a3);
  return sub_1BF04619C;
}

void sub_1BF052CAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  SafeishArray.init(from:)();
}

void (*sub_1BF052CCC(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1BF052BF0(v6, *a2, a3);
  return sub_1BF0462C0;
}

uint64_t Stack.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = Stack.startIndex.getter(a2);
  result = Stack.endIndex.getter(a2);
  if (result < v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v6 > a1 || result <= a1)
  {
    goto LABEL_10;
  }

  v9 = *(a2 + 16);

  return sub_1BF17A69C();
}

void *sub_1BF052E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(void *__return_ptr, uint64_t, uint64_t)@<X2>, uint64_t (*a4)(void *, BOOL *)@<X3>, BOOL *a5@<X8>)
{
  v11 = sub_1BF17BBCC();
  v12 = Dictionary<>.disableSafeishSafety.getter(v11);

  result = a3(v14, a1, a2);
  if (!v5)
  {
    *a5 = (v12 & 1) == 0;
    return a4(v14, a5 + 8);
  }

  return result;
}

uint64_t Dictionary<>.disableSafeishSafety.getter(uint64_t a1)
{
  sub_1BF022610();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BF17B42C();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_48();
  result = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v15, v6, v7);
    v17 = sub_1BF05316C(a1, &v19);
    (*(v10 + 8))(v15, v7, v17);
    if (v20)
    {
      if (swift_dynamicCast())
      {
        return v18;
      }
    }

    else
    {
      sub_1BEFFD168(&v19);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BF053064()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = sub_1BF0CD3B0;
  }

  else
  {
    v10 = *(v3 + 72);

    v9 = sub_1BF0532DC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

double sub_1BF05316C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1BF022978(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1BF0075BC(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void SafeishUnkeyedDecodingContainer.decode<A>(_:)()
{
  v3 = OUTLINED_FUNCTION_11_23();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  OUTLINED_FUNCTION_21_13();
  sub_1BF17B73C();
  if (v2)
  {
    OUTLINED_FUNCTION_19_14();
    if (v5)
    {
      sub_1BF149F08(v0, v2);
      v6 = *(v1 + 40);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 8, *(v1 + 32));
      sub_1BF14A480();
      sub_1BF17B73C();

      OUTLINED_FUNCTION_2_59();
    }

    else
    {
      sub_1BF14A42C();
      OUTLINED_FUNCTION_26_10();
      *v7 = v2;
      swift_willThrow();
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_27();
  }
}

uint64_t sub_1BF05334C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF053388()
{
  result = sub_1BF17B9CC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF0533AC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 80);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_1BF168D70;
  }

  else
  {
    v7 = sub_1BF0534B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BF0534B0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_9();

  return v2();
}

unint64_t sub_1BF05350C()
{
  result = qword_1ED8EDB88;
  if (!qword_1ED8EDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDB88);
  }

  return result;
}

void SafeishSet.init(from:)()
{
  OUTLINED_FUNCTION_25_11();
  v48 = v3;
  v49 = v2;
  v5 = v4;
  v7 = v6;
  v40 = v8;
  v47 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v47);
  v43 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_2_3();
  v41 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_1();
  v19 = v17 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v38 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  v26 = v7[3];
  v27 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v26);
  Decoder.safeishUnkeyedContainer()(v26, v27, &v50);
  if (v0)
  {
    v37 = v7;
  }

  else
  {
    v28 = v48;
    v44 = v25;
    v45 = v23;
    v46 = v19;
    v29 = sub_1BF17A56C();
    if (sub_1BF17A5AC())
    {
      v30 = sub_1BF02C7D0(v29, v5, v28);
    }

    else
    {

      v30 = MEMORY[0x1E69E7CD0];
    }

    v31 = v43;
    v39 = v7;
    v53 = v30;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    sub_1BF17B72C();
    if ((v32 & 1) == 0)
    {
      sub_1BF17A9AC();
      OUTLINED_FUNCTION_14_24();
      sub_1BF17A91C();
    }

    v42 = (v41 + 16);
    v43 = (v41 + 32);
    v33 = (v41 + 8);
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v51, v52);
      if (sub_1BF17B74C())
      {
        break;
      }

      SafeishUnkeyedDecodingContainer.decode<A>(_:)();
      if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
      {
        (v31[1])(v1, v47);
      }

      else
      {
        v34 = v44;
        (*v43)(v44, v1, v5);
        (*v42)(v46, v34, v5);
        sub_1BF17A9AC();
        v35 = v45;
        sub_1BF17A94C();
        v36 = *v33;
        (*v33)(v35, v5);
        v36(v34, v5);
      }
    }

    sub_1BF053310(&v50);
    v37 = v39;
    *v40 = v53;
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  OUTLINED_FUNCTION_24_1();
}

void sub_1BF0538E4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[5];
  SafeishSet.init(from:)();
}

uint64_t sub_1BF053908()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 136);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  if (v0)
  {
    v7 = sub_1BF168DCC;
  }

  else
  {
    v7 = sub_1BF053A0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BF053A0C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v9 = v0[5];
  v8 = v0[6];

  (*(v4 + 16))(v3, v2, v7);
  OUTLINED_FUNCTION_125_0();
  swift_storeEnumTagMultiPayload();
  v9(v3);
  v10 = *(v6 + 8);
  v11 = OUTLINED_FUNCTION_125_0();
  v12(v11);
  (*(v4 + 8))(v2, v7);
  v13 = v0[15];
  v14 = v0[13];
  v15 = v0[9];

  OUTLINED_FUNCTION_9();

  return v16();
}

uint64_t sub_1BF053B14()
{
  v1 = sub_1BF17A12C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1BF053C98(v0[5], v0[5], v0[2], v0[3]);
  v5 = v4;
  sub_1BF17A10C();
  v6 = sub_1BF17A0CC();
  v8 = v7;
  sub_1BF014E18(v3, v5);
  if (v8)
  {
    return v6;
  }

  result = v0[5];
  v10 = v0[7];
  v11 = result - v10;
  if (!__OFSUB__(result, v10))
  {
    v12 = v0[6];
    v13 = sub_1BF053C98(result, v0[5], v0[2], v0[3]);
    v6 = v14;
    sub_1BF053D1C();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v11;
    *(v15 + 16) = v13;
    *(v15 + 24) = v6;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 12;
    swift_willThrow();
    return v6;
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_117()
{
  v2 = *(v0 + 16);

  UnfairLock.lock()();
}

uint64_t OUTLINED_FUNCTION_117_0()
{
  v2 = *(v0 - 88);

  return sub_1BF0A89BC();
}

uint64_t sub_1BF053C98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v5 = a3;
      v4 = a3 >> 32;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v5 > a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 + 1 < a1)
  {
LABEL_11:
    __break(1u);
    JUMPOUT(0x1BF053D0CLL);
  }

  return sub_1BF17930C();
}

unint64_t sub_1BF053D1C()
{
  result = qword_1ED8EC860[0];
  if (!qword_1ED8EC860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EC860);
  }

  return result;
}

uint64_t sub_1BF053D7C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1BF053DB4(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

char *Lazy.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 96);
  v5 = *(v1 + 80);
  v6 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 8))(&v0[v4]);
  OUTLINED_FUNCTION_29();
  v9 = *&v0[*(v8 + 104)];

  OUTLINED_FUNCTION_29();
  v11 = *&v0[*(v10 + 112)];

  return v0;
}

uint64_t sub_1BF053F28()
{
  OUTLINED_FUNCTION_0_82();
  result = OUTLINED_FUNCTION_3_49(v1, v2, v3, &v5);
  if (!v0)
  {
    return v5;
  }

  return result;
}

void sub_1BF053F60(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(), uint64_t a5)
{
  if (a2 >= 2u)
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v9 = swift_allocObject();
          v9[2] = a3;
          v9[3] = a4;
          v9[4] = a5;
          v10 = a3;
          a4 = sub_1BF0077B8;
        }
      }
    }

    (a4)(v11);
  }
}

uint64_t sub_1BF054138@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v36 = a2;
  v34 = a1;
  v11 = sub_1BF17AE6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  LOBYTE(v14) = *(v6 + 32);
  v16 = *(v6 + 5);
  v17 = v6[1];
  v37 = *v6;
  v38 = v17;
  v39 = v14;
  v40 = v16;
  result = sub_1BF018248(a3, a4, &v41);
  if (!v7)
  {
    v19 = v34;
    v32 = v12;
    v33 = v16;
    v20 = v35;
    v21 = v41;
    if (v41 >> 61 == 3)
    {
      v23 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v19(v23, v22);
      if (__swift_getEnumTagSinglePayload(v15, 1, a5) != 1)
      {
        sub_1BF017214(v21);

        return (*(*(a5 - 8) + 32))(v20, v15, a5);
      }

      (*(v32 + 8))(v15, v11);
      sub_1BF05350C();
      swift_allocError();
      *v24 = v33;
      *(v24 + 8) = v23;
      *(v24 + 16) = v22;
      *(v24 + 80) = 13;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v25 = v21;
    }

    else
    {
      v26 = v41;
      sub_1BF05350C();
      swift_allocError();
      v28 = v27;
      *v27 = v33;
      v29 = *(a4 + 16);
      v27[4] = v29;
      v27[5] = *(a4 + 24);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27 + 1);
      (*(*(v29 - 8) + 16))(boxed_opaque_existential_0, a3, v29);
      v28[6] = 0x7265626D756ELL;
      v28[7] = 0xE600000000000000;
      v28[8] = 0x7463656A626FLL;
      v28[9] = 0xE600000000000000;
      *(v28 + 80) = 11;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v25 = v26;
    }

    return sub_1BF017214(v25);
  }

  return result;
}

uint64_t sub_1BF0544D0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v28 = 0;
    v27 = 1;
LABEL_66:
    *a3 = v28;
    *(a3 + 8) = v27 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0750D8();
    v9 = v29;
    v27 = v30;

LABEL_63:
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v9;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v32 = v5;
        v27 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v31[0] = result;
  v31[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        v9 = 0;
        v24 = v31;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v9 = 0;
        v13 = v31 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      v9 = 0;
      v19 = v31 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1BF0547E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1BF05498C(a1, *(v1 + 24));
}

uint64_t sub_1BF0547F8(uint64_t a1, void *a2, void (*a3)(), uint64_t a4)
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 != a2)
  {
    if (qword_1ED8EFB98 != -1)
    {
      swift_once();
    }

    if (qword_1ED8EFC18 != a2 || ([objc_opt_self() isMainThread] & 1) == 0)
    {
      if (qword_1ED8EF920 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EF928 != a2 || [objc_opt_self() isMainThread])
      {
        v7 = swift_allocObject();
        v7[2] = a2;
        v7[3] = a3;
        v7[4] = a4;
        v8 = a2;
        a3 = sub_1BF0077B8;
      }
    }
  }

  (a3)(v9);
}

uint64_t sub_1BF054A58()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 80);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_1BF08B580;
  }

  else
  {
    v7 = sub_1BF054BC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BF054B5C()
{
  OUTLINED_FUNCTION_0_82();
  result = OUTLINED_FUNCTION_3_49(v1, v2, v3, &v5);
  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1BF054BC8()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = *(v0[3] + 16);
  v5 = sub_1BF014A1C(v1);
  v5();

  (*(v2 + 8))(v1, v3);
  v6 = v0[9];
  v7 = v0[6];

  OUTLINED_FUNCTION_9();

  return v8();
}

uint64_t sub_1BF054C78@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    LOBYTE(v5) = 1;
LABEL_66:
    *a3 = v7;
    *(a3 + 4) = v5 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF076170();
    v9 = v27;

    v5 = HIDWORD(v9) & 1;
LABEL_63:
    if (v5)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      LODWORD(v7) = v9;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          LODWORD(v9) = 0;
          if (result)
          {
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if (v18 != v18)
              {
                goto LABEL_61;
              }

              LODWORD(v9) = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        LODWORD(v9) = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if (v23 != v23)
            {
              goto LABEL_61;
            }

            LODWORD(v9) = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v9) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LODWORD(v9) = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if (v12 != v12)
            {
              goto LABEL_61;
            }

            LODWORD(v9) = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v29 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LODWORD(v9) = 0;
        v24 = v28;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if (v26 != v26)
          {
            break;
          }

          LODWORD(v9) = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LODWORD(v9) = 0;
        v13 = v28 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if (v15 != v15)
          {
            break;
          }

          LODWORD(v9) = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LODWORD(v9) = 0;
      v19 = v28 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if (v21 != v21)
        {
          break;
        }

        LODWORD(v9) = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

void sub_1BF054F54(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        return;
      case 2:
        *&a1[v10] = v15;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x1BF055124);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v7 < 0x7FFFFFFF)
        {
          v17 = (&a1[v9 + 31] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v17 = a2 & 0x7FFFFFFF;
            v17[1] = 0;
          }

          else
          {
            v17[1] = (a2 - 1);
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_1BF05514C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v8);
        if (v14)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1BF055288);
      case 4:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

LABEL_22:
        v16 = v14 - 1;
        if (v10)
        {
          v16 = 0;
          LODWORD(v10) = *a1;
        }

        return v7 + (v10 | v16) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *(((a1 + v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t Reference.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for Reference();
  OUTLINED_FUNCTION_1(v4);
  v26 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ReferenceDecodingContainer();
  OUTLINED_FUNCTION_1(v11);
  v25 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF055D70(v17);
  if (!v2)
  {
    v19 = v25;
    v20 = v26;
    v24 = v4;
    v21 = v27;
    ReferenceDecodingContainer.decode()(v11, v10);
    (*(v19 + 8))(v17, v11);
    (*(v20 + 32))(v21, v10, v24);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1BF0554D0()
{
  if (!qword_1ED8E9B98)
  {
    sub_1BF0556D0();
    v0 = sub_1BF17B63C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9B98);
    }
  }
}

Swift::Void __swiftcall SyncObservable.triggerObservers()()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v9 - v7;
  sub_1BF17A75C();
  OUTLINED_FUNCTION_0_30();
  sub_1BF17B15C();
  SyncObservable.uncheckedValue.getter();
  sub_1BF028388(v8);
  (*(v3 + 8))(v8, v1);
}

void sub_1BF055634()
{
  sub_1BF0554D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ReferenceDecodingPool();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BF0556D0()
{
  result = qword_1ED8EA280;
  if (!qword_1ED8EA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA280);
  }

  return result;
}

uint64_t Node.value.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_47();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_26_4();
  return (*(*(*(v2 + 80) - 8) + 16))(a1, v1 + v5);
}

uint64_t Node.next.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_26_4();
  v3 = *(v0 + v2);
}

unint64_t sub_1BF055830()
{
  result = qword_1ED8EA270;
  if (!qword_1ED8EA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA270);
  }

  return result;
}

uint64_t Collection.safe.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_1(a1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v2, a1);
  return SafeCollection.init(_:)(v9, a1, a2);
}

uint64_t Node.__deallocating_deinit()
{
  Node.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t SafeCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1BF055C60(a1, a2) < 0 || sub_1BF056074(a1, a2) < 1)
  {
    v14 = *(a2 + 16);
    v15 = *(*(a2 + 24) + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = sub_1BF17ABFC();
    v10 = v9;
    v11 = *(v6 + 8);
    v12 = swift_getAssociatedTypeWitness();
    (*(*(v12 - 8) + 16))(a3, v10, v12);
    v8(&v17, 0);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v12);
  }
}

uint64_t Node.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 104);
  swift_weakDestroy();
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 96);
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  if (v5)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      OUTLINED_FUNCTION_4_0();
      v7 = *(v5 + *(v6 + 96));
      swift_retain_n();

      v5 = v7;
    }

    while (v7);
  }

  return v0;
}

unint64_t sub_1BF055C0C()
{
  result = qword_1ED8EA278;
  if (!qword_1ED8EA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA278);
  }

  return result;
}

uint64_t sub_1BF055C60(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  sub_1BF17A9EC();
  v9 = sub_1BF17AA8C();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v9;
}

uint64_t sub_1BF055D70@<X0>(uint64_t a1@<X8>)
{
  sub_1BF0554D0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  sub_1BF022610();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_1BF17B42C();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = sub_1BF17BBCC();
  OUTLINED_FUNCTION_1_38();
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v14 + 32))(v19, v10, v11);
  sub_1BF05316C(v20, &v26);

  (*(v14 + 8))(v19, v11);
  if (!v27)
  {
    sub_1BEFFD168(&v26);
    goto LABEL_7;
  }

  type metadata accessor for ReferenceDecodingPool();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_1BF0B5F00();
    swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 2;
    return swift_willThrow();
  }

  sub_1BF0556D0();
  sub_1BF17BBDC();
  if (v24)
  {
  }

  else
  {
    return sub_1BF055FF0(v5, v25, a1);
  }
}

uint64_t sub_1BF055FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BF0554D0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ReferenceDecodingContainer();
  *(a3 + *(result + 28)) = a2;
  return result;
}

uint64_t sub_1BF056074(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  sub_1BF17AA9C();
  v9 = sub_1BF17AA8C();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v9;
}

uint64_t ReferenceDecodingContainer.decode()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - v14;
  v47 = 0;
  sub_1BF0554D0();
  sub_1BF0483C4();
  result = OUTLINED_FUNCTION_0_27();
  if (!v3)
  {
    v40 = v10;
    v41 = v13;
    v42 = v6;
    v18 = v43;
    v17 = v44;
    v19 = v45;
    v47 = 1;
    sub_1BF056444();
    OUTLINED_FUNCTION_0_27();
    v20 = v44;
    v21 = v45;
    v22 = *(v2 + *(a1 + 28));
    if (v46)
    {
      v39 = v45;
      v44 = v17;
      v45 = v19;
      v23 = v17;
      v24 = v5;
      v25 = v20;
      sub_1BF0BCB00(&v44, v20, v24, v40);
      v26 = v41;
      v30 = OUTLINED_FUNCTION_1_23();
      v31(v30);
      v44 = v23;
      v45 = v19;
      v32 = v18;
      v33 = v26;
      v34 = v25;
      v35 = v39;
      v36 = 1;
    }

    else
    {
      v44 = v17;
      v45 = v19;
      v40 = v17;
      v24 = v5;
      v27 = v20;
      v28 = v21;
      sub_1BF0575FC(&v44, v20, v21, v24, v15);
      v29 = v41;
      v37 = OUTLINED_FUNCTION_1_23();
      v38(v37);
      v44 = v40;
      v45 = v19;
      v32 = v18;
      v33 = v29;
      v34 = v27;
      v35 = v28;
      v36 = 0;
    }

    return sub_1BF057818(v33, &v44, v34, v35, v36, v24, v32);
  }

  return result;
}

uint64_t sub_1BF056410(char a1)
{
  if (a1)
  {
    return 0x656E6961746E6F63;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t sub_1BF056444()
{
  result = qword_1ED8EA3E8;
  if (!qword_1ED8EA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA3E8);
  }

  return result;
}

uint64_t sub_1BF056498(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0564D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = UniqueCollection.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BF056500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF056544()
{
  OUTLINED_FUNCTION_76();
  v2 = type metadata accessor for Result();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v12 - v8;
  *(&v12 - v8) = v1;
  swift_storeEnumTagMultiPayload();
  v10 = v1;
  v0(v9);
  return (*(v5 + 8))(v9, v2);
}

BOOL isNilOrEmpty(_:trim:)(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_0_78();
  sub_1BF056800(0, v5, v6, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_3_47();
  v9 = sub_1BF178D8C();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 1;
  }

  v17 = OUTLINED_FUNCTION_49();
  sub_1BF056B28(v17, v18);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    OUTLINED_FUNCTION_0_78();
    sub_1BF1529A8(v2, v19, v20);
    v21 = HIBYTE(a2) & 0xF;
    v22 = a1 & 0xFFFFFFFFFFFFLL;
    v23 = (a2 & 0x2000000000000000) == 0;
  }

  else
  {
    (*(v12 + 32))(v16, v2, v9);
    v28[0] = a1;
    v28[1] = a2;
    sub_1BF013170();
    v25 = sub_1BF17AF4C();
    v27 = v26;
    (*(v12 + 8))(v16, v9);

    v21 = HIBYTE(v27) & 0xF;
    v22 = v25 & 0xFFFFFFFFFFFFLL;
    v23 = (v27 & 0x2000000000000000) == 0;
  }

  if (v23)
  {
    v21 = v22;
  }

  return v21 == 0;
}

void sub_1BF056800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BF056864(uint64_t *a1)
{
  sub_1BF056AC4(0, &qword_1ED8E9BA8, MEMORY[0x1E69E6F48]);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF056BF0();
  sub_1BF17BBDC();
  if (!v1)
  {
    sub_1BF0570A4();
    sub_1BF17B5FC();
    if (v15)
    {
      sub_1BF02027C();
      sub_1BF077D6C(&qword_1ED8E9C38);
      sub_1BF17B5FC();
      v10 = OUTLINED_FUNCTION_0_7();
      v11(v10);
      v8 = v14;
    }

    else
    {
      v8 = sub_1BF17B5CC();
      v12 = OUTLINED_FUNCTION_0_7();
      v13(v12);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1BF056AA4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  return sub_1BF056544();
}

void sub_1BF056AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF056BF0();
    v7 = a3(a1, &type metadata for ReferenceContainer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF056B28(uint64_t a1, uint64_t a2)
{
  sub_1BF056800(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF056BBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BF056864(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1BF056BF0()
{
  result = qword_1ED8EA420;
  if (!qword_1ED8EA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA420);
  }

  return result;
}

BOOL Locale.shouldSwapPriceChangeColors.getter()
{
  v1 = sub_1BF1795AC();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_14();
  OUTLINED_FUNCTION_0_39();
  sub_1BF042FE0(0, v7, v8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22[-v11];
  sub_1BF1795BC();
  sub_1BF17959C();
  (*(v4 + 8))(v0, v1);
  v13 = sub_1BF17954C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    OUTLINED_FUNCTION_0_39();
    sub_1BF0C83E0(v12, v14, v15);
    return 0;
  }

  else
  {
    v17 = sub_1BF17951C();
    v19 = v18;
    (*(*(v13 - 8) + 8))(v12, v13);
    sub_1BF056EFC(0, &qword_1ED8EF220, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF1805A0;
    *(inited + 32) = 20035;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = 22356;
    *(inited + 56) = 0xE200000000000000;
    *(inited + 64) = 21067;
    *(inited + 72) = 0xE200000000000000;
    v23[0] = v17;
    v23[1] = v19;
    MEMORY[0x1EEE9AC00](inited);
    *&v22[-16] = v23;
    v16 = sub_1BF056FF4(sub_1BF014764, &v22[-32], inited);
    swift_setDeallocating();
    sub_1BF057128();
  }

  return v16;
}

unint64_t sub_1BF056EA4()
{
  result = qword_1ED8EA410;
  if (!qword_1ED8EA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA410);
  }

  return result;
}

void sub_1BF056EFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BF056F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BF056FA0()
{
  result = qword_1ED8EA418;
  if (!qword_1ED8EA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA418);
  }

  return result;
}

BOOL sub_1BF056FF4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
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

unint64_t sub_1BF0570A4()
{
  result = qword_1ED8EA3F8;
  if (!qword_1ED8EA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA3F8);
  }

  return result;
}

uint64_t sub_1BF057100(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1BF057128()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

_BYTE *sub_1BF057164(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1BF057230);
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

unint64_t sub_1BF0572B8()
{
  result = qword_1ED8EA400;
  if (!qword_1ED8EA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA400);
  }

  return result;
}

uint64_t sub_1BF05730C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BF05734C();
  *a2 = result;
  return result;
}

uint64_t sub_1BF05734C()
{
  v0 = sub_1BF17B57C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF05739C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1BF1794FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF1794EC();
  sub_1BF1794BC();
  (*(v8 + 8))(v11, v7);
  v12 = sub_1BF17A07C();

  v13 = sub_1BF0575F4();
  [v13 setObject:v12 forKey:a1];

  v14 = *(v6 + 80);
  v15 = *(v6 + 88);
  swift_getTupleTypeMetadata2();
  type metadata accessor for Promise();
  v19 = a2;
  v20 = v3;
  v21 = a1;
  v22 = v12;
  v16 = Promise.__allocating_init(resolver:)();

  return v16;
}

uint64_t getEnumTagSinglePayload for StartupTaskManager.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1BF0575FC@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a5;
  v10 = sub_1BF17AE6C();
  v11 = OUTLINED_FUNCTION_1(v10);
  v37 = v12;
  v38 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - v15;
  v18 = *a1;
  v17 = a1[1];
  swift_beginAccess();
  v19 = *(v5 + 16);
  v20 = OUTLINED_FUNCTION_8_13();
  v23 = sub_1BF04FEBC(v20, v21, v22);
  if (v23)
  {
    v24 = v23;
    swift_endAccess();
    sub_1BF0243AC(v24, &v40);

    if (v41)
    {
      sub_1BEFF9A40(&v40, v42);
      sub_1BEFF9A40(v42, &v40);
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_13_10();
        __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
        OUTLINED_FUNCTION_20(a4);
        return (*(v29 + 32))(v39, v16, a4);
      }

      OUTLINED_FUNCTION_13_10();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
      (*(v37 + 8))(v16, v38);
    }

    else
    {
      sub_1BEFFD168(&v40);
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_1BF0B5F00();
  swift_allocError();
  *v35 = v18;
  *(v35 + 8) = v17;
  *(v35 + 16) = a2;
  *(v35 + 24) = a3;
  *(v35 + 32) = 0;
  swift_willThrow();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF057818@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for Reference();
  v14 = (a7 + *(result + 32));
  *v14 = v11;
  v14[1] = v12;
  v15 = a7 + *(result + 28);
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5 & 1;
  return result;
}

uint64_t (*sub_1BF057A7C(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0979F4;
}

uint64_t (*sub_1BF057B18(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF05E03C;
}

uint64_t sub_1BF057BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, void *a10)
{
  v12 = *a7;
  v13 = *a8;
  v14 = swift_allocObject();
  v15 = *(v13 + 80);
  v14[2] = v15;
  v16 = *(v12 + 80);
  v14[3] = v16;
  v14[4] = a1;
  v14[5] = a2;
  v17 = qword_1ED8EFB98;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v18;
  v20[5] = v19;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = a10;
  v20[9] = sub_1BF0589F4;
  v20[10] = v14;

  v21 = a10;
  Promise.then<A>(on:closure:)();

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v15;
  v24[3] = v16;
  v24[4] = v22;
  v24[5] = v23;
  v24[6] = a5;
  v24[7] = a6;
  v24[8] = v21;
  v24[9] = a3;
  v24[10] = a4;
  v25 = qword_1ED8F0210;

  v26 = v21;

  if (v25 != -1)
  {
    swift_once();
  }

  sub_1BEFF77FC();
}

uint64_t sub_1BF057EA8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF057EE0()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF057F10()
{
  MEMORY[0x1BFB548B0](v0 + 16);
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

double sub_1BF057F48(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 5);
  v6 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 32);
  sub_1BF054138(sub_1BF057FC0, 0, a1, a2, MEMORY[0x1E69E63B0], &v9);
  if (!v3)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1BF057FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  LOBYTE(a1) = sub_1BF0524C4(a1, a2);

  *a3 = 0;
  *(a3 + 8) = (a1 & 1) == 0;
  return result;
}

uint64_t sub_1BF058064()
{
  result = sub_1BF17B9BC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF058088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = swift_allocObject();
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = a4;
    sub_1BF02D578(nullsub_1, v8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CachePolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF0581A0()
{
  sub_1BF022610();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BF17B42C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    swift_beginAccess();
    sub_1BF058344(v8, v10, v11, v12, v13, v14, v15, v16, v17[0], v17[1]);
    (*(v5 + 8))(v8, v4);
    sub_1BEFFD168(v18);
    return swift_endAccess();
  }

  return result;
}

void sub_1BF058344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_51_0();
  sub_1BF022978();
  if (v13)
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_9_7();
    sub_1BF022B54();
    OUTLINED_FUNCTION_21_3();
    v14 = *(a10 + 48);
    v15 = sub_1BF17B42C();
    OUTLINED_FUNCTION_12(v15);
    (*(v16 + 8))(v14 + *(v16 + 72) * v12, v15);
    OUTLINED_FUNCTION_64();
    sub_1BF17B45C();
    *v10 = a10;
  }

  else
  {
    *v11 = 0u;
    v11[1] = 0u;
  }

  OUTLINED_FUNCTION_85_0();
}

uint64_t getEnumTagSinglePayload for CachePolicy(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t Sequence<>.throwingConcurrentMap<A>(_:)()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_31_7(v1, v2, v3, v4, v5);
  v0[10] = swift_getTupleTypeMetadata2();
  v6 = sub_1BF17AE6C();
  v0[11] = v6;
  OUTLINED_FUNCTION_6_3(v6);
  v0[12] = v7;
  v9 = *(v8 + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v10 = sub_1BF17AE6C();
  v0[15] = v10;
  OUTLINED_FUNCTION_6_3(v10);
  v0[16] = v11;
  v13 = *(v12 + 64);
  v0[17] = OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_40();
  v14 = sub_1BF17B4FC();
  v0[18] = v14;
  OUTLINED_FUNCTION_6_3(v14);
  v0[19] = v15;
  v17 = *(v16 + 64);
  v0[20] = OUTLINED_FUNCTION_24();
  v18 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1BF0585CC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_46();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_49_3(v5);
  OUTLINED_FUNCTION_46();
  v6 = swift_allocObject();
  *(v2 + 168) = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v1;
  v6[5] = &unk_1BF182868;
  v6[6] = v0;

  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_14_13(v7);
  *v1 = v2;
  OUTLINED_FUNCTION_45_3();

  return Sequence<>.throwingUnorderedConcurrentMap<A>(_:)(&unk_1BF182878, v6, v8, v9, v10);
}

uint64_t sub_1BF0586E0()
{
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF058718(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v17 - v14;
  *(&v17 - v14) = a1;
  (*(*(a6 - 8) + 16))(&v17 + *(v13 + 48) - v14, a2, a6);
  swift_unknownObjectRetain();
  a3(v15);
  return (*(v11 + 8))(v15, TupleTypeMetadata2);
}

void sub_1BF058850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_1_59();
  sub_1BF05887C(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1BF05887C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {

LABEL_7:
    (a4)(Strong);
    return;
  }

  v12 = v11;
  v15 = a7;
  v13 = sub_1BF0575F4();
  v14 = [v13 objectForKey_];

  if (v14)
  {
    sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);
    if (sub_1BF17ADEC())
    {
      v15(v12, a1);

      swift_unknownObjectRelease();

      return;
    }
  }

  a4();

  swift_unknownObjectRelease();
}

uint64_t sub_1BF058A18(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for UnsafeLazy.Loader();
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

uint64_t sub_1BF058ADC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a2;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1BF0594C8;

  return v10(a1, a3);
}

uint64_t sub_1BF058BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_22();
  v11 = *(v10 + 48);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4(v12);
  *v13 = v14;
  v13[1] = sub_1BF035DD0;
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_35_4();

  return v22(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

void sub_1BF058C88(uint64_t a1)
{
  sub_1BEFF0B78();
  if (v2 <= 0x3F)
  {
    sub_1BF058D14();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BF058D14()
{
  if (!qword_1ED8EAD30)
  {
    sub_1BEFF0B78();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EAD30);
    }
  }
}

uint64_t sub_1BF058D7C(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = v3;
  *(v6 + 16) = a1;
  v8 = *a2;
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v14 = (a3 + *a3);
  v11 = a3[1];
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1BF0596A8;

  return v14(a1 + v10, v8, a2 + v9);
}

uint64_t sub_1BF058F1C()
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_32_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_20_8(v1);
  OUTLINED_FUNCTION_35_4();

  return sub_1BF058ADC(v3, v4, v5, v6);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t UnsafeLazy.__allocating_init(loadBlock:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 80);
  v7 = type metadata accessor for UnsafeLazy.Loader();
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_24();
  *v3 = a1;
  v3[1] = a2;
  swift_storeEnumTagMultiPayload();
  return sub_1BF0590BC(v3);
}

uint64_t sub_1BF0590BC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1BF0590F8(a1);
}

uint64_t sub_1BF0590F8(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  swift_getFunctionTypeMetadata1();
  *(v1 + v3) = sub_1BF179CFC();
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for UnsafeLazy.Loader();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

void sub_1BF0591E0()
{
  OUTLINED_FUNCTION_32();
  v35 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_29();
  v7 = *(v6 + 80);
  v8 = OUTLINED_FUNCTION_13_17();
  v9 = OUTLINED_FUNCTION_1(v8);
  v34 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = *(v0 + 16);
  UnfairLock.lock()();
  v20 = swift_allocObject();
  v20[2] = v7;
  v20[3] = v5;
  v33 = v3;
  v20[4] = v3;
  v21 = v34;
  v22 = v35;
  v20[5] = v35;
  v23 = v5;

  sub_1BF005C4C(sub_1BF0EFB38, v20, v18);
  v24 = v8;
  v25 = v36;

  os_unfair_lock_unlock(*(v19 + 16));
  (*(v21 + 16))(v15, v18, v24);
  if (__swift_getEnumTagSinglePayload(v15, 1, v25) == 1)
  {
    v26 = OUTLINED_FUNCTION_5_26();
    v27(v26);
  }

  else if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_1BF006210(v23, v33, v22);
    OUTLINED_FUNCTION_11_16();
    v31 = OUTLINED_FUNCTION_5_26();
    v32(v31);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_5_26();
    v29(v28);
    OUTLINED_FUNCTION_20(v25);
    (*(v30 + 8))(v15, v25);
  }

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_26_2();
}

char *UnsafeLazy.deinit()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  v3 = *(v2 + 88);
  v5 = *(v4 + 80);
  v6 = type metadata accessor for UnsafeLazy.Loader();
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 8))(&v0[v3]);
  OUTLINED_FUNCTION_29();
  v9 = *&v0[*(v8 + 96)];

  return v0;
}

uint64_t sub_1BF0594C8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  v10 = *(v7 + 8);
  if (!v0)
  {
    v9 = *(v3 + 16);
  }

  return v10(v9);
}

uint64_t sub_1BF0595BC()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1BF0596A8()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1BF0597A4()
{
  v2 = v0[23];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[7];
  v9 = OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
  sub_1BF17A5AC();
  v11 = sub_1BF17A64C();
  v77 = v11;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v12 = sub_1BF17A4EC();

  OUTLINED_FUNCTION_33_5();
  while (1)
  {
    v13 = v0[23];
    v14 = v0[10];
    v15 = sub_1BF17A5AC();
    v16 = v0[10];
    if (v12 == v15)
    {
      v17 = v0[13];
      v18 = 1;
    }

    else
    {
      v19 = v0[23];
      v20 = v0[10];
      sub_1BF17A58C();
      OUTLINED_FUNCTION_44_1();
      v21 = v0[23];
      if (v7)
      {
        v22 = OUTLINED_FUNCTION_52_3();
        (*(v23 + 16))(v22, v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v12);
      }

      else
      {
        v54 = v0[10];
        result = sub_1BF17B23C();
        if (*(*v1 + 64) != 8)
        {
          __break(1u);
          return result;
        }

        v56 = OUTLINED_FUNCTION_29_6(result);
        v57(v56);
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_43_2();
      v17 = v12;
      v18 = 0;
    }

    __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
    v25 = OUTLINED_FUNCTION_50_2();
    v26(v25);
    v27 = OUTLINED_FUNCTION_27_6();
    v29 = OUTLINED_FUNCTION_51_2(v27, v28, v16);
    if (v37)
    {
      break;
    }

    OUTLINED_FUNCTION_25_6(v29, v30, v31, v32, v33, v34, v35, v36, v68, v70, v73);
    (*(v38 + 32))(v16, v39 + v40, v12);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v12);
    OUTLINED_FUNCTION_39_0();
    sub_1BF17A65C();
    v44 = sub_1BF17A55C();
    OUTLINED_FUNCTION_58_2(v44, v45, v46, v47, v48, v49, v50, v51, v69, v71, v74, v76, v77);
    v52 = OUTLINED_FUNCTION_19_8();
    v53(v52);
    v12 = v78;
  }

  v58 = v0[23];
  v59 = v0[24];
  v60 = v0[20];
  v61 = v0[17];
  v62 = v0[14];
  v63 = v0[15];
  v72 = v0[13];
  v64 = v0[6];
  v75 = *(v0 + 7);

  v0[3] = v11;
  v65 = swift_task_alloc();
  *(v65 + 16) = v64;
  *(v65 + 24) = v75;
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  sub_1BF17A38C();
  swift_bridgeObjectRelease_n();

  v66 = OUTLINED_FUNCTION_34_3();

  return v67(v66);
}

uint64_t sub_1BF059AFC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 5);
  v17 = *v2;
  v18 = v2[1];
  v19 = *(v2 + 32);
  sub_1BF018248(a1, a2, &v20);
  if (!v3)
  {
    v7 = v20;
    v8 = v20 >> 61;
    if (v20 >> 61 == 2)
    {
      v6 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF017214(v7);
    }

    else
    {
      sub_1BF05350C();
      swift_allocError();
      v11 = v10;
      *v10 = v6;
      v12 = *(a2 + 16);
      v10[4] = v12;
      v10[5] = *(a2 + 24);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10 + 1);
      (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a1, v12);
      v14 = 0xE600000000000000;
      v11[6] = 0x676E69727453;
      v11[7] = 0xE600000000000000;
      v15 = 0x7463656A626FLL;
      switch(v8)
      {
        case 1uLL:
          v14 = 0xE500000000000000;
          v15 = 0x7961727261;
          break;
        case 2uLL:
          v15 = 0x676E69727473;
          break;
        case 3uLL:
          v15 = 0x7265626D756ELL;
          break;
        case 4uLL:
          if (v7 == 0x8000000000000000)
          {
            v14 = 0xE400000000000000;
            v15 = 1702195828;
          }

          else if (v7 == 0x8000000000000008)
          {
            v14 = 0xE500000000000000;
            v15 = 0x65736C6166;
          }

          else
          {
            v14 = 0xE400000000000000;
            v15 = 1819047278;
          }

          break;
        default:
          break;
      }

      v11[8] = v15;
      v11[9] = v14;
      *(v11 + 80) = 11;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF017214(v7);
    }
  }

  return v6;
}

uint64_t sub_1BF059D0C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = v4[22];
  v6 = v4[21];
  v7 = v4[20];
  v8 = v4[19];
  v9 = v4[18];
  v10 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;
  *(v13 + 184) = v12;
  *(v13 + 192) = v0;

  (*(v8 + 8))(v7, v9);

  if (v0)
  {
    v14 = sub_1BF0CD32C;
  }

  else
  {
    v14 = sub_1BF0597A4;
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

uint64_t OUTLINED_FUNCTION_50_2()
{
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = *v1;
  return v0[14];
}

uint64_t sub_1BF059F04(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1BF059F74(a1);
}

uint64_t sub_1BF059F20(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BF059F74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return sub_1BF17BCCC();
}

uint64_t sub_1BF059FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1BF05A010(a1, a2);
}

uint64_t ReferenceDecodingPool.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t ReferenceEncodingPool.__deallocating_deinit()
{
  ReferenceEncodingPool.deinit();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ReferenceEncodingPool.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ReferenceDecoder.__deallocating_deinit()
{
  v0 = _TeaJSONDecoder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1BF05A158()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];
  v2 = *(MEMORY[0x1E69E88F0] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  *v3 = v0;
  v3[1] = sub_1BF17335C;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x1EEE6DE18](v5, &unk_1BF18BC10, v6, j___s13TeaFoundation23OnlyOnceDeferredPromiseC6cancelyyF_0, v6, 0, 0, v4);
}

uint64_t sub_1BF05A228()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BF17362C;

  return sub_1BF05A908(v3, v0);
}

uint64_t sub_1BF05A2C0()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v0[7] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1BF17349C;
    v5 = v0[5];

    return Promise.resolveAsync()(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall Date.gregorianMediumDisplayString()()
{
  OUTLINED_FUNCTION_2_23();
  sub_1BF00EAF0(0, v2, v3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v7);
  v57 = OUTLINED_FUNCTION_27_4(v8, v55);
  v9 = OUTLINED_FUNCTION_1(v57);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_20_6();
  v14 = sub_1BF17907C();
  v15 = OUTLINED_FUNCTION_1(v14);
  v58 = v16;
  v59 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v21 = (v20 - v19);
  if (qword_1ED8EBA18 != -1)
  {
    OUTLINED_FUNCTION_13_12();
  }

  v22 = sub_1BF17965C();
  __swift_project_value_buffer(v22, qword_1ED8EBA20);
  OUTLINED_FUNCTION_8_16();
  sub_1BF00EAF0(0, v23, v24, MEMORY[0x1E69E6F90]);
  v25 = sub_1BF17964C();
  OUTLINED_FUNCTION_1(v25);
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = OUTLINED_FUNCTION_18_6();
  *(v30 + 16) = xmmword_1BF17EBE0;
  v31 = v30 + v1;
  v32 = *(v27 + 104);
  v32(v31, *MEMORY[0x1E6969A88], v25);
  v32(v29 + v31, *MEMORY[0x1E6969A58], v25);
  v32(v31 + 2 * v29, *MEMORY[0x1E6969A48], v25);
  v32(v31 + 3 * v29, *MEMORY[0x1E6969A10], v25);
  v32(v31 + 4 * v29, *MEMORY[0x1E6969A68], v25);
  sub_1BF05B4F4(v30);
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  OUTLINED_FUNCTION_29_5();

  (*(v11 + 8))(v0, v57);
  ObjCClassFromMetadata = v21;
  sub_1BF178FEC();
  v34 = v21;
  if ((v35 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v36 ^ v37))
  {
    ObjCClassFromMetadata = v21;
    sub_1BF178F7C();
    if ((v39 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v36 ^ v37))
    {
      ObjCClassFromMetadata = v21;
      sub_1BF178FAC();
      if ((v40 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v36 ^ v37))
      {
        ObjCClassFromMetadata = v21;
        sub_1BF178FCC();
        if ((v41 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v36 ^ v37))
        {
          ObjCClassFromMetadata = v21;
          sub_1BF17902C();
          if ((v42 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v36 ^ v37))
          {
            type metadata accessor for Localized();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v53 = [objc_opt_self() bundleForClass_];
            OUTLINED_FUNCTION_11_9();
            OUTLINED_FUNCTION_31_5();

            goto LABEL_29;
          }

          if (qword_1ED8ECA50 != -1)
          {
            swift_once();
          }

          v38 = &qword_1ED8ECA58;
        }

        else
        {
          if (qword_1ED8ECAC0 != -1)
          {
            swift_once();
          }

          v38 = &qword_1ED8ECAC8;
        }
      }

      else
      {
        if (qword_1ED8ECAE0 != -1)
        {
          swift_once();
        }

        v38 = &qword_1ED8ECAE8;
      }
    }

    else
    {
      if (qword_1ED8ECA90 != -1)
      {
        swift_once();
      }

      v38 = &qword_1ED8ECA98;
    }
  }

  else
  {
    if (qword_1ED8ECA70 != -1)
    {
      swift_once();
    }

    v38 = &qword_1ED8ECA78;
  }

  v21 = *v38;
  v43 = v38[1];
  sub_1BF17955C();
  v44 = sub_1BF1795CC();
  OUTLINED_FUNCTION_33_3(v44);
  OUTLINED_FUNCTION_9_16();
  sub_1BF00EAF0(0, v45, v46, MEMORY[0x1E69E6F90]);
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E6530];
  *(v47 + 16) = xmmword_1BF17DEF0;
  OUTLINED_FUNCTION_26_5(v47, v48);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_2_23();
  sub_1BF05AC80(v56, v49, v50);
LABEL_29:
  (*(v58 + 8))(v34, v59);
  v51 = ObjCClassFromMetadata;
  v52 = v21;
  result._object = v52;
  result._countAndFlagsBits = v51;
  return result;
}

uint64_t sub_1BF05A908(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF05A2C0, 0, 0);
}

unint64_t sub_1BF05A928()
{
  result = qword_1ED8EE990;
  if (!qword_1ED8EE990)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8EE990);
  }

  return result;
}

void UniqueCollection.insert(_:at:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_2_3();
  v41 = v8;
  v42 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v40 = v13 - v12;
  OUTLINED_FUNCTION_40();
  v14 = sub_1BF17AE6C();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_1();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  v24 = *(v3 + 32);
  v25 = *(v24 + 8);
  v44 = v5;
  v26 = v25;
  v27 = v25(v6, v24);
  LODWORD(v3) = v28;
  v43 = v1;
  v29 = *(v1 + 8);
  v45 = v27;
  v46 = v28;
  sub_1BF179EAC();

  OUTLINED_FUNCTION_25_8(v23);
  v30(v23, v14);
  if (v3 == 1)
  {
    v31 = v26(v6, v24);
    v33 = v32;
    v34 = *(v41 + 16);
    OUTLINED_FUNCTION_20_11();
    v34(v35);
    OUTLINED_FUNCTION_27_7(v20);
    v45 = v31;
    v46 = v33;
    OUTLINED_FUNCTION_30_6();
    sub_1BF179EBC();
    OUTLINED_FUNCTION_20_11();
    v34(v36);
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5EC();
  }

  else
  {
    v37 = v44;
    if (qword_1ED8F01C8 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    v38 = byte_1ED8F52C8;
    sub_1BF071C70();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    v26(v6, v24);
    OUTLINED_FUNCTION_31_0();
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1BF071CD8();
    *(inited + 32) = v6;
    *(inited + 40) = v37;
    if (v38 != 1)
    {
      OUTLINED_FUNCTION_28_7("collection must contain unique elements, duplicate=%{public}@");
    }

    swift_setDeallocating();
    sub_1BF0C8384();
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF05AC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF00EAF0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t zippedMap<A, B, C>(_:_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v38 = a7;
  v39 = a4;
  v37 = a3;
  v34 = a9;
  v35 = a8;
  v48 = a5;
  v49 = a6;
  v50 = a8;
  v51 = a9;
  v11 = sub_1BF17B22C();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v34 - v17;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1BF17B4FC();
  v21 = OUTLINED_FUNCTION_1(v20);
  v36 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v34 - v25;
  v27 = v34;
  v28 = v35;
  sub_1BF17BA8C();
  MEMORY[0x1BFB52170](v11, WitnessTable);
  (*(v14 + 8))(v18, v11);
  v41 = a5;
  v42 = a6;
  v29 = v38;
  v43 = v38;
  v44 = v28;
  v45 = v27;
  v46 = v37;
  v47 = v39;
  v30 = swift_getWitnessTable();
  v32 = sub_1BF03CFB4(sub_1BF05B4BC, v40, v20, v29, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);
  (*(v36 + 8))(v26, v20);
  return v32;
}

Swift::String __swiftcall Date.gregorianLongDisplayString()()
{
  OUTLINED_FUNCTION_2_23();
  sub_1BF00EAF0(0, v2, v3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v7);
  v57 = OUTLINED_FUNCTION_27_4(v8, v55);
  v9 = OUTLINED_FUNCTION_1(v57);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_20_6();
  v14 = sub_1BF17907C();
  v15 = OUTLINED_FUNCTION_1(v14);
  v58 = v16;
  v59 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v21 = (v20 - v19);
  if (qword_1ED8EBA18 != -1)
  {
    OUTLINED_FUNCTION_13_12();
  }

  v22 = sub_1BF17965C();
  __swift_project_value_buffer(v22, qword_1ED8EBA20);
  OUTLINED_FUNCTION_8_16();
  sub_1BF00EAF0(0, v23, v24, MEMORY[0x1E69E6F90]);
  v25 = sub_1BF17964C();
  OUTLINED_FUNCTION_1(v25);
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = OUTLINED_FUNCTION_18_6();
  *(v30 + 16) = xmmword_1BF17EBE0;
  v31 = v30 + v1;
  v32 = *(v27 + 104);
  v32(v31, *MEMORY[0x1E6969A88], v25);
  v32(v29 + v31, *MEMORY[0x1E6969A58], v25);
  v32(v31 + 2 * v29, *MEMORY[0x1E6969A48], v25);
  v32(v31 + 3 * v29, *MEMORY[0x1E6969A10], v25);
  v32(v31 + 4 * v29, *MEMORY[0x1E6969A68], v25);
  sub_1BF05B4F4(v30);
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  OUTLINED_FUNCTION_29_5();

  (*(v11 + 8))(v0, v57);
  ObjCClassFromMetadata = v21;
  sub_1BF178FEC();
  v34 = v21;
  if ((v35 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v36 ^ v37))
  {
    ObjCClassFromMetadata = v21;
    sub_1BF178F7C();
    if ((v39 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v36 ^ v37))
    {
      ObjCClassFromMetadata = v21;
      sub_1BF178FAC();
      if ((v40 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v36 ^ v37))
      {
        ObjCClassFromMetadata = v21;
        sub_1BF178FCC();
        if ((v41 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v36 ^ v37))
        {
          ObjCClassFromMetadata = v21;
          sub_1BF17902C();
          if ((v42 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v36 ^ v37))
          {
            type metadata accessor for Localized();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v53 = [objc_opt_self() bundleForClass_];
            OUTLINED_FUNCTION_11_9();
            OUTLINED_FUNCTION_31_5();

            goto LABEL_29;
          }

          if (qword_1ED8ECAA8 != -1)
          {
            swift_once();
          }

          v38 = &qword_1ED8ECAB0;
        }

        else
        {
          if (qword_1ED8ECB38 != -1)
          {
            swift_once();
          }

          v38 = &qword_1ED8ECB40;
        }
      }

      else
      {
        if (qword_1ED8ECB58 != -1)
        {
          swift_once();
        }

        v38 = &qword_1ED8ECB60;
      }
    }

    else
    {
      if (qword_1ED8ECB18 != -1)
      {
        swift_once();
      }

      v38 = &qword_1ED8ECB20;
    }
  }

  else
  {
    if (qword_1ED8ECAF8 != -1)
    {
      swift_once();
    }

    v38 = &qword_1ED8ECB00;
  }

  v21 = *v38;
  v43 = v38[1];
  sub_1BF17955C();
  v44 = sub_1BF1795CC();
  OUTLINED_FUNCTION_33_3(v44);
  OUTLINED_FUNCTION_9_16();
  sub_1BF00EAF0(0, v45, v46, MEMORY[0x1E69E6F90]);
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E6530];
  *(v47 + 16) = xmmword_1BF17DEF0;
  OUTLINED_FUNCTION_26_5(v47, v48);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_2_23();
  sub_1BF05AC80(v56, v49, v50);
LABEL_29:
  (*(v58 + 8))(v34, v59);
  v51 = ObjCClassFromMetadata;
  v52 = v21;
  result._object = v52;
  result._countAndFlagsBits = v51;
  return result;
}

uint64_t sub_1BF05B4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  return sub_1BF05B82C(a1, *(v2 + 56), *(v2 + 64), a2);
}

uint64_t sub_1BF05B4F4(uint64_t a1)
{
  v2 = sub_1BF17964C();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  sub_1BF05BC7C();
  result = sub_1BF17B18C();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_1BF05C0A4(&qword_1ED8ECA38, MEMORY[0x1E6969AD0]);
    v16 = sub_1BF179F1C();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_1BF05C0A4(&qword_1ED8ECA30, MEMORY[0x1E6969AD0]);
      v23 = sub_1BF17A05C();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1BF05B82C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v44 = a4;
  v45 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v37 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v40 = *(v7 - 8);
  v8 = v40;
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = swift_getTupleTypeMetadata2();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v37 - v15);
  v17 = TupleTypeMetadata2;
  v50 = TupleTypeMetadata2;
  v49 = *(TupleTypeMetadata2 - 8);
  v18 = *(v49 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v37 - v22;
  (*(v23 + 16))(v16, a1, v12);
  v39 = *v16;
  v24 = v16 + *(v12 + 48);
  v25 = *(v17 + 48);
  v26 = *(v8 + 32);
  v26(v21, v24, v7);
  v27 = *(v48 + 32);
  v28 = AssociatedTypeWitness;
  v27(&v21[v25], &v24[v25], AssociatedTypeWitness);
  v38 = *(v50 + 48);
  v29 = v47;
  v26(v47, v21, v7);
  v27(&v29[v38], &v21[v25], v28);
  v30 = v29;
  v31 = v50;
  (*(v49 + 16))(v21, v30, v50);
  v32 = *(v31 + 48);
  v33 = v42;
  v26(v42, v21, v7);
  v34 = &v21[v32];
  v35 = v43;
  v27(v43, v34, v28);
  v46(v39, v33, v35);
  (*(v48 + 8))(v35, v28);
  (*(v40 + 8))(v33, v7);
  return (*(v49 + 8))(v47, v50);
}

void sub_1BF05BC7C()
{
  if (!qword_1ED8EAE28)
  {
    sub_1BF17964C();
    sub_1BF05C0A4(&qword_1ED8ECA38, MEMORY[0x1E6969AD0]);
    v0 = sub_1BF17B19C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAE28);
    }
  }
}

uint64_t Sequence<>.mapToDict()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1(AssociatedTypeWitness);
  v47 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  OUTLINED_FUNCTION_54();
  v11 = sub_1BF17AE6C();
  v12 = OUTLINED_FUNCTION_68(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  OUTLINED_FUNCTION_2_3();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  v28 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1(v28);
  v48 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v46 - v33;
  v55 = sub_1BF179CEC();
  (*(v21 + 16))(v27, v52, a1);
  v51 = v34;
  sub_1BF17A32C();
  v52 = v28;
  swift_getAssociatedConformanceWitness();
  v35 = (v47 + 32);
  v49 = v50 + 8;
  v36 = (v47 + 16);
  for (i = (v47 + 8); ; (*i)(v10, AssociatedTypeWitness))
  {
    sub_1BF17AF0C();
    OUTLINED_FUNCTION_51_2(v19, 1, AssociatedTypeWitness);
    if (v38)
    {
      break;
    }

    (*v35)(v10, v19, AssociatedTypeWitness);
    v39 = (*(v50 + 8))(AssociatedTypeWitness);
    v41 = v40;
    (*v36)(v17, v10, AssociatedTypeWitness);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, AssociatedTypeWitness);
    v53 = v39;
    v54 = v41;
    sub_1BF179E9C();
    sub_1BF179EBC();
  }

  (*(v48 + 8))(v51, v52);
  return v55;
}

uint64_t sub_1BF05C0A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Cache.dictionary.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[3];
  UnfairLock.lock()();
  swift_beginAccess();
  v4 = *(v1 + 16);
  OUTLINED_FUNCTION_0_35();
  v10 = *(v5 + 80);
  OUTLINED_FUNCTION_0_35();
  v11 = *(v6 + 88);
  OUTLINED_FUNCTION_0_35();
  v12 = *(v7 + 96);
  type metadata accessor for CacheEntry();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v8 = sub_1BF179E7C();

  sub_1BF05C3C8(v1);
  return v8;
}

uint64_t sub_1BF05C1E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  return sub_1BF05C1F8(*(v0 + 32), *(v0 + 40));
}

uint64_t sub_1BF05C1F8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BF05C264()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECB40 = v2;
  unk_1ED8ECB48 = v4;
}

void Cache.remove(_:)()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_5_27();
  v5 = v4;
  v6 = *(v0 + 88);
  type metadata accessor for CacheEntry();
  OUTLINED_FUNCTION_12_1();
  v44 = v7;
  v43 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v43);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_30();
  v42 = v13;
  OUTLINED_FUNCTION_2_43();
  v15 = *(v14 + 80);
  v16 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_68(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v41 = v1;
  v40 = *(v1 + 24);
  UnfairLock.lock()();
  v45 = v5;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BF17B0FC();
    v22 = *(v5 + 96);
    sub_1BF17A97C();
    v3 = v47;
    v23 = v48;
    v24 = v49;
    v46 = v50;
    v25 = v51;
  }

  else
  {
    v23 = v3 + 56;
    v26 = *(v3 + 56);
    v24 = ~(-1 << *(v3 + 32));
    OUTLINED_FUNCTION_18_0();
    v25 = v27 & v28;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v46 = 0;
  }

  v39 = v24;
  v29 = (v24 + 64) >> 6;
  v30 = (v9 + 8);
  if (v3 < 0)
  {
    goto LABEL_7;
  }

  while (v25)
  {
    v31 = v46;
LABEL_14:
    v33 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    (*(*(v15 - 8) + 16))(v21, *(v3 + 48) + *(*(v15 - 8) + 72) * (v33 | (v31 << 6)), v15);
    while (1)
    {
      OUTLINED_FUNCTION_127();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v15);
      OUTLINED_FUNCTION_7_2();
      v37 = *(v45 + 96);
      sub_1BF179E9C();
      v38 = v42;
      sub_1BF179D7C();
      (*(*(v15 - 8) + 8))(v21, v15);
      swift_endAccess();
      (*v30)(v38, v43);
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_7:
      if (!sub_1BF17B10C())
      {
        goto LABEL_17;
      }

      sub_1BF17B82C();
      swift_unknownObjectRelease();
    }
  }

  v32 = v46;
  while (1)
  {
    v31 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v31 >= v29)
    {
LABEL_17:
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v15);
      sub_1BF003FE8();
      os_unfair_lock_unlock(*(v40 + 16));
      OUTLINED_FUNCTION_26_2();
      return;
    }

    v25 = *(v23 + 8 * v31);
    ++v32;
    if (v25)
    {
      v46 = v31;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t ThreadsafeSet.contains(_:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  UnfairLock.lock()();
  OUTLINED_FUNCTION_1_27();
  v4 = *(v1 + 24);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = sub_1BF17A98C();

  sub_1BEFF99D8(v1);
  return v7 & 1;
}

void Promise.erased<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_68_0();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v23 = *v18;
  OUTLINED_FUNCTION_2_3();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v29);
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = *(v23 + 80);
  *(v31 + 24) = v22;
  (*(v25 + 32))(v31 + v30, v29, v22);
  v32 = sub_1BF007568();
  Promise.then<A>(on:closure:)();

  OUTLINED_FUNCTION_55();
}

uint64_t sub_1BF05C920()
{
  OUTLINED_FUNCTION_20(*(v0 + 24));
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1BF05C9AC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECAC8 = v2;
  *algn_1ED8ECAD0 = v4;
}

void *sub_1BF05CA7C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BEFEEEE0(0, &unk_1ED8EAD70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BF05CBCC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BF05CBCC()
{
  if (!qword_1ED8EBCE0)
  {
    sub_1BEFF40D4(255, &qword_1ED8ED770);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EBCE0);
    }
  }
}

uint64_t SyncValue.value.getter()
{
  v1 = v0;
  v2 = *v0;
  v6 = *(v1 + *(v2 + 96));
  v3 = type metadata accessor for UnfairLock();
  v4 = *(v2 + 80);

  Lock.sync<A>(_:)(sub_1BF05CD20, v1, v3, v4, &protocol witness table for UnfairLock);
}

Swift::Bool __swiftcall UniqueCollection.contains(identifier:)(Swift::String identifier)
{
  OUTLINED_FUNCTION_22_8();
  v6 = *(v5 + 16);
  v7 = sub_1BF17AE6C();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v17 - v13;
  v17 = *v2;
  UniqueCollection.subscript.getter(v4, v3, v1);
  v15 = __swift_getEnumTagSinglePayload(v14, 1, v6) != 1;
  (*(v10 + 8))(v14, v7);
  return v15;
}

uint64_t sub_1BF05CE2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 88);
  swift_beginAccess();
  return (*(*(*(v4 + 80) - 8) + 16))(a2, a1 + v5);
}

uint64_t UniqueCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = *(a3 + 16);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF179EAC();
}

uint64_t Weak.__deallocating_deinit()
{
  MEMORY[0x1BFB548B0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

Swift::Void __swiftcall UniqueCollection.remove(at:)(Swift::Int at)
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v6 = v5;
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_40();
  v8 = sub_1BF17AE6C();
  v9 = OUTLINED_FUNCTION_1(v8);
  v29 = v10;
  v30 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  OUTLINED_FUNCTION_2_3();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  v32 = *v1;
  v23 = UniqueCollection.startIndex.getter(v4);
  v28 = *v1;
  v31 = v28;
  v24 = UniqueCollection.endIndex.getter(v4);
  if (v24 < v23)
  {
    __break(1u);
  }

  else if (v23 <= v6 && v24 > v6)
  {
    sub_1BF17A69C();
    *&v32 = (*(*(v4 + 32) + 8))(v7);
    *(&v32 + 1) = v26;
    OUTLINED_FUNCTION_30_6();
    sub_1BF179D7C();

    (*(v29 + 8))(v14, v30);
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5FC();
    v27 = *(v16 + 8);
    v27(v2, v7);
    v27(v22, v7);
    OUTLINED_FUNCTION_26_2();
    return;
  }

  __break(1u);
}