BOOL sub_25EB2FA34(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_25EB6E988() & 1) != 0)
  {
    if (v3)
    {
      if (v5)
      {
        v9 = v2 == v6 && v3 == v5;
        if (v9 || (sub_25EB6E988() & 1) != 0)
        {
          return v4 == v7;
        }
      }
    }

    else if (!v5)
    {
      return v4 == v7;
    }
  }

  return 0;
}

uint64_t sub_25EB2FB1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25EB2FB2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *sub_25EB2FB74(void *a1)
{
  v1 = a1;
  v2 = [a1 type];
  v3 = [v1 inputs];
  type metadata accessor for PSSGGraphInput(v3);
  v4 = sub_25EB6E3D8();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_16:

LABEL_17:
    v26 = [v1 outputs];
    type metadata accessor for PSSGResourceID(0);
    sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
    v27 = sub_25EB6E438();

    sub_25EB0F894(v27);
    v29 = v28;

    sub_25EB0CEAC(v29);

    return v2;
  }

  v5 = sub_25EB6E5F8();
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_3:
  v32 = MEMORY[0x277D84F90];
  result = sub_25EB2504C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v30 = v1;
    v31 = v2;
    v7 = 0;
    v8 = v4;
    v9 = v5;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25F8C6D90](v7, v8);
      }

      else
      {
        v10 = *(v8 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = [v10 resource];
      v13 = [v12 name];
      v14 = sub_25EB6E268();
      v16 = v15;

      v17 = [v12 session];
      if (v17)
      {
        v18 = v17;
        v19 = sub_25EB6E268();
        v21 = v20;
      }

      else
      {

        v19 = 0;
        v21 = 0;
      }

      v22 = [v11 type];

      v24 = *(v32 + 16);
      v23 = *(v32 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_25EB2504C((v23 > 1), v24 + 1, 1);
      }

      ++v7;
      *(v32 + 16) = v24 + 1;
      v25 = (v32 + 40 * v24);
      v25[4] = v14;
      v25[5] = v16;
      v25[6] = v19;
      v25[7] = v21;
      v25[8] = v22;
      v8 = v4;
    }

    while (v9 != v7);

    v1 = v30;
    v2 = v31;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB2FE64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_25EB6E988() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000 || (sub_25EB6E988() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374757074756FLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_25EB6E988();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_25EB2FF78(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12378, &qword_25EB79538);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB313C0();
  sub_25EB6EA68();
  type metadata accessor for PSGraphFrequencyType(0);
  HIBYTE(v10) = 0;
  sub_25EB24DC0(&qword_27FD12380, 255, type metadata accessor for PSGraphFrequencyType);
  sub_25EB6E8F8();
  v8 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12330, &qword_25EB79518);
  HIBYTE(v10) = 1;
  sub_25EB3168C();
  sub_25EB6E8F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12348, &qword_25EB79520);
  HIBYTE(v10) = 2;
  sub_25EB31764();
  sub_25EB6E8F8();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_25EB30200()
{
  result = qword_27FD12108;
  if (!qword_27FD12108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12108);
  }

  return result;
}

uint64_t sub_25EB30254()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25EB302CC()
{
  result = qword_27FD12138;
  if (!qword_27FD12138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12138);
  }

  return result;
}

unint64_t sub_25EB30320()
{
  result = qword_27FD12150;
  if (!qword_27FD12150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12150);
  }

  return result;
}

uint64_t sub_25EB30374(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12158, &qword_25EB78EA0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25EB30404()
{
  result = qword_27FD12168;
  if (!qword_27FD12168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12168);
  }

  return result;
}

uint64_t sub_25EB30458(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12140, &qword_25EB78E98);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25EB304E8()
{
  result = qword_27FD12180;
  if (!qword_27FD12180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12180);
  }

  return result;
}

unint64_t sub_25EB3053C()
{
  result = qword_27FD12188;
  if (!qword_27FD12188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12188);
  }

  return result;
}

unint64_t sub_25EB30590()
{
  result = qword_27FD12198;
  if (!qword_27FD12198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12198);
  }

  return result;
}

unint64_t sub_25EB305E4()
{
  result = qword_27FD121A0;
  if (!qword_27FD121A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD121A0);
  }

  return result;
}

void *sub_25EB30638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  _s11QueryHelperCMa();
  v14 = swift_allocObject();
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_25EB6E5F8())
    {
      sub_25EB0E8C4(MEMORY[0x277D84F90]);
    }

    else
    {
      v26 = MEMORY[0x277D84FA0];
    }

    v14[9] = v26;
    if (sub_25EB6E5F8())
    {
      sub_25EB0EBE0(MEMORY[0x277D84F90]);
    }

    else
    {
      v15 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
    v14[9] = MEMORY[0x277D84FA0];
  }

  v14[10] = v15;
  v14[2] = a1;
  if (a2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v17 = sub_25EB3214C;
  }

  else
  {
    v17 = sub_25EB321B0;
    v16 = 0;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v14[3] = sub_25EB320E4;
  v14[4] = v18;
  if (a4)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v20 = sub_25EB321A0;
  }

  else
  {
    v20 = sub_25EB18D84;
    v19 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v14[5] = sub_25EB32194;
  v14[6] = v21;
  if (a6)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a6;
    *(v22 + 24) = a7;
    v23 = sub_25EB3214C;
  }

  else
  {
    v23 = sub_25EB321B0;
    v22 = 0;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v14[7] = sub_25EB320E4;
  v14[8] = v24;
  return v14;
}

unint64_t sub_25EB3089C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_25EB6E5F8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x25F8C6D90](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_25EAFCC70(0, &qword_27FD12038, 0x277D82BB8);
    v7 = [v6 resource];
    v8 = sub_25EB6E518();

    if (v8)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_25EB309C8(unint64_t *a1)
{
  v3 = *a1;
  v4 = sub_25EB3089C(*a1);
  v6 = v4;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_25EB6E5F8();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_25EB6E5F8())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25F8C6D90](v7, v3);
      goto LABEL_16;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v9 = *(v3 + 8 * v7 + 32);
LABEL_16:
    v10 = v9;
    sub_25EAFCC70(0, &qword_27FD12038, 0x277D82BB8);
    v11 = [v10 resource];
    v12 = sub_25EB6E518();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x25F8C6D90](v6, v3);
          v14 = MEMORY[0x25F8C6D90](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_46;
          }

          if (v7 >= v15)
          {
            goto LABEL_47;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_25EB2F48C(v3);
          v18 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v3 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v18)
        {
          v3 = sub_25EB2F48C(v3);
          v19 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v7 >= *(v19 + 16))
        {
          goto LABEL_44;
        }

        v21 = v19 + 8 * v7;
        v22 = *(v21 + 32);
        *(v21 + 32) = v13;

        *a1 = v3;
      }

LABEL_8:
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_43;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_42;
    }
  }

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
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_25EB6E5F8();
}

uint64_t sub_25EB30C5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_11:
    v13 = *(*(a1 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
    if ((v13 & 0xC000000000000001) != 0)
    {

      v10 = sub_25EB6E5F8();
    }

    else
    {
      v10 = *(v13 + 16);
    }

    v6 &= v6 - 1;
    v11 = __OFADD__(v2, v10);
    v2 += v10;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v12);
    ++v9;
    if (v6)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25EB30D6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for PSSGGraphID(0);
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
  result = sub_25EB6E5F8();
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
    result = sub_25EB6E5F8();
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25EB30E8C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25EB30EE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25EB30F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25EB30FB8(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_7Polaris16PSSGGraphIDSwiftVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25EB31030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25EB31078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
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

uint64_t sub_25EB310E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25EB3112C(uint64_t result, int a2, int a3)
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

unint64_t sub_25EB311B4()
{
  result = qword_27FD122E8;
  if (!qword_27FD122E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD122E8);
  }

  return result;
}

unint64_t sub_25EB3120C()
{
  result = qword_27FD122F0;
  if (!qword_27FD122F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD122F0);
  }

  return result;
}

unint64_t sub_25EB31264()
{
  result = qword_27FD122F8;
  if (!qword_27FD122F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD122F8);
  }

  return result;
}

unint64_t sub_25EB312BC()
{
  result = qword_27FD12300;
  if (!qword_27FD12300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12300);
  }

  return result;
}

unint64_t sub_25EB31314()
{
  result = qword_27FD12308;
  if (!qword_27FD12308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12308);
  }

  return result;
}

unint64_t sub_25EB3136C()
{
  result = qword_27FD12310;
  if (!qword_27FD12310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12310);
  }

  return result;
}

unint64_t sub_25EB313C0()
{
  result = qword_27FD12320;
  if (!qword_27FD12320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12320);
  }

  return result;
}

unint64_t sub_25EB31414()
{
  result = qword_27FD12338;
  if (!qword_27FD12338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12330, &qword_25EB79518);
    sub_25EB31498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12338);
  }

  return result;
}

unint64_t sub_25EB31498()
{
  result = qword_27FD12340;
  if (!qword_27FD12340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12340);
  }

  return result;
}

unint64_t sub_25EB314EC()
{
  result = qword_27FD12350;
  if (!qword_27FD12350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12348, &qword_25EB79520);
    sub_25EB24FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12350);
  }

  return result;
}

unint64_t sub_25EB31570()
{
  result = qword_27FD12360;
  if (!qword_27FD12360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12360);
  }

  return result;
}

uint64_t sub_25EB315C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_25EB31608()
{
  result = qword_27FD12370;
  if (!qword_27FD12370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12368, &qword_25EB79530);
    sub_25EB24EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12370);
  }

  return result;
}

unint64_t sub_25EB3168C()
{
  result = qword_27FD12388;
  if (!qword_27FD12388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12330, &qword_25EB79518);
    sub_25EB31710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12388);
  }

  return result;
}

unint64_t sub_25EB31710()
{
  result = qword_27FD12390;
  if (!qword_27FD12390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12390);
  }

  return result;
}

unint64_t sub_25EB31764()
{
  result = qword_27FD12398;
  if (!qword_27FD12398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12348, &qword_25EB79520);
    sub_25EB30590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12398);
  }

  return result;
}

unint64_t sub_25EB317E8()
{
  result = qword_27FD123A8;
  if (!qword_27FD123A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12368, &qword_25EB79530);
    sub_25EB304E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD123A8);
  }

  return result;
}

uint64_t sub_25EB3186C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25EB318AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25EB31914(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_25EB31954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v9 = a2;
  v10 = a1;
  v8 = a3;
  v4(&v7, &v10, &v9, &v8);
  return v7;
}

uint64_t sub_25EB319A0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_25EB319D8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  result = v6(*a1, *a2, *a3);
  *a4 = result & 1;
  return result;
}

uint64_t sub_25EB31A18(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for PSSGResourceID(0);
  return sub_25EB6E518() & 1;
}

uint64_t sub_25EB31A70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25EB31AB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25EB31B00(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25EB31B6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25EB31BB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25EB31C10()
{
  result = qword_27FD12500;
  if (!qword_27FD12500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12500);
  }

  return result;
}

unint64_t sub_25EB31C68()
{
  result = qword_27FD12508;
  if (!qword_27FD12508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12508);
  }

  return result;
}

unint64_t sub_25EB31CC0()
{
  result = qword_27FD12510;
  if (!qword_27FD12510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12510);
  }

  return result;
}

unint64_t sub_25EB31D18()
{
  result = qword_27FD12518;
  if (!qword_27FD12518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12518);
  }

  return result;
}

unint64_t sub_25EB31D70()
{
  result = qword_27FD12520;
  if (!qword_27FD12520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12520);
  }

  return result;
}

unint64_t sub_25EB31DC8()
{
  result = qword_27FD12528;
  if (!qword_27FD12528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12528);
  }

  return result;
}

unint64_t sub_25EB31E1C()
{
  result = qword_27FD12538;
  if (!qword_27FD12538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12538);
  }

  return result;
}

uint64_t sub_25EB31E70(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25EB31F00(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25EB31FC4()
{
  result = qword_27FD12558;
  if (!qword_27FD12558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12558);
  }

  return result;
}

unint64_t sub_25EB3201C()
{
  result = qword_27FD12560;
  if (!qword_27FD12560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12560);
  }

  return result;
}

unint64_t sub_25EB32074()
{
  result = qword_27FD12568;
  if (!qword_27FD12568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12568);
  }

  return result;
}

id PSSGResourceIDSwift.toObjC()()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[3])
  {
    v3 = v0[2];
    v4 = objc_allocWithZone(PSSGResourceID);

    v5 = sub_25EB6E258();
    v6 = sub_25EB6E258();

    v7 = [v4 initLocalWithName:v5 session:v6];
  }

  else
  {
    v8 = objc_allocWithZone(PSSGResourceID);
    v6 = sub_25EB6E258();
    v7 = [v8 initGlobalWithName_];
  }

  return v7;
}

Polaris::PSSGResourceIDSwift __swiftcall PSSGResourceID.toSwift()()
{
  v2 = v0;
  v3 = v1;

  sub_25EB33B24(v3, v2);
  result.session.value._object = v7;
  result.session.value._countAndFlagsBits = v6;
  result.name._object = v5;
  result.name._countAndFlagsBits = v4;
  return result;
}

id PSSGGraphIDSwift.toObjC()()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = objc_allocWithZone(PSSGGraphID);
  v6 = sub_25EB6E258();
  v7 = sub_25EB6E258();
  v8 = [v5 initWithName:v6 session:v7];

  return v8;
}

id sub_25EB3235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ps_resource_storage_mode_description();
  v8 = sub_25EB6E2F8();
  v10 = v9;
  ps_resource_storage_mode_description();
  v11 = sub_25EB6E2F8();
  v12 = v8;
  v14 = v13;
  if (v12 == a5 && v10 == a6)
  {

LABEL_8:

    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v19 = sub_25EB6E258();

    v20 = [v18 initGlobalWithName_];
    goto LABEL_9;
  }

  v16 = v11;
  v17 = sub_25EB6E988();

  if (v17)
  {
    goto LABEL_8;
  }

  if (v16 == a5 && v14 == a6)
  {
  }

  else
  {
    v22 = sub_25EB6E988();

    if ((v22 & 1) == 0)
    {

      return 0;
    }
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_25EB6E258();

  v19 = sub_25EB6E258();

  v20 = [v23 initLocalWithName:v24 session:v19];

LABEL_9:
  return v20;
}

uint64_t PSSGGraphID.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___PSSGGraphID_name);
  v2 = *(v0 + OBJC_IVAR___PSSGGraphID_name + 8);

  return v1;
}

uint64_t PSSGGraphID.session.getter()
{
  v1 = *(v0 + OBJC_IVAR___PSSGGraphID_session);
  v2 = *(v0 + OBJC_IVAR___PSSGGraphID_session + 8);

  return v1;
}

void PSSGGraphIDSwift.init(fromObjC:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 name];
  v5 = sub_25EB6E268();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 session];
  v9 = sub_25EB6E268();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
}

uint64_t PSSGGraphID.isEqual(_:)(uint64_t a1)
{
  v2 = sub_25EB33BD4(a1, v23);
  if (!v24)
  {
    sub_25EB33C44(v23);
    goto LABEL_7;
  }

  type metadata accessor for PSSGGraphID(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  v3 = [v1 name];
  v4 = sub_25EB6E268();
  v6 = v5;

  v7 = [v22 name];
  v8 = sub_25EB6E268();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {

    goto LABEL_9;
  }

  v12 = sub_25EB6E988();

  if ((v12 & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_9:
  v13 = [v1 session];
  v14 = sub_25EB6E268();
  v16 = v15;

  v17 = [v22 session];
  v18 = sub_25EB6E268();
  v20 = v19;

  if (v14 == v18 && v16 == v20)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25EB6E988();
  }

  return v11 & 1;
}

uint64_t PSSGGraphID.hash.getter()
{
  v1 = v0;
  v2 = [v0 name];
  sub_25EB6E268();

  sub_25EB33CC0();
  v3 = sub_25EB6E538();

  v4 = [v1 session];
  sub_25EB6E268();

  v5 = sub_25EB6E538();

  return v5 ^ v3;
}

uint64_t PSSGGraphID.description.getter()
{
  v1 = v0;
  v2 = [v0 session];
  v3 = sub_25EB6E268();

  MEMORY[0x25F8C69B0](8250, 0xE200000000000000);

  v4 = [v1 name];
  v5 = sub_25EB6E268();
  v7 = v6;

  MEMORY[0x25F8C69B0](v5, v7);

  return v3;
}

uint64_t sub_25EB32C18@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 name];
  if (!v4)
  {
    sub_25EB6E268();
    v4 = sub_25EB6E258();
  }

  v5 = [v2 session];
  if (!v5)
  {
    sub_25EB6E268();
    v5 = sub_25EB6E258();
  }

  v6 = [objc_allocWithZone(PSSGGraphID) initWithName:v4 session:v5];

  result = type metadata accessor for PSSGGraphID(v7);
  a1[3] = result;
  *a1 = v6;
  return result;
}

uint64_t static PSSGGraphIDSwift.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25EB6E988(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25EB6E988();
    }
  }

  return result;
}

uint64_t sub_25EB32E60()
{
  if (*v0)
  {
    result = 0x6E6F6973736573;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_25EB32E98(uint64_t a1)
{
  v2 = sub_25EB33D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB32ED4(uint64_t a1)
{
  v2 = sub_25EB33D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PSSGGraphIDSwift.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12588, &qword_25EB79A48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB33D14();
  sub_25EB6EA78();
  v16 = 0;
  v12 = v14[3];
  sub_25EB6E928();
  if (!v12)
  {
    v15 = 1;
    sub_25EB6E928();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PSSGGraphIDSwift.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25EB6E2D8();

  return sub_25EB6E2D8();
}

uint64_t PSSGGraphIDSwift.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  return sub_25EB6EA58();
}

uint64_t PSSGGraphIDSwift.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12598, &qword_25EB79A50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB33D14();
  sub_25EB6EA68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = 0;
  v11 = sub_25EB6E8D8();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_25EB6E8D8();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_25EB3338C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25EB6E988(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25EB6E988();
    }
  }

  return result;
}

uint64_t sub_25EB33430()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  return sub_25EB6EA58();
}

uint64_t sub_25EB33498()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25EB6E2D8();

  return sub_25EB6E2D8();
}

uint64_t sub_25EB334E8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  return sub_25EB6EA58();
}

uint64_t PSSGResourceID.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___PSSGResourceID_name);
  v2 = *(v0 + OBJC_IVAR___PSSGResourceID_name + 8);

  return v1;
}

uint64_t PSSGResourceID.session.getter()
{
  v1 = *(v0 + OBJC_IVAR___PSSGResourceID_session);
  v2 = *(v0 + OBJC_IVAR___PSSGResourceID_session + 8);

  return v1;
}

id PSSGResourceID.init(localWithName:session:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_25EB6E258();

  v2 = sub_25EB6E258();

  v3 = [v0 initLocalWithName:v1 session:v2];

  return v3;
}

id PSSGResourceID.init(localWithName:session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR___PSSGResourceID_name);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + OBJC_IVAR___PSSGResourceID_session);
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = PSSGResourceID;
  return objc_msgSendSuper2(&v8, sel_init);
}

id PSSGResourceID.init(globalWithName:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_25EB6E258();

  v2 = [v0 initGlobalWithName_];

  return v2;
}

id PSSGResourceID.init(globalWithName:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___PSSGResourceID_name);
  *v3 = a1;
  v3[1] = a2;
  v4 = (v2 + OBJC_IVAR___PSSGResourceID_session);
  *v4 = 0;
  v4[1] = 0;
  v6.super_class = PSSGResourceID;
  return objc_msgSendSuper2(&v6, sel_init);
}

id PSSGResourceID.init(name:session:storageMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25EB6E258();

  v8 = sub_25EB6E258();

  v9 = [v6 initWithName:v7 session:v8 storageMode:a5];

  return v9;
}

{
  if (a5 == 2)
  {

    v7 = sub_25EB6E258();

    v8 = [v5 initGlobalWithName_];
  }

  else
  {
    if (a5 != 1)
    {

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v6 = sub_25EB6E258();

    v7 = sub_25EB6E258();

    v8 = [v5 initLocalWithName:v6 session:v7];
  }

  return v8;
}

void sub_25EB33B24(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 name];
  v5 = sub_25EB6E268();
  v7 = v6;

  v8 = [a1 session];
  if (v8)
  {
    v9 = v8;
    v10 = sub_25EB6E268();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v12;
}

uint64_t sub_25EB33BD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12030, &qword_25EB78E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EB33C44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12030, &qword_25EB78E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25EB33CC0()
{
  result = qword_27FD12580;
  if (!qword_27FD12580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12580);
  }

  return result;
}

unint64_t sub_25EB33D14()
{
  result = qword_27FD12590;
  if (!qword_27FD12590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12590);
  }

  return result;
}

uint64_t PSSGResourceID.isEqual(_:)(uint64_t a1)
{
  v2 = sub_25EB33BD4(a1, v25);
  if (v26)
  {
    type metadata accessor for PSSGResourceID(v2);
    if (swift_dynamicCast())
    {
      v3 = [v1 name];
      v4 = sub_25EB6E268();
      v6 = v5;

      v7 = [v24 name];
      v8 = sub_25EB6E268();
      v10 = v9;

      if (v4 == v8 && v6 == v10)
      {
      }

      else
      {
        v13 = sub_25EB6E988();

        if ((v13 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      v14 = [v1 session];
      if (v14)
      {
        v15 = v14;
        v16 = sub_25EB6E268();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = [v24 session];
      if (v19)
      {
        v20 = v19;
        v21 = sub_25EB6E268();
        v23 = v22;

        if (!v18)
        {

          if (!v23)
          {
            v11 = 1;
            return v11 & 1;
          }

          goto LABEL_7;
        }

        if (v23)
        {
          if (v16 != v21 || v18 != v23)
          {
            v11 = sub_25EB6E988();

            return v11 & 1;
          }

          goto LABEL_22;
        }
      }

      else if (!v18)
      {
LABEL_22:

        v11 = 1;
        return v11 & 1;
      }
    }
  }

  else
  {
    sub_25EB33C44(v25);
  }

LABEL_7:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_25EB33FD0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_25EB6E548();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_25EB33C44(v10);
  return v8 & 1;
}

uint64_t PSSGResourceID.hash.getter()
{
  v1 = [v0 name];
  sub_25EB6E268();

  sub_25EB33CC0();
  v2 = sub_25EB6E538();

  v3 = [v0 session];
  if (v3)
  {
    v4 = v3;
    sub_25EB6E268();
  }

  v5 = sub_25EB6E538();

  return v5 ^ v2;
}

uint64_t PSSGResourceID.description.getter()
{
  v1 = v0;
  v2 = [v0 session];
  if (v2)
  {
    v3 = v2;
    v4 = sub_25EB6E268();

    MEMORY[0x25F8C69B0](8250, 0xE200000000000000);

    v5 = v4;
    v6 = [v1 name];
    v7 = sub_25EB6E268();
    v9 = v8;

    MEMORY[0x25F8C69B0](v7, v9);
  }

  else
  {
    v11 = [v0 name];
    v5 = sub_25EB6E268();
  }

  return v5;
}

uint64_t sub_25EB3430C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 session];
  v5 = [v2 name];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      sub_25EB6E268();
      v6 = sub_25EB6E258();
    }

    v7 = [objc_allocWithZone(PSSGResourceID) initLocalWithName:v6 session:v4];
  }

  else
  {
    if (!v5)
    {
      sub_25EB6E268();
      v6 = sub_25EB6E258();
    }

    v7 = [objc_allocWithZone(PSSGResourceID) initGlobalWithName_];
    v4 = v6;
  }

  result = type metadata accessor for PSSGResourceID(v8);
  a1[3] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_25EB3442C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_25EB6E978();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t static PSSGResourceIDSwift.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25EB6E988(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_25EB6E988() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_25EB345E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_25EB6E988() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25EB6E988();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25EB346C4(uint64_t a1)
{
  v2 = sub_25EB348D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB34700(uint64_t a1)
{
  v2 = sub_25EB348D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PSSGResourceIDSwift.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD125B0, &qword_25EB79A58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB348D0();
  sub_25EB6EA78();
  v16 = 0;
  v12 = v14[3];
  sub_25EB6E928();
  if (!v12)
  {
    v15 = 1;
    sub_25EB6E908();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_25EB348D0()
{
  result = qword_27FD125B8;
  if (!qword_27FD125B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125B8);
  }

  return result;
}

uint64_t PSSGResourceIDSwift.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25EB6E2D8();
  if (!v4)
  {
    return sub_25EB6EA48();
  }

  sub_25EB6EA48();

  return sub_25EB6E2D8();
}

uint64_t PSSGResourceIDSwift.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (v4)
  {
    sub_25EB6E2D8();
  }

  return sub_25EB6EA58();
}

uint64_t PSSGResourceIDSwift.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD125C0, &qword_25EB79A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB348D0();
  sub_25EB6EA68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = 0;
  v11 = sub_25EB6E8D8();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_25EB6E8B8();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_25EB34C5C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25EB6E988(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_25EB6E988() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_25EB34CFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (v4)
  {
    sub_25EB6E2D8();
  }

  return sub_25EB6EA58();
}

uint64_t sub_25EB34D88()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25EB6E2D8();
  if (!v4)
  {
    return sub_25EB6EA48();
  }

  sub_25EB6EA48();

  return sub_25EB6E2D8();
}

uint64_t sub_25EB34E04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (v4)
  {
    sub_25EB6E2D8();
  }

  return sub_25EB6EA58();
}

unint64_t sub_25EB34E90()
{
  result = qword_27FD125C8;
  if (!qword_27FD125C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125C8);
  }

  return result;
}

unint64_t sub_25EB34EE8()
{
  result = qword_27FD125D0;
  if (!qword_27FD125D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125D0);
  }

  return result;
}

uint64_t sub_25EB34F54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25EB34F9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25EB35010()
{
  result = qword_27FD125E8;
  if (!qword_27FD125E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125E8);
  }

  return result;
}

unint64_t sub_25EB35068()
{
  result = qword_27FD125F0;
  if (!qword_27FD125F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125F0);
  }

  return result;
}

unint64_t sub_25EB350C0()
{
  result = qword_27FD125F8;
  if (!qword_27FD125F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125F8);
  }

  return result;
}

unint64_t sub_25EB35118()
{
  result = qword_27FD12600;
  if (!qword_27FD12600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12600);
  }

  return result;
}

unint64_t sub_25EB35170()
{
  result = qword_27FD12608;
  if (!qword_27FD12608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12608);
  }

  return result;
}

unint64_t sub_25EB351C8()
{
  result = qword_27FD12610;
  if (!qword_27FD12610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12610);
  }

  return result;
}

uint64_t ps_ca_check_frameid_error(uint64_t *a1, unint64_t a2)
{
  if (a1[6])
  {
    return 1;
  }

  v3 = a1[4];
  v4 = a1[2];
  v5 = v3 + v4;
  if (__CFADD__(v3, v4))
  {
    v6 = HIWORD(a2) != 0;
  }

  else
  {
    v6 = HIWORD(a2) != 0;
    if (!HIWORD(a2) && v3 < a2 && v5 <= a2)
    {
      result = 0;
      a1[4] = a2;
      return result;
    }
  }

  if (v6 || (*(a1 + 50) & 1) != 0)
  {
    a1[5] = a2;
    v9 = *a1;
    if (*a1)
    {
      (*(v9 + 16))(v9, 12, a1 + 1, 40);
    }

    result = 1;
    *(a1 + 48) = 1;
  }

  else
  {
    result = 0;
    a1[4] = a2;
    *(a1 + 50) = 1;
  }

  return result;
}

void ps_ca_bucketing_aggregator_add_entry_cold_1(uint64_t a1, _BYTE *a2, void *a3)
{
  (*(*(a1 + 56) + 16))();
  bzero(*a1, 2 * *(a1 + 8));
  *a2 = 0;
  *a3 = 0;
}

uint64_t ps_reservation_start_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_start", "stride % sizeof(atomic_uint_fast64_t) == 0");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return ps_reservation_complete_get_updated_mask_cold_1(v15);
}

uint64_t ps_reservation_complete_get_updated_mask_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_complete_get_updated_mask", "index < count");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return ps_reservation_clear_get_updated_mask_cold_1(v15);
}

uint64_t ps_reservation_clear_get_updated_mask_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_clear_get_updated_mask", "index < count");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return ps_reservation_set_mask_value_at_index_cold_1(v15);
}

void ps_reservation_set_mask_value_at_index_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_set_mask_value_at_index", "index < 64");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v15, v16, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v15, v16, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  __PSUtilitiesLogSharedInstance_cold_1();
}

void ps_util_check_process_entitlements_cold_1(const void *a1, BOOL *a2)
{
  v4 = CFGetTypeID(a1);
  v8 = v4 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(a1, @"com.apple.polaris.client")) != 0 && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFBooleanGetTypeID()) && CFBooleanGetValue(v6) != 0;
  *a2 = v8;
  CFRelease(a1);
}

uint64_t ps_util_check_process_entitlements_cold_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], (a1 + 8), a2 - 8, *MEMORY[0x277CBED00]);
  if (v7)
  {
    v8 = v7;
    v9 = CFPropertyListCreateWithData(v6, v7, 0, 0, 0);
    *a3 = v9;
    CFRelease(v8);
    if (v9)
    {
      return 0;
    }
  }

  *a4 = 0;
  return 1;
}

uint64_t ps_exec_add_task_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Failed to allocate memory for task->key");
  v1 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v2, v3, "%s:%d Failed to allocate memory for task->key", v4, v5, v6, v7, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return ps_exec_add_task_cold_2(v15);
}

uint64_t ps_exec_add_task_cold_2(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Invalid task key");
  v1 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid task key", v4, v5, v6, v7, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return ps_exec_add_dependency_cold_1(v15);
}

void ps_exec_add_dependency_cold_1(char **a1, NSObject *a2)
{
  *a1 = 0;
  asprintf(a1, "%s:%d - downstream_idx %u greater than %u", "ps_exec_add_dependency", 123, a2, 64);
  v3 = __PSExecutorLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316418;
    v9 = "ps_exec_add_dependency";
    v10 = 1024;
    v11 = 123;
    v12 = 2080;
    v13 = "ps_exec_add_dependency";
    v14 = 1024;
    v15 = 123;
    v16 = 1024;
    v17 = a2;
    v18 = 1024;
    v19 = 64;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s:%d - downstream_idx %u greater than %u", buf, 0x2Eu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v6))
    {
      *buf = 136315394;
      v9 = "ps_exec_add_dependency";
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_25EA3A000, a2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v7 = OUTLINED_FUNCTION_0();
  ps_exec_destroy_shared_thread_pool_cold_1(v7);
}

void ps_exec_init_graph_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Failed to malloc graph");
  v1 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v2, v3, "%s:%d Failed to malloc graph", v4, v5, v6, v7, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  _tail_workload(v15, v16);
}

void _tail_workload(uint64_t a1, int a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = mach_absolute_time();
  if (*(v4 + 64) != -1 && *(v4 + 56))
  {
    _X0 = 0;
    _X1 = 0;
    v8 = 0xFFFFFFFFLL;
    if (v5 - **(v4 + 48) < 0xFFFFFFFF)
    {
      v8 = v5 - **(v4 + 48);
    }

    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    do
    {
      if (_X0 == -1)
      {
        break;
      }

      *(v4 + 552);
      v14 = v8 <= (_X0 >> 4) ? _X0 : _X0 & 0xFFFFFFF00000000FLL | (16 * v8);
      _X2 = v14 & 0xFFFFFFFFFLL | (v8 << 36);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X2, X3, [X8] }

      _ZF = _X4 == _X0;
      _X0 = _X4;
    }

    while (!_ZF);
  }

  if (v5 - *(v4 + 576) <= *(v4 + 552))
  {
    v18 = *(v4 + 584);
  }

  else
  {
    ps_ca_notify_deadline_missed(*(v4 + 6808));
    v18 = *(v4 + 584) | 1;
    *(v4 + 584) = v18;
    v19 = -1 << *(v4 + 560);
    v20 = vcnt_s8((v18 & ~v19));
    v20.i16[0] = vaddlv_u8(v20);
    if (v20.u32[0] >= *(v4 + 564))
    {
      v21 = *(v4 + 592);
      if (v21)
      {
        v21(v4, *(v4 + 600));
        v18 = *(v4 + 584);
      }

      v18 &= v19;
    }
  }

  *(v4 + 584) = 2 * v18;
  if ((*(v4 + 513) & 1) == 0)
  {
    v22 = *(v4 + 416);
    if (v22)
    {
      v22(v4, *(v4 + 432));
    }
  }

  if (a2 == 1 || !*(a1 + 360) || (*(v4 + 512) & 1) != 0 || !*(a1 + 4))
  {
LABEL_27:
    v25 = *(v4 + 448);
    if (v25)
    {
      v25(*(v4 + 456));
    }

    if ((*(v4 + 544) & 0xFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFELL)
    {
      _request_remove_subgraph((v4 - *v4), v4, 0, 0);
    }

    v26 = *(v4 + 616);
    if (v26)
    {
      v26(v4, *(v4 + 624));
      if (!a2)
      {
        goto LABEL_33;
      }
    }

    else if (!a2)
    {
LABEL_33:
      ps_frame_history_notify_end_frame_data(*(v4 + 6816), *(v4 + 6824), v5, 0, 0);
      ps_frame_history_buffer_relinquish_data_entry(*(v4 + 6816));
      v27 = *(v4 + 6808);
      v28 = *MEMORY[0x277D85DE8];

      ps_ca_notify_graph_exec_end(v27, v5);
      return;
    }

    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  v23 = *(a1 + 372);
  os_workgroup_interval_data_set_flags();
  v24 = os_workgroup_interval_finish(*(a1 + 360), (a1 + 376));
  if (!v24)
  {
    ps_ca_notify_workgroup_interval_finish(*(v4 + 6808), a1 + 440);
    atomic_store(0, (a1 + 369));
    goto LABEL_27;
  }

  v42 = 0;
  v30 = *(a1 + 360);
  v31 = v24;
  v32 = strerror(v24);
  v33 = v31;
  asprintf(&v42, "os_workgroup_interval_finish(%p) failed with %s (%d)", v30, v32, v31);
  v34 = __PSExecutorLogSharedInstance();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    v35 = *(a1 + 360);
    strerror(v33);
    OUTLINED_FUNCTION_12();
    v44 = 445;
    v45 = 2048;
    v46 = v35;
    v47 = 2080;
    v48 = v36;
    v49 = v37;
    v50 = v33;
    _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_FAULT, "%s:%d os_workgroup_interval_finish(%p) failed with %s (%d)", buf, 0x2Cu);
  }

  v38 = OSLogFlushBuffers();
  if (v38)
  {
    v39 = v38;
    v40 = __PSExecutorLogSharedInstance();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_12();
      v44 = v39;
      _os_log_impl(&dword_25EA3A000, v40, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v41 = abort_with_reason();
  ps_exec_sem_timed_wait_cold_1(v41);
}

uint64_t ps_exec_sem_timed_wait_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Semaphore wait failed!\n");
  v1 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_14();
    v16 = 54;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v2, v3, "%s:%d Semaphore wait failed!\n", v4, v5, v6, v7, v15[0]);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = v8;
    v10 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_14();
      v16 = v9;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v13 = OUTLINED_FUNCTION_0();
  return ps_exec_sem_signal_cold_1(v13);
}

uint64_t ps_exec_sem_signal_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Semaphore signal failed!\n");
  v1 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_14();
    v16 = 64;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v2, v3, "%s:%d Semaphore signal failed!\n", v4, v5, v6, v7, v15[0]);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = v8;
    v10 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_14();
      v16 = v9;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v13 = OUTLINED_FUNCTION_0();
  return _request_remove_subgraph_cold_1(v13);
}

void _request_remove_subgraph_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Subgraph %s not found to removed ****************\n", (a2 + 113));
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Subgraph %s not found to removed ****************\n", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  _request_remove_subgraph_cold_2(v16);
}

uint64_t _request_remove_subgraph_cold_4(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Unexpected removal of graph %s", (a2 + 113));
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unexpected removal of graph %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _set_executing_subgraph_cold_1(v16);
}

void *_set_executing_subgraph_cold_1(void *result, uint64_t a2)
{
  if (!*result)
  {
    __assert_rtn("_set_executing_subgraph", "PSExecutionEngine.c", 597, "thread_pool->executing_subgraph");
  }

  *(a2 + 64) = 0;
  return result;
}

uint64_t _set_executing_subgraph_cold_3(uint64_t a1, atomic_uint *a2, _BYTE *a3, uint64_t a4)
{
  _process_subgraph_terminate(a1);
  add = atomic_fetch_add(a2, 0xFFFFFFFF);
  if (add <= 0)
  {
    __assert_rtn("_set_executing_subgraph", "PSExecutionEngine.c", 544, "active_subgraph_count > 0");
  }

  if (add != 1 || (*a3 & 1) != 0)
  {
    return 1;
  }

  ps_exec_terminate_shared_thread_pool(a4);
  return 0;
}

uint64_t _set_executing_subgraph_cold_4(char **a1, uint64_t a2)
{
  *a1 = 0;
  v4 = a2 + 72;
  asprintf(a1, "No subgraph found to execute for thread_pool (%s) with ID (%llu)", (a2 + 72), *(a2 + 32));
  v5 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = *(a2 + 32);
    *buf = 136315906;
    v20 = "_set_executing_subgraph";
    v21 = 1024;
    v22 = 531;
    v23 = 2080;
    v24 = v4;
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d No subgraph found to execute for thread_pool (%s) with ID (%llu)", buf, 0x26u);
  }

  if (OSLogFlushBuffers())
  {
    v7 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v7))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v17, v18, buf[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  return thread_workloop_unshared_path_cold_1(v14, v15);
}

uint64_t thread_workloop_unshared_path_cold_1(void *a1, uint64_t a2)
{
  *a1 = 0;
  result = *(a2 + 464);
  if (result)
  {
    v4 = *(a2 + 480);
    if (v4)
    {
      result = v4();
    }
  }

  v5 = *(a2 + 72);
  if (v5)
  {
    *(a2 + 112) = 1;
    return v5(a2 + 113, *(a2 + 88));
  }

  return result;
}

uint64_t thread_workloop_unshared_path_cold_2(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  asprintf(v1, "Unknown PSGraphWorkloadWait value %d: crashing here", v18);
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d Unknown PSGraphWorkloadWait value %d: crashing here", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return thread_workloop_unshared_path_cold_3(v16);
}

uint64_t thread_workloop_unshared_path_cold_3(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "An error has occurred for subgraph %s! No task is available but I was woken from my slumber.", (a2 + 113));
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d An error has occurred for subgraph %s! No task is available but I was woken from my slumber.", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return thread_workloop_unshared_path_cold_4(v16);
}

uint64_t thread_workloop_unshared_path_cold_4(void *a1, atomic_ushort *a2)
{
  if (*a1)
  {
    v3 = pthread_self();
    policy_info = 1;
    v4 = pthread_mach_thread_np(v3);
    thread_policy_set(v4, 1u, &policy_info, 1u);
  }

  ps_telemetry_deinit_thread();
  pbs_ringbuffer_get_global_dump_on_exit();
  result = pbs_ringbufferlogger_destroy_thread_log();
  atomic_fetch_add(a2, 0xFFFFu);
  return result;
}

void *thread_workloop_shared_path_cold_2(char **a1, const char *a2)
{
  *a1 = 0;
  asprintf(a1, "ThreadPool %s was unable to set executing subgraph", a2);
  v4 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v4))
  {
    OUTLINED_FUNCTION_11();
    v18 = 832;
    v19 = 2080;
    v20 = a2;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d ThreadPool %s was unable to set executing subgraph", buf, 0x1Cu);
  }

  if (OSLogFlushBuffers())
  {
    v5 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v5))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v6, v7, "%s() failed to flush buffers with error code: %d", v8, v9, v10, v11, v15, v16, buf[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v12 = OUTLINED_FUNCTION_0();
  return thread_workloop_shared_path_cold_3(v12, v13);
}

void *thread_workloop_shared_path_cold_3(void *result, uint64_t a2)
{
  *result = 0;
  v2 = *(a2 + 72);
  if (v2)
  {
    *(a2 + 112) = 1;
    return v2(a2 + 113, *(a2 + 88));
  }

  return result;
}

void thread_workloop_shared_path_cold_4(uint64_t a1)
{
  if ((*(a1 + 513) & 1) == 0)
  {
    v2 = *(a1 + 408);
    if (v2)
    {
      v2(a1, *(a1 + 424));
    }
  }

  v3 = mach_absolute_time();
  v4 = *(a1 + 64);
  if (v4 != -1)
  {
    ps_liveness_reset_deadline_if_needed(v4, *(a1 + 544) & 0xFFFFFFFFFFFFLL);
    v5 = *(a1 + 48);
    if (v5)
    {
      *v5 = v3;
    }
  }

  *(a1 + 576) = v3;
  ps_frame_history_notify_start_frame_data(*(a1 + 6816), *(a1 + 6824), *(a1 + 544) & 0xFFFFFFFFFFFFLL, v3, HIWORD(*(a1 + 544)) & 0x3FF, 0);
}

uint64_t start_thread_pool_thread_workloop_cold_1(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  asprintf(v1, "pthread_attr_init failed with ret %d", v18);
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d pthread_attr_init failed with ret %d", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_2(v16);
}

uint64_t start_thread_pool_thread_workloop_cold_2(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  asprintf(v1, "pthread_attr_setschedpolicy failed with ret %d", v18);
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d pthread_attr_setschedpolicy failed with ret %d", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_3(v16);
}

uint64_t start_thread_pool_thread_workloop_cold_3(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  asprintf(v1, "pthread_attr_getschedparam failed with ret %d", v18);
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d pthread_attr_getschedparam failed with ret %d", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_4(v16);
}

uint64_t start_thread_pool_thread_workloop_cold_4(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  asprintf(v1, "pthread_attr_setschedparam failed with ret %d", v18);
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d pthread_attr_setschedparam failed with ret %d", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_5(v16);
}

uint64_t start_thread_pool_thread_workloop_cold_5(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  asprintf(v1, "pthread_attr_setdetachstate failed with ret %d", v19);
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d pthread_attr_setdetachstate failed with ret %d", v5, v6, v7, v8, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_6(v16, v17);
}

uint64_t start_thread_pool_thread_workloop_cold_6(char **a1, int __errnum)
{
  *a1 = 0;
  v5 = strerror(__errnum);
  asprintf(a1, "pthread_create() failed with %s (%d)", v5, __errnum);
  v6 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v6))
  {
    strerror(__errnum);
    OUTLINED_FUNCTION_11();
    v21 = 995;
    v22 = 2080;
    v23 = v7;
    v24 = v8;
    v25 = __errnum;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d pthread_create() failed with %s (%d)", buf, 0x22u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, buf[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_7(v16);
}

uint64_t start_thread_pool_thread_workloop_cold_7(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  asprintf(v1, "_set_pthread_rt_annotation failed with ret %d", v18);
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d _set_pthread_rt_annotation failed with ret %d", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _request_terminate_subgraph_cold_1(v16);
}

void _request_terminate_subgraph_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Subgraph %s not found to removed ****************\n", (a2 + 113));
  v2 = __PSExecutorLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Subgraph %s not found to removed ****************\n", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSExecutorLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  ps_exec_init_cold_1(v16);
}

void ps_exec_init_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Could not create a ps_executor instance, malloc returned NULL.");
  v2 = __PSExecutorLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315394;
    v8 = "ps_exec_init";
    v9 = 1024;
    v10 = 21;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Could not create a ps_executor instance, malloc returned NULL.", &v7, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PSExecutorLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "ps_exec_init";
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v7, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  abort_with_reason();
  __PSExecutorLogSharedInstance_cold_1();
}

void imuIOHIDEventCallback()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

{
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x14u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void biomotionIOHIDEventCallback()
{
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

{
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

{
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void visIOHIDEventCallback()
{
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

{
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

uint64_t _timerNotificationFunc_cold_1(char **a1, mach_error_t error_value)
{
  v27 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = mach_error_string(error_value);
  asprintf(a1, "Timer failed with error: %s", v4);
  v5 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v22 = "_timerNotificationFunc";
    v23 = 1024;
    v24 = 134;
    v25 = 2080;
    v26 = mach_error_string(error_value);
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Timer failed with error: %s", v8, v9, v10, v11, v19, v20, 2u);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = v12;
    v14 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "_timerNotificationFunc";
      v23 = 1024;
      v24 = v13;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_system_stream_context_create_cold_1(v17);
}

void ps_system_stream_context_set_writer_inst_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_system_stream_context_set_ps_resource_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_system_stream_context_set_ariadne_id_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_system_stream_context_increment_sample_count_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_system_stream_context_set_keep_running_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_system_stream_context_set_stream_context_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_system_stream_context_set_wait_semaphore_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_system_stream_context_semaphore_wait_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_system_stream_context_semaphore_signal_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_system_stream_context_reset_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ps_system_stream_context_destroy_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "(%s): Invalid argument", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t allocatedCVPixelBufferIndexer_cold_1(char **a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceStream];
  v5 = [v4 key];
  asprintf(a1, "Indexer for key:(%s) called more times that the number of buffers allocated.", [v5 UTF8String]);

  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceStream];
    v8 = [v7 key];
    [v8 UTF8String];
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d Indexer for key:(%s) called more times that the number of buffers allocated.", v11, v12, v13, v14, v24, v25, v26);
  }

  if (OSLogFlushBuffers())
  {
    v15 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v24, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return allocatedIOSurfaceBufferIndexer_cold_1(v22);
}

uint64_t allocatedIOSurfaceBufferIndexer_cold_1(char **a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceStream];
  v5 = [v4 key];
  asprintf(a1, "Indexer for key:(%s) called more times that the number of buffers allocated.", [v5 UTF8String]);

  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceStream];
    v8 = [v7 key];
    [v8 UTF8String];
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d Indexer for key:(%s) called more times that the number of buffers allocated.", v11, v12, v13, v14, v24, v25, v26);
  }

  if (OSLogFlushBuffers())
  {
    v15 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v24, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return allocatedCVDataBufferIndexer_cold_1(v22);
}

uint64_t allocatedCVDataBufferIndexer_cold_1(char **a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceStream];
  v5 = [v4 key];
  asprintf(a1, "Indexer for key:(%s) called more times that the number of buffers allocated.", [v5 UTF8String]);

  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceStream];
    v8 = [v7 key];
    [v8 UTF8String];
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d Indexer for key:(%s) called more times that the number of buffers allocated.", v11, v12, v13, v14, v25, v26, v27);
  }

  if (OSLogFlushBuffers())
  {
    v15 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSBufferIndexer *)v22 allocateResources];
}

void ps_graph_compute_policy_apply_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v1, v2, "%s called on a non real-time graph", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ps_graph_compute_policy_apply_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v1, v2, "%s called before graph was submitted for execution", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t ps_frame_history_buffer_service_allocate_buffer(PSFrameHistoryBufferServiceClient *a1, void **a2, int a3)
{
  if (a1 && a2)
  {
    return PSFrameHistoryBufferServiceClient::reserveBuffer(a1, a3, a2);
  }

  else
  {
    return OUTLINED_FUNCTION_9_0();
  }
}

uint64_t ps_frame_history_buffer_service_deallocate_buffer(PSFrameHistoryBufferServiceClient *this, _DWORD *a2)
{
  if (this && a2)
  {
    return PSFrameHistoryBufferServiceClient::relinquishBuffer(this, a2);
  }

  else
  {
    return OUTLINED_FUNCTION_9_0();
  }
}

uint64_t ps_frame_history_buffer_service_map_string_with_hash(PSFrameHistoryBufferServiceClient *this, const char *a2, unint64_t a3)
{
  if (this && a2)
  {
    return PSFrameHistoryBufferServiceClient::mapStringWithHash(this, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_9_0();
  }
}

uint64_t ps_frame_history_buffer_service_request_snapshot(uint64_t a1, int a2)
{
  if (a1)
  {
    return PSFrameHistoryBufferServiceClient::requestFrameHistoryDump(a1, a2);
  }

  return a1;
}

uint64_t _getBufferHeader(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "_getBufferHeader", "buffer_desc.freq_idx < PS_FRAME_HISTORY_BUFFER_POOL_MAP_LENGTH && buffer_desc.buffer_idx < _frameHistoryBufferPoolDesc.bufferPoolDesc[buffer_desc.freq_idx].buffer_count");
  v2 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _getBufferHeader(v16);
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "_getBufferHeader", "buffer_header->buffer_header_magic == PS_FRAME_HISTORY_BUFFER_SERVICE_BUFFER_HDR_MAGIC");
  v2 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return PSFrameHistoryBufferServiceClient::init(v16);
}

uint64_t PSFrameHistoryBufferServiceClient::init(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "init", "_ctrl_header->frame_history_buffer_service_magic == PS_FRAME_HISTORY_BUFFER_SERVICE_CTRL_HDR_MAGIC");
  v2 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return PSFrameHistoryBufferServiceClient::relinquishBuffer(v16);
}

uint64_t PSFrameHistoryBufferServiceClient::relinquishBuffer(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "relinquishBuffer", "buffer_header->buffer_header_magic == PS_FRAME_HISTORY_BUFFER_SERVICE_BUFFER_HDR_MAGIC");
  v2 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return PSFrameHistoryBufferServiceClient::relinquishBuffer(v16);
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "_sendRequestToServerDeallocate", "ioret == kIOReturnSuccess");
  v2 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_frame_history_buffer_acquire_data_entry_cold_1(v16);
}

uint64_t ps_frame_history_buffer_acquire_data_entry_cold_1(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "ps_frame_history_buffer_acquire_data_entry", "counter.exec_state == NOT_IN_USE");
  v2 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_frame_history_buffer_relinquish_data_entry_cold_1(v16);
}

uint64_t ps_frame_history_buffer_relinquish_data_entry_cold_1(char **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "ps_frame_history_buffer_relinquish_data_entry", "counter.exec_state != NOT_IN_USE");
  v2 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _sendWaitRequestToServer(v16, v17);
}

uint64_t _sendWaitRequestToServer(char **a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "PSFrameHistoryBufferService: Failed to send request to server for msg action (%u)", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10_0(&dword_25EA3A000, v4, v5, "%s:%d PSFrameHistoryBufferService: Failed to send request to server for msg action (%u)", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return _sendWaitRequestToServer(v17, v18);
}

{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "PSFrameHistoryBufferService: Unknown reply received from server for msg action (%u)", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10_0(&dword_25EA3A000, v4, v5, "%s:%d PSFrameHistoryBufferService: Unknown reply received from server for msg action (%u)", v6, v7, v8, v9, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_frame_history_graph_metadata_set_submission_timestamp(v17);
}

uint64_t ps_frame_history_graph_metadata_set_submission_timestamp(uint64_t result)
{
  if (result)
  {
    graph_metadata = ps_frame_history_buffer_get_graph_metadata(result);
    result = mach_continuous_time();
    *(graph_metadata + 8) = result;
  }

  return result;
}

uint64_t ps_frame_history_graph_metadata_set_removal_timestamp(uint64_t result)
{
  if (result)
  {
    graph_metadata = ps_frame_history_buffer_get_graph_metadata(result);
    result = mach_continuous_time();
    *(graph_metadata + 24) = result;
  }

  return result;
}

uint64_t ps_frame_history_graph_metadata_set_graph_name(uint64_t result, uint64_t a2, const char *a3, char a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (result && a2)
  {
    if (a3)
    {
      v7 = -2128831035;
      v8 = *a3;
      if (*a3)
      {
        v9 = (a3 + 1);
        do
        {
          v7 = 16777619 * (v7 ^ v8);
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 0;
    }

    if ((ps_frame_history_buffer_service_map_string_with_hash(result, a3, v7) & 1) == 0)
    {
      v11 = __PSUtilitiesLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = a3;
        v15 = 1024;
        v16 = v7;
        _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "Failed to map frame history graph name (%s) with hash (%u)", &v13, 0x12u);
      }
    }

    result = ps_frame_history_buffer_get_graph_metadata(a2);
    *(result + 52) = v7;
    *(result + 66) = a4;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void ps_frame_history_graph_metadata_set_domain(PSFrameHistoryBufferServiceClient *a1, uint64_t a2, const char *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    graph_metadata = ps_frame_history_buffer_get_graph_metadata(a2);
    if (a3)
    {
      OUTLINED_FUNCTION_4_1();
      if (v7)
      {
        OUTLINED_FUNCTION_6_1();
        do
        {
          OUTLINED_FUNCTION_5_1(v8);
        }

        while (v9);
      }

      if ((ps_frame_history_buffer_service_map_string_with_hash(a1, a3, v3) & 1) == 0)
      {
        v10 = __PSUtilitiesLogSharedInstance();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_3();
          OUTLINED_FUNCTION_3_3(&dword_25EA3A000, v11, v12, "Failed to map frame history domain (%s) with hash (%u)", v13, v14, v15, v16, v19);
        }
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
      v3 = 0;
    }

    *(graph_metadata + 67) = v17;
    *(graph_metadata + 60) = v3;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void ps_frame_history_graph_metadata_add_input(PSFrameHistoryBufferServiceClient *a1, uint64_t a2, const char *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_4_1();
      if (v6)
      {
        OUTLINED_FUNCTION_6_1();
        do
        {
          OUTLINED_FUNCTION_5_1(v7);
        }

        while (v8);
      }
    }

    else
    {
      v3 = 0;
    }

    if ((ps_frame_history_buffer_service_map_string_with_hash(a1, a3, v3) & 1) == 0)
    {
      v9 = __PSUtilitiesLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_3();
        OUTLINED_FUNCTION_3_3(&dword_25EA3A000, v10, v11, "Failed to map frame history input (%s) with hash (%u)", v12, v13, v14, v15, v28);
      }
    }

    graph_metadata = ps_frame_history_buffer_get_graph_metadata(a2);
    v17 = graph_metadata;
    v18 = *(graph_metadata + 64);
    if (v18 < 0x41)
    {
      *(graph_metadata + 4 * v18 + 72) = v3;
      *(graph_metadata + 64) = v18 + 1;
    }

    else
    {
      v19 = __PSUtilitiesLogSharedInstance();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(v17 + 64);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2_3(&dword_25EA3A000, v21, v22, "Frame History Graph Metadata - graph_metadata->input_hashes_len=%u > FRAME_HISTORY_MAX_INPUTS=%u", v23, v24, v25, v26, v28);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t ps_frame_history_graph_metadata_set_frequency(uint64_t result, unsigned int a2)
{
  if (result)
  {
    result = ps_frame_history_buffer_get_graph_metadata(result);
    *(result + 40) = a2;
  }

  return result;
}

uint64_t ps_frame_history_graph_metadata_set_deadline(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = ps_frame_history_buffer_get_graph_metadata(result);
    *(result + 32) = a2;
  }

  return result;
}

void ps_frame_history_graph_metadata_add_output(PSFrameHistoryBufferServiceClient *a1, uint64_t a2, const char *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_4_1();
      if (v6)
      {
        OUTLINED_FUNCTION_6_1();
        do
        {
          OUTLINED_FUNCTION_5_1(v7);
        }

        while (v8);
      }
    }

    else
    {
      v3 = 0;
    }

    if ((ps_frame_history_buffer_service_map_string_with_hash(a1, a3, v3) & 1) == 0)
    {
      v9 = __PSUtilitiesLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_3();
        OUTLINED_FUNCTION_3_3(&dword_25EA3A000, v10, v11, "Failed to map frame history output (%s) with hash (%u)", v12, v13, v14, v15, v28);
      }
    }

    graph_metadata = ps_frame_history_buffer_get_graph_metadata(a2);
    v17 = graph_metadata;
    v18 = *(graph_metadata + 65);
    if (v18 < 0x41)
    {
      *(graph_metadata + 4 * v18 + 328) = v3;
      *(graph_metadata + 65) = v18 + 1;
    }

    else
    {
      v19 = __PSUtilitiesLogSharedInstance();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(v17 + 65);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2_3(&dword_25EA3A000, v21, v22, "Frame History Graph Metadata - graph_metadata->output_hashes_len=%u > FRAME_HISTORY_MAX_OUTPUTS=%u", v23, v24, v25, v26, v28);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void ps_frame_history_graph_metadata_set_stride_and_offset(uint64_t a1, int a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    graph_metadata = ps_frame_history_buffer_get_graph_metadata(a1);
    v6 = graph_metadata;
    if (*(graph_metadata + 65) < 0x41u)
    {
      *(graph_metadata + 56) = a2;
      *(graph_metadata + 48) = a3;
    }

    else
    {
      v7 = __PSUtilitiesLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(v6 + 65);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2_3(&dword_25EA3A000, v9, v10, "Frame History Graph Metadata - graph_metadata->output_hashes_len=%u > FRAME_HISTORY_MAX_OUTPUTS=%u", v11, v12, v13, v14, v16);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t ps_reader_block_acquire_cold_1(char **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unable to change state to _ACQUIRED. Ret %lu.", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unable to change state to _ACQUIRED. Ret %lu.", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_reader_block_relinquish_cold_1(v17, v18);
}

uint64_t ps_reader_block_relinquish_cold_1(char **a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unable to change state to _READY. Ret %lu.", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unable to change state to _READY. Ret %lu.", v6, v7, v8, v9, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return [PSReaderBlock initWithReader:v17 graph:? readerOptions:? resourceOptions:? withPRMManager:? forCABufferExpiry:? withFrameHistoryClientHandle:?];
}

uint64_t source_writer_func_cold_1(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Something is wrong. Aborting!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Something is wrong. Aborting!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return [(PSSourceWriterBlock *)v16 getWriterInstForKey:v17];
}

__uint64_t ps_exec_block_create_cold_1(char **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v11 = 136315394;
    v12 = "ps_exec_block_create";
    v13 = 1024;
    v14 = 89;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d OOM!", &v11, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ps_exec_block_create";
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v11, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  return ps_exec_block_execute_task_instance_cold_1(v7, v8, v9);
}

__uint64_t ps_exec_block_execute_task_instance_cold_1(int64x2_t *a1, int64x2_t *a2, char *a3)
{
  result = ps_util_check_sandbox_for_syscall_threadself();
  if (result)
  {
    thread_selfcounts();
    v7 = task_end_pmus();
    v8 = *(v7 + 16);
    a2[4] = vsubq_s64(*a1, *v7);
    a2[5] = vsubq_s64(a1[1], v8);
    v9 = *(v7 + 48);
    a2[6] = vsubq_s64(a1[2], *(v7 + 32));
    a2[7] = vsubq_s64(a1[3], v9);
    result = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    a2[8].i64[0] = result;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return result;
}

uint64_t ps_exec_block_execute_task_instance_cold_2(uint64_t result, int64x2_t *a2, int64x2_t *a3)
{
  if (result)
  {
    result = ps_util_check_sandbox_for_syscall_threadself();
    if (result)
    {
      v5 = task_end_pmus();
      thread_selfcounts();
      *a3 = vsubq_s64(*v5, *a2);
      a3[1] = vsubq_s64(v5[1], a2[1]);
      a3[2] = vsubq_s64(v5[2], a2[2]);
      a3[3] = vsubq_s64(v5[3], a2[3]);
      return ps_telemetry_emit_event_internal(5, a3->i8, 0x98uLL, 8);
    }
  }

  return result;
}

void cvdataBufferAllocator_cold_1()
{
  v1 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void cvdataBufferAllocator_cold_2(uint64_t *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v5))
  {
    v12 = *a1;
    v13 = *a2;
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v6, v7, v8, v9, v10, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t ps_task_wrapper_execute_sync_cold_1(char **a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unexpected outputs for task:%s", (a2 + 72));
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unexpected outputs for task:%s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_task_wrapper_execute_sync_cold_2(v16);
}

__uint64_t ps_task_wrapper_execute_sync_cold_2(int64x2_t *a1, char *a2)
{
  result = ps_util_check_sandbox_for_syscall_threadself();
  if (result)
  {
    thread_selfcounts();
    task_end_pmus_0();
    v5 = task_counters_0();
    v7 = v6[1];
    v5[4] = vsubq_s64(*a1, *v6);
    v5[5] = vsubq_s64(a1[1], v7);
    v8 = v6[3];
    v5[6] = vsubq_s64(a1[2], v6[2]);
    v5[7] = vsubq_s64(a1[3], v8);
    result = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v5[8].i64[0] = result;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t ps_task_wrapper_execute_sync_cold_3(uint64_t result, int64x2_t *a2)
{
  if (result)
  {
    result = ps_util_check_sandbox_for_syscall_threadself();
    if (result)
    {
      v3 = task_end_pmus_0();
      thread_selfcounts();
      v4 = task_counters_0();
      v5 = vsubq_s64(v3[1], a2[1]);
      *v4 = vsubq_s64(*v3, *a2);
      *(v4 + 16) = v5;
      v6 = vsubq_s64(v3[3], a2[3]);
      *(v4 + 32) = vsubq_s64(v3[2], a2[2]);
      *(v4 + 48) = v6;
      return ps_telemetry_emit_event_internal(5, v4, 0x98uLL, 8);
    }
  }

  return result;
}

uint64_t ps_task_wrapper_execute_sync_cold_4(char **a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unexpected outputs for task:%s", (a2 + 72));
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unexpected outputs for task:%s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_task_wrapper_create_cold_1(v16);
}

uint64_t ps_task_wrapper_create_cold_1(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Calloc failed for resource: %s", 0);
  v1 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Calloc failed for resource: %s", v4, v5, v6, v7, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v18, v19, v20);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v15 = OUTLINED_FUNCTION_0();
  return [(PSTransitionBlock *)v15 stringWithGraphFrequencyType:v16];
}

uint64_t _handleTimeoutBranching_cold_1(char **a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 localizedDescription];
  asprintf(a1, "%s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 localizedDescription];
    [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d %s", v9, v10, v11, v12, v23, v24, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_writer_block_acquire_cold_1(v20, v21);
}

uint64_t ps_writer_block_acquire_cold_1(char **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unable to change state to _ACQUIRED. Ret %lu.", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unable to change state to _ACQUIRED. Ret %lu.", v6, v7, v8, v9, v20, v21, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_writer_block_relinquish_cold_1(v17, v18);
}

uint64_t ps_writer_block_relinquish_cold_1(char **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unable to change state to _RELINQUISHED. Ret %lu.", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unable to change state to _RELINQUISHED. Ret %lu.", v6, v7, v8, v9, v20, v21, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_writer_block_publish_cold_1(v17, v18);
}

uint64_t ps_writer_block_publish_cold_1(char **a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unable to change state to _READY. Ret %lu.", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unable to change state to _READY. Ret %lu.", v6, v7, v8, v9, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v19, v20, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return [PSWriterBlock initWithWriter:v17 graph:? withStream:? withWriterOptions:? withPRMManager:? withDevice:? withResourceOptions:? withCAWriterDimensions:? withFrameHistoryClientHandle:?];
}

uint64_t ps_grouped_source_pool_add_input_cold_2(char **a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  resource_key = ps_prm_opts_get_resource_key(a2);
  asprintf(a1, "Synced input %s not allowed on GSP. Add to tasks", resource_key);
  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    ps_prm_opts_get_resource_key(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Synced input %s not allowed on GSP. Add to tasks", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_acquire_cold_1(v20);
}

uint64_t ps_grouped_source_pool_copy_data_cold_1(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "An object item %s must contain an object", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d An object item %s must contain an object", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_object_cold_1(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_object_cold_1(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "An object item %s must contain an object", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d An object item %s must contain an object", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_opaque_cold_1(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_opaque_cold_1(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "An opaque item %s must contain an opaque object", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d An opaque item %s must contain an opaque object", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_surface_cold_1(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_surface_cold_1(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "A surface item %s must contain an IOSurface", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d A surface item %s must contain an IOSurface", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_pixel_buffer_cold_1(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_pixel_buffer_cold_1(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid metadata type found for resource %s", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid metadata type found for resource %s", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_pixel_buffer_cold_2(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_pixel_buffer_cold_2(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "A pixel buffer item %s must contain a pixel buffer", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d A pixel buffer item %s must contain a pixel buffer", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_data_buffer_cold_1(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_data_buffer_cold_1(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid metadata type found for resource %s", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid metadata type found for resource %s", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_data_buffer_cold_2(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_data_buffer_cold_2(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "A data buffer item %s must contain a data buffer", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d A data buffer item %s must contain a data buffer", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_jasper_buffer_cold_1(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_jasper_buffer_cold_1(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "'None' metadata not supported for Jasper, key %s", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d 'None' metadata not supported for Jasper, key %s", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_jasper_buffer_cold_2(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_jasper_buffer_cold_2(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid metadata type found for resource %s", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid metadata type found for resource %s", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_jasper_buffer_cold_3(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_jasper_buffer_cold_3(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "A jasper buffer item %s must contain a jasper buffer", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d A jasper buffer item %s must contain a jasper buffer", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_ane_buffer_cold_1(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_ane_buffer_cold_1(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "A jasper buffer item %s must contain a jasper buffer", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d A jasper buffer item %s must contain a jasper buffer", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_pearl_buffer_cold_1(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_pearl_buffer_cold_1(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "'None' metadata not supported for Pearl, key %s", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d 'None' metadata not supported for Pearl, key %s", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_pearl_buffer_cold_2(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_pearl_buffer_cold_2(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid metadata type found for resource %s", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid metadata type found for resource %s", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_pearl_buffer_cold_3(v17, v18);
}

uint64_t ps_grouped_source_pool_copy_pearl_buffer_cold_3(char **a1, const char *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "A pearl buffer item %s must contain a pearl buffer", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d A pearl buffer item %s must contain a pearl buffer", v6, v7, v8, v9, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_resource_cold_1(v17);
}

uint64_t ps_grouped_source_pool_copy_resource_cold_1(char **a1)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  key = ps_resource_get_key();
  asprintf(a1, "Received an invalid class type for resource %s", key);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Received an invalid class type for resource %s", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_resource_cold_2(v18);
}

uint64_t ps_task_input_resource_acquire_cold_2(char **a1, uint64_t *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v5 = *a2;
  key = ps_resource_get_key();
  asprintf(a1, "Buffer expiry not set for key (%s)", key);
  v7 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = *a2;
    ps_resource_get_key();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d Buffer expiry not set for key (%s)", v11, v12, v13, v14, v24, v25, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v15 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v24, v25, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return ps_task_input_check_buffer_expiration_cold_1(v22);
}

uint64_t ps_task_input_check_buffer_expiration_cold_1(char **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  key = ps_resource_get_key();
  asprintf(a1, "Buffer usage completion was not set for resource %s", key);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Buffer usage completion was not set for resource %s", v7, v8, v9, v10, v20, v21, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_output_resource_create_cold_1(v18);
}

uint64_t ps_task_output_resource_create_cold_1(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d OOM!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_task_output_resource_create_cold_2(v16);
}

uint64_t ps_task_output_resource_create_cold_2(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d OOM!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_task_output_resource_create_cold_3(v16);
}

uint64_t ps_task_output_resource_create_cold_3(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d OOM!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_task_output_resource_create_cold_4(v16);
}

uint64_t ps_task_output_resource_create_cold_4(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d OOM!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_task_output_resource_create_cold_5(v16);
}

void ps_task_output_resource_create_cold_5(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to allocate memory!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Failed to allocate memory!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  ps_task_output_resource_attach_retained_input_cold_1(v16);
}

void ps_task_output_resource_destroy_cold_1(char **a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v5 = *(a2 + 16);
  key = ps_resource_get_key();
  asprintf(a1, "Unreleased retained input found for output %s. Plaese destroy retained inputs first.", key);
  v7 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = *(a2 + 16);
    *buf = 136315650;
    v13 = "ps_task_output_resource_destroy";
    v14 = 1024;
    v15 = 141;
    v16 = 2080;
    v17 = ps_resource_get_key();
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Unreleased retained input found for output %s. Plaese destroy retained inputs first.", buf, 0x1Cu);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      *buf = 136315394;
      v13 = "ps_task_output_resource_destroy";
      v14 = 1024;
      v15 = v10;
      _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_task_output_resource_destroy_retained_inputs_cold_1();
}

uint64_t ps_task_resources_create_cold_2(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to allocate memory!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Failed to allocate memory!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_task_resources_create_cold_3(v16);
}

uint64_t ps_task_resources_create_cold_3(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to allocate memory!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Failed to allocate memory!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_task_resources_create_cold_4(v16);
}

uint64_t ps_task_resources_create_cold_4(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to allocate memory!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Failed to allocate memory!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_task_resources_destroy_cold_1(v16);
}

void ps_task_resources_destroy_cold_1(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Task resources (inputs or outputs) not freed before freeing the parent.");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Task resources (inputs or outputs) not freed before freeing the parent.", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_task_resources_add_input_cold_1();
}

void ps_task_resources_add_input_cold_3(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "no valid synced resource ID provided for synced input");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d no valid synced resource ID provided for synced input", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  ps_task_resources_add_output_cold_1(v16);
}

void PRMANEReaderInstance::PRMANEReaderInstance(NSObject *a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "PRMANEReaderInstance";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_25EA3A000, a1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t PRMANEReaderInstance::waitForNewResourceWithFrameID(char **a1, PRMReaderInstance *this)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PRMReaderInstance::getKey(this);
  asprintf(a1, "waitForNewResourceWithFrameID Not Suported for key %s", Key);
  v5 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    PRMReaderInstance::getKey(this);
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d waitForNewResourceWithFrameID Not Suported for key %s", v8, v9, v10, v11, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMANEReaderInstance::waitForNewResourceAndGetFrameID(v19, v20);
}

uint64_t PRMANEReaderInstance::waitForNewResourceAndGetFrameID(char **a1, PRMReaderInstance *this)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PRMReaderInstance::getKey(this);
  asprintf(a1, "waitForNewResourceAndGetFrameID Not Suported for key %s", Key);
  v5 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    PRMReaderInstance::getKey(this);
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d waitForNewResourceAndGetFrameID Not Suported for key %s", v8, v9, v10, v11, v21, v22, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMAneWriter::init(v19);
}

void PRMAneWriter::init()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void PRMAneWriter::publish()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::SurfaceList::SurfaceList()
{
  OUTLINED_FUNCTION_2_4();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::PixelBufferList::PixelBufferList()
{
  OUTLINED_FUNCTION_2_4();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::DataBufferList::DataBufferList()
{
  OUTLINED_FUNCTION_2_4();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::SurfaceList::getBufferWithIndex(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "bufferIndex < m_size");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getBufferWithIndex(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getBufferWithIndex(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getBufferWithIndex(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_surfaceListBufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getBufferWithIndex(v15);
}

void PRM::Camera::PixelBufferList::getBufferWithIndex(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "bufferIndex < m_size");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getBufferWithIndex(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "cvpixelbuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getBufferWithIndex(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getBufferWithIndex(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_pixelbufferListBufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getBufferWithIndex(v15);
}

void PRM::Camera::DataBufferList::getBufferWithIndex(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "bufferIndex < m_size");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getBufferWithIndex(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "cvdatabuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getBufferWithIndex(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getBufferWithIndex(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_databufferListBufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v15);
}

void PRM::Camera::SurfaceList::getIndexWithBuffer(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.buffer_type == m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index < m_size");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index_int >= 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_surfaceListBufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v15);
}

void PRM::Camera::PixelBufferList::getIndexWithBuffer(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.buffer_type == m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index < m_size || buffer_index == BufferIndexInvalid");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index >= 0 || buffer_index == BufferIndexInvalid");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.cvpixelbuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_pixelbufferListBufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v15);
}

void PRM::Camera::DataBufferList::getIndexWithBuffer(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.buffer_type == m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index < m_size");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index >= 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.cvdatabuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_databufferListBufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getSize(v15);
}

void PRM::Camera::SurfaceList::getSize(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getSize(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_surfaceListBufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getSize(v15);
}

void PRM::Camera::PixelBufferList::getSize(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getSize(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_pixelbufferListBufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getSize(v15);
}

void PRM::Camera::DataBufferList::getSize(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getSize(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_databufferListBufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(v15);
}

void PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "ViewIndexBufferIndexMap", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "ViewIndexBufferIndexMap", "bufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v15);
}

void PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferIndexWithView", "viewIndex < m_size");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferIndexWithView", "*buffer_index_ref >= 0 || *buffer_index_ref == BufferIndexInvalid");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferIndexWithView", "buffer_index_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferIndexWithView", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferIndexWithView", "m_bufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(v15);
}

void PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferIndexWithView", "viewIndex < m_size");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferIndexWithView", "buffer_index_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferIndexWithView", "m_size > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferIndexWithView", "m_bufflet");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::BufferPool::BufferPool(v15);
}

void PRM::Camera::BufferPool::BufferPool(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList->getSize() >= m_viewIndexBufferIndexMap->getSize()");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "viewIndexBufferIndexMap");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "bufferListBufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList->getSize() >= m_viewIndexBufferIndexMap->getSize()");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "viewIndexBufferIndexMap");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "bufferListBufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList->getSize() >= m_viewIndexBufferIndexMap->getSize()");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "viewIndexBufferIndexMap");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "bufferListBufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

uint64_t PRM::Camera::BufferPool::getBufferListSize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferListSize", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

uint64_t PRM::Camera::BufferPool::getBufferList(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "buffer.buffer_type == m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "BufferTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "buffer.cvpixelbuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "buffer.cvdatabuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "buffer.iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "buffer.buffer_type");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Unknown option detected for type: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "m_bufferList->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "iosurfaceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getSurface(v15);
}

uint64_t PRM::Camera::BufferPool::getSurface(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSurface", "buffer.buffer_type == m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getSurface(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSurface", "buffer.cvdatabuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getSurface(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSurface", "buffer.cvpixelbuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getSurface(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSurface", "buffer.iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getSurface(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getSurface", "m_bufferType != BufferTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::incrementPolarisUseCount(v15);
}

uint64_t PRM::Camera::BufferPool::incrementPolarisUseCount(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "incrementPolarisUseCount", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::decrementPolarisUseCount(v15);
}

uint64_t PRM::Camera::BufferPool::decrementPolarisUseCount(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "decrementPolarisUseCount", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getInUse(v15);
}

uint64_t PRM::Camera::BufferPool::getInUse(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getInUse", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v15);
}

uint64_t PRM::Camera::OpenLoopBufferPool::getBufferWithResource(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer_index < m_bufferList->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer.buffer_type == m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "resource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferType != BufferTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_viewIndexBufferIndexMap");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v15);
}

uint64_t PRM::Camera::OpenLoopBufferPool::setBufferWithResource(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "buffer.buffer_type == m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "buffer_index < m_bufferList->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "view_index >= 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "resource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferType != BufferTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_viewIndexBufferIndexMap");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::reserveBuffers(v15);
}