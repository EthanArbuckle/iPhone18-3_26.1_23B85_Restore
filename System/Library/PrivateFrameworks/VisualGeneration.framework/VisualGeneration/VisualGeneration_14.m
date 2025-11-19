uint64_t dispatch thunk of ImageStylesAssignable.removeAllImageStyles()(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 96))();
}

{
  v7 = (*(a2 + 104) + **(a2 + 104));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A33558C;

  return v7(a1, a2);
}

uint64_t sub_19A416934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ModelManagerInferenceProvider.ImageGenerationRequest(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_19A573B4C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_19A573B4C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_19A416A34()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_19A3EE53C;

  return sub_19A415A84();
}

uint64_t sub_19A416AEC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A33558C;

  return sub_19A4159EC(a1, v1 + 16, v4);
}

uint64_t sub_19A416BA4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A33558C;

  return sub_19A4158F8(a1, (v1 + 16), v4);
}

uint64_t sub_19A416C5C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A33558C;

  return sub_19A415860(a1, v1 + 16, v4);
}

uint64_t objectdestroy_51Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A416D54(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A33558C;

  return sub_19A4157C8(a1, v1 + 16, v4);
}

uint64_t sub_19A416E0C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A33558C;

  return sub_19A4156D0(a1, (v1 + 16), v4);
}

uint64_t sub_19A416EC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A416F88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A416FF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A2F759C;

  return sub_19A414A88(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_19A4170CC()
{
  result = qword_1EAF9F8D0;
  if (!qword_1EAF9F8D0)
  {
    sub_19A57112C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F8D0);
  }

  return result;
}

uint64_t KeyboardEmojiGenerator.ImageToningTask.Error.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_19A417164(uint64_t a1)
{
  v2 = sub_19A417454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4171A0(uint64_t a1)
{
  v2 = sub_19A417454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4171DC(uint64_t a1)
{
  v2 = sub_19A4174A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A417218(uint64_t a1)
{
  v2 = sub_19A4174A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KeyboardEmojiGenerator.ImageToningTask.Error.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1358);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1360);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v10 = *v1;
  v13[1] = v1[1];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A417454();
  sub_19A5741AC();
  sub_19A4174A8();
  sub_19A573DAC();
  v11 = v14;
  sub_19A573E2C();
  (*(v3 + 8))(v5, v11);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_19A417454()
{
  result = qword_1EAFA1368;
  if (!qword_1EAFA1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1368);
  }

  return result;
}

unint64_t sub_19A4174A8()
{
  result = qword_1EAFA1370;
  if (!qword_1EAFA1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1370);
  }

  return result;
}

uint64_t KeyboardEmojiGenerator.ImageToningTask.Error.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1378);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1380);
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A417454();
  sub_19A57417C();
  if (v2)
  {
    goto LABEL_6;
  }

  v26 = a1;
  v10 = v33;
  v11 = v28;
  v12 = sub_19A573D7C();
  v13 = (2 * *(v12 + 16)) | 1;
  v29 = v12;
  v30 = v12 + 32;
  v31 = 0;
  v32 = v13;
  v14 = v9;
  if ((sub_19A34418C() & 1) != 0 || v31 != v32 >> 1)
  {
    v15 = sub_19A5739FC();
    swift_allocError();
    v16 = v7;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
    *v18 = &type metadata for KeyboardEmojiGenerator.ImageToningTask.Error;
    sub_19A573C7C();
    sub_19A5739DC();
    (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    (*(v11 + 8))(v9, v16);
    swift_unknownObjectRelease();
    a1 = v26;
LABEL_6:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  sub_19A4174A8();
  sub_19A573C5C();
  v20 = sub_19A573CFC();
  v22 = v21;
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v14, v7);
  swift_unknownObjectRelease();
  v23 = v26;
  v24 = v27;
  *v27 = v20;
  v24[1] = v22;
  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

unint64_t KeyboardEmojiGenerator.ImageToningTask.Progress.completionPercentage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16) | (v1 < 1);
  if (*(v0 + 16) & 1 | (v1 < 1))
  {
    v3 = 0;
  }

  else
  {
    v4 = *v0 / v1;
    if (v4 > 1.0)
    {
      v4 = 1.0;
    }

    v3 = LODWORD(v4);
  }

  return v3 | ((v2 & 1) << 32);
}

uint64_t KeyboardEmojiGenerator.ImageToningTask.Progress.description.getter()
{
  v1 = *(v0 + 16);
  result = sub_19A573EDC();
  v4 = result;
  if ((v1 & 1) == 0)
  {
    v3 = sub_19A573EDC();
    MEMORY[0x19A900A50](v3);

    MEMORY[0x19A900A50](543584032, 0xE400000000000000);

    return v4;
  }

  return result;
}

unint64_t _s16VisualGeneration22KeyboardEmojiGeneratorC15ImageToningTaskC11descriptionSSvg_0()
{
  v0 = sub_19A57102C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_19A57395C();

  v6 = 0xD000000000000010;
  v7 = 0x800000019A5995B0;
  sub_19A57100C();
  sub_19A36BC14(&qword_1ED8252D8);
  v4 = sub_19A573EDC();
  MEMORY[0x19A900A50](v4);

  (*(v1 + 8))(v3, v0);
  MEMORY[0x19A900A50](41, 0xE100000000000000);
  return v6;
}

unint64_t sub_19A417C24(void *a1)
{
  a1[1] = sub_19A417C5C();
  a1[2] = sub_19A417CB0();
  result = sub_19A417D04();
  a1[3] = result;
  return result;
}

unint64_t sub_19A417C5C()
{
  result = qword_1EAFA1388;
  if (!qword_1EAFA1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1388);
  }

  return result;
}

unint64_t sub_19A417CB0()
{
  result = qword_1EAFA1390;
  if (!qword_1EAFA1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1390);
  }

  return result;
}

unint64_t sub_19A417D04()
{
  result = qword_1EAFA1398;
  if (!qword_1EAFA1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1398);
  }

  return result;
}

unint64_t sub_19A417DDC()
{
  result = qword_1EAFA13A0;
  if (!qword_1EAFA13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA13A0);
  }

  return result;
}

unint64_t sub_19A417E34()
{
  result = qword_1EAFA13A8;
  if (!qword_1EAFA13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA13A8);
  }

  return result;
}

unint64_t sub_19A417E8C()
{
  result = qword_1EAFA13B0;
  if (!qword_1EAFA13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA13B0);
  }

  return result;
}

unint64_t sub_19A417EE4()
{
  result = qword_1EAFA13B8;
  if (!qword_1EAFA13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA13B8);
  }

  return result;
}

unint64_t sub_19A417F3C()
{
  result = qword_1EAFA13C0;
  if (!qword_1EAFA13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA13C0);
  }

  return result;
}

unint64_t sub_19A417F94()
{
  result = qword_1EAFA13C8[0];
  if (!qword_1EAFA13C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAFA13C8);
  }

  return result;
}

unint64_t sub_19A417FE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v23 = v9;
  v10 = *(a2 + 24);
  v11 = sub_19A41852C(a1, v6, v10);
  if (__OFADD__(*(v9 + 16), (v12 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  sub_19A573B2C();
  result = sub_19A573B0C();
  v16 = v23;
  if ((result & 1) == 0)
  {
LABEL_5:
    *v3 = v16;
    if ((v14 & 1) == 0)
    {
      v23 = 0;
      (*(v22 + 16))(v8, a1, v6);
      result = sub_19A573B1C();
    }

    v18 = *(v16 + 56);
    v19 = *(v18 + 8 * v13);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(v18 + 8 * v13) = v21;
      return result;
    }

    goto LABEL_10;
  }

  result = sub_19A41852C(a1, v6, v10);
  if ((v14 & 1) == (v17 & 1))
  {
    v13 = result;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t sub_19A4181BC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A57378C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-1] - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v11);
  (*(v13 + 16))(&v16[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_19A572FAC();
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v16, AssociatedTypeWitness);
    sub_19A5737DC();
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      break;
    }

    (*(v5 + 32))(v7, v10, v4);
    sub_19A417FE8(v7, a2);
    (*(v5 + 8))(v7, v4);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_19A41845C()
{
  sub_19A572B1C();

  swift_getWitnessTable();
  return sub_19A572DBC();
}

uint64_t sub_19A4184E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_19A418B00(a1, *(a2 + 16), *(a2 + 24));

  *a3 = v4;
  return result;
}

unint64_t sub_19A41852C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A572B3C();

  return sub_19A418588(a1, v6, a2, a3);
}

unint64_t sub_19A418588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
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
      v19 = sub_19A572C2C();
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

uint64_t sub_19A418710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_19A57310C())
  {
    sub_19A573BFC();
    v13 = sub_19A573BEC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_19A57310C();
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
        if (sub_19A5730EC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_19A57399C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_19A41852C(v12, a2, v27);
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

uint64_t sub_19A4189FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v11 = sub_19A5730CC();
  v12 = sub_19A418710(v11, a2, v10, a4);

  v16[4] = a5;
  v17 = v12;
  v16[3] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v14 = type metadata accessor for CountedSet();
  sub_19A4181BC(v16, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return v17;
}

uint64_t sub_19A418B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = sub_19A57312C();
  WitnessTable = swift_getWitnessTable();
  return sub_19A4189FC(&v8, a2, v5, a3, WitnessTable);
}

uint64_t sub_19A418B90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t KeyboardEmojiGenerator.imageGeneratorIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_19A418C08()
{
  v0 = sub_19A5723FC();
  __swift_allocate_value_buffer(v0, qword_1EAFCA1D0);
  __swift_project_value_buffer(v0, qword_1EAFCA1D0);
  return sub_19A5723EC();
}

uint64_t sub_19A418C88()
{
  v1 = *(*v0 + 24);

  return v1;
}

void *sub_19A418CBC(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = sub_19A31DEA0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_19A31DEA0((v5 > 1), v6 + 1, 1, v4);
  }

  v21 = &type metadata for NoOpImageScaler;
  v22 = &off_1F0DAD170;
  v4[2] = v7;
  sub_19A2EA460(&v20, &v4[5 * v6 + 4]);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v8 = 0x800000019A598FD0;
      v13 = v4[3];
      v10 = v6 + 2;
      if ((v6 + 2) > (v13 >> 1))
      {
        v4 = sub_19A31DEA0((v13 > 1), v6 + 2, 1, v4);
      }

      v21 = &type metadata for CoreImageDownsampleFilterSquareImageScaler;
      v22 = &off_1F0DB1008;
      v11 = 0xD000000000000017;
    }

    else
    {
      if (v3 != 3)
      {
        v14 = type metadata accessor for MediaAnalysisServiceEmojiStrikeSizeScaler();
        v15 = swift_allocObject();
        *(v15 + 16) = a2;
        v16 = v4[3];
        v17 = v6 + 2;
        v18 = a2;
        if (v17 > (v16 >> 1))
        {
          v4 = sub_19A31DEA0((v16 > 1), v17, 1, v4);
        }

        v21 = v14;
        v22 = &off_1F0DB0178;
        *&v20 = v15;
        v4[2] = v17;
        goto LABEL_20;
      }

      v8 = 0x800000019A5995F0;
      v9 = v4[3];
      v10 = v6 + 2;
      if ((v6 + 2) > (v9 >> 1))
      {
        v4 = sub_19A31DEA0((v9 > 1), v6 + 2, 1, v4);
      }

      v21 = &type metadata for CoreImageDownsampleFilterSquareImageScaler;
      v22 = &off_1F0DB1008;
      v11 = 0xD000000000000018;
    }

    *&v20 = v11;
    *(&v20 + 1) = v8;
    v4[2] = v10;
LABEL_20:
    sub_19A2EA460(&v20, &v4[5 * v7 + 4]);
    return v4;
  }

  if (v3)
  {
    v12 = v4[3];
    if ((v6 + 2) > (v12 >> 1))
    {
      v4 = sub_19A31DEA0((v12 > 1), v6 + 2, 1, v4);
    }

    v21 = &type metadata for AffineTransformImageScaler;
    v22 = &off_1F0DB4998;
    LOBYTE(v20) = 1;
    v4[2] = v6 + 2;
    goto LABEL_20;
  }

  return v4;
}

uint64_t Gender.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 7233901;
  }

  if (a1 == 1)
  {
    return 0x6E616D6F77;
  }

  return 0x6E79676F72646E61;
}

uint64_t sub_19A418F98()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A419038()
{
  sub_19A572E4C();
}

uint64_t sub_19A4190C4()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A419160@<X0>(_BYTE *a1@<X8>)
{
  result = _s16VisualGeneration6GenderO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_19A419190(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E616D6F77;
  if (v2 != 1)
  {
    v5 = 0x6E79676F72646E61;
    v4 = 0xEB0000000073756FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7233901;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_19A4191FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6E616D6F77;
  if (v2 != 1)
  {
    v4 = 0x6E79676F72646E61;
    v3 = 0xEB0000000073756FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7233901;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6E616D6F77;
  if (*a2 != 1)
  {
    v8 = 0x6E79676F72646E61;
    v7 = 0xEB0000000073756FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7233901;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A573F1C();
  }

  return v11 & 1;
}

uint64_t _s16VisualGeneration6GenderO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_19A419400()
{
  result = qword_1EAFA1450;
  if (!qword_1EAFA1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1450);
  }

  return result;
}

unint64_t sub_19A419458()
{
  result = qword_1EAFA1458;
  if (!qword_1EAFA1458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1458);
  }

  return result;
}

unint64_t sub_19A4194CC()
{
  result = qword_1EAFA1468;
  if (!qword_1EAFA1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1468);
  }

  return result;
}

uint64_t type metadata accessor for TextPrompt()
{
  result = qword_1EAF9F850;
  if (!qword_1EAF9F850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A419594(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1498);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A419C84();
  sub_19A5741AC();
  v11 = *v3;
  v12 = *(v3 + 1);
  v10[7] = 0;
  sub_19A3A40A4();
  sub_19A573E7C();
  if (!v2)
  {
    type metadata accessor for TextPrompt();
    LOBYTE(v11) = 1;
    type metadata accessor for AugmentedPrompt();
    sub_19A419D98(&qword_1EAF9F758, type metadata accessor for AugmentedPrompt);
    sub_19A573E7C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A41976C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = type metadata accessor for AugmentedPrompt();
  MEMORY[0x1EEE9AC00](v21);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1488);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = v17 - v6;
  v8 = type metadata accessor for TextPrompt();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A419C84();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = v8;
  v11 = v10;
  v12 = v20;
  v26 = 0;
  sub_19A3A4050();
  v13 = v22;
  sub_19A573D4C();
  v14 = v24;
  v15 = v25;
  *v11 = v23;
  v11[1] = v14;
  v17[0] = v15;
  v17[1] = v14;
  v11[2] = v15;
  LOBYTE(v23) = 1;
  sub_19A419D98(&qword_1EAF9ED08, type metadata accessor for AugmentedPrompt);
  sub_19A573D4C();
  (*(v12 + 8))(v7, v13);
  sub_19A39A8C4(v5, v11 + *(v18 + 20));
  sub_19A419CD8(v11, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_19A419D3C(v11);
}

uint64_t sub_19A419A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x6574746972776572 && a2 == 0xEF74706D6F72506ELL || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65746E656D677561 && a2 == 0xEF74706D6F725064)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_19A419B58(uint64_t a1)
{
  v2 = sub_19A419C84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A419B94(uint64_t a1)
{
  v2 = sub_19A419C84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A419C00(uint64_t a1)
{
  *(a1 + 8) = sub_19A419D98(&qword_1EAFA1470, type metadata accessor for TextPrompt);
  result = sub_19A419D98(&qword_1EAFA1478, type metadata accessor for TextPrompt);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_19A419C84()
{
  result = qword_1EAFA1490;
  if (!qword_1EAFA1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1490);
  }

  return result;
}

uint64_t sub_19A419CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextPrompt();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A419D3C(uint64_t a1)
{
  v2 = type metadata accessor for TextPrompt();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A419D98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A419DF4()
{
  result = qword_1EAFA14A0;
  if (!qword_1EAFA14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA14A0);
  }

  return result;
}

unint64_t sub_19A419E4C()
{
  result = qword_1EAFA14A8;
  if (!qword_1EAFA14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA14A8);
  }

  return result;
}

unint64_t sub_19A419EA4()
{
  result = qword_1EAFA14B0;
  if (!qword_1EAFA14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA14B0);
  }

  return result;
}

void sub_19A419EFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = a1 + 56; ; i += 32)
    {
      v7 = *(i - 24);
      v6 = *(i - 16);
      v8 = v6 - v7;
      if (__OFSUB__(v6, v7))
      {
        break;
      }

      v9 = sub_19A572CCC();
      [v2 replaceCharactersInRange:v7 withString:{v8, v9}];

      if (a2)
      {
        type metadata accessor for Key(0);
        sub_19A41CC98(&qword_1EAF9F078, type metadata accessor for Key);
        v10 = sub_19A572ADC();
        v11 = sub_19A572E7C();

        [v2 addAttributes:v10 range:{v7, v11}];
      }

      else
      {
      }

      if (!--v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_19A41A04C(unint64_t result)
{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 56);
    v6 = MEMORY[0x1E69E6158];
    while (1)
    {
      v26 = v4;
      v31 = v3;
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v1 + 16);

      v27 = sub_19A386EC4(v9);
      v28 = v10;
      v11 = sub_19A2F4450();
      v12 = sub_19A572E5C();
      v27 = sub_19A386EC4(v9);
      v28 = v13;
      result = sub_19A572E5C();
      v14 = result >> 14;
      if (result >> 14 < v12 >> 14)
      {
        break;
      }

      v15 = result;
      v29 = v6;
      v30 = v11;
      v27 = v7;
      v28 = v8;

      if (v12 >> 14 == v14)
      {
        v16 = v31;
        v17 = sub_19A384CAC(&v27, v12);
        v3 = v16;
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v20 = v15;
        v21 = v31;
        v17 = sub_19A3859C0(v12, v20, &v27);
        v3 = v21;
        if (v21)
        {
LABEL_10:
          v22 = v19;
          v23 = v18;
          v24 = v17;
          sub_19A387988();
          swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 16) = v22;

          return __swift_destroy_boxed_opaque_existential_0Tm(&v27);
        }
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(&v27);
      v5 += 4;
      v4 = v26 - 1;
      if (v26 == 1)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19A41A1E4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A32E5F0(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_19A573EBC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 1);
          if (*(v12 - 3) >= v13)
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 3) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_19A5730DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_19A41A7DC(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_19A41A33C(void *a1)
{
  v2 = type metadata accessor for PromptEdit(0);
  v15 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v16 = &v15 - v7;
  v8 = a1[2];
  if (v8 < 2)
  {
    return a1;
  }

  v9 = 0;
  v10 = v8 >> 1;
  for (i = v8 - 1; ; --i)
  {
    if (v9 == i)
    {
      goto LABEL_5;
    }

    v12 = a1[2];
    if (v9 >= v12)
    {
      break;
    }

    v13 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v14 = *(v15 + 72);
    result = sub_19A41CCE0(a1 + v13 + v14 * v9, v16);
    if (i >= v12)
    {
      goto LABEL_14;
    }

    sub_19A41CCE0(a1 + v13 + v14 * i, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_19A32E4F0(a1);
    }

    result = sub_19A41CD44(v5, a1 + v13 + v14 * v9);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_19A41CD44(v16, a1 + v13 + v14 * i);
LABEL_5:
    if (v10 == ++v9)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_19A41A4EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v4 = a2;
  v8 = a3;
  v9 = a4;
  sub_19A573FFC();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v9 >> 1, v8))
  {
    goto LABEL_25;
  }

  if (v11 != (v9 >> 1) - v8)
  {
LABEL_26:
    swift_unknownObjectRelease();
    a3 = v8;
    a4 = v9;
    a2 = v4;
LABEL_2:
    sub_19A41A704(a1, a2, a3, a4);
    v7 = v6;
    goto LABEL_9;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_10;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v12 = *(v7 + 16);
  if (v12 >= 2)
  {
    v9 = 0;
    v8 = 0;
    v14 = v12 >> 1;
    v15 = v12 - 1;
    v16 = 16 * v12 + 24;
    do
    {
      if (v8 != v15)
      {
        v18 = *(v7 + 16);
        if (v8 >= v18)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v15 >= v18)
        {
          goto LABEL_23;
        }

        v19 = *(v7 + v9 + 32);
        a1 = *(v7 + v9 + 40);
        v20 = *(v7 + v16 - 8);
        v4 = *(v7 + v16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_19A32E5DC(v7);
        }

        v21 = v7 + v9;
        *(v21 + 32) = v20;
        *(v21 + 40) = v4;

        if (v15 >= *(v7 + 16))
        {
          goto LABEL_24;
        }

        v17 = (v7 + v16);
        *(v17 - 1) = v19;
        *v17 = a1;
      }

      ++v8;
      --v15;
      v16 -= 16;
      v9 += 16;
    }

    while (v14 != v8);
  }

  return v7;
}

uint64_t sub_19A41A6B8(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_19A573F1C();
  }
}

void sub_19A41A704(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF98);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_19A41A7DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_19A34DDAC(v8);
      v8 = result;
    }

    v86 = (v8 + 16);
    v87 = *(v8 + 16);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = (v8 + 16 * v87);
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_19A41AD74((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v15 = *v12;
      v14 = v12 + 8;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 4;
        v19 = (v13 < v10) ^ (v17 >= v18);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 32 * v7 - 32;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v29 + v11);
            v24 = (v29 + v20);
            v25 = *(v23 + 2);
            v26 = *(v23 + 3);
            v27 = *v23;
            v28 = v24[1];
            *v23 = *v24;
            v23[1] = v28;
            *v24 = v27;
            *(v24 + 2) = v25;
            *(v24 + 3) = v26;
          }

          ++v22;
          v20 -= 32;
          v11 += 32;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A31CF2C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v40 = *(v8 + 24);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_19A31CF2C((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v41;
    v42 = v8 + 32;
    v43 = (v8 + 32 + 16 * v5);
    *v43 = v9;
    v43[1] = v7;
    v95 = *v94;
    if (!*v94)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v8 + 32);
          v45 = *(v8 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = (v8 + 16 * v41);
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = (v42 + 16 * v5);
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v70 = (v8 + 16 * v41);
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = (v42 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v41)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = (v42 + 16 * (v5 - 1));
        v82 = *v81;
        v83 = (v42 + 16 * v5);
        v84 = v83[1];
        sub_19A41AD74((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *(v8 + 16);
        if (v5 >= v85)
        {
          goto LABEL_101;
        }

        v41 = v85 - 1;
        result = memmove((v42 + 16 * v5), v83 + 2, 16 * (v85 - 1 - v5));
        *(v8 + 16) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = v42 + 16 * v41;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = (v8 + 16 * v41);
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = (v42 + 16 * v5);
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v7 - 32;
  v32 = v9 - v7;
LABEL_30:
  v33 = *(v30 + 32 * v7);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (*v35 >= v33)
    {
LABEL_29:
      ++v7;
      v31 += 32;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 56);
    v37 = *(v35 + 40);
    v38 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v38;
    *v35 = v33;
    *(v35 + 8) = v37;
    *(v35 + 24) = v36;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_19A41AD74(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = v5 + 32;
      v21 = *(v19 - 4);
      v19 -= 32;
      if (*v18 < v21)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

uint64_t sub_19A41AF78(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_19A572EFC();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_19A41B040(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_19A41B0C4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = *(a2 + 16);
  }

  if (v3)
  {
    v4 = (a2 + 40);
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1) == *(v4 - 1) && *i == *v4;
      if (!v6 && (sub_19A573F1C() & 1) == 0)
      {
        break;
      }

      ++v2;
      v4 += 2;
      if (v3 == v2)
      {
        return v3;
      }
    }
  }

  return v2;
}

uint64_t sub_19A41B14C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  if (a1 == a3 && a2 == a4 || (sub_19A573F1C() & 1) != 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = sub_19A572E7C();
  if (v10)
  {
    v4 = v10;
    v11 = sub_19A41B040(v10, 0);

    v12 = sub_19A41AF78(&v40, v11 + 4, v4, a1, a2);

    if (v12 == v4)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_9:

  v13 = sub_19A572E7C();
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = v13;
    v16 = sub_19A41B040(v13, 0);

    v5 = sub_19A41AF78(&v40, v16 + 4, v15, a3, v5);

    if (v5 == v15)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v16 = v14;
LABEL_13:
  v17 = sub_19A41B0C4(v11, v16);
  v18 = v11[2];
  if (v18 < v17)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = v17;
  if (v17 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = (2 * v18) | 1;
  swift_retain_n();
  v20 = sub_19A41A4EC(v11, (v11 + 4), v5, v19);
  v18 = v16[2];
  if (v18 < v5)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v21 = v20;
  v22 = sub_19A41A4EC(v16, (v16 + 4), v5, (2 * v18) | 1);
  v23 = sub_19A41B0C4(v21, v22);

  v24 = v11[2];

  v4 = v24 - v23;
  if (__OFSUB__(v24, v23))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = v16[2];

  v18 = v25 - v23;
  if (__OFSUB__(v25, v23))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v26 = v18 - v5;
  if (v18 < v5)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v25 < v18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v16[2] == v26)
  {
    if (v26)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_19A41A704(v16, (v16 + 4), v5, (2 * v18) | 1);
  v35 = v34;

  v26 = v35[2];
  v16 = v35;
  if (v26)
  {
LABEL_22:
    v39 = v4;
    v40 = v14;
    sub_19A322580(0, v26, 0);
    v27 = v40;
    v28 = v16 + 5;
    do
    {
      v30 = *(v28 - 1);
      v29 = *v28;
      v40 = v27;
      v32 = v27[2];
      v31 = v27[3];

      if (v32 >= v31 >> 1)
      {
        sub_19A322580((v31 > 1), v32 + 1, 1);
        v27 = v40;
      }

      v27[2] = v32 + 1;
      v33 = &v27[2 * v32];
      v33[4] = v30;
      v33[5] = v29;
      v28 += 2;
      --v26;
    }

    while (v26);

    v4 = v39;
    goto LABEL_36;
  }

LABEL_35:

  v27 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v40 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A331C2C();
  v36 = sub_19A572BEC();
  v38 = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF90);
  result = swift_allocObject();
  *(result + 16) = xmmword_19A576E10;
  if (v4 < v5)
  {
    __break(1u);
  }

  else
  {
    *(result + 32) = v5;
    *(result + 40) = v4;
    *(result + 48) = v36;
    *(result + 56) = v38;
  }

  return result;
}

uint64_t sub_19A41B4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 472) = a6;
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  *(v6 + 72) = a1;
  v7 = sub_19A57219C();
  *(v6 + 112) = v7;
  *(v6 + 120) = *(v7 - 8);
  *(v6 + 128) = swift_task_alloc();
  v8 = sub_19A57218C();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v9 = sub_19A57221C();
  *(v6 + 176) = v9;
  *(v6 + 184) = *(v9 - 8);
  *(v6 + 192) = swift_task_alloc();
  v10 = sub_19A5721BC();
  *(v6 + 200) = v10;
  *(v6 + 208) = *(v10 - 8);
  *(v6 + 216) = swift_task_alloc();
  v11 = sub_19A57225C();
  *(v6 + 224) = v11;
  *(v6 + 232) = *(v11 - 8);
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v12 = sub_19A571C1C();
  *(v6 + 264) = v12;
  *(v6 + 272) = *(v12 - 8);
  *(v6 + 280) = swift_task_alloc();
  v13 = sub_19A57102C();
  *(v6 + 288) = v13;
  *(v6 + 296) = *(v13 - 8);
  *(v6 + 304) = swift_task_alloc();
  v14 = sub_19A571A2C();
  *(v6 + 312) = v14;
  *(v6 + 320) = *(v14 - 8);
  *(v6 + 328) = swift_task_alloc();
  v15 = sub_19A571A4C();
  *(v6 + 336) = v15;
  *(v6 + 344) = *(v15 - 8);
  *(v6 + 352) = swift_task_alloc();
  v16 = sub_19A571A3C();
  *(v6 + 360) = v16;
  *(v6 + 368) = *(v16 - 8);
  *(v6 + 376) = swift_task_alloc();
  v17 = sub_19A571AAC();
  *(v6 + 384) = v17;
  *(v6 + 392) = *(v17 - 8);
  *(v6 + 400) = swift_task_alloc();
  v18 = sub_19A57197C();
  *(v6 + 408) = v18;
  *(v6 + 416) = *(v18 - 8);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A41B9EC, 0, 0);
}

uint64_t sub_19A41B9EC()
{
  v1 = v0[54];
  v2 = v0[52];
  v17 = v0[53];
  v18 = v0[51];
  v3 = v0[46];
  v4 = v0[47];
  v19 = v0[45];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[42];
  v23 = v0[37];
  v25 = v0[38];
  v26 = v0[36];
  v24 = v0[13];
  sub_19A57125C();
  v6 = v0[5];
  v5 = v0[6];
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  MEMORY[0x19A8FF4E0](v9, v6, *(v5 + 16));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
  (*(v2 + 16))(v17, v1, v18);
  sub_19A571A6C();
  v10 = sub_19A571A7C();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  (*(v3 + 104))(v4, *MEMORY[0x1E69A13C0], v19);
  v11 = sub_19A571A0C();
  (*(*(v11 - 8) + 56))(v20, 1, 1, v11);
  (*(v21 + 104))(v20, *MEMORY[0x1E69A13D0], v22);
  sub_19A571A8C();
  (*(v23 + 16))(v25, v24, v26);

  sub_19A571A1C();
  v12 = swift_task_alloc();
  v0[55] = v12;
  *v12 = v0;
  v12[1] = sub_19A41BCF4;
  v13 = v0[41];
  v15 = v0[9];
  v14 = v0[10];

  return MEMORY[0x1EEE0B2A8](v15, v14, v13);
}

uint64_t sub_19A41BCF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[56] = v2;

  v7 = v6[41];
  v8 = v6[40];
  v9 = v6[39];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_19A41C048;
  }

  else
  {
    v6[57] = a2;
    v6[58] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_19A41BE80;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_19A41BE80()
{
  v14 = v0;
  v12 = v0[57];
  v1 = v0[54];
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[48];
  v13 = sub_19A41B14C(v0[9], v0[10], v0[58], v12);
  sub_19A41A1E4(&v13);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v10 = v0[58];
  v11 = v13;

  v7 = v0[1];
  v8 = v0[56] == 0;

  return v7(v8, v10, v12, v11);
}

uint64_t sub_19A41C048()
{
  v106 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 416);
  (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
  (*(v4 + 8))(v2, v3);
  *(v0 + 56) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  if (swift_dynamicCast())
  {
    v6 = (*(*(v0 + 272) + 88))(*(v0 + 280), *(v0 + 264));
    if (v6 == *MEMORY[0x1E69B25A0])
    {
      v8 = *(v0 + 272);
      v7 = *(v0 + 280);
      v9 = *(v0 + 264);

      (*(v8 + 96))(v7, v9);
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v10 = sub_19A5723FC();
      __swift_project_value_buffer(v10, qword_1ED82BCF0);

      v11 = sub_19A5723DC();
      v12 = sub_19A57355C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v105[0] = v14;
        *v13 = 136315138;
        v15 = sub_19A57338C();
        v17 = v16;

        v18 = sub_19A31F114(v15, v17, v105);

        *(v13 + 4) = v18;
        _os_log_impl(&dword_19A2DE000, v11, v12, "Converting ModelManagerError.dDTSSS with strings %s to a VGF error.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x19A902C50](v14, -1, -1);
        MEMORY[0x19A902C50](v13, -1, -1);
      }

      else
      {
      }

LABEL_14:
      sub_19A335164();
      swift_allocError();
      *v23 = xmmword_19A577090;
      *(v23 + 16) = 3;
      swift_willThrow();
      v24 = *(v0 + 56);
LABEL_32:

      goto LABEL_33;
    }

    if (v6 == *MEMORY[0x1E69B2598])
    {

      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v19 = sub_19A5723FC();
      __swift_project_value_buffer(v19, qword_1ED82BCF0);
      v20 = sub_19A5723DC();
      v21 = sub_19A57355C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_19A2DE000, v20, v21, "Converting ModelManagerError.dDTSS to a VGF error.", v22, 2u);
        MEMORY[0x19A902C50](v22, -1, -1);
      }

      goto LABEL_14;
    }

    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  }

  v25 = *(v0 + 448);

  *(v0 + 64) = v25;
  v26 = v25;
  if (!swift_dynamicCast())
  {

LABEL_33:

    v85 = *(v0 + 8);

    return v85(0);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 256);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v33 = *(v0 + 176);

  (*(v30 + 32))(v27, v28, v29);
  sub_19A57223C();
  if ((*(v32 + 88))(v31, v33) != *MEMORY[0x1E69A0A58])
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
LABEL_26:
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 240);
    v67 = *(v0 + 248);
    v68 = *(v0 + 224);
    v69 = *(v0 + 232);
    v70 = sub_19A5723FC();
    __swift_project_value_buffer(v70, qword_1ED82BCF0);
    v71 = *(v69 + 16);
    v71(v66, v67, v68);
    v72 = sub_19A5723DC();
    v73 = sub_19A57355C();
    v74 = os_log_type_enabled(v72, v73);
    v76 = *(v0 + 232);
    v75 = *(v0 + 240);
    v77 = *(v0 + 224);
    if (v74)
    {
      v101 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v101 = 138412290;
      sub_19A41CC98(&qword_1EAFA14B8, MEMORY[0x1E69A0A68]);
      swift_allocError();
      v100 = v73;
      v78 = v71;
      v71(v79, v75, v77);
      v80 = _swift_stdlib_bridgeErrorToNSError();
      v81 = *(v76 + 8);
      v81(v75, v77);
      *(v101 + 4) = v80;
      *v103 = v80;
      v71 = v78;
      _os_log_impl(&dword_19A2DE000, v72, v100, "GMS sanitizer rejected the prompt with error message: %@", v101, 0xCu);
      sub_19A3B86A4(v103);
      MEMORY[0x19A902C50](v103, -1, -1);
      MEMORY[0x19A902C50](v101, -1, -1);
    }

    else
    {

      v81 = *(v76 + 8);
      v81(v75, v77);
    }

    v82 = *(v0 + 248);
    v83 = *(v0 + 224);
    sub_19A41CC98(&qword_1EAFA14B8, MEMORY[0x1E69A0A68]);
    swift_allocError();
    v71(v84, v82, v83);
    swift_willThrow();
    v81(v82, v83);
    v24 = *(v0 + 64);
    goto LABEL_32;
  }

  v35 = *(v0 + 208);
  v34 = *(v0 + 216);
  v37 = *(v0 + 192);
  v36 = *(v0 + 200);
  v39 = *(v0 + 120);
  v38 = *(v0 + 128);
  v40 = *(v0 + 112);
  (*(*(v0 + 184) + 96))(v37, *(v0 + 176));
  (*(v35 + 32))(v34, v37, v36);
  sub_19A5721AC();
  if ((*(v39 + 88))(v38, v40) != *MEMORY[0x1E69A09E8])
  {
    v64 = *(v0 + 120);
    v63 = *(v0 + 128);
    v65 = *(v0 + 112);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    (*(v64 + 8))(v63, v65);
    goto LABEL_26;
  }

  v41 = *(v0 + 168);
  v42 = *(v0 + 136);
  v43 = *(v0 + 144);
  v44 = *(v0 + 128);
  (*(*(v0 + 120) + 96))(v44, *(v0 + 112));
  (*(v43 + 32))(v41, v44, v42);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 160);
  v46 = *(v0 + 168);
  v47 = *(v0 + 136);
  v48 = *(v0 + 144);
  v49 = sub_19A5723FC();
  __swift_project_value_buffer(v49, qword_1ED82BCF0);
  v50 = *(v48 + 16);
  v50(v45, v46, v47);
  v51 = sub_19A5723DC();
  v52 = sub_19A57353C();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 160);
  if (v53)
  {
    v56 = *(v0 + 144);
    v55 = *(v0 + 152);
    v57 = *(v0 + 136);
    v58 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v105[0] = v99;
    *v58 = 136315138;
    v50(v55, v54, v57);
    v59 = sub_19A572DDC();
    v61 = v60;
    v102 = *(v56 + 8);
    v102(v54, v57);
    v62 = sub_19A31F114(v59, v61, v105);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_19A2DE000, v51, v52, "DenyListUtility rejected text. %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v99);
    MEMORY[0x19A902C50](v99, -1, -1);
    MEMORY[0x19A902C50](v58, -1, -1);
  }

  else
  {
    v87 = *(v0 + 136);
    v88 = *(v0 + 144);

    v102 = *(v88 + 8);
    v102(v54, v87);
  }

  v89 = *(v0 + 248);
  v90 = *(v0 + 224);
  v91 = *(v0 + 232);
  v93 = *(v0 + 208);
  v92 = *(v0 + 216);
  v94 = *(v0 + 200);
  v95 = *(v0 + 168);
  v96 = *(v0 + 136);
  v105[0] = MEMORY[0x1E69E7CC0];
  sub_19A41A1E4(v105);
  v102(v95, v96);
  (*(v93 + 8))(v92, v94);
  (*(v91 + 8))(v89, v90);
  v104 = v105[0];

  v97 = *(v0 + 8);
  v98 = *(v0 + 448) == 0;

  return v97(v98, 0, 0, v104);
}

uint64_t sub_19A41CC98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A41CCE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptEdit(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A41CD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptEdit(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A41CDA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A41CDF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A41CE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_19A322580(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  result = sub_19A57389C();
  v6 = v26;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_26;
    }

    if (*(*(a1 + 48) + result))
    {
      if (*(*(a1 + 48) + result) == 1)
      {
        v11 = 0xE300000000000000;
        v12 = 6647407;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x656C7069746C756DLL;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1869768058;
    }

    v13 = *(a1 + 36);
    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_19A322580((v14 > 1), v15 + 1, 1);
      v6 = v26;
      v13 = v24;
      result = v25;
    }

    *(v27 + 16) = v15 + 1;
    v16 = v27 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_27;
    }

    v4 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v9);
    if ((v17 & v10) == 0)
    {
      goto LABEL_28;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 64 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_19A2F1470(result, v13, 0);
          v6 = v26;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_19A2F1470(result, v13, 0);
      v6 = v26;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

VisualGeneration::DetectedPeoplePolicy::Count_optional __swiftcall DetectedPeoplePolicy.Count.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19A573C2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DetectedPeoplePolicy.Count.rawValue.getter()
{
  v1 = 6647407;
  if (*v0 != 1)
  {
    v1 = 0x656C7069746C756DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869768058;
  }
}

uint64_t sub_19A41D164(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 6647407;
  if (v2 != 1)
  {
    v4 = 0x656C7069746C756DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1869768058;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 6647407;
  if (*a2 != 1)
  {
    v8 = 0x656C7069746C756DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1869768058;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A573F1C();
  }

  return v11 & 1;
}

uint64_t sub_19A41D250()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A41D2E4()
{
  sub_19A572E4C();
}

uint64_t sub_19A41D364()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

void sub_19A41D400(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 6647407;
  if (v2 != 1)
  {
    v5 = 0x656C7069746C756DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1869768058;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t DetectedPeoplePolicy.allowedPeopleCounts.getter()
{
  type metadata accessor for DetectedPeoplePolicy();
}

uint64_t type metadata accessor for DetectedPeoplePolicy()
{
  result = qword_1EAF9F588;
  if (!qword_1EAF9F588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetectedPeoplePolicy.detectedPeopleCount.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DetectedPeoplePolicy();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t DetectedPeoplePolicy.description.getter()
{
  sub_19A57395C();
  v1 = type metadata accessor for DetectedPeoplePolicy();
  if (*(v0 + *(v1 + 24)))
  {
    if (*(v0 + *(v1 + 24)) == 1)
    {
      v2 = 0xE300000000000000;
      v3 = 6647407;
    }

    else
    {
      v2 = 0xE800000000000000;
      v3 = 0x656C7069746C756DLL;
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 1869768058;
  }

  MEMORY[0x19A900A50](v3, v2);

  MEMORY[0x19A900A50](0xD000000000000012, 0x800000019A599610);
  sub_19A41CE58(*(v0 + *(v1 + 20)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A331C2C();
  v4 = sub_19A572BEC();
  v6 = v5;

  MEMORY[0x19A900A50](v4, v6);

  MEMORY[0x19A900A50](0x6465776F6C6C6120, 0xE800000000000000);
  return 0;
}

unint64_t sub_19A41D730()
{
  result = qword_1EAF9F5A0;
  if (!qword_1EAF9F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F5A0);
  }

  return result;
}

uint64_t sub_19A41D784(uint64_t a1)
{
  result = sub_19A41D80C(&qword_1EAF9EC50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A41D7C8(uint64_t a1)
{
  result = sub_19A41D80C(&qword_1EAF9EC58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A41D80C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DetectedPeoplePolicy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A41D854()
{
  v1 = sub_19A572C9C();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = *(v0 + *(type metadata accessor for DetectedPeoplePolicy() + 20));
  v7 = sub_19A3796E4(&unk_1F0DA8120);
  v8 = sub_19A41DD48(v6, v7);

  if (v8)
  {
    sub_19A572C4C();
  }

  else
  {
    v9 = sub_19A3796E4(&unk_1F0DA8148);
    v10 = sub_19A41DD48(v6, v9);

    if (v10 & 1) != 0 || (v11 = sub_19A3796E4(&unk_1F0DA8170), v12 = sub_19A41DD48(v6, v11), , (v12))
    {
      sub_19A572C8C();
      sub_19A572C7C();
      sub_19A572C6C();

      sub_19A572C7C();
    }

    else
    {
      sub_19A572C8C();
      sub_19A572C7C();
      sub_19A572C6C();

      sub_19A572C7C();
      sub_19A41CE58(v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
      sub_19A331C2C();
      sub_19A572BEC();

      sub_19A572C6C();

      sub_19A572C7C();
    }

    sub_19A572CAC();
  }

  sub_19A5710EC();
  return sub_19A572D7C();
}

uint64_t sub_19A41DD48(uint64_t result, uint64_t a2)
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
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_19A5740BC();
    sub_19A572E4C();

    v16 = sub_19A57410C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v27 = v12;
    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v20 = 0xE400000000000000;
      v21 = 1869768058;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v22 = 6647407;
      }

      else
      {
        v22 = 0x656C7069746C756DLL;
      }

      if (v15 == 1)
      {
        v23 = 0xE300000000000000;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      if (v21 == v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v24 = sub_19A573F1C();

      if (v24)
      {
        goto LABEL_35;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0xE300000000000000;
      v21 = 6647407;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v20 = 0xE800000000000000;
    v21 = 0x656C7069746C756DLL;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v23 = 0xE400000000000000;
    if (v21 != 1869768058)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v20 != v23)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v25;
    v3 = v26;
    v8 = v27;
  }

  while (v27);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_19A41E018()
{
  type metadata accessor for GeneratedImage();
  if (v0 <= 0x3F)
  {
    sub_19A41E0A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A41E0A4()
{
  if (!qword_1EAF9F0C8)
  {
    sub_19A41E100();
    v0 = sub_19A5733AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F0C8);
    }
  }
}

unint64_t sub_19A41E100()
{
  result = qword_1EAF9F5A8;
  if (!qword_1EAF9F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F5A8);
  }

  return result;
}

unint64_t sub_19A41E164()
{
  result = qword_1EAFA14C0;
  if (!qword_1EAFA14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA14C0);
  }

  return result;
}

CGImageRef __swiftcall Image.asCGImage()()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v8 = *v0;
    if (*(v0 + 8) == 1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      [v8 extent];
      v3 = [v2 createCGImage:v8 fromRect:?];

      if (v3)
      {
        return v3;
      }

      __break(1u);
    }

    else
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
      v6 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      [v5 extent];
      v7 = [v6 createCGImage:v5 fromRect:?];

      if (v7)
      {
        return v7;
      }
    }

    __break(1u);
  }

  else
  {

    return v1;
  }

  return result;
}

uint64_t sub_19A41E304(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_19A5733EC();
  if (!v19)
  {
    return sub_19A5730CC();
  }

  v41 = v19;
  v45 = sub_19A573A9C();
  v32 = sub_19A573AAC();
  sub_19A573A4C();
  result = sub_19A5733DC();
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
      v22 = sub_19A57345C();
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
      sub_19A573A8C();
      result = sub_19A57342C();
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

uint64_t Optional<A>.radarDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v12, a1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, a1);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = (*(a2 + 8))(v8, a2);
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

uint64_t Array<A>.radarDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10[2] = a2;
  v10[3] = a3;
  v3 = sub_19A57312C();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_19A41E304(sub_19A41EC94, v10, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A331C2C();
  v6 = sub_19A572BEC();
  v8 = v7;

  v11 = 91;
  v12 = 0xE100000000000000;
  MEMORY[0x19A900A50](v6, v8);

  MEMORY[0x19A900A50](93, 0xE100000000000000);

  return v11;
}

uint64_t RadarDescriptionConvertible.radarDescription.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_19A572DAC();
}

uint64_t String.radarDescription.getter()
{
  MEMORY[0x19A900A50]();
  MEMORY[0x19A900A50](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_19A41EB8C()
{
  MEMORY[0x19A900A50](*v0, v0[1]);
  MEMORY[0x19A900A50](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_19A41EBDC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_19A572DAC();
}

uint64_t sub_19A41EC94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 8))(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_19A41ED10(__CVBuffer *a1, uint64_t *a2, char a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = *v3;
  if (*(v3 + 8))
  {
    if (*(v3 + 8) == 1)
    {
      memset(v20, 0, sizeof(v20));
      v21 = 1;
      v15 = v7;
      v16 = v6;
      v17 = 0;
      sub_19A394880(v8, a1, v20, &v15, a3);
    }

    else
    {
      memset(v22, 0, sizeof(v22));
      v23 = 1;
      Width = CVPixelBufferGetWidth(v8);
      Height = CVPixelBufferGetHeight(v8);
      v12 = Width == v7 && Height == v6;
      if (v12 && CVPixelBufferGetIOSurface(v8) && CVPixelBufferGetPixelFormatType(v8) == a1)
      {
        v13 = v8;
      }

      else
      {
        v14 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
        v15 = v7;
        v16 = v6;
        v17 = 0;
        sub_19A394880(v14, a1, v22, &v15, a3);
      }
    }
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v19 = 1;
    v9 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    v15 = v7;
    v16 = v6;
    v17 = 0;
    sub_19A394880(v9, a1, v18, &v15, a3);
  }
}

void sub_19A41EEC0(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 ageType];
  if (v4 >= 6)
  {
    v5 = 5;
  }

  else
  {
    v5 = 0x30402010005uLL >> (8 * v4);
  }

  v6 = [a1 sexType];
  v7 = [a1 skintoneType];

  v8 = 0x908050403020AuLL >> (8 * v7);
  if (v7 >= 7)
  {
    LOBYTE(v8) = 10;
  }

  if (v6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v6 == 1)
  {
    v9 = 0;
  }

  *a2 = v9;
  a2[1] = v5;
  a2[2] = v8;
}

uint64_t sub_19A41EF90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  v4 = sub_19A421E4C();
  result = MEMORY[0x19A900F10](v2, v3, v4);
  v6 = 0;
  v15 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  for (i = (v7 + 63) >> 6; v9; result = )
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(a1 + 48) + ((v11 << 9) | (8 * v12)));

    sub_19A322B68(&v14, v13);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v15;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A41F0BC(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_19A5740BC(), sub_19A572E4C(), , v4 = sub_19A57410C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    v8 = a1 << 16;
    while (*(*(a2 + 48) + v6) << 16 != v8)
    {
      v9 = sub_19A573F1C();
      swift_bridgeObjectRelease_n();
      if ((v9 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v9 & 1;
    }

    swift_bridgeObjectRelease_n();
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_19A41F1F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_19A57203C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_19A422064(&qword_1EAFA14E8, MEMORY[0x1E69CA6B8]), v7 = sub_19A572B3C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_19A422064(&qword_1EAFA14F0, MEMORY[0x1E69CA6B8]);
      v15 = sub_19A572C2C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_19A41F408(uint64_t a1, uint64_t a2)
{
  v3 = sub_19A57102C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_19A422064(&qword_1EAF9FD60, MEMORY[0x1E69695A8]), v7 = sub_19A572B3C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_19A422064(&qword_1EAF9FFB8, MEMORY[0x1E69695A8]);
      v15 = sub_19A572C2C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_19A41F620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_19A5740BC();
  MEMORY[0x19A901C40](a1);
  MEMORY[0x19A901C40](a2);
  v6 = sub_19A57410C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
    v13 = v12 == a1 && v11 == a2;
    result = v13;
    if (v13)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t sub_19A41F704(uint64_t a1, uint64_t a2)
{
  v3 = sub_19A57209C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_19A422064(&qword_1EAFA14F8, MEMORY[0x1E69CA6E8]), v7 = sub_19A572B3C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_19A422064(&qword_1EAFA1500, MEMORY[0x1E69CA6E8]);
      v15 = sub_19A572C2C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_19A41F91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_19A5740BC();
  sub_19A572E4C();
  v6 = sub_19A57410C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_19A573F1C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_19A41FA14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA14D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A57A9D0;
  *(inited + 32) = vdupq_n_s64(0xA0uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_19A576E10;
  *(v1 + 32) = vdupq_n_s64(0x140uLL);
  *(inited + 48) = v1;
  *(inited + 56) = vdupq_n_s64(0x200uLL);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19A576E10;
  *(v2 + 32) = vdupq_n_s64(0x400uLL);
  *(inited + 72) = v2;
  *(inited + 80) = vdupq_n_s64(0x300uLL);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19A576E20;
  *(v3 + 32) = vdupq_n_s64(0x600uLL);
  *(v3 + 48) = vdupq_n_s64(0xC00uLL);
  *(inited + 96) = v3;
  *(inited + 104) = xmmword_19A5842D0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19A576E10;
  *(v4 + 32) = xmmword_19A5842E0;
  *(inited + 120) = v4;
  v5 = sub_19A3304C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA14E0);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_19A41FB98(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  *(v3 + 48) = *a1;
  *(v3 + 104) = *(a1 + 8);
  return MEMORY[0x1EEE6DFA0](sub_19A41FBC8, 0, 0);
}

uint64_t sub_19A41FBC8()
{
  v48 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_19A330818(MEMORY[0x1E69E7CC0]);
  if (v1)
  {
    if (v1 == 1)
    {
      [v2 extent];
      sub_19A39AAB4(v47, v5, v6);
      v7 = *(&v47[0] + 1);
      Width = *&v47[0];
      goto LABEL_7;
    }

    Width = CVPixelBufferGetWidth(v2);
    Height = CVPixelBufferGetHeight(v2);
  }

  else
  {
    Width = CGImageGetWidth(v2);
    Height = CGImageGetHeight(v2);
  }

  v7 = Height;
LABEL_7:

  v11 = sub_19A421CF8(v10);

  *(v0 + 16) = v11;
  if (sub_19A41F620(Width, v7, v11))
  {
    v12 = *(v0 + 48);
    v13 = *(v0 + 104);
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v47[0] = v4;
    sub_19A33D548(v12, v13, Width, v7, isUniquelyReferenced_nonNull_native);
    v4 = *&v47[0];
    sub_19A4213F0(Width, v7, v47);
    v11 = *(v0 + 16);
  }

  v42 = v4;
  *(v0 + 56) = v4;
  v16 = swift_allocObject();
  v17 = 0;
  *(v0 + 64) = v16;
  v41 = v16;
  *(v16 + 16) = v3;
  v44 = (v16 + 16);
  v18 = v11 + 56;
  v19 = -1;
  v20 = -1 << *(v11 + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v11 + 56);
  v22 = (63 - v20) >> 6;
  v43 = v11;
  if (v21)
  {
    while (1)
    {
LABEL_16:
      v24 = *(v0 + 40);
      v25 = *(*(v11 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v21)))));
      v46[0] = Width;
      v46[1] = v7;
      v45 = v25;
      v47[0] = v25;
      v26 = (*(*v24 + 128))(v46, v47);
      if (v27)
      {

        sub_19A394160();
        swift_allocError();
        *v39 = Width;
        *(v39 + 8) = v7;
        *(v39 + 16) = v45;
        *(v39 + 32) = 1;
        swift_willThrow();

        v40 = *(v0 + 8);

        return v40();
      }

      if (((*(&v45 + 1) | v45) & 0x8000000000000000) != 0)
      {
        break;
      }

      v28 = [objc_allocWithZone(MEMORY[0x1E69AE358]) initWithScaledImageWidth:v45 scaledImageHeight:v26 scalingModel:?];
      MEMORY[0x19A900BE0]();
      if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A5730AC();
      }

      v21 &= v21 - 1;
      sub_19A5730FC();

      v11 = v43;
      if (!v21)
      {
        goto LABEL_12;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    v29 = sub_19A573B4C();
  }

  else
  {
    while (1)
    {
LABEL_12:
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v23 >= v22)
      {
        break;
      }

      v21 = *(v18 + 8 * v23);
      ++v17;
      if (v21)
      {
        v17 = v23;
        goto LABEL_16;
      }
    }

    if (*v44 >> 62)
    {
      goto LABEL_37;
    }

    v29 = *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29 < 1)
  {

    v32 = *(v0 + 8);

    return v32(v42);
  }

  else
  {
    v30 = *(v0 + 104);
    *&v47[0] = *(v0 + 48);
    BYTE8(v47[0]) = v30;
    sub_19A387F80();
    *(v0 + 72) = v31;
    v34 = v31;
    v35 = *(v0 + 40);
    v36 = swift_task_alloc();
    *(v0 + 80) = v36;
    v36[2] = v35;
    v36[3] = v41;
    v36[4] = v34;
    v37 = swift_task_alloc();
    *(v0 + 88) = v37;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA14C8);
    *v37 = v0;
    v37[1] = sub_19A420108;

    return MEMORY[0x1EEE6DE38](v0 + 24, 0, 0, 0xD00000000000001ALL, 0x800000019A599760, sub_19A421D70, v36, v38);
  }
}

uint64_t sub_19A420108()
{
  *(*v1 + 96) = v0;

  if (v0)
  {

    v2 = sub_19A420534;
  }

  else
  {

    v2 = sub_19A420250;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A420250()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_19A573B4C();
    v28 = v0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v31 = v1;
      v32 = v1 & 0xC000000000000001;
      v29 = v1 & 0xFFFFFFFFFFFFFF8;
      v30 = v2;
      v4 = *(v0 + 56);
      while (1)
      {
        if (v32)
        {
          v6 = MEMORY[0x19A901520](v3, v1);
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v3 >= *(v29 + 16))
          {
            goto LABEL_29;
          }

          v6 = *(v1 + 8 * v3 + 32);
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        v33 = v7;
        v8 = v6;
        v9 = [v6 pixelBuffer];
        Width = CVPixelBufferGetWidth(v9);
        Height = CVPixelBufferGetHeight(v9);
        v12 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v0 = sub_19A31FCD8(Width, Height);
        v15 = v4[2];
        v16 = (v14 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_27;
        }

        v1 = v14;
        if (v4[3] >= v17)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_19A32CCF0();
            if (v1)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_19A32A5E8(v17, isUniquelyReferenced_nonNull_native);
          v18 = sub_19A31FCD8(Width, Height);
          if ((v1 & 1) != (v19 & 1))
          {

            return sub_19A57404C();
          }

          v0 = v18;
          if (v1)
          {
LABEL_4:
            v5 = v4[7] + 16 * v0;
            v0 = *v5;
            *v5 = v9;
            *(v5 + 8) = 2;

            goto LABEL_5;
          }
        }

        v4[(v0 >> 6) + 8] |= 1 << v0;
        v20 = (v4[6] + 16 * v0);
        *v20 = Width;
        v20[1] = Height;
        v21 = v4[7] + 16 * v0;
        *v21 = v9;
        *(v21 + 8) = 2;

        v22 = v4[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_28;
        }

        v4[2] = v24;
LABEL_5:
        ++v3;
        v1 = v31;
        if (v33 == v30)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v4 = *(v0 + 56);
LABEL_32:
  v26 = *(v28 + 72);

  v27 = *(v28 + 8);

  return v27(v4);
}

uint64_t sub_19A420534()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_19A4205A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA14D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &aBlock[-1] - v10;
  v12 = *(a2 + 16);
  swift_beginAccess();
  if (*(a3 + 16) >> 62)
  {
    sub_19A2F1600(0, &qword_1EAF9F0A8);

    sub_19A573B8C();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_19A573FEC();
    sub_19A2F1600(0, &qword_1EAF9F0A8);
  }

  sub_19A2F1600(0, &qword_1EAF9F0A8);
  v13 = sub_19A57307C();

  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_19A421D7C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A3B899C;
  aBlock[3] = &block_descriptor_4;
  v16 = _Block_copy(aBlock);

  [v12 performRequests:v13 onPixelBuffer:v17 withOrientation:1 andIdentifier:0 completionHandler:v16];
  _Block_release(v16);
}

void sub_19A420864(int a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
    v5 = a2;
    if (qword_1ED824050 != -1)
    {
LABEL_48:
      swift_once();
    }

    v6 = sub_19A5723FC();
    __swift_project_value_buffer(v6, qword_1ED82BCF0);
    v7 = v4;
    v8 = sub_19A5723DC();
    v9 = sub_19A57355C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_19A2DE000, v8, v9, "MADMLScalingRequest failed with error: %@", v10, 0xCu);
      sub_19A3B86A4(v11);
      MEMORY[0x19A902C50](v11, -1, -1);
      MEMORY[0x19A902C50](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA14D0);
    sub_19A57315C();
    return;
  }

  v40 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v15 = *(a4 + 16);
  if (v15 >> 62)
  {
    v16 = sub_19A573B4C();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v16)
  {
    goto LABEL_44;
  }

  v17 = 0;
  while (2)
  {
    v4 = v17;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x19A901520](v4, v15);
        v17 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v4 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v18 = *(v15 + 8 * v4 + 32);
        v17 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      v19 = v18;
      v20 = [v19 error];
      if (v20)
      {
        v30 = v20;

        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        v31 = sub_19A5723FC();
        __swift_project_value_buffer(v31, qword_1ED82BCF0);
        v32 = v30;
        v33 = sub_19A5723DC();
        v34 = sub_19A57355C();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v35 = 138412290;
          v37 = v32;
          v38 = _swift_stdlib_bridgeErrorToNSError();
          *(v35 + 4) = v38;
          *v36 = v38;
          _os_log_impl(&dword_19A2DE000, v33, v34, "MADMLScalingRequest failed with error: %@", v35, 0xCu);
          sub_19A3B86A4(v36);
          MEMORY[0x19A902C50](v36, -1, -1);
          MEMORY[0x19A902C50](v35, -1, -1);
        }

        v39 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA14D0);
        sub_19A57315C();

        return;
      }

      v21 = [v19 results];

      if (v21)
      {
        break;
      }

LABEL_29:
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v25 = sub_19A5723FC();
      __swift_project_value_buffer(v25, qword_1ED82BCF0);
      v26 = sub_19A5723DC();
      v27 = sub_19A57355C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_19A2DE000, v26, v27, "MADService had no errors on our MADMLScalingRequest, but returned no values.", v28, 2u);
        MEMORY[0x19A902C50](v28, -1, -1);
      }

      ++v4;
      if (v17 == v16)
      {
        goto LABEL_44;
      }
    }

    sub_19A2F1600(0, &qword_1EAF9F030);
    v22 = sub_19A57308C();

    if (v22 >> 62)
    {
      if (!sub_19A573B4C())
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x19A901520](0, v22);
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v23 = *(v22 + 32);
    }

    v24 = v23;

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_29;
    }

    v29 = v24;
    MEMORY[0x19A900BE0]();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A5730AC();
    }

    sub_19A5730FC();

    if (v17 != v16)
    {
      continue;
    }

    break;
  }

LABEL_44:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA14D0);
  sub_19A57316C();
}

BOOL sub_19A420E80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 160 && v3 == 320)
  {
    return 0;
  }

  if (v2 == 512 && v3 == 1024)
  {
    return 1;
  }

  if (v2 != 768)
  {
    return v2 == 512 && v3 == 2048;
  }

  result = 1;
  if (v3 != 1536 && v3 != 3072)
  {
    return v2 == 512 && v3 == 2048;
  }

  return result;
}

uint64_t sub_19A420EF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A420F98(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];
  if (*a1 == *a2 && v6 == v8)
  {
    return 1;
  }

  v14[2] = v2;
  v14[4] = v3;
  v14[5] = v4;
  v10 = *v2;
  v14[0] = v5;
  v14[1] = v6;
  v13[0] = v7;
  v13[1] = v8;
  (*(*v10 + 128))(v14, v13);
  return (v11 ^ 1) & 1;
}

uint64_t sub_19A421020(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A34B5BC;

  return sub_19A41FB98(a1, a2);
}

uint64_t sub_19A4210F8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_19A5740BC();
  sub_19A572E4C();
  v6 = sub_19A57410C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_19A573F1C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19A326790();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_19A421524(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_19A421234(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_19A5740BC();
  v5 = *(a1 + 16);
  MEMORY[0x19A901C40](v5);
  if (v5)
  {
    v6 = a1 + 40;
    v7 = v5;
    do
    {

      sub_19A572E4C();

      v6 += 16;
      --v7;
    }

    while (v7);
  }

  v8 = sub_19A57410C();
  v9 = v4 + 56;
  v10 = -1 << *(v4 + 32);
  v11 = v8 & ~v10;
  if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  v13 = *(v4 + 48);
  while (1)
  {
    v14 = *(v13 + 8 * v11);
    if (*(v14 + 16) == v5)
    {
      break;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 && v14 != a1)
  {
    v15 = (v14 + 40);
    v16 = (a1 + 40);
    v17 = v5;
    do
    {
      v18 = *(v15 - 1) == *(v16 - 1) && *v15 == *v16;
      if (!v18 && (sub_19A573F1C() & 1) == 0)
      {
        goto LABEL_6;
      }

      v15 += 2;
      v16 += 2;
    }

    while (--v17);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v2;
  v23 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19A3268EC();
    v20 = v23;
  }

  v21 = *(*(v20 + 48) + 8 * v11);
  sub_19A4216E8(v11);
  *v2 = v23;
  return v21;
}

unint64_t sub_19A4213F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1);
  MEMORY[0x19A901C40](a2);
  result = sub_19A57410C();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a1 && v13 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v18 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_19A326B7C();
      v17 = v18;
    }

    *a3 = *(*(v17 + 48) + 16 * v10);
    result = sub_19A421904(v10);
    *v3 = v18;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_8:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
  }

  return result;
}

unint64_t sub_19A421524(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19A5738AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_19A5740BC();

        sub_19A572E4C();
        v10 = sub_19A57410C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_19A4216E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19A5738AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_19A5740BC();
        MEMORY[0x19A901C40](*(v10 + 16));
        v11 = *(v10 + 16);
        if (v11)
        {
          v22 = v2;
          v12 = v3;
          v13 = v9;

          v14 = v10 + 40;
          do
          {

            sub_19A572E4C();

            v14 += 16;
            --v11;
          }

          while (v11);

          v9 = v13;
          v3 = v12;
          v2 = v22;
        }

        v15 = sub_19A57410C() & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_15;
        }

        if (v2 >= v15)
        {
LABEL_15:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_19A421904(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19A5738AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        sub_19A5740BC();
        MEMORY[0x19A901C40](v11);
        MEMORY[0x19A901C40](v12);
        v13 = sub_19A57410C() & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 16 * v2);
          v16 = (v14 + 16 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_19A421AC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x19A900F10](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_19A322A18(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_19A421B5C(uint64_t a1)
{
  v2 = sub_19A57106C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_19A422064(&qword_1EAF9F008, MEMORY[0x1E6969610]);
  result = MEMORY[0x19A900F10](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_19A322D50(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_19A421CF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_19A332208();
  result = MEMORY[0x19A900F10](v2, &type metadata for PixelDimensions, v3);
  v7 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      sub_19A323030(&v6, *(v5 - 1), *v5);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_19A421D7C(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA14D0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_19A420864(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19A421E4C()
{
  result = qword_1EAF9E880;
  if (!qword_1EAF9E880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF9FCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E880);
  }

  return result;
}

uint64_t sub_19A421EC8(uint64_t a1)
{
  v2 = sub_19A57112C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_19A422064(&qword_1EAF9F8D8, MEMORY[0x1E6969770]);
  result = MEMORY[0x19A900F10](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_19A32366C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_19A422064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ExternalGeneratorInfo.getGeneratorInfo(for:)(_BYTE *a1)
{
  LOBYTE(v3) = *a1;
  type metadata accessor for ExternalGeneratorInfo(0);
  v1 = swift_allocObject();
  sub_19A422F40(&v3);
  return v1;
}

uint64_t sub_19A422140()
{
  v14 = v0;
  sub_19A571F3C();
  sub_19A571F2C();
  sub_19A571EFC();

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);
  sub_19A33546C(v0 + 16, v0 + 56, &qword_1EAFA0AB8);
  v2 = sub_19A5723DC();
  v3 = sub_19A57354C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_19A31F114(0xD000000000000013, 0x800000019A599780, &v13);
    *(v4 + 12) = 2082;
    sub_19A33546C(v0 + 56, v0 + 96, &qword_1EAFA0AB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AB8);
    v6 = sub_19A572DAC();
    v8 = v7;
    sub_19A2F3FA0(v0 + 56, &qword_1EAFA0AB8);
    v9 = sub_19A31F114(v6, v8, &v13);

    *(v4 + 14) = v9;
    _os_log_impl(&dword_19A2DE000, v2, v3, "%{public}s: found selected partner to be %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  else
  {

    sub_19A2F3FA0(v0 + 56, &qword_1EAFA0AB8);
  }

  v10 = *(v0 + 136);
  sub_19A33546C(v0 + 16, v0 + 56, &qword_1EAFA0AB8);
  sub_19A4223F8(v0 + 56, v10);
  sub_19A2F3FA0(v0 + 16, &qword_1EAFA0AB8);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_19A4223F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_19A33546C(a1, v13, &qword_1EAFA0AB8);
  if (!v14)
  {
    sub_19A2F3FA0(v13, &qword_1EAFA0AB8);
    sub_19A57118C();
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(v13, v14);
  v4 = sub_19A571F7C();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  v7 = sub_19A57118C();
  if (!v6)
  {
LABEL_10:

    result = sub_19A2F3FA0(a1, &qword_1EAFA0AB8);
    goto LABEL_11;
  }

  if (v7 == v4 && v6 == v8)
  {

    result = sub_19A2F3FA0(a1, &qword_1EAFA0AB8);
LABEL_13:
    v12 = 1;
    goto LABEL_14;
  }

  v10 = sub_19A573F1C();

  result = sub_19A2F3FA0(a1, &qword_1EAFA0AB8);
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = 2;
LABEL_14:
  *a2 = v12;
  return result;
}

uint64_t sub_19A422578()
{
  v15 = v0;
  sub_19A571F3C();
  sub_19A571F2C();
  sub_19A571EEC();

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);
  sub_19A33546C(v0 + 16, v0 + 56, &qword_1EAFA0AB8);
  v2 = sub_19A5723DC();
  v3 = sub_19A57354C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_19A31F114(0xD000000000000012, 0x800000019A5997A0, &v14);
    *(v4 + 12) = 2082;
    sub_19A33546C(v0 + 56, v0 + 96, &qword_1EAFA0AB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AB8);
    v6 = sub_19A572DAC();
    v8 = v7;
    sub_19A2F3FA0(v0 + 56, &qword_1EAFA0AB8);
    v9 = sub_19A31F114(v6, v8, &v14);

    *(v4 + 14) = v9;
    _os_log_impl(&dword_19A2DE000, v2, v3, "%{public}s: found default partner to be %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  else
  {

    sub_19A2F3FA0(v0 + 56, &qword_1EAFA0AB8);
  }

  v10 = *(v0 + 136);
  sub_19A33546C(v0 + 16, v0 + 56, &qword_1EAFA0AB8);
  sub_19A4223F8(v0 + 56, &v13);
  sub_19A2F3FA0(v0 + 16, &qword_1EAFA0AB8);
  *v10 = v13 & 1;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_19A42285C()
{
  v15 = v0;
  sub_19A571F3C();
  sub_19A571F2C();
  sub_19A571F1C();

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);
  sub_19A33546C(v0 + 16, v0 + 56, &qword_1EAFA0AB8);
  v2 = sub_19A5723DC();
  v3 = sub_19A57354C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_19A31F114(0xD00000000000001ALL, 0x800000019A5997C0, &v14);
    *(v4 + 12) = 2082;
    sub_19A33546C(v0 + 56, v0 + 96, &qword_1EAFA0AB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AB8);
    v6 = sub_19A572DAC();
    v8 = v7;
    sub_19A2F3FA0(v0 + 56, &qword_1EAFA0AB8);
    v9 = sub_19A31F114(v6, v8, &v14);

    *(v4 + 14) = v9;
    _os_log_impl(&dword_19A2DE000, v2, v3, "%{public}s: found previously selected partner to be %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  else
  {

    sub_19A2F3FA0(v0 + 56, &qword_1EAFA0AB8);
  }

  v10 = *(v0 + 136);
  sub_19A33546C(v0 + 16, v0 + 56, &qword_1EAFA0AB8);
  sub_19A4223F8(v0 + 56, &v13);
  sub_19A2F3FA0(v0 + 16, &qword_1EAFA0AB8);
  *v10 = v13 & 1;
  v11 = *(v0 + 8);

  return v11();
}

VisualGeneration::ExternalGeneratorType_optional __swiftcall ExternalGeneratorType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19A573C2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ExternalGeneratorType.rawValue.getter()
{
  if (*v0)
  {
    return 0x54504774616863;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_19A422BB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x54504774616863;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x54504774616863;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A422C58()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A422CD4()
{
  sub_19A572E4C();
}

uint64_t sub_19A422D3C()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A422DB4@<X0>(char *a1@<X8>)
{
  v2 = sub_19A573C2C();

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

void sub_19A422E14(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x54504774616863;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_19A422EFC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

_BYTE *sub_19A422F40(uint64_t *a1)
{
  v2 = v1;
  v54 = sub_19A57186C();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_19A57192C();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA15F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v50[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1508);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v50[-v9];
  v10 = sub_19A57188C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = sub_19A57177C();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_19A57143C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(a1) = *a1;
  v2[16] = a1;
  v21 = geteuid();
  v61 = v2;
  if (!v21)
  {
    if (qword_1ED824050 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_6;
  }

  if (a1)
  {
    v51 = a1;
    sub_19A57142C();
    sub_19A57141C();
    (*(v17 + 8))(v19, v16);
    (*(v11 + 104))(v13, *MEMORY[0x1E69A12B8], v10);
    sub_19A57175C();
    sub_19A57190C();
    v22 = v59;
    sub_19A57191C();
    (*(v57 + 8))(v5, v58);
    v23 = sub_19A5718FC();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      (*(v55 + 8))(v15, v56);
      sub_19A2F3FA0(v22, &qword_1EAFA15F8);
      v25 = 1;
      v2 = v61;
      v26 = v60;
    }

    else
    {
      v33 = v52;
      sub_19A5718EC();
      (*(v24 + 8))(v22, v23);
      v26 = v60;
      sub_19A57180C();
      (*(v53 + 8))(v33, v54);
      (*(v55 + 8))(v15, v56);
      v25 = 0;
      v2 = v61;
    }

    v34 = sub_19A5717FC();
    (*(*(v34 - 8) + 56))(v26, v25, 1, v34);
    sub_19A3351B8(v26, &v2[OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_generationCapabilities], &qword_1EAFA1508);
    LOBYTE(a1) = v51;
  }

  else
  {
LABEL_9:
    v31 = OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_generationCapabilities;
    v32 = sub_19A5717FC();
    (*(*(v32 - 8) + 56))(&v2[v31], 1, 1, v32);
  }

  sub_19A571F3C();
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  sub_19A571F2C();
  v35 = sub_19A571F0C();

  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = a1;
    v38 = 0;
    v39 = v35 + 32;
    a1 = &qword_1EAFA0AB8;
    v2 = &unk_19A57D9C8;
    while (1)
    {
      if (v38 >= *(v35 + 16))
      {
        __break(1u);
LABEL_34:
        swift_once();
LABEL_6:
        v27 = sub_19A5723FC();
        __swift_project_value_buffer(v27, qword_1ED82BCF0);
        v28 = sub_19A5723DC();
        v29 = sub_19A57355C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_19A2DE000, v28, v29, "GenerativeModelsAvailability doesn't work for root user. Skipping image generation capabilities retrieval.", v30, 2u);
          MEMORY[0x19A902C50](v30, -1, -1);
        }

        goto LABEL_9;
      }

      sub_19A2F3EF0(v39, v65);
      sub_19A2F3EF0(v65, v64);
      sub_19A33546C(v64, v62, &qword_1EAFA0AB8);
      if (!v63)
      {
        break;
      }

      __swift_project_boxed_opaque_existential_1(v62, v63);
      v40 = sub_19A571F7C();
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      v43 = sub_19A57118C();
      if (!v42)
      {
        goto LABEL_15;
      }

      if (v43 == v40 && v42 == v44)
      {

        sub_19A2F3FA0(v64, &qword_1EAFA0AB8);
      }

      else
      {
        v45 = sub_19A573F1C();

        sub_19A2F3FA0(v64, &qword_1EAFA0AB8);
        if ((v45 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v37)
      {

LABEL_30:

        sub_19A2F3FA0(&v66, &qword_1EAFA0AB8);
        sub_19A2EA460(v65, &v66);
LABEL_31:
        v2 = v61;
        goto LABEL_32;
      }

      v46 = sub_19A573F1C();

      if (v46)
      {
        goto LABEL_30;
      }

LABEL_16:
      ++v38;
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      v39 += 40;
      if (v36 == v38)
      {

        goto LABEL_31;
      }
    }

    sub_19A2F3FA0(v62, &qword_1EAFA0AB8);
    sub_19A57118C();
LABEL_15:

    sub_19A2F3FA0(v64, &qword_1EAFA0AB8);
    goto LABEL_16;
  }

LABEL_32:
  v47 = &v2[OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_llmProvider];
  v48 = v67;
  *v47 = v66;
  *(v47 + 1) = v48;
  *(v47 + 4) = v68;
  return v2;
}

uint64_t sub_19A423888()
{
  v1 = v0;
  sub_19A571F3C();
  sub_19A571F2C();
  sub_19A571F1C();

  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_19A571F6C();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    sub_19A2F3FA0(v4, &qword_1EAFA0AB8);
    v2 = 0;
  }

  sub_19A33546C(v1 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_llmProvider, v4, &qword_1EAFA0AB8);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_19A571F6C();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    sub_19A2F3FA0(v4, &qword_1EAFA0AB8);
  }

  return v2;
}

id sub_19A4239C4()
{
  if (qword_1EAF9EB08 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAFCA128;

  return v1;
}

uint64_t sub_19A423A20()
{
  sub_19A571F3C();
  sub_19A571F2C();
  sub_19A571F1C();

  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v1 = sub_19A571F5C();
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_19A2F3FA0(v8, &qword_1EAFA0AB8);
  }

  v1 = 0;
LABEL_6:
  sub_19A33546C(v0 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_llmProvider, v8, &qword_1EAFA0AB8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = sub_19A571F5C();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    if (v6)
    {

      return v4;
    }
  }

  else
  {
    sub_19A2F3FA0(v8, &qword_1EAFA0AB8);
  }

  return v1;
}

uint64_t sub_19A423BA8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  sub_19A33546C(v2 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_llmProvider, v9, &qword_1EAFA0AB8);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    a1(v5, v6);
    return __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_19A2F3FA0(v9, &qword_1EAFA0AB8);
    v8 = sub_19A570EAC();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t ExternalGeneratorInfo.ImageStyleInfo.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExternalGeneratorInfo.ImageStyleInfo.localizedDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

char *sub_19A423D04()
{
  v1 = sub_19A57183C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1508);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_19A5717FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A33546C(v0 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_generationCapabilities, v7, &qword_1EAFA1508);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_19A2F3FA0(v7, &qword_1EAFA1508);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v36 = v9;
    v37 = v8;
    (*(v9 + 32))(v11, v7, v8);
    v35 = v11;
    v13 = sub_19A57179C();
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = (v2 + 8);
      v34 = v14 - 1;
      v38 = MEMORY[0x1E69E7CC0];
      do
      {
        v17 = v15;
        while (1)
        {
          if (v17 >= *(v13 + 16))
          {
            __break(1u);

            (*v16)(v4, v1);

            __break(1u);
            return result;
          }

          (*(v2 + 16))(v4, v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17, v1);
          sub_19A4240FC(v4, &v39);
          (*v16)(v4, v1);
          v18 = v40;
          if (v40)
          {
            break;
          }

          ++v17;
          sub_19A428B1C(v39, 0, v41, v42, v43);
          if (v14 == v17)
          {
            goto LABEL_18;
          }
        }

        v32 = v43;
        v33 = v39;
        v30 = v41;
        v31 = v42;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = v38;
        }

        else
        {
          v19 = sub_19A31E8F0(0, *(v38 + 2) + 1, 1, v38);
        }

        v21 = *(v19 + 2);
        v20 = *(v19 + 3);
        v22 = (v21 + 1);
        v24 = v31;
        v23 = v32;
        v25 = v30;
        v26 = v33;
        if (v21 >= v20 >> 1)
        {
          v38 = (v21 + 1);
          v29 = v21;
          v28 = sub_19A31E8F0((v20 > 1), v21 + 1, 1, v19);
          v22 = v38;
          v21 = v29;
          v25 = v30;
          v24 = v31;
          v23 = v32;
          v19 = v28;
          v26 = v33;
        }

        v15 = v17 + 1;
        *(v19 + 2) = v22;
        v38 = v19;
        v27 = &v19[40 * v21];
        *(v27 + 4) = v26;
        *(v27 + 5) = v18;
        *(v27 + 6) = v25;
        *(v27 + 7) = v24;
        *(v27 + 8) = v23;
      }

      while (v34 != v17);
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

LABEL_18:

    (*(v36 + 8))(v35, v37);
    return v38;
  }
}

uint64_t sub_19A4240FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v3 = sub_19A57183C();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v51[-v6];
  v8 = sub_19A57112C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51[-v13];
  sub_19A5710EC();
  v15 = *(v9 + 16);
  v61 = v14;
  v15(v7, v14, v8);
  v59 = v9;
  v16 = *(v9 + 56);
  v17 = v8;
  v16(v7, 0, 1, v8);
  v18 = sub_19A57181C();
  v20 = v19;
  sub_19A2F3FA0(v7, &qword_1EAF9FDC8);
  if (v20)
  {
    v21 = v17;
    v22 = v59;
  }

  else
  {
    v55 = v12;
    v23 = v56;
    v24 = v57;
    v25 = v58;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v26 = sub_19A5723FC();
    __swift_project_value_buffer(v26, qword_1ED82BCF0);
    (*(v24 + 16))(v23, a1, v25);
    v27 = v55;
    v15(v55, v61, v17);
    v28 = sub_19A5723DC();
    v29 = sub_19A57355C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v53 = v28;
      v31 = v30;
      v54 = swift_slowAlloc();
      v62 = v54;
      *v31 = 136446466;
      v52 = v29;
      v32 = sub_19A57182C();
      v33 = v27;
      v35 = v34;
      (*(v24 + 8))(v23, v25);
      v36 = sub_19A31F114(v32, v35, &v62);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      sub_19A42EB3C(&qword_1EAFA15F0, MEMORY[0x1E6969770]);
      v37 = sub_19A573EDC();
      v39 = v38;
      v21 = v17;
      v22 = v59;
      (*(v59 + 8))(v33, v21);
      v40 = sub_19A31F114(v37, v39, &v62);

      *(v31 + 14) = v40;
      v41 = v53;
      _os_log_impl(&dword_19A2DE000, v53, v52, "Failed to get localizedDisplayName for style: %{public}s locale: %{public}s", v31, 0x16u);
      v42 = v54;
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v42, -1, -1);
      MEMORY[0x19A902C50](v31, -1, -1);
    }

    else
    {

      v43 = v17;
      v22 = v59;
      (*(v59 + 8))(v27, v43);
      (*(v24 + 8))(v23, v25);
      v21 = v43;
    }

    v18 = sub_19A57182C();
    v20 = v44;
  }

  if (qword_1EAF9EB08 != -1)
  {
    swift_once();
  }

  v45 = qword_1EAFCA128;
  v46 = sub_19A57182C();
  v48 = v47;
  result = (*(v22 + 8))(v61, v21);
  v50 = v60;
  *v60 = v46;
  v50[1] = v48;
  v50[2] = v18;
  v50[3] = v20;
  v50[4] = v45;
  return result;
}

uint64_t sub_19A424648()
{
  sub_19A33546C(v0 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_llmProvider, v3, &qword_1EAFA0AB8);
  v1 = v4;
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v1 = sub_19A571F7C();
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  else
  {
    sub_19A2F3FA0(v3, &qword_1EAFA0AB8);
  }

  return v1;
}

uint64_t sub_19A4246F8()
{
  v34 = sub_19A57185C();
  v1 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1508);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v27 - v5;
  v7 = sub_19A5717FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A33546C(v0 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_generationCapabilities, v6, &qword_1EAFA1508);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_19A2F3FA0(v6, &qword_1EAFA1508);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_19A5717AC();
  v12 = *(v11 + 16);
  if (!v12)
  {

    (*(v8 + 8))(v10, v7);
    return MEMORY[0x1E69E7CC0];
  }

  v28 = v10;
  v29 = v8;
  v30 = v7;
  v35 = MEMORY[0x1E69E7CC0];
  sub_19A322580(0, v12, 0);
  v13 = v35;
  v15 = *(v1 + 16);
  v14 = v1 + 16;
  v16 = *(v14 + 64);
  v27[1] = v11;
  v17 = v11 + ((v16 + 32) & ~v16);
  v31 = *(v14 + 56);
  v32 = v15;
  v33 = v14;
  v18 = (v14 - 8);
  do
  {
    v19 = v34;
    v32(v3, v17, v34);
    v20 = sub_19A57184C();
    v22 = v21;
    (*v18)(v3, v19);
    v35 = v13;
    v24 = *(v13 + 16);
    v23 = *(v13 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_19A322580((v23 > 1), v24 + 1, 1);
      v13 = v35;
    }

    *(v13 + 16) = v24 + 1;
    v25 = v13 + 16 * v24;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    v17 += v31;
    --v12;
  }

  while (v12);
  (*(v29 + 8))(v28, v30);

  return v13;
}

BOOL sub_19A424A90()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1508);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_19A5717FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A33546C(v1 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_generationCapabilities, v4, &qword_1EAFA1508);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_19A2F3FA0(v4, &qword_1EAFA1508);
  }

  else
  {
    v9 = (*(v6 + 32))(v8, v4, v5);
    if (MEMORY[0x19A8FF360](v9))
    {
      v10 = *(sub_19A57179C() + 16);

      if (v10)
      {
        v11 = *(sub_19A5717AC() + 16);

        if (v11)
        {
          v12 = *(sub_19A57178C() + 16);

          if (v12)
          {
            v13 = *(sub_19A5717CC() + 16);

            if (v13)
            {
              v14 = *(sub_19A5717BC() + 16);

              if (v14)
              {
                v15 = sub_19A5717DC();
                (*(v6 + 8))(v8, v5);
                v16 = *(v15 + 16);

                return v16 != 0;
              }
            }
          }
        }
      }
    }

    (*(v6 + 8))(v8, v5);
  }

  return 0;
}

uint64_t sub_19A424D2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1510);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA15E8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = sub_19A57254C();
  v32 = a2;
  *a2 = v15 & 1;
  sub_19A57255C();
  v16 = sub_19A57259C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, v16);
  if (v19 == 1)
  {
    sub_19A2F3FA0(v14, &qword_1EAFA15E8);
    v20 = 0;
  }

  else
  {
    v20 = sub_19A57257C();
    (*(v17 + 8))(v14, v16);
  }

  v21 = v19 == 1;
  v22 = v32;
  *(v32 + 1) = v20;
  v22[16] = v21;
  sub_19A57255C();
  v23 = v18(v12, 1, v16);
  if (v23 == 1)
  {
    sub_19A2F3FA0(v12, &qword_1EAFA15E8);
    v24 = 0;
  }

  else
  {
    v24 = sub_19A57256C();
    (*(v17 + 8))(v12, v16);
  }

  *(v22 + 3) = v24;
  v22[32] = v23 == 1;
  sub_19A57255C();
  if (v18(v9, 1, v16) == 1)
  {
    v25 = sub_19A5725AC();
    (*(*(v25 - 8) + 8))(a1, v25);
    sub_19A2F3FA0(v9, &qword_1EAFA15E8);
    v26 = sub_19A570FBC();
    v27 = v31;
    (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
  }

  else
  {
    v27 = v31;
    sub_19A57258C();
    v28 = sub_19A5725AC();
    (*(*(v28 - 8) + 8))(a1, v28);
    (*(v17 + 8))(v9, v16);
  }

  v29 = type metadata accessor for ExternalGeneratorInfo.RateLimitInfo(0);
  return sub_19A3351B8(v27, &v22[*(v29 + 28)], &qword_1EAFA1510);
}

uint64_t ExternalGeneratorInfo.RateLimitInfo.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1510);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - v2;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_19A57395C();
  MEMORY[0x19A900A50](0x694C657461527369, 0xEF203A646574696DLL);
  if (*v0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*v0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x19A900A50](v4, v5);

  MEMORY[0x19A900A50](0x3A6567617375202CLL, 0xE900000000000020);
  v6 = *(v0 + 16);
  v13 = *(v0 + 8);
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE60);
  v7 = sub_19A572DAC();
  MEMORY[0x19A900A50](v7);

  MEMORY[0x19A900A50](0x3A74696D696C202CLL, 0xE900000000000020);
  v8 = *(v0 + 32);
  v13 = *(v0 + 24);
  v14 = v8;
  v9 = sub_19A572DAC();
  MEMORY[0x19A900A50](v9);

  MEMORY[0x19A900A50](0x737465736572202CLL, 0xEC000000203A7441);
  v10 = type metadata accessor for ExternalGeneratorInfo.RateLimitInfo(0);
  sub_19A33546C(v0 + *(v10 + 28), v3, &qword_1EAFA1510);
  v11 = sub_19A572DAC();
  MEMORY[0x19A900A50](v11);

  return v15;
}

uint64_t sub_19A425328(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_19A5725AC();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1518);
  v2[10] = swift_task_alloc();
  v3 = sub_19A5725DC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AB0);
  v2[14] = swift_task_alloc();
  v4 = sub_19A57155C();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4254E0, 0, 0);
}

uint64_t sub_19A4254E0()
{
  sub_19A33546C(v0[8] + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_llmProvider, (v0 + 2), &qword_1EAFA0AB8);
  if (!v0[5])
  {
    v1 = v0[15];
    v2 = v0[16];
    v3 = v0[14];
    sub_19A2F3FA0((v0 + 2), &qword_1EAFA0AB8);
    (*(v2 + 56))(v3, 1, 1, v1);
LABEL_5:
    v7 = v0[14];
    v8 = &qword_1EAFA0AB0;
LABEL_6:
    sub_19A2F3FA0(v7, v8);
    v9 = v0[7];
    v10 = type metadata accessor for ExternalGeneratorInfo.RateLimitInfo(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    v11 = v0[1];

    return v11();
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_19A571F4C();
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  (*(v5 + 56))(v6, 0, 1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    goto LABEL_5;
  }

  v13 = v0[11];
  v14 = v0[12];
  v15 = v0[10];
  (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
  sub_19A5725BC();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v16 = v0[10];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v8 = &unk_1EAFA1518;
    v7 = v16;
    goto LABEL_6;
  }

  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  v17 = swift_task_alloc();
  v0[18] = v17;
  *v17 = v0;
  v17[1] = sub_19A425848;
  v18 = v0[9];

  return MEMORY[0x1EEDEB760](v18);
}

uint64_t sub_19A425848()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_19A425A8C;
  }

  else
  {
    v2 = sub_19A42595C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A42595C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  sub_19A424D2C(*(v0 + 72), *(v0 + 56));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 56);
  v8 = type metadata accessor for ExternalGeneratorInfo.RateLimitInfo(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_19A425A8C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t ExternalGeneratorInfo.deinit()
{
  sub_19A2F3FA0(v0 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_generationCapabilities, &qword_1EAFA1508);
  sub_19A2F3FA0(v0 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_llmProvider, &qword_1EAFA0AB8);
  return v0;
}

uint64_t ExternalGeneratorInfo.__deallocating_deinit()
{
  sub_19A2F3FA0(v0 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_generationCapabilities, &qword_1EAFA1508);
  sub_19A2F3FA0(v0 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_llmProvider, &qword_1EAFA0AB8);

  return swift_deallocClassInstance();
}

uint64_t ExternalGeneratorConfiguration.useCaseID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExternalGeneratorConfiguration.prompt.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ExternalGeneratorConfiguration.prompt.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ExternalGeneratorConfiguration.images.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ExternalGeneratorConfiguration.externalOptions.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v7[0] = v1[3];
  v7[1] = v2;
  v8[0] = v1[5];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 90);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_19A428B94(v7, &v6);
}

__n128 ExternalGeneratorConfiguration.externalOptions.setter(uint64_t a1)
{
  v3 = v1[4];
  v6[0] = v1[3];
  v6[1] = v3;
  v7[0] = v1[5];
  *(v7 + 10) = *(v1 + 90);
  sub_19A428BCC(v6);
  v4 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v4;
  v1[5] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 90) = result;
  return result;
}

void __swiftcall ExternalGeneratorConfiguration.ExternalSpecificOptions.init()(VisualGeneration::ExternalGeneratorConfiguration::ExternalSpecificOptions *__return_ptr retstr)
{
  v2 = MEMORY[0x1E69E7CC0];
  retstr->styleName.value._countAndFlagsBits = 0;
  retstr->styleName.value._object = 0;
  retstr->themes._rawValue = v2;
  retstr->appearanceModifiers._rawValue = sub_19A330C30(v2);
  *&retstr->shape = 256;
  retstr->count = 1;
  retstr->additionalImages._rawValue = v2;
  *&retstr->genderDirective.value = 2563;
}

uint64_t ExternalGeneratorConfiguration.ExternalSpecificOptions.themes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ExternalGeneratorConfiguration.ExternalSpecificOptions.styleName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ExternalGeneratorConfiguration.ExternalSpecificOptions.styleName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ExternalGeneratorConfiguration.ExternalSpecificOptions.appearanceModifiers.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ExternalGeneratorConfiguration.ExternalSpecificOptions.additionalImages.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

VisualGeneration::ExternalGeneratorConfiguration::AppearanceModifier_optional __swiftcall ExternalGeneratorConfiguration.AppearanceModifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19A573C2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ExternalGeneratorConfiguration.AppearanceModifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 1919508840;
  v3 = 0x7261657764616568;
  v4 = 0x726F737365636361;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x61486C6169636166;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19A4261E0()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A4262CC()
{
  sub_19A572E4C();
}

uint64_t sub_19A4263A4()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

void sub_19A426498(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1919508840;
  v5 = 0xE800000000000000;
  v6 = 0x7261657764616568;
  v7 = 0xEB00000000736569;
  v8 = 0x726F737365636361;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x800000019A5959C0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x61486C6169636166;
    v3 = 0xEA00000000007269;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

VisualGeneration::ExternalGeneratorConfiguration::Shape_optional __swiftcall ExternalGeneratorConfiguration.Shape.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19A573C2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ExternalGeneratorConfiguration.Shape.rawValue.getter()
{
  v1 = 1819042164;
  if (*v0 != 1)
  {
    v1 = 1701079415;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657261757173;
  }
}

uint64_t sub_19A426694(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1819042164;
  if (v2 != 1)
  {
    v3 = 1701079415;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x657261757173;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 1819042164;
  if (*a2 != 1)
  {
    v6 = 1701079415;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x657261757173;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_19A573F1C();
  }

  return v9 & 1;
}

uint64_t sub_19A426774()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A426804()
{
  sub_19A572E4C();
}

uint64_t sub_19A426880()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

void sub_19A426918(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 1819042164;
  if (v2 != 1)
  {
    v4 = 1701079415;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x657261757173;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

VisualGeneration::ExternalGeneratorConfiguration::Detail_optional __swiftcall ExternalGeneratorConfiguration.Detail.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19A573C2C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ExternalGeneratorConfiguration.Detail.rawValue.getter()
{
  v1 = 7827308;
  v2 = 1751607656;
  if (*v0 != 2)
  {
    v2 = 1869903201;
  }

  if (*v0)
  {
    v1 = 0x6D756964656DLL;
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

uint64_t sub_19A426ADC()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A426B84()
{
  sub_19A572E4C();
}

uint64_t sub_19A426C18()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

void sub_19A426CC8(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7827308;
  v4 = 1751607656;
  if (*v1 != 2)
  {
    v4 = 1869903201;
  }

  if (*v1)
  {
    v3 = 0x6D756964656DLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t static ExternalGenerator.createGenerativePlaygroundConfiguration(generatorType:prompt:images:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  sub_19A57395C();
  MEMORY[0x19A900A50](0xD000000000000013, 0x800000019A597630);
  sub_19A573ACC();
  MEMORY[0x19A900A50](0, 0xE000000000000000);

  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_19A330C30(MEMORY[0x1E69E7CC0]);
  *a5 = 0xD000000000000025;
  *(a5 + 8) = 0x800000019A5960B0;
  *(a5 + 16) = v9;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = v10;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = v11;
  *(a5 + 80) = 256;
  *(a5 + 88) = 1;
  *(a5 + 96) = v10;
  *(a5 + 104) = 2563;
}

uint64_t static ExternalGenerator.createGenerativePlaygroundConfiguration(generatorType:playgroundConfiguration:externalOptions:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v59 = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  MEMORY[0x1EEE9AC00](v59);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  MEMORY[0x1EEE9AC00](v55);
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for GenerativePlayground.AssignmentConfiguration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[1];
  v82 = *a3;
  LODWORD(a1) = *a1;
  v83 = v14;
  *v84 = a3[2];
  *&v84[10] = *(a3 + 42);
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_19A57395C();
  MEMORY[0x19A900A50](0xD000000000000013, 0x800000019A597630);
  v63 = a1;
  LOBYTE(v65) = a1;
  sub_19A573ACC();
  v15 = v68;
  v16 = v69;
  v68 = 0xD000000000000025;
  v69 = 0x800000019A5960B0;
  MEMORY[0x19A900A50](v15, v16);

  v61 = v69;
  v62 = v68;
  sub_19A42E918(v60, v13, type metadata accessor for GenerativePlayground.AssignmentConfiguration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_19A42E9E0(v13, v8, type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2);
    v17 = v8[1];
    v60 = *v8;
    v18 = v59;
    v19 = v8 + *(v59 + 60);
    v20 = v19[8];
    if (v20 == 255)
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0040);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_19A576E10;
      v22 = *v19;
      *(v21 + 32) = *v19;
      v58 = v21;
      *(v21 + 40) = v20;
      v23 = v22;
    }

    v30 = *(v8 + v18[19]);
    v56 = *(v8 + v18[20]);
    v57 = v30;
    v31 = (v8 + v18[21]);
    v32 = v31[1];
    v54 = *v31;

    v33 = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2;
    v34 = v8;
  }

  else
  {
    sub_19A42E9E0(v13, v10, type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1);
    v17 = v10[1];
    v60 = *v10;
    v24 = v55;
    v25 = v10 + *(v55 + 56);
    v26 = v25[8];
    if (v26 == 255)
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0040);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_19A576E10;
      v28 = *v25;
      *(v27 + 32) = *v25;
      v58 = v27;
      *(v27 + 40) = v26;
      v29 = v28;
    }

    v35 = *(v10 + v24[18]);
    v56 = *(v10 + v24[19]);
    v57 = v35;
    v36 = (v10 + v24[20]);
    v32 = v36[1];
    v54 = *v36;

    v33 = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1;
    v34 = v10;
  }

  sub_19A42E980(v34, v33);
  v59 = v17;
  v37 = v82;
  if (v82)
  {
    v38 = v83;
    v55 = *(&v82 + 1);
    v39 = *(&v83 + 1);
    v40 = v84[0];
    v41 = v84[1];
    v80 = *&v84[2];
    v81 = *&v84[6];
    v42 = *&v84[8];
    v43 = *&v84[16];
    if (v32)
    {
      goto LABEL_12;
    }

LABEL_16:
    sub_19A33546C(&v82, &v68, &qword_1EAFA1520);
    goto LABEL_19;
  }

  v43 = MEMORY[0x1E69E7CC0];
  v39 = sub_19A330C30(MEMORY[0x1E69E7CC0]);
  v40 = 0;
  v38 = 0;
  v55 = 0;
  v42 = 1;
  v41 = 1;
  v37 = v43;
  if (!v32)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (!*(v39 + 16))
  {
    sub_19A33546C(&v82, &v68, &qword_1EAFA1520);
    goto LABEL_18;
  }

  sub_19A33546C(&v82, &v68, &qword_1EAFA1520);
  sub_19A31FFAC(4u);
  if ((v44 & 1) == 0)
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v39;
    sub_19A33DBCC(v54, v32, 4, isUniquelyReferenced_nonNull_native);
    v39 = v68;
    goto LABEL_19;
  }

LABEL_19:
  v46 = v80;
  *(v67 + 2) = v80;
  WORD3(v67[0]) = v81;
  v47 = v55;
  *&v65 = v37;
  *(&v65 + 1) = v55;
  *&v66 = v38;
  *(&v66 + 1) = v39;
  LOBYTE(v67[0]) = v40;
  BYTE1(v67[0]) = v41;
  *(&v67[0] + 1) = v42;
  *&v67[1] = v43;
  v49 = v56;
  v48 = v57;
  BYTE8(v67[1]) = v57;
  BYTE9(v67[1]) = v56;
  *a4 = v62;
  *(a4 + 8) = v61;
  *(a4 + 16) = v63;
  *(a4 + 24) = v60;
  *(a4 + 32) = v59;
  *(a4 + 40) = v58;
  v50 = v65;
  v51 = v66;
  v52 = v67[0];
  *(a4 + 90) = *(v67 + 10);
  *(a4 + 64) = v51;
  *(a4 + 80) = v52;
  *(a4 + 48) = v50;
  v68 = v37;
  v69 = v47;
  v70 = v38;
  v71 = v39;
  v72 = v40;
  v73 = v41;
  v75 = v81;
  v74 = v46;
  v76 = v42;
  v77 = v43;
  v78 = v48;
  v79 = v49;
  sub_19A428B94(&v65, &v64);
  return sub_19A428BCC(&v68);
}

uint64_t static ExternalGenerator.createCLIConfiguration(generatorType:prompt:images:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  sub_19A57395C();
  MEMORY[0x19A900A50](0xD000000000000013, 0x800000019A597630);
  sub_19A573ACC();
  MEMORY[0x19A900A50](0, 0xE000000000000000);

  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_19A330C30(MEMORY[0x1E69E7CC0]);
  *a5 = 0xD000000000000010;
  *(a5 + 8) = 0x800000019A5843F0;
  *(a5 + 16) = v9;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = v10;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = v11;
  *(a5 + 80) = 256;
  *(a5 + 88) = 1;
  *(a5 + 96) = v10;
  *(a5 + 104) = 2563;
}

uint64_t static ExternalGenerator.generateImages(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;
  v4 = *(a3 + 8);
  *(v3 + 240) = *a3;
  *(v3 + 248) = v4;
  *(v3 + 122) = *(a3 + 16);
  v5 = *(a3 + 65);
  *(v3 + 160) = *(a3 + 49);
  *(v3 + 176) = v5;
  *(v3 + 192) = *(a3 + 81);
  *(v3 + 201) = *(a3 + 90);
  v6 = *(a3 + 33);
  *(v3 + 128) = *(a3 + 17);
  *(v3 + 144) = v6;
  if (a1)
  {
    swift_getObjectType();
    v7 = sub_19A57314C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v3 + 256) = v7;
  *(v3 + 264) = v9;

  return MEMORY[0x1EEE6DFA0](sub_19A4276F0, v7, v9);
}

uint64_t sub_19A4276F0()
{
  v25 = v0;
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A57236C();
  __swift_project_value_buffer(v1, qword_1ED82BD30);
  v2 = sub_19A57231C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "externalGenerator.generateImages", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v9 = *(v0 + 122);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  *(v0 + 272) = sub_19A5723AC();
  (*(v3 + 8))(v4, v2);

  v24[0] = v9 & 1;
  v12 = sub_19A384194(v11, v10, v24);
  *(v0 + 280) = v12;
  if (v12)
  {
    v15 = *(v0 + 176);
    *(v0 + 65) = *(v0 + 160);
    *(v0 + 81) = v15;
    *(v0 + 97) = *(v0 + 192);
    *(v0 + 106) = *(v0 + 201);
    v16 = *(v0 + 144);
    *(v0 + 33) = *(v0 + 128);
    v17 = *(v0 + 122);
    v18 = *(v0 + 248);
    *(v0 + 16) = *(v0 + 240);
    *(v0 + 24) = v18;
    *(v0 + 32) = v17;
    *(v0 + 49) = v16;
    v19 = v12;
    v20 = swift_task_alloc();
    *(v0 + 288) = v20;
    *v20 = v0;
    v20[1] = sub_19A427AC0;
    v22 = *(v0 + 224);
    v21 = *(v0 + 232);

    return sub_19A429B88(v22, v21, v19, v0 + 16);
  }

  else
  {
    type metadata accessor for GeneratorError(0);
    sub_19A42EB3C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    *v23 = v9 & 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_19A427D0C("externalGenerator.generateImages", 32, 2);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_19A427AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 296) = v3;

  if (v3)
  {
    v9 = v8[32];
    v10 = v8[33];
    v11 = sub_19A427C88;
  }

  else
  {
    v8[38] = a3;
    v8[39] = a2;
    v8[40] = a1;
    v9 = v8[32];
    v10 = v8[33];
    v11 = sub_19A427BFC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_19A427BFC()
{

  sub_19A427D0C("externalGenerator.generateImages", 32, 2);

  v1 = v0[1];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  return v1(v2, v3, v4);
}

uint64_t sub_19A427C88()
{

  sub_19A427D0C("externalGenerator.generateImages", 32, 2);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A427D0C(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t static ExternalGenerator.generateImages(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_19A4280C0;

  return sub_19A429B88(a1, a2, a3, a4);
}

uint64_t sub_19A4280C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_19A4281D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = sub_19A572A6C();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-1] - v11;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA15D0);
  v25 = sub_19A42EA64();
  v23[0] = a1;

  sub_19A572A0C();
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  v14 = *a2;
  v13 = a2[1];
  v24 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69C6560];
  v23[0] = v14;
  v23[1] = v13;

  sub_19A572A0C();
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AC8);
  v15 = *(v6 + 72);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_19A576E20;
  v18 = v17 + v16;
  v19 = *(v7 + 16);
  v19(v18, v12, v5);
  v19(v18 + v15, v10, v5);
  MEMORY[0x19A900570](v17, v5, MEMORY[0x1E69C6388]);

  v20 = *(v7 + 8);
  v20(v10, v5);
  return (v20)(v12, v5);
}

uint64_t sub_19A42842C(uint64_t *a1)
{
  v2 = sub_19A572A6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v13[3] = MEMORY[0x1E69E6158];
  v13[4] = MEMORY[0x1E69C6560];
  v13[0] = v7;
  v13[1] = v6;

  v8 = MEMORY[0x1E69C6388];
  sub_19A572A0C();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AC8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_19A576E10;
  (*(v3 + 16))(v10 + v9, v5, v2);
  MEMORY[0x19A900570](v10, v2, v8);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_19A4285D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_19A5729BC();
  v19 = *(v4 - 8);
  v5 = v19;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v20 = a1;
  sub_19A5729CC();
  v18 = v2;
  sub_19A42EB3C(&qword_1EAFA15C0, MEMORY[0x1E69C61F8]);
  sub_19A572A9C();
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_19A5729EC();
  v14(v11, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA15C8);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19A576E10;
  (*(v5 + 16))(v16 + v15, v13, v4);
  MEMORY[0x19A900550](v16);

  return (v14)(v13, v4);
}

uint64_t sub_19A42884C(void *a1)
{
  v2 = sub_19A5729BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A5729EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA15C8);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19A576E10;
  (*(v3 + 16))(v7 + v6, v5, v2);
  MEMORY[0x19A900550](v7);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_19A4289D0(uint64_t *a1)
{
  v3 = [v1 properties];
  v4 = sub_19A572AFC();

  if (!*(v4 + 16))
  {
    goto LABEL_10;
  }

  v5 = sub_19A31F6BC(0x7D435450497BLL, 0xE600000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_19A334618(*(v4 + 56) + 32 * v5, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA15B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v10 + 16) || (v7 = sub_19A31F864(*a1), (v8 & 1) == 0))
  {
LABEL_10:

    return 0;
  }

  sub_19A334618(*(v10 + 56) + 32 * v7, v11);

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

void sub_19A428B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t sub_19A428BFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v23 = a3[1];
  v3 = a3[3];
  v26 = *a3;
  v27 = a3[2];
  if (*(a3 + 56) != 3 && *(a3 + 57) != 10)
  {
    sub_19A57395C();
    MEMORY[0x19A900A50](8289, 0xE200000000000000);
    sub_19A573ACC();
    MEMORY[0x19A900A50](0x206E6F7372657020, 0xED00002068746977);
    sub_19A573ACC();
    MEMORY[0x19A900A50](0x6F74206E696B7320, 0xEB0000000020656ELL);
  }

  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_16:
    v14 = __clz(__rbit64(v7)) | (v10 << 6);
    v15 = *(*(v3 + 48) + v14);
    v16 = (*(v3 + 56) + 16 * v14);
    v17 = *v16;
    v18 = v16[1];

    MEMORY[0x19A900A50](v17, v18);

    MEMORY[0x19A900A50](32, 0xE100000000000000);
    if (v15 <= 1)
    {
      if (v15)
      {
        v12 = 0x68206C6169636166;
        v11 = 0xEB00000000726961;
      }

      else
      {
        v11 = 0xE900000000000065;
        v12 = 0x6C79747372696168;
      }
    }

    else if (v15 == 2)
    {
      v11 = 0xE800000000000000;
      v12 = 0x7261657764616568;
    }

    else if (v15 == 3)
    {
      v12 = 0x726F737365636361;
      v11 = 0xEB00000000736569;
    }

    else
    {
      v12 = 0;
      v11 = 0xE000000000000000;
    }

    v7 &= v7 - 1;
    MEMORY[0x19A900A50](v12, v11);

    MEMORY[0x19A900A50](32, 0xE100000000000000);
    MEMORY[0x19A900A50](0x2068746977, 0xE500000000000000);
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 64 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_16;
    }
  }

  MEMORY[0x19A900A50](a1, a2);

  v19 = *(v26 + 16);
  if (v19)
  {
    v20 = (v26 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      MEMORY[0x19A900A50](v21, v22);

      MEMORY[0x19A900A50](32, 0xE100000000000000);

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  if (v27)
  {
    sub_19A57395C();
    MEMORY[0x19A900A50](0xD00000000000003BLL, 0x800000019A599920);
    MEMORY[0x19A900A50](v23, v27);
    MEMORY[0x19A900A50](0, 0xE000000000000000);
  }

  return 0;
}

uint64_t sub_19A429038(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for GeneratedImage();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for ImageProvenance();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A429134, 0, 0);
}

uint64_t sub_19A429134()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  v0[11] = v2;
  v3 = *(v1 + 16);
  v0[12] = v3;
  if (v3)
  {
    v4 = *MEMORY[0x1E696DDB8];
    v0[13] = *MEMORY[0x1E696DD80];
    v0[14] = v4;
    v0[15] = MEMORY[0x1E69E7CC0];
    v0[16] = 0;
    sub_19A5715FC();
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_19A4292C4;

    return MEMORY[0x1EEE49DA8]();
  }

  else
  {

    v6 = v0[1];
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }
}

uint64_t sub_19A4292C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[20] = v2;

  if (v2)
  {

    v5 = sub_19A429B00;
  }

  else
  {
    v5 = sub_19A4293E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A4293E4()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = objc_allocWithZone(MEMORY[0x1E695F658]);
  sub_19A356EC8(v2, v1);
  v4 = sub_19A570F0C();
  v5 = [v3 initWithData_];

  sub_19A33EFC4(v2, v1);
  if (v5)
  {
    *(v0 + 16) = sub_19A330D28(MEMORY[0x1E69E7CC0]);
    v6 = sub_19A4289D0(MEMORY[0x1E696DD80]);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v10 = sub_19A572CFC();
      sub_19A49FE10(v8, v9, v10, v11);
      v12 = sub_19A4289D0(MEMORY[0x1E696DDB8]);
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        v16 = *(v0 + 88);
        v17 = sub_19A572CFC();
        sub_19A49FE10(v14, v15, v17, v18);
        [v5 extent];
        v19 = [v16 createCGImage:v5 fromRect:?];
        if (v19)
        {
          v20 = v19;
          v22 = *(v0 + 72);
          v21 = *(v0 + 80);
          v23 = *(v0 + 64);
          v65 = *(v0 + 56);
          v24 = *(v0 + 32);
          v25 = *(v0 + 40);
          v26 = *(v0 + 128) + 1;
          sub_19A57101C();
          v27 = *(v0 + 16);
          *v21 = 1;
          *&v21[v22[6]] = v26;
          *&v21[v22[7]] = v24;
          *&v21[v22[8]] = v27;
          sub_19A42E918(v21, v23 + v25[5], type metadata accessor for ImageProvenance);
          v28 = v25[10];
          *(v23 + v28) = 3;
          *v23 = v20;
          *(v23 + 8) = 0;
          *(v23 + v25[6]) = 6;
          v29 = v23 + v25[7];
          *v29 = 0;
          *(v29 + 8) = 0;
          *(v29 + 16) = 1;
          v30 = (v23 + v25[8]);
          *v30 = 0;
          v30[1] = 0xE000000000000000;
          v31 = (v23 + v25[9]);
          *v31 = 0;
          v31[1] = 0xE000000000000000;
          *(v23 + v28) = 3;
          sub_19A42E918(v23, v65, type metadata accessor for GeneratedImage);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = *(v0 + 120);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = sub_19A31DA3C(0, v33[2] + 1, 1, *(v0 + 120));
          }

          v35 = v33[2];
          v34 = v33[3];
          if (v35 >= v34 >> 1)
          {
            v33 = sub_19A31DA3C(v34 > 1, v35 + 1, 1, v33);
          }

          v37 = *(v0 + 144);
          v36 = *(v0 + 152);
          v38 = *(v0 + 128);
          v39 = *(v0 + 80);
          v40 = *(v0 + 64);
          v63 = *(v0 + 56);
          v64 = *(v0 + 96);
          v41 = *(v0 + 48);

          sub_19A33EFC4(v37, v36);
          sub_19A42E980(v40, type metadata accessor for GeneratedImage);
          sub_19A42E980(v39, type metadata accessor for ImageProvenance);
          v33[2] = v35 + 1;
          sub_19A42E9E0(v63, v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35, type metadata accessor for GeneratedImage);
          if (v38 + 1 == v64)
          {

            v42 = *(v0 + 8);

            return v42(v33);
          }

          else
          {
            v61 = *(v0 + 128) + 1;
            *(v0 + 120) = v33;
            *(v0 + 128) = v61;
            sub_19A5715FC();
            v62 = swift_task_alloc();
            *(v0 + 136) = v62;
            *v62 = v0;
            v62[1] = sub_19A4292C4;

            return MEMORY[0x1EEE49DA8]();
          }
        }

        v57 = *(v0 + 144);
        v56 = *(v0 + 152);
        v58 = *(v0 + 88);

        goto LABEL_24;
      }

      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v55 = sub_19A5723FC();
      __swift_project_value_buffer(v55, qword_1ED82BCF0);
      v51 = sub_19A5723DC();
      v52 = sub_19A57355C();
      if (!os_log_type_enabled(v51, v52))
      {
LABEL_23:
        v57 = *(v0 + 144);
        v56 = *(v0 + 152);
        v58 = *(v0 + 88);

LABEL_24:
        sub_19A343614();
        swift_allocError();
        *v59 = 1;
        swift_willThrow();

        v48 = v57;
        v49 = v56;
        goto LABEL_25;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "Image data is missing IPTC source type information";
    }

    else
    {

      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v50 = sub_19A5723FC();
      __swift_project_value_buffer(v50, qword_1ED82BCF0);
      v51 = sub_19A5723DC();
      v52 = sub_19A57355C();
      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_23;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "Image data is missing IPTC credit information";
    }

    _os_log_impl(&dword_19A2DE000, v51, v52, v54, v53, 2u);
    MEMORY[0x19A902C50](v53, -1, -1);
    goto LABEL_23;
  }

  v45 = *(v0 + 144);
  v44 = *(v0 + 152);
  v46 = *(v0 + 88);

  sub_19A343614();
  swift_allocError();
  *v47 = 1;
  swift_willThrow();

  v48 = v45;
  v49 = v44;
LABEL_25:
  sub_19A33EFC4(v48, v49);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_19A429B00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A429B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 416) = a3;
  *(v4 + 424) = a4;
  v7 = sub_19A5721EC();
  *(v4 + 432) = v7;
  *(v4 + 440) = *(v7 - 8);
  *(v4 + 448) = swift_task_alloc();
  v8 = sub_19A5721DC();
  *(v4 + 456) = v8;
  *(v4 + 464) = *(v8 - 8);
  *(v4 + 472) = swift_task_alloc();
  v9 = sub_19A57220C();
  *(v4 + 480) = v9;
  *(v4 + 488) = *(v9 - 8);
  *(v4 + 496) = swift_task_alloc();
  v10 = sub_19A57210C();
  *(v4 + 504) = v10;
  *(v4 + 512) = *(v10 - 8);
  *(v4 + 520) = swift_task_alloc();
  v11 = sub_19A57212C();
  *(v4 + 528) = v11;
  *(v4 + 536) = *(v11 - 8);
  *(v4 + 544) = swift_task_alloc();
  v12 = sub_19A57215C();
  *(v4 + 552) = v12;
  *(v4 + 560) = *(v12 - 8);
  *(v4 + 568) = swift_task_alloc();
  v13 = sub_19A57214C();
  *(v4 + 576) = v13;
  *(v4 + 584) = *(v13 - 8);
  *(v4 + 592) = swift_task_alloc();
  v14 = sub_19A57221C();
  *(v4 + 600) = v14;
  *(v4 + 608) = *(v14 - 8);
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 632) = swift_task_alloc();
  v15 = sub_19A57217C();
  *(v4 + 640) = v15;
  *(v4 + 648) = *(v15 - 8);
  *(v4 + 656) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1578);
  *(v4 + 664) = swift_task_alloc();
  v16 = sub_19A57225C();
  *(v4 + 672) = v16;
  *(v4 + 680) = *(v16 - 8);
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  v17 = sub_19A57158C();
  *(v4 + 704) = v17;
  *(v4 + 712) = *(v17 - 8);
  *(v4 + 720) = swift_task_alloc();
  v18 = sub_19A5715AC();
  *(v4 + 728) = v18;
  *(v4 + 736) = *(v18 - 8);
  *(v4 + 744) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1580);
  *(v4 + 752) = swift_task_alloc();
  v19 = sub_19A5715FC();
  *(v4 + 760) = v19;
  *(v4 + 768) = *(v19 - 8);
  *(v4 + 776) = swift_task_alloc();
  v20 = sub_19A5715DC();
  *(v4 + 784) = v20;
  *(v4 + 792) = *(v20 - 8);
  *(v4 + 800) = swift_task_alloc();
  v21 = sub_19A57161C();
  *(v4 + 808) = v21;
  *(v4 + 816) = *(v21 - 8);
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  v22 = sub_19A57163C();
  *(v4 + 840) = v22;
  *(v4 + 848) = *(v22 - 8);
  *(v4 + 856) = swift_task_alloc();
  *(v4 + 864) = swift_task_alloc();
  v23 = sub_19A57165C();
  *(v4 + 872) = v23;
  *(v4 + 880) = *(v23 - 8);
  *(v4 + 888) = swift_task_alloc();
  *(v4 + 896) = swift_task_alloc();
  v24 = sub_19A57166C();
  *(v4 + 904) = v24;
  *(v4 + 912) = *(v24 - 8);
  *(v4 + 920) = swift_task_alloc();
  *(v4 + 928) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1588);
  *(v4 + 936) = swift_task_alloc();
  v25 = sub_19A5719CC();
  *(v4 + 944) = v25;
  *(v4 + 952) = *(v25 - 8);
  *(v4 + 960) = swift_task_alloc();
  v26 = sub_19A5719FC();
  *(v4 + 968) = v26;
  *(v4 + 976) = *(v26 - 8);
  *(v4 + 984) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1590);
  *(v4 + 992) = swift_task_alloc();
  v27 = sub_19A571A3C();
  *(v4 + 1000) = v27;
  *(v4 + 1008) = *(v27 - 8);
  *(v4 + 1016) = swift_task_alloc();
  v28 = sub_19A571AAC();
  *(v4 + 1024) = v28;
  *(v4 + 1032) = *(v28 - 8);
  *(v4 + 1040) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1598);
  *(v4 + 1048) = swift_task_alloc();
  *(v4 + 1056) = swift_task_alloc();
  v29 = sub_19A5716CC();
  *(v4 + 1064) = v29;
  *(v4 + 1072) = *(v29 - 8);
  *(v4 + 1080) = swift_task_alloc();
  v30 = sub_19A57226C();
  *(v4 + 1088) = v30;
  *(v4 + 1096) = *(v30 - 8);
  *(v4 + 1104) = swift_task_alloc();
  v31 = sub_19A57228C();
  *(v4 + 1112) = v31;
  *(v4 + 1120) = *(v31 - 8);
  *(v4 + 1128) = swift_task_alloc();
  v32 = sub_19A5722AC();
  *(v4 + 1136) = v32;
  *(v4 + 1144) = *(v32 - 8);
  *(v4 + 1152) = swift_task_alloc();
  *(v4 + 1160) = swift_task_alloc();
  v33 = sub_19A57229C();
  *(v4 + 1168) = v33;
  *(v4 + 1176) = *(v33 - 8);
  *(v4 + 1184) = swift_task_alloc();
  *(v4 + 1192) = swift_task_alloc();
  v34 = sub_19A5722BC();
  *(v4 + 1200) = v34;
  *(v4 + 1208) = *(v34 - 8);
  v35 = swift_task_alloc();
  v36 = *(a4 + 48);
  *(v4 + 1232) = *(a4 + 32);
  v37 = *(a4 + 64);
  v38 = *(a4 + 80);
  *(v4 + 16) = v36;
  *(v4 + 32) = v37;
  *(v4 + 1216) = v35;
  *(v4 + 74) = *(a4 + 16);
  *(v4 + 1224) = *(a4 + 24);
  *(v4 + 48) = v38;
  *(v4 + 58) = *(a4 + 90);
  if (a1)
  {
    swift_getObjectType();
    v39 = sub_19A57314C();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  *(v4 + 1256) = v41;
  *(v4 + 1248) = v39;

  return MEMORY[0x1EEE6DFA0](sub_19A42A7F8, v39, v41);
}

uint64_t sub_19A42A7F8()
{
  v103 = v0;
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 424);
  v4 = v3[4];
  v99 = v3[3];
  v100 = v4;
  v101[0] = v3[5];
  *(v101 + 10) = *(v3 + 90);
  sub_19A428B94(v0 + 16, v0 + 144);
  v5 = sub_19A428BFC(v2, v1, &v99);
  v7 = v6;
  v8 = v100;
  *(v0 + 80) = v99;
  *(v0 + 96) = v8;
  *(v0 + 112) = v101[0];
  *(v0 + 122) = *(v101 + 10);
  sub_19A428BCC(v0 + 80);
  if (qword_1ED824050 != -1)
  {
LABEL_28:
    swift_once();
  }

  v95 = v0 + 368;
  v9 = sub_19A5723FC();
  *(v0 + 1264) = __swift_project_value_buffer(v9, qword_1ED82BCF0);

  v10 = sub_19A5723DC();
  v11 = sub_19A57356C();

  v90 = v5;
  v92 = v7;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v99 = v13;
    *v12 = 136446467;
    *(v12 + 4) = sub_19A31F114(0xD000000000000019, 0x800000019A599900, &v99);
    *(v12 + 12) = 2081;
    *(v12 + 14) = sub_19A31F114(v5, v7, &v99);
    _os_log_impl(&dword_19A2DE000, v10, v11, "%{public}s: Created external prompt: %{private}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v13, -1, -1);
    MEMORY[0x19A902C50](v12, -1, -1);
  }

  v94 = (v0 + 264);
  v14 = *(v0 + 1176);
  v15 = *(v0 + 1192);
  v16 = *(v0 + 1184);
  v17 = *(v0 + 1168);
  (*(v14 + 104))(v16, **(&unk_1E7517838 + *(v0 + 48)), v17);
  (*(v14 + 32))(v15, v16, v17);
  v97 = *(v0 + 1240);
  v18 = *(v0 + 1160);
  v19 = *(v0 + 1152);
  v20 = *(v0 + 1144);
  v21 = *(v0 + 1136);
  v22 = *(v0 + 1128);
  v23 = *(v0 + 1120);
  v24 = *(v0 + 1112);
  v25 = *(v0 + 1104);
  v26 = *(v0 + 1096);
  v86 = *(v0 + 1088);
  (*(v20 + 104))(v19, **(&unk_1E7517850 + *(v0 + 49)), v21);
  (*(v20 + 32))(v18, v19, v21);
  *v22 = *(v0 + 56);
  (*(v23 + 104))(v22, *MEMORY[0x1E69A0D40], v24);
  (*(v26 + 104))(v25, *MEMORY[0x1E69A0D38], v86);
  sub_19A57227C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA15A0);
  v27 = *(sub_19A5722DC() - 8);
  v7 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  *(swift_allocObject() + 16) = xmmword_19A576E10;
  sub_19A5722CC();
  sub_19A57251C();
  *&v99 = v97;

  sub_19A470AFC(v28);
  v29 = v99;
  *(v0 + 368) = 0xD00000000000004BLL;
  *(v0 + 376) = 0x800000019A599880;
  v98 = v0;
  v30 = HIBYTE(v92) & 0xF;
  if ((v92 & 0x2000000000000000) == 0)
  {
    v30 = v90 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    *&v99 = 0xD000000000000023;
    *(&v99 + 1) = 0x800000019A5998D0;
    MEMORY[0x19A900A50]();

    MEMORY[0x19A900A50](v99, *(&v99 + 1));
  }

  v0 = v29;
  v31 = *(v29 + 16);
  if (v31)
  {
    v102 = MEMORY[0x1E69E7CC0];
    sub_19A3228C0(0, v31, 0);
    v5 = 0;
    v32 = v102;
    v33 = (v0 + 40);
    do
    {
      if (v5 >= *(v0 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v34 = *v33;
      *&v99 = *(v33 - 1);
      BYTE8(v99) = v34;
      v35 = v99;
      v36 = sub_19A45A8C0(&v99);
      v38 = v37;

      v102 = v32;
      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      v7 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_19A3228C0((v39 > 1), v40 + 1, 1);
        v32 = v102;
      }

      ++v5;
      *(v32 + 16) = v7;
      v41 = v32 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v33 += 16;
    }

    while (v31 != v5);

    v45 = sub_19A5723DC();
    v46 = sub_19A57356C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v99 = v48;
      *v47 = 136446466;
      *(v47 + 4) = sub_19A31F114(0xD000000000000019, 0x800000019A599900, &v99);
      *(v47 + 12) = 2048;
      *(v47 + 14) = *(v32 + 16);

      _os_log_impl(&dword_19A2DE000, v45, v46, "%{public}s: Including %ld input images with the request.", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x19A902C50](v48, -1, -1);
      MEMORY[0x19A902C50](v47, -1, -1);
    }

    else
    {
    }

    v44 = v98;
    v49 = swift_task_alloc();
    *(v49 + 16) = v32;
    *(v49 + 24) = v95;
    v50 = sub_19A572AAC();
    v51 = MEMORY[0x1E69C6538];
    v98[36] = v50;
    v98[37] = v51;
    __swift_allocate_boxed_opaque_existential_1(v94);
    sub_19A572ABC();
  }

  else
  {

    *(swift_task_alloc() + 16) = v95;
    v42 = sub_19A572AAC();
    v43 = MEMORY[0x1E69C6538];
    v44 = v98;
    v98[36] = v42;
    v98[37] = v43;
    __swift_allocate_boxed_opaque_existential_1(v94);
    sub_19A572ABC();
  }

  v52 = sub_19A5723DC();
  v53 = sub_19A57356C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v99 = v55;
    *v54 = 136446467;
    *(v54 + 4) = sub_19A31F114(0xD000000000000019, 0x800000019A599900, &v99);
    *(v54 + 12) = 2081;
    swift_beginAccess();
    v56 = v44[46];
    v57 = v44[47];

    v58 = sub_19A31F114(v56, v57, &v99);

    *(v54 + 14) = v58;
    _os_log_impl(&dword_19A2DE000, v52, v53, "%{public}s: Image request instructions: %{private}s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v55, -1, -1);
    MEMORY[0x19A902C50](v54, -1, -1);
  }

  v59 = v44[135];
  v93 = v44[134];
  v96 = v44[133];
  v60 = v44[132];
  v61 = v44[131];
  v81 = v44[130];
  v89 = v44[129];
  v91 = v44[128];
  v62 = v44[127];
  v63 = v44[126];
  v79 = v44[125];
  v80 = v44[124];
  v84 = v44[123];
  v87 = v44[122];
  v88 = v44[121];
  v64 = v44[120];
  v65 = v44[119];
  v82 = v44[118];
  v83 = v44[117];
  v85 = v44[52];
  v66 = sub_19A57167C();
  (*(*(v66 - 8) + 56))(v60, 1, 1, v66);
  sub_19A33546C(v60, v61, &qword_1EAFA1598);
  sub_19A5716BC();
  sub_19A5716AC();
  sub_19A57168C();
  sub_19A57169C();
  sub_19A2F3FA0(v60, &qword_1EAFA1598);
  v67 = sub_19A571A7C();
  (*(*(v67 - 8) + 56))(v62, 1, 1, v67);
  (*(v63 + 104))(v62, *MEMORY[0x1E69A13C0], v79);
  v68 = sub_19A571A0C();
  (*(*(v68 - 8) + 56))(v80, 1, 1, v68);
  sub_19A571A9C();
  v69 = sub_19A5719DC();
  (*(*(v69 - 8) + 56))(v64, 1, 1, v69);
  (*(v65 + 104))(v64, *MEMORY[0x1E69A1390], v82);
  v70 = sub_19A5719BC();
  (*(*(v70 - 8) + 56))(v83, 1, 1, v70);
  sub_19A5719EC();
  v71 = swift_task_alloc();
  *(v71 + 16) = v94;
  *(v71 + 24) = v85;
  v98[159] = sub_19A57252C();

  (*(v87 + 8))(v84, v88);
  (*(v89 + 8))(v81, v91);
  (*(v93 + 8))(v59, v96);
  v72 = sub_19A5723DC();
  v73 = sub_19A57356C();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v99 = v75;
    *v74 = 136446210;
    *(v74 + 4) = sub_19A31F114(0xD000000000000019, 0x800000019A599900, &v99);
    _os_log_impl(&dword_19A2DE000, v72, v73, "%{public}s: Image request initiated, waiting for response.", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    MEMORY[0x19A902C50](v75, -1, -1);
    MEMORY[0x19A902C50](v74, -1, -1);
  }

  v76 = swift_task_alloc();
  v98[160] = v76;
  *v76 = v98;
  v76[1] = sub_19A42B844;
  v77 = v98[115];

  return MEMORY[0x1EEE335A0](v98 + 48, v77);
}

uint64_t sub_19A42B844()
{
  v2 = *v1;
  *(*v1 + 1288) = v0;

  if (v0)
  {
    v3 = *(v2 + 1256);
    v4 = *(v2 + 1248);
    v5 = sub_19A42D3F0;
  }

  else
  {

    v3 = *(v2 + 1256);
    v4 = *(v2 + 1248);
    v5 = sub_19A42B968;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

unint64_t sub_19A42B968()
{
  v151 = v0;
  (*(*(v0 + 912) + 32))(*(v0 + 928), *(v0 + 920), *(v0 + 904));
  v1 = sub_19A5723DC();
  v2 = sub_19A57356C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v150[0] = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_19A31F114(0xD000000000000019, 0x800000019A599900, v150);
    _os_log_impl(&dword_19A2DE000, v1, v2, "%{public}s: Image request response received.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x19A902C50](v4, -1, -1);
    MEMORY[0x19A902C50](v3, -1, -1);
  }

  v5 = *(sub_19A5715BC() + 16);

  if (!v5)
  {
    v39 = *(v0 + 74);
    v145 = *(v0 + 1216);
    v40 = *(v0 + 1208);
    v41 = *(v0 + 1200);
    v42 = *(v0 + 928);
    v43 = *(v0 + 912);
    v44 = *(v0 + 904);
    type metadata accessor for GeneratorError(0);
    sub_19A42EB3C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    *v45 = v39;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v43 + 8))(v42, v44);
    (*(v40 + 8))(v145, v41);

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 264);

    v46 = *(v0 + 8);

    return v46();
  }

  result = sub_19A5715BC();
  if (!*(result + 16))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  v7 = *(v0 + 896);
  v8 = *(v0 + 880);
  v9 = *(v0 + 872);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = *(v8 + 16);
  v11(v7, result + v10, v9);

  v12 = sub_19A57164C();
  v121 = *(v8 + 8);
  v121(v7, v9);
  v13 = v12;
  v14 = *(v12 + 16);
  if (v14)
  {
    v119 = v10;
    v120 = v11;
    v15 = *(v0 + 848);
    v16 = *(v0 + 816);
    v17 = *(v0 + 792);
    v20 = *(v15 + 16);
    v19 = v15 + 16;
    v18 = v20;
    v21 = v13 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v22 = *(v19 + 56);
    v142 = (v16 + 88);
    v139 = *MEMORY[0x1E69DA540];
    v147 = (v19 - 8);
    v128 = (v16 + 96);
    v131 = (v16 + 8);
    v123 = (v17 + 8);
    v125 = (v17 + 32);
    v144 = MEMORY[0x1E69E7CC0];
    v134 = v22;
    v137 = v20;
    do
    {
      v23 = *(v0 + 832);
      v24 = *(v0 + 808);
      v18(*(v0 + 864), v21, *(v0 + 840));
      sub_19A57162C();
      v25 = (*v142)(v23, v24);
      v26 = *(v0 + 864);
      v27 = *(v0 + 840);
      v28 = *(v0 + 832);
      v29 = *(v0 + 808);
      if (v25 == v139)
      {
        v30 = v19;
        v31 = *(v0 + 800);
        v32 = *(v0 + 784);
        (*v128)(*(v0 + 832), *(v0 + 808));
        (*v125)(v31, v28, v32);
        v33 = sub_19A5715CC();
        v35 = v34;
        (*v123)(v31, v32);
        (*v147)(v26, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_19A31CE20(0, *(v144 + 2) + 1, 1, v144);
        }

        v37 = *(v144 + 2);
        v36 = *(v144 + 3);
        v19 = v30;
        v22 = v134;
        if (v37 >= v36 >> 1)
        {
          v144 = sub_19A31CE20((v36 > 1), v37 + 1, 1, v144);
        }

        v18 = v137;
        *(v144 + 2) = v37 + 1;
        v38 = &v144[16 * v37];
        *(v38 + 4) = v33;
        *(v38 + 5) = v35;
      }

      else
      {
        (*v147)(*(v0 + 864), *(v0 + 840));
        (*v131)(v28, v29);
      }

      v21 += v22;
      --v14;
    }

    while (v14);

    v10 = v119;
    v11 = v120;
  }

  else
  {

    v144 = MEMORY[0x1E69E7CC0];
  }

  result = sub_19A5715BC();
  if (!*(result + 16))
  {
    goto LABEL_71;
  }

  v47 = *(v0 + 888);
  v48 = *(v0 + 872);
  v11(v47, result + v10, v48);

  v49 = sub_19A57164C();
  v121(v47, v48);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = *(v0 + 848);
    v52 = *(v0 + 816);
    v53 = *(v0 + 768);
    v54 = *(v51 + 16);
    v51 += 16;
    v140 = v54;
    v55 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v135 = (v51 - 8);
    v138 = *(v51 + 56);
    v132 = (v52 + 88);
    v129 = *MEMORY[0x1E69DA548];
    v56 = (v53 + 56);
    v124 = (v52 + 8);
    v122 = (v52 + 96);
    v57 = (v53 + 32);
    v126 = v53;
    v58 = (v53 + 48);
    v148 = MEMORY[0x1E69E7CC0];
    do
    {
      v59 = *(v0 + 856);
      v60 = *(v0 + 840);
      v61 = *(v0 + 824);
      v62 = *(v0 + 808);
      v140(v59, v55, v60);
      sub_19A57162C();
      (*v135)(v59, v60);
      v63 = (*v132)(v61, v62);
      v64 = *(v0 + 824);
      v65 = *(v0 + 808);
      v66 = *(v0 + 760);
      v67 = *(v0 + 752);
      if (v63 == v129)
      {
        (*v122)(*(v0 + 824), *(v0 + 808));
        (*v57)(v67, v64, v66);
        (*v56)(v67, 0, 1, v66);
      }

      else
      {
        (*v56)(*(v0 + 752), 1, 1, *(v0 + 760));
        (*v124)(v64, v65);
      }

      v68 = *(v0 + 760);
      v69 = *(v0 + 752);
      if ((*v58)(v69, 1, v68) == 1)
      {
        sub_19A2F3FA0(v69, &qword_1EAFA1580);
      }

      else
      {
        v70 = *v57;
        (*v57)(*(v0 + 776), v69, v68);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v71 = v148;
        }

        else
        {
          v71 = sub_19A31EA10(0, v148[2] + 1, 1, v148);
        }

        v73 = v71[2];
        v72 = v71[3];
        if (v73 >= v72 >> 1)
        {
          v71 = sub_19A31EA10(v72 > 1, v73 + 1, 1, v71);
        }

        v74 = *(v0 + 776);
        v75 = *(v0 + 760);
        v71[2] = v73 + 1;
        v148 = v71;
        v70(v71 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v73, v74, v75);
      }

      v55 += v138;
      --v50;
    }

    while (v50);

    v76 = v148;
  }

  else
  {

    v76 = MEMORY[0x1E69E7CC0];
  }

  v149 = v76;
  *(v0 + 1296) = v76;
  v77 = *(v0 + 74);
  *(v0 + 408) = v144;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A331C2C();
  v78 = sub_19A572BEC();
  v80 = v79;

  *(v0 + 1304) = v78;
  *(v0 + 1312) = v80;
  LOBYTE(v150[0]) = v77;
  type metadata accessor for ExternalGeneratorInfo(0);
  v81 = swift_allocObject();
  sub_19A422F40(v150);
  sub_19A33546C(v81 + OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_llmProvider, v0 + 304, &qword_1EAFA0AB8);
  if (*(v0 + 328))
  {
    v82 = *(v0 + 744);
    v83 = *(v0 + 736);
    v84 = *(v0 + 728);
    __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
    v85 = sub_19A571F7C();
    v87 = v86;

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 304);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA15A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = v85;
    v127 = inited;
    v130 = inited + 32;
    *(inited + 40) = v87;
    sub_19A57160C();
    v89 = sub_19A57159C();
    result = (*(v83 + 8))(v82, v84);
    v146 = *(v89 + 16);
    if (v146)
    {
      v90 = 0;
      v91 = *(v0 + 712);
      v141 = v89 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      v143 = v91;
      v136 = (v91 + 8);
      v92 = MEMORY[0x1E69E7CC8];
      v133 = v89;
      while (1)
      {
        if (v90 >= *(v89 + 16))
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        (*(v143 + 16))(*(v0 + 720), v141 + *(v143 + 72) * v90, *(v0 + 704));
        v95 = sub_19A57156C();
        v97 = v96;
        v98 = sub_19A57157C();
        if (v99)
        {
          v100 = v98;
        }

        else
        {
          v100 = 0;
        }

        if (v99)
        {
          v101 = v99;
        }

        else
        {
          v101 = 0xE000000000000000;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150[0] = v92;
        result = sub_19A31F6BC(v95, v97);
        v104 = v92[2];
        v105 = (v103 & 1) == 0;
        v106 = __OFADD__(v104, v105);
        v107 = v104 + v105;
        if (v106)
        {
          goto LABEL_68;
        }

        v108 = v103;
        if (v92[3] >= v107)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v116 = result;
            sub_19A32D67C();
            result = v116;
          }
        }

        else
        {
          sub_19A32B730(v107, isUniquelyReferenced_nonNull_native);
          result = sub_19A31F6BC(v95, v97);
          if ((v108 & 1) != (v109 & 1))
          {

            return sub_19A57404C();
          }
        }

        v110 = *(v0 + 720);
        v111 = *(v0 + 704);
        if (v108)
        {
          v93 = result;

          v92 = v150[0];
          v94 = (*(v150[0] + 56) + 16 * v93);
          *v94 = v100;
          v94[1] = v101;

          result = (*v136)(v110, v111);
        }

        else
        {
          v92 = v150[0];
          *(v150[0] + 8 * (result >> 6) + 64) |= 1 << result;
          v112 = (v92[6] + 16 * result);
          *v112 = v95;
          v112[1] = v97;
          v113 = (v92[7] + 16 * result);
          *v113 = v100;
          v113[1] = v101;
          result = (*v136)(v110, v111);
          v114 = v92[2];
          v106 = __OFADD__(v114, 1);
          v115 = v114 + 1;
          if (v106)
          {
            goto LABEL_69;
          }

          v92[2] = v115;
        }

        ++v90;
        v89 = v133;
        if (v146 == v90)
        {
          goto LABEL_60;
        }
      }
    }

    v92 = MEMORY[0x1E69E7CC8];
LABEL_60:

    *(v127 + 48) = v92;
    v117 = sub_19A330E3C(v127);
    swift_setDeallocating();
    sub_19A2F3FA0(v130, &qword_1EAFA15B0);
  }

  else
  {

    sub_19A2F3FA0(v0 + 304, &qword_1EAFA0AB8);
    v117 = 0;
  }

  *(v0 + 1320) = v117;
  v118 = swift_task_alloc();
  *(v0 + 1328) = v118;
  *v118 = v0;
  v118[1] = sub_19A42C8A0;

  return sub_19A429038(v149, v117);
}