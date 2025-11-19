void sub_217E5BD58()
{
  if (!qword_2811B0938)
  {
    sub_217E33B34(255, &qword_2811B0980, qword_2811B1708, &protocol descriptor for GraphUpdate, MEMORY[0x277D83940]);
    sub_217E37580();
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0938);
    }
  }
}

uint64_t sub_217E5BE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_217E5BE8C()
{
  if (!qword_2811B0948)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    sub_217E39100();
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0948);
    }
  }
}

void sub_217E5BEF8()
{
  if (!qword_27CBF2638)
  {
    sub_217E393BC(255, &qword_27CBF2640, sub_217E5BF94, MEMORY[0x277D83940]);
    sub_217E37580();
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2638);
    }
  }
}

unint64_t sub_217E5BF94()
{
  result = qword_27CBF2648;
  if (!qword_27CBF2648)
  {
    sub_217E3374C(255, &qword_2811B0BD8);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27CBF2648);
  }

  return result;
}

uint64_t sub_217E5BFEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_217E5C048(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_217E5C098(uint64_t a1, unint64_t *a2)
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

uint64_t sub_217E5C154(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_217E5C238(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(v4 + *(*v4 + 136)) & 1) == 0)
  {
    *(v4 + *(*v4 + 120)) = 1;
    result = sub_217E5C300(result, v4, a2, a3, a4);
    *(v4 + *(*v4 + 120)) = 0;
    if (*(v4 + *(*v4 + 128)) == 1)
    {
      return sub_217E5C3B8();
    }
  }

  return result;
}

uint64_t sub_217E5C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*a2 + 104);
  swift_beginAccess();
  (*(a5 + 24))(a2 + v9, a3, a4, a5);
  return swift_endAccess();
}

uint64_t sub_217E5C3B8()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  if (*(v0 + *(*v0 + 120)) == 1)
  {
    *(v0 + v2) = 1;
  }

  else
  {
    *(v0 + v2) = 0;
    *(v0 + *(*v0 + 136)) = 1;
    v3 = *(*v0 + 104);
    swift_beginAccess();
    (*(*(v1 + 88) + 16))(*(v1 + 80));
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_217E5C4B8(uint64_t result)
{
  if (*(result + *(*result + 128)) == 1)
  {
    return sub_217E5C3B8();
  }

  return result;
}

char *sub_217E5C500()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);
  return v0;
}

uint64_t sub_217E5C580()
{
  sub_217E5C500();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_217E5C5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_217E5C68C()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_217E5C6C0(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + *(*v2 + 136)))
  {
LABEL_2:
    *(v2 + *(v4 + 112)) = 1;
    return result;
  }

  *(v2 + *(*v2 + 120)) = 1;
  result = sub_217E5C7F8(v2, result, a2);
  if (!v3)
  {
    *(v2 + *(*v2 + 120)) = 0;
    v4 = *v2;
    if (*(v2 + *(*v2 + 128)) == 1)
    {
      result = sub_217E5C3B8();
      v4 = *v2;
    }

    goto LABEL_2;
  }

  *(v2 + *(*v2 + 120)) = 0;
  if (*(v2 + *(*v2 + 128)) == 1)
  {
    return sub_217E5C3B8();
  }

  return result;
}

uint64_t sub_217E5C7F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 104);
  swift_beginAccess();
  (*(a3 + 24))(a2, *(v5 + 80), a3);
  return swift_endAccess();
}

uint64_t sub_217E5C8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t static RuleSet.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_2811B0B08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_2811B0B10;
}

uint64_t RuleSet.install<A, B>(_:followingResolutionOf:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = *v4;
  v10 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  sub_217E36EF4();
  v12 = MEMORY[0x277D84F90];
  if (*(v9 + 16))
  {
    v13 = sub_217E3722C(v11);
    if (v14)
    {
      v15 = *(*(v9 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_217E5CFB0(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_217E5CFB0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[16 * v17];
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  v19 = sub_217E36EF4();
  v21 = v20;
  v23 = v22;
  v24 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v6;
  v42 = *v6;
  *v6 = 0x8000000000000000;
  v28 = sub_217E3722C(v23);
  v29 = v26[2];
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    __break(1u);
LABEL_22:
    sub_217E59E30();
    v26 = v42;
    goto LABEL_15;
  }

  v5 = v27;
  if (v26[3] >= v31)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  sub_217E5D5F0(v31, isUniquelyReferenced_nonNull_native);
  v26 = v42;
  v32 = sub_217E3722C(v23);
  if ((v5 & 1) != (v33 & 1))
  {
    goto LABEL_24;
  }

  v28 = v32;
LABEL_15:
  v34 = *v6;

  *v6 = v26;
  if ((v5 & 1) == 0)
  {
    v26[(v28 >> 6) + 8] |= 1 << v28;
    v35 = (v26[6] + 24 * v28);
    *v35 = v19;
    v35[1] = v21;
    v35[2] = v23;
    *(v26[7] + 8 * v28) = v12;
    v36 = v26[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (!v37)
    {
      v26[2] = v38;

      goto LABEL_18;
    }

    __break(1u);
LABEL_24:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

LABEL_18:
  v39 = v26[7];
  v40 = *(v39 + 8 * v28);
  *(v39 + 8 * v28) = v15;
}

uint64_t RuleSet.description.getter()
{
  v1 = *v0;
  sub_217E39420(0, &qword_27CBF2640, sub_217E5BF94, MEMORY[0x277D83940]);
  v3 = v2;
  v4 = sub_217E37580();

  return MEMORY[0x2821FB7B8](v1, &type metadata for TypeIdentifier, v3, v4);
}

uint64_t sub_217E5CC9C()
{
  v1 = *v0;
  sub_217E39420(0, &qword_27CBF2640, sub_217E5BF94, MEMORY[0x277D83940]);
  v3 = v2;
  v4 = sub_217E37580();

  return MEMORY[0x2821FB7B8](v1, &type metadata for TypeIdentifier, v3, v4);
}

char *sub_217E5CD54(char *result, int64_t a2, char a3, char *a4)
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
    sub_217E4770C(0, qword_27CBF2678);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_217E5CE64(void *result, int64_t a2, char a3, void *a4)
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
    sub_217E39420(0, &qword_27CBF2668, sub_217E5DCDC, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_217E5DCDC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217E5CFB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_217E39420(0, &qword_27CBF2660, sub_217E5BF94, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_217E5D0D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217E5DC40();
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

uint64_t sub_217E5D35C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217E33CF0(0, &qword_27CBF25F0);
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

uint64_t sub_217E5D5F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217E5BEF8();
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
      v22 = (*(v5 + 48) + 24 * v21);
      v23 = v22[1];
      v38 = *v22;
      v24 = v22[2];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v24);
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
      v17 = (*(v8 + 48) + 24 * v16);
      *v17 = v38;
      v17[1] = v23;
      v17[2] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
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

uint64_t sub_217E5D8D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217E5BCD8(0, &qword_27CBF2618, MEMORY[0x277D84460]);
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
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_217E33C00(v22, v33);
      }

      else
      {
        sub_217E33AD0(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_217E70994();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_217E33C00(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_217E5DBAC(uint64_t a1, uint64_t a2)
{
  sub_217E39420(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217E5DC40()
{
  if (!qword_27CBF2628)
  {
    sub_217E39420(255, &qword_27CBF2630, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83940]);
    sub_217E34278();
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2628);
    }
  }
}

unint64_t sub_217E5DCDC()
{
  result = qword_27CBF2670;
  if (!qword_27CBF2670)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CBF2670);
  }

  return result;
}

uint64_t sub_217E5DD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E37580();

  return MEMORY[0x2821FB7B8](a1, &type metadata for TypeIdentifier, a2, v4);
}

uint64_t sub_217E5DDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E37580();

  return MEMORY[0x2821FB7D0](a1, &type metadata for TypeIdentifier, a2, v4);
}

uint64_t sub_217E5DE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E37580();

  return MEMORY[0x2821FB7F8](a1, &type metadata for TypeIdentifier, a2, v4);
}

uint64_t sub_217E5DE88()
{
  sub_217E37580();

  return sub_217E70584();
}

uint64_t sub_217E5DEEC()
{
  sub_217E37580();

  return sub_217E70574();
}

uint64_t sub_217E5DF50()
{
  sub_217E709A4();
  sub_217E37580();
  sub_217E70574();
  return sub_217E709D4();
}

uint64_t sub_217E5DFD0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *a1;
  v6 = *a2;
  v7 = *(a3 + 16);
  return sub_217E5DE88();
}

uint64_t sub_217E5DFE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return sub_217E5DF50();
}

uint64_t sub_217E5DFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  v6 = *(a2 + 16);
  return sub_217E5DEEC();
}

uint64_t sub_217E5E00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_217E709A4();
  v6 = *v3;
  v7 = *(a2 + 16);
  sub_217E5DEEC();
  return sub_217E709D4();
}

uint64_t sub_217E5E064(uint64_t a1)
{
  sub_217E70814();

  v2 = *(a1 + 16);
  v3 = sub_217E70A34();
  MEMORY[0x21CEADE80](v3);

  MEMORY[0x21CEADE80](0x786574726556202CLL, 0xE90000000000003DLL);
  v4 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
  MEMORY[0x21CEADE80](v4);

  return 0x3D746E657645;
}

uint64_t sub_217E5E154(uint64_t a1)
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

uint64_t sub_217E5E1E8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

uint64_t sub_217E5E27C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_217E5E340(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  return sub_217E5E4B4();
}

uint64_t sub_217E5E34C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v11 - v8;
  (*(v6 + 16))(v11 - v8, v2 + *(v4 + 96), v5);
  (*(*(v4 + 88) + 24))(a2, v5);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_217E5E4B4()
{
  sub_217E70814();

  swift_getAssociatedTypeWitness();
  v0 = sub_217E70A34();
  MEMORY[0x21CEADE80](v0);

  MEMORY[0x21CEADE80](0x656C646E6148202CLL, 0xEA00000000003D72);
  v1 = sub_217E70A34();
  MEMORY[0x21CEADE80](v1);

  return 0x3D746E657645;
}

uint64_t static DependencyKey.ruleSet.getter@<X0>(void *a1@<X8>)
{
  if (qword_2811B0B08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_2811B0B10;
}

uint64_t static DependencyKey.source(in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(a2 + 16))(a1, a2);
  a3[3] = type metadata accessor for StaticTruth();
  a3[4] = swift_getWitnessTable();
  v10 = sub_217E360A4(a3);
  return StaticTruth.init(state:)(v9, AssociatedTypeWitness, v10);
}

__n128 sub_217E5E774(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_217E5E788(uint64_t a1, int a2)
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

uint64_t sub_217E5E7D0(uint64_t result, int a2, int a3)
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

uint64_t sub_217E5E820()
{
  v1 = sub_217E70A04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E35110(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  v14 = *v0;
  v12 = *(v0 + 1);
  v15 = v12;
  v13 = MEMORY[0x277D84F90];
  v10 = sub_217E709F4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  sub_217E35110(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();

  return sub_217E70A14();
}

uint64_t sub_217E5EA58()
{
  v1 = *(v0 + 16);
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  return sub_217E709D4();
}

uint64_t sub_217E5EACC()
{
  v1 = *(v0 + 16);
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  return sub_217E709D4();
}

uint64_t EnvironmentValues.scope.getter()
{
  sub_217E4F1E4();

  return sub_217E70484();
}

uint64_t EnvironmentValues.scope.setter(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  sub_217E4F1E4();
  return sub_217E70494();
}

void (*EnvironmentValues.scope.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  *(v3 + 88) = sub_217E4F1E4();
  sub_217E70484();
  return sub_217E5EC34;
}

void sub_217E5EC34(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v2[5] = **a1;
  v4 = v2[2];
  v5 = v2[10];
  v6 = v2[11];
  v2[6] = v3;
  v2[7] = v4;
  *(v2 + 4) = *(v2 + 3);
  if (a2)
  {

    sub_217E70494();
    v7 = *v2;
    v8 = v2[1];
    v9 = v2[3];
  }

  else
  {
    sub_217E70494();
  }

  free(v2);
}

uint64_t sub_217E5ED14()
{
  v1[3] = &type metadata for KeyedDependencyContainer;
  v1[4] = &protocol witness table for KeyedDependencyContainer;
  v1[0] = MEMORY[0x277D84F98];
  v1[1] = MEMORY[0x277D84F98];
  static Scope.root(dependencyContainer:)(v1, &qword_27CBF2700);
  return sub_217E364B4(v1);
}

uint64_t sub_217E5ED68@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CBF22B0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_27CBF2708;
  v2 = qword_27CBF2710;
  *a1 = qword_27CBF2700;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = unk_27CBF2718;
}

uint64_t sub_217E5EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_217E5EE64();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_217E5EE64()
{
  result = qword_27CBF2728[0];
  if (!qword_27CBF2728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF2728);
  }

  return result;
}

uint64_t sub_217E5EEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a3, a1, AssociatedTypeWitness);
}

uint64_t sub_217E5EFB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E5F09C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E5F170(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
LABEL_23:
    v14 = *(v7 + 48);

    return v14(a1);
  }

  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v8)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v8 + (v9 | v13) + 1;
}

void sub_217E5F368(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(a4 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
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

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
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
      bzero(a1, v11);
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
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
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
  v18 = *(v9 + 56);

  v18(a1, a2);
}

uint64_t sub_217E5F608@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  v13 = a1[4];
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  v8 = *a2;
  return sub_217E52684(v4, &v8, *(a3 + 16), *(a3 + 24), a4);
}

uint64_t sub_217E5F6A4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = sub_217E65828(*(a5 + 16), v5, *(a5 + 16), *(a5 + 24));
  v13 = v8;
  sub_217E51A40(a1, v9, v10, v11, &v13, a3);
}

uint64_t sub_217E5F79C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a2;
  v10 = sub_217E40620(a5, a5, a7);
  v14 = v9;
  sub_217E51A40(a1, v10, v11, v12, &v14, a3);
}

uint64_t View.truth<A>(_:_:definesNewScope:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v20 = a4;
  v8 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TruthViewModifier();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  (*(v9 + 16))(v12, a2, v8);
  sub_217E5FA58(a1, v12, a3, v17);

  MEMORY[0x21CEADD60](v17, v20, v13, v21);
  return (*(v14 + 8))(v17, v13);
}

double sub_217E5FA58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v7 = *a1;
  *a4 = a1;
  v8 = *(v7 + *MEMORY[0x277D84308] + 8);
  v9 = type metadata accessor for TruthViewModifier();
  (*(*(v8 - 8) + 32))(&a4[v9[7]], a2, v8);
  a4[v9[8]] = a3;
  v10 = &a4[v9[9]];
  *v10 = swift_getKeyPath();
  result = 0.0;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 0;
  return result;
}

uint64_t View.truth<A>(_:_:disambiguation:definesNewScope:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a6;
  v30 = a8;
  v31 = a5;
  v29 = a4;
  v27 = a2;
  v28 = a3;
  v9 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v26 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v26 - v14;
  v16 = *(v9 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v26 - v18;
  v20 = type metadata accessor for AmbiguousTruthViewModifier();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v26 - v23;
  (*(v16 + 16))(v19, v27, v9);
  (*(v11 + 16))(v15, v28, AssociatedTypeWitness);
  sub_217E5FDEC(a1, v19, v15, v29, v24);

  MEMORY[0x21CEADD60](v24, v31, v20, v32);
  return (*(v21 + 8))(v24, v20);
}

double sub_217E5FDEC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v9 = *a1;
  *a5 = a1;
  v10 = *(v9 + *MEMORY[0x277D84308] + 8);
  v11 = type metadata accessor for AmbiguousTruthViewModifier();
  (*(*(v10 - 8) + 32))(&a5[v11[9]], a2, v10);
  v12 = v11[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a5[v12], a3, AssociatedTypeWitness);
  a5[v11[11]] = a4;
  v14 = &a5[v11[12]];
  *v14 = swift_getKeyPath();
  result = 0.0;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  v14[40] = 0;
  return result;
}

uint64_t sub_217E5FF44(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E63FD4(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  v4 = sub_217E70454();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  swift_getKeyPath();
  sub_217E60194(v2, *(a2 + 16), v21);
  v18 = v21[0];
  v19 = v21[1];
  v20 = v22;
  WitnessTable = swift_getWitnessTable();
  sub_217E704D4();

  v13 = sub_217E64028();
  v17[0] = WitnessTable;
  v17[1] = v13;
  v14 = swift_getWitnessTable();
  sub_217E4F368(v9, v4, v14);
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_217E4F368(v11, v4, v14);
  return (v15)(v11, v4);
}

uint64_t sub_217E60194@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_217E70474();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TruthViewModifier();
  v11 = v10;
  if (*(a1 + *(v10 + 32)) == 1)
  {
    v48 = a2;
    v49 = a3;
    *&v47 = v10;
    v12 = a1 + *(v10 + 36);
    v13 = *v12;
    v14 = *(v12 + 1);
    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    v17 = *(v12 + 4);
    if (v12[40] == 1)
    {
      v58 = *v12;
      v59 = v14;
      v18 = v14;
      *&v60 = v16;
      *(&v60 + 1) = v15;
      v19 = v15;
      v61 = v17;
    }

    else
    {

      sub_217E70784();
      v27 = sub_217E704C4();
      sub_217E70384();

      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v13, v14, v16, v15, v17, 0);
      (*(v50 + 8))(v9, v6);
      v13 = v58;
      v18 = v59;
      v19 = *(&v60 + 1);
      v16 = v60;
      v17 = v61;
    }

    v62 = 0;
    v63 = 0xE000000000000000;
    v28 = v47;
    v29 = sub_217E70A34();
    MEMORY[0x21CEADE80](v29);

    MEMORY[0x21CEADE80](8250, 0xE200000000000000);
    v53 = *a1;
    v30 = v53;
    type metadata accessor for Dependencies();
    sub_217E70894();
    sub_217E70914();
    v53 = v13;
    v54 = v18;
    v55 = v16;
    v56 = v19;
    v57 = v17;
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    Scope.subscope(dependencyContainer:tag:)(v51, v62, v63, &v62);

    sub_217E6409C(v51);

    v31 = v62;
    v32 = v63;
    v33 = v64;
    v34 = v65;
    result = sub_217E57624(v30, a1 + *(v28 + 28));
    v36 = v49;
    *v49 = v31;
    v36[1] = v32;
    *(v36 + 1) = v33;
    v36[4] = v34;
  }

  else
  {
    v48 = v6;
    v20 = a1 + *(v10 + 36);
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = *(v20 + 1);
    v24 = *(v20 + 4);
    v25 = *(v20 + 3);
    v26 = v20[40] == 1;
    v47 = v23;
    if (v26)
    {
      v62 = v21;
      v63 = v22;
      v64 = v23;
      v65 = v24;

      v39 = v47;
    }

    else
    {

      sub_217E70784();
      v37 = sub_217E704C4();
      v49 = a3;
      v38 = v37;
      sub_217E70384();

      a3 = v49;
      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v21, v22, v47, v25, v24, 0);
      (*(v50 + 8))(v9, v48);
      v21 = v62;
      v22 = v63;
      v39 = v64;
      v24 = v65;
    }

    v58 = v21;
    v59 = v22;
    v60 = v39;
    v61 = v24;
    sub_217E57624(*a1, a1 + *(v11 + 28));

    v41 = *v20;
    v40 = *(v20 + 1);
    v43 = *(v20 + 2);
    v42 = *(v20 + 3);
    v44 = *(v20 + 4);
    if (v20[40] == 1)
    {
      *a3 = v41;
      a3[1] = v40;
      a3[2] = v43;
      a3[3] = v42;
      a3[4] = v44;
    }

    else
    {
      v45 = *v20;

      sub_217E70784();
      v46 = sub_217E704C4();
      sub_217E70384();

      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v41, v40, v43, v42, v44, 0);
      return (*(v50 + 8))(v9, v48);
    }
  }

  return result;
}

uint64_t sub_217E606E8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E63FD4(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  v4 = sub_217E70454();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  swift_getKeyPath();
  v12 = *(a2 + 16);
  sub_217E60938(v2, *(a2 + 24), v22);
  v19 = v22[0];
  v20 = v22[1];
  v21 = v23;
  WitnessTable = swift_getWitnessTable();
  sub_217E704D4();

  v14 = sub_217E64028();
  v18[0] = WitnessTable;
  v18[1] = v14;
  v15 = swift_getWitnessTable();
  sub_217E4F368(v9, v4, v15);
  v16 = *(v5 + 8);
  v16(v9, v4);
  sub_217E4F368(v11, v4, v15);
  return (v16)(v11, v4);
}

uint64_t sub_217E60938@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_217E70474();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AmbiguousTruthViewModifier();
  v11 = v10;
  if (*(a1 + *(v10 + 44)) == 1)
  {
    v45[1] = a2;
    v48 = a3;
    v12 = a1 + *(v10 + 48);
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
    v16 = *(v12 + 3);
    v17 = *(v12 + 4);
    v18 = v12[40] == 1;
    v47 = v15;
    *&v46 = v17;
    if (v18)
    {
      v57 = v13;
      v58 = v14;
      *&v59 = v15;
      *(&v59 + 1) = v16;
      v60 = v17;
    }

    else
    {

      sub_217E70784();
      v25 = sub_217E704C4();
      sub_217E70384();

      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v13, v14, v47, v16, v46, 0);
      (*(v49 + 8))(v9, v6);
      v13 = v57;
      v14 = v58;
      v16 = *(&v59 + 1);
      v47 = v59;
      *&v46 = v60;
    }

    v61 = 0;
    v62 = 0xE000000000000000;
    v26 = sub_217E70A34();
    MEMORY[0x21CEADE80](v26);

    MEMORY[0x21CEADE80](8250, 0xE200000000000000);
    v52 = *a1;
    v27 = v52;
    type metadata accessor for Dependencies();
    sub_217E70894();
    sub_217E70914();
    MEMORY[0x21CEADE80](61, 0xE100000000000000);
    v28 = *(v11 + 36);
    sub_217E70914();
    v52 = v13;
    v53 = v14;
    v54 = v47;
    v55 = v16;
    v56 = v46;
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    Scope.subscope(dependencyContainer:tag:)(v50, v61, v62, &v61);

    sub_217E6409C(v50);

    v29 = v61;
    v30 = v62;
    v31 = v63;
    v32 = v64;
    result = sub_217E57810(v27, a1 + v28, a1 + *(v11 + 40));
    v34 = v48;
    *v48 = v29;
    v34[1] = v30;
    *(v34 + 1) = v31;
    v34[4] = v32;
  }

  else
  {
    v47 = v6;
    v19 = a1 + *(v10 + 48);
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = *(v19 + 1);
    v23 = *(v19 + 4);
    v24 = *(v19 + 3);
    v18 = v19[40] == 1;
    v46 = v22;
    if (v18)
    {
      v61 = v20;
      v62 = v21;
      v63 = v22;
      v64 = v23;

      v37 = v46;
    }

    else
    {

      sub_217E70784();
      v35 = sub_217E704C4();
      v48 = a3;
      v36 = v35;
      sub_217E70384();

      a3 = v48;
      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v20, v21, v46, v24, v23, 0);
      (*(v49 + 8))(v9, v47);
      v20 = v61;
      v21 = v62;
      v37 = v63;
      v23 = v64;
    }

    v57 = v20;
    v58 = v21;
    v59 = v37;
    v60 = v23;
    sub_217E57624(*a1, a1 + *(v11 + 36));

    v39 = *v19;
    v38 = *(v19 + 1);
    v41 = *(v19 + 2);
    v40 = *(v19 + 3);
    v42 = *(v19 + 4);
    if (v19[40] == 1)
    {
      *a3 = v39;
      a3[1] = v38;
      a3[2] = v41;
      a3[3] = v40;
      a3[4] = v42;
    }

    else
    {
      v43 = *v19;

      sub_217E70784();
      v44 = sub_217E704C4();
      sub_217E70384();

      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v39, v38, v41, v40, v42, 0);
      return (*(v49 + 8))(v9, v47);
    }
  }

  return result;
}

uint64_t View.onChange<A>(of:updateDependency:initial:)(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = *(v12 + *MEMORY[0x277D84DE8] + 8);
  v13[4] = a5;
  v13[5] = a6;
  View.onChange<A, B>(of:updateDependency:initial:transform:)(a1, a2, a3, sub_217E65478, v13, a4, a5, a6, a6);
}

uint64_t View.onChange<A, B>(of:updateDependency:initial:transform:)(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *a1;
  v16 = *a2;
  memset(&v23[8], 0, 33);
  *v23 = swift_getKeyPath();
  *&v24 = a2;
  *(&v24 + 1) = a1;
  LOBYTE(v25) = a3;
  *(&v25 + 1) = a4;
  v26 = a5;
  v17 = *(v15 + *MEMORY[0x277D84DE8] + 8);
  v18 = *(v16 + *MEMORY[0x277D84308] + 8);

  *&v27 = v17;
  *(&v27 + 1) = v18;
  *&v28 = a9;
  *(&v28 + 1) = a8;
  updated = type metadata accessor for UpdateTruthFromEnvironmentViewModifier();
  MEMORY[0x21CEADD60](v23, a6, updated, a7);
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v27 = *v23;
  v28 = *&v23[16];
  v29 = *&v23[32];
  return (*(*(updated - 8) + 8))(&v27, updated);
}

uint64_t View.onChange<A>(of:updateDependency:disambiguation:initial:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a1;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = *(v17 + *MEMORY[0x277D84DE8] + 8);
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  View.onChange<A, B>(of:updateDependency:disambiguation:initial:transform:)(a1, a2, a3, a4, sub_217E61550, v18, a5, a6, a9, a7, a8, a7);
}

uint64_t View.onChange<A, B>(of:updateDependency:disambiguation:initial:transform:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a8;
  v32 = a9;
  v33 = a7;
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v27 = a10;
  v28 = a3;
  v14 = *a1;
  v15 = *(*a2 + *MEMORY[0x277D84308] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v27 - v19;
  v35 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v36 = v15;
  v37 = a12;
  v38 = a10;
  v39 = a11;
  updated = type metadata accessor for UpdateAmbiguousTruthFromEnvironmentViewModifier();
  v22 = *(updated - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](updated);
  v25 = &v27 - v24;
  (*(v17 + 16))(v20, v28, AssociatedTypeWitness);
  sub_217E615A0(a2, a1, v20, v29, v30, v31, v25);

  MEMORY[0x21CEADD60](v25, v33, updated, v34);
  return (*(v22 + 8))(v25, updated);
}

uint64_t sub_217E615A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *a2;
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 0;
  *(a7 + 48) = a1;
  *(a7 + 56) = a2;
  v21 = *(v13 + *MEMORY[0x277D84DE8] + 8);
  v22 = *(v12 + *MEMORY[0x277D84308] + 8);
  updated = type metadata accessor for UpdateAmbiguousTruthFromEnvironmentViewModifier();
  v15 = updated[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v15, a3, AssociatedTypeWitness);
  *(a7 + updated[18]) = a4;
  v18 = (a7 + updated[19]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

void sub_217E61738(void *a1)
{
  sub_217E63FD4(319, qword_27CBF2930, MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for Dependencies();
    v3 = a1[3];
    sub_217E70894();
    if (v4 <= 0x3F)
    {
      sub_217E70474();
      v5 = a1[2];
      sub_217E70A24();
      if (v6 <= 0x3F)
      {
        v7 = a1[6];
        swift_getAssociatedTypeWitness();
        if (v8 <= 0x3F)
        {
          sub_217E5DCDC();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217E61864(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  v6 = *(a3 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((((v11 + 64) & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 24;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v10 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    v21 = a1 & 0xFFFFFFFFFFFFFFF8;
    if ((v9 & 0x80000000) != 0)
    {
      v23 = *(v8 + 48);

      return v23((((v21 + 63) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11);
    }

    else
    {
      v22 = *(v21 + 48);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v10 + (v14 | v20) + 1;
}

void sub_217E61A08(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 48);
  v8 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((v11 + 64) & ~v11) + *(v9 + 64)) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v11 + 64) & ~v11) + *(v9 + 64)) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v20 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v10 & 0x80000000) != 0)
      {
        v22 = *(v9 + 56);

        v22((((v20 + 63) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = (a2 - 1);
        }

        *(v20 + 48) = v21;
      }

      return;
    }
  }

  if (((((v11 + 64) & ~v11) + *(v9 + 64)) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((v11 + 64) & ~v11) + *(v9 + 64)) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

uint64_t sub_217E61C04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_217E61C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_217E61C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E61CAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E61D08(uint64_t a1)
{
  type metadata accessor for Dependencies();
  v2 = *(a1 + 16);
  AssociatedTypeWitness = sub_217E70894();
  if (v4 <= 0x3F)
  {
    AssociatedTypeWitness = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v7 <= 0x3F)
      {
        sub_217E63FD4(319, qword_27CBF2930, MEMORY[0x277CDF468]);
        AssociatedTypeWitness = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_217E61E20(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_31;
  }

  v15 = ((((v11 + v12 + ((v10 + 8) & ~v10)) & ~v12) + *(*(AssociatedTypeWitness - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 49;
  if (v15 <= 3)
  {
    v16 = ((a2 - v14 + 255) >> 8) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *&a1[v15];
      if (!v19)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v14 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v15];
    if (a1[v15])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if ((v13 & 0x80000000) != 0)
  {
    v24 = &a1[v10 + 8] & ~v10;
    if (v7 == v14)
    {
      v25 = *(v6 + 48);

      return v25(v24, v7, v5);
    }

    else
    {
      v26 = *(v9 + 48);
      v27 = (v24 + v11 + v12) & ~v12;

      return v26(v27);
    }
  }

  else
  {
    v23 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }
}

void sub_217E620AC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + *(*(AssociatedTypeWitness - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 49;
  if (v16 >= a3)
  {
    v20 = 0;
    if (v16 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v16 >= a2)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        if ((v15 & 0x80000000) != 0)
        {
          v24 = (a1 + v12 + 8) & ~v12;
          if (v9 == v16)
          {
            v25 = *(v28 + 56);

            v25(v24, a2, v9, v7);
          }

          else
          {
            v26 = *(v11 + 56);
            v27 = (v24 + v13 + v14) & ~v14;

            v26(v27, a2);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v23 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v23 = (a2 - 1);
          }

          *a1 = v23;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  v21 = ~v16 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_30:
      if (v20 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_217E62390(uint64_t a1)
{
  type metadata accessor for Dependencies();
  v2 = *(a1 + 16);
  sub_217E70894();
  if (v3 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_217E63FD4(319, qword_27CBF2930, MEMORY[0x277CDF468]);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217E62468(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 49;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(&a1[v6 + 8] & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_217E625C4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 49;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = &a1[v9 + 8] & ~v9;

        v18(v19);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = a2 - 1;
        }

        *a1 = v17;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_217E627C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = sub_217E70474();
  v47 = *(v48 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v64 = *(a1 + 16);
  v56 = v8;
  v57 = v7;
  v65.n128_u64[0] = v7;
  v65.n128_u64[1] = v8;
  updated = type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier();
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated);
  v55 = (&v42 - v12);
  swift_getWitnessTable();
  v52 = sub_217E704A4();
  v13 = sub_217E70454();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v53 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v42 - v18;
  v20 = *v2;
  v19 = *(v2 + 8);
  v21 = *(v2 + 16);
  v22 = *(v2 + 32);
  v23 = *(v2 + 40);
  v24 = *(v2 + 48);
  v59 = *(v2 + 56);
  v50 = *(v2 + 64);
  v25 = *(v2 + 72);
  v26 = *(v2 + 80);
  v49 = v25;
  v51 = v24;
  v58 = v21;
  if (v23 == 1)
  {
    *&v64 = v20;
    *(&v64 + 1) = v19;
    v65 = v21;
    v66 = v22;

    sub_217E64140(v20, v19, v58.n128_i64[0], v58.n128_i64[1], v22, 1);
    v32 = v58;
  }

  else
  {

    v44 = v58.n128_u64[0];
    v45 = a2;
    v43 = v58.n128_i64[1];
    sub_217E64140(v20, v19, v58.n128_i64[0], v58.n128_i64[1], v22, 0);
    sub_217E70784();
    v27 = sub_217E704C4();
    v58.n128_u64[0] = v26;
    v28 = v14;
    v29 = v27;
    sub_217E70384();

    v14 = v28;
    v30 = v46;
    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E4F180(v20, v19, v44, v43, v22, 0);
    v31 = v30;
    v26 = v58.n128_u64[0];
    (*(v47 + 8))(v31, v48);
    v19 = *(&v64 + 1);
    v20 = v64;
    v32 = v65;
    v22 = v66;
  }

  v62[0].n128_u64[0] = v20;
  v62[0].n128_u64[1] = v19;
  v62[1] = v32;
  v63 = v22;
  v33 = v55;
  sub_217E62CE8(v51, v59, v50, v62, v49, v26, v55);

  v34 = v52;
  WitnessTable = swift_getWitnessTable();
  v36 = v53;
  MEMORY[0x21CEADD60](v33, v34, updated, WitnessTable);
  (*(v10 + 8))(v33, updated);
  v37 = swift_getWitnessTable();
  v60 = WitnessTable;
  v61 = v37;
  v38 = swift_getWitnessTable();
  v39 = v54;
  sub_217E4F368(v36, v13, v38);
  v40 = *(v14 + 8);
  v40(v36, v13);
  sub_217E4F368(v39, v13, v38);
  return (v40)(v39, v13);
}

__n128 sub_217E62CE8@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = *a1;
  v20 = a4[1];
  v13 = a4[2].n128_u64[0];
  v14 = *a2;
  *a7 = swift_getKeyPath();
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  v19 = *a4;
  swift_storeEnumTagMultiPayload();
  v23 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v24 = *(v12 + *MEMORY[0x277D84308] + 8);
  updated = type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier();
  *(a7 + updated[13]) = a1;
  *(a7 + updated[14]) = a2;
  *(a7 + updated[15]) = a3;
  v16 = (a7 + updated[16]);
  result = v20;
  *v16 = v19;
  v16[1] = v20;
  v16[2].n128_u64[0] = v13;
  v18 = (a7 + updated[17]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t sub_217E62E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v80 = a3;
  v77 = *(a2 - 8);
  v78 = *(v77 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v76 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = (v7 + 40);
  v8 = *(v7 + 16);
  v81 = v8;
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s11ValueReaderVMa();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a2 + 24);
  v73 = *(v67 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x28223BE20](v14);
  v65 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v19 = sub_217E704A4();
  type metadata accessor for TruthViewModifier();
  v62 = v19;
  v20 = sub_217E70454();
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x28223BE20](v20);
  v82 = &v59 - v22;
  WitnessTable = swift_getWitnessTable();
  v61 = WitnessTable;
  v24 = swift_getWitnessTable();
  v88 = WitnessTable;
  v89 = v24;
  v68 = v20;
  v69 = swift_getWitnessTable();
  v64 = *(a2 + 32);
  v84 = v20;
  v85 = v8;
  v86 = v69;
  v87 = v64;
  v70 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = *(OpaqueTypeMetadata2 - 8);
  v71 = OpaqueTypeMetadata2;
  v72 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v63 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v66 = &v59 - v30;
  v31 = *(v3 + *(a2 + 52));
  v32 = v3 + *(a2 + 68);
  v34 = *v32;
  v33 = *(v32 + 8);
  sub_217E64FC4(v16);
  v35 = *(v3 + *(a2 + 56));
  v36 = v3;
  swift_getAtKeyPath();
  sub_217E651A0(v16);
  v37 = v65;
  v34(v11);
  v38 = *(v83 + 8);
  v83 += 8;
  v60 = v38;
  v38(v11, v81);
  View.truth<A>(_:_:definesNewScope:)(v31, v37, 0, v62, v61);
  v39 = v37;
  v40 = v67;
  (*(v73 + 8))(v39, v67);
  sub_217E64FC4(v16);
  swift_getAtKeyPath();
  sub_217E651A0(v16);
  v41 = *(v3 + *(a2 + 60));
  v43 = v76;
  v42 = v77;
  (*(v77 + 16))(v76, v36, a2);
  v44 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v45 = swift_allocObject();
  v46 = v64;
  *&v47 = v64;
  *(&v47 + 1) = *v79;
  v48 = v81;
  *&v49 = v81;
  *(&v49 + 1) = v40;
  *(v45 + 16) = v49;
  *(v45 + 32) = v47;
  (*(v42 + 32))(v45 + v44, v43, a2);
  v50 = v63;
  v51 = v68;
  v52 = v69;
  v53 = v82;
  sub_217E704F4();

  v60(v11, v48);
  (*(v74 + 8))(v53, v51);
  v84 = v51;
  v85 = v48;
  v86 = v52;
  v87 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v66;
  v56 = v71;
  sub_217E4F368(v50, v71, OpaqueTypeConformance2);
  v57 = *(v72 + 8);
  v57(v50, v56);
  sub_217E4F368(v55, v56, OpaqueTypeConformance2);
  return (v57)(v55, v56);
}

uint64_t sub_217E63544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v12;
  v26 = v13;
  v27 = v14;
  *&v28 = v15;
  updated = type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier();
  v17 = a3 + updated[17];
  v18 = *(v17 + 8);
  (*v17)(a2);
  v19 = (a3 + updated[16]);
  v20 = v19[1];
  v21 = v19[2];
  v25 = *v19;
  v26 = v20;
  v27 = v21;
  v28 = *(v19 + 3);
  v22 = *(a3 + updated[13]);

  sub_217E57624(v22, v11);

  return (*(v8 + 8))(v11, a5);
}

uint64_t sub_217E636B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217E70474();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_217E63724(uint64_t a1, __n128 *a2)
{
  v47 = sub_217E70474();
  v46 = *(v47 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2[3].n128_i64[0];
  v7 = a2[1].n128_i64[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v43 - v11;
  *&v13 = a2[1].n128_u64[0];
  *(&v13 + 1) = v7;
  v51 = a2[2];
  v65 = v13;
  v66 = v51;
  v58 = v6;
  v67 = v6;
  updated = type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier();
  v56 = *(updated - 8);
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](updated);
  v54 = (&v43 - v16);
  swift_getWitnessTable();
  v50 = sub_217E704A4();
  v17 = sub_217E70454();
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v52 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v53 = &v43 - v21;
  v22 = *(v2 + 48);
  v60 = *(v2 + 56);
  v23 = *(v9 + 16);
  v24 = v2 + a2[4].n128_i32[1];
  v55 = v12;
  v23(v12, v24, AssociatedTypeWitness);
  v48 = *(v2 + a2[4].n128_i32[2]);
  v26 = *v2;
  v25 = *(v2 + 8);
  v27 = *(v2 + 16);
  v28 = *(v2 + 32);
  v29 = *(v2 + 40) == 1;
  v49 = v22;
  v59 = v27;
  if (v29)
  {
    *&v65 = v26;
    *(&v65 + 1) = v25;
    v66 = v27;
    v67 = v28;

    sub_217E64140(v26, v25, v59.n128_i64[0], v59.n128_i64[1], v28, 1);
    v33 = v59;
  }

  else
  {

    v43 = v59.n128_i64[1];
    v44 = v59.n128_u64[0];
    sub_217E64140(v26, v25, v59.n128_i64[0], v59.n128_i64[1], v28, 0);
    sub_217E70784();
    v30 = sub_217E704C4();
    v59.n128_u64[0] = updated;
    v31 = v30;
    sub_217E70384();

    updated = v59.n128_u64[0];
    v32 = v45;
    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E4F180(v26, v25, v44, v43, v28, 0);
    (*(v46 + 8))(v32, v47);
    v25 = *(&v65 + 1);
    v26 = v65;
    v33 = v66;
    v28 = v67;
  }

  v63[0].n128_u64[0] = v26;
  v63[0].n128_u64[1] = v25;
  v63[1] = v33;
  v64 = v28;
  v34 = v54;
  sub_217E63D30(v49, v60, v55, v48, v63, *(v2 + a2[4].n128_i32[3]), *(v2 + a2[4].n128_i32[3] + 8), v54);

  v35 = v50;
  WitnessTable = swift_getWitnessTable();
  v37 = v52;
  MEMORY[0x21CEADD60](v34, v35, updated, WitnessTable);
  (*(v56 + 8))(v34, updated);
  v38 = swift_getWitnessTable();
  v61 = WitnessTable;
  v62 = v38;
  v39 = swift_getWitnessTable();
  v40 = v53;
  sub_217E4F368(v37, v17, v39);
  v41 = *(v57 + 8);
  v41(v37, v17);
  sub_217E4F368(v40, v17, v39);
  return (v41)(v40, v17);
}

__n128 sub_217E63D30@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __n128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v12 = *a1;
  v13 = *a2;
  v22 = a5[1];
  v14 = a5[2].n128_u64[0];
  *a8 = swift_getKeyPath();
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  v21 = *a5;
  swift_storeEnumTagMultiPayload();
  v27 = *(v13 + *MEMORY[0x277D84DE8] + 8);
  v28 = *(v12 + *MEMORY[0x277D84308] + 8);
  updated = type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier();
  *(a8 + updated[15]) = a1;
  *(a8 + updated[16]) = a2;
  v16 = updated[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a8 + v16, a3, AssociatedTypeWitness);
  *(a8 + updated[18]) = a4;
  v18 = (a8 + updated[19]);
  result = v22;
  *v18 = v21;
  v18[1] = v22;
  v18[2].n128_u64[0] = v14;
  v20 = (a8 + updated[20]);
  *v20 = a6;
  v20[1] = a7;
  return result;
}

void sub_217E63FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Scope);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_217E64028()
{
  result = qword_27CBF2370;
  if (!qword_27CBF2370)
  {
    sub_217E63FD4(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2370);
  }

  return result;
}

uint64_t sub_217E6409C(uint64_t a1)
{
  sub_217E33B9C(0, &qword_2811B0F90, sub_217E42344, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E64140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

uint64_t _s11ValueReaderVMa()
{
  result = qword_27CBF2AC0;
  if (!qword_27CBF2AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217E64218()
{
  result = sub_217E70474();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_217E6428C(uint64_t a1)
{
  sub_217E33B9C(319, qword_27CBF2AD0, _s11ValueReaderVMa, MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for Dependencies();
    v3 = *(a1 + 24);
    sub_217E70894();
    if (v4 <= 0x3F)
    {
      sub_217E70474();
      v5 = *(a1 + 16);
      sub_217E70A24();
      if (v6 <= 0x3F)
      {
        sub_217E5DCDC();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_217E643D8(void *a1)
{
  sub_217E33B9C(319, qword_27CBF2AD0, _s11ValueReaderVMa, MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for Dependencies();
    v3 = a1[3];
    sub_217E70894();
    if (v4 <= 0x3F)
    {
      sub_217E70474();
      v5 = a1[2];
      sub_217E70A24();
      if (v6 <= 0x3F)
      {
        v7 = a1[6];
        swift_getAssociatedTypeWitness();
        if (v8 <= 0x3F)
        {
          sub_217E5DCDC();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217E64528(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_217E70474() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 48);
  v9 = *(a3 + 24);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_31;
  }

  v16 = ((((((v14 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v20 || (v21 = *(a1 + v16)) == 0)
  {
LABEL_31:
    v24 = ((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v26 = *(v11 + 48);

      return v26((((v24 + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14);
    }

    else
    {
      v25 = *v24;
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }

  v23 = v21 - 1;
  if (v17)
  {
    v23 = 0;
    LODWORD(v17) = *a1;
  }

  return v13 + (v17 | v23) + 1;
}

void sub_217E64724(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_217E70474() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a4 + 48);
  v11 = *(a4 + 24);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  if (v13 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = ((((((v14 + (((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + *(v12 + 64)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v15 >= a3)
  {
    v19 = 0;
    v20 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((((v14 + (((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 8) & ~v14) + *(v12 + 64)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v15 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v23 = ((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v13 & 0x80000000) != 0)
      {
        v25 = *(v12 + 56);

        v25((((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = (a2 - 1);
        }

        *v23 = v24;
      }

      return;
    }
  }

  if (((((((v14 + (((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 8) & ~v14) + *(v12 + 64)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (v16)
  {
    v22 = ~v15 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t sub_217E64984(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217E649C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v47 = a3;
  v5 = *(a2 - 8);
  v44 = *(v5 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v43 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s11ValueReaderVMa();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v16 = sub_217E704A4();
  v39 = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = *(a2 + 32);
  v48 = v16;
  v49 = v9;
  v50 = WitnessTable;
  v51 = v18;
  v40 = WitnessTable;
  v41 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v42 + 64);
  v21 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v37 - v24;
  sub_217E64FC4(v15);
  v26 = *(v3 + *(a2 + 64));
  swift_getAtKeyPath();
  sub_217E651A0(v15);
  v37[3] = *(v3 + *(a2 + 72));
  v27 = v43;
  (*(v5 + 16))(v43, v3, a2);
  v28 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v29 = swift_allocObject();
  v30 = *(a2 + 24);
  *(v29 + 16) = v9;
  *(v29 + 24) = v30;
  *(v29 + 32) = v18;
  *(v29 + 40) = *(a2 + 40);
  (*(v5 + 32))(v29 + v28, v27, a2);
  v31 = swift_checkMetadataState();
  v32 = v38;
  v33 = v40;
  sub_217E704F4();

  (*(v45 + 8))(v32, v9);
  v48 = v31;
  v49 = v9;
  v50 = v33;
  v51 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_217E4F368(v23, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v35 = *(v42 + 8);
  v35(v23, OpaqueTypeMetadata2);
  sub_217E4F368(v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v35)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_217E64DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v12;
  v28 = v13;
  v29 = v14;
  *&v30 = v15;
  *(&v30 + 1) = v16;
  updated = type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier();
  v18 = a3 + updated[20];
  v19 = *(v18 + 8);
  (*v18)(a2);
  v20 = (a3 + updated[19]);
  v21 = v20[1];
  v22 = v20[2];
  v27 = *v20;
  v28 = v21;
  v29 = v22;
  v30 = *(v20 + 3);
  v23 = *(a3 + updated[15]);
  v24 = updated[17];

  sub_217E57980(v23, v11, a3 + v24);

  return (*(v8 + 8))(v11, a5);
}

uint64_t sub_217E64F90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217E64FC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_217E70474();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_217E652B8(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_217E6534C(v12, a1);
  }

  v14 = *v12;
  sub_217E70784();
  v15 = sub_217E704C4();
  sub_217E70384();

  sub_217E70464();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217E651A0(uint64_t a1)
{
  v2 = _s11ValueReaderVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E651FC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v7 = *(type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier() - 8);
  v8 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_217E63544(a1, a2, v8, v5, v6);
}

uint64_t sub_217E652B8(uint64_t a1, uint64_t a2)
{
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E6534C(uint64_t a1, uint64_t a2)
{
  v4 = _s11ValueReaderVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E653B0(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v7 = *(type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier() - 8);
  v8 = v2 + ((*(v7 + 80) + 56) & ~*(v7 + 80));

  return sub_217E64DE4(a1, a2, v8, v5, v6);
}

uint64_t sub_217E6547C()
{
  v1 = sub_217E70A04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E35110(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v13 - v8;
  v10 = *(v0 + 2);
  v14 = *v0;
  v15 = v10;
  v13[1] = MEMORY[0x277D84F90];
  v11 = sub_217E709F4();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  sub_217E35110(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();

  return sub_217E70A14();
}

uint64_t sub_217E65698()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_217E656C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  sub_217E705F4();
  return sub_217E709D4();
}

uint64_t sub_217E6572C()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x21CEAE230](*v0);

  return sub_217E705F4();
}

uint64_t sub_217E65780()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  sub_217E705F4();
  return sub_217E709D4();
}

uint64_t sub_217E657E0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_217E70924();
  }
}

uint64_t sub_217E65828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v15 - v10;
  sub_217E709E4();
  MEMORY[0x21CEAE230](a3);
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_217E70594();
  v13 = sub_217E709C4();
  (*(v8 + 16))(v11, a2, AssociatedTypeWitness);
  sub_217E705D4();
  return v13;
}

uint64_t sub_217E659E8(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v5 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - v8;
  v11 = *(v3 + *(*v10 + 28));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17[3] = AssociatedTypeWitness;
  v17[4] = swift_getAssociatedConformanceWitness();
  v13 = sub_217E360A4(v17);
  (*(*(AssociatedTypeWitness - 8) + 16))(v13, a3, AssociatedTypeWitness);
  swift_beginAccess();
  sub_217E681BC(v17, v11 + 16);
  swift_endAccess();
  (*(v6 + 16))(v9, v16, v5);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217E65BC0(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v5 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - v8;
  v11 = *(v3 + *(*v10 + 28));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17[3] = AssociatedTypeWitness;
  v17[4] = swift_getAssociatedConformanceWitness();
  v13 = sub_217E360A4(v17);
  (*(*(AssociatedTypeWitness - 8) + 16))(v13, a3, AssociatedTypeWitness);
  swift_beginAccess();
  sub_217E681BC(v17, v11 + 16);
  swift_endAccess();
  (*(v6 + 16))(v9, v16, v5);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217E65D98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_217E70794();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11];
  swift_beginAccess();
  sub_217E6823C(v3 + 16, v18);
  sub_217E33138(0, &qword_2811B0DF0, sub_217E42CEC);
  v13 = swift_dynamicCast();
  v14 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v13)
  {
    v15 = *(AssociatedTypeWitness - 8);
    v14(v12, 0, 1, AssociatedTypeWitness);
    return (*(v15 + 32))(a3, v12, AssociatedTypeWitness);
  }

  else
  {
    v14(v12, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v12, v8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 24))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_217E66014(void *a1, uint64_t a2)
{
  v4 = (*a1 + *MEMORY[0x277D84DE8]);
  v5 = v4[1];
  v6 = *(v2 + *(*v4 + 28));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v10[4] = swift_getAssociatedConformanceWitness();
  v8 = sub_217E360A4(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(v8, a2, AssociatedTypeWitness);
  swift_beginAccess();
  sub_217E681BC(v10, v6 + 16);
  swift_endAccess();
  return swift_getAtKeyPath();
}

uint64_t Dependencies.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(type metadata accessor for Dependencies() + 24);
  v10 = v3[1];
  return sub_217E6AF4C(v3 + v8, &v10, a1, a2, a3);
}

{
  v4 = v3;
  v19 = a3;
  v7 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v18 - v11;
  v13 = *v3;
  v14 = type metadata accessor for Dependencies();
  v15 = *(v3 + *(v14 + 28));
  sub_217E65D98(v4, a2, v12);
  v16 = *(v14 + 24);
  v20 = *(v4 + 8);
  sub_217E6B000(v12, v4 + v16, &v20, a1, a2, v19);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t Dependencies.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[2] = a3;
  v14[3] = a4;
  v9 = *v4;
  v8 = v4[1];
  v14[4] = a1;
  v15 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for StaticTruth();
  WitnessTable = swift_getWitnessTable();
  sub_217E6A4E8(sub_217E66420, v14, a3, &v15, v11, a3, WitnessTable, a4);
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

{
  v5 = v4;
  v9 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21[-v14];
  v16 = *v4;
  v22 = a3;
  v23 = a4;
  v24 = a1;
  v17 = *(v4 + *(type metadata accessor for Dependencies() + 28));
  sub_217E65D98(v5, a4, v15);
  v25 = *(v5 + 8);
  v18 = type metadata accessor for StaticTruth();
  WitnessTable = swift_getWitnessTable();
  sub_217E6A730(sub_217E66CDC, v21, a3, v15, &v25, v18, a3, WitnessTable, a4);
  (*(v12 + 8))(v15, v11);
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

uint64_t sub_217E66334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, AssociatedTypeWitness);
  return StaticTruth.init(state:)(v7, AssociatedTypeWitness, a2);
}

uint64_t sub_217E66420@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_217E66334(v1[4], a1);
}

void (*Dependencies.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v10[6] = v14;
  v10[7] = *v4;
  v16 = *(type metadata accessor for Dependencies() + 24);
  v18 = v4[1];
  sub_217E6AF4C(v4 + v16, &v18, a3, a4, v15);
  return sub_217E665D0;
}

{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x70uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v5;
  *v10 = a3;
  v27 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[3] = AssociatedTypeWitness;
  v28 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  v18 = swift_checkMetadataState();
  v11[7] = v18;
  v19 = *(v18 - 8);
  v11[8] = v19;
  v20 = *(v19 + 64);
  if (v9)
  {
    v11[9] = swift_coroFrameAlloc();
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v11[9] = malloc(*(v19 + 64));
    v21 = malloc(v20);
  }

  v22 = v21;
  v11[10] = v21;
  v11[11] = *v5;
  v23 = type metadata accessor for Dependencies();
  v11[12] = *(v5 + *(v23 + 28));
  sub_217E65D98(v5, a4, v17);
  v24 = *(v23 + 24);
  v29 = v5[1];
  sub_217E6B000(v17, v5 + v24, &v29, a3, a4, v22);
  v25 = *(v14 + 8);
  v25(v17, v28);
  v11[13] = v25;
  return sub_217E66FC8;
}

void sub_217E665D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[6];
  v3 = (*a1)[7];
  v6 = (*a1)[4];
  v5 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    v11 = (*(v6 + 16))((*a1)[5], v4, v7);
    v21 = &v21;
    MEMORY[0x28223BE20](v11);
    v18 = v10;
    v19 = v9;
    v20 = v5;
    v22 = *(v8 + 8);
    v12 = type metadata accessor for StaticTruth();
    WitnessTable = swift_getWitnessTable();
    sub_217E6A4E8(sub_217E682C4, v17, v10, &v22, v12, v10, WitnessTable, v9);
    v14 = *(v6 + 8);
    v14(v5, v7);
    v14(v4, v7);
  }

  else
  {
    v21 = &v21;
    MEMORY[0x28223BE20](a1);
    v18 = v10;
    v19 = v9;
    v20 = v4;
    v22 = *(v8 + 8);
    v15 = type metadata accessor for StaticTruth();
    v16 = swift_getWitnessTable();
    sub_217E6A4E8(sub_217E682C4, v17, v10, &v22, v15, v10, v16, v9);
    (*(v6 + 8))(v4, v7);
  }

  free(v4);
  free(v5);
  free(v2);
}

uint64_t sub_217E66BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, AssociatedTypeWitness);
  return StaticTruth.init(state:)(v9, AssociatedTypeWitness, a3);
}

void sub_217E66FC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[12];
  v3 = (*a1)[13];
  v5 = (*a1)[10];
  v32 = (*a1)[11];
  v33 = v3;
  v34 = v5;
  v6 = v2[8];
  v7 = v2[9];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[5];
  v12 = v2[2];
  v11 = v2[3];
  v30 = v2[4];
  v31 = v11;
  v14 = *v2;
  v13 = v2[1];
  if (a2)
  {
    v15 = (*(v6 + 16))(v7, v34, v9);
    v28 = &v28;
    MEMORY[0x28223BE20](v15);
    v29 = v8;
    v25 = v14;
    v26 = v13;
    v27 = v7;
    sub_217E65D98(v12, v13, v10);
    v35 = *(v12 + 8);
    v16 = type metadata accessor for StaticTruth();
    WitnessTable = swift_getWitnessTable();
    v22 = v13;
    v18 = v7;
    v8 = v29;
    sub_217E6A730(sub_217E682C8, v24, v14, v10, &v35, v16, v14, WitnessTable, v22);
    v33(v10, v31);
    v19 = *(v6 + 8);
    v19(v7, v9);
    v19(v34, v9);
  }

  else
  {
    v28 = &v28;
    MEMORY[0x28223BE20](a1);
    v29 = v7;
    v25 = v14;
    v26 = v13;
    v27 = v34;
    sub_217E65D98(v12, v13, v10);
    v35 = *(v12 + 8);
    v20 = type metadata accessor for StaticTruth();
    v21 = swift_getWitnessTable();
    v23 = v13;
    v18 = v29;
    sub_217E6A730(sub_217E682C8, v24, v14, v10, &v35, v20, v14, v21, v23);
    v33(v10, v31);
    (*(v6 + 8))(v34, v9);
  }

  free(v34);
  free(v18);
  free(v8);
  free(v10);
  free(v2);
}

uint64_t Dependencies.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v10 = *v5;
  v20 = v5[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for StaticTruth();
  WitnessTable = swift_getWitnessTable();
  sub_217E6A590(sub_217E673BC, v15, a3, &v20, v12, a3, WitnessTable, a4, a5);
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

{
  v6 = v5;
  v24 = a1;
  v11 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v6;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a1;
  v19 = *(v6 + *(type metadata accessor for Dependencies() + 28));
  sub_217E65D98(v6, a4, v17);
  v30 = v6[1];
  v20 = type metadata accessor for StaticTruth();
  WitnessTable = swift_getWitnessTable();
  sub_217E6A7E0(sub_217E67BC4, v25, a3, v17, &v30, v20, a3, WitnessTable, a4, a5);
  (*(v14 + 8))(v17, v13);
  return (*(*(AssociatedTypeWitness - 8) + 8))(v24, AssociatedTypeWitness);
}

uint64_t sub_217E673BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_217E66334(v1[5], a1);
}

void (*Dependencies.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x48uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[2] = a5;
  v11[3] = v5;
  *v11 = a3;
  v11[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12[4] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v12[5] = v14;
  v15 = *(v14 + 64);
  if (v10)
  {
    v12[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v12[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v12[7] = v16;
  v12[8] = *v5;
  v18 = *(type metadata accessor for Dependencies() + 24);
  v20 = v5[1];
  sub_217E3ECCC(v5 + v18, &v20, a3, a4, a5, v17);
  return sub_217E67574;
}

{
  v6 = v5;
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x78uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v6;
  *v12 = a3;
  v12[1] = a4;
  v29 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[4] = AssociatedTypeWitness;
  v30 = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = v15;
  v13[5] = v15;
  v17 = *(v15 + 64);
  if (v11)
  {
    v13[6] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[6] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v19 = v18;
  v13[7] = v18;
  v20 = swift_checkMetadataState();
  v13[8] = v20;
  v21 = *(v20 - 8);
  v13[9] = v21;
  v22 = *(v21 + 64);
  if (v11)
  {
    v13[10] = swift_coroFrameAlloc();
    v23 = swift_coroFrameAlloc();
  }

  else
  {
    v13[10] = malloc(*(v21 + 64));
    v23 = malloc(v22);
  }

  v24 = v23;
  v13[11] = v23;
  v13[12] = *v6;
  v25 = type metadata accessor for Dependencies();
  v13[13] = *(v6 + *(v25 + 28));
  sub_217E65D98(v6, a4, v19);
  v26 = *(v25 + 24);
  v31 = v6[1];
  sub_217E6B244(v19, v6 + v26, &v31, a3, a4, v24);
  v27 = *(v16 + 8);
  v27(v19, v30);
  v13[14] = v27;
  return sub_217E67EB8;
}

void sub_217E67574(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v27 = (*a1)[8];
  v5 = v2[5];
  v4 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  v9 = v2[1];
  v8 = v2[2];
  v10 = *v2;
  if (a2)
  {
    v11 = (*(v5 + 16))(v2[6], v3, v2[4]);
    v26 = &v25;
    MEMORY[0x28223BE20](v11);
    v21 = v10;
    v22 = v9;
    v23 = v8;
    v24 = v4;
    v28 = *(v7 + 8);
    v12 = type metadata accessor for StaticTruth();
    WitnessTable = swift_getWitnessTable();
    v18 = v8;
    v14 = v4;
    sub_217E6A590(sub_217E682BC, v20, v10, &v28, v12, v10, WitnessTable, v9, v18);
    v15 = *(v5 + 8);
    v15(v4, v6);
    v15(v3, v6);
  }

  else
  {
    v26 = &v25;
    MEMORY[0x28223BE20](a1);
    v21 = v10;
    v22 = v9;
    v23 = v8;
    v24 = v3;
    v28 = *(v7 + 8);
    v16 = type metadata accessor for StaticTruth();
    v17 = swift_getWitnessTable();
    v19 = v8;
    v14 = v4;
    sub_217E6A590(sub_217E682BC, v20, v10, &v28, v16, v10, v17, v9, v19);
    (*(v5 + 8))(v3, v6);
  }

  free(v3);
  free(v14);
  free(v2);
}

uint64_t sub_217E67BC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return sub_217E66BF0(v1[5], v1[3], a1);
}

void sub_217E67EB8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[13];
  v3 = (*a1)[14];
  v5 = (*a1)[11];
  v33 = (*a1)[12];
  v34 = v3;
  v6 = v2[9];
  v7 = v2[10];
  v8 = v2[8];
  v35 = v2[7];
  v9 = v2[6];
  v11 = v2[3];
  v10 = v2[4];
  v31 = v2[5];
  v32 = v10;
  v12 = v2[1];
  v13 = v2[2];
  v14 = *v2;
  v36 = v7;
  v37 = v5;
  if (a2)
  {
    v15 = (*(v6 + 16))(v7, v37, v8);
    v30 = &v29;
    MEMORY[0x28223BE20](v15);
    v25 = v14;
    v26 = v12;
    v27 = v13;
    v28 = v36;
    sub_217E65D98(v11, v12, v9);
    v38 = *(v11 + 8);
    v16 = type metadata accessor for StaticTruth();
    WitnessTable = swift_getWitnessTable();
    v22 = v12;
    v18 = v36;
    sub_217E6A7E0(sub_217E682C0, v24, v14, v9, &v38, v16, v14, WitnessTable, v22, v13);
    v34(v9, v32);
    v19 = *(v6 + 8);
    v19(v18, v8);
    v19(v37, v8);
  }

  else
  {
    v30 = &v29;
    MEMORY[0x28223BE20](a1);
    v25 = v14;
    v26 = v12;
    v27 = v13;
    v28 = v37;
    sub_217E65D98(v11, v12, v9);
    v38 = *(v11 + 8);
    v20 = type metadata accessor for StaticTruth();
    v21 = swift_getWitnessTable();
    v23 = v12;
    v18 = v36;
    sub_217E6A7E0(sub_217E682C0, v24, v14, v9, &v38, v20, v14, v21, v23, v13);
    v34(v9, v32);
    (*(v6 + 8))(v37, v8);
  }

  free(v37);
  free(v18);
  free(v35);
  free(v9);
  free(v2);
}

uint64_t sub_217E681BC(uint64_t a1, uint64_t a2)
{
  sub_217E33138(0, &qword_2811B0DF0, sub_217E42CEC);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E6823C(uint64_t a1, uint64_t a2)
{
  sub_217E33138(0, &qword_2811B0DF0, sub_217E42CEC);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E682CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  sub_217E706E4();
  swift_getFunctionTypeMetadataGlobalActor();
  return sub_217E705D4();
}

uint64_t sub_217E68390()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static AmbiguousDependencyKey.source(in:disambiguation:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v5 + 16))(a1, v5);
  a3[3] = type metadata accessor for StaticTruth();
  a3[4] = swift_getWitnessTable();
  v10 = sub_217E360A4(a3);
  return StaticTruth.init(state:)(v9, AssociatedTypeWitness, v10);
}

uint64_t View.definesScope<A>(of:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v12 = a1;
  KeyPath = swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v6 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v7 = type metadata accessor for ScopedTruthViewModifier();

  MEMORY[0x21CEADD60](&v12, a2, v7, a3);
  v8 = KeyPath;
  v9 = v14;
  v10 = v15;
  LOBYTE(v7) = v16;

  return sub_217E4F180(v8, v9, *(&v9 + 1), v10, *(&v10 + 1), v7);
}

uint64_t View.tagScope(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  *v9 = swift_getKeyPath();
  memset(&v9[8], 0, 33);
  *&v10 = a1;
  *(&v10 + 1) = a2;

  MEMORY[0x21CEADD60](v9, a3, &type metadata for TaggedScopeViewModifier, a4);
  v12[0] = *v9;
  v12[1] = *&v9[16];
  v12[2] = *&v9[32];
  v12[3] = v10;
  return sub_217E686D4(v12);
}

unint64_t sub_217E68704()
{
  result = qword_27CBF2C58[0];
  if (!qword_27CBF2C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF2C58);
  }

  return result;
}

__n128 sub_217E68758(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217E6876C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E687B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E68814()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_217E68850(uint64_t a1, uint64_t a2)
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

uint64_t sub_217E6886C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_217E688B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E68920(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E691D0(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  v4 = sub_217E70454();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v12 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v12;
  v25[2] = *(v2 + 32);
  v26 = *(v2 + 48);
  swift_getKeyPath();
  v13 = *(a2 + 16);
  sub_217E68B88(v25, v23);
  v20 = v23[0];
  v21 = v23[1];
  v22 = v24;
  WitnessTable = swift_getWitnessTable();
  sub_217E704D4();

  v15 = sub_217E64028();
  v19[0] = WitnessTable;
  v19[1] = v15;
  v16 = swift_getWitnessTable();
  sub_217E4F368(v9, v4, v16);
  v17 = *(v5 + 8);
  v17(v9, v4);
  sub_217E4F368(v11, v4, v16);
  return (v17)(v11, v4);
}

uint64_t sub_217E68B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217E70474();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 8);
  *&v37[9] = *(a1 + 33);
  v10 = *(a1 + 24);
  v36 = v9;
  *v37 = v10;
  v11 = v9;
  if (v37[24] == 1)
  {
    v12 = *&v37[8];
    v13 = *&v37[16];
    v14 = *(&v36 + 1);
    v15 = *v37;
    v33 = __PAIR128__(*(&v36 + 1), v9);
    v34 = *v37;
    v35 = *&v37[8];
    sub_217E69150(&v36, &v30);
  }

  else
  {
    sub_217E69150(&v36, &v30);
    sub_217E70784();
    v16 = sub_217E704C4();
    sub_217E70384();

    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E69224(&v36);
    (*(v5 + 8))(v8, v4);
    v14 = *(&v33 + 1);
    v11 = v33;
    v15 = v34;
    v13 = *(&v35 + 1);
    v12 = v35;
  }

  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  type metadata accessor for ScopedTruthViewModifier();
  v17 = sub_217E70A34();
  MEMORY[0x21CEADE80](v17);

  MEMORY[0x21CEADE80](8250, 0xE200000000000000);
  v18 = *a1;
  v25 = v18;
  type metadata accessor for Dependencies();
  sub_217E70A24();
  sub_217E70914();
  v25 = v11;
  v26 = v14;
  v27 = v15;
  v28 = v12;
  v29 = v13;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  Scope.subscope(dependencyContainer:tag:)(v23, v30, *(&v30 + 1), &v30);

  sub_217E6409C(v23);

  v19 = v30;
  v20 = v31;
  v21 = v32;
  v33 = v30;
  v34 = v31;
  v35 = v32;
  Scope.definesScope<A>(of:)(v18, &v30);

  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_217E68E5C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_217E70474();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26[9] = *(a1 + 25);
  v9 = a1[1];
  v25 = *a1;
  *v26 = v9;
  v10 = v25;
  if (v26[24] == 1)
  {
    v11 = *&v26[8];
    v12 = *&v26[16];
    v13 = *(&v25 + 1);
    v14 = *v26;
    v22 = v25;
    v23 = *v26;
    v24 = *&v26[8];
    sub_217E69150(&v25, v21);
  }

  else
  {
    sub_217E69150(&v25, v21);
    sub_217E70784();
    v15 = sub_217E704C4();
    sub_217E70384();

    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E69224(&v25);
    (*(v5 + 8))(v8, v4);
    v13 = *(&v22 + 1);
    v10 = v22;
    v14 = v23;
    v12 = *(&v24 + 1);
    v11 = v24;
  }

  v16 = *(a1 + 6);
  v17 = *(a1 + 7);
  v21[0] = v10;
  v21[1] = v13;
  v21[2] = v14;
  v21[3] = v11;
  v21[4] = v12;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  Scope.subscope(dependencyContainer:tag:)(v19, v16, v17, a2);
  sub_217E6409C(v19);
}

__n128 sub_217E69040@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v6 = v2[3];
  v16[2] = v2[2];
  v16[3] = v6;
  KeyPath = swift_getKeyPath();
  sub_217E68E5C(v16, v14);
  v13 = v14[1];
  v8 = v15;
  sub_217E6929C();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  sub_217E692F8();
  v11 = a2 + *(v10 + 36);
  *v11 = KeyPath;
  result = v13;
  *(v11 + 8) = v14[0];
  *(v11 + 24) = v13;
  *(v11 + 40) = v8;
  return result;
}

uint64_t sub_217E69150(uint64_t a1, uint64_t a2)
{
  sub_217E691D0(0, qword_27CBF2930, MEMORY[0x277CDF468]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217E691D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Scope);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_217E69224(uint64_t a1)
{
  sub_217E691D0(0, qword_27CBF2930, MEMORY[0x277CDF468]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217E6929C()
{
  if (!qword_27CBF2CE0)
  {
    sub_217E68704();
    v0 = sub_217E704A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2CE0);
    }
  }
}

void sub_217E692F8()
{
  if (!qword_27CBF2CE8)
  {
    sub_217E6929C();
    sub_217E691D0(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
    v0 = sub_217E70454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2CE8);
    }
  }
}

unint64_t sub_217E6937C()
{
  result = qword_27CBF2CF0;
  if (!qword_27CBF2CF0)
  {
    sub_217E692F8();
    sub_217E693FC();
    sub_217E64028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2CF0);
  }

  return result;
}

unint64_t sub_217E693FC()
{
  result = qword_27CBF2CF8;
  if (!qword_27CBF2CF8)
  {
    sub_217E6929C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2CF8);
  }

  return result;
}

uint64_t sub_217E6946C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  return sub_217E6955C();
}

uint64_t sub_217E69478(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  swift_beginAccess();
  (*(*(v4 + 88) + 24))(a2, *(v4 + 80));
  return swift_endAccess();
}

uint64_t sub_217E6955C()
{
  sub_217E70814();

  swift_getAssociatedTypeWitness();
  v0 = sub_217E70A34();
  MEMORY[0x21CEADE80](v0);

  MEMORY[0x21CEADE80](0x656C646E6148202CLL, 0xEA00000000003D72);
  v1 = sub_217E70A34();
  MEMORY[0x21CEADE80](v1);

  return 0x3D646E616D6D6F43;
}

uint64_t ScopeReader.recordAccess<A>(to:)(void *a1)
{
  v2 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - v5;
  v7 = v1 + *(type metadata accessor for ScopeReader(0) + 20);
  sub_217E3ECA8();
  return (*(v3 + 8))(v6, v2);
}

void KeyedDependencyContainer.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F98];
  a1[1] = v1;
}

uint64_t KeyedDependencyContainer.registerDependency<A>(_:onResolve:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = type metadata accessor for ControlledDependency();
  v16[4] = swift_getWitnessTable();
  v8 = swift_allocObject();
  v16[0] = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  sub_217E4E36C(a3);
  v9 = sub_217E36EF4();
  v11 = v10;
  v13 = v12;
  sub_217E6A390(v16, v15, sub_217E69940);
  sub_217E572CC(v15, v9, v11, v13);
  return sub_217E699FC(v16);
}

void sub_217E69940()
{
  if (!qword_27CBF2610)
  {
    sub_217E69998();
    v0 = sub_217E70794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2610);
    }
  }
}

unint64_t sub_217E69998()
{
  result = qword_27CBF2608;
  if (!qword_27CBF2608)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CBF2608);
  }

  return result;
}

uint64_t sub_217E699FC(uint64_t a1)
{
  sub_217E69940();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KeyedDependencyContainer.registerDependency<A, B>(_:disambiguation:onResolve:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = *(a8 + 8);
  v15 = sub_217E705A4();
  v42[3] = type metadata accessor for ControlledDependency();
  v42[4] = swift_getWitnessTable();
  v16 = swift_allocObject();
  v42[0] = v16;
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a4;
  v16[5] = a5;
  v17 = *(v8 + 8);

  sub_217E4E36C(a4);
  sub_217E36EF4();
  if (*(v17 + 16) && (v19 = sub_217E3722C(v18), (v20 & 1) != 0))
  {
    v21 = *(*(v17 + 56) + 8 * v19);
  }

  else
  {
    v21 = sub_217E6A100(MEMORY[0x277D84F90]);
  }

  sub_217E573C0(v42, v15);
  v22 = v21;
  v23 = sub_217E36EF4();
  v25 = v24;
  v27 = v26;
  v28 = *(v9 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v9 + 8);
  v32 = sub_217E3722C(v27);
  v33 = v30[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(a2) = v31;
  if (v30[3] >= v35)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v9 + 8) = v30;
      if (v31)
      {
        goto LABEL_13;
      }

LABEL_12:
      v38 = sub_217E6A100(MEMORY[0x277D84F90]);
      sub_217E4921C(v32, v23, v25, v27, v38, v30);

      goto LABEL_13;
    }

LABEL_17:
    sub_217E5A1D0();
    *(v9 + 8) = v30;
    if (a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_217E5DB60(v35, isUniquelyReferenced_nonNull_native);
  v36 = sub_217E3722C(v27);
  if ((a2 & 1) != (v37 & 1))
  {
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v32 = v36;
  *(v9 + 8) = v30;
  if ((a2 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v39 = v30[7];
  v40 = *(v39 + 8 * v32);
  *(v39 + 8 * v32) = v22;
}

uint64_t sub_217E69CBC()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return swift_deallocObject();
}

uint64_t KeyedDependencyContainer.resolveDependency<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_217E36EF4();
  if (*(v5 + 16))
  {
    v7 = sub_217E3722C(v6);
    v9 = v8;

    if (v9)
    {
      sub_217E33AD0(*(v5 + 56) + 40 * v7, v13);
      sub_217E69998();
      swift_getExtendedExistentialTypeMetadata_unique();
      if (swift_dynamicCast())
      {
        if (v15)
        {
          sub_217E33C00(&v14, v16);
          v10 = v17;
          v11 = v18;
          sub_217E37F28(v16, v17);
          (*(v11 + 16))(v10, v11);
          (*(*(a1 - 8) + 56))(a2, 0, 1, a1);
          return sub_217E364B4(v16);
        }
      }
    }
  }

  else
  {
  }

  return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
}

uint64_t KeyedDependencyContainer.resolveDependency<A, B>(_:disambiguation:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 8);
  sub_217E36EF4();
  if (!*(v7 + 16))
  {
    goto LABEL_8;
  }

  v9 = sub_217E3722C(v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return (*(*(a1 - 8) + 56))(a3, 1, 1, a1);
  }

  v12 = *(*(v7 + 56) + 8 * v9);
  v13 = *(a2 + 8);

  v14 = sub_217E705A4();
  if (!*(v12 + 16) || (v15 = sub_217E58E60(v14), (v16 & 1) == 0))
  {
LABEL_8:

    return (*(*(a1 - 8) + 56))(a3, 1, 1, a1);
  }

  sub_217E33AD0(*(v12 + 56) + 40 * v15, v20);

  sub_217E69998();
  swift_getExtendedExistentialTypeMetadata_unique();
  if ((swift_dynamicCast() & 1) != 0 && v22)
  {
    sub_217E33C00(&v21, v23);
    v17 = v24;
    v18 = v25;
    sub_217E37F28(v23, v24);
    (*(v18 + 16))(v17, v18);
    (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
    return sub_217E364B4(v23);
  }

  return (*(*(a1 - 8) + 56))(a3, 1, 1, a1);
}

uint64_t sub_217E6A09C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  result = a1();
  if (a2)
  {
    return a2(a3);
  }

  return result;
}

uint64_t sub_217E6A0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  v5 = *(a1 + 16);
  return sub_217E6A09C(*v2, *(v2 + 16), a2);
}

unint64_t sub_217E6A100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_217E6A328();
    v3 = sub_217E708D4();
    for (i = a1 + 32; ; i += 48)
    {
      sub_217E6A390(i, &v11, sub_217E6A3F8);
      v5 = v11;
      result = sub_217E58E60(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_217E33C00(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_217E6A240()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E6A27C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_217E6A294(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_217E6A2A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_217E6A2E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_217E6A328()
{
  if (!qword_27CBF2618)
  {
    sub_217E69998();
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2618);
    }
  }
}

uint64_t sub_217E6A390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_217E6A3F8()
{
  if (!qword_27CBF2E00[0])
  {
    sub_217E69998();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_27CBF2E00);
    }
  }
}

uint64_t sub_217E6A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = a1;
  v15[7] = a2;
  v11 = sub_217E40620(a6, a6, a8);
  v16 = v10;
  sub_217E6BFE8(sub_217E5C120, v15, v11, v12, v13, &v16, a5, a7);
}

uint64_t sub_217E6A590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v26[-v18];
  v20 = *a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a1;
  v33 = a2;
  (*(a8 + 16))(a6, a8);
  v21 = sub_217E40620(a6, a6, a8);
  v34 = v20;
  sub_217E6C250(sub_217E5C124, v26, v19, v21, v22, v23, &v34, a5, a7, a9);

  return (*(v16 + 8))(v19, AssociatedTypeWitness);
}

uint64_t sub_217E6A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *a5;
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a1;
  v16[7] = a2;
  v12 = sub_217E65828(a7, a4, a7, a9);
  v17 = v11;
  sub_217E6BFE8(sub_217E5B3B0, v16, v12, v13, v14, &v17, a6, a8);
}

uint64_t sub_217E6A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v25 - v18;
  v20 = *a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a1;
  v35 = a2;
  (*(*(a9 + 8) + 16))(a7);
  v21 = sub_217E65828(a7, v26, a7, a9);
  v36 = v20;
  sub_217E6C250(sub_217E5B3D8, v28, v19, v21, v22, v23, &v36, a6, a8, a10);

  return (*(v16 + 8))(v19, AssociatedTypeWitness);
}

uint64_t sub_217E6A984(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 144);
  v22 = v9;
  *(v4 + 144) = 0x8000000000000000;
  v11 = sub_217E33C18(v6);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v10;
  if (v9[3] >= v14)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 144) = v9;
      if (v10)
      {
LABEL_11:
        v17 = v9[7];

        v18 = *(v17 + 8 * v11);
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v17 + 8 * v11);
        *(v17 + 8 * v11) = 0x8000000000000000;
        sub_217E431FC(v5, sub_217E6CFFC, 0, v19, &v22);

        v20 = *(v17 + 8 * v11);
        *(v17 + 8 * v11) = v22;

        return swift_endAccess();
      }

LABEL_8:
      if (qword_2811B0B08 != -1)
      {
        swift_once();
      }

      sub_217E36EB0(v11, v6, qword_2811B0B10, v9);

      goto LABEL_11;
    }

LABEL_13:
    sub_217E59CD0();
    v9 = v22;
    *(v4 + 144) = v22;
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_217E5D35C(v14, isUniquelyReferenced_nonNull_native);
  v9 = v22;
  v15 = sub_217E33C18(v6);
  if ((v3 & 1) == (v16 & 1))
  {
    v11 = v15;
    *(v4 + 144) = v22;
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  result = sub_217E70944();
  __break(1u);
  return result;
}

uint64_t sub_217E6ABB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v10 = *a2;
  swift_beginAccess();
  a5(a1, &v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_217E6AC34(void *a1)
{
  v3 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v28[-v7];
  v10 = *v9;
  v11 = (*(*(*v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v13 = &v28[-v12];
  v15 = *v14;
  swift_beginAccess();
  if (*(v1[20] + 16) || *(v1[19] + 16))
  {
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = a1;
    swift_beginAccess();
    v18 = v1[21];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[21] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_217E5CE64(0, v18[2] + 1, 1, v18);
      v1[21] = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_217E5CE64((v20 > 1), v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    v22 = &v18[2 * v21];
    v22[4] = sub_217E6D2F0;
    v22[5] = v17;
    v1[21] = v18;
    swift_endAccess();
  }

  else
  {
    v24 = *(v10 + 24);
    v25 = type metadata accessor for ScopeGraphElement.ID(0);
    (*(*(v25 - 8) + 56))(&v13[v24], 1, 1, v25);
    v26 = *(v10 + 28);
    type metadata accessor for Dependencies.AmbiguousResolutionContext();
    v27 = swift_allocObject();
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0;
    *&v13[v26] = v27;
    *v13 = v1;
    *(v13 + 1) = v15;

    sub_217E3ECA8();
    (*(v4 + 8))(v8, v3);
    return sub_217E365C0(v13, type metadata accessor for Dependencies);
  }
}

uint64_t sub_217E6AF4C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v13 = *a2;
  nullsub_1(a3, a4, a2, a3);
  v9 = type metadata accessor for NonComparableDependencyKeyOperations();
  WitnessTable = swift_getWitnessTable();
  return sub_217E3EE68(a1, &v13, v11, a3, v9, a4, WitnessTable, a5);
}

uint64_t sub_217E6B000@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = a3;
  v22 = a1;
  v23 = a6;
  v24 = a2;
  v8 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v21 - v12;
  v14 = type metadata accessor for NonComparableAmbiguousDependencyKeyOperations();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  v25 = *v21;
  (*(v10 + 16))(v13, v22, AssociatedTypeWitness);
  sub_217E5EEB8(v13, a5, v18);
  WitnessTable = swift_getWitnessTable();
  sub_217E3EE68(v24, &v25, v18, a4, v14, v8, WitnessTable, v23);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_217E6B244@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = a3;
  v22 = a1;
  v24 = a6;
  v25 = a2;
  v23 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v20 - v11;
  v13 = type metadata accessor for EquatableAmbiguousDependencyKeyOperations();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v26 = *v21;
  (*(v9 + 16))(v12, v22, AssociatedTypeWitness);
  sub_217E5EEB8(v12, a5, v17);
  WitnessTable = swift_getWitnessTable();
  sub_217E3EE68(v25, &v26, v17, a4, v13, v23, WitnessTable, v24);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_217E6B494@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a5;
  v10 = *(a4 + 8);
  *&v42[0] = swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for ScopeGraphElement.ID(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_217E70794();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v28 - v14);
  v16 = *a2;
  swift_beginAccess();
  v17 = v5[5];
  v18 = v5[7];
  v39 = v5[6];
  v40 = v18;
  v19 = v5[7];
  v41 = v5[8];
  v20 = v5[5];
  v38[0] = v5[4];
  v38[1] = v20;
  v32 = v39;
  v33 = v19;
  v34 = v5[8];
  v30 = v38[0];
  v31 = v17;
  v29 = v16;
  sub_217E3438C(v38, v42);
  sub_217E52684(a1, &v29, a3, a4, v15);
  v42[2] = v32;
  v42[3] = v33;
  v42[4] = v34;
  v42[0] = v30;
  v42[1] = v31;
  sub_217E347DC(v42);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
  {
    v21 = swift_checkMetadataState();
    return (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  }

  else
  {
    v23 = *(TupleTypeMetadata2 + 48);
    sub_217E33C00(v15, v35);
    sub_217E365C0(v15 + v23, type metadata accessor for ScopeGraphElement.ID);
    v24 = v36;
    v25 = v37;
    sub_217E37F28(v35, v36);
    v26 = v28;
    (*(v25 + 24))(v24, v25);
    v27 = swift_checkMetadataState();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    return sub_217E364B4(v35);
  }
}

void *sub_217E6B7A4()
{
  v1 = v0;
  v2 = *v0;
  sub_217E35174(0, qword_27CBF23E0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  if ([objc_opt_self() isMainThread])
  {
    sub_217E706E4();
    sub_217E54CF8(sub_217E6CA50, v0);
  }

  else
  {
    v7 = sub_217E70704();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[2];
    v9 = v0[3];
    sub_217E706E4();

    v10 = sub_217E706D4();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v8;
    v11[5] = v9;
    v11[6] = v2;
    sub_217E55E28(0, 0, v6, &unk_217E73248, v11);
  }

  v13 = v1[2];

  return v1;
}

uint64_t sub_217E6B994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_217E706E4();
  v5[4] = sub_217E706D4();
  v7 = sub_217E706C4();

  return MEMORY[0x2822009F8](sub_217E6BA2C, v7, v6);
}

uint64_t sub_217E6BA2C()
{
  v7 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v6 = v2;
  sub_217E6D04C(v3, &v6);
  v4 = v0[1];

  return v4();
}

uint64_t sub_217E6BAA8()
{
  sub_217E6B7A4();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_217E6BADC(uint64_t a1)
{
  v3 = sub_217E70A04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E35174(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v17 - v11;
  v13 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_217E35350(v1, v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Storage.ExplicitUpdate);
  v17[1] = MEMORY[0x277D84F90];
  v15 = sub_217E709F4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  (*(v4 + 104))(v7, *MEMORY[0x277D84C38], v3);
  sub_217E35174(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();
  return sub_217E70A14();
}

uint64_t sub_217E6BD40(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_217E6BD78(uint64_t a1)
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_217E705F4();
  return sub_217E709D4();
}

uint64_t sub_217E6BE20(uint64_t a1, uint64_t a2)
{
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_217E705F4();
}

uint64_t sub_217E6BEBC(uint64_t a1, uint64_t a2)
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_217E705F4();
  return sub_217E709D4();
}

uint64_t sub_217E6BF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_217E70924();
}

uint64_t sub_217E6BFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v33 = a2;
  v34 = a8;
  v31 = a3;
  v32 = a1;
  v35 = *(a7 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ScopeGraphElement.ID(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  v42 = *a6;
  v23 = v42;
  swift_beginAccess();
  v24 = a3;
  v25 = a4;
  v26 = a4;
  v27 = a5;
  sub_217E51AF0(v24, v25, a5, &v42, v22);
  swift_endAccess();
  v28 = v34;
  v37 = a7;
  v38 = v34;
  v39 = v32;
  v40 = v33;
  v41[0] = v23;
  sub_217E351D8(v41, v22, sub_217E6D324, v36, v15);
  v42 = v23;
  swift_beginAccess();
  sub_217E51DE8(v15, v31, v26, v27, &v42, v28, v20);
  swift_endAccess();
  sub_217E365C0(v20, type metadata accessor for ScopeGraphElement.ID);
  v41[0] = v23;
  sub_217E3A464(v22, v41, 0);
  (*(v35 + 8))(v15, a7);
  return sub_217E365C0(v22, type metadata accessor for ScopeGraphElement.ID);
}

uint64_t sub_217E6C250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a3;
  v33 = a6;
  v27 = a4;
  v29 = a1;
  v30 = a2;
  v31 = *(a8 - 8);
  v14 = *(v31 + 64);
  v28 = a10;
  MEMORY[0x28223BE20](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ScopeGraphElement.ID(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v26 - v22;
  v41[0] = *a7;
  v24 = v41[0];
  swift_beginAccess();
  sub_217E51AF0(a4, a5, v33, v41, v23);
  swift_endAccess();
  v35 = a8;
  v36 = a9;
  v37 = v28;
  v38 = v29;
  v39 = v30;
  v40[0] = v24;
  sub_217E351D8(v40, v23, sub_217E6D2FC, v34, v16);
  v41[0] = v24;
  swift_beginAccess();
  sub_217E525B8(v16, v27, a5, v33, v32, v41, a9, v21);
  swift_endAccess();
  sub_217E365C0(v21, type metadata accessor for ScopeGraphElement.ID);
  v40[0] = v24;
  sub_217E3A464(v23, v40, 0);
  (*(v31 + 8))(v16, a8);
  return sub_217E365C0(v23, type metadata accessor for ScopeGraphElement.ID);
}

uint64_t sub_217E6C4C0()
{
  sub_217E364B4(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[17];

  v11 = v0[18];

  v12 = v0[19];

  v13 = v0[20];

  v14 = v0[21];

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

BOOL sub_217E6C5F0(void *a1, uint64_t *a2)
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

void *sub_217E6C620@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_217E6C64C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_217E6C724@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_217E6C740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_217E6D4BC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_217E6C780(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v21 - v8;
  v11 = *v10;
  v12 = (*(*(*v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v14 = &v21 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *(v11 + 24);
    v18 = type metadata accessor for ScopeGraphElement.ID(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    v19 = *(v11 + 28);
    type metadata accessor for Dependencies.AmbiguousResolutionContext();
    v20 = swift_allocObject();
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0;
    *&v14[v19] = v20;
    *v14 = v16;
    *(v14 + 1) = a2;
    sub_217E3ECA8();
    (*(v5 + 8))(v9, v4);
    return sub_217E365C0(v14, type metadata accessor for Dependencies);
  }

  return result;
}

uint64_t sub_217E6C988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_217E55D34;

  return sub_217E6B994(a1, v4, v5, v6, v7);
}

uint64_t sub_217E6CA50()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_217E6D04C(v1, &v3);
}

uint64_t sub_217E6CAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_217E3A780(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v24 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_217E591A8();
      v11 = v24;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for ScopeGraphElement.ID(0);
    sub_217E365C0(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for ScopeGraphElement.ID);
    v14 = *(v11 + 56);
    sub_217E35174(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
    v16 = v15;
    v23 = *(v15 - 8);
    sub_217E454AC(v14 + *(v23 + 72) * v8, a2, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
    sub_217E5A364(v8, v11);
    *v3 = v11;
    v17 = *(v23 + 56);
    v18 = a2;
    v19 = 0;
    v20 = v16;
  }

  else
  {
    sub_217E35174(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
    v17 = *(*(v21 - 8) + 56);
    v20 = v21;
    v18 = a2;
    v19 = 1;
  }

  return v17(v18, v19, 1, v20);
}

uint64_t sub_217E6CCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *v4;
  v8 = sub_217E3960C(a1, a2, a3);
  if (v9)
  {
    v10 = v8;
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    v24 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_217E594AC();
      v13 = v24;
    }

    v14 = *(*(v13 + 48) + 24 * v10 + 16);

    v15 = *(v13 + 56);
    v16 = type metadata accessor for ScopeGraphElement.ID(0);
    v23 = *(v16 - 8);
    sub_217E35D8C(v15 + *(v23 + 72) * v10, a4, type metadata accessor for ScopeGraphElement.ID);
    sub_217E5A690(v10, v13);
    *v5 = v13;
    v17 = *(v23 + 56);
    v18 = a4;
    v19 = 0;
    v20 = v16;
  }

  else
  {
    v21 = type metadata accessor for ScopeGraphElement.ID(0);
    v17 = *(*(v21 - 8) + 56);
    v20 = v21;
    v18 = a4;
    v19 = 1;
  }

  return v17(v18, v19, 1, v20);
}

unint64_t sub_217E6CE40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_217E33C18(a1);
  if (v7)
  {
    v8 = result;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_217E59CD0();
      v11 = v12;
    }

    *a2 = *(*(v11 + 56) + 8 * v8);
    result = sub_217E5AA34(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

double sub_217E6CF0C@<D0>(uint64_t a1@<X2>, void (*a2)(unint64_t, uint64_t)@<X3>, void (*a3)(unint64_t, uint64_t)@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = sub_217E3722C(a1);
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v20 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v20;
    }

    v18 = *(*(v17 + 48) + 24 * v14 + 8);

    a2(*(v17 + 56) + 40 * v14, a5);
    a3(v14, v17);
    *v9 = v17;
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_217E6CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

uint64_t sub_217E6D04C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v3 = sub_217E703B4();
  sub_217E35794(v3, qword_2811B1820);
  v4 = sub_217E70394();
  v5 = sub_217E70764();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v13[0] = v7;
    *v6 = 136315138;
    v12[0] = v2;
    sub_217E540D8();
    v8 = sub_217E708F4();
    v10 = sub_217E58888(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_217E31000, v4, v5, "Scope deallocated; cleaning references. ID=%s", v6, 0xCu);
    sub_217E364B4(v7);
    MEMORY[0x21CEAE800](v7, -1, -1);
    MEMORY[0x21CEAE800](v6, -1, -1);
  }

  v12[0] = v2;
  swift_beginAccess();
  sub_217E507B8(v12);
  swift_endAccess();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  swift_beginAccess();
  sub_217E33874(v13, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_217E6CE40(v2, v12);

  return swift_endAccess();
}

unint64_t sub_217E6D248()
{
  result = qword_27CBF2E88;
  if (!qword_27CBF2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2E88);
  }

  return result;
}

uint64_t sub_217E6D29C(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return swift_deallocObject();
}

uint64_t sub_217E6D2FC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_217E6D324()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

unint64_t sub_217E6D360()
{
  result = qword_27CBF2E90;
  if (!qword_27CBF2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2E90);
  }

  return result;
}

unint64_t sub_217E6D3B8()
{
  result = qword_27CBF2E98;
  if (!qword_27CBF2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2E98);
  }

  return result;
}

unint64_t sub_217E6D410()
{
  result = qword_27CBF2EA0;
  if (!qword_27CBF2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2EA0);
  }

  return result;
}

unint64_t sub_217E6D468()
{
  result = qword_27CBF2EA8[0];
  if (!qword_27CBF2EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF2EA8);
  }

  return result;
}

uint64_t sub_217E6D4BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_217E6D504()
{
  v0 = sub_217E5C500();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_217E6D558(uint64_t a1)
{
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v5 = type metadata accessor for SourceVertex();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_217E378EC(a1);
}

uint64_t sub_217E6D59C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_217E70814();

  v11 = 0x3D786574726556;
  v12 = 0xE700000000000000;
  v8 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
  MEMORY[0x21CEADE80](v8);

  MEMORY[0x21CEADE80](0x657461647055202CLL, 0xE90000000000003DLL);
  (*(v4 + 16))(v7, v1 + *(a1 + 44), v3);
  v9 = sub_217E705D4();
  MEMORY[0x21CEADE80](v9);

  return v11;
}

uint64_t sub_217E6D700(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[3];
  v22 = a1[2];
  v23 = v7;
  v24 = a1[4];
  v8 = a1[1];
  v20 = *a1;
  v21 = v8;
  sub_217E4A514(v3, v25);
  sub_217E6D8C8(v25, v15);
  if (v16)
  {
    sub_217E38C20();
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata_unique();
    if (swift_dynamicCast())
    {
      if (*(&v18 + 1))
      {
        sub_217E33C00(&v17, &v20);
        v11 = *(&v21 + 1);
        v12 = v22;
        sub_217E37F28(&v20, *(&v21 + 1));
        (*(v12 + 88))(v4 + *(a3 + 44), a2, v10, v9, v11, v12);
        sub_217E54A0C(v25);
        v13 = &v20;
        return sub_217E364B4(v13);
      }
    }

    else
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {
    sub_217E54A0C(v15);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  result = sub_217E54A0C(v25);
  if (!*(&v18 + 1))
  {
    return result;
  }

  v13 = &v17;
  return sub_217E364B4(v13);
}

uint64_t sub_217E6D8C8(uint64_t a1, uint64_t a2)
{
  sub_217E54A68();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E6D92C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_217E70374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_217E6DB6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_217E70374() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_57:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    if (v9 >= a2)
    {
      v26 = *(v8 + 56);

      v26(a1, a2);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(a1, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *a1 = v24;
            a1[2] = BYTE2(v24);
          }

          else
          {
            *a1 = v24;
          }
        }

        else if (v25 == 1)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v24;
        }
      }
    }
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v12 + v13] & ~v13, a2, v11);
  }
}

uint64_t sub_217E6DF08(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_217E70734();
  if (!v26)
  {
    return sub_217E70664();
  }

  v48 = v26;
  v52 = sub_217E70874();
  v39 = sub_217E70884();
  sub_217E70854();
  result = sub_217E70724();
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
      v29 = sub_217E70754();
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
      sub_217E70864();
      result = sub_217E70744();
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

uint64_t sub_217E6E328()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Vertex();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  if (sub_217E70584() & 1) != 0 && (type metadata accessor for Graph(), swift_getWitnessTable(), (sub_217E70584()))
  {
    v0 = sub_217E6EA2C();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_217E6E4A0()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Vertex();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_217E70574();
  type metadata accessor for Graph();
  swift_getWitnessTable();
  sub_217E70574();
  return sub_217E6EB80();
}

uint64_t sub_217E6E60C()
{
  sub_217E709A4();
  sub_217E6E4A0();
  return sub_217E709D4();
}

uint64_t sub_217E6E69C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v15 = *(a3 + 24);
  v14 = *(a3 + 16);
  return sub_217E6E328() & 1;
}

uint64_t sub_217E6E6EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  return sub_217E6E60C();
}

uint64_t sub_217E6E704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  return sub_217E6E4A0();
}

uint64_t sub_217E6E71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_217E709A4();
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  sub_217E6E4A0();
  return sub_217E709D4();
}

uint64_t sub_217E6E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Edge();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_217E70714();
  v13[10] = a3;
  v13[11] = a4;
  sub_217E70554();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = sub_217E70634();

  v14 = v6;
  v13[6] = a3;
  v13[7] = a4;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = swift_getKeyPath();
  v7 = sub_217E706B4();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_217E6DF08(sub_217E6F1D0, v13, v7, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v14 = v10;
  sub_217E54088();
  sub_217E6F158();
  v11 = sub_217E705B4();

  return v11;
}

uint64_t sub_217E6E9D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v6 = *(a1 + a2 - 16);
  v5 = *(v4 - 8);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Edge();
  result = sub_217E4F370(v7);
  *a3 = result;
  a3[1] = v9;
  return result;
}

uint64_t sub_217E6EA2C()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Edge();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_217E70714();
  swift_getWitnessTable();
  if (sub_217E70584())
  {
    v0 = sub_217E70584();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_217E6EB80()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Edge();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_217E70714();
  swift_getWitnessTable();
  sub_217E70574();
  return sub_217E70574();
}

uint64_t sub_217E6ECB8()
{
  sub_217E709A4();
  sub_217E6EB80();
  return sub_217E709D4();
}

uint64_t sub_217E6ED40(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  return sub_217E6EA2C();
}

uint64_t sub_217E6ED60(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return sub_217E6ECB8();
}

uint64_t sub_217E6ED74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v6 = *v3;
  v5 = v3[1];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  return sub_217E6EB80();
}

uint64_t sub_217E6ED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_217E709A4();
  v6 = *v3;
  v7 = v3[1];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_217E6EB80();
  return sub_217E709D4();
}

uint64_t sub_217E6EDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Vertex();
  swift_getAssociatedConformanceWitness();
  v21 = a1;
  v20[2] = a5;
  v20[3] = a6;
  v11 = sub_217E70554();

  WitnessTable = swift_getWitnessTable();
  v14 = sub_217E6DF08(sub_217E6F138, v20, v11, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  v21 = v14;
  sub_217E54088();
  sub_217E6F158();
  v15 = sub_217E705B4();
  v17 = v16;

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_217E70814();

  v21 = 0x7365636974726556;
  v22 = 0xEB000000000A5B3DLL;
  MEMORY[0x21CEADE80](v15, v17);

  MEMORY[0x21CEADE80](0x656764450A2C5D0ALL, 0xED0000090A5B3D73);
  v18 = sub_217E6E778(a3, a4, a5, a6);
  MEMORY[0x21CEADE80](v18);

  MEMORY[0x21CEADE80](23818, 0xE200000000000000);
  return v21;
}

uint64_t sub_217E6F00C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Vertex();
  v3 = sub_217E5419C(v2);
  MEMORY[0x21CEADE80](v3);

  *a1 = 9;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_217E6F138@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_217E6F00C(a1);
}

unint64_t sub_217E6F158()
{
  result = qword_27CBF23C8;
  if (!qword_27CBF23C8)
  {
    sub_217E54088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF23C8);
  }

  return result;
}

uint64_t sub_217E6F1FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E6F250()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Dependency.init<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27[1] = a3;
  v7 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](a1);
  v28 = v27 - v9;
  v27[0] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v27 - v13;
  v15 = type metadata accessor for ScopeReader(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v27 - v21;
  _s9TeaBreeze11ScopeReaderV7currentACyFZ_0(v27 - v21);
  sub_217E3EB34(v22, v20);
  (*(v11 + 16))(v14, a2, AssociatedTypeWitness);
  a4[3] = type metadata accessor for AmbiguousDependencyReader();
  a4[4] = swift_getWitnessTable();
  v23 = sub_217E360A4(a4);
  sub_217E6F568(v20, a1, v14, v23);
  v24 = *(v16 + 28);

  v25 = v28;
  sub_217E3ECA8();

  (*(v11 + 8))(a2, AssociatedTypeWitness);
  (*(v29 + 8))(v25, v27[0]);
  return sub_217E458C4(v22);
}

uint64_t sub_217E6F568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  sub_217E3EC44(a1, a4);
  v8 = *(v7 + *MEMORY[0x277D84DE8] + 8);
  v9 = type metadata accessor for AmbiguousDependencyReader();
  *(a4 + *(v9 + 36)) = a2;
  v10 = *(v9 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 32);

  return v12(a4 + v10, a3, AssociatedTypeWitness);
}

uint64_t sub_217E6F67C(uint64_t a1)
{
  v3 = *(a1 + 40);
  v4 = *(v1 + *(a1 + 36));
  v5 = type metadata accessor for ScopeReader(0);
  v6 = *(a1 + 24);
  v7 = v1 + v3;
  v8 = v1 + *(v5 + 20);
  return sub_217E66014(v4, v7);
}

uint64_t Dependency.description.getter(uint64_t a1)
{
  sub_217E706E4();
  v4[2] = *(a1 + 16);
  v5 = v1;
  return sub_217E54B38(sub_217E6F824, v4);
}

uint64_t sub_217E6F75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v6 = v5[3];
  v7 = v5[4];
  sub_217E37F28(v5, v6);
  (*(v7 + 16))(v6, v7);
  result = sub_217E705D4();
  *a3 = result;
  a3[1] = v9;
  return result;
}

uint64_t sub_217E6F844(uint64_t a1)
{
  result = type metadata accessor for ScopeReader(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for Dependencies();
    v4 = *(a1 + 16);
    result = sub_217E70A24();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      result = swift_getAssociatedTypeWitness();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_217E6F90C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_217E70374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 84);
  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(v7 + 80);
  v18 = *(v14 + 80);
  if (v8)
  {
    v19 = *(v7 + 64);
  }

  else
  {
    v19 = *(v7 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = ((v19 + ((v17 + 16) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v19 + ((v17 + 16) & ~v17) + (v17 | 7)) & ~(v17 | 7)) + 8;
  v21 = v18 + 8;
  if (a2 <= v16)
  {
    goto LABEL_36;
  }

  v22 = ((v21 + v20) & ~v18) + *(*(AssociatedTypeWitness - 8) + 64);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_16;
  }

  v25 = ((a2 - v16 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v25))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_23;
    }

LABEL_36:
    if (v10 < v15)
    {
      v29 = *(v14 + 48);

      return v29((v21 + ((a1 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v18);
    }

    if ((v9 & 0x80000000) == 0)
    {
      v31 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }

    if (v8)
    {
      v32 = (*(v7 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17, v8, v6);
      v33 = v32 != 0;
      result = (v32 - 1);
      if (result != 0 && v33)
      {
        return result;
      }
    }

    return 0;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  if (v25 < 2)
  {
    goto LABEL_36;
  }

LABEL_16:
  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_36;
  }

LABEL_23:
  v26 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v26 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v27 = v22;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v16 + (v28 | v26) + 1;
}

void sub_217E6FC04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_217E70374();
  v9 = *(v8 - 8);
  v44 = v8;
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v14 = *(a4 + 16);
  v13 = *(a4 + 24);
  v15 = 0;
  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  if (v18 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  v20 = *(v9 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = *(v9 + 64);
  if (v10)
  {
    v23 = *(v9 + 64);
  }

  else
  {
    v23 = v22 + 1;
  }

  v24 = v21 + v23;
  v25 = (v21 + v23 + (v20 | 7)) & ~(v20 | 7);
  v26 = v24 + 7;
  v27 = v25 + (v26 & 0xFFFFFFFFFFFFFFF8) + 8;
  v28 = *(v16 + 80);
  v29 = ((v28 + 8 + v27) & ~v28) + *(v16 + 64);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v29 > 3)
  {
    v15 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v32 = ~v19 + a2;
    if (v29 >= 4)
    {
      bzero(a1, v29);
      *a1 = v32;
      v33 = 1;
      if (v15 > 1)
      {
        goto LABEL_30;
      }

LABEL_58:
      if (v15)
      {
        a1[v29] = v33;
      }

      return;
    }

    v33 = (v32 >> (8 * v29)) + 1;
    if (v29)
    {
      v35 = v32 & ~(-1 << (8 * v29));
      bzero(a1, v29);
      if (v29 != 3)
      {
        if (v29 == 2)
        {
          *a1 = v35;
          if (v15 <= 1)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *a1 = v32;
          if (v15 <= 1)
          {
            goto LABEL_58;
          }
        }

LABEL_30:
        if (v15 == 2)
        {
          *&a1[v29] = v33;
        }

        else
        {
          *&a1[v29] = v33;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v15 <= 1)
    {
      goto LABEL_58;
    }

    goto LABEL_30;
  }

  v30 = ((a3 - v19 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
  if (!HIWORD(v30))
  {
    if (v30 < 0x100)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }

    if (v30 >= 2)
    {
      v15 = v31;
    }

    else
    {
      v15 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v15 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v29] = 0;
LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!v15)
  {
    goto LABEL_34;
  }

  a1[v29] = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v12 < v18)
  {
    v34 = *(v17 + 56);

    v34((v28 + 8 + (&a1[v27 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v28, a2);
    return;
  }

  if (v12 < a2)
  {
    v36 = (v26 & 0xFFFFFFF8) + v25;
    if (v36 != -8)
    {
      bzero(a1, (v36 + 8));
      *a1 = ~v12 + a2;
    }

    return;
  }

  if ((v11 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v37 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v37 = (a2 - 1);
    }

    *a1 = v37;
    return;
  }

  v38 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 8) & ~v20);
  if (v11 < a2)
  {
    if (v23 <= 3)
    {
      v39 = ~(-1 << (8 * v23));
    }

    else
    {
      v39 = -1;
    }

    if (!v23)
    {
      return;
    }

    v40 = v39 & (~v11 + a2);
    if (v23 <= 3)
    {
      v41 = v23;
    }

    else
    {
      v41 = 4;
    }

    bzero(v38, v23);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
LABEL_73:
        *v38 = v40;
        return;
      }

LABEL_88:
      *v38 = v40;
      return;
    }

    goto LABEL_89;
  }

  if (a2 >= v10)
  {
    if (v22 <= 3)
    {
      v43 = ~(-1 << (8 * v22));
    }

    else
    {
      v43 = -1;
    }

    if (!v22)
    {
      return;
    }

    v40 = v43 & (a2 - v10);
    if (v22 <= 3)
    {
      v41 = v22;
    }

    else
    {
      v41 = 4;
    }

    bzero(v38, v22);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
        goto LABEL_73;
      }

      goto LABEL_88;
    }

LABEL_89:
    if (v41 == 3)
    {
      *v38 = v40;
      v38[2] = BYTE2(v40);
    }

    else
    {
      *v38 = v40;
    }

    return;
  }

  v42 = *(v9 + 56);

  v42((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 8) & ~v20, (a2 + 1), v10, v44);
}

uint64_t sub_217E70124()
{
  MEMORY[0x21CEAE8D0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_217E70174()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(v0 + v1, AssociatedTypeWitness);
}

char *sub_217E70224()
{
  v1 = *v0;
  v2 = sub_217E6D500();
  v3 = *(*v2 + 344);
  v4 = *(v1 + 328);
  v5 = *(v1 + 320);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v2[v3], AssociatedTypeWitness);
  return v2;
}

uint64_t sub_217E702DC()
{
  v0 = sub_217E70224();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}