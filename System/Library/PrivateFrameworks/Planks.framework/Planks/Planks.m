uint64_t PlanksNDArray.shape.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t PlanksNDArray.strides.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t PlanksNDArray.__allocating_init(empty:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PlanksNDArray.init(empty:)(a1);
  return v2;
}

void *PlanksNDArray.init(empty:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v2[2] = sub_25E829EDC();
  swift_beginAccess();
  sub_25E829F4C();
  sub_25E829EAC();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25E82A940;
  *(v5 + 32) = a1 & (a1 >> 63);
  v2[3] = v5;
  v2[4] = &unk_28707E110;
  return v2;
}

uint64_t sub_25E7F73C8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 32);
    v4 = 1;
    while (1)
    {
      v5 = *v3++;
      v6 = v4 * v5;
      if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
      {
        break;
      }

      v4 = v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
LABEL_7:
    v7 = swift_allocObject();
    PlanksNDArray.init(empty:)(v6);
    swift_beginAccess();
    v8 = *(v7 + 24);
    *(v7 + 24) = v1;

    v12[0] = 0;
    _s6Planks0A8OrderingO14computeStrides5shape5orderSaySiGAG_ACtFZ_0(v1, v12);
    v10 = v9;

    swift_beginAccess();
    v11 = *(v7 + 32);
    *(v7 + 32) = v10;

    return v7;
  }

  return result;
}

uint64_t PlanksNDArray.__allocating_init(array:shape:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E7F73C8(a2);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;

  return v3;
}

uint64_t PlanksNDArray.__allocating_init(array2d:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  sub_25E829F4C();
  if (sub_25E829F1C() < 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_25E829F5C();
  v4 = sub_25E829F1C();

  if (v4 < 1)
  {
LABEL_20:
    __break(1u);
LABEL_21:

    __break(1u);
    return result;
  }

  v23[0] = a1;
  MEMORY[0x28223BE20](v5);
  KeyPath = swift_getKeyPath();
  v7 = sub_25E829F4C();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25E7F789C(sub_25E7F9148, KeyPath, v7, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    while (v12 < *(v10 + 16))
    {
      v23[0] = *(v10 + 8 * v12 + 32);
      if (!sub_25E7F7CBC(v23))
      {
        goto LABEL_21;
      }

      if (v11 == ++v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_8:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25E82A950;
  *(v13 + 32) = sub_25E829F1C();
  sub_25E829F5C();
  v14 = sub_25E829F1C();

  *(v13 + 40) = v14;
  v15 = sub_25E7F73C8(v13);

  if (!sub_25E829F1C())
  {
    goto LABEL_17;
  }

  v16 = 4;
  while (1)
  {
    v17 = v16 - 4;
    v18 = sub_25E829F0C();
    sub_25E829E9C();
    if ((v18 & 1) == 0)
    {
      break;
    }

    v19 = *(a1 + 8 * v16);

    v21 = v16 - 3;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_16;
    }

LABEL_12:
    v23[3] = v20;
    swift_beginAccess();
    swift_getWitnessTable();
    sub_25E829F2C();
    swift_endAccess();
    ++v16;
    if (v21 == sub_25E829F1C())
    {
      goto LABEL_17;
    }
  }

  v20 = sub_25E82A10C();
  v21 = v16 - 3;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
LABEL_17:

  return v15;
}

uint64_t sub_25E7F7868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  result = sub_25E829F1C();
  *a4 = result;
  return result;
}

uint64_t sub_25E7F789C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  (MEMORY[0x28223BE20])();
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = (MEMORY[0x28223BE20])();
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_25E829FBC();
  if (!v26)
  {
    return sub_25E829EDC();
  }

  v48 = v26;
  v52 = sub_25E82A14C();
  v39 = sub_25E82A15C();
  sub_25E82A12C();
  result = sub_25E829FAC();
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
      v29 = sub_25E82A00C();
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
      sub_25E82A13C();
      result = sub_25E829FDC();
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

BOOL sub_25E7F7CBC(uint64_t *a1)
{
  v1 = *a1;
  sub_25E829F4C();
  sub_25E829F5C();
  v2 = sub_25E829F1C();

  return v1 == v2;
}

uint64_t PlanksNDArray.__allocating_init(array3d:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  sub_25E829F4C();
  sub_25E829F4C();
  if (sub_25E829F1C() < 1)
  {
    goto LABEL_29;
  }

  sub_25E829F5C();
  v4 = sub_25E829F1C();

  if (v4 < 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_25E829F5C();
  sub_25E829F5C();

  v5 = sub_25E829F1C();

  if (v5 < 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29[0] = a1;
  MEMORY[0x28223BE20](v6);
  KeyPath = swift_getKeyPath();
  v8 = sub_25E829F4C();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25E7F789C(sub_25E7F9688, KeyPath, v8, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        goto LABEL_28;
      }

      v29[0] = *(v11 + 8 * v13 + 32);
      if (!sub_25E7F8228(v29))
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_9;
      }
    }

LABEL_32:

    __break(1u);
    return result;
  }

LABEL_9:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25E82A960;
  *(v14 + 32) = sub_25E829F1C();
  sub_25E829F5C();
  v15 = sub_25E829F1C();

  *(v14 + 40) = v15;
  sub_25E829F5C();
  sub_25E829F5C();

  v16 = sub_25E829F1C();

  *(v14 + 48) = v16;
  v17 = sub_25E7F73C8(v14);

  if (!sub_25E829F1C())
  {
    goto LABEL_26;
  }

  v18 = 0;
  while (1)
  {
    v19 = sub_25E829F0C();
    sub_25E829E9C();
    if ((v19 & 1) == 0)
    {
      break;
    }

    v20 = *(a1 + 32 + 8 * v18);

    v21 = __OFADD__(v18++, 1);
    if (v21)
    {
      goto LABEL_25;
    }

LABEL_14:
    if (sub_25E829F1C())
    {
      v22 = 4;
      do
      {
        v23 = v22 - 4;
        v24 = sub_25E829F0C();
        sub_25E829E9C();
        if (v24)
        {
          v25 = *(v20 + 8 * v22);

          v27 = v22 - 3;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          v26 = sub_25E82A10C();
          v27 = v22 - 3;
          if (__OFADD__(v23, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        v29[5] = v26;
        swift_beginAccess();
        swift_getWitnessTable();
        sub_25E829F2C();
        swift_endAccess();
        ++v22;
      }

      while (v27 != sub_25E829F1C());
    }

    if (v18 == sub_25E829F1C())
    {
      goto LABEL_26;
    }
  }

  v20 = sub_25E82A10C();
  v21 = __OFADD__(v18++, 1);
  if (!v21)
  {
    goto LABEL_14;
  }

LABEL_25:
  __break(1u);
LABEL_26:

  return v17;
}

uint64_t sub_25E7F81E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  sub_25E829F4C();
  result = sub_25E829F1C();
  *a4 = result;
  return result;
}

BOOL sub_25E7F8228(uint64_t *a1)
{
  v1 = *a1;
  sub_25E829F4C();
  sub_25E829F4C();
  sub_25E829F5C();
  v2 = sub_25E829F1C();

  return v1 == v2;
}

uint64_t PlanksNDArray.isEmpty.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v4 = v0[2];
  v2 = *(v1 + 80);
  sub_25E829F4C();
  swift_getWitnessTable();
  return sub_25E829FEC() & 1;
}

uint64_t PlanksNDArray.nbytes.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = *(v1 + 80);

  sub_25E829EBC();

  return v5;
}

uint64_t sub_25E7F8428@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  *a3 = v3;
  return result;
}

uint64_t PlanksNDArray.subscript.getter(uint64_t a1)
{
  v2 = *v1;
  sub_25E7F8554(a1);
  swift_beginAccess();
  v3 = v1[2];
  v4 = *(v2 + 80);
  sub_25E829F5C();
  return swift_endAccess();
}

uint64_t sub_25E7F84F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;

  return sub_25E7F91C4(a1, v4);
}

uint64_t PlanksNDArray.subscript.setter(uint64_t a1, uint64_t a2)
{
  return sub_25E7F87C0(a1, a2, sub_25E7F91C4);
}

{
  return sub_25E7F87C0(a1, a2, sub_25E7F92D4);
}

uint64_t sub_25E7F8554(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  if (v3 == *(*(v1 + 24) + 16))
  {
    swift_beginAccess();
    result = 0;
    v5 = *(v1 + 32);
    v6 = *(v5 + 16);
    v7 = (v5 + 32);
    v8 = (a1 + 32);
    while (v6 && v3)
    {
      v9 = *v7 * *v8;
      if ((*v7 * *v8) >> 64 != v9 >> 63)
      {
        __break(1u);
        goto LABEL_11;
      }

      ++v8;
      ++v7;
      --v3;
      --v6;
      v10 = __OFADD__(result, v9);
      result += v9;
      if (v10)
      {
        __break(1u);
        return result;
      }
    }
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t (*PlanksNDArray.subscript.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*v2 + 80);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  PlanksNDArray.subscript.getter(a2);
  return sub_25E7F8734;
}

{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*v2 + 80);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  PlanksNDArray.subscript.getter(a2);
  return sub_25E7F96AC;
}

uint64_t sub_25E7F8764(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;

  return sub_25E7F92D4(a1, v4);
}

uint64_t sub_25E7F87C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *v3;
  a3();
  v6 = *(*(*(v5 + 80) - 8) + 8);

  return v6(a1);
}

void sub_25E7F895C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);

    sub_25E7F91C4(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    v10 = **a1;

    sub_25E7F91C4(v4, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *PlanksNDArray.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t PlanksNDArray.__deallocating_deinit()
{
  PlanksNDArray.deinit();

  return swift_deallocClassInstance();
}

Planks::PlanksOrdering_optional __swiftcall PlanksOrdering.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E82A20C();

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

uint64_t PlanksOrdering.rawValue.getter()
{
  if (*v0)
  {
    result = 0x614D6E6D756C6F63;
  }

  else
  {
    result = 0x726F6A614D776F72;
  }

  *v0;
  return result;
}

uint64_t sub_25E7F8B70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x614D6E6D756C6F63;
  }

  else
  {
    v4 = 0x726F6A614D776F72;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEB00000000726F6ALL;
  }

  if (*a2)
  {
    v6 = 0x614D6E6D756C6F63;
  }

  else
  {
    v6 = 0x726F6A614D776F72;
  }

  if (*a2)
  {
    v7 = 0xEB00000000726F6ALL;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25E82A32C();
  }

  return v9 & 1;
}

uint64_t sub_25E7F8C20()
{
  v1 = *v0;
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E7F8CAC()
{
  *v0;
  sub_25E829DDC();
}

uint64_t sub_25E7F8D24()
{
  v1 = *v0;
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E7F8DAC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25E82A20C();

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

void sub_25E7F8E0C(uint64_t *a1@<X8>)
{
  v2 = 0x726F6A614D776F72;
  if (*v1)
  {
    v2 = 0x614D6E6D756C6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000726F6ALL;
  }

  *a1 = v2;
  a1[1] = v3;
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

uint64_t sub_25E7F8F64(unint64_t a1, uint64_t a2)
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

void _s6Planks0A8OrderingO14computeStrides5shape5orderSaySiGAG_ACtFZ_0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 16);
  v3 = v2 - 1;
  if (v2 != 1)
  {
    v4 = *a2;
    if (v2)
    {
      v6 = *(a1 + 16);
      v7 = sub_25E829EEC();
      *(v7 + 16) = v2;
      v8 = v7 + 32;
      memset_pattern16((v7 + 32), &unk_25E82A970, 8 * v2);
      if (v4)
      {
        v9 = 1;
        while (v9 != v2)
        {
          v10 = 0;
          v11 = v9 + 1;
          v12 = 1;
          do
          {
            v13 = *(a1 + 32 + 8 * v10);
            v14 = v12 * v13;
            if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
            {
              __break(1u);
              goto LABEL_23;
            }

            v12 *= v13;
            ++v10;
          }

          while (v9 != v10);
          if (v9 >= v2)
          {
            goto LABEL_27;
          }

          *(v8 + 8 * v9++) = v14;
          if (v11 == v2)
          {
            return;
          }
        }

LABEL_24:
        __break(1u);
      }

      else
      {
        v15 = 0;
        v16 = (a1 + 40);
        v17 = v2 - 1;
        while (v15 != v3)
        {
          if (v15 == v2)
          {
            goto LABEL_26;
          }

          v18 = v15 + 1;
          v19 = v16;
          v20 = v17;
          v21 = 1;
          do
          {
            v22 = *v19++;
            v23 = v21 * v22;
            if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v21 = v23;
            --v20;
          }

          while (v20);
          if (v15 >= v2)
          {
            goto LABEL_28;
          }

          *(v8 + 8 * v15) = v23;
          --v17;
          ++v16;
          ++v15;
          if (v18 == v3)
          {
            return;
          }
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    if (v4)
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_25E7F916C(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_25E7F91C4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_25E7F8554(a2);

  swift_beginAccess();
  v6 = *(v4 + 80);
  sub_25E829F4C();
  sub_25E829ECC();
  v7 = v2[2];
  sub_25E7F8F64(v5, v7);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v9 = v7;
  }

  (*(*(v6 - 8) + 24))(v9 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a1, v6);
  return swift_endAccess();
}

unint64_t sub_25E7F92DC()
{
  result = qword_27FD072B0;
  if (!qword_27FD072B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD072B0);
  }

  return result;
}

unint64_t sub_25E7F9334()
{
  result = qword_27FD072B8;
  if (!qword_27FD072B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD072C0, &qword_25E82AAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD072B8);
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

uint64_t getEnumTagSinglePayload for PlanksOrdering(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlanksOrdering(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25E7F9604()
{
  result = qword_27FD07348;
  if (!qword_27FD07348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07348);
  }

  return result;
}

uint64_t sub_25E7F96B4()
{
  v0 = sub_25E829CDC();
  __swift_allocate_value_buffer(v0, qword_27FD0A4B0);
  __swift_project_value_buffer(v0, qword_27FD0A4B0);
  return sub_25E829CCC();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL sub_25E7F97F8(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v6 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v8 = *v3;
    if (v8 > 5)
    {
      if (*v3 > 8u)
      {
        if (v8 == 9)
        {
          v14 = 0xE700000000000000;
          v13 = 0x323374616F6C66;
        }

        else if (v8 == 10)
        {
          v14 = 0xE700000000000000;
          v13 = 0x343674616F6C66;
        }

        else
        {
          v14 = 0xE400000000000000;
          v13 = 1819242338;
        }
      }

      else if (v8 == 6)
      {
        v14 = 0xE600000000000000;
        v13 = 0x3233746E6975;
      }

      else if (v8 == 7)
      {
        v14 = 0xE600000000000000;
        v13 = 0x3436746E6975;
      }

      else
      {
        v14 = 0xE700000000000000;
        v13 = 0x363174616F6C66;
      }
    }

    else
    {
      v9 = 0x3631746E6975;
      if (v8 == 4)
      {
        v9 = 0x38746E6975;
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (v8 == 3)
      {
        v9 = 0x3436746E69;
        v10 = 0xE500000000000000;
      }

      v11 = 0x3631746E69;
      if (v8 != 1)
      {
        v11 = 0x3233746E69;
      }

      v12 = 0xE500000000000000;
      if (!*v3)
      {
        v11 = 947154537;
        v12 = 0xE400000000000000;
      }

      if (*v3 <= 2u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v3 <= 2u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }
    }

    if (v4 > 5)
    {
      v15 = 0x343674616F6C66;
      if (v4 != 10)
      {
        v15 = 1819242338;
      }

      v16 = 0xE400000000000000;
      if (v4 == 10)
      {
        v16 = 0xE700000000000000;
      }

      if (v4 == 9)
      {
        v15 = 0x323374616F6C66;
        v16 = 0xE700000000000000;
      }

      v17 = 0x363174616F6C66;
      if (v4 == 7)
      {
        v17 = 0x3436746E6975;
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      if (v4 == 6)
      {
        v17 = 0x3233746E6975;
        v18 = 0xE600000000000000;
      }

      v19 = v4 <= 8;
    }

    else
    {
      v15 = 0x3631746E6975;
      if (v4 == 4)
      {
        v15 = 0x38746E6975;
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      if (v4 == 3)
      {
        v15 = 0x3436746E69;
        v16 = 0xE500000000000000;
      }

      v17 = 0x3631746E69;
      if (v4 != 1)
      {
        v17 = 0x3233746E69;
      }

      v18 = 0xE500000000000000;
      if (!v4)
      {
        v17 = 947154537;
        v18 = 0xE400000000000000;
      }

      v19 = v4 <= 2;
    }

    if (v19)
    {
      v20 = v17;
    }

    else
    {
      v20 = v15;
    }

    if (v19)
    {
      v21 = v18;
    }

    else
    {
      v21 = v16;
    }

    if (v13 == v20 && v14 == v21)
    {

      return v6 != 0;
    }

    v5 = sub_25E82A32C();

    ++v3;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

uint64_t FieldType.size.getter()
{
  if (*v0 - 1 > 9)
  {
    return 1;
  }

  else
  {
    return qword_25E82ACA8[(*v0 - 1)];
  }
}

uint64_t FieldType.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x323374616F6C66;
    v8 = 0x343674616F6C66;
    if (v1 != 10)
    {
      v8 = 1819242338;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x3233746E6975;
    v10 = 0x3436746E6975;
    if (v1 != 7)
    {
      v10 = 0x363174616F6C66;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 947154537;
    v3 = 0x3436746E69;
    v4 = 0x38746E6975;
    if (v1 != 4)
    {
      v4 = 0x3631746E6975;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x3631746E69;
    if (v1 != 1)
    {
      v5 = 0x3233746E69;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t PlanksReader.filePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Planks12PlanksReader_filePath;
  v4 = sub_25E829D6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlanksReader.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata);
  v2 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 8);
  v4 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
  v5 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 24);
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

char *PlanksReader.__allocating_init(filePath:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return PlanksReader.init(filePath:)(a1, a2);
}

char *PlanksReader.init(filePath:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E829D6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v130 - v12;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet] = 0;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___elementByName] = 0;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___chunksByElement] = 0;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___groupsByElement] = 0;

  MEMORY[0x25F8C0B50](a1, a2);
  v14 = OBJC_IVAR____TtC6Planks12PlanksReader_filePath;
  (*(v7 + 32))(&v3[OBJC_IVAR____TtC6Planks12PlanksReader_filePath], v13, v6);
  v135 = v7;
  v136 = v14;
  v15 = *(v7 + 16);
  (v15)(v11, &v3[v14], v6);
  v137 = 0;
  v138 = 16842752;
  sub_25E829D5C();
  v134 = *(v7 + 8);
  v134(v11, v6);
  v16 = OBJC_IVAR____TtC6Planks12PlanksReader_fd;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader_fd] = v140;
  v17 = sub_25E829D1C();
  if (v18)
  {
    LODWORD(v140) = v17;
    v19 = v17;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    v20 = swift_allocError();
    *v21 = v19;
    v28 = v134;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v29 = sub_25E829CDC();
    __swift_project_value_buffer(v29, qword_27FD0A4B0);

    MEMORY[0x25F8C14D0](v20);
    v30 = sub_25E829CBC();
    v31 = sub_25E82A02C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v134 = v3;
      v34 = v6;
      v35 = v28;
      v36 = v33;
      v37 = swift_slowAlloc();
      v140 = v37;
      *v32 = 138412546;
      MEMORY[0x25F8C14D0](v20);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v38;
      *v36 = v38;
      *(v32 + 12) = 2080;
      v39 = sub_25E7FFAF0(a1, a2, &v140);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_25E7F6000, v30, v31, "File error: %@ - %s", v32, 0x16u);
      sub_25E802774(v36, &qword_27FD07370, &qword_25E82AD20);
      v40 = v36;
      v28 = v35;
      v6 = v34;
      v3 = v134;
      MEMORY[0x25F8C1620](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x25F8C1620](v37, -1, -1);
      MEMORY[0x25F8C1620](v32, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v133 = v15;
  v22 = OBJC_IVAR____TtC6Planks12PlanksReader_fileSize;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader_fileSize] = v17;
  if (v17 < 12)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v23 = sub_25E829CDC();
    __swift_project_value_buffer(v23, qword_27FD0A4B0);

    v24 = sub_25E829CBC();
    v25 = sub_25E82A02C();
    if (!os_log_type_enabled(v24, v25))
    {

      goto LABEL_16;
    }

    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = *&v3[v22];

    _os_log_impl(&dword_25E7F6000, v24, v25, "Invalid fileSize: %lld", v26, 0xCu);
    v27 = v26;
LABEL_8:
    MEMORY[0x25F8C1620](v27, -1, -1);

LABEL_16:
    v28 = v134;
LABEL_17:
    v28(v136 + v3, v6);
    v41 = *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet];

    v42 = *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___elementByName];

    v43 = *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___chunksByElement];

    v44 = *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___groupsByElement];

    type metadata accessor for PlanksReader();
    v45 = *(*v3 + 48);
    v46 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v48 = sub_25E801AA4(*&v3[v16], 1);
  v49 = sub_25E7FBFD0(v48, &unk_28707E2C8);
  if ((v49 & 1) == 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v54 = sub_25E829CDC();
    __swift_project_value_buffer(v54, qword_27FD0A4B0);

    v24 = sub_25E829CBC();
    v55 = sub_25E82A02C();

    if (os_log_type_enabled(v24, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v140 = v57;
      *v56 = 136315138;
      v58 = MEMORY[0x25F8C0C60](v48, MEMORY[0x277D84B78]);
      v60 = v59;

      v61 = sub_25E7FFAF0(v58, v60, &v140);

      *(v56 + 4) = v61;
      v62 = "Invalid magicValue begin: %s";
LABEL_26:
      _os_log_impl(&dword_25E7F6000, v24, v55, v62, v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x25F8C1620](v57, -1, -1);
      v27 = v56;
      goto LABEL_8;
    }

LABEL_31:

    goto LABEL_16;
  }

  v50 = sub_25E801AA4(*&v3[v16], 0);

  if ((sub_25E7FBFD0(v50, &unk_28707E2C8) & 1) == 0)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v63 = sub_25E829CDC();
    __swift_project_value_buffer(v63, qword_27FD0A4B0);

    v24 = sub_25E829CBC();
    v55 = sub_25E82A02C();

    if (os_log_type_enabled(v24, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v140 = v57;
      *v56 = 136315138;
      v64 = MEMORY[0x25F8C0C60](v50, MEMORY[0x277D84B78]);
      v66 = v65;

      v67 = sub_25E7FFAF0(v64, v66, &v140);

      *(v56 + 4) = v67;
      v62 = "Invalid magicValue end: %s";
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v51 = *&v3[v16];
  v52 = sub_25E801C34();
  v68 = v133;
  if (v53)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v69 = sub_25E829CDC();
    __swift_project_value_buffer(v69, qword_27FD0A4B0);

    v70 = sub_25E829CBC();
    v71 = sub_25E82A02C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = v68;
      v73 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v140 = v133;
      *v73 = 136315138;
      (v72)(v13, v136 + v3, v6);
      sub_25E801E34();
      v74 = sub_25E82A2EC();
      v76 = v75;
      v28 = v134;
      v134(v13, v6);
      v77 = sub_25E7FFAF0(v74, v76, &v140);

      *(v73 + 4) = v77;
      _os_log_impl(&dword_25E7F6000, v70, v71, "Failed at reading metadata size for %s", v73, 0xCu);
      v78 = v133;
LABEL_37:
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x25F8C1620](v78, -1, -1);
      MEMORY[0x25F8C1620](v73, -1, -1);

      goto LABEL_17;
    }

    goto LABEL_43;
  }

  v79 = v52;
  type metadata accessor for PlanksReader();
  v80 = *&v3[v16];
  v132 = v79;
  static PlanksReader.readMetadata(_:metadataSize:)(v79, &v140);
  v88 = v141;
  if (!v141)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v81 = sub_25E829CDC();
    __swift_project_value_buffer(v81, qword_27FD0A4B0);

    v70 = sub_25E829CBC();
    v82 = sub_25E82A02C();

    if (os_log_type_enabled(v70, v82))
    {
      v83 = v68;
      v73 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v140 = v132;
      *v73 = 136315138;
      (v83)(v13, v136 + v3, v6);
      sub_25E801E34();
      v84 = sub_25E82A2EC();
      v86 = v85;
      v28 = v134;
      v134(v13, v6);
      v87 = sub_25E7FFAF0(v84, v86, &v140);

      *(v73 + 4) = v87;
      _os_log_impl(&dword_25E7F6000, v70, v82, "Failed at reading metadata for %s", v73, 0xCu);
      v78 = v132;
      goto LABEL_37;
    }

LABEL_43:

    goto LABEL_16;
  }

  v89 = v142;
  v90 = v143;
  v91 = &v3[OBJC_IVAR____TtC6Planks12PlanksReader_metadata];
  v136 = v140;
  *v91 = v140;
  v91[1] = v88;
  v91[2] = v89;
  v91[3] = v90;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader_metadataSize] = v132;
  v92 = qword_27FD072A0;
  v130[0] = v88;

  v131 = v89;

  v135 = v90;

  if (v92 != -1)
  {
    swift_once();
  }

  v93 = sub_25E829CDC();
  v94 = __swift_project_value_buffer(v93, qword_27FD0A4B0);

  v130[1] = v94;
  v95 = sub_25E829CBC();
  v96 = sub_25E82A01C();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v140 = v98;
    *v97 = 136315138;
    (v133)(v13, &v3[OBJC_IVAR____TtC6Planks12PlanksReader_filePath], v6);
    sub_25E801E34();
    v99 = sub_25E82A2EC();
    v101 = v100;
    v134(v13, v6);
    v102 = sub_25E7FFAF0(v99, v101, &v140);

    *(v97 + 4) = v102;
    _os_log_impl(&dword_25E7F6000, v95, v96, "PlanksReader file path: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v98);
    MEMORY[0x25F8C1620](v98, -1, -1);
    MEMORY[0x25F8C1620](v97, -1, -1);
  }

  v103 = sub_25E829CBC();
  v104 = sub_25E82A01C();
  v105 = os_log_type_enabled(v103, v104);
  v106 = v131;
  v107 = v135;
  v108 = v136;
  if (v105)
  {
    v109 = swift_slowAlloc();
    *v109 = 134217984;
    *(v109 + 4) = *&v3[OBJC_IVAR____TtC6Planks12PlanksReader_fileSize];

    _os_log_impl(&dword_25E7F6000, v103, v104, "PlanksReader file size: %lld", v109, 0xCu);
    MEMORY[0x25F8C1620](v109, -1, -1);
  }

  else
  {
  }

  v110 = sub_25E829CBC();
  v111 = sub_25E82A01C();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 134217984;
    *(v112 + 4) = v132;
    _os_log_impl(&dword_25E7F6000, v110, v111, "PlanksReader file metadata size: %ld", v112, 0xCu);
    MEMORY[0x25F8C1620](v112, -1, -1);
  }

  v113 = v130[0];

  v114 = sub_25E829CBC();
  v115 = sub_25E82A01C();
  sub_25E801E8C(v108, v113);
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v116 = 136315138;
    v139 = v117;
    v140 = v136;
    v141 = v113;
    v142 = v106;
    v143 = v107;
    v118 = sub_25E7FC4FC();
    v120 = sub_25E7FFAF0(v118, v119, &v139);

    *(v116 + 4) = v120;
    v107 = v135;
    _os_log_impl(&dword_25E7F6000, v114, v115, "PlanksReader file metadata summary: %s", v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v117);
    MEMORY[0x25F8C1620](v117, -1, -1);
    MEMORY[0x25F8C1620](v116, -1, -1);
  }

  v121 = sub_25E829CBC();
  v122 = sub_25E82A01C();
  v123 = v136;
  sub_25E801E8C(v136, v113);
  if (os_log_type_enabled(v121, v122))
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v140 = v125;
    *v124 = 136315138;
    v126 = sub_25E7FEA6C(v123, v113, v106, v107);
    v128 = v127;
    sub_25E801E8C(v123, v113);
    v129 = sub_25E7FFAF0(v126, v128, &v140);

    *(v124 + 4) = v129;
    _os_log_impl(&dword_25E7F6000, v121, v122, "PlanksReader file metadata: %s", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x25F8C1620](v125, -1, -1);
    MEMORY[0x25F8C1620](v124, -1, -1);
  }

  else
  {

    sub_25E801E8C(v123, v113);
  }

  return v3;
}

uint64_t sub_25E7FAFF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v31 = v2;
  v32 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v23[0] = *v5;
    v23[1] = v8;
    v24[0] = v5[2];
    v9 = v24[0];
    *(v24 + 10) = *(v5 + 42);
    v20 = v23[0];
    v21 = v8;
    v22[0] = v9;
    *(v22 + 10) = *(v24 + 10);
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    *(v26 + 10) = *(v6 + 42);
    v13 = *(v26 + 10);
    v25[1] = v11;
    v26[0] = v12;
    v25[0] = v10;
    v17 = v10;
    v18 = v11;
    v19[0] = v12;
    *(v19 + 10) = v13;
    sub_25E8026B4(v23, v16);
    sub_25E8026B4(v25, v16);
    v14 = _s6Planks11ColumnChunkV2eeoiySbAC_ACtFZ_0(&v20, &v17);
    v27[0] = v17;
    v27[1] = v18;
    v28[0] = v19[0];
    *(v28 + 10) = *(v19 + 10);
    sub_25E80281C(v27);
    v29[0] = v20;
    v29[1] = v21;
    v30[0] = v22[0];
    *(v30 + 10) = *(v22 + 10);
    sub_25E80281C(v29);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 4;
    v6 += 4;
  }

  return 1;
}

uint64_t sub_25E7FB138(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 8);
      v7 = *v4;
      v8 = *(v3 - 8);
      v9 = *v3;
      v10 = *(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2);
      if (!v10 && (sub_25E82A32C() & 1) == 0)
      {
        return 0;
      }

      if (v6 > 5)
      {
        if (v6 > 8)
        {
          if (v6 == 9)
          {
            v11 = 0xE700000000000000;
            v12 = 0x323374616F6C66;
            if (v8 <= 5)
            {
              goto LABEL_48;
            }
          }

          else if (v6 == 10)
          {
            v11 = 0xE700000000000000;
            v12 = 0x343674616F6C66;
            if (v8 <= 5)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v11 = 0xE400000000000000;
            v12 = 1819242338;
            if (v8 <= 5)
            {
LABEL_48:
              if (v8 > 2)
              {
                if (v8 == 3)
                {
                  v5 = 0xE500000000000000;
                  if (v12 != 0x3436746E69)
                  {
                    goto LABEL_78;
                  }
                }

                else if (v8 == 4)
                {
                  v5 = 0xE500000000000000;
                  if (v12 != 0x38746E6975)
                  {
                    goto LABEL_78;
                  }
                }

                else
                {
                  v5 = 0xE600000000000000;
                  if (v12 != 0x3631746E6975)
                  {
                    goto LABEL_78;
                  }
                }
              }

              else if (v8)
              {
                if (v8 == 1)
                {
                  v5 = 0xE500000000000000;
                  if (v12 != 0x3631746E69)
                  {
                    goto LABEL_78;
                  }
                }

                else
                {
                  v5 = 0xE500000000000000;
                  if (v12 != 0x3233746E69)
                  {
                    goto LABEL_78;
                  }
                }
              }

              else
              {
                v5 = 0xE400000000000000;
                if (v12 != 947154537)
                {
                  goto LABEL_78;
                }
              }

              goto LABEL_6;
            }
          }
        }

        else if (v6 == 6)
        {
          v11 = 0xE600000000000000;
          v12 = 0x3233746E6975;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0xE600000000000000;
          v12 = 0x3436746E6975;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v11 = 0xE700000000000000;
          v12 = 0x363174616F6C66;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }
      }

      else if (v6 > 2)
      {
        if (v6 == 3)
        {
          v11 = 0xE500000000000000;
          v12 = 0x3436746E69;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }

        else if (v6 == 4)
        {
          v11 = 0xE500000000000000;
          v12 = 0x38746E6975;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v11 = 0xE600000000000000;
          v12 = 0x3631746E6975;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }
      }

      else if (v6)
      {
        if (v6 == 1)
        {
          v11 = 0xE500000000000000;
          v12 = 0x3631746E69;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v11 = 0xE500000000000000;
          v12 = 0x3233746E69;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        v11 = 0xE400000000000000;
        v12 = 947154537;
        if (v8 <= 5)
        {
          goto LABEL_48;
        }
      }

      if (v8 > 8)
      {
        if (v8 == 9)
        {
          v5 = 0xE700000000000000;
          if (v12 != 0x323374616F6C66)
          {
            goto LABEL_78;
          }
        }

        else if (v8 == 10)
        {
          v5 = 0xE700000000000000;
          if (v12 != 0x343674616F6C66)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v5 = 0xE400000000000000;
          if (v12 != 1819242338)
          {
            goto LABEL_78;
          }
        }
      }

      else if (v8 == 6)
      {
        v5 = 0xE600000000000000;
        if (v12 != 0x3233746E6975)
        {
          goto LABEL_78;
        }
      }

      else if (v8 == 7)
      {
        v5 = 0xE600000000000000;
        if (v12 != 0x3436746E6975)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v5 = 0xE700000000000000;
        if (v12 != 0x363174616F6C66)
        {
          goto LABEL_78;
        }
      }

LABEL_6:
      if (v11 == v5)
      {

        if (v7 != v9)
        {
          return 0;
        }

        goto LABEL_8;
      }

LABEL_78:
      v13 = sub_25E82A32C();

      result = 0;
      if ((v13 & 1) == 0 || v7 != v9)
      {
        return result;
      }

LABEL_8:
      v4 += 4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_25E7FB578(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_187;
    }

    v6 = v4 + 40 * v3;
    if (*v6)
    {
      if (*v6 == 1)
      {
        v7 = 0xE400000000000000;
        v8 = 1635017060;
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x7865646E69;
      }
    }

    else
    {
      v7 = 0xE600000000000000;
      v8 = 0x656C706D6973;
    }

    v9 = (v5 + 40 * v3);
    v10 = *v9;
    if (*v9)
    {
      if (v10 == 1)
      {
        v11 = 1635017060;
      }

      else
      {
        v11 = 0x7865646E69;
      }

      if (v10 == 1)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      v11 = 0x656C706D6973;
    }

    v13 = *(v6 + 8);
    v55 = *(v6 + 24);
    v56 = *(v6 + 16);
    v54 = *(v6 + 32);
    v14 = *(v9 + 1);
    v15 = *(v9 + 3);
    v52 = v15;
    v53 = *(v9 + 2);
    v51 = *(v9 + 4);
    if (v8 == v11 && v7 == v12)
    {
    }

    else
    {
      v16 = sub_25E82A32C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_182;
      }
    }

    v17 = *(v13 + 16);
    if (v17 != *(v14 + 16))
    {
LABEL_182:

      return 0;
    }

    if (v17 && v13 != v14)
    {
      break;
    }

LABEL_164:
    ++v3;
    result = v56 == v53 && v55 == v52 && v54 == v51;
    if (result != 1 || v3 == v2)
    {
      return result;
    }
  }

  v48 = v5;
  v49 = v4;
  v50 = v2;
  if (*(v13 + 16))
  {
    v18 = 0;
    v57 = v17 - 1;
    v19 = 32;
    while (1)
    {
      v20 = *(v13 + v19);
      v21 = *(v13 + v19 + 16);
      v22 = *(v13 + v19 + 32);
      *&v61[10] = *(v13 + v19 + 42);
      v60 = v21;
      *v61 = v22;
      v59 = v20;
      if (v18 >= *(v14 + 16))
      {
        goto LABEL_186;
      }

      v24 = *(v14 + v19 + 16);
      v23 = *(v14 + v19 + 32);
      v25 = *(v14 + v19);
      *&v64[10] = *(v14 + v19 + 42);
      v63 = v24;
      *v64 = v23;
      v62 = v25;
      if (v59 != v25 && (sub_25E82A32C() & 1) == 0 || v60 != v63 || v61[0] != v64[0])
      {
        goto LABEL_182;
      }

      if (v61[1] == 2)
      {
        if (v64[1] != 2)
        {
          goto LABEL_182;
        }

        sub_25E8026B4(&v59, v58);
        sub_25E8026B4(&v62, v58);
      }

      else
      {
        if (v64[1] == 2)
        {
          goto LABEL_182;
        }

        v26 = (v61[1] & 1) != 0 ? 0x657A69746E617571 : 0x6572706D6F636E75;
        v27 = (v61[1] & 1) != 0 ? 0xE900000000000064 : 0xEC00000064657373;
        v28 = (v64[1] & 1) != 0 ? 0x657A69746E617571 : 0x6572706D6F636E75;
        v29 = (v64[1] & 1) != 0 ? 0xE900000000000064 : 0xEC00000064657373;
        if (v26 == v28 && v27 == v29)
        {
          sub_25E8026B4(&v59, v58);
          sub_25E8026B4(&v62, v58);
        }

        else
        {
          v30 = sub_25E82A32C();
          sub_25E8026B4(&v59, v58);
          sub_25E8026B4(&v62, v58);

          if ((v30 & 1) == 0)
          {
            goto LABEL_181;
          }
        }
      }

      v31 = *&v61[24];
      v32 = *&v64[24];
      if (v61[24] == 12)
      {
        break;
      }

      if (v64[24] == 12 || *&v61[8] != *&v64[8] || *&v61[16] != *&v64[16])
      {
LABEL_181:
        sub_25E80281C(&v62);
        sub_25E80281C(&v59);
        goto LABEL_182;
      }

      if (v61[24] > 5u)
      {
        if (v61[24] > 8u)
        {
          if (v61[24] == 9)
          {
            v33 = 0xE700000000000000;
            v34 = 0x323374616F6C66;
          }

          else if (v61[24] == 10)
          {
            v33 = 0xE700000000000000;
            v34 = 0x343674616F6C66;
          }

          else
          {
            v33 = 0xE400000000000000;
            v34 = 1819242338;
          }
        }

        else if (v61[24] == 6)
        {
          v33 = 0xE600000000000000;
          v34 = 0x3233746E6975;
        }

        else if (v61[24] == 7)
        {
          v33 = 0xE600000000000000;
          v34 = 0x3436746E6975;
        }

        else
        {
          v33 = 0xE700000000000000;
          v34 = 0x363174616F6C66;
        }
      }

      else if (v61[24] > 2u)
      {
        if (v61[24] == 3)
        {
          v33 = 0xE500000000000000;
          v34 = 0x3436746E69;
        }

        else if (v61[24] == 4)
        {
          v33 = 0xE500000000000000;
          v34 = 0x38746E6975;
        }

        else
        {
          v33 = 0xE600000000000000;
          v34 = 0x3631746E6975;
        }
      }

      else if (v61[24])
      {
        v33 = 0xE500000000000000;
        if (v61[24] == 1)
        {
          v34 = 0x3631746E69;
        }

        else
        {
          v34 = 0x3233746E69;
        }
      }

      else
      {
        v33 = 0xE400000000000000;
        v34 = 947154537;
      }

      if (v64[24] > 5u)
      {
        if (v64[24] > 8u)
        {
          if (v64[24] == 9)
          {
            v35 = 0xE700000000000000;
            v36 = 0x323374616F6C66;
          }

          else if (v64[24] == 10)
          {
            v35 = 0xE700000000000000;
            v36 = 0x343674616F6C66;
          }

          else
          {
            v35 = 0xE400000000000000;
            v36 = 1819242338;
          }
        }

        else if (v64[24] == 6)
        {
          v35 = 0xE600000000000000;
          v36 = 0x3233746E6975;
        }

        else if (v64[24] == 7)
        {
          v35 = 0xE600000000000000;
          v36 = 0x3436746E6975;
        }

        else
        {
          v35 = 0xE700000000000000;
          v36 = 0x363174616F6C66;
        }
      }

      else if (v64[24] > 2u)
      {
        if (v64[24] == 3)
        {
          v35 = 0xE500000000000000;
          v36 = 0x3436746E69;
        }

        else if (v64[24] == 4)
        {
          v35 = 0xE500000000000000;
          v36 = 0x38746E6975;
        }

        else
        {
          v35 = 0xE600000000000000;
          v36 = 0x3631746E6975;
        }
      }

      else if (v64[24])
      {
        v35 = 0xE500000000000000;
        if (v64[24] == 1)
        {
          v36 = 0x3631746E69;
        }

        else
        {
          v36 = 0x3233746E69;
        }
      }

      else
      {
        v35 = 0xE400000000000000;
        v36 = 947154537;
      }

      if (v34 == v36 && v33 == v35)
      {
      }

      else
      {
        v37 = sub_25E82A32C();

        if ((v37 & 1) == 0)
        {
          goto LABEL_181;
        }
      }

      v38 = v31 >> 8;
      if (v31 >> 8 > 5)
      {
        if (v31 >> 8 > 8)
        {
          if (v38 == 9)
          {
            v39 = 0xE700000000000000;
            v40 = 0x323374616F6C66;
          }

          else if (v38 == 10)
          {
            v39 = 0xE700000000000000;
            v40 = 0x343674616F6C66;
          }

          else
          {
            v39 = 0xE400000000000000;
            v40 = 1819242338;
          }
        }

        else if (v38 == 6)
        {
          v39 = 0xE600000000000000;
          v40 = 0x3233746E6975;
        }

        else if (v38 == 7)
        {
          v39 = 0xE600000000000000;
          v40 = 0x3436746E6975;
        }

        else
        {
          v39 = 0xE700000000000000;
          v40 = 0x363174616F6C66;
        }
      }

      else if (v31 >> 8 > 2)
      {
        if (v38 == 3)
        {
          v39 = 0xE500000000000000;
          v40 = 0x3436746E69;
        }

        else if (v38 == 4)
        {
          v39 = 0xE500000000000000;
          v40 = 0x38746E6975;
        }

        else
        {
          v39 = 0xE600000000000000;
          v40 = 0x3631746E6975;
        }
      }

      else if (v38)
      {
        v39 = 0xE500000000000000;
        if (v38 == 1)
        {
          v40 = 0x3631746E69;
        }

        else
        {
          v40 = 0x3233746E69;
        }
      }

      else
      {
        v39 = 0xE400000000000000;
        v40 = 947154537;
      }

      v41 = v32 >> 8;
      if (v32 >> 8 > 5)
      {
        if (v32 >> 8 > 8)
        {
          if (v41 == 9)
          {
            v42 = 0xE700000000000000;
            v43 = 0x323374616F6C66;
          }

          else if (v41 == 10)
          {
            v42 = 0xE700000000000000;
            v43 = 0x343674616F6C66;
          }

          else
          {
            v42 = 0xE400000000000000;
            v43 = 1819242338;
          }
        }

        else if (v41 == 6)
        {
          v42 = 0xE600000000000000;
          v43 = 0x3233746E6975;
        }

        else if (v41 == 7)
        {
          v42 = 0xE600000000000000;
          v43 = 0x3436746E6975;
        }

        else
        {
          v42 = 0xE700000000000000;
          v43 = 0x363174616F6C66;
        }
      }

      else if (v32 >> 8 > 2)
      {
        if (v41 == 3)
        {
          v42 = 0xE500000000000000;
          v43 = 0x3436746E69;
        }

        else if (v41 == 4)
        {
          v42 = 0xE500000000000000;
          v43 = 0x38746E6975;
        }

        else
        {
          v42 = 0xE600000000000000;
          v43 = 0x3631746E6975;
        }
      }

      else if (v41)
      {
        v42 = 0xE500000000000000;
        if (v41 == 1)
        {
          v43 = 0x3631746E69;
        }

        else
        {
          v43 = 0x3233746E69;
        }
      }

      else
      {
        v42 = 0xE400000000000000;
        v43 = 947154537;
      }

      if (v40 == v43 && v39 == v42)
      {

LABEL_158:
        sub_25E80281C(&v62);
        result = sub_25E80281C(&v59);
        goto LABEL_160;
      }

      v44 = sub_25E82A32C();

      sub_25E80281C(&v62);
      result = sub_25E80281C(&v59);
      if ((v44 & 1) == 0)
      {
        goto LABEL_182;
      }

LABEL_160:
      if (v57 == v18)
      {

        v4 = v49;
        v2 = v50;
        v5 = v48;
        goto LABEL_164;
      }

      v19 += 64;
      if (++v18 >= *(v13 + 16))
      {
        goto LABEL_185;
      }
    }

    if (v64[24] != 12)
    {
      goto LABEL_181;
    }

    goto LABEL_158;
  }

LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
  return result;
}

uint64_t sub_25E7FBFD0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static PlanksReader.readMetadataSize(_:)()
{
  result = sub_25E801C34();
  if (v0)
  {
    return v2;
  }

  return result;
}

void static PlanksReader.readMetadata(_:metadataSize:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_25E82993C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E829D1C();
  if (v11)
  {
    LODWORD(v39) = v10;
    v12 = v10;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v13 = v12;
    return;
  }

  v14 = v10 - a1;
  if (__OFSUB__(v10, a1))
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_8;
  }

  if (v14 > 0)
  {
    v15 = swift_slowAlloc();
    v16 = sub_25E829CFC();
    if (v17)
    {
      LODWORD(v39) = v16;
      v18 = v16;
      sub_25E7FFC08();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v19 = v18;
    }

    else
    {
      v24 = sub_25E82997C();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      sub_25E82996C();
      (*(v6 + 104))(v9, *MEMORY[0x277CC86D0], v5);
      sub_25E82994C();
      v27 = sub_25E7FD9F4(v15, a1);
      v29 = v28;
      sub_25E801EDC();
      sub_25E82995C();
      if (v2)
      {
        sub_25E801F30(v27, v29);
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v30 = sub_25E829CDC();
        __swift_project_value_buffer(v30, qword_27FD0A4B0);
        MEMORY[0x25F8C14D0](v2);
        v31 = sub_25E829CBC();
        v32 = sub_25E82A02C();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          MEMORY[0x25F8C14D0](v2);
          v35 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 4) = v35;
          *v34 = v35;
          _os_log_impl(&dword_25E7F6000, v31, v32, "Failed at parsing metadata: %@", v33, 0xCu);
          sub_25E802774(v34, &qword_27FD07370, &qword_25E82AD20);
          MEMORY[0x25F8C1620](v34, -1, -1);
          MEMORY[0x25F8C1620](v33, -1, -1);
        }

        else
        {
        }

        v36 = 0;
        v38 = 0;
        v37 = 0uLL;
      }

      else
      {
        sub_25E801F30(v27, v29);

        v36 = v39;
        v37 = v40;
        v38 = v41;
      }

      *a2 = v36;
      *(a2 + 8) = v37;
      *(a2 + 24) = v38;
    }

    MEMORY[0x25F8C1620](v15, -1, -1);
    return;
  }

  if (qword_27FD072A0 != -1)
  {
    goto LABEL_22;
  }

LABEL_8:
  v20 = sub_25E829CDC();
  __swift_project_value_buffer(v20, qword_27FD0A4B0);
  v21 = sub_25E829CBC();
  v22 = sub_25E82A02C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v14;
    _os_log_impl(&dword_25E7F6000, v21, v22, "Invalid metadataOffset: %lld", v23, 0xCu);
    MEMORY[0x25F8C1620](v23, -1, -1);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t sub_25E7FC4FC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25E82A0FC();
  MEMORY[0x25F8C0BC0](0x6174654D656C6946, 0xEC00000061746164);
  MEMORY[0x25F8C0BC0](0x6E6F697372657628, 0xEA0000000000203ALL);
  v5 = sub_25E82A2EC();
  MEMORY[0x25F8C0BC0](v5);

  MEMORY[0x25F8C0BC0](0x616D65686373202CLL, 0xEF203A746E756F43);
  v10 = *(v2 + 16);
  v6 = sub_25E82A2EC();
  MEMORY[0x25F8C0BC0](v6);

  MEMORY[0x25F8C0BC0](0xD000000000000012, 0x800000025E82C5F0);
  v11 = *(v4 + 16);
  v7 = sub_25E82A2EC();
  MEMORY[0x25F8C0BC0](v7);

  MEMORY[0x25F8C0BC0](0xD000000000000011, 0x800000025E82C610);
  v12 = *(v3 + 16);
  v8 = sub_25E82A2EC();
  MEMORY[0x25F8C0BC0](v8);

  MEMORY[0x25F8C0BC0](41, 0xE100000000000000);
  return 0;
}

uint64_t PlanksReader.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader_fd);
  if ((sub_25E829D2C() & 0x100000000) != 0)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
  }

  v2 = OBJC_IVAR____TtC6Planks12PlanksReader_filePath;
  v3 = sub_25E829D6C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 8);
  v5 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
  v6 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 24);

  v7 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet);

  v8 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___elementByName);

  v9 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___chunksByElement);

  v10 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___groupsByElement);

  return v0;
}

uint64_t PlanksReader.__deallocating_deinit()
{
  PlanksReader.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25E7FC83C()
{
  v1 = OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet;
  if (*(v0 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet))
  {
    v2 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata);
    v8 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 8);
    v9 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 24);
    v3 = v0;
    v4 = FileMetadata.fieldNames.getter();
    v2 = sub_25E80203C(v4);

    v5 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_25E7FC8E8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet);
  *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet) = a1;
}

uint64_t (*sub_25E7FC900(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_25E7FC83C();
  return sub_25E7FC948;
}

uint64_t sub_25E7FC974(uint64_t a1)
{
  if (qword_27FD072A0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v2 = sub_25E829CDC();
    __swift_project_value_buffer(v2, qword_27FD0A4B0);
    v3 = sub_25E829CBC();
    v4 = sub_25E82A01C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25E7F6000, v3, v4, "Building elementByName index", v5, 2u);
      MEMORY[0x25F8C1620](v5, -1, -1);
    }

    v6 = sub_25E818734(MEMORY[0x277D84F90]);
    v7 = *(a1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 8);
    v31 = *(v7 + 16);
    if (!v31)
    {
      return v6;
    }

    v8 = 0;
    v9 = (v7 + 56);
    while (v8 < *(v7 + 16))
    {
      v13 = *(v9 - 3);
      a1 = *(v9 - 2);
      v14 = *(v9 - 8);
      v15 = *v9;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_25E800EB4(v13, a1);
      v19 = v6[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_21;
      }

      v23 = v18;
      if (v6[3] < v22)
      {
        sub_25E8177B8(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_25E800EB4(v13, a1);
        if ((v23 & 1) != (v24 & 1))
        {
          result = sub_25E82A37C();
          __break(1u);
          return result;
        }

LABEL_14:
        if (v23)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v29 = v17;
      sub_25E8181A0();
      v17 = v29;
      if (v23)
      {
LABEL_6:
        v10 = v17;

        v11 = v6[7] + 32 * v10;
        v12 = *(v11 + 8);
        *v11 = v13;
        *(v11 + 8) = a1;
        *(v11 + 16) = v14;
        *(v11 + 24) = v15;

        goto LABEL_7;
      }

LABEL_15:
      v6[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v6[6] + 16 * v17);
      *v25 = v13;
      v25[1] = a1;
      v26 = v6[7] + 32 * v17;
      *v26 = v13;
      *(v26 + 8) = a1;
      *(v26 + 16) = v14;
      *(v26 + 24) = v15;
      v27 = v6[2];
      v21 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v21)
      {
        goto LABEL_22;
      }

      v6[2] = v28;
LABEL_7:
      ++v8;
      v9 += 4;
      if (v31 == v8)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }
}

uint64_t sub_25E7FCC14(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___elementByName);
  *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___elementByName) = a1;
}

uint64_t (*sub_25E7FCC2C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_25E7FC954();
  return sub_25E7FCC74;
}

uint64_t sub_25E7FCCA0(uint64_t a1)
{
  if (qword_27FD072A0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v2 = sub_25E829CDC();
  __swift_project_value_buffer(v2, qword_27FD0A4B0);
  v3 = sub_25E829CBC();
  v4 = sub_25E82A01C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25E7F6000, v3, v4, "Building chunksByElement index", v5, 2u);
    MEMORY[0x25F8C1620](v5, -1, -1);
  }

  v6 = sub_25E818854(MEMORY[0x277D84F90]);
  v7 = *(a1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
  v41 = 0;
  v42 = 0;
  v40 = v7;

  sub_25E7FD05C(&v37);
  a1 = v38;
  if (!v38)
  {
    v8 = 0;
LABEL_28:

    sub_25E802944(v8);
    return v6;
  }

  v8 = 0;
  v35 = v37;
  while (1)
  {
    v34 = *(a1 + 16);
    if (v34)
    {
      break;
    }

LABEL_6:

    sub_25E7FD05C(&v37);
    v35 = v37;
    a1 = v38;
    if (!v38)
    {
      goto LABEL_28;
    }
  }

  v9 = 0;
  v10 = (a1 + 32);
  while (1)
  {
    if (v9 >= *(a1 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v12 = v10[1];
    v11 = v10[2];
    v13 = *v10;
    *&v39[10] = *(v10 + 42);
    v38 = v12;
    *v39 = v11;
    v37 = v13;
    v14 = v13;
    sub_25E8026B4(&v37, &v36);
    sub_25E802944(v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v6;
    v17 = sub_25E800EB4(v14, *(&v14 + 1));
    v18 = v6[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_30;
    }

    v21 = v16;
    if (v6[3] < v20)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v6 = v36;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_25E81832C();
      v6 = v36;
      if (v21)
      {
LABEL_17:
        sub_25E80281C(&v37);
        goto LABEL_21;
      }
    }

LABEL_19:
    v6[(v17 >> 6) + 8] |= 1 << v17;
    *(v6[6] + 16 * v17) = v14;
    *(v6[7] + 8 * v17) = MEMORY[0x277D84F90];
    v24 = v6[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_31;
    }

    v6[2] = v26;
LABEL_21:
    v27 = v6[7];
    v28 = *(v27 + 8 * v17);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(v27 + 8 * v17) = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_25E7FF6BC(0, *(v28 + 2) + 1, 1, v28, &qword_27FD073E8, &qword_25E82ADB8);
      *(v27 + 8 * v17) = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_25E7FF6BC((v30 > 1), v31 + 1, 1, v28, &qword_27FD073E8, &qword_25E82ADB8);
      *(v27 + 8 * v17) = v28;
    }

    v32 = &v28[16 * v31];
    *(v32 + 4) = v35;
    *(v32 + 5) = v9;
    *(v28 + 2) = v31 + 1;
    v10 += 4;
    v8 = sub_25E7FD0CC;
    if (v34 == ++v9)
    {
      goto LABEL_6;
    }
  }

  sub_25E817A90(v20, isUniquelyReferenced_nonNull_native);
  v22 = sub_25E800EB4(v14, *(&v14 + 1));
  if ((v21 & 1) == (v23 & 1))
  {
    v17 = v22;
    v6 = v36;
    if (v21)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  result = sub_25E82A37C();
  __break(1u);
  return result;
}

void sub_25E7FD05C(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 40 * v2;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = *(v4 + 48);
    v8 = *(v4 + 64);
    v1[1] = v2 + 1;
    v9 = v1[2];
    if (!__OFADD__(v9, 1))
    {
      v1[2] = v9 + 1;
      *a1 = v9;
      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      *(a1 + 40) = v8;

      return;
    }
  }

  __break(1u);
}

uint64_t sub_25E7FD0DC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___chunksByElement);
  *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___chunksByElement) = a1;
}

uint64_t (*sub_25E7FD0F4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_25E7FCC80();
  return sub_25E7FD13C;
}

uint64_t sub_25E7FD168(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_25E7FD1D0()
{
  if (qword_27FD072A0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v0 = sub_25E829CDC();
  __swift_project_value_buffer(v0, qword_27FD0A4B0);
  v1 = sub_25E829CBC();
  v2 = sub_25E82A01C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25E7F6000, v1, v2, "Building groupsByElement index", v3, 2u);
    MEMORY[0x25F8C1620](v3, -1, -1);
  }

  v4 = sub_25E818868(MEMORY[0x277D84F90]);
  v5 = sub_25E7FCC80();
  v6 = 0;
  v7 = v5 + 64;
  v58 = v5 + 64;
  v59 = v5;
  v8 = 1 << *(v5 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v57 = v11;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v15 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v15 >= v11)
        {

          return v4;
        }

        v10 = *(v7 + 8 * v15);
        ++v6;
        if (v10)
        {
          v61 = v4;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v61 = v4;
    v15 = v6;
LABEL_16:
    v16 = __clz(__rbit64(v10)) | (v15 << 6);
    v17 = (*(v59 + 48) + 16 * v16);
    v18 = v17[1];
    v60 = *v17;
    v19 = *(*(v59 + 56) + 8 * v16);
    v20 = *(v19 + 16);
    v62 = v18;
    if (v20)
    {
      v63 = MEMORY[0x277D84F90];

      sub_25E81F1EC(0, v20, 0);
      v21 = v63;
      v22 = v63[2];
      v23 = 32;
      do
      {
        v24 = *(v19 + v23);
        v63 = v21;
        v25 = v21[3];
        if (v22 >= v25 >> 1)
        {
          sub_25E81F1EC((v25 > 1), v22 + 1, 1);
          v21 = v63;
        }

        v21[2] = v22 + 1;
        v21[v22 + 4] = v24;
        v23 += 16;
        ++v22;
        --v20;
      }

      while (v20);

      v18 = v62;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v26 = MEMORY[0x25F8C0D70](v21[2], MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
    v27 = v26;
    v28 = v21[2];
    if (v28)
    {
      v29 = 0;
      v30 = v26 + 56;
      do
      {
        while (1)
        {
          v31 = v21[v29++ + 4];
          v32 = *(v27 + 40);
          v33 = sub_25E82A38C();
          v34 = -1 << *(v27 + 32);
          v35 = v33 & ~v34;
          if ((*(v30 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
          {
            break;
          }

LABEL_30:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = v27;
          sub_25E80096C(v31, v35, isUniquelyReferenced_nonNull_native);
          v27 = v63;
          if (v29 == v28)
          {
            goto LABEL_32;
          }

          v30 = (v63 + 7);
        }

        v36 = ~v34;
        while (*(*(v27 + 48) + 8 * v35) != v31)
        {
          v35 = (v35 + 1) & v36;
          if (((*(v30 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      while (v29 != v28);
LABEL_32:

      v18 = v62;
    }

    else
    {
    }

    v38 = *(v27 + 16);
    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
      v39 = swift_allocObject();
      v40 = _swift_stdlib_malloc_size(v39);
      v41 = v40 - 32;
      if (v40 < 32)
      {
        v41 = v40 - 25;
      }

      v39[2] = v38;
      v39[3] = 2 * (v41 >> 3);
      v42 = sub_25E801990(&v63, v39 + 4, v38, v27);
      sub_25E80293C();
      if (v42 != v38)
      {
        goto LABEL_52;
      }
    }

    else
    {

      v39 = MEMORY[0x277D84F90];
    }

    v43 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v61;
    v44 = sub_25E800EB4(v60, v18);
    v46 = v61[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_51;
    }

    v50 = v45;
    if (v61[3] < v49)
    {
      break;
    }

    if ((v43 & 1) == 0)
    {
      v55 = v44;
      sub_25E818340();
      v44 = v55;
    }

LABEL_46:
    v10 &= v10 - 1;
    if (v50)
    {
      v12 = v44;

      v4 = v63;
      v13 = v63[7];
      v14 = *(v13 + 8 * v12);
      *(v13 + 8 * v12) = v39;
    }

    else
    {
      v4 = v63;
      v63[(v44 >> 6) + 8] |= 1 << v44;
      v52 = (v4[6] + 16 * v44);
      *v52 = v60;
      v52[1] = v18;
      *(v4[7] + 8 * v44) = v39;
      v53 = v4[2];
      v48 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v48)
      {
        goto LABEL_53;
      }

      v4[2] = v54;
    }

    v6 = v15;
    v11 = v57;
    v7 = v58;
  }

  sub_25E817AA4(v49, v43);
  v44 = sub_25E800EB4(v60, v18);
  if ((v50 & 1) == (v51 & 1))
  {
    goto LABEL_46;
  }

  result = sub_25E82A37C();
  __break(1u);
  return result;
}

uint64_t sub_25E7FD6F4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___groupsByElement);
  *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___groupsByElement) = a1;
}

uint64_t (*sub_25E7FD70C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_25E7FD148();
  return sub_25E7FD754;
}

uint64_t sub_25E7FD760(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v3 + *a3);
  *(v3 + *a3) = v4;
}

uint64_t static PlanksReader.readFilesize(_:)()
{
  result = sub_25E829D1C();
  if (v1)
  {
    v2 = result;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    result = v2;
    *v3 = v2;
  }

  return result;
}

uint64_t static PlanksReader.validateMagic(_:)(uint64_t a1)
{
  v2 = sub_25E801AA4(a1, 1);
  v3 = sub_25E7FBFD0(v2, &unk_28707E2C8);

  if ((v3 & 1) == 0)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v5 = sub_25E829CDC();
    __swift_project_value_buffer(v5, qword_27FD0A4B0);
    v6 = sub_25E829CBC();
    v7 = sub_25E82A02C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Invalid file magic begin.";
    goto LABEL_7;
  }

  v4 = sub_25E801AA4(a1, 0);
  v11 = sub_25E7FBFD0(v4, &unk_28707E2C8);

  if ((v11 & 1) == 0)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v12 = sub_25E829CDC();
    __swift_project_value_buffer(v12, qword_27FD0A4B0);
    v6 = sub_25E829CBC();
    v7 = sub_25E82A02C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Invalid file magic end.";
LABEL_7:
    _os_log_impl(&dword_25E7F6000, v6, v7, v9, v8, 2u);
    MEMORY[0x25F8C1620](v8, -1, -1);
LABEL_8:

    return 0;
  }

  return 1;
}

uint64_t sub_25E7FD9F4(_BYTE *__src, uint64_t a2)
{
  result = 0;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      return sub_25E801F84(__src, &__src[a2]);
    }

    else
    {
      v5 = sub_25E829A0C();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_25E8299CC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25E829A1C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

void sub_25E7FDAA4()
{
  v1 = sub_25E829D6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksReader_fd);
  v7 = sub_25E829D2C();
  if ((v7 & 0x100000000) != 0)
  {
    v25 = v7;
    v8 = v7;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    v9 = swift_allocError();
    *v10 = v8;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v11 = sub_25E829CDC();
    __swift_project_value_buffer(v11, qword_27FD0A4B0);
    MEMORY[0x25F8C14D0](v9);
    v12 = sub_25E829CBC();
    v13 = sub_25E82A02C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v14 = 136315394;
      (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC6Planks12PlanksReader_filePath, v1);
      sub_25E801E34();
      v15 = sub_25E82A2EC();
      v17 = v16;
      (*(v2 + 8))(v5, v1);
      v18 = sub_25E7FFAF0(v15, v17, &v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2112;
      MEMORY[0x25F8C14D0](v9);
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      v20 = v22;
      *v22 = v19;
      _os_log_impl(&dword_25E7F6000, v12, v13, "Failed at closing PlanksReader(%s): %@", v14, 0x16u);
      sub_25E802774(v20, &qword_27FD07370, &qword_25E82AD20);
      MEMORY[0x25F8C1620](v20, -1, -1);
      v21 = v23;
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x25F8C1620](v21, -1, -1);
      MEMORY[0x25F8C1620](v14, -1, -1);

      return;
    }
  }
}

uint64_t sub_25E7FDDB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E7FCC80();
  if (*(v4 + 16) && (v5 = sub_25E800EB4(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    v8 = *(v7 + 16);
    if (v8)
    {
      v17 = MEMORY[0x277D84F90];
      sub_25E81F1EC(0, v8, 0);
      v9 = v17;
      v10 = *(v17 + 16);
      v11 = 32;
      do
      {
        v12 = *(v7 + v11);
        v13 = *(v17 + 24);
        if (v10 >= v13 >> 1)
        {
          sub_25E81F1EC((v13 > 1), v10 + 1, 1);
        }

        *(v17 + 16) = v10 + 1;
        *(v17 + 8 * v10 + 32) = v12;
        v11 += 16;
        ++v10;
        --v8;
      }

      while (v8);
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    v15 = sub_25E8020D4(v9);

    v16 = *(v15 + 16);

    return v16;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_25E7FDF0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FD148();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
  {
    v12 = 0;
LABEL_13:

    return v12;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v11 = *(v9 + 16);
  if (!v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
  v13 = *(v3 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
  v14 = *(v13 + 16);
  v15 = v13 + 32;
  v16 = 32;
  while (1)
  {
    v17 = 0;
    v18 = *(v9 + v16);
    if ((v18 & 0x8000000000000000) == 0 && v18 < v14)
    {
      v17 = *(v15 + 40 * v18 + 32);
    }

    v19 = __OFADD__(v12, v17);
    v12 += v17;
    if (v19)
    {
      break;
    }

    v16 += 8;
    if (!--v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25E7FE000(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FD148();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
  {

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v10 = *(v9 + 16);
  if (!v10)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_17:

    v24 = v14;

    sub_25E800FE4(&v24);

    v21 = *(v24 + 2);
    if (v21)
    {
      v22 = *(v24 + 4);
      v23 = *&v24[8 * v21 + 24];

      return v22;
    }

    return 0;
  }

  v11 = *&v3[OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16];
  v12 = *(v11 + 16);
  v13 = (v9 + 32);
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v16 = *v13++;
    v15 = v16;
    if ((v16 & 0x8000000000000000) == 0 && v15 < v12)
    {
      break;
    }

LABEL_6:
    if (!--v10)
    {
      goto LABEL_17;
    }
  }

  if (v15 < *(v11 + 16))
  {
    v17 = *(v11 + 32 + 40 * v15 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_25E7FF4AC(0, *(v14 + 2) + 1, 1, v14);
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    v3 = (v19 + 1);
    if (v19 >= v18 >> 1)
    {
      v14 = sub_25E7FF4AC((v18 > 1), v19 + 1, 1, v14);
    }

    *(v14 + 2) = v3;
    *&v14[8 * v19 + 32] = v17;
    goto LABEL_6;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_25E7FE1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E7FCC80();
  if (*(v4 + 16) && (v5 = sub_25E800EB4(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    v8 = *(v7 + 16);

    return v8;
  }

  else
  {

    return 0;
  }
}

char *sub_25E7FE268(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FCC80();
  if (*(v6 + 16) && (v7 = sub_25E800EB4(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);

    v10 = *(v9 + 16);
    if (v10)
    {
      v30 = MEMORY[0x277D84F90];
      result = sub_25E81F20C(0, v10, 0);
      v12 = 0;
      v13 = v30;
      v14 = *(v3 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
      v15 = *(v14 + 16);
      v16 = v14 + 32;
      v17 = (v9 + 40);
      while (v12 < *(v9 + 16))
      {
        v18 = 0;
        v19 = *(v17 - 1);
        if ((v19 & 0x8000000000000000) == 0 && v19 < v15)
        {
          if (v19 >= *(v14 + 16))
          {
            goto LABEL_24;
          }

          v20 = *v17;
          if (*v17 < 0 || (v21 = *(v16 + 40 * v19 + 8), v20 >= *(v21 + 16)))
          {
            v18 = 0;
          }

          else
          {
            v18 = *(v21 + (v20 << 6) + 64);
          }
        }

        v23 = *(v30 + 16);
        v22 = *(v30 + 24);
        if (v23 >= v22 >> 1)
        {
          v29 = v16;
          result = sub_25E81F20C((v22 > 1), v23 + 1, 1);
          v16 = v29;
        }

        ++v12;
        *(v30 + 16) = v23 + 1;
        *(v30 + v23 + 32) = v18;
        v17 += 2;
        if (v10 == v12)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
LABEL_19:
      v24 = *(v13 + 16);
      v25 = (v13 + 32);
      do
      {
        v26 = v24;
        if (!v24)
        {
          break;
        }

        v27 = *v25++;
        --v24;
      }

      while ((v27 & 1) != 0);
      v28 = v26 == 0;

      return v28;
    }
  }

  else
  {

    return 2;
  }

  return result;
}

uint64_t sub_25E7FE458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FCC80();
  if (*(v6 + 16) && (v7 = sub_25E800EB4(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);

    v10 = *(v9 + 16);
    if (v10)
    {
      v29 = MEMORY[0x277D84F90];
      result = sub_25E81F20C(0, v10, 0);
      v12 = 0;
      v13 = *(v3 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
      v14 = v29;
      v15 = (v9 + 40);
      while (v12 < *(v9 + 16))
      {
        v16 = 0;
        v17 = *(v15 - 1);
        if ((v17 & 0x8000000000000000) == 0 && v17 < *(v13 + 16))
        {
          v16 = 0;
          v18 = *v15;
          if ((*v15 & 0x8000000000000000) == 0)
          {
            v19 = *(v13 + 32 + 40 * v17 + 8);
            if (v18 < *(v19 + 16))
            {
              v20 = *(v19 + (v18 << 6) + 65);
              if (v20 == 2)
              {
                v16 = 0;
              }

              else if (v20)
              {
                v21 = sub_25E82A32C();

                v16 = v21 ^ 1;
              }

              else
              {
                result = swift_bridgeObjectRelease_n();
                v16 = 0;
              }
            }
          }
        }

        v23 = *(v29 + 16);
        v22 = *(v29 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_25E81F20C((v22 > 1), v23 + 1, 1);
        }

        ++v12;
        *(v29 + 16) = v23 + 1;
        *(v29 + v23 + 32) = v16 & 1;
        v15 += 2;
        if (v10 == v12)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
LABEL_21:
      v24 = *(v14 + 16);
      v25 = (v14 + 32);
      do
      {
        v26 = v24;
        if (!v24)
        {
          break;
        }

        v27 = *v25++;
        --v24;
      }

      while ((v27 & 1) != 0);
      v28 = v26 == 0;

      return v28;
    }
  }

  else
  {

    return 2;
  }

  return result;
}

uint64_t sub_25E7FE6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
  {

    goto LABEL_6;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);

  if (!v10)
  {
LABEL_6:

    v11 = 12;
    goto LABEL_7;
  }

LABEL_7:
  *a3 = v11;
  return result;
}

uint64_t sub_25E7FE75C()
{
  v1 = sub_25E82A3EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v23 + 1) = &type metadata for ColumnChunk;
  v6 = swift_allocObject();
  *&v22 = v6;
  v7 = v0[1];
  v6[1] = *v0;
  v6[2] = v7;
  v6[3] = v0[2];
  *(v6 + 58) = *(v0 + 42);
  sub_25E8026B4(v0, v25);
  sub_25E82A3CC();
  v8 = sub_25E82A3DC();
  (*(v2 + 8))(v5, v1);
  v19[1] = v8;
  sub_25E82A16C();
  sub_25E82A1FC();
  if (*(&v26 + 1))
  {
    v9 = MEMORY[0x277D84F90];
    do
    {
      v22 = v25[0];
      v23 = v25[1];
      v24 = v26;
      if (*(&v25[0] + 1))
      {
        v20 = 0;
        v21 = 0xE000000000000000;
        MEMORY[0x25F8C0BC0](v22);
        MEMORY[0x25F8C0BC0](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_0(&v23, *(&v24 + 1));
        sub_25E82A31C();
        v10 = v20;
        v11 = v21;
        sub_25E802774(&v22, &qword_27FD073B0, &qword_25E82AD88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25E7FF5B0(0, *(v9 + 2) + 1, 1, v9);
        }

        v13 = *(v9 + 2);
        v12 = *(v9 + 3);
        if (v13 >= v12 >> 1)
        {
          v9 = sub_25E7FF5B0((v12 > 1), v13 + 1, 1, v9);
        }

        *(v9 + 2) = v13 + 1;
        v14 = &v9[16 * v13];
        *(v14 + 4) = v10;
        *(v14 + 5) = v11;
      }

      else
      {
        sub_25E802774(&v22, &qword_27FD073B0, &qword_25E82AD88);
      }

      sub_25E82A1FC();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  strcpy(v25, "ColumnChunk(");
  BYTE13(v25[0]) = 0;
  HIWORD(v25[0]) = -5120;
  *&v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073A0, &qword_25E82AD80);
  sub_25E802710();
  v15 = sub_25E829DBC();
  v17 = v16;

  MEMORY[0x25F8C0BC0](v15, v17);

  MEMORY[0x25F8C0BC0](41, 0xE100000000000000);
  return *&v25[0];
}

uint64_t sub_25E7FEA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25E82A3EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v32 + 1) = &type metadata for FileMetadata;
  v13 = swift_allocObject();
  *&v31 = v13;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;

  sub_25E82A3CC();
  v14 = sub_25E82A3DC();
  (*(v9 + 8))(v12, v8);
  v25[1] = v14;
  sub_25E82A16C();
  sub_25E82A1FC();
  if (*(&v33 + 1))
  {
    v15 = MEMORY[0x277D84F90];
    do
    {
      v28 = v31;
      v29 = v32;
      v30 = v33;
      if (*(&v31 + 1))
      {
        v26 = 0;
        v27 = 0xE000000000000000;
        MEMORY[0x25F8C0BC0](v28);
        MEMORY[0x25F8C0BC0](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_0(&v29, *(&v30 + 1));
        sub_25E82A31C();
        v16 = v26;
        v17 = v27;
        sub_25E802774(&v28, &qword_27FD073B0, &qword_25E82AD88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_25E7FF5B0(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = sub_25E7FF5B0((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        v20 = &v15[16 * v19];
        *(v20 + 4) = v16;
        *(v20 + 5) = v17;
      }

      else
      {
        sub_25E802774(&v28, &qword_27FD073B0, &qword_25E82AD88);
      }

      sub_25E82A1FC();
    }

    while (*(&v33 + 1));
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  strcpy(&v31, "FileMetadata(");
  HIWORD(v31) = -4864;
  *&v28 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073A0, &qword_25E82AD80);
  sub_25E802710();
  v21 = sub_25E829DBC();
  v23 = v22;

  MEMORY[0x25F8C0BC0](v21, v23);

  MEMORY[0x25F8C0BC0](41, 0xE100000000000000);
  return v31;
}

uint64_t sub_25E7FED8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_25E82A3EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v32 + 1) = &type metadata for SchemaElement;
  v13 = swift_allocObject();
  *&v31 = v13;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  sub_25E82A3CC();
  v14 = sub_25E82A3DC();
  (*(v9 + 8))(v12, v8);
  v25[1] = v14;
  sub_25E82A16C();
  sub_25E82A1FC();
  if (*(&v33 + 1))
  {
    v15 = MEMORY[0x277D84F90];
    do
    {
      v28 = v31;
      v29 = v32;
      v30 = v33;
      if (*(&v31 + 1))
      {
        v26 = 0;
        v27 = 0xE000000000000000;
        MEMORY[0x25F8C0BC0](v28);
        MEMORY[0x25F8C0BC0](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_0(&v29, *(&v30 + 1));
        sub_25E82A31C();
        v16 = v26;
        v17 = v27;
        sub_25E802774(&v28, &qword_27FD073B0, &qword_25E82AD88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_25E7FF5B0(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = sub_25E7FF5B0((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        v20 = &v15[16 * v19];
        *(v20 + 4) = v16;
        *(v20 + 5) = v17;
      }

      else
      {
        sub_25E802774(&v28, &qword_27FD073B0, &qword_25E82AD88);
      }

      sub_25E82A1FC();
    }

    while (*(&v33 + 1));
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  strcpy(&v31, "SchemaElement(");
  HIBYTE(v31) = -18;
  *&v28 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073A0, &qword_25E82AD80);
  sub_25E802710();
  v21 = sub_25E829DBC();
  v23 = v22;

  MEMORY[0x25F8C0BC0](v21, v23);

  MEMORY[0x25F8C0BC0](41, 0xE100000000000000);
  return v31;
}

uint64_t sub_25E7FF0A0()
{
  v1 = sub_25E82A3EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v23 + 1) = &type metadata for RowGroup;
  v6 = swift_allocObject();
  *&v22 = v6;
  v7 = *(v0 + 16);
  *(v6 + 16) = *v0;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 32);
  sub_25E8028A8(v0, v25);
  sub_25E82A3CC();
  v8 = sub_25E82A3DC();
  (*(v2 + 8))(v5, v1);
  v19[1] = v8;
  sub_25E82A16C();
  sub_25E82A1FC();
  if (*(&v26 + 1))
  {
    v9 = MEMORY[0x277D84F90];
    do
    {
      v22 = v25[0];
      v23 = v25[1];
      v24 = v26;
      if (*(&v25[0] + 1))
      {
        v20 = 0;
        v21 = 0xE000000000000000;
        MEMORY[0x25F8C0BC0](v22);
        MEMORY[0x25F8C0BC0](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_0(&v23, *(&v24 + 1));
        sub_25E82A31C();
        v10 = v20;
        v11 = v21;
        sub_25E802774(&v22, &qword_27FD073B0, &qword_25E82AD88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25E7FF5B0(0, *(v9 + 2) + 1, 1, v9);
        }

        v13 = *(v9 + 2);
        v12 = *(v9 + 3);
        if (v13 >= v12 >> 1)
        {
          v9 = sub_25E7FF5B0((v12 > 1), v13 + 1, 1, v9);
        }

        *(v9 + 2) = v13 + 1;
        v14 = &v9[16 * v13];
        *(v14 + 4) = v10;
        *(v14 + 5) = v11;
      }

      else
      {
        sub_25E802774(&v22, &qword_27FD073B0, &qword_25E82AD88);
      }

      sub_25E82A1FC();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  *&v25[0] = 0x70756F7247776F52;
  *(&v25[0] + 1) = 0xE900000000000028;
  *&v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073A0, &qword_25E82AD80);
  sub_25E802710();
  v15 = sub_25E829DBC();
  v17 = v16;

  MEMORY[0x25F8C0BC0](v15, v17);

  MEMORY[0x25F8C0BC0](41, 0xE100000000000000);
  return *&v25[0];
}

uint64_t sub_25E7FF3A4@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25E829CEC();
  if ((result & 0x100000000) != 0)
  {
    v3 = result;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v4 = v3;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_25E7FF42C@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  v4 = *(v1 + 24) | (*(v1 + 26) << 16);
  v5 = *(v1 + 27);
  return sub_25E7FF3A4(a1);
}

uint64_t type metadata accessor for PlanksReader()
{
  result = qword_27FD07390;
  if (!qword_27FD07390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_25E7FF4AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25E7FF5B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073B8, &unk_25E82C2E0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25E7FF6BC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_25E7FF7B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073C8, &qword_25E82AD98);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25E7FF8C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073D0, &qword_25E82ADA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

char *sub_25E7FF9E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073C0, &qword_25E82AD90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25E7FFAF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E7FFC5C(v11, 0, 0, 1, a1, a2);
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
    sub_25E80299C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

unint64_t sub_25E7FFC08()
{
  result = qword_27FD07378;
  if (!qword_27FD07378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07378);
  }

  return result;
}

unint64_t sub_25E7FFC5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25E7FFD68(a5, a6);
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
    result = sub_25E82A11C();
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

uint64_t sub_25E7FFD68(uint64_t a1, unint64_t a2)
{
  v4 = sub_25E7FFDB4(a1, a2);
  sub_25E7FFEE4(&unk_28707E2F0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25E7FFDB4(uint64_t a1, unint64_t a2)
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

  v6 = sub_25E7FFFD0(v5, 0);
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

  result = sub_25E82A11C();
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
        v10 = sub_25E829DFC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25E7FFFD0(v10, 0);
        result = sub_25E82A0EC();
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

uint64_t sub_25E7FFEE4(uint64_t result)
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

  result = sub_25E800044(result, v12, 1, v3);
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

void *sub_25E7FFFD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F8, &qword_25E82ADC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25E800044(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F8, &qword_25E82ADC8);
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

uint64_t sub_25E800138(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25E82A39C();
  sub_25E829DDC();
  v9 = sub_25E82A3BC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25E82A32C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25E8007EC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25E800288(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_25E82A38C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_25E80096C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25E800368(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F0, &qword_25E82ADC0);
  result = sub_25E82A0CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_25E82A39C();
      sub_25E829DDC();
      result = sub_25E82A3BC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25E8005C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073E0, &qword_25E82ADB0);
  result = sub_25E82A0CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_25E82A38C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25E8007EC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25E800368(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25E81231C();
      goto LABEL_16;
    }

    sub_25E800A8C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25E82A39C();
  sub_25E829DDC();
  result = sub_25E82A3BC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25E82A32C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25E82A36C();
  __break(1u);
  return result;
}

uint64_t sub_25E80096C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25E8005C8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25E812478();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25E800CC4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_25E82A38C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25E82A36C();
  __break(1u);
  return result;
}

uint64_t sub_25E800A8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F0, &qword_25E82ADC0);
  result = sub_25E82A0CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_25E82A39C();

      sub_25E829DDC();
      result = sub_25E82A3BC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_25E800CC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073E0, &qword_25E82ADB0);
  result = sub_25E82A0CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_25E82A38C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

unint64_t sub_25E800EB4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25E82A39C();
  sub_25E829DDC();
  v6 = sub_25E82A3BC();

  return sub_25E800F2C(a1, a2, v6);
}

unint64_t sub_25E800F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25E82A32C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_25E800FE4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25E801A90(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25E82A2DC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_25E829EEC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25E801118(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25E801118(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25E801878(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_25E801684((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_25E7FF6BC(0, *(v8 + 16) + 1, 1, v8, &qword_27FD073D8, &qword_25E82ADA8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_25E7FF6BC((v29 > 1), v5 + 1, 1, v8, &qword_27FD073D8, &qword_25E82ADA8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_25E801684((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_25E801684(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_25E80188C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073D8, &qword_25E82ADA8);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_25E801990(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25E801AA4(uint64_t a1, char a2)
{
  v5 = swift_slowAlloc();
  if (a2)
  {
    v6 = sub_25E829D1C();
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = sub_25E829D1C();
    if (v8)
    {
LABEL_7:
      v10 = v6;
      sub_25E7FFC08();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v11 = v10;
      goto LABEL_8;
    }
  }

  v6 = sub_25E829D0C();
  if (!v2)
  {
    if ((v9 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F8, &qword_25E82ADC8);
      a1 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(a1);
      *(a1 + 16) = 4;
      *(a1 + 24) = 2 * v13 - 64;
      *(a1 + 32) = *v5;
      MEMORY[0x25F8C1620](v5, -1, -1);
      return a1;
    }

    goto LABEL_7;
  }

LABEL_8:
  MEMORY[0x25F8C1620](v5, -1, -1);
  return a1;
}

uint64_t sub_25E801C34()
{
  v2 = swift_slowAlloc();
  v3 = sub_25E829D1C();
  if (v4)
  {
    goto LABEL_2;
  }

  v3 = sub_25E829D0C();
  if (v1)
  {
    goto LABEL_4;
  }

  if (v6)
  {
LABEL_2:
    v0 = v3;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v5 = v0;
  }

  else
  {
    v8 = *v2;
    v0 = v8;
    if (v8 >> 25)
    {
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v9 = sub_25E829CDC();
      __swift_project_value_buffer(v9, qword_27FD0A4B0);
      v10 = sub_25E829CBC();
      v11 = sub_25E82A02C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = v8;
        _os_log_impl(&dword_25E7F6000, v10, v11, "Invalid metadataSize: %ld", v12, 0xCu);
        MEMORY[0x25F8C1620](v12, -1, -1);
      }

      v0 = 0;
    }
  }

LABEL_4:
  MEMORY[0x25F8C1620](v2, -1, -1);
  return v0;
}

unint64_t sub_25E801E34()
{
  result = qword_27FD07380;
  if (!qword_27FD07380)
  {
    sub_25E829D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07380);
  }

  return result;
}

uint64_t sub_25E801E8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_25E801EDC()
{
  result = qword_27FD07388;
  if (!qword_27FD07388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07388);
  }

  return result;
}

uint64_t sub_25E801F30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25E801F84(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25E80203C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8C0D70](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25E800138(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25E8020D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8C0D70](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25E800288(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_25E802148@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25E7FC83C();
  *a2 = result;
  return result;
}

uint64_t sub_25E802180@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25E7FC954();
  *a2 = result;
  return result;
}

uint64_t sub_25E8021B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25E7FCC80();
  *a2 = result;
  return result;
}

uint64_t sub_25E8021F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25E7FD148();
  *a2 = result;
  return result;
}

uint64_t keypath_setTm(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  *(*a2 + *a5) = *a1;
}

uint64_t sub_25E802278()
{
  result = sub_25E829D6C();
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

uint64_t sub_25E80267C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

unint64_t sub_25E802710()
{
  result = qword_27FD073A8;
  if (!qword_27FD073A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD073A0, &qword_25E82AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD073A8);
  }

  return result;
}

uint64_t sub_25E802774(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E802870()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25E802904()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25E802944(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E802954()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25E80299C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ScalarType.description.getter()
{
  v1 = v0;
  v2 = sub_25E829B8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D2CC80])
  {
    return 947154537;
  }

  if (v7 == *MEMORY[0x277D2CC88])
  {
    return 0x3631746E69;
  }

  if (v7 == *MEMORY[0x277D2CC90])
  {
    return 0x3233746E69;
  }

  if (v7 == *MEMORY[0x277D2CC98])
  {
    return 0x3436746E69;
  }

  if (v7 == *MEMORY[0x277D2CCA0])
  {
    return 0x38746E6975;
  }

  if (v7 == *MEMORY[0x277D2CCA8])
  {
    return 0x3631746E6975;
  }

  if (v7 == *MEMORY[0x277D2CCB0])
  {
    return 0x3233746E6975;
  }

  if (v7 == *MEMORY[0x277D2CCB8])
  {
    return 0x3436746E6975;
  }

  if (v7 == *MEMORY[0x277D2CCC0])
  {
    return 0x363174616F6C66;
  }

  if (v7 == *MEMORY[0x277D2CCD8])
  {
    return 0x363174616F6C6662;
  }

  if (v7 == *MEMORY[0x277D2CCC8])
  {
    return 0x323374616F6C66;
  }

  if (v7 == *MEMORY[0x277D2CCD0])
  {
    return 0x343674616F6C66;
  }

  if (v7 == *MEMORY[0x277D2CC78])
  {
    return 1819242338;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6E776F6E6B6E75;
}

uint64_t ScalarType.init(fieldType:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E829B8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, **(&unk_279A39B28 + *a1), v4);
  (*(v5 + 32))(a2, v8, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t FieldType.init(scalarType:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25E829B8C();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x277D2CC80])
  {
    v7 = 0;
  }

  else if (result == *MEMORY[0x277D2CC88])
  {
    v7 = 1;
  }

  else if (result == *MEMORY[0x277D2CC90])
  {
    v7 = 2;
  }

  else if (result == *MEMORY[0x277D2CC98])
  {
    v7 = 3;
  }

  else if (result == *MEMORY[0x277D2CCA0])
  {
    v7 = 4;
  }

  else if (result == *MEMORY[0x277D2CCA8])
  {
    v7 = 5;
  }

  else if (result == *MEMORY[0x277D2CCB0])
  {
    v7 = 6;
  }

  else if (result == *MEMORY[0x277D2CCB8])
  {
    v7 = 7;
  }

  else if (result == *MEMORY[0x277D2CCC0])
  {
    v7 = 8;
  }

  else if (result == *MEMORY[0x277D2CCC8])
  {
    v7 = 9;
  }

  else if (result == *MEMORY[0x277D2CCD0])
  {
    v7 = 10;
  }

  else if (result == *MEMORY[0x277D2CC78])
  {
    v7 = 11;
  }

  else
  {
    result = (*(v5 + 8))(a1, v4);
    v7 = 12;
  }

  *a2 = v7;
  return result;
}

uint64_t Array<A>.median()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = sub_25E829F1C();
  if (v14 < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v21 = *&a1;
    sub_25E829F4C();
    swift_getWitnessTable();
    v15 = *(a3 + 16);
    v16 = *(*(v15 + 24) + 8);
    sub_25E829E5C();
    sub_25E829F5C();
    if (v14)
    {

      sub_25E8032B4();
      sub_25E829D8C();
      *&result = v21;
    }

    else
    {
      sub_25E829F5C();

      v17 = *(*(*(v15 + 16) + 8) + 8);
      sub_25E82A1AC();
      v18 = *(v6 + 8);
      v18(v10, a2);
      v18(v13, a2);
      sub_25E8032B4();
      sub_25E829D8C();
      *&result = v21 * 0.5;
    }
  }

  return result;
}

unint64_t sub_25E8032B4()
{
  result = qword_27FD07400;
  if (!qword_27FD07400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07400);
  }

  return result;
}

uint64_t Array<A>.mean()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v3 = sub_25E829F1C();
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 0.0;
  v6 = 1;
  while (1)
  {
    sub_25E829F5C();
    sub_25E8032B4();
    sub_25E829D8C();
    v5 = v5 + (v9 - v5) / v6;
    if (!v4)
    {
      break;
    }

    --v4;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      return *&v5;
    }
  }

  return *&v5;
}

uint64_t Array<A>.stddev()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = sub_25E829F1C();
  if (v6 < 2)
  {
    return 0;
  }

  v14 = v6;
  result = Array<A>.mean()(a1, a2);
  if ((v8 & 1) == 0)
  {
    v9 = *&result;
    if (sub_25E829F1C())
    {
      v10 = 0;
      v11 = 0.0;
      while (1)
      {
        v12 = sub_25E829F0C();
        sub_25E829E9C();
        if (v12)
        {
          (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, a2);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          result = sub_25E82A10C();
          if (v5 != 8)
          {
            __break(1u);
            return result;
          }

          v15 = *&result;
          (*(v4 + 16))(&v14 - 2, &v15, a2);
          swift_unknownObjectRelease();
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        sub_25E8032B4();
        sub_25E829D8C();
        v11 = v11 + (v15 - v9) * (v15 - v9);
        ++v10;
        if (v13 == sub_25E829F1C())
        {
          return sqrt(v11 / v14);
        }
      }
    }

    v11 = 0.0;
    return sqrt(v11 / v14);
  }

  return result;
}

uint64_t PlanksWriter.writeBatch(_:label:as:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), unint64_t a3, uint64_t a4)
{
  v195 = a3;
  v201 = a2;
  v192 = sub_25E82A30C();
  v191 = *(v192 - 8);
  v6 = *(v191 + 64);
  MEMORY[0x28223BE20](v192);
  v190 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v183 - v10;
  v12 = sub_25E829B8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v188 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v187 = &v183 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v199 = &v183 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v183 - v21;
  v198 = sub_25E829B9C();
  v197 = *(v198 - 8);
  v23 = *(v197 + 64);
  MEMORY[0x28223BE20](v198);
  v196 = &v183 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_25E829CAC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v189 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v183 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v183 - v33;
  if (sub_25E829C5C() != 2)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v38 = sub_25E829CDC();
    __swift_project_value_buffer(v38, qword_27FD0A4B0);
    v39 = v26;
    v40 = *(v26 + 16);
    v41 = v25;
    v40(v34, a1, v25);
    v42 = sub_25E829CBC();
    v43 = sub_25E82A02C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v200 = v41;
      v45 = v44;
      v46 = swift_slowAlloc();
      v204 = v46;
      *v45 = 136315138;
      v47 = v196;
      sub_25E829C7C();
      sub_25E807644(&qword_27FD07410, MEMORY[0x277D2CCF0]);
      v48 = v198;
      v49 = sub_25E82A2EC();
      v51 = v50;
      (*(v197 + 8))(v47, v48);
      (*(v39 + 8))(v34, v200);
      v52 = sub_25E7FFAF0(v49, v51, &v204);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_25E7F6000, v42, v43, "Invalid tensor shape: %s. Only 2D tensors supported.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x25F8C1620](v46, -1, -1);
      MEMORY[0x25F8C1620](v45, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v34, v41);
    }

    return 0;
  }

  v193 = v26;
  (*(v26 + 16))(v32, a1, v25);
  sub_25E8072C4(a4, v11);
  v35 = (*(v13 + 48))(v11, 1, v12);
  v200 = v25;
  v36 = v12;
  v186 = v13;
  if (v35 == 1)
  {
    sub_25E807334(v11);
    v37 = v199;
  }

  else
  {
    v53 = v22;
    (*(v13 + 32))(v22, v11, v36);
    v37 = v199;
    sub_25E829BFC();
    sub_25E807644(&qword_27FD07420, MEMORY[0x277D2CCE0]);
    v54 = sub_25E829DCC();
    v56 = v13 + 8;
    v55 = *(v13 + 8);
    v55(v37, v36);
    if (v54)
    {
      v12 = v36;
      v55(v22, v36);
    }

    else
    {
      sub_25E829BFC();
      v57 = sub_25E829B7C();
      v55(v37, v36);
      if ((v57 & 1) == 0)
      {
        v201 = v55;
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v77 = sub_25E829CDC();
        __swift_project_value_buffer(v77, qword_27FD0A4B0);
        v78 = v187;
        (*(v186 + 16))(v187, v53, v36);
        v79 = sub_25E829CBC();
        v80 = sub_25E82A02C();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v198 = v53;
          v82 = v37;
          v83 = v81;
          v84 = swift_slowAlloc();
          v85 = v36;
          v183 = v36;
          v197 = v84;
          *v202 = v84;
          *v83 = 136315394;
          v86 = ScalarType.description.getter();
          v87 = v32;
          v89 = v88;
          v90 = v85;
          v91 = v201;
          v201(v78, v90);
          v92 = sub_25E7FFAF0(v86, v89, v202);

          *(v83 + 4) = v92;
          *(v83 + 12) = 2080;
          swift_beginAccess();
          sub_25E829BFC();
          v93 = ScalarType.description.getter();
          v95 = v94;
          v96 = v82;
          v97 = v183;
          v91(v96, v183);
          v98 = sub_25E7FFAF0(v93, v95, v202);

          *(v83 + 14) = v98;
          _os_log_impl(&dword_25E7F6000, v79, v80, "Invalid requested type %s for tensor of type: %s", v83, 0x16u);
          v99 = v197;
          swift_arrayDestroy();
          MEMORY[0x25F8C1620](v99, -1, -1);
          MEMORY[0x25F8C1620](v83, -1, -1);

          v91(v198, v97);
          (*(v193 + 8))(v87, v200);
          return 0;
        }

        v181 = v78;
        v182 = v201;
        v201(v181, v36);
        v182(v53, v36);
LABEL_28:
        (*(v193 + 8))(v32, v200);
        return 0;
      }

      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v58 = sub_25E829CDC();
      __swift_project_value_buffer(v58, qword_27FD0A4B0);
      v59 = v188;
      (*(v186 + 16))(v188, v22, v36);
      v60 = sub_25E829CBC();
      v61 = sub_25E82A01C();
      v62 = os_log_type_enabled(v60, v61);
      v185 = v56;
      if (v62)
      {
        v63 = swift_slowAlloc();
        v184 = v61;
        v64 = v32;
        v65 = v63;
        v187 = swift_slowAlloc();
        v204 = v187;
        *v65 = 136315394;
        swift_beginAccess();
        sub_25E829BFC();
        v66 = ScalarType.description.getter();
        v67 = v36;
        v69 = v68;
        v55(v199, v67);
        v70 = sub_25E7FFAF0(v66, v69, &v204);

        *(v65 + 4) = v70;
        *(v65 + 12) = 2080;
        v71 = ScalarType.description.getter();
        v73 = v72;
        v55(v59, v67);
        v74 = sub_25E7FFAF0(v71, v73, &v204);
        v36 = v67;
        v37 = v199;

        *(v65 + 14) = v74;
        _os_log_impl(&dword_25E7F6000, v60, v184, "Casting tensor of type %s to type %s.", v65, 0x16u);
        v75 = v187;
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v75, -1, -1);
        v76 = v65;
        v32 = v64;
        MEMORY[0x25F8C1620](v76, -1, -1);
      }

      else
      {

        v55(v59, v36);
      }

      swift_beginAccess();
      v100 = v191;
      v101 = v190;
      v102 = v192;
      (*(v191 + 104))(v190, *MEMORY[0x277D84660], v192);
      v103 = v189;
      sub_25E829C4C();
      (*(v100 + 8))(v101, v102);
      v104 = v53;
      v12 = v36;
      v55(v104, v36);
      swift_beginAccess();
      (*(v193 + 40))(v32, v103, v200);
    }
  }

  swift_beginAccess();
  sub_25E829BFC();
  FieldType.init(scalarType:)(v37, &v204);
  v105 = v204;
  v106 = v201;
  if (v204 == 12)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v107 = sub_25E829CDC();
    __swift_project_value_buffer(v107, qword_27FD0A4B0);
    v108 = sub_25E829CBC();
    v109 = sub_25E82A02C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = v37;
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v204 = v112;
      *v111 = 136315138;
      sub_25E829BFC();
      v113 = ScalarType.description.getter();
      v115 = v114;
      (*(v186 + 8))(v110, v12);
      v116 = sub_25E7FFAF0(v113, v115, &v204);

      *(v111 + 4) = v116;
      _os_log_impl(&dword_25E7F6000, v108, v109, "Invalid FieldType for tensor: %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x25F8C1620](v112, -1, -1);
      MEMORY[0x25F8C1620](v111, -1, -1);
    }

LABEL_27:

    goto LABEL_28;
  }

  v118 = v196;
  sub_25E829C7C();
  v192 = sub_25E829BBC();
  v119 = *(v197 + 8);
  v120 = v198;
  v119(v118, v198);
  sub_25E829C7C();
  v199 = sub_25E829BBC();
  v119(v118, v120);
  v121 = v195;

  v122 = v194;
  v123 = sub_25E816820();
  if (*(v123 + 16) && (v124 = sub_25E800EB4(v106, v121), (v125 & 1) != 0))
  {
    v126 = *(v123 + 56) + 32 * v124;
    v128 = *v126;
    v127 = *(v126 + 8);
    v129 = *(v126 + 16);
    v130 = *(v126 + 24);

    v204 = v128;
    *&v205 = v127;
    BYTE8(v205) = v129;
    v206 = v130;
    *v202 = v106;
    *&v202[8] = v121;
    v202[16] = v105;
    *&v202[24] = v199;
    if (!_s6Planks13SchemaElementV2eeoiySbAC_ACtFZ_0(&v204, v202))
    {
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v166 = sub_25E829CDC();
      __swift_project_value_buffer(v166, qword_27FD0A4B0);
      swift_bridgeObjectRetain_n();

      v108 = sub_25E829CBC();
      v167 = sub_25E82A02C();

      swift_bridgeObjectRelease_n();
      if (os_log_type_enabled(v108, v167))
      {
        v168 = swift_slowAlloc();
        LODWORD(v197) = v167;
        v169 = v106;
        v170 = v168;
        v171 = swift_slowAlloc();
        v198 = v32;
        v172 = v171;
        v204 = v171;
        *v170 = 136315650;
        *(v170 + 4) = sub_25E7FFAF0(v169, v121, &v204);
        *(v170 + 12) = 2080;
        v173 = sub_25E7FED8C(v128, v127, v129, v130);
        v175 = v174;

        v176 = sub_25E7FFAF0(v173, v175, &v204);

        *(v170 + 14) = v176;
        *(v170 + 22) = 2080;
        v177 = sub_25E7FED8C(v169, v121, v105, v199);
        v179 = v178;

        v180 = sub_25E7FFAF0(v177, v179, &v204);

        *(v170 + 24) = v180;
        _os_log_impl(&dword_25E7F6000, v108, v197, "Invalid batch label: %s with existing schema: %s vs %s", v170, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v172, -1, -1);
        MEMORY[0x25F8C1620](v170, -1, -1);

        (*(v193 + 8))(v198, v200);
        return 0;
      }

      goto LABEL_27;
    }

    LODWORD(v198) = v105;

    v122 = v194;
  }

  else
  {
    LODWORD(v198) = v105;
  }

  MEMORY[0x28223BE20](v131);
  *(&v183 - 4) = v122;
  *(&v183 - 3) = v106;
  *(&v183 - 2) = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07418, &qword_25E82AE08);
  v132 = v32;
  sub_25E829C2C();
  v134 = v204;
  v133 = v205;
  v135 = v122;
  v136 = v121;
  v138 = *(&v205 + 1);
  v137 = v206;
  *v202 = *v207;
  *&v202[10] = *&v207[10];
  if (!v205)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v153 = sub_25E829CDC();
    __swift_project_value_buffer(v153, qword_27FD0A4B0);

    v154 = sub_25E829CBC();
    v155 = sub_25E82A02C();

    v156 = os_log_type_enabled(v154, v155);
    v157 = v193;
    if (v156)
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v204 = v159;
      *v158 = 136315138;
      *(v158 + 4) = sub_25E7FFAF0(v201, v136, &v204);
      _os_log_impl(&dword_25E7F6000, v154, v155, "Failed at writing batch: %s", v158, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v159);
      MEMORY[0x25F8C1620](v159, -1, -1);
      MEMORY[0x25F8C1620](v158, -1, -1);
    }

    (*(v157 + 8))(v132, v200);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073C0, &qword_25E82AD90);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_25E82A940;
  *(v139 + 32) = v134;
  *(v139 + 40) = v133;
  *(v139 + 48) = v138;
  *(v139 + 56) = v137;
  *(v139 + 64) = *v202;
  *(v139 + 74) = *&v202[10];
  v140 = v135 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v141 = *(v140 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v140 + 16) = v141;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v141 = sub_25E7FF8C4(0, *(v141 + 2) + 1, 1, v141);
    *(v140 + 16) = v141;
  }

  v143 = v198;
  v145 = *(v141 + 2);
  v144 = *(v141 + 3);
  if (v145 >= v144 >> 1)
  {
    v141 = sub_25E7FF8C4((v144 > 1), v145 + 1, 1, v141);
  }

  *(v141 + 2) = v145 + 1;
  v146 = &v141[40 * v145];
  v146[32] = 1;
  *(v146 + 5) = v139;
  *(v146 + 6) = v138;
  v147 = v192;
  *(v146 + 7) = v137;
  *(v146 + 8) = v147;
  *(v140 + 16) = v141;
  swift_endAccess();
  v148 = *v140;
  v149 = *(v140 + 24);
  v205 = *(v140 + 8);
  v204 = v148;
  v206 = v149;
  v150 = FileMetadata.fieldNames.getter();
  v151 = v195;
  v203[0] = v201;
  v203[1] = v195;
  MEMORY[0x28223BE20](v150);
  *(&v183 - 2) = v203;
  v152 = sub_25E8073B0(sub_25E8074F0, (&v183 - 4), v150);

  if (v152)
  {

    (*(v193 + 8))(v132, v200);
    return 1;
  }

  else
  {
    swift_beginAccess();
    v160 = *(v140 + 8);
    v161 = swift_isUniquelyReferenced_nonNull_native();
    *(v140 + 8) = v160;
    v162 = v193;
    if ((v161 & 1) == 0)
    {
      v160 = sub_25E7FF7B8(0, *(v160 + 2) + 1, 1, v160);
      *(v140 + 8) = v160;
    }

    v164 = *(v160 + 2);
    v163 = *(v160 + 3);
    if (v164 >= v163 >> 1)
    {
      v160 = sub_25E7FF7B8((v163 > 1), v164 + 1, 1, v160);
    }

    *(v160 + 2) = v164 + 1;
    v165 = &v160[32 * v164];
    *(v165 + 4) = v201;
    *(v165 + 5) = v151;
    v165[48] = v143;
    *(v165 + 7) = v199;
    *(v140 + 8) = v160;
    swift_endAccess();
    (*(v162 + 8))(v132, v200);
    return 1;
  }
}

uint64_t PlanksWriter.writeTensor(_:label:as:batchSize:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v143 = a5;
  v149 = a4;
  v141 = sub_25E82A30C();
  v140 = *(v141 - 8);
  v9 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v134[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v154 = &v134[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v134[-v15];
  v156 = sub_25E829B8C();
  v144 = *(v156 - 1);
  v17 = *(v144 + 64);
  v18 = MEMORY[0x28223BE20](v156);
  v137 = &v134[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v136 = &v134[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v134[-v23];
  MEMORY[0x28223BE20](v22);
  v142 = &v134[-v25];
  v146 = sub_25E829B9C();
  v148 = *(v146 - 8);
  v26 = *(v148 + 64);
  MEMORY[0x28223BE20](v146);
  v145 = &v134[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_25E829CAC();
  *&v147 = *(v28 - 8);
  v29 = *(v147 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v155 = &v134[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v138 = &v134[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v134[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v134[-v37];
  if (sub_25E829C5C() != 2)
  {
    if (qword_27FD072A0 != -1)
    {
LABEL_61:
      swift_once();
    }

    v52 = sub_25E829CDC();
    __swift_project_value_buffer(v52, qword_27FD0A4B0);
    v53 = v147;
    (*(v147 + 16))(v38, a1, v28);
    v45 = sub_25E829CBC();
    v54 = sub_25E82A02C();
    if (!os_log_type_enabled(v45, v54))
    {

      (*(v53 + 8))(v38, v28);
      return 0;
    }

    v55 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v158 = v156;
    *v55 = 136315138;
    v56 = v145;
    sub_25E829C7C();
    sub_25E807644(&qword_27FD07410, MEMORY[0x277D2CCF0]);
    v57 = v146;
    v58 = sub_25E82A2EC();
    v60 = v59;
    (*(v148 + 8))(v56, v57);
    (*(v53 + 8))(v38, v28);
    v61 = sub_25E7FFAF0(v58, v60, &v158);

    *(v55 + 4) = v61;
    _os_log_impl(&dword_25E7F6000, v45, v54, "Invalid tensor shape: %s. Only 2D tensors supported.", v55, 0xCu);
    v62 = v156;
    __swift_destroy_boxed_opaque_existential_0(v156);
    MEMORY[0x25F8C1620](v62, -1, -1);
    v51 = v55;
    goto LABEL_10;
  }

  v153 = v36;
  v150 = v5;
  v39 = v5 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v40 = *(v39 + 24);
  v158 = *v39;
  v159 = *(v39 + 8);
  v160 = v40;
  v41 = FileMetadata.fieldNames.getter();
  v151 = a2;
  v157[0] = a2;
  v157[1] = a3;
  v152 = a3;
  MEMORY[0x28223BE20](v41);
  *&v134[-16] = v157;
  v42 = sub_25E8073B0(sub_25E807748, &v134[-32], v41);

  if (v42)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v43 = sub_25E829CDC();
    __swift_project_value_buffer(v43, qword_27FD0A4B0);
    v44 = v152;

    v45 = sub_25E829CBC();
    v46 = sub_25E82A02C();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v151;
    if (!v47)
    {
      goto LABEL_11;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v158 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_25E7FFAF0(v48, v44, &v158);
    _os_log_impl(&dword_25E7F6000, v45, v46, "Invalid tensor label: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x25F8C1620](v50, -1, -1);
    v51 = v49;
LABEL_10:
    MEMORY[0x25F8C1620](v51, -1, -1);
LABEL_11:

    return 0;
  }

  v63 = v153;
  (*(v147 + 16))(v153, a1, v28);
  sub_25E8072C4(v149, v16);
  v64 = v144;
  v65 = v156;
  if ((*(v144 + 48))(v16, 1, v156) == 1)
  {
    sub_25E807334(v16);
  }

  else
  {
    v66 = v142;
    (*(v64 + 32))(v142, v16, v65);
    v67 = v24;
    sub_25E829BFC();
    sub_25E807644(&qword_27FD07420, MEMORY[0x277D2CCE0]);
    v68 = sub_25E829DCC();
    v69 = v156;
    v70 = v68;
    v71 = *(v64 + 8);
    v71(v24, v156);
    if (v70)
    {
      v71(v66, v69);
    }

    else
    {
      sub_25E829BFC();
      v72 = sub_25E829B7C();
      v71(v24, v156);
      if ((v72 & 1) == 0)
      {
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v92 = sub_25E829CDC();
        __swift_project_value_buffer(v92, qword_27FD0A4B0);
        v93 = v136;
        v94 = v156;
        (*(v64 + 16))(v136, v66, v156);
        v95 = sub_25E829CBC();
        v96 = sub_25E82A02C();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v157[0] = v155;
          *v97 = 136315394;
          LODWORD(v154) = v96;
          v98 = ScalarType.description.getter();
          v100 = v99;
          v71(v93, v94);
          v101 = sub_25E7FFAF0(v98, v100, v157);

          *(v97 + 4) = v101;
          *(v97 + 12) = 2080;
          v102 = v153;
          swift_beginAccess();
          sub_25E829BFC();
          v103 = ScalarType.description.getter();
          v105 = v104;
          v71(v67, v94);
          v106 = sub_25E7FFAF0(v103, v105, v157);

          *(v97 + 14) = v106;
          _os_log_impl(&dword_25E7F6000, v95, v154, "Invalid requested type %s for tensor of type: %s", v97, 0x16u);
          v107 = v155;
          swift_arrayDestroy();
          MEMORY[0x25F8C1620](v107, -1, -1);
          MEMORY[0x25F8C1620](v97, -1, -1);

          v71(v142, v94);
          (*(v147 + 8))(v102, v28);
        }

        else
        {

          v71(v93, v94);
          v71(v66, v94);
          (*(v147 + 8))(v63, v28);
        }

        return 0;
      }

      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v73 = sub_25E829CDC();
      __swift_project_value_buffer(v73, qword_27FD0A4B0);
      v74 = *(v64 + 16);
      v75 = v137;
      v76 = v156;
      v74(v137, v66, v156);
      v77 = sub_25E829CBC();
      v78 = sub_25E82A01C();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v136 = v77;
        v80 = v79;
        v149 = swift_slowAlloc();
        v158 = v149;
        *v80 = 136315394;
        swift_beginAccess();
        v135 = v78;
        sub_25E829BFC();
        v81 = ScalarType.description.getter();
        v82 = v67;
        v84 = v83;
        v71(v82, v76);
        v85 = sub_25E7FFAF0(v81, v84, &v158);

        *(v80 + 4) = v85;
        *(v80 + 12) = 2080;
        v86 = ScalarType.description.getter();
        v88 = v87;
        v71(v75, v76);
        v89 = sub_25E7FFAF0(v86, v88, &v158);

        *(v80 + 14) = v89;
        v90 = v136;
        _os_log_impl(&dword_25E7F6000, v136, v135, "Casting tensor of type %s to type %s.", v80, 0x16u);
        v91 = v149;
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v91, -1, -1);
        MEMORY[0x25F8C1620](v80, -1, -1);
      }

      else
      {

        v71(v75, v76);
      }

      swift_beginAccess();
      v108 = v140;
      v109 = v139;
      v110 = v141;
      (*(v140 + 104))(v139, *MEMORY[0x277D84660], v141);
      v24 = v138;
      sub_25E829C4C();
      (*(v108 + 8))(v109, v110);
      v71(v66, v156);
      swift_beginAccess();
      (*(v147 + 40))(v63, v24, v28);
    }
  }

  v149 = v28;
  swift_beginAccess();
  v111 = v145;
  sub_25E829C7C();
  v112 = sub_25E829BBC();
  v114 = (v148 + 8);
  v113 = *(v148 + 8);
  v115 = v146;
  v113(v111, v146);
  sub_25E829C7C();
  v38 = sub_25E829BBC();
  v113(v111, v115);
  if (v112 >= v143)
  {
    a1 = v143;
  }

  else
  {
    a1 = v112;
  }

  if (a1)
  {
    LODWORD(v148) = 0;
    v24 = 0;
    v116 = (v144 + 56);
    v114 = (v147 + 8);
    v147 = xmmword_25E82A950;
    v117 = v155;
    while (1)
    {
      v118 = v112 >= v24;
      if (a1 > 0)
      {
        v118 = v24 >= v112;
      }

      if (v118)
      {
        if ((v24 != v112) | v148 & 1)
        {
          goto LABEL_51;
        }

        v119 = (v24 + a1);
        if (__OFADD__(v24, a1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        LODWORD(v148) = 1;
        v28 = v24;
      }

      else
      {
        v119 = (v24 + a1);
        if (__OFADD__(v24, a1))
        {
          v28 = ((v24 + a1) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v28 = v24 + a1;
        }

        if (__OFADD__(v24, a1))
        {
          goto LABEL_58;
        }
      }

      if (v112 >= v119)
      {
        v120 = v119;
      }

      else
      {
        v120 = v112;
      }

      if (v24 == v120)
      {
LABEL_51:
        (*v114)(v153, v149);
        return 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073D8, &qword_25E82ADA8);
      v121 = swift_allocObject();
      *(v121 + 16) = v147;
      if (v120 < v24)
      {
        goto LABEL_59;
      }

      *(v121 + 32) = v24;
      *(v121 + 40) = v120;
      if (v38 < 0)
      {
        goto LABEL_60;
      }

      *(v121 + 48) = 0;
      *(v121 + 56) = v38;
      v157[3] = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07428, &qword_25E82AE10);
      sub_25E8076E4();
      sub_25E829C8C();

      v122 = v154;
      (*v116)(v154, 1, 1, v156);
      v123 = PlanksWriter.writeBatch(_:label:as:)(v117, v151, v152, v122);
      sub_25E807334(v122);
      if ((v123 & 1) == 0)
      {
        break;
      }

      (*v114)(v117, v149);
      v24 = v28;
    }

    if (qword_27FD072A0 != -1)
    {
      goto LABEL_63;
    }
  }

  else
  {
    __break(1u);
LABEL_63:
    swift_once();
  }

  v125 = sub_25E829CDC();
  __swift_project_value_buffer(v125, qword_27FD0A4B0);
  v126 = sub_25E829CBC();
  v127 = sub_25E82A02C();
  v128 = os_log_type_enabled(v126, v127);
  v129 = v149;
  v130 = v153;
  v131 = v155;
  if (v128)
  {
    v132 = swift_slowAlloc();
    *v132 = 134217984;
    *(v132 + 4) = v24;
    _os_log_impl(&dword_25E7F6000, v126, v127, "Failed at writing batch: %ld", v132, 0xCu);
    MEMORY[0x25F8C1620](v132, -1, -1);
  }

  v133 = *v114;
  (*v114)(v131, v129);
  v133(v130, v129);
  return 0;
}

uint64_t sub_25E805E88()
{
  result = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0)
  {
    if (v3 < result)
    {
      goto LABEL_3;
    }
  }

  else if (result < v3)
  {
LABEL_3:
    v4 = __OFADD__(result, v2);
    v5 = result + v2;
    v6 = v4;
    v7 = 0x8000000000000000;
    if (v4)
    {
      v5 = (v5 >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 24) = v7;
    *(v0 + 32) = v6 ^ 1;
    *(v0 + 40) = v5;
    return result;
  }

  if (result != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return result;
}

uint64_t PlanksWriter.writeBatch<A, B>(_:label:as:quantization:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v95 = a8;
  v98 = a5;
  v100 = a3;
  v99 = a2;
  v97 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v94 = &v87[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07438, &qword_25E82AE18);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v91 = &v87[-v21];
  v22 = sub_25E829B9C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v92 = &v87[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = sub_25E829CAC();
  v89 = *(v90 - 8);
  v25 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v27 = &v87[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = a1;
  v28 = sub_25E829C9C();
  v101[0] = v28;
  v29 = sub_25E829F4C();
  WitnessTable = swift_getWitnessTable();
  v31 = v97;
  computeQuantizationParameters<A, B, C>(_:upperbound:)(v101, v98, a7, a6, v29, a12, a13, v97, &v102, a10, WitnessTable);
  v32 = v102;
  v101[0] = v28;
  LODWORD(v98) = v103;
  v88 = BYTE1(v103);
  v33 = quantizeArray<A, B, C>(_:parameters:)(v101, &v102, a7, a6, v29, a12, a13, v31);

  if (!v33)
  {
    v48 = v99;
    v49 = v100;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v50 = sub_25E829CDC();
    __swift_project_value_buffer(v50, qword_27FD0A4B0);

    v51 = sub_25E829CBC();
    v52 = sub_25E82A02C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v102 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_25E7FFAF0(v48, v49, &v102);
      _os_log_impl(&dword_25E7F6000, v51, v52, "Failed at quantizing batch: %s.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x25F8C1620](v54, -1, -1);
      MEMORY[0x25F8C1620](v53, -1, -1);
    }

    return 0;
  }

  sub_25E829C7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD07440, &qword_25E82AE20);
  sub_25E82A17C();

  v34 = v91;
  sub_25E829BDC();
  v35 = sub_25E829BEC();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  sub_25E829C6C();
  v36 = v94;
  sub_25E829BCC();
  v37 = sub_25E829B8C();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v38 = v99;
  v39 = v100;
  v40 = v96;
  v41 = PlanksWriter.writeBatch(_:label:as:)(v27, v99, v100, v36);
  sub_25E807334(v36);
  if ((v41 & 1) == 0)
  {
LABEL_12:
    if (qword_27FD072A0 == -1)
    {
LABEL_13:
      v55 = sub_25E829CDC();
      __swift_project_value_buffer(v55, qword_27FD0A4B0);

      v56 = sub_25E829CBC();
      v57 = sub_25E82A02C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v102 = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_25E7FFAF0(v38, v39, &v102);
        _os_log_impl(&dword_25E7F6000, v56, v57, "Failed at writing quantizedTensor: %s.", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x25F8C1620](v59, -1, -1);
        MEMORY[0x25F8C1620](v58, -1, -1);
      }

      (*(v89 + 8))(v27, v90);
      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_13;
  }

  v42 = v40 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v43 = v42 + 16;
  if (!*(*(v42 + 16) + 16))
  {
    swift_endAccess();
    goto LABEL_12;
  }

  sub_25E8075B8(&v102);
  v39 = *(&v102 + 1);
  v97 = v42;
  if (*(&v102 + 1))
  {
    v45 = *(&v103 + 1);
    v44 = v103;
    v46 = *&v104[0];
    v47 = v102;
  }

  else
  {

    sub_25E80750C(*(*v43 + 16) - 1, &v102);
    v47 = v102;
    v39 = *(&v102 + 1);
    v45 = *(&v103 + 1);
    v44 = v103;
    v46 = *&v104[0];
  }

  swift_endAccess();
  v94 = v46;
  LODWORD(v95) = v47;
  v96 = v45;
  v99 = v44;
  v100 = v27;
  v61 = *(v39 + 16);

  if (v61)
  {
    v38 = 0;
    v62 = v39 + 66;
    v63 = MEMORY[0x277D84F90];
    v64 = v98 | (v88 << 8);
    while (v38 < *(v39 + 16))
    {
      v65 = *(v62 - 34);
      v66 = *(v62 - 18);
      v67 = *(v62 - 2);
      *(v104 + 10) = *(v62 + 8);
      v103 = v66;
      v104[0] = v67;
      v102 = v65;
      v68 = *(v62 - 34);
      v69 = *(v62 - 18);
      v109 = *(v62 - 2);
      v107 = v68;
      v108 = v69;
      v70 = *v62;
      v106 = *(v62 + 4);
      v105 = v70;
      sub_25E8026B4(&v102, v101);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_25E7FF9E4(0, *(v63 + 2) + 1, 1, v63);
      }

      v27 = *(v63 + 2);
      v71 = *(v63 + 3);
      if (v27 >= v71 >> 1)
      {
        v63 = sub_25E7FF9E4((v71 > 1), v27 + 1, 1, v63);
      }

      v38 = (v38 + 1);
      *(v63 + 2) = v27 + 1;
      v72 = &v63[64 * v27];
      v73 = v107;
      v74 = v108;
      v72[64] = v109;
      *(v72 + 2) = v73;
      *(v72 + 3) = v74;
      v72[65] = 1;
      v75 = v105;
      *(v72 + 35) = v106;
      *(v72 + 66) = v75;
      *(v72 + 72) = v32;
      *(v72 + 44) = v64;
      v62 += 64;
      if (v61 == v38)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v63 = MEMORY[0x277D84F90];
LABEL_28:
  swift_bridgeObjectRelease_n();
  v76 = v97;
  swift_beginAccess();
  v77 = *(v76 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v76 + 16) = v77;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v77 = sub_25E7FF8C4(0, *(v77 + 2) + 1, 1, v77);
    *v43 = v77;
  }

  v79 = v100;
  v80 = v99;
  v81 = v96;
  v82 = v95;
  v83 = v94;
  v85 = *(v77 + 2);
  v84 = *(v77 + 3);
  if (v85 >= v84 >> 1)
  {
    v77 = sub_25E7FF8C4((v84 > 1), v85 + 1, 1, v77);
  }

  *(v77 + 2) = v85 + 1;
  v86 = &v77[40 * v85];
  v86[32] = v82;
  *(v86 + 5) = v63;
  *(v86 + 6) = v80;
  *(v86 + 7) = v81;
  *(v86 + 8) = v83;
  *v43 = v77;
  swift_endAccess();
  (*(v89 + 8))(v79, v90);

  return 1;
}

uint64_t PlanksWriter.writeTensor<A, B>(_:label:as:batchSize:quantization:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v99 = a6;
  v96 = a5;
  v101 = a3;
  v100 = a2;
  v98 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = &v88[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07438, &qword_25E82AE18);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v92 = &v88[-v22];
  v23 = sub_25E829B9C();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v93 = &v88[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = sub_25E829CAC();
  v90 = *(v91 - 8);
  v26 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v28 = &v88[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = a1;
  v29 = sub_25E829C9C();
  v102[0] = v29;
  v30 = sub_25E829F4C();
  WitnessTable = swift_getWitnessTable();
  v32 = v98;
  computeQuantizationParameters<A, B, C>(_:upperbound:)(v102, v99, a8, a7, v30, a13, a14, v98, &v103, a11, WitnessTable);
  v33 = v103;
  v102[0] = v29;
  LODWORD(v99) = v104;
  v89 = BYTE1(v104);
  v34 = quantizeArray<A, B, C>(_:parameters:)(v102, &v103, a8, a7, v30, a13, a14, v32);

  if (!v34)
  {
    v49 = v100;
    v50 = v101;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v51 = sub_25E829CDC();
    __swift_project_value_buffer(v51, qword_27FD0A4B0);

    v52 = sub_25E829CBC();
    v53 = sub_25E82A02C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v103 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_25E7FFAF0(v49, v50, &v103);
      _os_log_impl(&dword_25E7F6000, v52, v53, "Failed at quantizing batch: %s.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x25F8C1620](v55, -1, -1);
      MEMORY[0x25F8C1620](v54, -1, -1);
    }

    return 0;
  }

  sub_25E829C7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD07440, &qword_25E82AE20);
  sub_25E82A17C();

  v35 = v92;
  sub_25E829BDC();
  v36 = sub_25E829BEC();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  sub_25E829C6C();
  v37 = v95;
  sub_25E829BCC();
  v38 = sub_25E829B8C();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v39 = v100;
  v40 = v101;
  v41 = v97;
  v42 = PlanksWriter.writeTensor(_:label:as:batchSize:)(v28, v100, v101, v37, v96);
  sub_25E807334(v37);
  if ((v42 & 1) == 0)
  {
LABEL_12:
    if (qword_27FD072A0 == -1)
    {
LABEL_13:
      v56 = sub_25E829CDC();
      __swift_project_value_buffer(v56, qword_27FD0A4B0);

      v57 = sub_25E829CBC();
      v58 = sub_25E82A02C();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v103 = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_25E7FFAF0(v39, v40, &v103);
        _os_log_impl(&dword_25E7F6000, v57, v58, "Failed at writing quantizedTensor: %s.", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x25F8C1620](v60, -1, -1);
        MEMORY[0x25F8C1620](v59, -1, -1);
      }

      (*(v90 + 8))(v28, v91);
      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_13;
  }

  v43 = v41 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v44 = v43 + 16;
  if (!*(*(v43 + 16) + 16))
  {
    swift_endAccess();
    goto LABEL_12;
  }

  sub_25E8075B8(&v103);
  v40 = *(&v103 + 1);
  v98 = v43;
  if (*(&v103 + 1))
  {
    v46 = *(&v104 + 1);
    v45 = v104;
    v47 = *&v105[0];
    v48 = v103;
  }

  else
  {

    sub_25E80750C(*(*v44 + 16) - 1, &v103);
    v48 = v103;
    v40 = *(&v103 + 1);
    v46 = *(&v104 + 1);
    v45 = v104;
    v47 = *&v105[0];
  }

  swift_endAccess();
  v95 = v47;
  LODWORD(v96) = v48;
  v97 = v46;
  v100 = v45;
  v101 = v28;
  v62 = *(v40 + 16);

  if (v62)
  {
    v39 = 0;
    v63 = v40 + 66;
    v64 = MEMORY[0x277D84F90];
    v65 = v99 | (v89 << 8);
    while (v39 < *(v40 + 16))
    {
      v66 = *(v63 - 34);
      v67 = *(v63 - 18);
      v68 = *(v63 - 2);
      *(v105 + 10) = *(v63 + 8);
      v104 = v67;
      v105[0] = v68;
      v103 = v66;
      v69 = *(v63 - 34);
      v70 = *(v63 - 18);
      v110 = *(v63 - 2);
      v108 = v69;
      v109 = v70;
      v71 = *v63;
      v107 = *(v63 + 4);
      v106 = v71;
      sub_25E8026B4(&v103, v102);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_25E7FF9E4(0, *(v64 + 2) + 1, 1, v64);
      }

      v28 = *(v64 + 2);
      v72 = *(v64 + 3);
      if (v28 >= v72 >> 1)
      {
        v64 = sub_25E7FF9E4((v72 > 1), v28 + 1, 1, v64);
      }

      v39 = (v39 + 1);
      *(v64 + 2) = v28 + 1;
      v73 = &v64[64 * v28];
      v74 = v108;
      v75 = v109;
      v73[64] = v110;
      *(v73 + 2) = v74;
      *(v73 + 3) = v75;
      v73[65] = 1;
      v76 = v106;
      *(v73 + 35) = v107;
      *(v73 + 66) = v76;
      *(v73 + 72) = v33;
      *(v73 + 44) = v65;
      v63 += 64;
      if (v62 == v39)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_28:
  swift_bridgeObjectRelease_n();
  v77 = v98;
  swift_beginAccess();
  v78 = *(v77 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v77 + 16) = v78;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v78 = sub_25E7FF8C4(0, *(v78 + 2) + 1, 1, v78);
    *v44 = v78;
  }

  v80 = v101;
  v81 = v100;
  v82 = v97;
  v83 = v96;
  v84 = v95;
  v86 = *(v78 + 2);
  v85 = *(v78 + 3);
  if (v86 >= v85 >> 1)
  {
    v78 = sub_25E7FF8C4((v85 > 1), v86 + 1, 1, v78);
  }

  *(v78 + 2) = v86 + 1;
  v87 = &v78[40 * v86];
  v87[32] = v83;
  *(v87 + 5) = v64;
  *(v87 + 6) = v81;
  *(v87 + 7) = v82;
  *(v87 + 8) = v84;
  *v44 = v78;
  swift_endAccess();
  (*(v90 + 8))(v80, v91);

  return 1;
}