uint64_t sub_217E32F90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217E32FC8()
{
  result = type metadata accessor for ScopeReader.CurrentScope(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Dependencies();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_217E3306C()
{
  type metadata accessor for Storage();
  if (v0 <= 0x3F)
  {
    sub_217E3318C(319, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_217E33138(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217E70794();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217E3318C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217E70794();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for Dependencies()
{
  result = qword_2811B1500;
  if (!qword_2811B1500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217E3324C()
{
  type metadata accessor for Storage();
  if (v0 <= 0x3F)
  {
    sub_217E33138(319, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Dependencies.AmbiguousResolutionContext();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217E33378()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E333B4()
{
  result = sub_217E70374();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E3343C()
{
  sub_217E33A20();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_2811B0BD0 = result;
  return result;
}

double static Scope.root(dependencyContainer:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2811B0BC8 != -1)
  {
    swift_once();
  }

  v5 = off_2811B0BD0;
  os_unfair_lock_lock(off_2811B0BD0 + 6);
  v6 = *(v5 + 2);
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v5 + 2) = v6 + 1;
  os_unfair_lock_unlock(v5 + 6);
  sub_217E33AD0(a1, v23);
  type metadata accessor for Storage();
  v5 = swift_allocObject();
  v7 = MEMORY[0x277D84F98];
  *(v5 + 7) = MEMORY[0x277D84F98];
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84FA0];
  *(v5 + 19) = MEMORY[0x277D84F90];
  *(v5 + 20) = v9;
  *(v5 + 21) = v8;
  *(v5 + 8) = v6;
  *(v5 + 9) = v7;
  *(v5 + 10) = v7;
  *(v5 + 11) = v7;
  *(v5 + 12) = v7;
  *(v5 + 13) = v7;
  *(v5 + 14) = v7;
  *(v5 + 15) = v7;
  *(v5 + 16) = v7;
  *(v5 + 17) = v7;
  *(v5 + 18) = v7;
  sub_217E33C00(v23, v5 + 16);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_217E336BC(v23, v22);
  swift_beginAccess();

  sub_217E33874(v22, v6);
  swift_endAccess();
  swift_beginAccess();
  v10 = *(v5 + 14);
  v11 = sub_217E33C18(v6);
  if (v12)
  {
    v2 = v11;
    v13 = *(v5 + 14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + 14);
    v20 = v15;
    *(v5 + 14) = 0x8000000000000000;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      sub_217E5AA34(v2, v15);
      *(v5 + 14) = v15;
      goto LABEL_7;
    }

LABEL_9:
    sub_217E59A0C();
    v15 = v20;
    goto LABEL_6;
  }

LABEL_7:
  v16 = *(v5 + 15);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v5 + 15);
  *(v5 + 15) = 0x8000000000000000;
  sub_217E34140(1953460050, 0xE400000000000000, v6, v17);
  *(v5 + 15) = v21;
  swift_endAccess();
  sub_217E33804(v23, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer);
  type metadata accessor for StorageHandle();
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = v6;
  *a2 = v5;
  *(a2 + 8) = v18;
  *&result = 1953460050;
  *(a2 + 16) = xmmword_217E71C40;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_217E336BC(uint64_t a1, uint64_t a2)
{
  sub_217E33B34(0, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E3374C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_217E337A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_217E56B6C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217E33804(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_217E33B34(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_217E33874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_217E33C00(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_217E496D8(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_217E33804(a1, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer);
    v8 = *v2;
    v9 = sub_217E33C18(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_217E59B5C();
        v14 = v16;
      }

      sub_217E33C00((*(v14 + 56) + 40 * v11), v17);
      sub_217E5AEE0(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_217E33804(v17, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer);
  }

  return result;
}

uint64_t sub_217E33990(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_217E339D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

void sub_217E33A20()
{
  if (!qword_2811B0950)
  {
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_217E70834();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0950);
    }
  }
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2811B0968)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2811B0968);
    }
  }
}

uint64_t sub_217E33AD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_217E33B34(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_217E3374C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_217E33B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217E33C00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_217E33C18(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_217E709A4();
  MEMORY[0x21CEAE230](a1);
  v4 = sub_217E709D4();

  return sub_217E33C84(a1, v4);
}

unint64_t sub_217E33C84(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_217E33CF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_217E34278();
    v3 = sub_217E708E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_217E33D54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217E33CF0(0, &qword_2811B08F8);
  v37 = a2;
  result = sub_217E708C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v22);
      result = sub_217E709D4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t Scope.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v6 = v3[4];
  return sub_217E34040(a2, &v6, a2, a3);
}

{
  v4 = *v3;
  v6 = v3[4];
  return sub_217E6AB80(a1, &v6, a2, a3);
}

{
  v4 = *v3;
  v6 = v3[4];
  return sub_217E6AB98(a1, &v6, a2, a3);
}

uint64_t sub_217E34040(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  swift_beginAccess();
  v8 = v4[6];
  v9 = v4[4];
  v21 = v4[5];
  v22 = v8;
  v10 = v4[6];
  v11 = v4[8];
  v23 = v4[7];
  v24 = v11;
  v20 = v4[4];
  v17 = v10;
  v18 = v23;
  v19 = v4[8];
  v15 = v9;
  v16 = v21;
  v14 = v7;
  sub_217E3438C(&v20, v25);
  v12 = sub_217E343EC(a3, &v14, a3);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v25[0] = v15;
  v25[1] = v16;
  result = sub_217E347DC(v25);
  if ((v12 & 1) == 0)
  {
    *&v15 = v7;
    return sub_217E34830(a3, &v15, a3, a4);
  }

  return result;
}

unint64_t sub_217E34140(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_217E33C18(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_217E598A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_217E33D54(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_217E33C18(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_217E34320(v11, a3, a1, a2, v22);
  }
}

unint64_t sub_217E34278()
{
  result = qword_2811B0BC0;
  if (!qword_2811B0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B0BC0);
  }

  return result;
}

unint64_t sub_217E342CC()
{
  result = qword_2811B0BB8;
  if (!qword_2811B0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B0BB8);
  }

  return result;
}

unint64_t sub_217E34320(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

uint64_t sub_217E343EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_217E345F8(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 40);
  if (*(v10 + 16) && (v11 = sub_217E33C18(*a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  v14 = sub_217E343E8(a3, a3);
  if (!*(v13 + 16))
  {

    goto LABEL_9;
  }

  v17 = sub_217E3960C(v14, v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_9:

    v24 = type metadata accessor for ScopeGraphElement.ID(0);
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    v23 = 0;
    goto LABEL_10;
  }

  v20 = *(v13 + 56);
  v21 = type metadata accessor for ScopeGraphElement.ID(0);
  v22 = *(v21 - 8);
  sub_217E35F40(v20 + *(v22 + 72) * v17, v9, type metadata accessor for ScopeGraphElement.ID);

  v23 = 1;
  (*(v22 + 56))(v9, 0, 1, v21);
LABEL_10:
  sub_217E3477C(v9, sub_217E345F8);
  return v23;
}

void sub_217E3462C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217E34690(uint64_t a1, uint64_t a2)
{
  sub_217E709E4();
  MEMORY[0x21CEAE230](a2);
  v3 = sub_217E709C4();
  sub_217E70A34();
  return v3;
}

uint64_t sub_217E3470C(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E70374();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217E3477C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217E34830(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v69 = a1;
  v7 = type metadata accessor for ScopeReader.CurrentScope(0);
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v76 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x277D83D88];
  sub_217E35174(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope, MEMORY[0x277D83D88]);
  v71 = v11;
  v12 = *(*(v11 - 1) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v72 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = &v66 - v15;
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v10);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v78 = &v66 - v19;
  v20 = *(a3 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v77 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_217E70794();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v66 - v29;
  v70 = type metadata accessor for ScopeGraphElement.ID(0);
  v31 = *(v70 - 1);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v70);
  v34 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a2;
  sub_217E70364();
  v80 = v35;
  v87[0] = v35;
  v83 = a3;
  v84 = v81;
  v85 = v4;
  v36 = v4;
  sub_217E351D8(v87, v34, sub_217E37CC8, v82, v30);
  v37 = v24[2];
  v79 = v30;
  v37(v28, v30, v23);
  if ((*(v20 + 48))(v28, 1, a3) == 1)
  {
    v38 = v80;
    v39 = v24[1];
    v39(v28, v23);
    if (qword_2811B1810 != -1)
    {
      swift_once();
    }

    v40 = sub_217E703B4();
    sub_217E35794(v40, qword_2811B1820);
    v41 = sub_217E70394();
    v42 = sub_217E70774();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v38;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v87[0] = v45;
      *v44 = 136315394;
      v86 = v43;
      sub_217E540D8();
      v46 = sub_217E708F4();
      v48 = sub_217E58888(v46, v47, v87);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v49 = sub_217E70A34();
      v51 = sub_217E58888(v49, v50, v87);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_217E31000, v41, v42, "Dependency container did not provide value for Rule. Misconfiguration? Scope=%s, Rule=%s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v45, -1, -1);
      MEMORY[0x21CEAE800](v44, -1, -1);
    }

    v39(v79, v23);
  }

  else
  {
    v68 = v24;
    v69 = v23;
    v52 = v77;
    (*(v20 + 32))(v77, v28, a3);
    v86 = v80;
    swift_beginAccess();
    v67 = v20;
    sub_217E377FC(v52, &v86, v34, a3);
    swift_endAccess();
    v53 = v78;
    sub_217E35350(v34, v78, type metadata accessor for ScopeGraphElement.ID);
    (*(v31 + 56))(v53, 0, 1, v70);
    v70 = v34;
    v66 = a3;
    if (qword_2811B1640 != -1)
    {
      swift_once();
    }

    v54 = sub_217E35794(v71, qword_2811B1648);
    swift_beginAccess();
    v71 = type metadata accessor for ScopeReader.CurrentScope;
    v55 = MEMORY[0x277D83D88];
    v56 = v75;
    sub_217E3B7E0(v54, v75, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope, MEMORY[0x277D83D88]);
    v57 = v74;
    v58 = v76;
    v59 = v78;
    sub_217E3B7E0(v78, v76 + *(v74 + 24), &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v55);
    v60 = v80;
    *v58 = v36;
    v58[1] = v60;
    v61 = v72;
    sub_217E35350(v58, v72, type metadata accessor for ScopeReader.CurrentScope);
    (*(v73 + 56))(v61, 0, 1, v57);
    swift_beginAccess();

    sub_217E35A50(v61, v54);
    swift_endAccess();
    v62 = v70;
    v63 = v60;
    v64 = v66;
    sub_217E3B850(v58, v36, v70, v63, v66);
    swift_beginAccess();
    sub_217E37654(v56, v54);
    swift_endAccess();
    sub_217E365C0(v58, type metadata accessor for ScopeReader.CurrentScope);
    sub_217E377A0(v56, qword_2811B16B8, v71, v55);
    sub_217E377A0(v59, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v55);
    (*(v67 + 8))(v77, v64);
    (v68[1])(v79, v69);
    v34 = v62;
  }

  return sub_217E365C0(v34, type metadata accessor for ScopeGraphElement.ID);
}

void sub_217E35110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_217E35174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217E351D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = MEMORY[0x277D83D88];
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v19 - v15;
  v20 = *a1;
  sub_217E35350(a2, &v19 - v15, type metadata accessor for ScopeGraphElement.ID);
  v17 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  sub_217E353B8(v6, &v20, v16, a3, a4, a5);
  return sub_217E377A0(v16, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v12);
}

uint64_t sub_217E35350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E353B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26[2] = a5;
  v27 = a4;
  v26[1] = a6;
  v9 = type metadata accessor for ScopeReader.CurrentScope(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217E3318C(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v26 - v20;
  v22 = *a2;
  if (qword_2811B1640 != -1)
  {
    v25 = v19;
    swift_once();
    v19 = v25;
  }

  v23 = sub_217E35794(v19, qword_2811B1648);
  swift_beginAccess();
  sub_217E358A0(v23, v21, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  sub_217E358A0(a3, v13 + *(v9 + 24), &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  *v13 = a1;
  v13[1] = v22;
  sub_217E3590C(v13, v18);
  (*(v10 + 56))(v18, 0, 1, v9);
  swift_beginAccess();

  sub_217E35A50(v18, v23);
  swift_endAccess();
  v27(v13);
  swift_beginAccess();
  sub_217E37654(v21, v23);
  swift_endAccess();
  sub_217E36560(v13, type metadata accessor for ScopeReader.CurrentScope);
  return sub_217E37744(v21, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
}

uint64_t sub_217E35680()
{
  sub_217E3318C(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  v1 = v0;
  sub_217E35730(v0, qword_2811B1648);
  v2 = sub_217E35794(v1, qword_2811B1648);
  v3 = type metadata accessor for ScopeReader.CurrentScope(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

uint64_t *sub_217E35730(uint64_t a1, uint64_t *a2)
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

uint64_t sub_217E35794(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_217E357E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217E3318C(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_217E358A0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_217E3318C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_217E3590C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeReader.CurrentScope(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E35984(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_217E3318C(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_217E35A50(uint64_t a1, uint64_t a2)
{
  sub_217E3318C(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_217E35AD0(uint64_t *a1)
{
  v2 = *(v1 + 48);
  if (!*(v2 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *a1;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = sub_217E33C18(v3);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v3 = *(*(v2 + 56) + 8 * v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_217E47604(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    if (v8 >= v7 >> 1)
    {
      v4 = sub_217E47604((v7 > 1), v8 + 1, 1, v4);
    }

    *(v4 + 2) = v8 + 1;
    *&v4[8 * v8 + 32] = v3;
  }

  while (*(v2 + 16));
  return v4;
}

uint64_t sub_217E35BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ScopeReader.CurrentScope(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Dependencies();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_217E35CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E35D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E35D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E35E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = *a4;
  swift_beginAccess();
  a9(a1, a2, a3, &v17, a5, a6, a7, a8);
  return swift_endAccess();
}

uint64_t sub_217E35ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E70374();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217E35F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E35FC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E3601C(uint64_t a1)
{
  result = type metadata accessor for ScopeGraphElement.ID(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_217E360A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_217E36108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_217E361A8(a1, a4);
  v7 = type metadata accessor for VertexUpdate();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 44);

  return v8(v9, a2, a3);
}

uint64_t sub_217E361A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_217E3620C()
{
  if (!qword_2811B0920)
  {
    sub_217E33B34(255, qword_2811B1168, qword_2811B1708, &protocol descriptor for GraphUpdate, type metadata accessor for TypedDictionary);
    sub_217E34278();
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0920);
    }
  }
}

void sub_217E362C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_217E3374C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_217E3632C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_217E3374C(255, a3);
    sub_217E37580();
    v4 = sub_217E708E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_217E363D0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 24 * result + 16) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_217E36448()
{
  result = qword_2811B1280;
  if (!qword_2811B1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B1280);
  }

  return result;
}

uint64_t sub_217E364B4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_217E36500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217E36560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217E365C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217E36634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScopeReader.CurrentScope(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Dependencies();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_217E36724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, char *, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  sub_217E3318C(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v24 - v14;
  v16 = type metadata accessor for ScopeGraphElement.ID(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20]();
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ScopeReader.CurrentScope(0);
  sub_217E358A0(v8 + *(v21 + 24), v15, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_217E37744(v15, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  }

  sub_217E35D24(v15, v20, type metadata accessor for ScopeGraphElement.ID);
  v23 = *v8;
  v29 = v8[1];
  v28(a2, a3, v20, &v29, a4, v25, v26, v27);
  return sub_217E36560(v20, type metadata accessor for ScopeGraphElement.ID);
}

uint64_t sub_217E36924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *(*(type metadata accessor for ScopeGraphElement.ID(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  v18 = nullsub_1(a1, a2, a5, a6);
  v20 = v19;
  sub_217E35F40(a3, v16, type metadata accessor for ScopeGraphElement.ID);
  v42[0] = v18;
  v42[1] = v20;
  v21 = type metadata accessor for MutatingFunction();
  swift_getWitnessTable();
  v43[3] = type metadata accessor for VertexUpdate();
  v43[4] = swift_getWitnessTable();
  v22 = sub_217E360A4(v43);
  sub_217E36108(v16, v42, v21, v22);

  v23 = *(v6 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v6 + 64);
  v42[0] = v25;
  v26 = sub_217E33C18(v17);
  v28 = v25[2];
  v29 = (v27 & 1) == 0;
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(a2) = v27;
  if (v25[3] < v31)
  {
    sub_217E36BF0(v31, isUniquelyReferenced_nonNull_native);
    v25 = v42[0];
    v26 = sub_217E33C18(v17);
    if ((a2 & 1) == (v32 & 1))
    {
      goto LABEL_6;
    }

    v26 = sub_217E70944();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_10:
    v41 = v26;
    sub_217E58EA4();
    v26 = v41;
    v25 = v42[0];
    *(v7 + 64) = v42[0];
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_6:
  *(v7 + 64) = v25;
  if ((a2 & 1) == 0)
  {
LABEL_7:
    v33 = v26;
    sub_217E362BC(v26, v17, MEMORY[0x277D84F98], v25);
    v26 = v33;
  }

LABEL_8:
  v34 = v25[7] + 8 * v26;
  v35 = sub_217E36EF4();
  v37 = v36;
  v39 = v38;
  sub_217E36F24(v43, v42);
  sub_217E36FB4(v42, v35, v37, v39);

  return sub_217E382C4(v43, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate);
}

__n128 sub_217E36BE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_217E36BF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217E3620C();
  v33 = a2;
  result = sub_217E708C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v21);
      result = sub_217E709D4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_217E36E74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_217E36EB0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_217E36F24(uint64_t a1, uint64_t a2)
{
  sub_217E362C4(0, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E36FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 24))
  {
    sub_217E33C00(a1, v12);
    v8 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    sub_217E370A8(v12, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v11;
  }

  else
  {
    sub_217E33804(a1, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate);
    sub_217E6CA84(a4, v12);

    return sub_217E33804(v12, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate);
  }

  return result;
}

uint64_t sub_217E370A8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_217E3722C(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_217E59E78(&qword_2811B0940, qword_2811B1708, &protocol descriptor for GraphUpdate, sub_217E375D4);
      v13 = v21;
      goto LABEL_8;
    }

    sub_217E363A0(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_217E3722C(a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 40 * v13);
    sub_217E364B4(v25);

    return sub_217E33C00(a1, v25);
  }

  else
  {
    sub_217E3649C(v13, a2, a3, a4, a1, v24);
  }
}

unint64_t sub_217E3722C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_217E709A4();
  MEMORY[0x21CEAE230](a1);
  v4 = sub_217E709D4();

  return sub_217E363D0(a1, v4);
}

uint64_t sub_217E37298(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v7 = v6;
  v9 = *v6;
  if (*(*v6 + 24) > a1)
  {
    v10 = *(*v6 + 24);
  }

  sub_217E3632C(0, a3, a4);
  v43 = a2;
  result = sub_217E708C4();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v7;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 24 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v26 + 40 * v25;
      if (v43)
      {
        a6(v31, v45);
      }

      else
      {
        sub_217E33AD0(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v30);
      result = sub_217E709D4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 24 * v20);
      *v21 = v28;
      v21[1] = v29;
      v21[2] = v30;
      result = (a6)(v45, *(v12 + 56) + 40 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v7 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v7 = v12;
  return result;
}

unint64_t sub_217E37580()
{
  result = qword_2811B1288;
  if (!qword_2811B1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B1288);
  }

  return result;
}

uint64_t sub_217E375D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a6[6] + 24 * a1);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  result = a7(a5, a6[7] + 40 * a1);
  v10 = a6[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v12;
  }

  return result;
}

uint64_t sub_217E37654(uint64_t a1, uint64_t a2)
{
  sub_217E3318C(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E376D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_217E393BC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217E37744(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_217E3318C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217E377A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_217E35174(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_217E377FC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  type metadata accessor for RuleVertex();
  v8 = sub_217E383E4(a1);
  v9 = sub_217E343E8(a4, a4);
  v13 = v7;
  sub_217E38428(v8, v9, v10, v11, &v13, a3);
}

void *sub_217E378EC(uint64_t a1)
{
  v2 = *v1;
  *(v1 + *(*v1 + 112)) = 1;
  *(v1 + *(*v1 + 120)) = 0;
  *(v1 + *(*v1 + 128)) = 0;
  *(v1 + *(*v1 + 136)) = 0;
  (*(*(*(v2 + 80) - 8) + 16))(v1 + *(*v1 + 104), a1, *(v2 + 80));
  swift_getMetatypeMetadata();
  v1[2] = sub_217E705D4();
  v1[3] = v3;
  return v1;
}

uint64_t sub_217E379F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ScopeReader.CurrentScope(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v10 = sub_217E703B4();
  sub_217E35794(v10, qword_2811B1820);
  sub_217E35350(a1, v9, type metadata accessor for ScopeReader.CurrentScope);
  v11 = sub_217E70394();
  v12 = sub_217E70764();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26[1] = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    *v14 = 136315394;
    v27 = *(v9 + 1);
    v28[0] = v15;
    sub_217E540D8();
    v16 = sub_217E708F4();
    v18 = v17;
    sub_217E365C0(v9, type metadata accessor for ScopeReader.CurrentScope);
    v19 = sub_217E58888(v16, v18, v28);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v27 = a2;
    swift_getMetatypeMetadata();
    v20 = sub_217E705D4();
    v22 = sub_217E58888(v20, v21, v28);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_217E31000, v11, v12, "Scope is initializing Rule. Scope=%s, Rule=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v15, -1, -1);
    MEMORY[0x21CEAE800](v14, -1, -1);
  }

  else
  {

    sub_217E365C0(v9, type metadata accessor for ScopeReader.CurrentScope);
  }

  v27 = *(a1 + 8);
  sub_217E37D48(&v27, v28);
  v23 = v29;
  v24 = v30;
  sub_217E37F28(v28, v29);
  (*(v24 + 8))(a2, a2, v23, v24);
  return sub_217E364B4(v28);
}

uint64_t sub_217E37CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_217E379F4(a1, v2[2], a2);
}

uint64_t sub_217E37CD4()
{
  v0 = sub_217E703B4();
  sub_217E35730(v0, qword_2811B1820);
  sub_217E35794(v0, qword_2811B1820);
  return sub_217E703A4();
}

uint64_t sub_217E37D48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v2 + 56);
  if (*(v6 + 16) && (v7 = sub_217E33C18(v5), (v8 & 1) != 0))
  {
    sub_217E33AD0(*(v6 + 56) + 40 * v7, v34);
    sub_217E33C00(v34, a2);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    v10 = *(v3 + 80);
    v11 = *(v3 + 112);
    v30 = *(v3 + 96);
    v31 = v11;
    v12 = *(v3 + 112);
    v32 = *(v3 + 128);
    v13 = *(v3 + 80);
    v29[0] = *(v3 + 64);
    v29[1] = v13;
    v25 = v10;
    v26 = v30;
    v14 = *(v3 + 128);
    v27 = v12;
    v28 = v14;
    v24 = v29[0];
    v23 = v5;
    sub_217E3438C(v29, v22);
    v15 = sub_217E35AD0(&v23);
    v33[2] = v26;
    v33[3] = v27;
    v33[4] = v28;
    v33[0] = v24;
    v33[1] = v25;
    result = sub_217E347DC(v33);
    v16 = *(v15 + 2);
    if (v16)
    {
      v17 = 0;
      while (v17 < *(v15 + 2))
      {
        v18 = *&v15[8 * v17 + 32];
        swift_beginAccess();
        v19 = *(v3 + 56);
        if (*(v19 + 16))
        {
          v20 = sub_217E33C18(v18);
          if (v21)
          {
            sub_217E33AD0(*(v19 + 56) + 40 * v20, &v24);
            sub_217E33C00(&v24, a2);
            swift_endAccess();
          }
        }

        ++v17;
        result = swift_endAccess();
        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:

      return sub_217E33AD0(v3 + 16, a2);
    }
  }

  return result;
}

void *sub_217E37F28(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t _s9TeaBreeze11ScopeReaderV7currentACyFZ_0@<X0>(uint64_t a1@<X8>)
{
  sub_217E3318C(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  v3 = v2;
  v4 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v6 = &v23 - v5;
  v7 = type metadata accessor for ScopeReader.CurrentScope(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  if (qword_2811B1640 != -1)
  {
    swift_once();
  }

  v15 = sub_217E35794(v3, qword_2811B1648);
  swift_beginAccess();
  sub_217E358A0(v15, v6, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_217E37744(v6, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
    result = sub_217E708A4();
    __break(1u);
  }

  else
  {
    sub_217E35D24(v6, v14, type metadata accessor for ScopeReader.CurrentScope);
    sub_217E3590C(v14, a1);
    sub_217E35D24(v14, v12, type metadata accessor for ScopeReader.CurrentScope);
    v16 = (a1 + *(type metadata accessor for ScopeReader(0) + 20));
    v17 = *v12;
    v18 = v12[1];
    v19 = *(v7 + 24);
    v20 = type metadata accessor for Dependencies();
    sub_217E358A0(v12 + v19, v16 + *(v20 + 24), &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);

    sub_217E36560(v12, type metadata accessor for ScopeReader.CurrentScope);
    v21 = *(v20 + 28);
    type metadata accessor for Dependencies.AmbiguousResolutionContext();
    result = swift_allocObject();
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0;
    *(v16 + v21) = result;
    *v16 = v17;
    v16[1] = v18;
  }

  return result;
}

uint64_t sub_217E382C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_217E362C4(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_217E38334(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

void *sub_217E383E4(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = type metadata accessor for RuleVertex();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_217E378EC(a1);
}

uint64_t sub_217E38428(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6)
{
  v69 = a3;
  v70 = a4;
  v68 = a2;
  v71 = *a1;
  v10 = *(v71 + 80);
  v77 = *(v10 - 8);
  v11 = *(v77 + 64);
  MEMORY[0x28223BE20](a1);
  v76 = &v67 - v12;
  sub_217E38B58(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ScopeGraphElement.ID(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ScopeGraphElement(0);
  v21 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217E38B24(0);
  v73 = *(v24 - 8);
  v74 = v24;
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v24);
  v72 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E345F8(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a5;
  v78 = a6;
  sub_217E35F40(a6, v30, type metadata accessor for ScopeGraphElement.ID);
  (*(v17 + 56))(v30, 0, 1, v16);
  v32 = *(v6 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = v31;
  v80 = v6;
  v34 = *(v6 + 40);
  v83[0] = v34;
  v36 = sub_217E33C18(v31);
  v37 = v34[2];
  v38 = (v35 & 1) == 0;
  v39 = v37 + v38;
  if (__OFADD__(v37, v38))
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(v16) = v35;
  if (v34[3] >= v39)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_217E59708();
    v34 = v83[0];
    goto LABEL_6;
  }

  sub_217E38D14(v39, isUniquelyReferenced_nonNull_native);
  v34 = v83[0];
  v40 = sub_217E33C18(v79);
  if ((v16 & 1) != (v41 & 1))
  {
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v36 = v40;
LABEL_6:
  v42 = v71;
  *(v80 + 40) = v34;
  if ((v16 & 1) == 0)
  {
    sub_217E36EB0(v36, v79, MEMORY[0x277D84F98], v34);
  }

  v43 = v34[7] + 8 * v36;
  v44 = v70;

  sub_217E391AC(v30, v68, v69, v44);
  v45 = v78;
  sub_217E35F40(v78, v20, type metadata accessor for ScopeGraphElement.ID);
  v71 = *(v42 + 88);
  v83[3] = type metadata accessor for RuleVertex();
  v83[4] = swift_getWitnessTable();
  v83[0] = a1;
  v46 = v67;
  v47 = *(v67 + 20);
  sub_217E35F40(v20, v23 + v47, type metadata accessor for ScopeGraphElement.ID);
  sub_217E33AD0(v83, v23 + *(v46 + 24));
  v81 = 0;
  v82 = 0xE000000000000000;

  sub_217E70814();

  v81 = 4015177;
  v82 = 0xE300000000000000;
  v48 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
  MEMORY[0x21CEADE80](v48);

  MEMORY[0x21CEADE80](0x7B3D61746144202CLL, 0xE900000000000020);
  v49 = *(a1 + 2);
  v50 = *(a1 + 3);

  MEMORY[0x21CEADE80](v49, v50);

  MEMORY[0x21CEADE80](32032, 0xE200000000000000);
  v51 = v81;
  v52 = v82;
  sub_217E3477C(v20, type metadata accessor for ScopeGraphElement.ID);
  *v23 = v51;
  v23[1] = v52;
  sub_217E364B4(v83);
  v53 = v72;
  sub_217E35F40(v23, v72, type metadata accessor for ScopeGraphElement);
  sub_217E35F40(v23 + v47, v20, type metadata accessor for ScopeGraphElement.ID);
  v54 = v53;
  v55 = v75;
  sub_217E39C30(v54, v75, sub_217E38B24);
  (*(v73 + 56))(v55, 0, 1, v74);
  v56 = v80;
  sub_217E39EA0(v55, v20);
  sub_217E3477C(v23, type metadata accessor for ScopeGraphElement);
  v57 = *(*a1 + 104);
  swift_beginAccess();
  v59 = v76;
  v58 = v77;
  v60 = *(v77 + 16);
  v60(v76, &a1[v57], v10);
  v61 = v79;
  v81 = v79;
  v75 = a1;
  v62 = v45;
  v63 = v45;
  v64 = v71;
  sub_217E3B178(v59, &v81, v63, v56, v10, v71);
  v65 = *(v58 + 8);
  v65(v59, v10);
  v60(v59, &v75[v57], v10);
  v81 = v61;
  sub_217E3B688(v59, &v81, v62, v80, v10, v64);
  return (v65)(v59, v10);
}

unint64_t sub_217E38B8C()
{
  result = type metadata accessor for ScopeGraphElement.ID(319);
  if (v1 <= 0x3F)
  {
    result = sub_217E38C20();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217E38C20()
{
  result = qword_2811B0B18;
  if (!qword_2811B0B18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811B0B18);
  }

  return result;
}

uint64_t sub_217E38CA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E38D14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217E39024(0, &qword_2811B0900, sub_217E39094);
  v33 = a2;
  result = sub_217E708C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v21);
      result = sub_217E709D4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_217E38FB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_217E34278();
    v4 = sub_217E708E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217E39024(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_217E34278();
    v4 = sub_217E708E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217E39094()
{
  if (!qword_2811B0988[0])
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    sub_217E39100();
    v0 = sub_217E70564();
    if (!v1)
    {
      atomic_store(v0, qword_2811B0988);
    }
  }
}

unint64_t sub_217E39100()
{
  result = qword_2811B1298;
  if (!qword_2811B1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B1298);
  }

  return result;
}

unint64_t sub_217E39158()
{
  result = qword_2811B1290;
  if (!qword_2811B1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B1290);
  }

  return result;
}

uint64_t sub_217E391AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_217E393BC(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ScopeGraphElement.ID(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_217E376D4(a1, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    sub_217E6CCD0(a2, a3, a4, v12);

    return sub_217E376D4(v12, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  }

  else
  {
    sub_217E35CBC(a1, v16, type metadata accessor for ScopeGraphElement.ID);
    v19 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_217E39484(v16, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v22;
  }

  return result;
}

void sub_217E393BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_217E39420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217E39484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v14 = sub_217E3960C(a2, a3, a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a5 & 1) != 0)
  {
LABEL_7:
    v20 = *v6;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ScopeGraphElement.ID(0);
      return sub_217E5BE24(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ScopeGraphElement.ID);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a5 & 1) == 0)
  {
    sub_217E594AC();
    goto LABEL_7;
  }

  sub_217E39778(v17, a5 & 1);
  v24 = *v6;
  v25 = sub_217E3960C(a2, a3, a4);
  if ((v18 & 1) != (v26 & 1))
  {
LABEL_15:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v14 = v25;
  v20 = *v6;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_217E39B54(v14, a2, a3, a4, a1, v20);
}

unint64_t sub_217E3960C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_217E709A4();
  MEMORY[0x21CEAE230](a1);
  sub_217E705F4();
  v8 = sub_217E709D4();

  return sub_217E396A0(a1, a2, a3, v8);
}

unint64_t sub_217E396A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == a1)
      {
        v14 = v13[1] == a2 && v13[2] == a3;
        if (v14 || (sub_217E70924() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_217E39778(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ScopeGraphElement.ID(0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_217E39AE0(0, &qword_2811B0948, MEMORY[0x277D84460]);
  v45 = a2;
  result = sub_217E708C4();
  v12 = result;
  if (*(v9 + 16))
  {
    v42 = v2;
    v43 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 24 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v26 + *(v44 + 72) * v25;
      v46 = *(v44 + 72);
      if (v45)
      {
        sub_217E361A8(v31, v47);
      }

      else
      {
        sub_217E4FA2C(v31, v47);
      }

      v32 = *(v12 + 40);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v28);
      sub_217E705F4();
      result = sub_217E709D4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 24 * v20);
      *v21 = v28;
      v21[1] = v29;
      v21[2] = v30;
      result = sub_217E361A8(v47, *(v12 + 56) + v46 * v20);
      ++*(v12 + 16);
      v9 = v43;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void sub_217E39AE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ScopeGraphElement.ID(255);
    v7 = sub_217E39100();
    v8 = a3(a1, &type metadata for RuleIdentifier, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_217E39B54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a6[6] + 24 * a1);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v10 = a6[7];
  v11 = type metadata accessor for ScopeGraphElement.ID(0);
  result = sub_217E361A8(a5, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

uint64_t sub_217E39BF4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217E39C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_217E39C98(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_217E39EA0(uint64_t a1, uint64_t a2)
{
  sub_217E393BC(0, &qword_2811B0B20, sub_217E38B24, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_217E38B24(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_217E376D4(a1, &qword_2811B0B20, sub_217E38B24);
    sub_217E6CAC4(a2, v8);
    sub_217E36500(a2, type metadata accessor for ScopeGraphElement.ID);
    return sub_217E376D4(v8, &qword_2811B0B20, sub_217E38B24);
  }

  else
  {
    sub_217E35CBC(a1, v12, sub_217E38B24);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_217E3A2B8(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_217E36500(a2, type metadata accessor for ScopeGraphElement.ID);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_217E3A0B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_217E3A20C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ScopeGraphElement.ID(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_217E3A2B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ScopeGraphElement.ID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_217E3A780(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      sub_217E38B24(0);
      return sub_217E5BE24(a1, v21 + *(*(v22 - 8) + 72) * v14, sub_217E38B24);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_217E591A8();
    goto LABEL_7;
  }

  sub_217E3A9DC(v17, a3 & 1);
  v24 = *v4;
  v25 = sub_217E3A780(a2);
  if ((v18 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v14 = v25;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_217E3AF88(a2, v11, type metadata accessor for ScopeGraphElement.ID);
  return sub_217E3AFF0(v14, v11, a1, v20);
}

uint64_t sub_217E3A464(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_217E35174(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = *a2;
  if (a3)
  {
    v41 = v15;
    v31 = &v41;
    return sub_217E3BAF8(a1, v31, a3);
  }

  swift_beginAccess();
  if (!*(v3[20] + 16) && !*(v3[19] + 16))
  {
    v40 = v15;
    v31 = &v40;
    return sub_217E3BAF8(a1, v31, a3);
  }

  result = swift_beginAccess();
  v17 = v3[9];
  if (*(v17 + 16))
  {
    v33 = v8;
    v34 = a1;
    v18 = v3[10];
    v19 = v3[11];
    v20 = v3[13];
    v39 = v3[12];
    v22 = v3[14];
    v21 = v3[15];
    v23 = v3[16];
    v24 = v3[17];
    v25 = v17;

    v37 = v18;

    v38 = v19;

    v36 = v21;

    v35 = v23;

    v26 = sub_217E3A780(v34);
    if (v27)
    {
      sub_217E3B7E0(*(v25 + 56) + *(v33 + 72) * v26, v12, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
      sub_217E454AC(v12, v14, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
      v28 = &v14[*(type metadata accessor for ScopeGraphElement(0) + 24)];
      v30 = *(v28 + 3);
      v29 = *(v28 + 4);
      sub_217E37F28(v28, v30);
      (*(v29 + 48))(v30, v29);
      sub_217E377A0(v14, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
    }
  }

  return result;
}

unint64_t sub_217E3A780(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_217E709A4();
  sub_217E70374();
  sub_217E3A834(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  v4 = sub_217E709D4();

  return sub_217E3A87C(a1, v4);
}

uint64_t sub_217E3A834(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_217E3A87C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_217E3AF88(*(v2 + 48) + v12 * v10, v8, type metadata accessor for ScopeGraphElement.ID);
      v13 = _s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0();
      sub_217E36500(v8, type metadata accessor for ScopeGraphElement.ID);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_217E3A9DC(uint64_t a1, int a2)
{
  v3 = v2;
  sub_217E39420(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v43 - v8;
  v9 = type metadata accessor for ScopeGraphElement.ID(0);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_217E3AE1C();
  v47 = a2;
  result = sub_217E708C4();
  v15 = result;
  if (*(v12 + 16))
  {
    v43 = v3;
    v44 = v12;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    v23 = v48;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v28 = v25 | (v16 << 6);
      v29 = *(v45 + 72);
      v30 = *(v12 + 48) + v29 * v28;
      if (v47)
      {
        sub_217E361A8(v30, v23);
        v31 = *(v12 + 56);
        v32 = *(v46 + 72);
        sub_217E3B0E4(v31 + v32 * v28, v49);
      }

      else
      {
        sub_217E4FA2C(v30, v23);
        v33 = *(v12 + 56);
        v32 = *(v46 + 72);
        sub_217E5DBAC(v33 + v32 * v28, v49);
      }

      v34 = *(v15 + 40);
      sub_217E709A4();
      sub_217E70374();
      sub_217E3A834(&qword_2811B1818, MEMORY[0x277CC95F0]);
      sub_217E70594();
      result = sub_217E709D4();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v23 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v23 = v48;
LABEL_9:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_217E361A8(v23, *(v15 + 48) + v29 * v24);
      result = sub_217E3B0E4(v49, *(v15 + 56) + v32 * v24);
      ++*(v15 + 16);
      v12 = v44;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

void sub_217E3AE1C()
{
  if (!qword_2811B0930)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    sub_217E39420(255, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
    sub_217E3A834(qword_2811B10D8, type metadata accessor for ScopeGraphElement.ID);
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0930);
    }
  }
}

uint64_t sub_217E3AF40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217E3AF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E3AFF0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ScopeGraphElement.ID(0);
  sub_217E361A8(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v10 = a4[7];
  sub_217E39420(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  result = sub_217E3B0E4(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_217E3B0E4(uint64_t a1, uint64_t a2)
{
  sub_217E39420(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E3B178(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[3] = a5;
  v18[4] = a6;
  v11 = sub_217E360A4(v18);
  (*(*(a5 - 8) + 16))(v11, a1, a5);
  v12 = *a2;
  sub_217E33AD0(v18, v16);
  sub_217E3374C(0, &qword_2811B0BD8);
  sub_217E3374C(0, qword_2811B12B8);
  if (swift_dynamicCast())
  {
    sub_217E33C00(v14, v17);
    sub_217E37F28(v17, v17[3]);
    sub_217E3B2D0(a3, a4, v12);
    sub_217E364B4(v17);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_217E382C4(v14, &qword_2811B12B0, qword_2811B12B8, &protocol descriptor for CommandHandler);
  }

  return sub_217E364B4(v18);
}

uint64_t sub_217E3B2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScopeGraphElement.ID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for CommandHandlingRuleUpdate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v35 - v13;
  sub_217E35F40(a1, v9, type metadata accessor for ScopeGraphElement.ID);
  sub_217E3B680(v9, v14);
  v36[3] = v10;
  v36[4] = swift_getWitnessTable();
  v15 = sub_217E360A4(v36);
  (*(v11 + 16))(v15, v14, v10);
  v16 = *(a2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35[0] = *(a2 + 64);
  v18 = v35[0];
  *(a2 + 64) = 0x8000000000000000;
  v20 = sub_217E33C18(a3);
  v21 = *(v18 + 16);
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(v9) = v19;
  if (*(v18 + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_217E58EA4();
    v18 = v35[0];
    goto LABEL_6;
  }

  sub_217E36BF0(v23, isUniquelyReferenced_nonNull_native);
  v18 = v35[0];
  v24 = sub_217E33C18(a3);
  if ((v9 & 1) != (v25 & 1))
  {
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v20 = v24;
LABEL_6:
  v26 = *(a2 + 64);
  *(a2 + 64) = v18;

  v27 = *(a2 + 64);
  if ((v9 & 1) == 0)
  {
    sub_217E362BC(v20, a3, MEMORY[0x277D84F98], *(a2 + 64));
  }

  v28 = *(v27 + 56) + 8 * v20;
  v29 = sub_217E36EF4();
  v31 = v30;
  v33 = v32;
  sub_217E36F24(v36, v35);
  sub_217E36FB4(v35, v29, v31, v33);
  (*(v11 + 8))(v14, v10);
  return sub_217E382C4(v36, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate);
}

uint64_t sub_217E3B614()
{
  result = type metadata accessor for ScopeGraphElement.ID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E3B688(uint64_t a1, void **a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[3] = a5;
  v18[4] = a6;
  v11 = sub_217E360A4(v18);
  (*(*(a5 - 8) + 16))(v11, a1, a5);
  v12 = *a2;
  sub_217E33AD0(v18, v16);
  sub_217E3374C(0, &qword_2811B0BD8);
  sub_217E3374C(0, qword_2811B1470);
  if (swift_dynamicCast())
  {
    sub_217E33C00(v14, v17);
    sub_217E37F28(v17, v17[3]);
    sub_217E483DC(a3, a4, v12);
    sub_217E364B4(v17);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_217E382C4(v14, &qword_2811B1468, qword_2811B1470, &protocol descriptor for EventHandler);
  }

  return sub_217E364B4(v18);
}

uint64_t sub_217E3B7E0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_217E35174(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_217E3B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ScopeReader.CurrentScope(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v13 = sub_217E703B4();
  sub_217E35794(v13, qword_2811B1820);
  sub_217E35350(a1, v12, type metadata accessor for ScopeReader.CurrentScope);
  v14 = sub_217E70394();
  v15 = sub_217E70764();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 136315394;
    v28 = *(v12 + 1);
    v29 = v17;
    sub_217E540D8();
    v18 = sub_217E708F4();
    v27 = a4;
    v20 = v19;
    sub_217E365C0(v12, type metadata accessor for ScopeReader.CurrentScope);
    v21 = sub_217E58888(v18, v20, &v29);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v28 = a5;
    swift_getMetatypeMetadata();
    v22 = sub_217E705D4();
    v24 = sub_217E58888(v22, v23, &v29);
    a4 = v27;

    *(v16 + 14) = v24;
    _os_log_impl(&dword_217E31000, v14, v15, "Scope is requesting initial Rule update. Scope=%s, Rule=%s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v17, -1, -1);
    MEMORY[0x21CEAE800](v16, -1, -1);
  }

  else
  {

    sub_217E365C0(v12, type metadata accessor for ScopeReader.CurrentScope);
  }

  v29 = a4;
  return sub_217E3BAF8(a3, &v29, 1);
}

uint64_t sub_217E3BAF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  sub_217E3BDCC();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  v17 = *(v14 + 48);
  *(&v33 - v15) = *a2;
  v33 = a1;
  sub_217E35350(a1, &v33 + v17 - v15, type metadata accessor for ScopeGraphElement.ID);
  v18 = *(v4 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 152) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_217E3C028(0, v18[2] + 1, 1, v18);
    *(v4 + 152) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_217E3C028(v20 > 1, v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v23 = *(v9 + 72);
  sub_217E35D8C(v16, v18 + v22 + v23 * v21, sub_217E3BDCC);
  *(v4 + 152) = v18;
  swift_beginAccess();
  v24 = *(v4 + 80);
  v25 = *(v4 + 112);
  v41 = *(v4 + 96);
  v42 = v25;
  v26 = *(v4 + 112);
  v43 = *(v4 + 128);
  v27 = *(v4 + 80);
  v40[0] = *(v4 + 64);
  v40[1] = v27;
  v37 = v41;
  v38 = v26;
  v39 = *(v4 + 128);
  v35 = v40[0];
  v36 = v24;
  sub_217E3438C(v40, v44);
  sub_217E3C060(v33, v34);
  v44[2] = v37;
  v44[3] = v38;
  v44[4] = v39;
  v44[0] = v35;
  v44[1] = v36;
  sub_217E347DC(v44);
  v28 = *(v4 + 152);
  if (!v28[2])
  {
    __break(1u);
LABEL_10:
    result = sub_217E6CFE8(v28);
    v28 = result;
    v31 = *(result + 16);
    if (v31)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = *(v4 + 152);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v31 = v28[2];
  if (v31)
  {
LABEL_8:
    v32 = v31 - 1;
    v28[2] = v32;
    *(v4 + 152) = v28;
    sub_217E35D8C(v28 + v22 + v32 * v23, v13, sub_217E3BDCC);
    sub_217E365C0(&v13[*(v8 + 48)], type metadata accessor for ScopeGraphElement.ID);
    return sub_217E3D8A8();
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_217E3BDCC()
{
  if (!qword_2811B0BB0)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811B0BB0);
    }
  }
}

size_t sub_217E3BE34(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_217E39420(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t sub_217E3C060(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ScopeGraphElement.ID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v81 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v80 = &v68 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v68 - v11;
  v13 = sub_217E70374();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v78 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v68 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v68 - v21;
  updated = type metadata accessor for DependencyGraph.UpdateGraphVisitor();
  v24 = updated - 8;
  v25 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2[1];
  v75 = v2[2];
  v76 = v28;
  v29 = v2[3];
  v73 = v2[4];
  v74 = v29;
  sub_217E35F40(a1, v27, type metadata accessor for ScopeGraphElement.ID);
  *&v27[*(v24 + 28)] = a2;
  sub_217E70364();
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v30 = sub_217E703B4();
  v31 = sub_217E35794(v30, qword_2811B1820);
  v32 = v14;
  v71 = *(v14 + 16);
  v71(v20, v22, v13);
  v77 = a1;
  sub_217E35F40(a1, v12, type metadata accessor for ScopeGraphElement.ID);
  v72 = v31;
  v33 = sub_217E70394();
  v70 = sub_217E70764();
  v34 = os_log_type_enabled(v33, v70);
  v82 = v27;
  v83 = v22;
  v79 = v32;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v85 = v69;
    *v35 = 136315394;
    sub_217E447D0(&qword_27CBF23A8, MEMORY[0x277CC95F0]);
    v36 = sub_217E708F4();
    v38 = v37;
    v84 = *(v32 + 8);
    v84(v20, v13);
    v39 = sub_217E58888(v36, v38, &v85);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v40 = v80;
    sub_217E35F40(v12, v80, type metadata accessor for ScopeGraphElement.ID);
    v41 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
    v43 = v42;
    sub_217E3477C(v40, type metadata accessor for ScopeGraphElement.ID);
    sub_217E3477C(v12, type metadata accessor for ScopeGraphElement.ID);
    v44 = sub_217E58888(v41, v43, &v85);
    v22 = v83;

    *(v35 + 14) = v44;
    _os_log_impl(&dword_217E31000, v33, v70, "About to perform a graph update. Update=%s, Node=%s", v35, 0x16u);
    v45 = v69;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v45, -1, -1);
    v46 = v35;
    v27 = v82;
    MEMORY[0x21CEAE800](v46, -1, -1);
  }

  else
  {

    sub_217E3477C(v12, type metadata accessor for ScopeGraphElement.ID);
    v84 = *(v32 + 8);
    v84(v20, v13);
  }

  v47 = v13;
  v48 = v77;
  sub_217E3C900(v27, v77, v76, v75, v74, v73);
  v49 = v78;
  v71(v78, v22, v13);
  v50 = v81;
  sub_217E35F40(v48, v81, type metadata accessor for ScopeGraphElement.ID);
  v51 = sub_217E70394();
  v52 = sub_217E70764();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v85 = v77;
    *v53 = 136315394;
    sub_217E447D0(&qword_27CBF23A8, MEMORY[0x277CC95F0]);
    v54 = sub_217E708F4();
    v56 = v55;
    v84(v49, v47);
    v57 = sub_217E58888(v54, v56, &v85);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    v58 = v80;
    sub_217E35F40(v50, v80, type metadata accessor for ScopeGraphElement.ID);
    v59 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
    v61 = v60;
    sub_217E3477C(v58, type metadata accessor for ScopeGraphElement.ID);
    sub_217E3477C(v50, type metadata accessor for ScopeGraphElement.ID);
    v62 = sub_217E58888(v59, v61, &v85);

    *(v53 + 14) = v62;
    _os_log_impl(&dword_217E31000, v51, v52, "Concluded graph update. Update=%s, Node=%s", v53, 0x16u);
    v63 = v77;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v63, -1, -1);
    MEMORY[0x21CEAE800](v53, -1, -1);

    v84(v83, v47);
    v64 = v82;
  }

  else
  {

    sub_217E3477C(v50, type metadata accessor for ScopeGraphElement.ID);
    v65 = v49;
    v66 = v84;
    v84(v65, v47);
    v66(v22, v47);
    v64 = v27;
  }

  return sub_217E3477C(v64, type metadata accessor for DependencyGraph.UpdateGraphVisitor);
}

uint64_t type metadata accessor for DependencyGraph.UpdateGraphVisitor()
{
  result = qword_2811B1248;
  if (!qword_2811B1248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217E3C858()
{
  result = type metadata accessor for ScopeGraphElement.ID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E3C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v44 = a5;
  v45 = a1;
  v9 = type metadata accessor for ScopeGraphElement.ID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E3C8CC(0);
  v14 = v13;
  v42 = *(v13 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E38B24(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v26 = &v41 - v25;
  if (*(a3 + 16))
  {
    result = sub_217E3A780(a2);
    if (v27)
    {
      sub_217E35F40(*(a3 + 56) + *(v19 + 72) * result, v23, sub_217E38B24);
      sub_217E39C30(v23, v26, sub_217E38B24);
      v28 = sub_217E706E4();
      MEMORY[0x28223BE20](v28);
      v29 = v45;
      *(&v41 - 2) = v26;
      *(&v41 - 1) = v29;
      result = sub_217E3CD98(sub_217E3D640, (&v41 - 4), "TeaBreeze/DependencyGraph.swift", 31);
      if (result)
      {
        v30 = v44;
        v31 = *(v44 + 16);
        v41 = a6;
        if (v31 && (result = sub_217E3A780(a2), (v32 & 1) != 0))
        {
          v33 = *(*(v30 + 56) + 8 * result);
        }

        else
        {
          v33 = MEMORY[0x277D84FA0];
        }

        v34 = 0;
        v35 = 1 << *(v33 + 32);
        v36 = -1;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        v37 = v36 & *(v33 + 56);
        for (i = (v35 + 63) >> 6; v37; result = sub_217E3477C(v12, type metadata accessor for ScopeGraphElement.ID))
        {
          v39 = v34;
LABEL_17:
          v40 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
          sub_217E35F40(*(v33 + 48) + *(v42 + 72) * (v40 | (v39 << 6)), v17, sub_217E3C8CC);
          sub_217E35F40(&v17[*(v14 + 28)], v12, type metadata accessor for ScopeGraphElement.ID);
          sub_217E3477C(v17, sub_217E3C8CC);
          sub_217E3C900(v45, v12, a3, v43, v44, v41);
        }

        while (1)
        {
          v39 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v39 >= i)
          {
            sub_217E3477C(v26, sub_217E38B24);
          }

          v37 = *(v33 + 56 + 8 * v39);
          ++v34;
          if (v37)
          {
            v34 = v39;
            goto LABEL_17;
          }
        }

        __break(1u);
      }

      else
      {
        return sub_217E3477C(v26, sub_217E38B24);
      }
    }
  }

  return result;
}

uint64_t sub_217E3CD28(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E3CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_217E706D4();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_217E3D65C(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v13[0]);
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_217E70814();
  MEMORY[0x21CEADE80](0xD00000000000003FLL, 0x8000000217E73C20);
  v12 = sub_217E70A34();
  MEMORY[0x21CEADE80](v12);

  MEMORY[0x21CEADE80](46, 0xE100000000000000);
  result = sub_217E708A4();
  __break(1u);
  return result;
}

void sub_217E3CF64(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v72 = a3;
  sub_217E38B24(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v70 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v70 - v13;
  v15 = type metadata accessor for ScopeGraphElement(0);
  v16 = *(v15 + 20);
  if ((_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (*(a2 + *(type metadata accessor for DependencyGraph.UpdateGraphVisitor() + 20)) & 4) != 0)
  {
    v71 = v15;
    v53 = (a1 + *(v15 + 24));
    v54 = v53[3];
    v55 = v53[4];
    sub_217E37F28(v53, v54);
    v36 = (*(v55 + 40))(v54, v55);
    if (qword_2811B1810 != -1)
    {
      swift_once();
    }

    v56 = sub_217E703B4();
    sub_217E35794(v56, qword_2811B1820);
    sub_217E35F40(a1, v9, sub_217E38B24);
    v37 = sub_217E70394();
    v57 = sub_217E70764();
    if (os_log_type_enabled(v37, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v73 = v59;
      *v58 = 136315394;
      v60 = &v9[*(v71 + 24)];
      v61 = *(v60 + 4);
      sub_217E37F28(v60, *(v60 + 3));
      v62 = *(v61 + 8);
      v63 = sub_217E708F4();
      v65 = v64;
      sub_217E3477C(v9, sub_217E38B24);
      v66 = sub_217E58888(v63, v65, &v73);

      *(v58 + 4) = v66;
      *(v58 + 12) = 2080;
      if (v36)
      {
        v67 = 0xD000000000000015;
      }

      else
      {
        v67 = 0xD000000000000013;
      }

      if (v36)
      {
        v68 = "Skipping dependants";
      }

      else
      {
        v68 = "(visiting dependants)";
      }

      v69 = sub_217E58888(v67, v68 | 0x8000000000000000, &v73);

      *(v58 + 14) = v69;
      _os_log_impl(&dword_217E31000, v37, v57, "Not requesting source update. Source=%s, Result=%s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v59, -1, -1);
      v51 = v58;
      goto LABEL_27;
    }

    v52 = v9;
LABEL_29:
    sub_217E3477C(v52, sub_217E38B24);
    goto LABEL_30;
  }

  v17 = v15;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v18 = sub_217E703B4();
  v19 = sub_217E35794(v18, qword_2811B1820);
  sub_217E35F40(a1, v14, sub_217E38B24);
  v71 = v19;
  v20 = sub_217E70394();
  v21 = sub_217E70764();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v73 = v23;
    *v22 = 136315138;
    v70 = v12;
    v24 = v17;
    v25 = &v14[*(v17 + 24)];
    v26 = *(v25 + 4);
    sub_217E37F28(v25, *(v25 + 3));
    v27 = *(v26 + 8);
    v28 = sub_217E708F4();
    v30 = v29;
    sub_217E3477C(v14, sub_217E38B24);
    v31 = sub_217E58888(v28, v30, &v73);

    *(v22 + 4) = v31;
    v17 = v24;
    v12 = v70;
    _os_log_impl(&dword_217E31000, v20, v21, "Requesting rule update. Source=%s", v22, 0xCu);
    sub_217E364B4(v23);
    MEMORY[0x21CEAE800](v23, -1, -1);
    MEMORY[0x21CEAE800](v22, -1, -1);
  }

  else
  {

    sub_217E3477C(v14, sub_217E38B24);
  }

  v32 = (a1 + *(v17 + 24));
  v33 = v32[3];
  v34 = v32[4];
  sub_217E37F28(v32, v33);
  v35 = v17;
  v36 = (*(v34 + 72))(v33, v34);
  sub_217E35F40(a1, v12, sub_217E38B24);
  v37 = sub_217E70394();
  v38 = sub_217E70764();
  if (!os_log_type_enabled(v37, v38))
  {

    v52 = v12;
    goto LABEL_29;
  }

  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v73 = v40;
  *v39 = 136315394;
  v41 = &v12[*(v35 + 24)];
  v42 = *(v41 + 4);
  sub_217E37F28(v41, *(v41 + 3));
  v43 = *(v42 + 8);
  v44 = sub_217E708F4();
  v46 = v45;
  sub_217E3477C(v12, sub_217E38B24);
  v47 = sub_217E58888(v44, v46, &v73);

  *(v39 + 4) = v47;
  *(v39 + 12) = 2080;
  if (v36)
  {
    v48 = 0xD000000000000025;
  }

  else
  {
    v48 = 0xD000000000000028;
  }

  if (v36)
  {
    v49 = "ed (skipping dependants)";
  }

  else
  {
    v49 = "TeaBreeze/DependencyGraph.swift";
  }

  v50 = sub_217E58888(v48, v49 | 0x8000000000000000, &v73);

  *(v39 + 14) = v50;
  _os_log_impl(&dword_217E31000, v37, v38, "Source update complete. Source=%s, Result=%s", v39, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CEAE800](v40, -1, -1);
  v51 = v39;
LABEL_27:
  MEMORY[0x21CEAE800](v51, -1, -1);

LABEL_30:
  *v72 = v36 & 1;
}

void *sub_217E3D65C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_217E3D6E8()
{
  v1 = *v0;
  if ((*(v0 + *(*v0 + 136)) & 1) == 0)
  {
    *(v0 + *(*v0 + 120)) = 1;
    sub_217E3D7FC(v0);
    *(v0 + *(*v0 + 120)) = 0;
    v1 = *v0;
    if (*(v0 + *(*v0 + 128)) == 1)
    {
      sub_217E5C3B8();
      v1 = *v0;
    }
  }

  *(v0 + *(v1 + 112)) = 0;
  return 1;
}

uint64_t sub_217E3D7FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 104);
  swift_beginAccess();
  (*(*(v1 + 88) + 8))(*(v1 + 80));
  return swift_endAccess();
}

uint64_t sub_217E3D8A8()
{
  v1 = v0;
  sub_217E35174(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = type metadata accessor for ScopeGraphElement.ID(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v10 - 8);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(*(v0 + 152) + 16))
  {
    swift_beginAccess();
    v16 = *(v0 + 168);
    v17 = *(v16 + 16);
    v57 = v11;
    if (v17)
    {
      v64 = v15;

      v18 = (v16 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;

        v20(v21);

        v18 += 2;
        --v17;
      }

      while (v17);

      v22 = *(v1 + 168);
      v15 = v64;
    }

    *(v1 + 168) = MEMORY[0x277D84F90];

    swift_beginAccess();
    v23 = *(v1 + 112);
    v68 = *(v1 + 96);
    v69 = v23;
    v70 = *(v1 + 128);
    v24 = *(v1 + 80);
    v66 = *(v1 + 64);
    v67 = v24;
    result = sub_217E3DE4C();
    v25 = 0;
    v26 = *(result + 64);
    v55 = result + 64;
    v27 = 1 << *(result + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v26;
    v54 = (v27 + 63) >> 6;
    v62 = v3;
    v56 = result;
LABEL_10:
    if (v29)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v30 >= v54)
      {
      }

      v29 = *(v55 + 8 * v30);
      ++v25;
      if (v29)
      {
        v25 = v30;
LABEL_15:
        v31 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v32 = (v25 << 9) | (8 * v31);
        v33 = *(*(result + 56) + v32);
        v34 = *(v33 + 16);
        if (v34)
        {
          v59 = v29;
          v60 = v25;
          v61 = *(*(result + 48) + v32);
          v35 = v57;
          v36 = v33 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
          v58 = v33;

          swift_beginAccess();
          v37 = *(v35 + 72);
          v63 = v37;
          while (1)
          {
            sub_217E35350(v36, v15, type metadata accessor for ScopeGraphElement.ID);
            if (!*(*(v1 + 160) + 16) && !*(*(v1 + 152) + 16))
            {
              *&v66 = v61;
              sub_217E3BAF8(v15, &v66, 0);
              sub_217E365C0(v15, type metadata accessor for ScopeGraphElement.ID);
              goto LABEL_20;
            }

            v38 = *(v1 + 128);
            v69 = *(v1 + 112);
            v70 = v38;
            v39 = *(v1 + 80);
            v68 = *(v1 + 96);
            v66 = *(v1 + 64);
            v67 = v39;
            v40 = *(&v66 + 1);
            if (*(*(&v66 + 1) + 16))
            {
              sub_217E3438C(&v66, v65);
              v41 = sub_217E3A780(v15);
              if (v42)
              {
                v43 = *(v40 + 56) + *(v3 + 72) * v41;
                v64 = type metadata accessor for ScopeGraphElement;
                sub_217E3B7E0(v43, v7, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
                sub_217E365C0(v15, type metadata accessor for ScopeGraphElement.ID);
                sub_217E454AC(v7, v9, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
                v44 = &v9[*(type metadata accessor for ScopeGraphElement(0) + 24)];
                v45 = v9;
                v46 = v7;
                v47 = v1;
                v48 = v15;
                v50 = *(v44 + 3);
                v49 = *(v44 + 4);
                sub_217E37F28(v44, v50);
                v51 = *(v49 + 48);
                v52 = v50;
                v7 = v46;
                v9 = v45;
                v53 = v49;
                v15 = v48;
                v1 = v47;
                v51(v52, v53);
                v3 = v62;
                v37 = v63;
                sub_217E377A0(v45, qword_2811B0B28, v64, type metadata accessor for Vertex);
                goto LABEL_19;
              }
            }

            else
            {
              sub_217E3438C(&v66, v65);
            }

            sub_217E365C0(v15, type metadata accessor for ScopeGraphElement.ID);
LABEL_19:
            sub_217E347DC(&v66);
LABEL_20:
            v36 += v37;
            if (!--v34)
            {

              result = v56;
              v25 = v60;
              v29 = v59;
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_217E3DE4C()
{
  sub_217E38B24(0);
  v89 = *(v1 - 8);
  v2 = *(v89 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v88 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v94 = &v85 - v5;
  v6 = type metadata accessor for ScopeGraphElement.ID(0);
  v102 = *(v6 - 8);
  v7 = *(v102 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v87 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v85 - v11;
  MEMORY[0x28223BE20](v10);
  v100 = &v85 - v13;
  sub_217E3462C(0, &qword_2811B12A0, sub_217E3E6BC, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = (&v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = &v85 - v19;
  v104 = *(v0 + 8);
  v21 = *(v0 + 40);
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v21 + 64);
  v26 = (v23 + 63) >> 6;
  v96 = v21;

  v90 = 0;
  v27 = 0;
  v91 = MEMORY[0x277D84F98];
  v92 = v26;
  v101 = v12;
  v99 = v20;
  v93 = v22;
LABEL_6:
  if (v25)
  {
    v28 = v27;
LABEL_11:
    v97 = v28;
    v29 = (v28 << 9) | (8 * __clz(__rbit64(v25)));
    v30 = *(v96 + 56);
    v95 = *(*(v96 + 48) + v29);
    v31 = *(v30 + v29);
    v98 = (v25 - 1) & v25;
    v32 = v31 + 64;
    v33 = 1 << *(v31 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v31 + 64);
    v36 = (v33 + 63) >> 6;
    v103 = v31;

    v37 = 0;
    if (!v35)
    {
LABEL_18:
      if (v36 <= v37 + 1)
      {
        v39 = v37 + 1;
      }

      else
      {
        v39 = v36;
      }

      v40 = v39 - 1;
      while (1)
      {
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v38 >= v36)
        {
          sub_217E3E6BC();
          v49 = v71;
          (*(*(v71 - 8) + 56))(v18, 1, 1, v71);
          v35 = 0;
          v37 = v40;
          goto LABEL_27;
        }

        v35 = *(v32 + 8 * v38);
        ++v37;
        if (v35)
        {
          v37 = v38;
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

    while (1)
    {
      while (1)
      {
        v38 = v37;
LABEL_26:
        v41 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v42 = v41 | (v38 << 6);
        v43 = (*(v103 + 48) + 24 * v42);
        v44 = *v43;
        v45 = v43[1];
        v46 = v43[2];
        v47 = v100;
        sub_217E35F40(*(v103 + 56) + *(v102 + 72) * v42, v100, type metadata accessor for ScopeGraphElement.ID);
        sub_217E3E6BC();
        v49 = v48;
        v50 = *(v48 + 48);
        *v18 = v44;
        v18[1] = v45;
        v18[2] = v46;
        sub_217E39C30(v47, v18 + v50, type metadata accessor for ScopeGraphElement.ID);
        (*(*(v49 - 8) + 56))(v18, 0, 1, v49);

        v12 = v101;
        v20 = v99;
LABEL_27:
        sub_217E3E728(v18, v20);
        sub_217E3E6BC();
        if ((*(*(v49 - 8) + 48))(v20, 1, v49) == 1)
        {

          v27 = v97;
          v25 = v98;
          v26 = v92;
          v22 = v93;
          goto LABEL_6;
        }

        v51 = *(v20 + 2);

        sub_217E39C30(&v20[*(v49 + 48)], v12, type metadata accessor for ScopeGraphElement.ID);
        v52 = v104;
        if (*(v104 + 16))
        {
          v53 = sub_217E3A780(v12);
          if (v54)
          {
            break;
          }
        }

        sub_217E3477C(v12, type metadata accessor for ScopeGraphElement.ID);
        if (!v35)
        {
          goto LABEL_18;
        }
      }

      v55 = v88;
      sub_217E35F40(*(v52 + 56) + *(v89 + 72) * v53, v88, sub_217E38B24);
      v56 = v55;
      v57 = v94;
      sub_217E39C30(v56, v94, sub_217E38B24);
      v58 = (v57 + *(type metadata accessor for ScopeGraphElement(0) + 24));
      v59 = v58[3];
      v60 = v58[4];
      sub_217E37F28(v58, v59);
      if ((*(v60 + 40))(v59, v60))
      {
        break;
      }

      sub_217E3477C(v12, type metadata accessor for ScopeGraphElement.ID);
LABEL_47:
      sub_217E3477C(v94, sub_217E38B24);
      if (!v35)
      {
        goto LABEL_18;
      }
    }

    sub_217E35F40(v12, v87, type metadata accessor for ScopeGraphElement.ID);
    sub_217E3E864(v90);
    v61 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v61;
    v64 = sub_217E33C18(v95);
    v65 = v61[2];
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      goto LABEL_54;
    }

    if (v61[3] < v67)
    {
      LODWORD(v91) = v63;
      sub_217E5D0D8(v67, isUniquelyReferenced_nonNull_native);
      v68 = sub_217E33C18(v95);
      if ((v91 & 1) != (v69 & 1))
      {
        goto LABEL_56;
      }

      v64 = v68;
      v70 = v105;
      if (v91)
      {
        goto LABEL_42;
      }

LABEL_40:
      v70[(v64 >> 6) + 8] |= 1 << v64;
      *(v70[6] + 8 * v64) = v95;
      *(v70[7] + 8 * v64) = MEMORY[0x277D84F90];
      v72 = v70[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        goto LABEL_55;
      }

      v70[2] = v74;
      goto LABEL_42;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v70 = v105;
      if ((v63 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v83 = v63;
      sub_217E59728();
      v70 = v105;
      if ((v83 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_42:
    v91 = v70;
    v75 = v70[7];
    v76 = *(v75 + 8 * v64);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *(v75 + 8 * v64) = v76;
    v90 = v64;
    if ((v77 & 1) == 0)
    {
      v76 = sub_217E5CD20(0, v76[2] + 1, 1, v76);
      *(v75 + 8 * v64) = v76;
    }

    v79 = v76[2];
    v78 = v76[3];
    v86 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      v82 = sub_217E5CD20(v78 > 1, v86, 1, v76);
      *(v75 + 8 * v90) = v82;
    }

    sub_217E3477C(v12, type metadata accessor for ScopeGraphElement.ID);
    v80 = *(v75 + 8 * v90);
    v81 = v87;
    *(v80 + 16) = v86;
    sub_217E39C30(v81, v80 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v79, type metadata accessor for ScopeGraphElement.ID);
    v90 = sub_217E504CC;
    goto LABEL_47;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      sub_217E3E864(v90);
      return v91;
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
    if (v25)
    {
      goto LABEL_11;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_217E70944();
  __break(1u);
  return result;
}

void sub_217E3E6BC()
{
  if (!qword_2811B12A8)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811B12A8);
    }
  }
}

uint64_t sub_217E3E728(uint64_t a1, uint64_t a2)
{
  sub_217E3462C(0, &qword_2811B12A0, sub_217E3E6BC, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E3E7BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E3E824(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_217E3E864(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217E3E874(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_217E3E8BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t Dependency.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84DE8];
  v5 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ScopeReader(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  _s9TeaBreeze11ScopeReaderV7currentACyFZ_0(&v23 - v16);
  sub_217E3EB34(v17, v15);
  a2[3] = type metadata accessor for NonAmbiguousDependencyReader();
  a2[4] = swift_getWitnessTable();
  v18 = sub_217E360A4(a2);
  v19 = *a1;
  sub_217E3EC44(v15, v18);
  v20 = *(v19 + *v4 + 8);
  *(v18 + *(type metadata accessor for NonAmbiguousDependencyReader() + 28)) = a1;
  v21 = *(v11 + 28);

  sub_217E3ECA8();

  (*(v6 + 8))(v9, v5);
  return sub_217E458C4(v17);
}

uint64_t sub_217E3EB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeReader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E3EBB0(uint64_t a1)
{
  result = type metadata accessor for ScopeReader(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for Dependencies();
    v4 = *(a1 + 16);
    result = sub_217E70A24();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_217E3EC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeReader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E3ECCC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v14 = *a2;
  nullsub_1(a3, a4, a5, a3);
  v10 = type metadata accessor for EquatableDependencyKeyOperations();
  WitnessTable = swift_getWitnessTable();
  return sub_217E3EE68(a1, &v14, v12, a3, v10, a4, WitnessTable, a6);
}

uint64_t Dependencies.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = *(type metadata accessor for Dependencies() + 24);
  v12 = v4[1];
  return sub_217E3ECCC(v4 + v10, &v12, a1, a2, a3, a4);
}

{
  v5 = v4;
  v19[0] = a4;
  v19[1] = a3;
  v8 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v19 - v12;
  v14 = *v4;
  v15 = type metadata accessor for Dependencies();
  v16 = *(v4 + *(v15 + 28));
  sub_217E65D98(v5, a2, v13);
  v17 = *(v15 + 24);
  v20 = *(v5 + 8);
  sub_217E6B244(v13, v5 + v17, &v20, a1, a2, v19[0]);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_217E3EE68@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v88 = a3;
  v9 = v8;
  v89 = a5;
  v91 = a4;
  v87 = a8;
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v81 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v84 = &v80 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v80 - v23;
  v92 = *a2;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v25 = sub_217E703B4();
  v26 = sub_217E35794(v25, qword_2811B1820);
  v90 = a1;
  sub_217E3B7E0(a1, v24, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v86 = v26;
  v27 = sub_217E70394();
  v28 = sub_217E70764();
  if (os_log_type_enabled(v27, v28))
  {
    v85 = a7;
    v82 = v9;
    v83 = a6;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v98[0] = v30;
    *v29 = 136315650;
    *&v95 = v92;
    sub_217E540D8();
    v31 = sub_217E708F4();
    v33 = sub_217E58888(v31, v32, v98);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v34 = sub_217E70A34();
    v36 = sub_217E58888(v34, v35, v98);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2080;
    sub_217E3B7E0(v24, v22, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v37 = type metadata accessor for ScopeGraphElement.ID(0);
    if ((*(*(v37 - 8) + 48))(v22, 1, v37) == 1)
    {
      v38 = 7104878;
      sub_217E377A0(v22, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v39 = 0xE300000000000000;
    }

    else
    {
      v38 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
      v39 = v41;
      sub_217E365C0(v22, type metadata accessor for ScopeGraphElement.ID);
    }

    a7 = v85;
    sub_217E377A0(v24, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v42 = sub_217E58888(v38, v39, v98);

    *(v29 + 24) = v42;
    _os_log_impl(&dword_217E31000, v27, v28, "Scope requested for dependency. Scope=%s, Key=%s, Access=%s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v30, -1, -1);
    MEMORY[0x21CEAE800](v29, -1, -1);

    a6 = v83;
    v40 = v91;
    v9 = v82;
  }

  else
  {

    sub_217E377A0(v24, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v40 = v91;
  }

  v43 = v89;
  v94[0] = v92;
  v101 = v92;
  v44 = v90;
  v45 = v88;
  sub_217E3F920(v90, v94, &v101, v88, v40, v89, &v95, a7);
  if (v96)
  {
    sub_217E33C00(&v95, v98);
    sub_217E33AD0(v98, &v95);
    v46 = sub_217E70394();
    v47 = sub_217E70764();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v101 = v49;
      *v48 = 136315650;
      v94[0] = v92;
      sub_217E540D8();
      v50 = sub_217E708F4();
      v52 = sub_217E58888(v50, v51, &v101);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v53 = sub_217E70A34();
      v55 = sub_217E58888(v53, v54, &v101);

      *(v48 + 14) = v55;
      *(v48 + 22) = 2080;
      sub_217E37F28(&v95, v96);
      v94[0] = swift_getDynamicType();
      v94[1] = v97;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_getExtendedExistentialTypeMetadata();
      v56 = sub_217E705D4();
      v58 = v57;
      sub_217E364B4(&v95);
      v59 = sub_217E58888(v56, v58, &v101);

      *(v48 + 24) = v59;
      _os_log_impl(&dword_217E31000, v46, v47, "Found existing dependency instance. Scope=%s, Key=%s, Source=%s", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v49, -1, -1);
      MEMORY[0x21CEAE800](v48, -1, -1);
    }

    else
    {

      sub_217E364B4(&v95);
    }

    v75 = v99;
    v76 = v100;
    sub_217E37F28(v98, v99);
    (*(v76 + 24))(v75, v76);
    return sub_217E364B4(v98);
  }

  else
  {
    v85 = a7;
    v60 = v84;
    sub_217E3B7E0(v44, v84, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v61 = sub_217E70394();
    v62 = sub_217E70764();
    if (os_log_type_enabled(v61, v62))
    {
      v82 = v9;
      v83 = a6;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v98[0] = v64;
      *v63 = 136315650;
      *&v95 = v92;
      sub_217E540D8();
      v65 = sub_217E708F4();
      v67 = sub_217E58888(v65, v66, v98);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      v68 = sub_217E70A34();
      v70 = sub_217E58888(v68, v69, v98);

      *(v63 + 14) = v70;
      *(v63 + 22) = 2080;
      v71 = v81;
      sub_217E3B7E0(v60, v81, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v72 = type metadata accessor for ScopeGraphElement.ID(0);
      if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
      {
        v73 = 7104878;
        sub_217E377A0(v71, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
        v74 = 0xE300000000000000;
      }

      else
      {
        v73 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
        v74 = v78;
        sub_217E365C0(v71, type metadata accessor for ScopeGraphElement.ID);
      }

      v45 = v88;
      sub_217E377A0(v84, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v79 = sub_217E58888(v73, v74, v98);

      *(v63 + 24) = v79;
      _os_log_impl(&dword_217E31000, v61, v62, "Scope could not find dependency in tree; will instantiate dependency. Scope=%s, Key=%s, Access=%s", v63, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v64, -1, -1);
      MEMORY[0x21CEAE800](v63, -1, -1);

      a6 = v83;
      v43 = v89;
    }

    else
    {

      sub_217E377A0(v60, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    }

    v98[0] = v92;
    return sub_217E40CE8(v90, v98, v45, v40, v43, a6, v85, v87);
  }
}

double sub_217E3F920@<D0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v9 = v8;
  v110 = a4;
  v111 = a6;
  v109 = a8;
  v106 = a5;
  *&v126[0] = swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  v14 = type metadata accessor for ScopeGraphElement.ID(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_217E70794();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v107 = (&v94 - v18);
  v114 = v14;
  v113 = *(v14 - 8);
  v19 = *(v113 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v98 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v102 = &v94 - v22;
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v99 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v94 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v101 = &v94 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v94 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v94 - v35;
  v37 = *a2;
  v105 = *a3;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v38 = sub_217E703B4();
  v39 = sub_217E35794(v38, qword_2811B1820);
  v112 = a1;
  sub_217E3B7E0(a1, v36, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v100 = v39;
  v40 = sub_217E70394();
  v41 = sub_217E70764();
  v42 = os_log_type_enabled(v40, v41);
  v104 = v37;
  if (v42)
  {
    v96 = v41;
    v97 = v29;
    v103 = a7;
    v43 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *&v126[0] = v95;
    *v43 = 136315906;
    *&v122[0] = v37;
    v94 = sub_217E540D8();
    v44 = sub_217E708F4();
    v46 = sub_217E58888(v44, v45, v126);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2080;
    v47 = sub_217E70A34();
    v49 = sub_217E58888(v47, v48, v126);

    *(v43 + 14) = v49;
    *(v43 + 22) = 2080;
    sub_217E3B7E0(v36, v34, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    if ((*(v113 + 48))(v34, 1, v114) == 1)
    {
      v50 = 7104878;
      sub_217E377A0(v34, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v51 = 0xE300000000000000;
    }

    else
    {
      v50 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
      v51 = v52;
      sub_217E365C0(v34, type metadata accessor for ScopeGraphElement.ID);
    }

    sub_217E377A0(v36, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v53 = sub_217E58888(v50, v51, v126);

    *(v43 + 24) = v53;
    *(v43 + 32) = 2080;
    *&v122[0] = v105;
    v54 = sub_217E708F4();
    v56 = sub_217E58888(v54, v55, v126);

    *(v43 + 34) = v56;
    _os_log_impl(&dword_217E31000, v40, v96, "Attempting to resolve existing instance of dependency. Scope=%s, Key=%s, Access=%s, Origin=%s", v43, 0x2Au);
    v57 = v95;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v57, -1, -1);
    MEMORY[0x21CEAE800](v43, -1, -1);

    a7 = v103;
    v37 = v104;
    v29 = v97;
  }

  else
  {

    sub_217E377A0(v36, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  }

  swift_beginAccess();
  v58 = v9[5];
  v59 = v9[7];
  v123 = v9[6];
  v124 = v59;
  v60 = v9[7];
  v125 = v9[8];
  v61 = v9[5];
  v122[0] = v9[4];
  v122[1] = v61;
  v118 = v123;
  v119 = v60;
  v120 = v9[8];
  v116 = v122[0];
  v117 = v58;
  v115 = v37;
  v62 = v109;
  v63 = *(v109 + 16);
  sub_217E3438C(v122, v126);
  v64 = v107;
  v63(&v116, &v115, v111, v62);
  v126[2] = v118;
  v126[3] = v119;
  v126[4] = v120;
  v126[0] = v116;
  v126[1] = v117;
  sub_217E347DC(v126);
  v65 = TupleTypeMetadata2;
  v66 = (*(*(TupleTypeMetadata2 - 8) + 48))(v64, 1, TupleTypeMetadata2);
  v67 = v112;
  if (v66 == 1)
  {
    sub_217E3B7E0(v112, v29, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v68 = sub_217E70394();
    v69 = sub_217E70764();
    if (os_log_type_enabled(v68, v69))
    {
      v103 = a7;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v116 = v71;
      *v70 = 136315906;
      *&v121[0] = v104;
      sub_217E540D8();
      v72 = sub_217E708F4();
      v74 = v29;
      v75 = sub_217E58888(v72, v73, &v116);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      v76 = sub_217E70A34();
      v78 = sub_217E58888(v76, v77, &v116);

      *(v70 + 14) = v78;
      *(v70 + 22) = 2080;
      v79 = v74;
      v80 = v74;
      v81 = v99;
      sub_217E3B7E0(v80, v99, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      if ((*(v113 + 48))(v81, 1, v114) == 1)
      {
        v82 = 7104878;
        sub_217E377A0(v81, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
        v83 = 0xE300000000000000;
      }

      else
      {
        v82 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
        v83 = v89;
        sub_217E365C0(v81, type metadata accessor for ScopeGraphElement.ID);
      }

      sub_217E377A0(v79, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v90 = sub_217E58888(v82, v83, &v116);

      *(v70 + 24) = v90;
      *(v70 + 32) = 2080;
      *&v121[0] = v105;
      v91 = sub_217E708F4();
      v93 = sub_217E58888(v91, v92, &v116);

      *(v70 + 34) = v93;
      _os_log_impl(&dword_217E31000, v68, v69, "Did not find instance of dependency in scope, or any parent. Scope=%s, Key=%s, Access=%s, Origin=%s", v70, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v71, -1, -1);
      MEMORY[0x21CEAE800](v70, -1, -1);

      a7 = v103;
    }

    else
    {

      sub_217E377A0(v29, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    }

    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
  }

  else
  {
    v84 = *(v65 + 48);
    sub_217E33C00(v64, v121);
    v85 = v102;
    sub_217E35D8C(v64 + v84, v102, type metadata accessor for ScopeGraphElement.ID);
    v86 = v101;
    sub_217E3B7E0(v67, v101, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    if ((*(v113 + 48))(v86, 1, v114) == 1)
    {
      sub_217E365C0(v85, type metadata accessor for ScopeGraphElement.ID);
      sub_217E377A0(v86, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    }

    else
    {
      v87 = v98;
      sub_217E35D8C(v86, v98, type metadata accessor for ScopeGraphElement.ID);
      swift_beginAccess();
      sub_217E43DBC(v85, v87);
      swift_endAccess();
      sub_217E365C0(v87, type metadata accessor for ScopeGraphElement.ID);
      sub_217E365C0(v85, type metadata accessor for ScopeGraphElement.ID);
    }

    sub_217E33C00(v121, a7);
  }

  return result;
}

uint64_t sub_217E404F8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  v13 = a1[4];
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  v8 = *a2;
  return sub_217E4054C(&v8, a3, a4, a5);
}

uint64_t sub_217E4054C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = v4[3];
  v19 = v4[2];
  v20 = v9;
  v21 = v4[4];
  v10 = v4[1];
  v17 = *v4;
  v18 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_217E40620(a2, a2, a3);
  v16 = v8;
  sub_217E40624(v12, v13, v14, &v16, AssociatedTypeWitness, a4);
}

uint64_t sub_217E40624@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v65 = a5;
  v57 = a3;
  v56 = a2;
  v55 = a1;
  v54 = a6;
  sub_217E38B24(0);
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v53 - v12;
  v13 = type metadata accessor for ScopeGraphElement.ID(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E345F8(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  v25 = *a4;
  v26 = v6[1];
  v28 = v6[5];
  v27 = v6[6];
  v68 = (v14 + 56);
  v53 = v14;
  v67 = (v14 + 48);
  v64 = v13;
  v62 = v17;
  v59 = v26;
  v58 = v28;
  if (*(v28 + 16))
  {
    goto LABEL_2;
  }

LABEL_9:
  v34 = 1;
  while (1)
  {
    (*v68)(v24, v34, 1, v13);
    sub_217E35F40(v24, v22, sub_217E345F8);
    if ((*v67)(v22, 1, v13) == 1)
    {
      v35 = sub_217E345F8;
      v36 = v22;
      goto LABEL_18;
    }

    sub_217E39C30(v22, v17, type metadata accessor for ScopeGraphElement.ID);
    if (*(v26 + 16))
    {
      v37 = sub_217E3A780(v17);
      if (v38)
      {
        break;
      }
    }

    v35 = type metadata accessor for ScopeGraphElement.ID;
    v36 = v17;
LABEL_18:
    sub_217E3477C(v36, v35);
    if (!*(v27 + 16))
    {
      goto LABEL_22;
    }

LABEL_19:
    v46 = sub_217E33C18(v25);
    if ((v47 & 1) == 0)
    {
LABEL_22:
      sub_217E3477C(v24, sub_217E345F8);
      *&v71[0] = v65;
      swift_getExtendedExistentialTypeMetadata();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v54, 1, 1, TupleTypeMetadata2);
    }

    v25 = *(*(v27 + 56) + 8 * v46);
    sub_217E3477C(v24, sub_217E345F8);
    if (!*(v28 + 16))
    {
      goto LABEL_9;
    }

LABEL_2:
    v29 = sub_217E33C18(v25);
    if ((v30 & 1) == 0)
    {
      goto LABEL_9;
    }

    v31 = *(*(v28 + 56) + 8 * v29);

    if (!v31)
    {
      goto LABEL_9;
    }

    if (*(v31 + 16) && (v32 = sub_217E3960C(v55, v56, v57), (v33 & 1) != 0))
    {
      sub_217E35F40(*(v31 + 56) + *(v53 + 72) * v32, v24, type metadata accessor for ScopeGraphElement.ID);
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }
  }

  v39 = v61;
  sub_217E35F40(*(v26 + 56) + *(v63 + 72) * v37, v61, sub_217E38B24);
  v40 = v60;
  sub_217E39C30(v39, v60, sub_217E38B24);
  v41 = (v40 + *(type metadata accessor for ScopeGraphElement(0) + 24));
  v42 = v41[3];
  v43 = v41[4];
  sub_217E37F28(v41, v42);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = &v53;
  v45 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v43 + 32))(v42, v43);
  sub_217E3477C(v40, sub_217E38B24);
  v69 = v65;
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = v62;
    sub_217E3477C(v62, type metadata accessor for ScopeGraphElement.ID);
    v13 = v64;
    v26 = v59;
    v28 = v58;
    if (!*(v27 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_217E3477C(v24, sub_217E345F8);
  sub_217E33C00(&v70, v71);
  v50 = swift_getTupleTypeMetadata2();
  v51 = *(v50 + 48);
  v52 = v54;
  sub_217E33C00(v71, v54);
  sub_217E39C30(v62, v52 + v51, type metadata accessor for ScopeGraphElement.ID);
  return (*(*(v50 - 8) + 56))(v52, 0, 1, v50);
}

uint64_t sub_217E40CE8@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v197 = a7;
  v225 = a2;
  v178 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_217E70794();
  v176 = *(v14 - 8);
  v177 = v14;
  v15 = *(v176 + 64);
  MEMORY[0x28223BE20](v14);
  v186 = &v174 - v16;
  v17 = type metadata accessor for ScopeReader.CurrentScope(0);
  v181 = *(v17 - 8);
  v182 = v17;
  v18 = *(v181 + 64);
  MEMORY[0x28223BE20](v17);
  v185 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D83D88];
  sub_217E35174(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope, MEMORY[0x277D83D88]);
  v179 = v21;
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v180 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v183 = &v174 - v25;
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v20);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v184 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v188 = &v174 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v203 = &v174 - v33;
  MEMORY[0x28223BE20](v32);
  v208 = (&v174 - v34);
  v35 = type metadata accessor for ScopeGraphElement.ID(0);
  v192 = *(v35 - 8);
  v193 = v35;
  v36 = *(v192 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v175 = &v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v206 = &v174 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v199 = &v174 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v204 = &v174 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v174 - v45;
  v47 = *v225;
  sub_217E70364();
  v225 = v47;
  *&v214 = v47;
  v194 = a5;
  v195 = a4;
  v209[2] = a4;
  v209[3] = a5;
  v189 = a6;
  v190 = a1;
  v209[4] = a6;
  v209[5] = v197;
  v209[6] = a1;
  v209[7] = a3;
  v191 = a3;
  v196 = AssociatedTypeWitness;
  *&v217 = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata();
  sub_217E70794();
  sub_217E42344();
  swift_getTupleTypeMetadata2();
  sub_217E351D8(&v214, v46, sub_217E42AB0, v209, &v217);
  v222 = v217;
  v223 = v218;
  v224 = v219;
  sub_217E33C00(&v220, v221);
  if (*(&v223 + 1))
  {
    sub_217E33AD0(&v222, &v214);
  }

  else
  {
    v214 = v222;
    v215 = v223;
    v216 = v224;
  }

  v200 = v46;
  v48 = v225;
  v49 = v208;
  if (!*(&v215 + 1))
  {
    if (qword_2811B1810 != -1)
    {
      swift_once();
    }

    v64 = sub_217E703B4();
    sub_217E35794(v64, qword_2811B1820);
    sub_217E33AD0(v221, &v217);
    v65 = sub_217E70394();
    v66 = sub_217E70764();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      DynamicType = v208;
      *v67 = 136315650;
      *&v214 = v48;
      sub_217E540D8();
      v68 = sub_217E708F4();
      v70 = sub_217E58888(v68, v69, &DynamicType);

      *(v67 + 4) = v70;
      v71 = v195;
      *(v67 + 12) = 2080;
      v72 = sub_217E70A34();
      v74 = sub_217E58888(v72, v73, &DynamicType);

      *(v67 + 14) = v74;
      *(v67 + 22) = 2080;
      sub_217E33AD0(&v217, &v214);
      v75 = sub_217E705D4();
      v77 = v76;
      sub_217E364B4(&v217);
      v78 = sub_217E58888(v75, v77, &DynamicType);

      *(v67 + 24) = v78;
      _os_log_impl(&dword_217E31000, v65, v66, "Scope could not load dependency from container. Misconfiguration? Scope=%s, Key=%s, Container=%s", v67, 0x20u);
      v79 = v208;
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v79, -1, -1);
      v80 = v67;
      v46 = v200;
      MEMORY[0x21CEAE800](v80, -1, -1);
    }

    else
    {

      sub_217E364B4(&v217);
      v71 = v195;
    }

    sub_217E6D248();
    swift_allocError();
    *v81 = v71;
    swift_willThrow();
    sub_217E364B4(v221);
    if (!*(&v223 + 1))
    {
      return sub_217E365C0(v46, type metadata accessor for ScopeGraphElement.ID);
    }

    v82 = &v222;
LABEL_45:
    sub_217E364B4(v82);
    return sub_217E365C0(v46, type metadata accessor for ScopeGraphElement.ID);
  }

  sub_217E33C00(&v214, &v217);
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v50 = sub_217E703B4();
  v51 = sub_217E35794(v50, qword_2811B1820);
  sub_217E3B7E0(v190, v49, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  sub_217E33AD0(&v217, &v214);
  v207 = v51;
  v52 = sub_217E70394();
  v53 = sub_217E70764();
  if (os_log_type_enabled(v52, v53))
  {
    LODWORD(v202) = v53;
    v54 = swift_slowAlloc();
    *&v198 = swift_slowAlloc();
    v211 = v198;
    DynamicType = v48;
    *v54 = 136315906;
    sub_217E540D8();
    v55 = sub_217E708F4();
    v57 = sub_217E58888(v55, v56, &v211);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2080;
    v58 = sub_217E70A34();
    v60 = sub_217E58888(v58, v59, &v211);

    *(v54 + 14) = v60;
    *(v54 + 22) = 2080;
    v61 = v203;
    sub_217E3B7E0(v49, v203, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    if ((*(v192 + 48))(v61, 1, v193) == 1)
    {
      sub_217E377A0(v61, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v62 = 0xE300000000000000;
      v63 = 7104878;
    }

    else
    {
      v63 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
      v62 = v83;
      sub_217E365C0(v61, type metadata accessor for ScopeGraphElement.ID);
    }

    sub_217E377A0(v49, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v84 = sub_217E58888(v63, v62, &v211);

    *(v54 + 24) = v84;
    *(v54 + 32) = 2080;
    sub_217E37F28(&v214, *(&v215 + 1));
    DynamicType = swift_getDynamicType();
    v213 = v216;
    v210 = v196;
    swift_getExtendedExistentialTypeMetadata();
    v85 = sub_217E705D4();
    v87 = v86;
    sub_217E364B4(&v214);
    v88 = sub_217E58888(v85, v87, &v211);

    *(v54 + 34) = v88;
    _os_log_impl(&dword_217E31000, v52, v202, "Scope instantiated a dependency. Scope=%s, Key=%s, Access=%s, Dependency=%s", v54, 0x2Au);
    v89 = v198;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v89, -1, -1);
    MEMORY[0x21CEAE800](v54, -1, -1);
  }

  else
  {

    sub_217E364B4(&v214);
    sub_217E377A0(v49, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  }

  v90 = *(&v218 + 1);
  v91 = v219;
  v92 = sub_217E37F28(&v217, *(&v218 + 1));
  DynamicType = v48;
  v93 = v201;
  swift_beginAccess();
  (*(v197 + 32))(v92, &DynamicType, v46, v93 + 64, v90, v91, v194);
  swift_endAccess();
  sub_217E33AD0(&v217, &v214);
  v94 = v204;
  sub_217E35350(v46, v204, type metadata accessor for ScopeGraphElement.ID);
  v95 = sub_217E70394();
  v96 = sub_217E70764();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    v211 = v208;
    DynamicType = v48;
    *v97 = 136315650;
    sub_217E540D8();
    v98 = sub_217E708F4();
    v100 = sub_217E58888(v98, v99, &v211);

    *(v97 + 4) = v100;
    *(v97 + 12) = 2080;
    sub_217E37F28(&v214, *(&v215 + 1));
    DynamicType = swift_getDynamicType();
    v213 = v216;
    v210 = v196;
    swift_getExtendedExistentialTypeMetadata();
    v101 = sub_217E705D4();
    v103 = v102;
    sub_217E364B4(&v214);
    v104 = sub_217E58888(v101, v103, &v211);

    *(v97 + 14) = v104;
    *(v97 + 22) = 2080;
    v105 = v199;
    sub_217E35350(v94, v199, type metadata accessor for ScopeGraphElement.ID);
    v106 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
    v108 = v107;
    sub_217E365C0(v105, type metadata accessor for ScopeGraphElement.ID);
    v46 = v200;
    sub_217E365C0(v94, type metadata accessor for ScopeGraphElement.ID);
    v109 = sub_217E58888(v106, v108, &v211);

    *(v97 + 24) = v109;
    _os_log_impl(&dword_217E31000, v95, v96, "Registered source into scope. Scope=%s, Source=%s, Vertex=%s", v97, 0x20u);
    v110 = v208;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v110, -1, -1);
    MEMORY[0x21CEAE800](v97, -1, -1);
  }

  else
  {

    sub_217E365C0(v94, type metadata accessor for ScopeGraphElement.ID);
    sub_217E364B4(&v214);
  }

  v111 = v205;
  v112 = v201;
  swift_beginAccess();
  v113 = *(v112 + 144);
  if (*(v113 + 16) && (v114 = sub_217E33C18(v225), (v115 & 1) != 0))
  {
    v116 = (*(v113 + 56) + 8 * v114);
  }

  else
  {
    if (qword_2811B0B08 != -1)
    {
      swift_once();
    }

    v116 = &qword_2811B0B10;
  }

  v117 = v195;
  v118 = *v116;
  swift_endAccess();
  v119 = v189;
  v120 = *(v189 + 24);

  v120(&v214, v117, v119);
  v121 = v214;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  DynamicType = v118;
  sub_217E431FC(v121, sub_217E6CFFC, 0, isUniquelyReferenced_nonNull_native, &DynamicType);
  if (v111)
  {

    MEMORY[0x21CEAE5A0](v111);

    __break(1u);
  }

  else
  {
    v174 = 0;

    swift_bridgeObjectRelease_n();
    v123 = DynamicType;

    *&v214 = v123;
    v124 = sub_217E434A8();

    v187 = v124;
    v126 = *(v124 + 16);
    if (v126)
    {
      v127 = (v187 + 40);
      *&v125 = 136315650;
      v198 = v125;
      do
      {
        v128 = *(v127 - 1);
        v129 = *v127;
        v130 = v206;
        sub_217E35350(v46, v206, type metadata accessor for ScopeGraphElement.ID);
        v131 = sub_217E70394();
        LODWORD(v208) = sub_217E70764();
        if (os_log_type_enabled(v131, v208))
        {
          v132 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          *&v214 = v203;
          *v132 = v198;
          DynamicType = v225;
          sub_217E540D8();
          v202 = v131;
          v133 = sub_217E708F4();
          v135 = sub_217E58888(v133, v134, &v214);
          v205 = v128;
          v136 = v130;
          v137 = v135;

          *(v132 + 4) = v137;
          *(v132 + 12) = 2080;
          v138 = v199;
          sub_217E35350(v136, v199, type metadata accessor for ScopeGraphElement.ID);
          v139 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
          v204 = v129;
          v140 = v139;
          v142 = v141;
          sub_217E365C0(v138, type metadata accessor for ScopeGraphElement.ID);
          v143 = v136;
          v128 = v205;
          sub_217E365C0(v143, type metadata accessor for ScopeGraphElement.ID);
          v144 = v140;
          v129 = v204;
          v145 = sub_217E58888(v144, v142, &v214);

          *(v132 + 14) = v145;
          *(v132 + 22) = 2080;
          v146 = sub_217E70A34();
          v148 = sub_217E58888(v146, v147, &v214);

          *(v132 + 24) = v148;
          v149 = v202;
          _os_log_impl(&dword_217E31000, v202, v208, "Autowiring rule following source resolution. Scope=%s, Source Vertex=%s, Rule=%s", v132, 0x20u);
          v150 = v203;
          swift_arrayDestroy();
          MEMORY[0x21CEAE800](v150, -1, -1);
          v151 = v132;
          v46 = v200;
          MEMORY[0x21CEAE800](v151, -1, -1);
        }

        else
        {

          sub_217E365C0(v130, type metadata accessor for ScopeGraphElement.ID);
        }

        *&v214 = v225;
        sub_217E34830(v128, &v214, v128, v129);
        v127 += 2;
        --v126;
      }

      while (v126);
    }

    v152 = v188;
    sub_217E35350(v46, v188, type metadata accessor for ScopeGraphElement.ID);
    (*(v192 + 56))(v152, 0, 1, v193);
    if (qword_2811B1640 != -1)
    {
      swift_once();
    }

    v153 = sub_217E35794(v179, qword_2811B1648);
    swift_beginAccess();
    v208 = type metadata accessor for ScopeReader.CurrentScope;
    v154 = MEMORY[0x277D83D88];
    v155 = v183;
    sub_217E3B7E0(v153, v183, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope, MEMORY[0x277D83D88]);
    v156 = v182;
    v157 = *(v182 + 24);
    v207 = type metadata accessor for ScopeGraphElement.ID;
    v158 = v185;
    sub_217E3B7E0(v152, &v185[v157], &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v154);
    v159 = v201;
    v160 = v225;
    *v158 = v201;
    v158[1] = v160;
    v161 = v180;
    sub_217E35350(v158, v180, type metadata accessor for ScopeReader.CurrentScope);
    (*(v181 + 56))(v161, 0, 1, v156);
    swift_beginAccess();

    sub_217E35A50(v161, v153);
    swift_endAccess();
    v162 = v190;
    v46 = v200;
    v163 = v160;
    v164 = v195;
    sub_217E43510(v158, v190, &v217, v159, v200, v163, v195, v194, v189);
    swift_beginAccess();
    sub_217E37654(v155, v153);
    swift_endAccess();
    sub_217E365C0(v158, type metadata accessor for ScopeReader.CurrentScope);
    sub_217E377A0(v155, qword_2811B16B8, v208, v154);
    v165 = v207;
    sub_217E377A0(v188, &qword_2811B1090, v207, v154);
    v166 = v184;
    sub_217E3B7E0(v162, v184, &qword_2811B1090, v165, v154);
    if ((*(v192 + 48))(v166, 1, v193) == 1)
    {
      sub_217E377A0(v166, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    }

    else
    {
      v167 = v166;
      v168 = v175;
      sub_217E35D8C(v167, v175, type metadata accessor for ScopeGraphElement.ID);
      swift_beginAccess();
      sub_217E43DBC(v46, v168);
      swift_endAccess();
      sub_217E365C0(v168, type metadata accessor for ScopeGraphElement.ID);
    }

    v169 = v159;
    v170 = v186;
    DynamicType = v225;
    (*(v197 + 40))(v169, &DynamicType, v194);
    v171 = *(v196 - 8);
    if ((*(v171 + 48))(v170, 1) == 1)
    {
      (*(v176 + 8))(v170, v177);
      sub_217E6D248();
      swift_allocError();
      *v172 = v164;
      swift_willThrow();
      sub_217E364B4(v221);
      if (*(&v223 + 1))
      {
        sub_217E364B4(&v222);
      }

      v82 = &v217;
      goto LABEL_45;
    }

    sub_217E364B4(v221);
    if (*(&v223 + 1))
    {
      sub_217E364B4(&v222);
    }

    (*(v171 + 32))(v178, v170, v196);
    sub_217E364B4(&v217);
    return sub_217E365C0(v46, type metadata accessor for ScopeGraphElement.ID);
  }

  return result;
}

unint64_t sub_217E42344()
{
  result = qword_2811B0F98[0];
  if (!qword_2811B0F98[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811B0F98);
  }

  return result;
}

uint64_t sub_217E423A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v66 = a3;
  v67 = a5;
  v60 = a4;
  v65 = a7;
  v64 = type metadata accessor for DependencyEnvironment();
  v10 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Dependencies();
  v13 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v15 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v61 = type metadata accessor for ScopeReader.CurrentScope(0);
  v23 = *(*(v61 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v61);
  v26 = (&v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v29 = sub_217E703B4();
  sub_217E35794(v29, qword_2811B1820);
  v63 = a1;
  sub_217E35350(a1, v28, type metadata accessor for ScopeReader.CurrentScope);
  sub_217E3B7E0(a2, v22, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v30 = sub_217E70394();
  v31 = sub_217E70764();
  if (os_log_type_enabled(v30, v31))
  {
    v58 = v31;
    v59 = a6;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v57 = v33;
    *v32 = 136315650;
    v68 = *(v28 + 1);
    v69 = v33;
    sub_217E540D8();
    v34 = sub_217E708F4();
    v36 = v35;
    sub_217E365C0(v28, type metadata accessor for ScopeReader.CurrentScope);
    v37 = sub_217E58888(v34, v36, &v69);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v38 = sub_217E70A34();
    v40 = sub_217E58888(v38, v39, &v69);

    *(v32 + 14) = v40;
    *(v32 + 22) = 2080;
    sub_217E3B7E0(v22, v20, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v41 = type metadata accessor for ScopeGraphElement.ID(0);
    if ((*(*(v41 - 8) + 48))(v20, 1, v41) == 1)
    {
      sub_217E377A0(v20, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v42 = 0xE300000000000000;
      v43 = 7104878;
    }

    else
    {
      v43 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
      v42 = v44;
      sub_217E365C0(v20, type metadata accessor for ScopeGraphElement.ID);
    }

    a6 = v59;
    sub_217E377A0(v22, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v45 = sub_217E58888(v43, v42, &v69);

    *(v32 + 24) = v45;
    _os_log_impl(&dword_217E31000, v30, v58, "Requesting dependency from container. Scope=%s, Key=%s, Access=%s", v32, 0x20u);
    v46 = v57;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v46, -1, -1);
    MEMORY[0x21CEAE800](v32, -1, -1);
  }

  else
  {

    sub_217E377A0(v22, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    sub_217E365C0(v28, type metadata accessor for ScopeReader.CurrentScope);
  }

  v47 = v63;
  sub_217E35350(v63, v26, type metadata accessor for ScopeReader.CurrentScope);
  v48 = *v26;
  v49 = v26[1];
  v50 = v62;
  sub_217E3B7E0(v26 + *(v61 + 24), v15 + *(v62 + 24), &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);

  sub_217E365C0(v26, type metadata accessor for ScopeReader.CurrentScope);
  v51 = *(v50 + 28);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v52 = swift_allocObject();
  *(v52 + 16) = 0u;
  *(v52 + 32) = 0u;
  *(v15 + v51) = v52;
  *(v52 + 48) = 0;
  *v15 = v48;
  v15[1] = v49;
  v53 = *v47;
  v69 = v47[1];
  v54 = v65;
  sub_217E37D48(&v69, v65 + 40);
  sub_217E33AD0(v54 + 40, v12);
  sub_217E35350(v15, &v12[*(v64 + 20)], type metadata accessor for Dependencies);
  (*(a6 + 24))(v12, v67, a6);
  sub_217E365C0(v12, type metadata accessor for DependencyEnvironment);
  return sub_217E365C0(v15, type metadata accessor for Dependencies);
}

uint64_t type metadata accessor for DependencyEnvironment()
{
  result = qword_2811B0F80;
  if (!qword_2811B0F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_217E42B0C()
{
  result = sub_217E42344();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Dependencies();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DependencyEnvironment.resolveDependency<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[3];
  v5 = v2[4];
  sub_217E37F28(v2, v4);
  return (*(v5 + 8))(a2, a2, v4, v5);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14 - v7;
  v9 = *(type metadata accessor for DependencyEnvironment() + 20);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(&v2[v9], AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = *(v2 + 3);
  v12 = *(v2 + 4);
  sub_217E37F28(v2, v11);
  (*(v12 + 16))(a2, v8, a2, AssociatedTypeWitness, AssociatedConformanceWitness, v11, v12);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_217E42C3C(uint64_t a1)
{
  sub_217E33138(0, &qword_2811B0DF0, sub_217E42CEC);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E42CB4()
{
  sub_217E42C3C(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_217E42CEC()
{
  result = qword_2811B0DF8[0];
  if (!qword_2811B0DF8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811B0DF8);
  }

  return result;
}

uint64_t sub_217E42D88(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[1] = a4;
  v22[2] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = v22 - v15;
  v17 = *a2;
  (*(a7 + 16))(a5, a7);
  v18 = sub_217E40620(a5, a5, a7);
  v23 = v17;
  sub_217E42F08(a1, v16, v18, v19, v20, &v23, a3);

  return (*(v13 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_217E42F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7)
{
  v13 = *a6;
  type metadata accessor for EquatableSourceVertex();
  v14 = sub_217E430CC(a1, a2);
  v16 = v13;
  sub_217E38428(v14, a3, a4, a5, &v16, a7);
}

uint64_t sub_217E42FD8(uint64_t a1)
{
  v2 = *(a1 + 320);
  v1 = *(a1 + 328);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_217E430CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_217E43118(a1, a2);
}

void *sub_217E43118(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 344);
  v6 = *(*v2 + 328);
  v7 = *(*v2 + 320);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v2 + v5, a2, AssociatedTypeWitness);

  return sub_217E431E4(a1);
}

uint64_t sub_217E431FC(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v39 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v44 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = *(a1 + 48) + 24 * v16;
    v18 = *(*(a1 + 56) + 8 * v16);
    v48 = *v17;
    v49 = *(v17 + 8);
    v50 = v18;

    a2(v45, &v48);

    v19 = v45[1];
    v43 = v45[0];
    v20 = v46;
    v21 = v47;
    v22 = *v51;
    v24 = sub_217E3722C(v46);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v44 & 1) == 0)
      {
        sub_217E59E30();
      }
    }

    else
    {
      v29 = v51;
      sub_217E5D5F0(v27, v44 & 1);
      v30 = *v29;
      v31 = sub_217E3722C(v20);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v51;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v21;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      v34 = (v33[6] + 24 * v24);
      *v34 = v43;
      v34[1] = v19;
      v34[2] = v20;
      *(v33[7] + 8 * v24) = v21;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v40;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_217E434A0();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_217E70944();
  __break(1u);
  return result;
}

uint64_t sub_217E434A8()
{
  v1 = *v0;
  sub_217E36EF4();
  if (*(v1 + 16) && (v3 = sub_217E3722C(v2), (v4 & 1) != 0))
  {
    v5 = *(*(v1 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t sub_217E43510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a6;
  v48 = a5;
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v46 - v18;
  v20 = type metadata accessor for ScopeReader.CurrentScope(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v24 = sub_217E703B4();
  sub_217E35794(v24, qword_2811B1820);
  sub_217E35350(a1, v23, type metadata accessor for ScopeReader.CurrentScope);
  sub_217E3B7E0(a2, v19, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  sub_217E33AD0(a3, v53);
  v25 = sub_217E70394();
  v26 = sub_217E70764();
  if (os_log_type_enabled(v25, v26))
  {
    v46[1] = a9;
    v46[2] = a4;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v52 = v28;
    *v27 = 136315906;
    DynamicType = *(v23 + 1);
    sub_217E540D8();
    v29 = sub_217E708F4();
    v31 = v30;
    sub_217E365C0(v23, type metadata accessor for ScopeReader.CurrentScope);
    v32 = sub_217E58888(v29, v31, &v52);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = sub_217E70A34();
    v35 = sub_217E58888(v33, v34, &v52);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2080;
    sub_217E3B7E0(v19, v17, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v36 = type metadata accessor for ScopeGraphElement.ID(0);
    if ((*(*(v36 - 8) + 48))(v17, 1, v36) == 1)
    {
      sub_217E377A0(v17, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      v38 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
      v37 = v39;
      sub_217E365C0(v17, type metadata accessor for ScopeGraphElement.ID);
    }

    sub_217E377A0(v19, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v40 = sub_217E58888(v38, v37, &v52);

    *(v27 + 24) = v40;
    *(v27 + 32) = 2080;
    sub_217E37F28(v53, v53[3]);
    DynamicType = swift_getDynamicType();
    v51 = v53[4];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata();
    v41 = sub_217E705D4();
    v43 = v42;
    sub_217E364B4(v53);
    v44 = sub_217E58888(v41, v43, &v52);

    *(v27 + 34) = v44;
    _os_log_impl(&dword_217E31000, v25, v26, "Scope is requesting initial dependency update. Scope=%s, Key=%s, Access=%s, Dependency=%s", v27, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v28, -1, -1);
    MEMORY[0x21CEAE800](v27, -1, -1);
  }

  else
  {

    sub_217E364B4(v53);
    sub_217E377A0(v19, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    sub_217E365C0(v23, type metadata accessor for ScopeReader.CurrentScope);
  }

  v53[0] = v47;
  return sub_217E3BAF8(v48, v53, 1);
}

BOOL sub_217E43ABC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[40];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v22 - v7;
  v24 = v3;
  v23 = v3[41];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = v3[43];
  swift_beginAccess();
  (*(v10 + 16))(v16, &v2[v17], AssociatedTypeWitness);
  sub_217E3D6E8();
  v18 = *(*v2 + 104);
  swift_beginAccess();
  (*(v5 + 16))(v8, &v2[v18], v4);
  (*(v23 + 24))(v4);
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  (*(v10 + 24))(&v2[v17], v14, AssociatedTypeWitness);
  swift_endAccess();
  v19 = v24[42];
  LOBYTE(v2) = sub_217E705C4();
  v20 = *(v10 + 8);
  v20(v14, AssociatedTypeWitness);
  v20(v16, AssociatedTypeWitness);
  return (v2 & 1) == 0;
}

uint64_t sub_217E43DBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = type metadata accessor for ScopeGraphElement.ID(0);
  v6 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Edge;
  sub_217E35174(0, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v52 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  sub_217E35350(a1, &v52 - v22, type metadata accessor for ScopeGraphElement.ID);
  v24 = &v23[*(v10 + 36)];
  v56 = a2;
  sub_217E35350(a2, v24, type metadata accessor for ScopeGraphElement.ID);
  sub_217E3B7E0(v23, v18, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v25 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v2;
  v57 = v27;
  v29 = sub_217E3A780(a1);
  v30 = v27[2];
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v8) = v28;
  if (v27[3] >= v32)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_20;
    }

    *v3 = v27;
    if ((v28 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_217E44260(v32, isUniquelyReferenced_nonNull_native);
    v27 = v57;
    v33 = sub_217E3A780(a1);
    if ((v8 & 1) != (v34 & 1))
    {
      goto LABEL_22;
    }

    v29 = v33;
    *v3 = v27;
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    v36 = v27[7] + 8 * v29;
    sub_217E44860(v21, v18);
    v8 = type metadata accessor for Edge;
    sub_217E377A0(v21, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
    v18 = v55;
    sub_217E3B7E0(v23, v55, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
    v37 = v3[1];
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v3[1];
    v39 = v57;
    v40 = v56;
    v29 = sub_217E3A780(v56);
    v42 = v39[2];
    v43 = (v41 & 1) == 0;
    v44 = v42 + v43;
    if (!__OFADD__(v42, v43))
    {
      break;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    sub_217E459E0();
    v27 = v57;
    *v3 = v57;
    if ((v8 & 1) == 0)
    {
LABEL_8:
      v35 = v54;
      sub_217E35350(a1, v54, type metadata accessor for ScopeGraphElement.ID);
      sub_217E44C38(v29, v35, MEMORY[0x277D84FA0], v27);
    }
  }

  v45 = v41;
  if (v39[3] >= v44)
  {
    if ((v38 & 1) == 0)
    {
      sub_217E459E0();
      v39 = v57;
    }

    goto LABEL_15;
  }

  sub_217E44260(v44, v38);
  v39 = v57;
  v46 = sub_217E3A780(v40);
  if ((v45 & 1) != (v47 & 1))
  {
LABEL_22:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v29 = v46;
LABEL_15:
  v48 = v53;
  v3[1] = v39;
  if ((v45 & 1) == 0)
  {
    v49 = v54;
    sub_217E35350(v40, v54, type metadata accessor for ScopeGraphElement.ID);
    sub_217E44C38(v29, v49, MEMORY[0x277D84FA0], v39);
  }

  v50 = v39[7] + 8 * v29;
  sub_217E44860(v48, v18);
  sub_217E377A0(v48, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  return sub_217E377A0(v23, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
}

uint64_t sub_217E44260(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ScopeGraphElement.ID(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_217E445E8();
  v40 = a2;
  result = sub_217E708C4();
  v13 = result;
  if (*(v10 + 16))
  {
    v37 = v3;
    v38 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v10 + 48) + *(v39 + 72) * v25;
      v42 = *(v39 + 72);
      if (v40)
      {
        sub_217E361A8(v26, v9);
        v41 = *(*(v10 + 56) + 8 * v25);
      }

      else
      {
        sub_217E4FA2C(v26, v9);
        v41 = *(*(v10 + 56) + 8 * v25);
      }

      v27 = *(v13 + 40);
      sub_217E709A4();
      sub_217E70374();
      sub_217E3A834(&qword_2811B1818, MEMORY[0x277CC95F0]);
      sub_217E70594();
      result = sub_217E709D4();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_217E361A8(v9, *(v13 + 48) + v42 * v21);
      *(*(v13 + 56) + 8 * v21) = v41;
      ++*(v13 + 16);
      v10 = v38;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

void sub_217E445E8()
{
  if (!qword_2811B0928)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    sub_217E4473C();
    sub_217E3A834(qword_2811B10D8, type metadata accessor for ScopeGraphElement.ID);
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0928);
    }
  }
}

unint64_t sub_217E44694()
{
  result = qword_2811B0BE8[0];
  if (!qword_2811B0BE8[0])
  {
    sub_217E3C8CC(255);
    sub_217E447D0(qword_2811B10D8, type metadata accessor for ScopeGraphElement.ID);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B0BE8);
  }

  return result;
}

void sub_217E4473C()
{
  if (!qword_2811B0970)
  {
    sub_217E393BC(255, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
    sub_217E44694();
    v0 = sub_217E70714();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0970);
    }
  }
}

uint64_t sub_217E447D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217E44860(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  sub_217E35174(0, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v26 = &v26 - v11;
  v27 = v2;
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  v29 = *(v5 + 28);
  v30 = v5;
  sub_217E70594();
  v14 = sub_217E709D4();
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v6 + 72);
    do
    {
      sub_217E3B7E0(*(v12 + 48) + v18 * v16, v10, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
      {
        v19 = &v10[*(v30 + 28)];
        v20 = _s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0();
        sub_217E377A0(v10, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
        if (v20)
        {
          sub_217E377A0(a2, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
          sub_217E3B7E0(*(v12 + 48) + v18 * v16, v28, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
          return 0;
        }
      }

      else
      {
        sub_217E377A0(v10, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  v22 = v27;
  v23 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v26;
  sub_217E3B7E0(a2, v26, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v31 = *v22;
  sub_217E44D20(v25, v16, isUniquelyReferenced_nonNull_native);
  *v22 = v31;
  sub_217E454AC(a2, v28, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  return 1;
}

uint64_t sub_217E44C38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ScopeGraphElement.ID(0);
  result = sub_217E361A8(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_217E44CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217E44D20(uint64_t a1, unint64_t a2, char a3)
{
  sub_217E35174(0, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v30 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v28 = v8;
  v29 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_217E49FE8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_217E53224();
      goto LABEL_15;
    }

    sub_217E45094(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  v16 = *(v30 + 28);
  sub_217E70594();
  v17 = sub_217E709D4();
  v18 = -1 << *(v14 + 32);
  a2 = v17 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v8 + 72);
    do
    {
      sub_217E3B7E0(*(v14 + 48) + v20 * a2, v11, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
      {
        v21 = *(v30 + 28);
        v22 = _s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0();
        sub_217E377A0(v11, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
        if (v22)
        {
          sub_217E70934();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_217E377A0(v11, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v23 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_217E454AC(a1, *(v23 + 48) + *(v28 + 72) * a2, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

uint64_t sub_217E45094(uint64_t a1)
{
  v2 = v1;
  sub_217E35174(0, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v33 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_217E45448();
  result = sub_217E707E4();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v35 = v7;
    v11 = 0;
    v12 = v7 + 56;
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48);
      v38 = *(v36 + 72);
      v23 = v39;
      sub_217E3B7E0(v22 + v38 * (v19 | (v11 << 6)), v39, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      v24 = *(v10 + 40);
      sub_217E709A4();
      sub_217E70374();
      sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
      sub_217E70594();
      v25 = v23 + *(v37 + 28);
      sub_217E70594();
      result = sub_217E709D4();
      v26 = -1 << *(v10 + 32);
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

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_217E454AC(v39, *(v10 + 48) + v18 * v38, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      ++*(v10 + 16);
      v7 = v35;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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

void sub_217E45448()
{
  if (!qword_2811B0958)
  {
    sub_217E3C8CC(255);
    sub_217E44694();
    v0 = sub_217E707F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0958);
    }
  }
}

uint64_t sub_217E454AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_217E35174(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_217E45564@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&v39[0] = swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for ScopeGraphElement.ID(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_217E70794();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v25 - v12);
  v14 = *a1;
  swift_beginAccess();
  v15 = v4[5];
  v16 = v4[7];
  v36 = v4[6];
  v37 = v16;
  v17 = v4[7];
  v38 = v4[8];
  v18 = v4[5];
  v35[0] = v4[4];
  v35[1] = v18;
  v29 = v36;
  v30 = v17;
  v31 = v4[8];
  v27 = v35[0];
  v28 = v15;
  v26 = v14;
  sub_217E3438C(v35, v39);
  sub_217E4054C(&v26, a2, a3, v13);
  v39[2] = v29;
  v39[3] = v30;
  v39[4] = v31;
  v39[0] = v27;
  v39[1] = v28;
  sub_217E347DC(v39);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
  {
    v19 = swift_checkMetadataState();
    return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
  }

  else
  {
    v21 = *(TupleTypeMetadata2 + 48);
    sub_217E33C00(v13, v32);
    sub_217E365C0(v13 + v21, type metadata accessor for ScopeGraphElement.ID);
    v22 = v33;
    v23 = v34;
    sub_217E37F28(v32, v33);
    (*(v23 + 24))(v22, v23);
    v24 = swift_checkMetadataState();
    (*(*(v24 - 8) + 56))(a4, 0, 1, v24);
    return sub_217E364B4(v32);
  }
}

uint64_t sub_217E45830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v5 + 104);
  swift_beginAccess();
  return (*(*(*(a1 + 80) - 8) + 16))(a2, v5 + v6);
}

uint64_t sub_217E458C4(uint64_t a1)
{
  v2 = type metadata accessor for ScopeReader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ScopeReader.value<A>(for:)()
{
  v1 = v0 + *(type metadata accessor for ScopeReader(0) + 20);

  return swift_getAtKeyPath();
}

uint64_t Dependency.wrappedValue.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_217E37F28(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

void *sub_217E459E0()
{
  v1 = v0;
  v2 = type metadata accessor for ScopeGraphElement.ID(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E45C3C(0, &qword_2811B0928, sub_217E4473C);
  v5 = *v0;
  v6 = sub_217E708B4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_217E3AF88(*(v5 + 48) + v22, v28, type metadata accessor for ScopeGraphElement.ID);
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = v30;
        sub_217E35CBC(v21, *(v30 + 48) + v22, type metadata accessor for ScopeGraphElement.ID);
        *(*(v24 + 56) + 8 * v20) = v23;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v7 = v30;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_217E45C3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    a3(255);
    sub_217E3A834(qword_2811B10D8, type metadata accessor for ScopeGraphElement.ID);
    v5 = sub_217E708E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_217E45CE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v83 = a4;
  v9 = type metadata accessor for Storage.ExplicitUpdate();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v79 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v75[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v90 = &v75[-v16];
  v17 = *(a3 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v15);
  v89 = &v75[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v85 = &v75[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v75[-v23];
  v87 = *a2;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v25 = sub_217E703B4();
  v26 = sub_217E35794(v25, qword_2811B1820);
  v28 = v17 + 2;
  v27 = v17[2];
  v84 = a1;
  v86 = v27;
  v27(v24, a1, a3);
  v82 = v26;
  v29 = sub_217E70394();
  v30 = sub_217E70764();
  v31 = os_log_type_enabled(v29, v30);
  v88 = v17;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v76 = v30;
    v33 = v32;
    v77 = swift_slowAlloc();
    *&v102[0] = v77;
    *v33 = 136315394;
    *&v97 = v87;
    sub_217E540D8();
    v34 = sub_217E708F4();
    v36 = sub_217E58888(v34, v35, v102);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = v85;
    v86(v85, v24, a3);
    v38 = v29;
    v39 = v37;
    v40 = sub_217E705D4();
    v42 = v41;
    v81 = v88[1];
    v81(v24, a3);
    v43 = sub_217E58888(v40, v42, v102);

    *(v33 + 14) = v43;
    _os_log_impl(&dword_217E31000, v38, v76, "Received request to raise event. Scope=%s, Event=%s", v33, 0x16u);
    v44 = v77;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v44, -1, -1);
    MEMORY[0x21CEAE800](v33, -1, -1);
  }

  else
  {

    v81 = v17[1];
    v81(v24, a3);
    v39 = v85;
  }

  v45 = a3;
  v78 = v28;
  v46 = v39;
  v47 = v39;
  v48 = v84;
  v49 = v86;
  v86(v47, v84, v45);
  v50 = v90;
  sub_217E464E0(v46, v45, v90);
  v51 = v79;
  sub_217E35350(v50, v79, type metadata accessor for Storage.ExplicitUpdate);
  swift_beginAccess();
  v52 = v80;
  sub_217E465F0(v80, v51);
  swift_endAccess();
  sub_217E365C0(v52, type metadata accessor for Storage.ExplicitUpdate);
  swift_beginAccess();
  v53 = v5[6];
  v54 = v5[4];
  v98 = v5[5];
  v99 = v53;
  v55 = v5[6];
  v56 = v5[8];
  v100 = v5[7];
  v101 = v56;
  v97 = v5[4];
  v94 = v55;
  v95 = v100;
  v96 = v5[8];
  v92 = v54;
  v93 = v98;
  v57 = v87;
  v91 = v87;
  sub_217E3438C(&v97, v102);
  v58 = v45;
  sub_217E47008(v48, &v91, v45);
  v102[2] = v94;
  v102[3] = v95;
  v102[4] = v96;
  v102[0] = v92;
  v102[1] = v93;
  sub_217E347DC(v102);
  v49(v89, v48, v45);
  v59 = sub_217E70394();
  v60 = sub_217E70764();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v58;
    v62 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v91 = v57;
    *&v92 = v84;
    *v62 = 136315394;
    sub_217E540D8();
    v63 = sub_217E708F4();
    v65 = sub_217E58888(v63, v64, &v92);

    *(v62 + 4) = v65;
    *(v62 + 12) = 2080;
    v66 = v49;
    v67 = v89;
    v66(v85, v89, v61);
    v68 = sub_217E705D4();
    v70 = v69;
    v81(v67, v61);
    v71 = sub_217E58888(v68, v70, &v92);

    *(v62 + 14) = v71;
    _os_log_impl(&dword_217E31000, v59, v60, "Concluded broadcast of event. Scope=%s, Event=%s", v62, 0x16u);
    v72 = v84;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v72, -1, -1);
    MEMORY[0x21CEAE800](v62, -1, -1);
  }

  else
  {

    v81(v89, v58);
  }

  v73 = v90;
  sub_217E47AC0(v5, v90);
  return sub_217E365C0(v73, type metadata accessor for Storage.ExplicitUpdate);
}

uint64_t ScopeReader.raise<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v6 = v3[1];
  return sub_217E45CE8(a1, &v6, a2, a3);
}

uint64_t type metadata accessor for Storage.ExplicitUpdate()
{
  result = qword_2811B0AC0;
  if (!qword_2811B0AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217E4646C()
{
  result = sub_217E70374();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E464E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E70364();
  (*(v6 + 16))(v9, a1, a2);
  v10 = sub_217E705D4();
  v12 = v11;
  (*(v6 + 8))(a1, a2);
  result = type metadata accessor for Storage.ExplicitUpdate();
  v14 = (a3 + *(result + 20));
  *v14 = v10;
  v14[1] = v12;
  return result;
}

uint64_t sub_217E465F0(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = type metadata accessor for Storage.ExplicitUpdate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v10;
  v30 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  v32 = v4;
  v13 = (a2 + *(v4 + 20));
  v14 = *v13;
  v15 = v13[1];
  sub_217E705F4();
  v16 = sub_217E709D4();
  v17 = -1 << *(v11 + 32);
  v18 = v16 & ~v17;
  if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    while (1)
    {
      sub_217E35350(*(v11 + 48) + v20 * v18, v9, type metadata accessor for Storage.ExplicitUpdate);
      if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
      {
        v21 = &v9[*(v32 + 20)];
        v22 = *v21 == v14 && *(v21 + 1) == v15;
        if (v22 || (sub_217E70924() & 1) != 0)
        {
          break;
        }
      }

      sub_217E365C0(v9, type metadata accessor for Storage.ExplicitUpdate);
      v18 = (v18 + 1) & v19;
      if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_217E365C0(v9, type metadata accessor for Storage.ExplicitUpdate);
    sub_217E365C0(a2, type metadata accessor for Storage.ExplicitUpdate);
    sub_217E35350(*(v11 + 48) + v20 * v18, v31, type metadata accessor for Storage.ExplicitUpdate);
    return 0;
  }

  else
  {
LABEL_11:
    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v29;
    sub_217E35350(a2, v29, type metadata accessor for Storage.ExplicitUpdate);
    v33 = *v24;
    sub_217E4690C(v27, v18, isUniquelyReferenced_nonNull_native);
    *v24 = v33;
    sub_217E35D8C(a2, v31, type metadata accessor for Storage.ExplicitUpdate);
    return 1;
  }
}

uint64_t sub_217E4690C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Storage.ExplicitUpdate();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_217E4B440(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_217E53278();
      goto LABEL_18;
    }

    sub_217E46BF8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  v15 = (a1 + *(v7 + 20));
  v16 = *v15;
  v17 = v15[1];
  sub_217E705F4();
  v18 = sub_217E709D4();
  v19 = -1 << *(v13 + 32);
  a2 = v18 & ~v19;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v31 + 72);
    while (1)
    {
      sub_217E35350(*(v13 + 48) + v21 * a2, v10, type metadata accessor for Storage.ExplicitUpdate);
      if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
      {
        v22 = &v10[*(v7 + 20)];
        v23 = *v22 == v16 && *(v22 + 1) == v17;
        if (v23 || (sub_217E70924() & 1) != 0)
        {
          break;
        }
      }

      sub_217E365C0(v10, type metadata accessor for Storage.ExplicitUpdate);
      a2 = (a2 + 1) & v20;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_217E365C0(v10, type metadata accessor for Storage.ExplicitUpdate);
    sub_217E70934();
    __break(1u);
  }

LABEL_18:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_217E35D8C(a1, *(v24 + 48) + *(v31 + 72) * a2, type metadata accessor for Storage.ExplicitUpdate);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_217E46BF8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Storage.ExplicitUpdate();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_217E46F2C();
  result = sub_217E707E4();
  v11 = result;
  if (*(v8 + 16))
  {
    v37 = v2;
    v38 = v8;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v39 + 72);
      sub_217E35350(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for Storage.ExplicitUpdate);
      v25 = *(v11 + 40);
      sub_217E709A4();
      sub_217E70374();
      sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
      sub_217E70594();
      v26 = &v7[*(v40 + 20)];
      v27 = *v26;
      v28 = *(v26 + 1);
      sub_217E705F4();
      result = sub_217E709D4();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_217E35D8C(v7, *(v11 + 48) + v19 * v24, type metadata accessor for Storage.ExplicitUpdate);
      ++*(v11 + 16);
      v8 = v38;
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

        v2 = v37;
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
    *v2 = v11;
  }

  return result;
}

void sub_217E46F2C()
{
  if (!qword_2811B0960)
  {
    type metadata accessor for Storage.ExplicitUpdate();
    sub_217E447D0(&qword_2811B0B00, type metadata accessor for Storage.ExplicitUpdate);
    v0 = sub_217E707F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0960);
    }
  }
}

uint64_t sub_217E47008(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3[1];
  v5 = v3[3];
  v51 = v3[2];
  v52 = v5;
  v6 = v3[1];
  v49 = *v3;
  v50 = v6;
  v7 = v3[3];
  v44 = v51;
  v45 = v7;
  v8 = *a2;
  v9 = *(v3 + 9);
  v53 = *(v3 + 8);
  v10 = *(v3 + 8);
  v43 = v4;
  v42 = v49;
  v46 = v10;
  v47 = v9;
  v38[0] = v8;
  v11 = sub_217E35AD0(v38);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_217E47604((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 16) = v13 + 1;
    *(v11 + 8 * v13 + 32) = v8;
    v48 = v11;
    v44 = v51;
    v45 = v52;
    v43 = v50;
    v42 = v49;
    v46 = v53;
    v47 = v9;
    v38[0] = v8;
    v14 = sub_217E47758(v38);
    sub_217E479D4(v14);
    *&v42 = a3;
    swift_getExtendedExistentialTypeMetadata_unique();
    v15 = sub_217E70514();
    v41 = v15;
    v16 = v48;
    v17 = *(v48 + 16);
    v37 = v9;
    if (v17)
    {
      v18 = 32;
      while (1)
      {
        if (!*(v9 + 16))
        {
          goto LABEL_8;
        }

        v19 = sub_217E33C18(*(v16 + v18));
        if ((v20 & 1) == 0)
        {
          goto LABEL_8;
        }

        v21 = *(*(v9 + 56) + 8 * v19);

        sub_217E36EF4();
        if (*(v21 + 16))
        {
          v23 = sub_217E3722C(v22);
          v25 = v24;

          if (v25)
          {
            v26 = *(*(v21 + 56) + 8 * v23);

            *&v42 = v26;
            MEMORY[0x28223BE20](v27);
            sub_217E362C4(0, &qword_2811B0980, qword_2811B1708, &protocol descriptor for GraphUpdate, MEMORY[0x277D83940]);
            sub_217E4A3CC();
            v28 = sub_217E70624();

            v9 = v37;
            *&v42 = v28;
            sub_217E706B4();
            swift_getWitnessTable();
            sub_217E70694();
            goto LABEL_8;
          }
        }

        else
        {
        }

LABEL_8:
        v18 += 8;
        if (!--v17)
        {

          v29 = v41;
          goto LABEL_16;
        }
      }
    }

    v29 = v15;

LABEL_16:
    v8 = a1;
    if (!sub_217E706A4())
    {
    }

    v30 = 0;
    v9 = v29 + 32;
    a3 = 138412290;
    while (1)
    {
      v11 = sub_217E70684();
      sub_217E70654();
      if ((v11 & 1) == 0)
      {
        break;
      }

      sub_217E33AD0(v9, v38);
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_24;
      }

      v32 = v39;
      v33 = v40;
      sub_217E37F28(v38, v39);
      v44 = v51;
      v45 = v52;
      v43 = v50;
      v42 = v49;
      v46 = v53;
      v47 = v37;
      (*(v33 + 16))(&v42, a1, v32, v33);
      sub_217E364B4(v38);
      ++v30;
      v9 += 40;
      if (v31 == sub_217E706A4())
      {
      }
    }

    sub_217E70824();
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v11 = sub_217E47604(0, *(v11 + 16) + 1, 1, v11);
  }
}

char *sub_217E47604(char *result, int64_t a2, char a3, char *a4)
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
    sub_217E4770C(0, &qword_2811B08E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void sub_217E4770C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_217E70904();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_217E47758(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[1];
  v40 = *v1;
  v4 = v1[2];
  v41 = v3;
  v42 = v4;
  v5 = *(v1 + 6);
  v38 = *(v1 + 56);
  v6 = *(v5 + 64);
  v39 = *(v1 + 9);
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      do
      {
        if (!v9)
        {
          while (1)
          {
            v16 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v16 >= v10)
            {
              goto LABEL_27;
            }

            v9 = *(v5 + 64 + 8 * v16);
            ++v12;
            if (v9)
            {
              v12 = v16;
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

LABEL_4:
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = v14 | (v12 << 6);
      }

      while (v2 != *(*(v5 + 56) + 8 * v15));
      v17 = *(*(v5 + 48) + 8 * v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_217E47604(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = *(v13 + 2);
      v18 = *(v13 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v28 = sub_217E47604((v18 > 1), v19 + 1, 1, v13);
        v20 = v19 + 1;
        v13 = v28;
      }

      *(v13 + 2) = v20;
      *&v13[8 * v19 + 32] = v17;
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v35 = v5;
      v36 = v38;
      v37 = v39;
      v31 = v17;
      result = sub_217E47758(&v31);
      v21 = *(result + 16);
      v22 = *(v13 + 2);
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        goto LABEL_29;
      }

      if (v23 > *(v13 + 3) >> 1)
      {
        break;
      }

      v24 = *(result + 16);
      if (!v21)
      {
        goto LABEL_25;
      }

LABEL_17:
      if (((*(v13 + 3) >> 1) - v22) < v21)
      {
        goto LABEL_30;
      }

      memcpy(&v13[8 * v22 + 32], (result + 32), 8 * v21);

      if (v21)
      {
        v25 = *(v13 + 2);
        v26 = __OFADD__(v25, v21);
        v27 = v25 + v21;
        if (v26)
        {
          goto LABEL_31;
        }

        *(v13 + 2) = v27;
      }
    }

    if (v22 <= v23)
    {
      v29 = v22 + v21;
    }

    else
    {
      v29 = *(v13 + 2);
    }

    v30 = result;
    v13 = sub_217E47604(1, v29, 1, v13);
    result = v30;
    v22 = *(v13 + 2);
    if (*(v30 + 16))
    {
      goto LABEL_17;
    }

LABEL_25:
  }

  while (!v21);
  __break(1u);
LABEL_27:

  return v13;
}

uint64_t sub_217E479D4(uint64_t result)
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

  result = sub_217E47604(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_217E47AC0(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_217E35174(0, &qword_2811B0AB8, type metadata accessor for Storage.ExplicitUpdate, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - v7;
  swift_beginAccess();
  sub_217E47BE0(a2, v8);
  swift_endAccess();
  result = sub_217E377A0(v8, &qword_2811B0AB8, type metadata accessor for Storage.ExplicitUpdate, v4);
  if (!*(*(a1 + 160) + 16) && !*(*(a1 + 152) + 16))
  {
    return sub_217E3D8A8();
  }

  return result;
}

uint64_t sub_217E47BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for Storage.ExplicitUpdate();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  v8 = *v2;
  v9 = *(*v2 + 40);
  sub_217E709A4();
  sub_217E70374();
  sub_217E447D0(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  v31 = v4;
  v10 = (a1 + *(v4 + 20));
  v11 = *v10;
  v12 = v10[1];
  sub_217E705F4();
  v13 = sub_217E709D4();
  v14 = -1 << *(v8 + 32);
  v15 = v13 & ~v14;
  if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return (*(v30 + 56))(v29, 1, 1, v31);
  }

  v16 = ~v14;
  v17 = *(v30 + 72);
  while (1)
  {
    sub_217E35F40(*(v8 + 48) + v17 * v15, v7, type metadata accessor for Storage.ExplicitUpdate);
    if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
    {
      v18 = &v7[*(v31 + 20)];
      v19 = *v18 == v11 && *(v18 + 1) == v12;
      if (v19 || (sub_217E70924() & 1) != 0)
      {
        break;
      }
    }

    sub_217E3477C(v7, type metadata accessor for Storage.ExplicitUpdate);
    v15 = (v15 + 1) & v16;
    if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return (*(v30 + 56))(v29, 1, 1, v31);
    }
  }

  sub_217E3477C(v7, type metadata accessor for Storage.ExplicitUpdate);
  v20 = v28;
  v21 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v20;
  v32 = *v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217E532CC(type metadata accessor for Storage.ExplicitUpdate, sub_217E46F2C, type metadata accessor for Storage.ExplicitUpdate, type metadata accessor for Storage.ExplicitUpdate);
    v23 = v32;
  }

  v24 = *(v23 + 48) + v17 * v15;
  v25 = v29;
  sub_217E39C30(v24, v29, type metadata accessor for Storage.ExplicitUpdate);
  sub_217E47F10(v15);
  *v20 = v32;
  return (*(v30 + 56))(v25, 0, 1, v31);
}

uint64_t sub_217E47F10(int64_t a1)
{
  v33 = type metadata accessor for Storage.ExplicitUpdate();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v33);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_217E707C4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v32 = (v14 + 1) & v12;
      v15 = *(v3 + 72);
      v16 = v12;
      do
      {
        v17 = v9;
        v18 = v15;
        v19 = v15 * v11;
        sub_217E35F40(*(v8 + 48) + v15 * v11, v7, type metadata accessor for Storage.ExplicitUpdate);
        v20 = *(v8 + 40);
        sub_217E709A4();
        sub_217E70374();
        sub_217E447D0(&qword_2811B1818, MEMORY[0x277CC95F0]);
        v21 = v16;
        sub_217E70594();
        v22 = &v7[*(v33 + 20)];
        v23 = *v22;
        v24 = *(v22 + 1);
        sub_217E705F4();
        v25 = sub_217E709D4();
        sub_217E3477C(v7, type metadata accessor for Storage.ExplicitUpdate);
        v26 = v25 & v21;
        v16 = v21;
        if (a1 >= v32)
        {
          if (v26 < v32)
          {
            v15 = v18;
            goto LABEL_5;
          }

          v15 = v18;
          if (a1 < v26)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = v18;
          if (v26 < v32 && a1 < v26)
          {
            goto LABEL_5;
          }
        }

        v27 = v15 * a1;
        if (v15 * a1 < v19 || *(v8 + 48) + v15 * a1 >= (*(v8 + 48) + v19 + v15))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v11;
        if (v27 != v19)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v11;
        }

LABEL_5:
        v11 = (v11 + 1) & v16;
        v9 = v17;
      }

      while (((*(v17 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v28 = *(v8 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v30;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_217E4824C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217E70374();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217E4831C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217E70374();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217E483DC(uint64_t a1, unint64_t a2, void *a3)
{
  v70 = a3;
  v5 = type metadata accessor for ScopeGraphElement.ID(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for EventHandlingRuleUpdate();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v68 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  sub_217E35F40(a1, v8, type metadata accessor for ScopeGraphElement.ID);
  sub_217E3B680(v8, v18);
  v19 = *(v10 + 16);
  v69 = v16;
  v20 = v16;
  v21 = v70;
  v66 = v18;
  v67 = v19;
  v19(v20, v18, v9);
  v22 = *(a2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(a2 + 72);
  v24 = v72;
  *(a2 + 72) = 0x8000000000000000;
  v26 = sub_217E33C18(v21);
  v27 = *(v24 + 16);
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    __break(1u);
    goto LABEL_25;
  }

  LOBYTE(v30) = v25;
  if (*(v24 + 24) >= v29)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    sub_217E489A4(v29, isUniquelyReferenced_nonNull_native);
    v24 = v72;
    v31 = sub_217E33C18(v21);
    if ((v30 & 1) != (v32 & 1))
    {
      sub_217E70944();
      __break(1u);
      goto LABEL_29;
    }

    v26 = v31;
  }

  while (1)
  {
    isUniquelyReferenced_nonNull_native = v10;
    v33 = *(a2 + 72);
    *(a2 + 72) = v24;

    v34 = *(a2 + 72);
    if ((v30 & 1) == 0)
    {
      sub_217E362BC(v26, v21, MEMORY[0x277D84F98], *(a2 + 72));
    }

    v10 = *(v34 + 56);
    v35 = *(v10 + 8 * v26);
    sub_217E36EF4();
    if (*(v35 + 16) && (v37 = sub_217E3722C(v36), (v38 & 1) != 0))
    {
      v21 = *(*(v35 + 56) + 8 * v37);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v21;
    if ((v39 & 1) == 0)
    {
LABEL_25:
      v21 = sub_217E48C44(0, v21[2] + 1, 1, v21);
      v72 = v21;
    }

    v40 = v69;
    v42 = v21[2];
    v41 = v21[3];
    if (v42 >= v41 >> 1)
    {
      v21 = sub_217E48C44((v41 > 1), v42 + 1, 1, v21);
      v72 = v21;
    }

    v30 = v68;
    v67(v68, v40, v9);
    WitnessTable = swift_getWitnessTable();
    sub_217E48E10(v42, v30, &v72, v9, WitnessTable);
    v44 = v9;
    v9 = *(isUniquelyReferenced_nonNull_native + 8);
    v69 = (isUniquelyReferenced_nonNull_native + 8);
    v70 = v44;
    v9(v40);
    v68 = sub_217E36EF4();
    v46 = v45;
    v48 = v47;
    v49 = *(v10 + 8 * v26);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v10 + 8 * v26);
    v51 = v71;
    *(v10 + 8 * v26) = 0x8000000000000000;
    a2 = sub_217E3722C(v48);
    v53 = *(v51 + 16);
    v54 = (v52 & 1) == 0;
    v55 = v53 + v54;
    if (!__OFADD__(v53, v54))
    {
      break;
    }

    __break(1u);
LABEL_27:
    sub_217E59024();
    v24 = v72;
  }

  v56 = v52;
  if (*(v51 + 24) >= v55)
  {
    if ((v50 & 1) == 0)
    {
      sub_217E59190();
    }

    goto LABEL_21;
  }

  sub_217E491E0(v55, v50);
  v57 = sub_217E3722C(v48);
  if ((v56 & 1) != (v58 & 1))
  {
LABEL_29:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  a2 = v57;
LABEL_21:
  v59 = v66;
  v60 = *(v10 + 8 * v26);
  *(v10 + 8 * v26) = v71;

  v61 = *(v10 + 8 * v26);
  if ((v56 & 1) == 0)
  {
    sub_217E4921C(a2, v68, v46, v48, MEMORY[0x277D84F90], *(v10 + 8 * v26));
  }

  v62 = *(v61 + 56);
  v63 = *(v62 + 8 * a2);
  *(v62 + 8 * a2) = v21;

  return (v9)(v59, v70);
}

void sub_217E48920()
{
  if (!qword_2811B1160)
  {
    sub_217E33B34(255, &qword_2811B0980, qword_2811B1708, &protocol descriptor for GraphUpdate, MEMORY[0x277D83940]);
    v0 = type metadata accessor for TypedDictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B1160);
    }
  }
}

uint64_t sub_217E489A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217E39024(0, &qword_2811B0918, sub_217E48920);
  v33 = a2;
  result = sub_217E708C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v21);
      result = sub_217E709D4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}