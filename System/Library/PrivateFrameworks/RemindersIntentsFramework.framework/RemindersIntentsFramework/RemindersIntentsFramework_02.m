uint64_t sub_261D83C1C(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
    v19 = a4;
    v20 = a3;
    v21 = sub_261D86954();
    a3 = v20;
    a4 = v19;
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_3:
    if (a2 >> 62)
    {
      v22 = a4;
      v23 = a3;
      v24 = sub_261D86954();
      a3 = v23;
      a4 = v22;
      if (v24)
      {
        goto LABEL_5;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v25 = a6;
    v26 = a3[7];
    v27 = a3[8];
    v28 = a4;
    __swift_project_boxed_opaque_existential_1(a3 + 4, v26);
    return (*(v27 + 40))(v28, a5, v25, v26, v27);
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_5:
  v14 = a3[7];
  v15 = a3[8];
  __swift_project_boxed_opaque_existential_1(a3 + 4, v14);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a5;
  v16[6] = a6;
  v17 = *(v15 + 40);

  v17(a7, sub_261D85668, v16, v14, v15);
}

uint64_t sub_261D83DFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v20 = a5;
  v8 = sub_261D86224();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261D86214();
  v22 = a2;

  sub_261D6DB80(v13);
  v14 = v22;
  swift_beginAccess();
  v15 = *(a3 + 16);

  sub_261D7A248(v16, v14);

  v17 = sub_261D861F4();
  v21 = a4;

  sub_261D6DB68(v17);
  sub_261D86204();
  v20(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_261D83F94()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_261D84000(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 64);
  __swift_project_boxed_opaque_existential_1((*v1 + 32), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_261D840CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 56);
  v10 = *(*v4 + 64);
  __swift_project_boxed_opaque_existential_1((*v4 + 32), v9);
  return (*(v10 + 56))(a1, a2, a3, a4, v9, v10);
}

uint64_t sub_261D84154()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t sub_261D841AC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 64);
  __swift_project_boxed_opaque_existential_1((*v2 + 32), v5);
  return (*(v6 + 80))(a1, a2, v5, v6);
}

uint64_t sub_261D8421C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 64);
  __swift_project_boxed_opaque_existential_1((*v2 + 32), v5);
  return (*(v6 + 88))(a1, a2, v5, v6);
}

char *sub_261D842B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4910, &qword_261D88360);
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

size_t sub_261D843E8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_261D845C4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_261D8464C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_261D84718(v11, 0, 0, 1, a1, a2);
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
    sub_261D856F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_261D84718(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_261D84824(a5, a6);
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
    result = sub_261D86A04();
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

uint64_t sub_261D84824(uint64_t a1, unint64_t a2)
{
  v4 = sub_261D84870(a1, a2);
  sub_261D849A0(&unk_28744AB68);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_261D84870(uint64_t a1, unint64_t a2)
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

  v6 = sub_261D84A8C(v5, 0);
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

  result = sub_261D86A04();
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
        v10 = sub_261D86584();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_261D84A8C(v10, 0);
        result = sub_261D869C4();
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

uint64_t sub_261D849A0(uint64_t result)
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

  result = sub_261D84B00(result, v12, 1, v3);
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

void *sub_261D84A8C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4950, &qword_261D883F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_261D84B00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4950, &qword_261D883F0);
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

void *sub_261D84C1C(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_261D86954();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v7 = sub_261D845C4(v6, 0);

    a3 = sub_261D84F3C(&v9, v7 + 4, v6, a1, a2, a3);
    sub_261D85754();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v7;
}

void *sub_261D84CE4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_261D86954();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_261D845C4(v2, 0);

    v1 = sub_261D85138(&v5, v3 + 4, v2, v1);
    sub_261D85754();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t (*sub_261D84D94(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26671E4C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_261D85B98;
  }

  __break(1u);
  return result;
}

uint64_t sub_261D84E14()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D84E4C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void (*sub_261D84EB4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26671E4C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_261D84F34;
  }

  __break(1u);
  return result;
}

uint64_t sub_261D84F3C(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  v9 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v20 = -1 << *(v6 + 32);
    v10 = v6 + 64;
    v11 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v12 = v22 & *(v6 + 64);
    v26 = v11;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_261D86A74();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = result | 0x8000000000000000;
  v26 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = a3;
  a3 = 0;
  v13 = 0;
  v14 = (v11 + 64) >> 6;
  v15 = 1;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!sub_261D86AF4())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_261D597EC(0, a5, a6);
      swift_dynamicCast();
      result = v28;
      v17 = v13;
      if (!v28)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v16 = v13;
    if (!v12)
    {
      break;
    }

    v17 = v13;
LABEL_13:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    result = *(*(v6 + 56) + ((v17 << 9) | (8 * v18)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v27;
    if (v15 == v27)
    {
LABEL_31:
      v17 = v13;
      goto LABEL_32;
    }

    ++a2;
    a3 = v15;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v10 + 8 * v17);
    ++v16;
    if (v12)
    {
      v13 = v17;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v14 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v14;
  }

  v17 = v23 - 1;
LABEL_32:
  *v9 = v6;
  v9[1] = v10;
  v9[2] = v26;
  v9[3] = v17;
  v9[4] = v12;
  return a3;
}

uint64_t sub_261D85138(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_261D86A74();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_261D86B04())
      {
        goto LABEL_31;
      }

      sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t sub_261D85334@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4438, &qword_261D88170);
  v6 = sub_261D86194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_261D87AE0;
  (*(v7 + 16))(v10 + v9, a1, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4930, &qword_261D883D0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_261D86464();

  *a3 = v14;
  return result;
}

unint64_t sub_261D854C4()
{
  result = qword_27FEF4940;
  if (!qword_27FEF4940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF4938, &unk_261D883D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4940);
  }

  return result;
}

uint64_t sub_261D85528()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D8557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v9 = *a5;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_261D82794(a6, sub_261D6C6C4, v10);
}

uint64_t sub_261D85618()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261D856AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D856F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_261D8575C(uint64_t a1)
{
  v2 = sub_261D86194();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v21 = v3;
  v13 = *(v3 + 16);
  v12 = v3 + 16;
  v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v22 = *(v12 + 56);
  v23 = v13;
  v15 = *MEMORY[0x277D44F10];
  while (1)
  {
    v23(v10, v14, v2, v8);
    (*(v12 + 16))(v6, v10, v2);
    if ((*(v12 + 72))(v6, v2) == v15)
    {
      break;
    }

    (*(v12 - 8))(v6, v2);
    v14 += v22;
    if (!--v11)
    {
      return 0;
    }
  }

  (*(v21 + 96))(v6, v2);
  v17 = *(v6 + 1);

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78) + 48);
  v19 = sub_261D862B4();
  (*(*(v19 - 8) + 8))(&v6[v18], v19);
  return 1;
}

uint64_t objectdestroy_27Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D85A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4688, &unk_261D88150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_261D85A98()
{
  result = qword_27FEF4958;
  if (!qword_27FEF4958)
  {
    sub_261D86184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4958);
  }

  return result;
}

uint64_t sub_261D85B24(void (*a1)(char *), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *v5;

  sub_261D6C038(v6, v7, a1, a2);
}