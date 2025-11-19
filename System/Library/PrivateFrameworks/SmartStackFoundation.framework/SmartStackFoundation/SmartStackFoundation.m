uint64_t SSFIsInternalBuild()
{
  if (SSFIsInternalBuild_onceToken[0] != -1)
  {
    SSFIsInternalBuild_cold_1();
  }

  return SSFIsInternalBuild_internal;
}

uint64_t __SSFIsInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  SSFIsInternalBuild_internal = result;
  return result;
}

uint64_t CountedSet.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v7 = sub_26A06202C();
  v8 = sub_26A054FDC(v7, a1, v6, a2);

  *a3 = v8;
  return result;
}

void CountedSet.isEmpty.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  JUMPOUT(0x26D658B90);
}

uint64_t CountedSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v28 = v11;
  *v3 = 0x8000000000000000;
  v12 = *(a2 + 24);
  v13 = sub_26A054DF8(a1, v6, v12);
  if (__OFADD__(*(v11 + 16), (v14 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v13;
  v16 = v14;
  sub_26A0622EC();
  v17 = sub_26A0622CC();
  v18 = v28;
  if ((v17 & 1) == 0)
  {
LABEL_5:
    v21 = *v3;

    *v3 = v18;
    if ((v16 & 1) == 0)
    {
      v28 = 0;
      (*(v27 + 16))(v9, a1, v6);
      result = sub_26A0622DC();
    }

    v23 = *(v18 + 56);
    v24 = *(v23 + 8 * v15);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      *(v23 + 8 * v15) = v26;
      return result;
    }

    goto LABEL_10;
  }

  v19 = sub_26A054DF8(a1, v6, v12);
  if ((v16 & 1) == (v20 & 1))
  {
    v15 = v19;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_26A06237C();
  __break(1u);
  return result;
}

uint64_t CountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v11 = *(v10 + 24);
  result = sub_26A061EAC();
  if ((v16 & 1) == 0)
  {
    v13 = v15;
    result = (*(v5 + 16))(v8, a1, v4);
    if (__OFSUB__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = v13 - 1;
      v16 = 0;
      sub_26A061E9C();
      sub_26A061EBC();
      v14 = *v2;
      result = sub_26A061EAC();
      if ((v16 & 1) == 0 && !v15)
      {
        return sub_26A061E6C();
      }
    }
  }

  return result;
}

BOOL CountedSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_26A061EAC();
  return (v7 & 1) == 0;
}

uint64_t CountedSet.count(of:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_26A061EAC();
  if (v8)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t default argument 1 of CurrentValueStream.init(_:bufferingPolicy:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85778];
  v3 = sub_26A0620CC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26A054930(uint64_t a1, id *a2)
{
  result = sub_26A061F0C();
  *a2 = 0;
  return result;
}

uint64_t sub_26A0549A8(uint64_t a1, id *a2)
{
  v3 = sub_26A061F1C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26A054A28@<X0>(uint64_t *a1@<X8>)
{
  sub_26A061F2C();
  v2 = sub_26A061EFC();

  *a1 = v2;
  return result;
}

uint64_t sub_26A054A70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26A061F2C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_26A054A9C(uint64_t a1)
{
  v2 = sub_26A0555A8(&qword_280368120, type metadata accessor for URLResourceKey);
  v3 = sub_26A0555A8(qword_280368128, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26A054B58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26A061EFC();

  *a2 = v5;
  return result;
}

uint64_t sub_26A054BA0(uint64_t a1)
{
  v2 = sub_26A0555A8(&qword_280368110, type metadata accessor for FileAttributeKey);
  v3 = sub_26A0555A8(&qword_280368118, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26A054C60()
{
  v1 = *v0;
  v2 = sub_26A061F2C();
  v3 = MEMORY[0x26D658CC0](v2);

  return v3;
}

uint64_t sub_26A054CA0()
{
  v1 = *v0;
  sub_26A061F2C();
  sub_26A061F5C();
}

uint64_t sub_26A054CF8()
{
  v1 = *v0;
  sub_26A061F2C();
  sub_26A06238C();
  sub_26A061F5C();
  v2 = sub_26A0623AC();

  return v2;
}

uint64_t sub_26A054D70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26A061F2C();
  v6 = v5;
  if (v4 == sub_26A061F2C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26A06235C();
  }

  return v9 & 1;
}

unint64_t sub_26A054DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_26A061ECC();

  return sub_26A054E54(a1, v9, a2, a3);
}

unint64_t sub_26A054E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_26A061EEC();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_26A054FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v23 - v11;
  if (sub_26A06204C())
  {
    sub_26A06230C();
    v13 = sub_26A0622FC();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_26A06204C();
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
        if (sub_26A06203C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_26A06228C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_26A054DF8(v12, a2, v27);
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

uint64_t sub_26A0552C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A05531C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26A055364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A0553B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_26A061E7C();

  return swift_getWitnessTable();
}

uint64_t sub_26A055418(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A055438(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_26A0554CC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_26A0555A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CurrentValueStream.__allocating_init(_:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = sub_26A056440(a1, a2);
  v9 = *(v3 + 80);
  v10 = sub_26A0620CC();
  (*(*(v10 - 8) + 8))(a2, v10);
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

uint64_t CurrentValueStream.init(_:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_26A056440(a1, a2);
  v7 = *(v5 + 80);
  v8 = sub_26A0620CC();
  (*(*(v8 - 8) + 8))(a2, v8);
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void CurrentValueStream.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  v6 = sub_26A061DCC();
  (*(*(v5 - 8) + 16))(a1, v4 + *(v6 + 28), v5);

  os_unfair_lock_unlock(v4);
}

uint64_t CurrentValueStream.value.setter(uint64_t a1)
{
  v3 = *v1;
  sub_26A056690(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t sub_26A0559F8(char *a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v24 - v8;
  v28 = sub_26A0620BC();
  v25 = *(v28 - 8);
  v9 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v24 - v10;
  v12 = sub_26A0620EC();
  v13 = *(v12 - 8);
  v24 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v24 - v14;
  (*(v6 + 8))(a1, v5);
  v16 = *(v6 + 16);
  v31 = v5;
  v32 = a2;
  v30 = v6 + 16;
  v27 = v16;
  v16(a1, a2, v5);
  v17 = v2 + *(*v2 + 104);
  os_unfair_lock_lock(v17);
  v18 = *(v17 + 8);
  sub_26A06208C();

  os_unfair_lock_unlock(v17);
  if (sub_26A06204C())
  {
    v19 = 0;
    v26 = (v13 + 16);
    v20 = (v25 + 8);
    while (1)
    {
      v21 = sub_26A06203C();
      sub_26A06201C();
      if (v21)
      {
        (*(v13 + 16))(v15, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19, v12);
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_26A06228C();
        if (v24 != 8)
        {
          __break(1u);
          return result;
        }

        v33 = result;
        (*v26)(v15, &v33, v12);
        swift_unknownObjectRelease();
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      v27(v29, v32, v31);
      sub_26A0620DC();
      (*v20)(v11, v28);
      (*(v13 + 8))(v15, v12);
      ++v19;
      if (v22 == sub_26A06204C())
      {
      }
    }
  }
}

void (*CurrentValueStream.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  CurrentValueStream.value.getter(v9);
  return sub_26A055EF0;
}

void sub_26A055EF0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_26A056690(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_26A056690((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CurrentValueStream.stream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_26A0620EC();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18[-v8];
  v10 = sub_26A0620FC();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v18[-v13];
  v15 = *(v3 + 96);
  sub_26A0620AC();
  v16 = (v1 + *(*v1 + 104));
  os_unfair_lock_lock(v16);
  sub_26A0561C4(&v16[2], v9);
  sub_26A06208C();
  os_unfair_lock_unlock(v16);
  (*(v11 + 32))(a1, v14, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26A0561C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_26A0620EC();
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  (*(v6 + 16))(&v8 - v5, a2, v3);
  sub_26A06208C();
  return sub_26A06205C();
}

uint64_t CurrentValueStream.deinit()
{
  v1 = v0 + *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(sub_26A061DCC() + 28);
  v4 = *(sub_26A061DDC() + 16);
  sub_26A0621DC();
  v5 = *(*v0 + 96);
  v6 = sub_26A0620CC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = v0 + *(*v0 + 104);
  sub_26A0620EC();
  sub_26A06208C();
  v8 = *(sub_26A061DDC() + 16);
  sub_26A0621DC();
  return v0;
}

uint64_t CurrentValueStream.__deallocating_deinit()
{
  CurrentValueStream.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A056440(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = (sub_26A061DCC() - 8);
  v11 = *(*v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = (&v20 - v12);
  (*(v6 + 16))(v9, a1, v5);
  *v13 = 0;
  v14 = v10[9];
  v15 = sub_26A061DDC();
  bzero(v13 + v14, *(*(v15 - 8) + 64));
  sub_26A05DD08(v9, v13 + v14, v5);
  memcpy((v2 + *(*v2 + 88)), v13, v11);
  v16 = *(*v2 + 96);
  v17 = sub_26A0620CC();
  (*(*(v17 - 8) + 16))(v2 + v16, a2, v17);
  sub_26A0620EC();
  v21 = sub_26A06202C();
  LODWORD(v22) = 0;
  *(&v22 + 1) = 0;
  v18 = sub_26A06208C();
  sub_26A05DD08(&v21, &v22 + 8, v18);
  *(v2 + *(*v2 + 104)) = v22;
  return v2;
}

void sub_26A056690(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  v6 = sub_26A061DCC();
  sub_26A0559F8(v4 + *(v6 + 28), a1);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_26A056780(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_26A061DCC();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_26A0620CC();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26A0568A4(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  return sub_26A061DCC();
}

uint64_t sub_26A0568E4(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  sub_26A0620EC();
  sub_26A06208C();
  return sub_26A061DCC();
}

char *static DarwinNotificationCenter.addObserver(notificationName:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  v9 = type metadata accessor for DarwinNotificationCenter.Subscription();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  sub_26A061D7C();
  v13 = &v12[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_name];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v12[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_handler];
  *v14 = a3;
  *(v14 + 1) = a4;

  v15 = sub_26A061EFC();
  CFNotificationCenterAddObserver(v8, v12, sub_26A056A70, v15, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v12;
}

uint64_t type metadata accessor for DarwinNotificationCenter.Subscription()
{
  result = qword_2803681C0;
  if (!qword_2803681C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A056A70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_handler);
    v2 = *(a2 + OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_handler + 8);

    v3(v4);
  }
}

void static DarwinNotificationCenter.notify(_:)()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = sub_26A061EFC();
  CFNotificationCenterPostNotification(v0, v1, 0, 0, 1u);
}

uint64_t DarwinNotificationCenter.Subscription.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_id;
  v4 = sub_26A061D8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *DarwinNotificationCenter.Subscription.deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = &v0[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_name];
  v3 = *&v0[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_name];
  v4 = *&v0[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_name + 8];

  v5 = sub_26A061EFC();

  CFNotificationCenterRemoveObserver(v1, v0, v5, 0);

  v6 = OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_id;
  v7 = sub_26A061D8C();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(v2 + 1);

  v9 = *&v0[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_handler + 8];

  return v0;
}

uint64_t DarwinNotificationCenter.Subscription.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = &v0[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_name];
  v3 = *&v0[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_name];
  v4 = *&v0[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_name + 8];

  v5 = sub_26A061EFC();

  CFNotificationCenterRemoveObserver(v1, v0, v5, 0);

  v6 = OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_id;
  v7 = sub_26A061D8C();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(v2 + 1);

  v9 = *&v0[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_handler + 8];

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v10, v11);
}

uint64_t DarwinNotificationCenter.Subscription.hash(into:)()
{
  sub_26A061D8C();
  sub_26A05711C(&qword_2803681B0, MEMORY[0x277CC95F0]);
  return sub_26A061EDC();
}

uint64_t DarwinNotificationCenter.Subscription.hashValue.getter()
{
  sub_26A06238C();
  sub_26A061D8C();
  sub_26A05711C(&qword_2803681B0, MEMORY[0x277CC95F0]);
  sub_26A061EDC();
  return sub_26A0623AC();
}

uint64_t sub_26A056F10()
{
  v1 = *v0;
  sub_26A06238C();
  sub_26A061D8C();
  sub_26A05711C(&qword_2803681B0, MEMORY[0x277CC95F0]);
  sub_26A061EDC();
  return sub_26A0623AC();
}

uint64_t sub_26A056FB0()
{
  v1 = *v0;
  sub_26A061D8C();
  sub_26A05711C(&qword_2803681B0, MEMORY[0x277CC95F0]);
  return sub_26A061EDC();
}

uint64_t sub_26A057038()
{
  v1 = *v0;
  sub_26A06238C();
  sub_26A061D8C();
  sub_26A05711C(&qword_2803681B0, MEMORY[0x277CC95F0]);
  sub_26A061EDC();
  return sub_26A0623AC();
}

uint64_t sub_26A05711C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A0571AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_id;
  v5 = sub_26A061D8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t getEnumTagSinglePayload for DarwinNotificationCenter(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DarwinNotificationCenter(_WORD *result, int a2, int a3)
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

uint64_t sub_26A05732C()
{
  result = sub_26A061D8C();
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

uint64_t DiagnosticFileFormat.hashValue.getter()
{
  v1 = *v0;
  sub_26A06238C();
  MEMORY[0x26D6590A0](v1);
  return sub_26A0623AC();
}

uint64_t sub_26A057490()
{
  v1 = *v0;
  sub_26A06238C();
  MEMORY[0x26D6590A0](v1);
  return sub_26A0623AC();
}

uint64_t sub_26A057504()
{
  v1 = *v0;
  sub_26A06238C();
  MEMORY[0x26D6590A0](v1);
  return sub_26A0623AC();
}

uint64_t sub_26A057548()
{
  v0 = type metadata accessor for DiagnosticsCache();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26A0575E4();
  qword_2803681D0 = result;
  return result;
}

uint64_t static DiagnosticsCache.shared.getter()
{
  if (qword_280368030 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26A0575E4()
{
  v1 = sub_26A061E1C();
  v2 = *(v1 - 8);
  v27 = v1;
  v28 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v24 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A06219C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v23[1] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A061E3C();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26A0621AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cacheDirectory;
  v18 = sub_26A061CFC();
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  *(v0 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cachedFiles) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_formatter) = 0;
  sub_26A061DFC();
  sub_26A05C6E8();
  (*(v13 + 104))(v16, *MEMORY[0x277D85268], v12);
  sub_26A061E2C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26A05C734(&qword_280368298, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803682A0, &qword_26A063098);
  sub_26A05C77C(&qword_2803682A8, &qword_2803682A0, &qword_26A063098);
  sub_26A06222C();
  *(v0 + 16) = sub_26A0621CC();
  aBlock[4] = sub_26A05C7D0;
  v31 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A057DB0;
  aBlock[3] = &block_descriptor_32;
  v19 = _Block_copy(aBlock);
  swift_retain_n();
  sub_26A061E2C();
  v29 = MEMORY[0x277D84F90];
  sub_26A05C734(&qword_2803681D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681E0, &qword_26A062F50);
  sub_26A05C77C(&qword_2803681E8, &qword_2803681E0, &qword_26A062F50);
  v20 = v24;
  v21 = v27;
  sub_26A06222C();
  MEMORY[0x26D658EC0](0, v11, v20, v19);
  _Block_release(v19);

  (*(v28 + 8))(v20, v21);
  (*(v25 + 8))(v11, v26);

  return v0;
}

uint64_t sub_26A057B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681F8, &qword_26A062F58);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  sub_26A057DF4(&v10[-v5]);
  v7 = sub_26A061CFC();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cacheDirectory;
  swift_beginAccess();
  sub_26A05C7D8(v6, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_26A057DB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_26A057DF4(char *a1@<X8>)
{
  v114[4] = *MEMORY[0x277D85DE8];
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368238, &qword_26A063068) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = &v87 - v3;
  v111 = sub_26A061D5C();
  v100 = *(v111 - 8);
  v5 = *(v100 + 64);
  (MEMORY[0x28223BE20])();
  v104 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26A061CFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v99 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v87 - v12;
  v14 = sub_26A061DBC();
  v102 = *(v14 - 8);
  v103 = v14;
  v15 = *(v102 + 64);
  MEMORY[0x28223BE20](v14);
  v113 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26A061CAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A061CBC();
  v114[0] = 0xD000000000000018;
  v114[1] = 0x800000026A063840;
  (*(v18 + 104))(v21, *MEMORY[0x277CC91C0], v17);
  sub_26A05ABD8();
  sub_26A061CEC();
  (*(v18 + 8))(v21, v17);
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_26A061CCC();
  v114[0] = 0;
  LODWORD(v17) = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:v114];

  if (v17)
  {
    v112 = v7;
    v24 = v114[0];
    sub_26A061DAC();
    v25 = sub_26A061CCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368248, &qword_26A063070);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26A062F40;
    v27 = *MEMORY[0x277CBE7C0];
    *(v26 + 32) = *MEMORY[0x277CBE7C0];
    type metadata accessor for URLResourceKey(0);
    v97 = a1;
    v28 = v27;
    v29 = sub_26A061FEC();

    v114[0] = 0;
    v30 = [v22 contentsOfDirectoryAtURL:v25 includingPropertiesForKeys:v29 options:0 error:v114];

    v31 = v114[0];
    if (v30)
    {
      v110 = v22;
      v32 = v112;
      v33 = sub_26A061FFC();
      v34 = v31;

      v107 = *(v33 + 16);
      if (v107)
      {
        v36 = 0;
        v109 = v8 + 16;
        v94 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_log;
        v98 = (v100 + 48);
        v105 = *MEMORY[0x277CCA108];
        v106 = (v100 + 56);
        v96 = (v100 + 32);
        v108 = (v8 + 8);
        v100 += 8;
        *&v35 = 136446466;
        v93 = v35;
        v95 = v4;
        while (1)
        {
          if (v36 >= *(v33 + 16))
          {
            __break(1u);
          }

          v38 = *(v8 + 16);
          v38(v13, v33 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v36, v32);
          sub_26A061CDC();
          v39 = sub_26A061EFC();

          v114[0] = 0;
          v40 = [v110 attributesOfItemAtPath:v39 error:v114];

          v41 = v114[0];
          if (!v40)
          {
            v83 = v114[0];

            sub_26A061C9C();

            swift_willThrow();
            v84 = *v108;
            v85 = v112;
            (*v108)(v13, v112);
            (*(v102 + 8))(v113, v103);
            v84(v97, v85);
            goto LABEL_27;
          }

          type metadata accessor for FileAttributeKey(0);
          sub_26A05C734(&qword_280368110, type metadata accessor for FileAttributeKey);
          v42 = sub_26A061E5C();
          v43 = v41;

          if (!*(v42 + 16))
          {
            break;
          }

          v44 = sub_26A05B1F4(v105);
          if ((v45 & 1) == 0)
          {
            break;
          }

          sub_26A05B288(*(v42 + 56) + 32 * v44, v114);

          v46 = v111;
          v47 = swift_dynamicCast();
          (*v106)(v4, v47 ^ 1u, 1, v46);
          v48 = (*v98)(v4, 1, v46);
          v32 = v112;
          if (v48 == 1)
          {
            (*v108)(v13, v112);
            goto LABEL_6;
          }

          v49 = v4;
          v50 = v104;
          (*v96)(v104, v49, v46);
          if (sub_26A061D9C())
          {
            (*v100)(v50, v46);
          }

          else
          {
            v51 = sub_26A061CCC();
            v114[0] = 0;
            v52 = [v110 removeItemAtURL:v51 error:v114];

            if (!v52)
            {
              v55 = v114[0];
              v56 = v32;
              v57 = sub_26A061C9C();

              swift_willThrow();
              v101 = 0;
              v58 = v99;
              v38(v99, v13, v56);
              v59 = v57;
              v60 = sub_26A061DEC();
              v61 = sub_26A06217C();

              v62 = os_log_type_enabled(v60, v61);
              v4 = v95;
              if (v62)
              {
                v63 = swift_slowAlloc();
                v87 = v63;
                v90 = swift_slowAlloc();
                v91 = swift_slowAlloc();
                v114[0] = v91;
                *v63 = v93;
                sub_26A05C734(&qword_280368250, MEMORY[0x277CC9260]);
                v89 = v60;
                v64 = v99;
                v88 = v61;
                v65 = v112;
                v66 = sub_26A06233C();
                v67 = v64;
                v68 = v66;
                v70 = v69;
                v92 = *v108;
                v92(v67, v65);
                v71 = sub_26A060480(v68, v70, v114);

                v72 = v87;
                *(v87 + 1) = v71;
                *(v72 + 6) = 2114;
                v73 = v72;
                v74 = v57;
                v75 = _swift_stdlib_bridgeErrorToNSError();
                *(v73 + 14) = v75;
                v76 = v90;
                *v90 = v75;
                v77 = v89;
                _os_log_impl(&dword_26A053000, v89, v88, "Failed to clear %{public}s: %{public}@", v73, 0x16u);
                sub_26A05B2E4(v76, &qword_280368258, &qword_26A063078);
                MEMORY[0x26D6595F0](v76, -1, -1);
                v78 = v91;
                __swift_destroy_boxed_opaque_existential_0(v91);
                MEMORY[0x26D6595F0](v78, -1, -1);
                MEMORY[0x26D6595F0](v73, -1, -1);

                (*v100)(v104, v111);
                v32 = v112;
                v92(v13, v112);
              }

              else
              {

                v79 = v58;
                v80 = *v108;
                v32 = v112;
                (*v108)(v79, v112);
                (*v100)(v104, v111);
                v80(v13, v32);
              }

              goto LABEL_7;
            }

            v53 = *v100;
            v54 = v114[0];
            v53(v104, v111);
          }

          (*v108)(v13, v32);
          v4 = v95;
LABEL_7:
          ++v36;
          v37 = v113;
          if (v107 == v36)
          {
            goto LABEL_25;
          }
        }

        v32 = v112;
        (*v108)(v13, v112);
        (*v106)(v4, 1, 1, v111);
LABEL_6:
        sub_26A05B2E4(v4, &qword_280368238, &qword_26A063068);
        goto LABEL_7;
      }

      v37 = v113;
LABEL_25:
      (*(v102 + 8))(v37, v103);
    }

    else
    {
      v82 = v114[0];
      sub_26A061C9C();

      swift_willThrow();
      (*(v102 + 8))(v113, v103);
      (*(v8 + 8))(v97, v112);
    }
  }

  else
  {
    v81 = v114[0];
    sub_26A061C9C();

    swift_willThrow();
    (*(v8 + 8))(a1, v7);
  }

LABEL_27:
  v86 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26A058AA8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v10 = sub_26A061E1C();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26A061E3C();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a4;
  type metadata accessor for SendableStateDump();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  v23 = *(v5 + 16);
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = v19;
  *(v20 + 48) = v18;
  aBlock[4] = sub_26A059C74;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A057DB0;
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);

  sub_26A061E2C();
  v26 = MEMORY[0x277D84F90];
  sub_26A05C734(&qword_2803681D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681E0, &qword_26A062F50);
  sub_26A05C77C(&qword_2803681E8, &qword_2803681E0, &qword_26A062F50);
  sub_26A06222C();
  MEMORY[0x26D658EC0](0, v17, v13, v21);
  _Block_release(v21);

  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

void sub_26A058DE4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v125 = a5;
  v126 = a4;
  *&v128 = a2;
  v136 = *MEMORY[0x277D85DE8];
  v124 = sub_26A061CAC();
  v123 = *(v124 - 8);
  v7 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v122 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A061D5C();
  v127 = *(v9 - 8);
  v10 = *(v127 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681F8, &qword_26A062F58);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v112 - v15;
  v17 = sub_26A061CFC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v120 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v119 = &v112 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v129 = &v112 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v130 = &v112 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v112 - v28;
  v30 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cacheDirectory;
  swift_beginAccess();
  sub_26A05C578(a1 + v30, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_26A05B2E4(v16, &qword_2803681F8, &qword_26A062F58);
    v31 = sub_26A061DEC();
    v32 = sub_26A06217C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26A053000, v31, v32, "Cache directory unavailable.", v33, 2u);
      MEMORY[0x26D6595F0](v33, -1, -1);
    }

    goto LABEL_28;
  }

  (*(v18 + 32))(v29, v16, v17);
  sub_26A061D4C();
  v34 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_formatter;
  v35 = *(a1 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_formatter);
  v131 = v18;
  v121 = v29;
  v118 = a1;
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v37 = sub_26A061EFC();
    [v36 setDateFormat_];

    v38 = *(a1 + v34);
    *(a1 + v34) = v36;

    v35 = 0;
  }

  v39 = v35;
  v115 = v12;
  v40 = sub_26A061D3C();
  v41 = [v36 stringFromDate_];
  v114 = v36;

  v42 = sub_26A061F2C();
  v44 = v43;

  *&v133 = 46;
  *(&v133 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v45);
  *(&v112 - 2) = &v133;

  v46 = v128;
  v48 = sub_26A05AC2C(0x7FFFFFFFFFFFFFFFLL, 1, sub_26A05C5E8, (&v112 - 4), v128, a3, v47);
  v49 = v48;
  v50 = v48[2];
  v51 = v130;
  v116 = v9;
  v113 = 0;
  v117 = v17;
  if (v50 == 1)
  {

    *&v133 = v46;
    *(&v133 + 1) = a3;

    MEMORY[0x26D658CA0](45, 0xE100000000000000);

    MEMORY[0x26D658CA0](v42, v44);

    MEMORY[0x26D658CA0](0x6E6F736A2ELL, 0xE500000000000000);

    v53 = *(&v133 + 1);
    v52 = v133;
    goto LABEL_14;
  }

  *&v128 = v42;
  if (!v50)
  {
    __break(1u);
    goto LABEL_30;
  }

  v54 = v48[4];
  v55 = v48[5];
  v57 = v48[6];
  v56 = v48[7];
  *&v132 = 0;
  *(&v132 + 1) = 0xE000000000000000;

  v58 = sub_26A061F6C();
  v59 = sub_26A0621FC();
  v60 = __OFADD__(v58, v59);
  v61 = v58 + v59;
  if (v60)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  MEMORY[0x26D658C50](v61);
  *&v133 = v54;
  *(&v133 + 1) = v55;
  v134 = v57;
  v135 = v56;
  sub_26A05C640();
  sub_26A061F8C();
  *&v133 = 45;
  *(&v133 + 1) = 0xE100000000000000;
  sub_26A061F8C();

  v133 = v132;

  MEMORY[0x26D658CA0](v128, v44);

  MEMORY[0x26D658CA0](46, 0xE100000000000000);

  if (v50 > v49[2])
  {
    goto LABEL_31;
  }

  v62 = v133;
  v63 = &v49[4 * v50];
  v128 = *v63;
  v64 = v63[2];
  v65 = v63[3];

  v132 = v62;
  v133 = v128;
  v134 = v64;
  v135 = v65;
  sub_26A061F8C();

  v53 = *(&v132 + 1);
  v52 = v132;
  v51 = v130;
LABEL_14:
  v66 = v129;

  v67 = *(v131 + 2);
  v68 = v117;
  v67(v51, v121, v117);
  v112 = v52;
  *&v133 = v52;
  *(&v133 + 1) = v53;
  v69 = v123;
  v70 = v122;
  v71 = v124;
  (*(v123 + 104))(v122, *MEMORY[0x277CC91D8], v124);
  sub_26A05ABD8();
  sub_26A061CEC();
  (*(v69 + 8))(v70, v71);

  *&v128 = v67;
  v67(v66, v51, v68);
  if (v125)
  {
    v72 = sub_26A05AA88();
    v74 = v68;
    v75 = v131;
    if (v73 >> 60 != 15)
    {
      v76 = v72;
      v77 = v73;
LABEL_19:
      v84 = v66;
      v85 = v113;
      sub_26A061D2C();
      if (v85)
      {
        sub_26A05C694(v76, v77);
        v86 = *(v75 + 1);
        v86(v84, v74);
        v86(v51, v74);

        v87 = v85;
        v88 = sub_26A061DEC();
        v89 = sub_26A06217C();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v131 = v86;
          v93 = v92;
          *&v133 = v92;
          *v90 = 136446466;
          v94 = sub_26A060480(v112, v53, &v133);

          *(v90 + 4) = v94;
          *(v90 + 12) = 2114;
          v95 = v85;
          v96 = _swift_stdlib_bridgeErrorToNSError();
          *(v90 + 14) = v96;
          *v91 = v96;
          _os_log_impl(&dword_26A053000, v88, v89, "Unable to cache %{public}s: %{public}@", v90, 0x16u);
          sub_26A05B2E4(v91, &qword_280368258, &qword_26A063078);
          MEMORY[0x26D6595F0](v91, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v93);
          MEMORY[0x26D6595F0](v93, -1, -1);
          MEMORY[0x26D6595F0](v90, -1, -1);

          (*(v127 + 8))(v115, v116);
          v131(v121, v74);
        }

        else
        {

          (*(v127 + 8))(v115, v116);
          v86(v121, v74);
        }

        goto LABEL_28;
      }

      sub_26A05C694(v76, v77);
      v66 = v84;
    }
  }

  else
  {
    v78 = objc_opt_self();
    v79 = *(v126 + 16);
    v80 = sub_26A061E4C();
    *&v133 = 0;
    v81 = [v78 dataWithJSONObject:v80 options:3 error:&v133];

    v82 = v133;
    if (v81)
    {
      v76 = sub_26A061D1C();
      v77 = v83;

      v74 = v68;
      v75 = v131;
      goto LABEL_19;
    }

    v97 = v82;
    v98 = sub_26A061C9C();

    swift_willThrow();
    v66 = v129;

    v74 = v68;
    v75 = v131;
  }

  v99 = (v75 + 8);
  v100 = *(v75 + 1);
  v131 = v99;
  v100(v66, v74);

  v101 = sub_26A061DEC();
  v102 = sub_26A06215C();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v133 = v104;
    *v103 = 136446210;
    swift_beginAccess();
    sub_26A05C734(&qword_280368250, MEMORY[0x277CC9260]);
    v105 = sub_26A06233C();
    v107 = sub_26A060480(v105, v106, &v133);

    *(v103 + 4) = v107;
    v51 = v130;
    _os_log_impl(&dword_26A053000, v101, v102, "Wrote state dump to %{public}s.", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x26D6595F0](v104, -1, -1);
    MEMORY[0x26D6595F0](v103, -1, -1);
  }

  v108 = v115;
  swift_beginAccess();
  v109 = v120;
  (v128)(v120, v51, v74);
  swift_beginAccess();
  v110 = v119;
  sub_26A05B494(v119, v109);
  v100(v110, v74);
  swift_endAccess();

  (*(v127 + 8))(v108, v116);
  v100(v121, v74);
  v100(v51, v74);
LABEL_28:
  v111 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26A059C2C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_26A059D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26A061E1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26A061E3C();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 16);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_26A05A500;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A057DB0;
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);

  sub_26A061E2C();
  v20 = MEMORY[0x277D84F90];
  sub_26A05C734(&qword_2803681D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681E0, &qword_26A062F50);
  sub_26A05C77C(&qword_2803681E8, &qword_2803681E0, &qword_26A062F50);
  sub_26A06222C();
  MEMORY[0x26D658EC0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void sub_26A059FFC(uint64_t a1, void (*a2)(size_t), uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v51 = sub_26A061CFC();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v51);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v39 - v9;
  v10 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cachedFiles;
  swift_beginAccess();
  v11 = *(a1 + v10);
  *(a1 + v10) = MEMORY[0x277D84FA0];
  v12 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_log;

  v50 = a1;
  v47 = v12;
  v13 = sub_26A061DEC();
  v14 = sub_26A06216C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v11 + 16);

    _os_log_impl(&dword_26A053000, v13, v14, "Flushing %ld cached files.", v15, 0xCu);
    MEMORY[0x26D6595F0](v15, -1, -1);
  }

  else
  {
  }

  v16 = v11 + 56;
  v17 = 1 << *(v11 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v11 + 56);
  v20 = (v17 + 63) >> 6;
  v45 = v4 + 32;
  v46 = v4 + 16;
  v44 = (v4 + 8);

  v21 = 0;
  *&v22 = 136315138;
  v41 = v22;
  v23 = v51;
  v42 = v4;
  v49 = v11;
  while (v19)
  {
    v24 = v21;
LABEL_14:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = v48;
    (*(v4 + 16))(v48, *(v11 + 48) + *(v4 + 72) * (v25 | (v24 << 6)), v23);
    (*(v4 + 32))(v8, v26, v23);
    v27 = sub_26A061DEC();
    v28 = sub_26A06216C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v29 = v41;
      sub_26A05C734(&qword_280368250, MEMORY[0x277CC9260]);
      v30 = sub_26A06233C();
      v32 = v31;
      (*v44)(v8, v51);
      v33 = sub_26A060480(v30, v32, &v52);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_26A053000, v27, v28, "%s", v29, 0xCu);
      v34 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      v4 = v42;
      MEMORY[0x26D6595F0](v34, -1, -1);
      v35 = v29;
      v23 = v51;
      MEMORY[0x26D6595F0](v35, -1, -1);
    }

    else
    {

      (*v44)(v8, v23);
    }

    v21 = v24;
    v11 = v49;
  }

  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      v36 = *(v11 + 16);
      if (!v36)
      {
        goto LABEL_19;
      }

      v37 = sub_26A05B0F8(*(v11 + 16), 0);
      v38 = sub_26A05C2C8(&v52, (v37 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v36, v11);
      sub_26A05C56C();
      if (v38 != v36)
      {
        __break(1u);
LABEL_19:

        v37 = MEMORY[0x277D84F90];
      }

      v40(v37);

      return;
    }

    v19 = *(v16 + 8 * v24);
    ++v21;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_26A05A4C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t DiagnosticsCache.deinit()
{
  sub_26A05B2E4(v0 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cacheDirectory, &qword_2803681F8, &qword_26A062F58);
  v1 = *(v0 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cachedFiles);

  v2 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_log;
  v3 = sub_26A061E0C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t DiagnosticsCache.__deallocating_deinit()
{
  sub_26A05B2E4(v0 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cacheDirectory, &qword_2803681F8, &qword_26A062F58);
  v1 = *(v0 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cachedFiles);

  v2 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_log;
  v3 = sub_26A061E0C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

unint64_t sub_26A05A69C()
{
  result = qword_280368218;
  if (!qword_280368218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiagnosticFileFormat(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DiagnosticFileFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for DiagnosticsCache()
{
  result = qword_280368220;
  if (!qword_280368220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A05A8B8()
{
  sub_26A05AA30();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_26A061E0C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26A05AA30()
{
  if (!qword_280368230)
  {
    sub_26A061CFC();
    v0 = sub_26A0621EC();
    if (!v1)
    {
      atomic_store(v0, &qword_280368230);
    }
  }
}

uint64_t sub_26A05AA88()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = *(v0 + 16);
  v3 = sub_26A061E4C();
  v11[0] = 0;
  v4 = [v1 dataWithPropertyList:v3 format:100 options:0 error:v11];

  v5 = v11[0];
  if (v4)
  {
    v6 = sub_26A061D1C();
  }

  else
  {
    v7 = v5;
    v8 = sub_26A061C9C();

    swift_willThrow();
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_26A05ABA0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_26A05ABD8()
{
  result = qword_280368240;
  if (!qword_280368240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368240);
  }

  return result;
}

unint64_t sub_26A05AC2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_26A061FDC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26A05AFEC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_26A05AFEC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_26A061FCC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_26A061F7C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_26A061F7C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_26A061FDC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_26A05AFEC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26A061FDC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26A05AFEC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26A05AFEC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26A061F7C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_26A05AFEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368288, &qword_26A063090);
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

size_t sub_26A05B0F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368260, &qword_26A063080);
  v4 = *(sub_26A061CFC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26A05B1F4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26A061F2C();
  sub_26A06238C();
  sub_26A061F5C();
  v4 = sub_26A0623AC();

  return sub_26A05B390(a1, v4);
}

uint64_t sub_26A05B288(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26A05B2E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

unint64_t sub_26A05B390(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26A061F2C();
      v9 = v8;
      if (v7 == sub_26A061F2C() && v9 == v10)
      {
        break;
      }

      v12 = sub_26A06235C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_26A05B494(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26A061CFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_26A05C734(&qword_280368270, MEMORY[0x277CC9260]);
  v36 = a2;
  v13 = sub_26A061ECC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_26A05C734(&qword_280368278, MEMORY[0x277CC9260]);
      v23 = sub_26A061EEC();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_26A05BAD0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_26A05B774(uint64_t a1)
{
  v2 = v1;
  v41 = sub_26A061CFC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368280, &qword_26A063088);
  result = sub_26A06224C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_26A05C734(&qword_280368270, MEMORY[0x277CC9260]);
      result = sub_26A061ECC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_26A05BAD0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_26A061CFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26A05B774(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_26A05BD74();
      goto LABEL_12;
    }

    sub_26A05BFAC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_26A05C734(&qword_280368270, MEMORY[0x277CC9260]);
  v15 = sub_26A061ECC();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_26A05C734(&qword_280368278, MEMORY[0x277CC9260]);
      v23 = sub_26A061EEC();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26A06236C();
  __break(1u);
  return result;
}

void *sub_26A05BD74()
{
  v1 = v0;
  v2 = sub_26A061CFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368280, &qword_26A063088);
  v7 = *v0;
  v8 = sub_26A06223C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_26A05BFAC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_26A061CFC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368280, &qword_26A063088);
  v10 = sub_26A06224C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_26A05C734(&qword_280368270, MEMORY[0x277CC9260]);
      result = sub_26A061ECC();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_26A05C2C8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_26A061CFC();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26A05C578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681F8, &qword_26A062F58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A05C5E8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26A06235C() & 1;
  }
}

unint64_t sub_26A05C640()
{
  result = qword_280368268;
  if (!qword_280368268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368268);
  }

  return result;
}

uint64_t sub_26A05C694(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_26A05C6E8()
{
  result = qword_280368290;
  if (!qword_280368290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280368290);
  }

  return result;
}

uint64_t sub_26A05C734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A05C77C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26A05C7D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681F8, &qword_26A062F58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Dictionary.append<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 + 24) + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  v19 = *(v18 + 32);
  sub_26A061EAC();
  if (v29)
  {
    v30 = v29;
    (*(v13 + 16))(v16, v28, v12);
    sub_26A06205C();
    (*(v6 + 16))(v10, a2, v5);
    v29 = v30;
  }

  else
  {
    (*(v6 + 16))(v10, a2, v5);
    v20 = sub_26A05D490(v12, v12);
    v21 = *(v20 + 52);
    v22 = *(v13 + 72);
    v23 = (*(v13 + 80) + *(v20 + 48)) & ~*(v13 + 80);
    swift_allocObject();
    v24 = sub_26A06200C();
    (*(v13 + 16))(v25, v28, v12);
    sub_26A06208C();
    v30 = v24;
  }

  return sub_26A061EBC();
}

uint64_t Dictionary.append<A, B>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a5;
  v27 = *(a4 - 8);
  v8 = *(v27 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v9);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v5;
  v18 = *v5;
  v21 = *(v19 + 24);
  v20 = *(v19 + 32);
  sub_26A061EAC();
  v22 = v32;
  if (v32)
  {
    (*(v14 + 16))(v17, a2, v13);
    v31 = v22;
    swift_getWitnessTable();
    v23 = *(v29 + 8);
    sub_26A06214C();

    v31 = v32;
  }

  else
  {
    (*(v14 + 16))(v17, a2, v13);
    (*(v27 + 16))(v11, v28, a4);
    v24 = *(v21 + 16);
    v25 = *(v29 + 8);
    v32 = sub_26A06209C();
  }

  return sub_26A061EBC();
}

uint64_t Dictionary.insert<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v13 = *(v12 + 24);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v9);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v37 = v3;
  v22 = *v3;
  v24 = *(v23 + 32);
  v35 = v25;
  sub_26A061EAC();
  if (v38)
  {
    v39 = v38;
    (*(v15 + 16))(v19, v36, v14);
    sub_26A06211C();
    (*(v15 + 8))(v21, v14);
    (*(v5 + 16))(v11, v35, v4);
    v38 = v39;
  }

  else
  {
    (*(v5 + 16))(v34, v35, v4);
    v26 = sub_26A05D490(v14, v14);
    v27 = *(v26 + 52);
    v28 = *(v15 + 72);
    v29 = (*(v15 + 80) + *(v26 + 48)) & ~*(v15 + 80);
    swift_allocObject();
    v30 = sub_26A06200C();
    (*(v15 + 16))(v31, v36, v14);
    sub_26A06208C();
    if (sub_26A06204C())
    {
      v32 = sub_26A05D504(v30, v14, *(v13 + 24));
    }

    else
    {
      v32 = MEMORY[0x277D84FA0];
    }

    v39 = v32;
  }

  return sub_26A061EBC();
}

uint64_t Dictionary.insert<A, B>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v32 = a5;
  v33 = a4;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v9);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v5;
  v18 = *v5;
  v21 = *(v19 + 24);
  v20 = *(v19 + 32);
  sub_26A061EAC();
  if (v35)
  {
    (*(v14 + 16))(v17, a2, v13);
    (*(v7 + 16))(v11, v31, v33);
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    v24 = *(v32 + 8);
    v25 = sub_26A06210C();
  }

  else
  {
    (*(v14 + 16))(v17, a2, v13);
    (*(v7 + 16))(v11, v31, v33);
    v26 = *(v21 + 16);
    v27 = *(v21 + 24);
    v28 = *(v32 + 8);
    v25 = sub_26A06213C();
  }

  v35 = v25;
  return sub_26A061EBC();
}

uint64_t Dictionary.remove<A>(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = *v4;
  v19 = *(v17 + 24);
  v18 = *(v17 + 32);
  sub_26A061EAC();
  if (v31)
  {
    v32 = v31;
    sub_26A06212C();
    (*(v9 + 16))(v15, a2, v8);
    v31 = v32;
    return sub_26A061EBC();
  }

  else
  {
    (*(v9 + 16))(v13, a2, v8);
    v21 = *(v19 + 16);
    v22 = sub_26A05D490(v21, v21);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = *(v21 - 8);
    v26 = *(v25 + 72);
    v27 = *(v25 + 80);
    swift_allocObject();
    v28 = sub_26A06200C();
    (*(v25 + 16))(v29, a1, v21);
    sub_26A06208C();
    if (sub_26A06204C())
    {
      v30 = sub_26A05D504(v28, v21, *(v19 + 24));
    }

    else
    {
      v30 = MEMORY[0x277D84FA0];
    }

    v32 = v30;
    sub_26A061EBC();
    return (*(v25 + 56))(a4, 1, 1, v21);
  }
}

uint64_t sub_26A05D490(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803682B0, &unk_26A0630A0);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

uint64_t sub_26A05D504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  if (sub_26A06204C())
  {
    sub_26A06226C();
    v16 = sub_26A06225C();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_26A06204C();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_26A06203C();
    sub_26A06201C();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_26A06228C();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_26A061ECC();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_26A061EEC();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void MutexLocked.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(v2);
  v5 = *(a1 + 16);
  v6 = sub_26A061DCC();
  (*(*(v5 - 8) + 16))(a2, v2 + *(v6 + 28), v5);

  j__os_unfair_lock_unlock(v2);
}

uint64_t MutexLocked.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_26A05DD3C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*MutexLocked.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  v8 = *(a2 + 16);
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
  MutexLocked.wrappedValue.getter(a2, v11);
  return sub_26A05DAE0;
}

void sub_26A05DAE0(uint64_t **a1, char a2)
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
    sub_26A05DD3C(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_26A05DD3C((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MutexLocked.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2);
  *a3 = 0;
  v10 = *(sub_26A061DCC() + 28);
  v11 = sub_26A061DDC();
  bzero(&a3[v10], *(*(v11 - 8) + 64));
  (*(v6 + 32))(&a3[v10], v9, a2);
  return (*(v6 + 8))(a1, a2);
}

void sub_26A05DD3C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(v2);
  v5 = *(a2 + 16);
  v6 = *(sub_26A061DCC() + 28);
  v7 = *(v5 - 8);
  (*(v7 + 8))(v2 + v6, v5);
  (*(v7 + 16))(v2 + v6, a1, v5);

  j__os_unfair_lock_unlock(v2);
}

uint64_t sub_26A05DE28(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_26A061DCC();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_26A05DEBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803682B8, qword_26A0630B0);
  sub_26A056430(v4);
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + 4) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t sub_26A05DF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((*(v4 + 80) + 4 + a1) & ~*(v4 + 80), (*(v4 + 80) + 4 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t sub_26A05DFA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_26A05E108(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_26A05E344(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  return sub_26A061DCC();
}

void OSAllocatedUnfairLocked.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v8 = *(a1 + 16);
  v5 = **v2;
  v6 = *(v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v7));
  sub_26A05E49C(v4 + v6, a2);
  os_unfair_lock_unlock((v4 + v7));
}

uint64_t OSAllocatedUnfairLocked.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_26A05E76C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OSAllocatedUnfairLocked.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  v8 = *(a2 + 16);
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
  v13 = *v2;
  OSAllocatedUnfairLocked.wrappedValue.getter(a2, v11);
  return sub_26A05E614;
}

void sub_26A05E614(uint64_t **a1, char a2)
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
    sub_26A05E76C(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_26A05E76C((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OSAllocatedUnfairLocked.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_26A05E808();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

void sub_26A05E76C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7 = *(a2 + 16);
  v4 = **v2;
  v5 = *(v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_26A05EABC(v3 + v5);
  os_unfair_lock_unlock((v3 + v6));
}

uint64_t sub_26A05E808()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_26A0622AC();
  return sub_26A06229C();
}

void sub_26A05E884(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  v6 = type metadata accessor for OSAllocatedUnfairLocked();
  OSAllocatedUnfairLocked.wrappedValue.getter(v6, a4);
}

void sub_26A05E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for OSAllocatedUnfairLocked();
  sub_26A05E76C(a1, v6);
}

uint64_t sub_26A05E928()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_26A05EA24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_26A05EABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

SmartStackFoundation::SmartStackDefaults::ItemInfoPreference_optional __swiftcall SmartStackDefaults.ItemInfoPreference.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26A06232C();

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

uint64_t SmartStackDefaults.ItemInfoPreference.rawValue.getter()
{
  if (*v0)
  {
    result = 0x676E696B6E6172;
  }

  else
  {
    result = 1684632949;
  }

  *v0;
  return result;
}

uint64_t sub_26A05EC04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x676E696B6E6172;
  }

  else
  {
    v4 = 1684632949;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x676E696B6E6172;
  }

  else
  {
    v6 = 1684632949;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26A06235C();
  }

  return v9 & 1;
}

uint64_t sub_26A05ECA4()
{
  v1 = *v0;
  sub_26A06238C();
  sub_26A061F5C();

  return sub_26A0623AC();
}

uint64_t sub_26A05ED20()
{
  *v0;
  sub_26A061F5C();
}

uint64_t sub_26A05ED88()
{
  v1 = *v0;
  sub_26A06238C();
  sub_26A061F5C();

  return sub_26A0623AC();
}

uint64_t sub_26A05EE00@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26A06232C();

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

void sub_26A05EE60(uint64_t *a1@<X8>)
{
  v2 = 1684632949;
  if (*v1)
  {
    v2 = 0x676E696B6E6172;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26A05EE98()
{
  result = sub_26A05EEC4();
  qword_2803683C0 = result;
  byte_2803683C8 = v1 & 1;
  return result;
}

uint64_t sub_26A05EEC4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26A061EFC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_9:
    sub_26A05F3B4(&v14);
    return 0;
  }

  v3 = sub_26A061EFC();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_26A06220C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_9;
  }

  sub_26A05F3B4(&v14);
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_26A061EFC();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_26A061EFC();
    [v7 doubleForKey_];
    v10 = v9;

    return v10;
  }

  return 0;
}

uint64_t static SmartStackDefaults.onboardingDismissTimeoutOverride.getter()
{
  if (qword_280368038 != -1)
  {
    swift_once();
  }

  return qword_2803683C0;
}

uint64_t static SmartStackDefaults.rankingOverlayEnabled.getter()
{
  sub_26A05F1D4();
  v1 = v0;
  if (v0)
  {
    v2 = sub_26A06232C();

    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (!v2)
    {
      v3 = 0;
    }

    if (v3 == 2)
    {
      v1 = 0;
    }

    else
    {
      if (v3)
      {
        v1 = 1;
      }

      else
      {
        v1 = sub_26A06235C();
      }
    }
  }

  return v1 & 1;
}

uint64_t sub_26A05F1D4()
{
  if (SSFIsInternalBuild())
  {
    v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v1 = sub_26A061EFC();
    v2 = [v0 initWithSuiteName_];

    if (v2)
    {
      v3 = sub_26A061EFC();
      v4 = [v2 objectForKey_];

      if (v4)
      {
        sub_26A06220C();
        swift_unknownObjectRelease();
        sub_26A05F3B4(v9);
        v5 = sub_26A061EFC();
        v6 = [v2 stringForKey_];

        if (v6)
        {
          v7 = sub_26A061F2C();

          return v7;
        }
      }

      else
      {

        memset(v9, 0, sizeof(v9));
        sub_26A05F3B4(v9);
      }
    }
  }

  return 0;
}

unint64_t sub_26A05F340()
{
  result = qword_2803683D0;
  if (!qword_2803683D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803683D0);
  }

  return result;
}

uint64_t sub_26A05F3B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803683D8, &qword_26A063240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A05F41C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_26A05F538(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_26A05F568@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26A05F594@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_26A05F680@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t StateDump.DecoderInfo.library.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StateDump.DecoderInfo.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t StateDump.StateData.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_26A05F730(v2, v3, v4, v5, v6);
}

uint64_t sub_26A05F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

__n128 StateDump.StateData.dataType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_26A05F7C4(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_26A05F7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

uint64_t StateDump.StateData.data.getter()
{
  v1 = *(v0 + 40);
  sub_26A05F864(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_26A05F864(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t StateDump.StateData.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26A05C694(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 StateDump.StateData.init(dataType:data:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  result = *a1;
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 32) = v4;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

void static StateDump.StateData.dictionary(_:)(uint64_t a1@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_26A061E4C();
  v11[0] = 0;
  v4 = [v2 dataWithPropertyList:v3 format:200 options:0 error:v11];

  v5 = v11[0];
  if (v4)
  {
    v6 = sub_26A061D1C();
    v8 = v7;

    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 2;
    *(a1 + 40) = v6;
    *(a1 + 48) = v8;
  }

  else
  {
    v9 = v5;
    sub_26A061C9C();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t StateDump.Handle.deinit()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = qword_280368040;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_26A061E0C();
  __swift_project_value_buffer(v5, qword_2803683E0);

  v6 = sub_26A061DEC();
  v7 = sub_26A06218C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_26A060480(v3, v2, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_26A053000, v6, v7, "Removing handler for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D6595F0](v9, -1, -1);
    MEMORY[0x26D6595F0](v8, -1, -1);
  }

  else
  {
  }

  v11 = *(v1 + 32);
  os_state_remove_handler();
  v12 = *(v1 + 24);

  return v1;
}

uint64_t StateDump.Handle.__deallocating_deinit()
{
  StateDump.Handle.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *static StateDump.addHandler(identifier:queue:triggers:handler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  if (qword_280368040 != -1)
  {
    swift_once();
  }

  v11 = sub_26A061E0C();
  __swift_project_value_buffer(v11, qword_2803683E0);

  v12 = sub_26A061DEC();
  v13 = sub_26A06218C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_26A060480(a1, a2, v21);
    _os_log_impl(&dword_26A053000, v12, v13, "Registering new state dump handler with identifier %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D6595F0](v15, -1, -1);
    MEMORY[0x26D6595F0](v14, -1, -1);
  }

  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v10;
  v16[5] = a5;
  v16[6] = a6;
  v21[4] = sub_26A060A68;
  v21[5] = v16;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_26A060250;
  v21[3] = &block_descriptor_0;
  v17 = _Block_copy(v21);

  v18 = os_state_add_handler();
  _Block_release(v17);
  type metadata accessor for StateDump.Handle();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v18;

  return v19;
}

uint64_t sub_26A05FE54(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t **__return_ptr))
{
  if (qword_280368040 != -1)
  {
    swift_once();
  }

  v9 = sub_26A061E0C();
  __swift_project_value_buffer(v9, qword_2803683E0);

  v10 = sub_26A061DEC();
  v11 = sub_26A06218C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_26A060480(a2, a3, &v30);
    _os_log_impl(&dword_26A053000, v10, v11, "State dump handler invoked for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D6595F0](v13, -1, -1);
    MEMORY[0x26D6595F0](v12, -1, -1);
  }

  v14 = *(a1 + 16) - 1;
  if (v14 <= 2 && (qword_26A063650[v14] & a4) != 0)
  {
    a5(&v30);
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v22 = v35;
    v23 = v36;
    v24 = v34;
    sub_26A05F730(v30, v31, v32, v33, v34);
    sub_26A05F864(v22, v23);
    v25 = sub_26A060F6C(&v30, a2, a3);
    sub_26A05F7C4(v18, v19, v20, v21, v24);
    sub_26A05C694(v22, v23);
    v26 = v35;
    v27 = v36;
    sub_26A05F7C4(v30, v31, v32, v33, v34);
    sub_26A05C694(v26, v27);
    return v25;
  }

  else
  {
    v15 = sub_26A061DEC();
    v16 = sub_26A06218C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26A053000, v15, v16, "Invalid trigger", v17, 2u);
      MEMORY[0x26D6595F0](v17, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_26A060250(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_26A0602A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  if ((a7 >> 62) > 1)
  {
    if (v7 != 2)
    {
      return 0;
    }

    v10 = *(a6 + 16);
    v9 = *(a6 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v8 < 1)
    {
      return 0;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a6) - a6;
    if (__OFSUB__(HIDWORD(a6), a6))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = v8;
    if (v8 < 1)
    {
      return 0;
    }
  }

  else
  {
    v8 = BYTE6(a7);
    if (!BYTE6(a7))
    {
      return 0;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (a3 != a4)
    {
      v7 = a4 - a3;
      if (__OFSUB__(a4, a3))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }

      if (v7 >= a2)
      {
        v7 = a2;
      }

      v12 = a3 + v7;
      if (__OFADD__(a3, v7))
      {
        goto LABEL_40;
      }

      if (v12 >= a3)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_22;
    }

    return 0;
  }

  if (!v7)
  {
LABEL_22:
    a3 = v7;
    goto LABEL_24;
  }

  if (v7 == 2)
  {
    a3 = *(a6 + 16);
  }

  else
  {
    a3 = a6;
  }

LABEL_24:
  if (v8 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v8;
  }

  v12 = a3 + v13;
  if (__OFADD__(a3, v13))
  {
    goto LABEL_37;
  }

  if (v12 < a3)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_29:
  if (a3 == v12)
  {
    return 0;
  }

  if (!result)
  {
    goto LABEL_41;
  }

  v14 = a3;
  sub_26A061D0C();
  result = v12 - v14;
  if (__OFSUB__(v12, v14))
  {
    __break(1u);
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_26A0603CC()
{
  v0 = sub_26A061E0C();
  __swift_allocate_value_buffer(v0, qword_2803683E0);
  __swift_project_value_buffer(v0, qword_2803683E0);
  return sub_26A061DFC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26A060480(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26A06054C(v11, 0, 0, 1, a1, a2);
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
    sub_26A05B288(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26A06054C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26A060658(a5, a6);
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
    result = sub_26A0622BC();
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

uint64_t sub_26A060658(uint64_t a1, unint64_t a2)
{
  v4 = sub_26A0606A4(a1, a2);
  sub_26A0607D4(&unk_287AFA590);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26A0606A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_26A0608C0(v5, 0);
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

  result = sub_26A0622BC();
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
        v10 = sub_26A061FAC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26A0608C0(v10, 0);
        result = sub_26A06227C();
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

uint64_t sub_26A0607D4(uint64_t result)
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

  result = sub_26A060934(result, v12, 1, v3);
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

void *sub_26A0608C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368418, &unk_26A063640);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26A060934(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368418, &unk_26A063640);
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

uint64_t sub_26A060A28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26A060AB8()
{
  result = qword_2803683F8;
  if (!qword_2803683F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803683F8);
  }

  return result;
}

unint64_t sub_26A060B10()
{
  result = qword_280368400;
  if (!qword_280368400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368400);
  }

  return result;
}

unint64_t sub_26A060B68()
{
  result = qword_280368408;
  if (!qword_280368408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368408);
  }

  return result;
}

unint64_t sub_26A060BC0()
{
  result = qword_280368410;
  if (!qword_280368410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368410);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20SmartStackFoundation9StateDumpV8DataTypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26A060C54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26A060C9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A060CE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StateDump.Trigger(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StateDump.Trigger(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
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

uint64_t sub_26A060D74(uint64_t a1, int a2)
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

uint64_t sub_26A060DBC(uint64_t result, int a2, int a3)
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

uint64_t sub_26A060E44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26A060E8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A060F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368258, &qword_26A063078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A060F6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *a1;
  v58 = *(a1 + 8);
  v5 = *(a1 + 16);
  v57 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(v8);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(v7 + 16);
  v11 = *(v7 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v10 = HIDWORD(v7) - v7;
  }

LABEL_11:
  v13 = SSFStateDataSizeNeeded(v10);
  if (v13 > 0x8000)
  {
    if (qword_280368040 != -1)
    {
      swift_once();
    }

    v14 = sub_26A061E0C();
    __swift_project_value_buffer(v14, qword_2803683E0);

    v15 = sub_26A061DEC();
    v16 = sub_26A06217C();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_25;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v60 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_26A060480(a2, a3, &v60);
    *(v17 + 12) = 2048;
    *(v17 + 14) = v13;
    *(v17 + 22) = 1024;
    *(v17 + 24) = 0x8000;
    v19 = "StateDump %s payload size of %ld bytes exceeds maximum of %d bytes!";
    v20 = v16;
    v21 = v15;
    v22 = v17;
    v23 = 28;
    goto LABEL_24;
  }

  v56 = v4;
  v24 = calloc(1uLL, v13);
  if (!v24)
  {
    if (qword_280368040 == -1)
    {
LABEL_22:
      v29 = sub_26A061E0C();
      __swift_project_value_buffer(v29, qword_2803683E0);

      v15 = sub_26A061DEC();
      v30 = sub_26A06217C();

      if (!os_log_type_enabled(v15, v30))
      {
LABEL_25:

        return 0;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v60 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_26A060480(a2, a3, &v60);
      v19 = "Failed to allocated os_state_data buffer for %s";
      v20 = v30;
      v21 = v15;
      v22 = v17;
      v23 = 12;
LABEL_24:
      _os_log_impl(&dword_26A053000, v21, v20, v19, v22, v23);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D6595F0](v18, -1, -1);
      MEMORY[0x26D6595F0](v17, -1, -1);
      goto LABEL_25;
    }

LABEL_69:
    swift_once();
    goto LABEL_22;
  }

  v25 = v13 - 200;
  if (__OFSUB__(v13, 200))
  {
    __break(1u);
    goto LABEL_66;
  }

  v26 = v24;
  v55 = v5;
  if (!v6)
  {
    v53 = v13 - 200;
    v54 = a3;
    v27 = v57;
    v28 = 2;
    goto LABEL_28;
  }

  if (v6 == 1)
  {
    v53 = v13 - 200;
    v54 = a3;
    v27 = v57;
    v28 = 3;
LABEL_28:
    *v24 = v28;
    v32 = sub_26A061F3C();
    sub_26A05F730(v56, v58, v55, v27, v6);
    strlcpy(v26 + 8, (v32 + 32), 0x40uLL);

    v33 = sub_26A061F3C();
    strlcpy(v26 + 72, (v33 + 32), 0x40uLL);

    v25 = v53;
    a3 = v54;
    goto LABEL_30;
  }

  *v24 = 1;
LABEL_30:
  v34 = sub_26A061F3C();
  strlcpy(v26 + 136, (v34 + 32), 0x40uLL);

  if (v9 <= 1)
  {
    if (!v9)
    {
      *(v26 + 1) = BYTE6(v8);
      if (sub_26A0602A0((v26 + 200), v25, 0, 0, 1, v7, v8) == BYTE6(v8))
      {
        return v26;
      }

      goto LABEL_50;
    }

    goto LABEL_38;
  }

  if (v9 != 2)
  {
    *(v26 + 1) = 0;
    if (!sub_26A0602A0((v26 + 200), v25, 0, 0, 1, v7, v8))
    {
      return v26;
    }

    goto LABEL_50;
  }

  v36 = *(v7 + 16);
  v35 = *(v7 + 24);
  v37 = __OFSUB__(v35, v36);
  v38 = v35 - v36;
  if (v37)
  {
    __break(1u);
LABEL_38:
    LODWORD(v38) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v38 = v38;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (HIDWORD(v38))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v26 + 1) = v38;
  result = sub_26A0602A0((v26 + 200), v25, 0, 0, 1, v7, v8);
  if (v9 == 2)
  {
    v40 = *(v7 + 16);
    v39 = *(v7 + 24);
    if (!__OFSUB__(v39, v40))
    {
      if (result == v39 - v40)
      {
        return v26;
      }

      goto LABEL_50;
    }

    goto LABEL_71;
  }

  if (__OFSUB__(HIDWORD(v7), v7))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (result == HIDWORD(v7) - v7)
  {
    return v26;
  }

LABEL_50:
  v52 = v6;
  if (qword_280368040 != -1)
  {
    swift_once();
  }

  v41 = sub_26A061E0C();
  __swift_project_value_buffer(v41, qword_2803683E0);
  v42 = a3;

  sub_26A05F730(v56, v58, v55, v57, v52);
  sub_26A05F864(v7, v8);
  v43 = sub_26A061DEC();
  v44 = sub_26A06217C();

  if (!os_log_type_enabled(v43, v44))
  {
    sub_26A05F7C4(v56, v58, v55, v57, v52);
    sub_26A05C694(v7, v8);

    return v26;
  }

  v45 = v43;
  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v60 = v47;
  *v46 = 136315394;
  result = sub_26A060480(a2, v42, &v60);
  *(v46 + 4) = result;
  *(v46 + 12) = 2048;
  if (v9 > 1)
  {
    v48 = v52;
    if (v9 != 2)
    {
      v49 = 0;
      goto LABEL_64;
    }

    v51 = *(v7 + 16);
    v50 = *(v7 + 24);
    v37 = __OFSUB__(v50, v51);
    v49 = v50 - v51;
    if (!v37)
    {
      goto LABEL_64;
    }

    __break(1u);
  }

  else
  {
    v48 = v52;
    if (!v9)
    {
      v49 = BYTE6(v8);
LABEL_64:
      *(v46 + 14) = v49;
      sub_26A05F7C4(v56, v58, v55, v57, v48);
      sub_26A05C694(v7, v8);
      _os_log_impl(&dword_26A053000, v45, v44, "State dump for %s wrote inconsistent number of bytes, %ld bytes", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x26D6595F0](v47, -1, -1);
      MEMORY[0x26D6595F0](v46, -1, -1);

      return v26;
    }
  }

  LODWORD(v49) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v49 = v49;
    goto LABEL_64;
  }

LABEL_73:
  __break(1u);
  return result;
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

char *UserDefaultsObserver.__allocating_init(defaults:preference:changeHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults] = a1;
  v13 = &v12[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_preference];
  *v13 = a2;
  *(v13 + 1) = a3;
  v14 = &v12[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler];
  *v14 = a4;
  *(v14 + 1) = a5;
  v22.receiver = v12;
  v22.super_class = v6;
  v15 = a1;

  v16 = objc_msgSendSuper2(&v22, sel_init);
  v17 = *&v16[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults];
  v18 = v16;
  v19 = v17;
  v20 = sub_26A061EFC();

  [v19 addObserver:v18 forKeyPath:v20 options:1 context:{0, v22.receiver, v22.super_class}];

  return v18;
}

char *UserDefaultsObserver.init(defaults:preference:changeHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults] = a1;
  v13 = &v6[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_preference];
  *v13 = a2;
  *(v13 + 1) = a3;
  v14 = &v6[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler];
  *v14 = a4;
  *(v14 + 1) = a5;
  v22.receiver = v6;
  v22.super_class = ObjectType;
  v15 = a1;

  v16 = objc_msgSendSuper2(&v22, sel_init);
  v17 = *&v16[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults];
  v18 = v16;
  v19 = v17;
  v20 = sub_26A061EFC();

  [v19 addObserver:v18 forKeyPath:v20 options:1 context:{0, v22.receiver, v22.super_class}];

  return v18;
}

uint64_t UserDefaultsObserver.observeValue(forKeyPath:of:change:context:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler);
  v2 = *(v0 + OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler + 8);
  return v1();
}

id UserDefaultsObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_preference];
  v3 = *&v0[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_preference + 8];
  v4 = *&v0[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults];
  v5 = v0;

  v6 = sub_26A061EFC();

  [v4 removeObserver:v5 forKeyPath:v6];

  v8.receiver = v5;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id UserDefaultsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}