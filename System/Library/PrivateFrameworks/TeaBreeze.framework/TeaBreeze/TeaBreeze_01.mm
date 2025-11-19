void *sub_217E48C44(void *result, int64_t a2, char a3, void *a4)
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
    sub_217E48DA0(0, &qword_2811B08F0, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_217E3374C(0, qword_2811B1708);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_217E48DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_217E3374C(255, qword_2811B1708);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217E48E10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_217E360A4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_217E33C00(&v12, v10 + 40 * a1 + 32);
}

void sub_217E48EA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_217E37580();
    v6 = sub_217E708E4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_217E48F20(uint64_t a1, char a2, unint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v7 = v6;
  v9 = *v6;
  if (*(*v6 + 24) > a1)
  {
    v10 = *(*v6 + 24);
  }

  sub_217E48EA8(0, a3, a4, a5, a6);
  v41 = a2;
  result = sub_217E708C4();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v7;
    v40 = v9;
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
      v26 = (*(v9 + 48) + 24 * v25);
      v27 = v26[1];
      v42 = *v26;
      v28 = v26[2];
      v29 = *(*(v9 + 56) + 8 * v25);
      if ((v41 & 1) == 0)
      {
      }

      v30 = *(v12 + 40);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v28);
      result = sub_217E709D4();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 24 * v20);
      *v21 = v42;
      v21[1] = v27;
      v21[2] = v28;
      *(*(v12 + 56) + 8 * v20) = v29;
      ++*(v12 + 16);
      v9 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v41 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v9 + 32);
    v7 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_35:
  *v7 = v12;
  return result;
}

unint64_t sub_217E49224(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t Scope.definesScope<A>(of:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  sub_217E6AC34(a1);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;
  a2[4] = v8;
}

__n128 sub_217E49300(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void Scope.subscope(dependencyContainer:tag:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[3];
  v11 = v4[4];
  sub_217E336BC(a1, v34);
  v12 = qword_2811B0BC8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = off_2811B0BD0;
  os_unfair_lock_lock(off_2811B0BD0 + 6);
  v14 = *(v13 + 2);
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    v31 = a4;
    *(v13 + 2) = v14 + 1;
    os_unfair_lock_unlock(v13 + 6);

    sub_217E336BC(v34, v33);
    swift_beginAccess();
    sub_217E33874(v33, v14);
    swift_endAccess();
    swift_beginAccess();
    v15 = *(v8 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v8 + 112);
    *(v8 + 112) = 0x8000000000000000;
    v29 = v11;
    sub_217E49B84(v11, v14, isUniquelyReferenced_nonNull_native);
    *(v8 + 112) = v32;

    v30 = a2;
    sub_217E49F14(a2, a3, v14);
    swift_endAccess();
    sub_217E33804(v34, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer);
    type metadata accessor for StorageHandle();
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v14;
    v17 = qword_2811B1810;

    if (v17 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v18 = sub_217E703B4();
  sub_217E35794(v18, qword_2811B1820);
  swift_retain_n();

  v19 = sub_217E70394();
  v20 = sub_217E70764();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34[0] = v22;
    *v21 = 136315394;
    v33[0] = v14;
    sub_217E540D8();
    v23 = sub_217E708F4();
    v25 = sub_217E58888(v23, v24, v34);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v33[0] = v29;
    v26 = sub_217E708F4();
    v28 = sub_217E58888(v26, v27, v34);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_217E31000, v19, v20, "Prepared new subscope. ID=%s, Parent=%s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v22, -1, -1);
    MEMORY[0x21CEAE800](v21, -1, -1);
  }

  *v31 = v8;
  v31[1] = v11;
  v31[2] = v30;
  v31[3] = a3;
  v31[4] = v14;
}

uint64_t sub_217E496D8(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_217E33C18(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_217E59B5C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_217E49884(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_217E33C18(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    sub_217E364B4(v21);

    return sub_217E33C00(a1, v21);
  }

  else
  {

    return sub_217E49B18(v9, a2, a1, v20);
  }
}

void sub_217E49808()
{
  if (!qword_2811B0910)
  {
    sub_217E3374C(255, qword_2811B0F98);
    sub_217E34278();
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0910);
    }
  }
}

uint64_t sub_217E49884(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217E49808();
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

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_217E49B18(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_217E33C00(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_217E49B84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_217E33C18(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_217E59A0C();
      result = v17;
      goto LABEL_8;
    }

    sub_217E49C90(v14, a3 & 1);
    v18 = *v4;
    result = sub_217E33C18(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a1;
  }

  else
  {

    return sub_217E36EB0(result, a2, a1, v20);
  }

  return result;
}

uint64_t sub_217E49C90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217E33CF0(0, &qword_2811B0908);
  result = sub_217E708C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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

LABEL_35:
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
        goto LABEL_35;
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

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_33:
  *v3 = v8;
  return result;
}

unint64_t sub_217E49F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_217E34140(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_217E33C18(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_217E598A0();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_217E5A8A0(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_217E49FE8(uint64_t a1)
{
  v2 = v1;
  sub_217E35174(0, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v34 - v6;
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48);
      v39 = *(v37 + 72);
      v23 = v40;
      sub_217E454AC(v22 + v39 * (v19 | (v11 << 6)), v40, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      v24 = *(v10 + 40);
      sub_217E709A4();
      sub_217E70374();
      sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
      sub_217E70594();
      v25 = v23 + *(v38 + 28);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_217E454AC(v40, *(v10 + 48) + v18 * v39, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      ++*(v10 + 16);
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

unint64_t sub_217E4A3CC()
{
  result = qword_2811B0978;
  if (!qword_2811B0978)
  {
    sub_217E362C4(255, &qword_2811B0980, qword_2811B1708, &protocol descriptor for GraphUpdate, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B0978);
  }

  return result;
}

double sub_217E4A450@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_217E4A46C(a1, a2);
}

double sub_217E4A46C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_217E33AD0(a1, v4);
  sub_217E3374C(0, qword_2811B1708);
  swift_getExtendedExistentialTypeMetadata_unique();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_217E4A514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ScopeGraphElement(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E38B58(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *(v2 + 8);
  if (*(v16 + 16) && (v17 = sub_217E3A780(a1), (v18 & 1) != 0))
  {
    v19 = v17;
    v20 = *(v16 + 56);
    sub_217E38B24(0);
    v22 = v21;
    v23 = *(v21 - 8);
    sub_217E35F40(v20 + *(v23 + 72) * v19, v15, sub_217E38B24);
    (*(v23 + 56))(v15, 0, 1, v22);
  }

  else
  {
    sub_217E38B24(0);
    v22 = v24;
    (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  }

  sub_217E39C30(v15, v13, sub_217E38B58);
  sub_217E38B24(0);
  if ((*(*(v22 - 8) + 48))(v13, 1, v22) == 1)
  {
    result = sub_217E3477C(v13, sub_217E38B58);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    sub_217E35F40(v13, v8, type metadata accessor for ScopeGraphElement);
    sub_217E3477C(v13, sub_217E38B24);
    sub_217E33AD0(&v8[*(v5 + 24)], a2);
    return sub_217E3477C(v8, type metadata accessor for ScopeGraphElement);
  }

  return result;
}

uint64_t sub_217E4A7F8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  v7 = a1[4];
  v15[3] = a1[3];
  v15[4] = v7;
  v8 = *a1;
  v15[1] = a1[1];
  v15[2] = v6;
  v15[0] = v8;
  sub_217E4A514(v3, &v16);
  if (!v17)
  {
    return sub_217E54A0C(&v16);
  }

  sub_217E33C00(&v16, v15);
  sub_217E33AD0(v15, v14);
  sub_217E38C20();
  v12 = *(a3 + 16);
  swift_getExtendedExistentialTypeMetadata();
  if (!swift_dynamicCast())
  {
    return sub_217E364B4(v15);
  }

  sub_217E33C00(&v13, &v16);
  v9 = v17;
  v10 = v18;
  sub_217E37F28(&v16, v17);
  (*(v10 + 24))(a2, v9, v10);
  sub_217E364B4(v15);
  return sub_217E364B4(&v16);
}

uint64_t sub_217E4A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - v9;
  v12 = *(v11 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v10, a1 + v12, v6);
  (*(a3 + 24))(a2, v6, a3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_217E4AACC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if ((*(v2 + *(*v2 + 136)) & 1) == 0)
  {
    *(v2 + *(*v2 + 120)) = 1;
    sub_217E4A978(v2, a1, a2);
    *(v2 + *(*v2 + 120)) = 0;
    v3 = *v2;
    if (*(v2 + *(*v2 + 128)) == 1)
    {
      sub_217E5C3B8();
      v3 = *v2;
    }
  }

  result = (*(v3 + 232))();
  *(v2 + *(*v2 + 112)) = result & 1;
  return result;
}

uint64_t sub_217E4AC34(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v93 = a4;
  v5 = v4;
  v9 = type metadata accessor for Storage.ExplicitUpdate();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v91 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v92 = &v81[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v98 = &v81[-v16];
  v17 = *(a3 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v15);
  v89 = &v81[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v96 = &v81[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v81[-v23];
  v97 = *a2;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v25 = sub_217E703B4();
  v26 = sub_217E35794(v25, qword_2811B1820);
  v27 = v17[2];
  v95 = a1;
  v28 = a1;
  v29 = v27;
  v99 = v17 + 2;
  (v27)(v24, v28, a3);
  v87 = v26;
  v30 = sub_217E70394();
  v31 = sub_217E70764();
  v32 = os_log_type_enabled(v30, v31);
  v90 = v17;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v86 = v33;
    v84 = swift_slowAlloc();
    *&v112[0] = v84;
    *v33 = 136315394;
    *&v107 = v97;
    sub_217E540D8();
    v83 = v30;
    v34 = sub_217E708F4();
    v36 = sub_217E58888(v34, v35, v112);
    v37 = v96;
    v85 = v5;
    v82 = v31;
    v38 = v17;
    v39 = v36;

    v40 = v86;
    *(v86 + 1) = v39;
    *(v40 + 6) = 2080;
    (v29)(v37, v24, a3);
    v41 = sub_217E705D4();
    v43 = v42;
    v5 = v85;
    v88 = v38[1];
    v88(v24, a3);
    v44 = sub_217E58888(v41, v43, v112);

    v45 = v86;
    *(v86 + 14) = v44;
    v46 = v83;
    _os_log_impl(&dword_217E31000, v83, v82, "Received request to invoke command. Scope=%s, Command=%s", v45, 0x16u);
    v47 = v84;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v47, -1, -1);
    MEMORY[0x21CEAE800](v45, -1, -1);
  }

  else
  {

    v88 = v17[1];
    v88(v24, a3);
  }

  v49 = v95;
  v48 = v96;
  (v29)(v96, v95, a3);
  v50 = v98;
  v51 = v93;
  sub_217E464E0(v48, a3, v98);
  v52 = v91;
  sub_217E35350(v50, v91, type metadata accessor for Storage.ExplicitUpdate);
  swift_beginAccess();
  v53 = v92;
  sub_217E465F0(v92, v52);
  swift_endAccess();
  sub_217E365C0(v53, type metadata accessor for Storage.ExplicitUpdate);
  swift_beginAccess();
  v54 = v5[5];
  v55 = v5[7];
  v113 = v5[6];
  v114 = v55;
  v56 = v5[7];
  v115 = v5[8];
  v57 = v5[5];
  v112[0] = v5[4];
  v112[1] = v57;
  v109 = v113;
  v110 = v56;
  v111 = v5[8];
  v107 = v112[0];
  v108 = v54;
  v116 = v97;
  sub_217E3438C(v112, &v102);
  v58 = v94;
  sub_217E4B7A4(v49, &v116, a3, v51);
  if (v58)
  {
    v104 = v109;
    v105 = v110;
    v106 = v111;
    v102 = v107;
    v103 = v108;
    sub_217E347DC(&v102);
    v59 = v29;
    v60 = v89;
    (v59)(v89, v49, a3);
    MEMORY[0x21CEAE5B0](v58);
    v61 = sub_217E70394();
    v62 = sub_217E70774();
    MEMORY[0x21CEAE5A0](v58);
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v92 = v59;
      v94 = v61;
      v64 = v96;
      v65 = v63;
      v93 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v95 = v66;
      *v65 = 136315650;
      v100 = v97;
      v101 = v66;
      sub_217E540D8();
      v67 = sub_217E708F4();
      v69 = sub_217E58888(v67, v68, &v101);
      LODWORD(v97) = v62;
      v70 = v69;

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      (v92)(v64, v60, a3);
      v71 = sub_217E705D4();
      v73 = v72;
      v88(v60, a3);
      v74 = sub_217E58888(v71, v73, &v101);

      *(v65 + 14) = v74;
      *(v65 + 22) = 2112;
      MEMORY[0x21CEAE5B0](v58);
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 24) = v75;
      v77 = v93;
      v76 = v94;
      *v93 = v75;
      _os_log_impl(&dword_217E31000, v76, v97, "Error raised while processing command. Scope=%s, Command=%s, Error=%@", v65, 0x20u);
      sub_217E377A0(v77, &qword_27CBF23B0, sub_217E5403C, MEMORY[0x277D83D88]);
      MEMORY[0x21CEAE800](v77, -1, -1);
      v78 = v95;
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v78, -1, -1);
      MEMORY[0x21CEAE800](v65, -1, -1);
    }

    else
    {

      v88(v60, a3);
    }

    swift_willThrow();
  }

  else
  {
    v104 = v109;
    v105 = v110;
    v106 = v111;
    v102 = v107;
    v103 = v108;
    sub_217E347DC(&v102);
  }

  v79 = v98;
  sub_217E47AC0(v5, v98);
  return sub_217E365C0(v79, type metadata accessor for Storage.ExplicitUpdate);
}

uint64_t ScopeReader.invoke<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3;
  v6 = v3[1];
  return sub_217E4AC34(a1, &v6, a2, a3);
}

uint64_t sub_217E4B440(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Storage.ExplicitUpdate();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v38 = v2;
    v39 = v8;
    v12 = 0;
    v13 = (v8 + 56);
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
      v24 = *(v40 + 72);
      sub_217E35D8C(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for Storage.ExplicitUpdate);
      v25 = *(v11 + 40);
      sub_217E709A4();
      sub_217E70374();
      sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0]);
      sub_217E70594();
      v26 = &v7[*(v41 + 20)];
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_217E35D8C(v7, *(v11 + 48) + v19 * v24, type metadata accessor for Storage.ExplicitUpdate);
      ++*(v11 + 16);
      v8 = v39;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v36 = 1 << *(v8 + 32);
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    v2 = v38;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

unint64_t sub_217E4B7A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(v4 + 16);
  v39 = *v4;
  v40 = v9;
  v41 = *(v4 + 32);
  v11 = *(v4 + 48);
  v10 = *(v4 + 56);
  v12 = *(v4 + 64);
  v26 = v10;
  v27 = *(v4 + 72);
  v13 = *(v12 + 16);
  v42 = v8;
  if (v13 && (v14 = sub_217E33C18(v8), (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v14);
  }

  else
  {
    v16 = MEMORY[0x277D84F98];
  }

  sub_217E36EF4();
  if (!*(v16 + 16))
  {

LABEL_13:
    result = v42;
    goto LABEL_14;
  }

  v25 = a4;
  v18 = sub_217E3722C(v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {

    goto LABEL_12;
  }

  sub_217E33AD0(*(v16 + 56) + 40 * v18, v35);

  sub_217E3374C(0, qword_2811B1708);
  swift_getExtendedExistentialTypeMetadata_unique();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    a4 = v25;
    goto LABEL_13;
  }

  a4 = v25;
  result = v42;
  if (*(&v29 + 1))
  {
    sub_217E33C00(&v28, v36);
    v22 = v37;
    v23 = v38;
    sub_217E37F28(v36, v37);
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v11;
    v32 = v26;
    v33 = v12;
    v34 = v27;
    (*(v23 + 16))(&v28, a1, v22, v23);
    return sub_217E364B4(v36);
  }

LABEL_14:
  if (*(v11 + 16))
  {
    result = sub_217E33C18(result);
    if (v24)
    {
      v36[0] = *(*(v11 + 56) + 8 * result);
      return sub_217E4B7A4(a1, v36, a3, a4);
    }
  }

  return result;
}

uint64_t ScopeReader.signalChanged<A>(_:)()
{
  v1 = v0;
  sub_217E3318C(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for ScopeGraphElement.ID(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v11 = sub_217E703B4();
  sub_217E35794(v11, qword_2811B1820);
  v12 = sub_217E70394();
  v13 = sub_217E70764();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = v1;
    v15 = v14;
    v32 = swift_slowAlloc();
    *&v43[0] = v32;
    *v15 = 136315138;
    v16 = sub_217E70A34();
    v18 = v7;
    v19 = v6;
    v20 = v10;
    v21 = sub_217E58888(v16, v17, v43);

    *(v15 + 4) = v21;
    v10 = v20;
    v6 = v19;
    v7 = v18;
    _os_log_impl(&dword_217E31000, v12, v13, "Notified of change from rule, requesting update of dependants. Rule=%s", v15, 0xCu);
    v22 = v32;
    sub_217E364B4(v32);
    MEMORY[0x21CEAE800](v22, -1, -1);
    v23 = v15;
    v1 = v33;
    MEMORY[0x21CEAE800](v23, -1, -1);
  }

  v24 = type metadata accessor for ScopeReader.CurrentScope(0);
  sub_217E358A0(v1 + *(v24 + 24), v5, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_217E37744(v5, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  }

  sub_217E35D24(v5, v10, type metadata accessor for ScopeGraphElement.ID);
  v27 = *v1;
  v26 = v1[1];
  swift_beginAccess();
  v28 = v27[5];
  v29 = v27[7];
  v40 = v27[6];
  v41 = v29;
  v30 = v27[7];
  v42 = v27[8];
  v31 = v27[5];
  v39[0] = v27[4];
  v39[1] = v31;
  v36 = v40;
  v37 = v30;
  v38 = v27[8];
  v34 = v39[0];
  v35 = v28;
  sub_217E3438C(v39, v43);
  sub_217E4BDD0(v10);
  v43[2] = v36;
  v43[3] = v37;
  v43[4] = v38;
  v43[0] = v34;
  v43[1] = v35;
  sub_217E347DC(v43);
  *&v34 = v26;
  sub_217E3A464(v10, &v34, 4);
  return sub_217E36560(v10, type metadata accessor for ScopeGraphElement.ID);
}

uint64_t sub_217E4BDD0(uint64_t a1)
{
  v3 = type metadata accessor for ScopeGraphElement.ID(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E3C8CC(0);
  v8 = v7;
  v74 = *(v7 - 8);
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E38B24(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v73 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v72 = &v63 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v63 - v20;
  result = MEMORY[0x28223BE20](v19);
  v24 = &v63 - v23;
  v25 = *(v1 + 8);
  if (*(v25 + 16))
  {
    v26 = *(v1 + 24);
    v27 = *(v1 + 8);
    result = sub_217E3A780(a1);
    if (v28)
    {
      v68 = v26;
      v29 = *(v25 + 56);
      v70 = *(v13 + 72);
      sub_217E35F40(v29 + v70 * result, v21, sub_217E38B24);
      sub_217E39C30(v21, v24, sub_217E38B24);
      v69 = type metadata accessor for ScopeGraphElement(0);
      v30 = &v24[*(v69 + 24)];
      v31 = v24;
      v32 = *(v30 + 3);
      v33 = *(v30 + 4);
      sub_217E37F28(v30, v32);
      (*(v33 + 64))(v32, v33);
      v34 = *(v30 + 3);
      v35 = *(v30 + 4);
      v67 = v30;
      sub_217E37F28(v30, v34);
      result = (*(v35 + 40))(v34, v35);
      if (result)
      {
        v64 = v31;
        v36 = v68;
        v37 = *(v68 + 16);
        v71 = v8;
        if (v37)
        {
          result = sub_217E3A780(a1);
          v38 = v74;
          if (v39)
          {
            v40 = *(*(v36 + 56) + 8 * result);
          }

          else
          {
            v40 = MEMORY[0x277D84FA0];
          }
        }

        else
        {
          v40 = MEMORY[0x277D84FA0];
          v38 = v74;
        }

        v41 = 0;
        v42 = v40 + 56;
        v43 = 1 << *(v40 + 32);
        v44 = -1;
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        v45 = v44 & *(v40 + 56);
        v46 = (v43 + 63) >> 6;
        v65 = v11;
        for (i = v6; v45; result = sub_217E3477C(v60, sub_217E38B24))
        {
LABEL_18:
          while (1)
          {
            v48 = __clz(__rbit64(v45));
            v45 &= v45 - 1;
            sub_217E35F40(*(v40 + 48) + *(v38 + 72) * (v48 | (v41 << 6)), v11, sub_217E3C8CC);
            sub_217E35F40(&v11[*(v71 + 28)], v6, type metadata accessor for ScopeGraphElement.ID);
            sub_217E3477C(v11, sub_217E3C8CC);
            if (*(v25 + 16))
            {
              v49 = sub_217E3A780(v6);
              if (v50)
              {
                break;
              }
            }

            result = sub_217E3477C(v6, type metadata accessor for ScopeGraphElement.ID);
            if (!v45)
            {
              goto LABEL_14;
            }
          }

          v51 = v73;
          sub_217E35F40(*(v25 + 56) + v49 * v70, v73, sub_217E38B24);
          sub_217E3477C(v6, type metadata accessor for ScopeGraphElement.ID);
          v52 = v72;
          sub_217E39C30(v51, v72, sub_217E38B24);
          v53 = (v52 + *(v69 + 24));
          v54 = v40;
          v55 = v53[3];
          v56 = v53[4];
          sub_217E37F28(v53, v55);
          v57 = *(v56 + 48);
          v58 = v55;
          v40 = v54;
          v11 = v65;
          v59 = v56;
          v38 = v74;
          v57(v58, v59);
          v60 = v52;
          v6 = i;
        }

LABEL_14:
        while (1)
        {
          v47 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v47 >= v46)
          {

            v61 = *(v67 + 3);
            v62 = *(v67 + 4);
            sub_217E37F28(v67, v61);
            (*(v62 + 56))(v61, v62);
            v31 = v64;
            return sub_217E3477C(v31, sub_217E38B24);
          }

          v45 = *(v42 + 8 * v47);
          ++v41;
          if (v45)
          {
            v41 = v47;
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
        return sub_217E3477C(v31, sub_217E38B24);
      }
    }
  }

  return result;
}

uint64_t sub_217E4C33C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 320);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v24 - v7;
  v26 = *(v2 + 328);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  if (*(v1 + *(v2 + 120)))
  {
    v17 = 0;
  }

  else
  {
    v18 = *(v3 + 344);
    swift_beginAccess();
    (*(v10 + 16))(v16, v1 + v18, AssociatedTypeWitness);
    v19 = *v1;
    v25 = v3;
    v20 = *(v19 + 104);
    swift_beginAccess();
    (*(v5 + 16))(v8, v1 + v20, v4);
    (*(v26 + 24))(v4);
    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    (*(v10 + 24))(v1 + v18, v14, AssociatedTypeWitness);
    swift_endAccess();
    v21 = *(v25 + 336);
    LOBYTE(v20) = sub_217E705C4();
    v22 = *(v10 + 8);
    v22(v14, AssociatedTypeWitness);
    v22(v16, AssociatedTypeWitness);
    v17 = v20 ^ 1;
  }

  return v17 & 1;
}

uint64_t sub_217E4C688()
{
  result = (*(*v0 + 232))();
  *(v0 + *(*v0 + 112)) = result & 1;
  return result;
}

uint64_t sub_217E4C6E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for InstallRuleViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4C77C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_217E70454();
  sub_217E4EBA0();
  return swift_getWitnessTable();
}

uint64_t sub_217E4C814(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for InstallRuleViewModifier();
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E70454();
  swift_getWitnessTable();
  sub_217E4EBA0();
  return swift_getWitnessTable();
}

uint64_t sub_217E4C8DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ScopeGraphElement.ID(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217E4C980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217E4C9EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217E4CA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Dependencies();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_217E4CB08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Dependencies();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217E4CBAC()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_217E4CBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217E4CC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217E4CCCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_217E4F180(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  sub_217E55C68();
  v5 = *(v0 + 120);

  return swift_deallocObject();
}

uint64_t sub_217E4CD2C()
{
  sub_217E4F180(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  sub_217E55C68();
  v4 = *(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_217E4CD84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_217E4CDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217E4CE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217E4CF4C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  type metadata accessor for TruthViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4CFE0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for AmbiguousTruthViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D074(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v4 = a1[1];
  v5 = a1[3];
  type metadata accessor for UpdateTruthFromEnvironmentViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D114(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v4 = a1[1];
  v5 = *(a1 + 3);
  type metadata accessor for UpdateAmbiguousTruthFromEnvironmentViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D1BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v4 = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
  v5 = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
  type metadata accessor for UpdateTruthFromEnvironmentViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D268(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v4 = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
  v5 = a1[6];
  v6 = *(a1 + 2);
  type metadata accessor for UpdateAmbiguousTruthFromEnvironmentViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217E70474();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_217E4D390(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E70474();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217E4D3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E70474();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217E4D46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217E33B9C(0, qword_27CBF2AD0, _s11ValueReaderVMa, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_217E4D558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217E33B9C(0, qword_27CBF2AD0, _s11ValueReaderVMa, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }
}

uint64_t sub_217E4D640(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for TruthViewModifier();
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E63FD4(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  sub_217E70454();
  swift_getWitnessTable();
  sub_217E64028();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D724(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AmbiguousTruthViewModifier();
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E63FD4(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  sub_217E70454();
  swift_getWitnessTable();
  sub_217E64028();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D808(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  type metadata accessor for UpdateTruthFromEnvironmentViewModifier();
  swift_getWitnessTable();
  sub_217E704A4();
  type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D918(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  type metadata accessor for UpdateAmbiguousTruthFromEnvironmentViewModifier();
  swift_getWitnessTable();
  sub_217E704A4();
  type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4DA34()
{
  v15 = *(v0 + 16);
  v16 = *(v0 + 32);
  updated = type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier();
  v2 = (*(*(updated - 1) + 80) + 48) & ~*(*(updated - 1) + 80);
  v3 = *(*(updated - 1) + 64);
  v4 = (v0 + v2);
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_217E70474();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + updated[13]);

  v8 = *(v4 + updated[14]);

  v9 = (v4 + updated[16]);
  v10 = *v9;

  v11 = v9[1];

  v12 = v9[3];

  v13 = *(v4 + updated[17] + 8);

  return swift_deallocObject();
}

uint64_t sub_217E4DBC4()
{
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  updated = type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier();
  v2 = (*(*(updated - 1) + 80) + 56) & ~*(*(updated - 1) + 80);
  v3 = *(*(updated - 1) + 64);
  v4 = (v0 + v2);
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_217E70474();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *&v4[updated[15]];

  v8 = *&v4[updated[16]];

  v9 = updated[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v4[v9], AssociatedTypeWitness);
  v11 = &v4[updated[19]];
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(v11 + 3);

  v15 = *&v4[updated[20] + 8];

  return swift_deallocObject();
}

uint64_t sub_217E4DDC0(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1[1];
  v3 = *(a1 + 1);
  type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier();
  swift_getWitnessTable();
  sub_217E704A4();
  type metadata accessor for TruthViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217E4DEF4(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier();
  swift_getWitnessTable();
  sub_217E704A4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217E4DFBC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_217E33138(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_217E4E088(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217E33138(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_217E4E148()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_217E4E188(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  type metadata accessor for ScopedTruthViewModifier();
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4E21C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_217E70454();
  sub_217E68704();
  return swift_getWitnessTable();
}

uint64_t sub_217E4E280(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ScopedTruthViewModifier();
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E691D0(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  sub_217E70454();
  swift_getWitnessTable();
  sub_217E64028();
  return swift_getWitnessTable();
}

uint64_t sub_217E4E36C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217E4E3B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 sub_217E4E414(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_217E4E420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScopeReader(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217E4E4DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ScopeReader(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217E4E594()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_217E4E5D4(uint64_t a1, int a2)
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

uint64_t sub_217E4E5F4(uint64_t result, int a2, int a3)
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

void View.register<A>(_:)()
{
  type metadata accessor for InstallRuleViewModifier();

  JUMPOUT(0x21CEADD60);
}

uint64_t View.editScope(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *&v8[0] = swift_getKeyPath();
  memset(v8 + 8, 0, 33);

  MEMORY[0x21CEADD60](&v7, a3, &type metadata for EditScopeViewModifier, a4);
  v10[0] = v7;
  v10[1] = v8[0];
  v11[0] = v8[1];
  *(v11 + 9) = *(&v8[1] + 9);
  return sub_217E4EB70(v10);
}

uint64_t sub_217E4E748@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  type metadata accessor for InstallRuleViewModifier();
  swift_getWitnessTable();
  v6 = sub_217E704A4();
  v7 = sub_217E70454();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  WitnessTable = swift_getWitnessTable();
  View.editScope(_:)(sub_217E4F028, v15, v6, WitnessTable);

  v17 = sub_217E4EBA0();
  v21[0] = WitnessTable;
  v21[1] = v17;
  swift_getWitnessTable();
  v18 = v8[2];
  v18(v14, v12, v7);
  v19 = v8[1];
  v19(v12, v7);
  v18(a3, v14, v7);
  return (v19)(v14, v7);
}

__n128 sub_217E4E9B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v15 = *v2;
  v16 = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  KeyPath = swift_getKeyPath();
  sub_217E4ECE0(v13);
  v12 = v13[1];
  v7 = v14;
  sub_217E4F06C();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  sub_217E4F0C8();
  v10 = a2 + *(v9 + 36);
  *v10 = KeyPath;
  result = v12;
  *(v10 + 8) = v13[0];
  *(v10 + 24) = v12;
  *(v10 + 40) = v7;
  return result;
}

double sub_217E4EA8C@<D0>(uint64_t a1@<X8>)
{
  sub_217E4F1E4();
  sub_217E70484();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_217E4EAE4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 3);
  sub_217E4F1E4();

  return sub_217E70494();
}

unint64_t sub_217E4EBA0()
{
  result = qword_27CBF22B8[0];
  if (!qword_27CBF22B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF22B8);
  }

  return result;
}

__n128 sub_217E4EC00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_217E4EC1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_217E4EC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E4ECE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v31 = sub_217E70474();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = *(v1 + 8);
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  v14 = *(v2 + 40);
  v33 = v11;
  if (v13 == 1)
  {
    v37 = v10;
    v38 = v9;
    v39 = v11;
    v40 = v12;

    v15 = v12;
    v16 = v9;
    v17 = v10;
    v18 = v33;
  }

  else
  {

    sub_217E70784();
    v19 = sub_217E704C4();
    v30 = v6;
    v20 = v9;
    v21 = v13;
    v22 = v14;
    v23 = v3;
    v24 = v19;
    sub_217E70384();

    v3 = v23;
    v14 = v22;
    v13 = v21;
    v9 = v20;
    v6 = v30;
    v25 = v31;
    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E4F180(v10, v9, v33, v14, v12, 0);
    (*(v3 + 8))(v6, v25);
    v17 = v37;
    v16 = v38;
    v18 = v39;
    v15 = v40;
  }

  v34[0] = v17;
  v34[1] = v16;
  v35 = v18;
  v36 = v15;
  v8(v34);

  if (v13)
  {
    v26 = v32;
    *v32 = v10;
    v26[1] = v9;
    v26[2] = v33;
    v26[3] = v14;
    v26[4] = v12;
  }

  else
  {

    sub_217E70784();
    v28 = sub_217E704C4();
    sub_217E70384();

    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E4F180(v10, v9, v33, v14, v12, 0);
    return (*(v3 + 8))(v6, v31);
  }
}

uint64_t sub_217E4F028(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 4);
  return Scope.register<A>(_:)(*(v1 + 16), *(v1 + 16), *(v1 + 24));
}

void sub_217E4F06C()
{
  if (!qword_27CBF2340)
  {
    sub_217E4EBA0();
    v0 = sub_217E704A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2340);
    }
  }
}

void sub_217E4F0C8()
{
  if (!qword_27CBF2348)
  {
    sub_217E4F06C();
    sub_217E4F130();
    v0 = sub_217E70454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2348);
    }
  }
}

void sub_217E4F130()
{
  if (!qword_27CBF2350)
  {
    v0 = sub_217E704B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2350);
    }
  }
}

uint64_t sub_217E4F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if (a6)
  {
  }

  return result;
}

unint64_t sub_217E4F1E4()
{
  result = qword_27CBF2358;
  if (!qword_27CBF2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2358);
  }

  return result;
}

unint64_t sub_217E4F238()
{
  result = qword_27CBF2360;
  if (!qword_27CBF2360)
  {
    sub_217E4F0C8();
    sub_217E4F318(&qword_27CBF2368, sub_217E4F06C);
    sub_217E4F318(&qword_27CBF2370, sub_217E4F130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2360);
  }

  return result;
}

uint64_t sub_217E4F318(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217E4F370(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v8(v7, v1, v3);
  v12[0] = sub_217E705D4();
  v12[1] = v9;
  MEMORY[0x21CEADE80](540945696, 0xE400000000000000);
  v8(v7, v1 + *(a1 + 28), v3);
  v10 = sub_217E705D4();
  MEMORY[0x21CEADE80](v10);

  return v12[0];
}

uint64_t sub_217E4F4A0()
{
  if ((sub_217E705C4() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for Edge() + 28);
  return sub_217E705C4() & 1;
}

uint64_t sub_217E4F50C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_217E70594();
  v5 = v2 + *(a2 + 28);
  return sub_217E70594();
}

uint64_t sub_217E4F568(uint64_t a1)
{
  sub_217E709A4();
  v3 = *(a1 + 16);
  sub_217E70594();
  v4 = v1 + *(a1 + 28);
  sub_217E70594();
  return sub_217E709D4();
}

uint64_t sub_217E4F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return sub_217E4F4A0();
}

uint64_t sub_217E4F5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_217E709A4();
  sub_217E4F50C(v6, a2);
  return sub_217E709D4();
}

uint64_t sub_217E4F650(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
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
        return (*(v4 + 48))();
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

char *sub_217E4F7A0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
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

uint64_t ScopeGraphElement.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ScopeGraphElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ScopeGraphElement(0) + 20);

  return sub_217E4FA2C(v3, a1);
}

uint64_t sub_217E4FA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ScopeGraphElement.ID.customMirror.getter()
{
  v1 = v0;
  v2 = sub_217E70A04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E35110(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v16 - v9;
  v11 = type metadata accessor for ScopeGraphElement.ID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  sub_217E4FA2C(v1, v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16[1] = MEMORY[0x277D84F90];
  v14 = sub_217E709F4();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  sub_217E35110(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();
  return sub_217E70A14();
}

void sub_217E4FCF8()
{
  if (!qword_27CBF2388)
  {
    sub_217E4FD68();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CBF2388);
    }
  }
}

void sub_217E4FD68()
{
  if (!qword_27CBF2390)
  {
    v0 = sub_217E70794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2390);
    }
  }
}

unint64_t sub_217E4FDB8()
{
  result = qword_27CBF2398;
  if (!qword_27CBF2398)
  {
    sub_217E35110(255, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2398);
  }

  return result;
}

uint64_t sub_217E4FE40(uint64_t a1)
{
  v3 = sub_217E70A04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E35110(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v17 - v11;
  v13 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_217E4FA2C(v1, v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17[1] = MEMORY[0x277D84F90];
  v15 = sub_217E709F4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  (*(v4 + 104))(v7, *MEMORY[0x277D84C38], v3);
  sub_217E35110(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();
  return sub_217E70A14();
}

uint64_t ScopeGraphElement.ID.hash(into:)()
{
  sub_217E70374();
  sub_217E3AF40(&qword_2811B1818, MEMORY[0x277CC95F0]);

  return sub_217E70594();
}

uint64_t ScopeGraphElement.ID.hashValue.getter()
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E3AF40(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  return sub_217E709D4();
}

uint64_t sub_217E501A8()
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E3AF40(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  return sub_217E709D4();
}

uint64_t sub_217E50230()
{
  sub_217E70374();
  sub_217E3AF40(&qword_2811B1818, MEMORY[0x277CC95F0]);

  return sub_217E70594();
}

uint64_t sub_217E502B4()
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E3AF40(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  return sub_217E709D4();
}

__n128 sub_217E50404(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_217E50420(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_217E50468(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217E504DC(uint64_t *a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = *a1;
  v5 = *(v1 + 56);
  v27 = v5;
  v28 = *(v1 + 48);
  v29 = 0;
  while (1)
  {
    sub_217E54088();
    sub_217E447D0(&qword_27CBF23C8, sub_217E54088);
    v13 = sub_217E705B4();
    v15 = v14;

    if (*(v5 + 16))
    {
      v16 = sub_217E33C18(v4);
      if (v17)
      {
        v18 = (*(v5 + 56) + 16 * v16);
        v30 = *v18;
        v31 = v18[1];

        MEMORY[0x21CEADE80](8250, 0xE200000000000000);
        MEMORY[0x21CEADE80](v30, v31);
      }
    }

    sub_217E540D8();
    v19 = sub_217E708F4();
    MEMORY[0x21CEADE80](v19);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_217E5CD54(0, *(v3 + 2) + 1, 1, v3);
    }

    v21 = *(v3 + 2);
    v20 = *(v3 + 3);
    if (v21 >= v20 >> 1)
    {
      v3 = sub_217E5CD54((v20 > 1), v21 + 1, 1, v3);
    }

    *(v3 + 2) = v21 + 1;
    v22 = &v3[16 * v21];
    *(v22 + 4) = v13;
    *(v22 + 5) = v15;
    if (!*(v28 + 16) || (result = sub_217E33C18(v4), (v24 & 1) == 0))
    {
      v26 = sub_217E705B4();

      return v26;
    }

    if (__OFADD__(v2, 1))
    {
      break;
    }

    v4 = *(*(v28 + 56) + 8 * result);
    ++v2;
    v25 = v29 - 1;
    v5 = v27;
    --v29;
    if (v2)
    {
      v6 = sub_217E70674();
      *(v6 + 16) = v2;
      v7 = (v6 + 32);
      if (v2 <= 3)
      {
        v8 = 0;
        goto LABEL_7;
      }

      v9 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v7 += 2 * (v2 & 0xFFFFFFFFFFFFFFFCLL);
      v10 = (v6 + 64);
      do
      {
        *(v10 - 2) = xmmword_217E71540;
        *(v10 - 1) = xmmword_217E71540;
        *v10 = xmmword_217E71540;
        v10[1] = xmmword_217E71540;
        v10 += 4;
        v9 -= 4;
      }

      while (v9);
      if (v2 != v8)
      {
LABEL_7:
        v11 = v8 + v25;
        do
        {
          *v7 = 32;
          v7[1] = 0xE100000000000000;
          v7 += 2;
        }

        while (!__CFADD__(v11++, 1));
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217E507B8(uint64_t *a1)
{
  v2 = v1;
  sub_217E38B58(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v75 - v9;
  sub_217E38B24(0);
  v85 = v10;
  v82 = *(v10 - 8);
  v11 = *(v82 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  v17 = type metadata accessor for ScopeGraphElement.ID(0);
  v81 = *(v17 - 8);
  v18 = *(v81 + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v75 - v22;
  v23 = *a1;
  v24 = v2[5];
  if (*(v24 + 16) && (v25 = sub_217E33C18(v23), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);

    sub_217E56F70(0, v23);
    if (v27)
    {
      v28 = v27;
      v83 = v21;
      v75 = v16;
      v76 = v14;
      v77 = v8;
      v29 = 0;
      v30 = v28 + 64;
      v31 = 1 << *(v28 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & *(v28 + 64);
      v34 = (v31 + 63) >> 6;
      v35 = v81;
      v79 = (v82 + 56);
      for (i = v28; v33; v35 = v81)
      {
LABEL_14:
        while (1)
        {
          v38 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          v39 = *(v35 + 72);
          v40 = v84;
          sub_217E35F40(*(v28 + 56) + v39 * (v38 | (v29 << 6)), v84, type metadata accessor for ScopeGraphElement.ID);
          v41 = v83;
          sub_217E39C30(v40, v83, type metadata accessor for ScopeGraphElement.ID);
          v42 = v2[1];
          if (*(v42 + 16))
          {
            v43 = sub_217E3A780(v41);
            if (v44)
            {
              break;
            }
          }

          sub_217E3477C(v41, type metadata accessor for ScopeGraphElement.ID);
          v36 = v86;
          (*v79)(v86, 1, 1, v85);
          sub_217E3477C(v36, sub_217E38B58);
          v28 = i;
          if (!v33)
          {
            goto LABEL_10;
          }
        }

        v45 = *(v42 + 56);
        v78 = *(v82 + 72);
        v46 = v76;
        sub_217E35F40(v45 + v78 * v43, v76, sub_217E38B24);
        sub_217E39C30(v46, v86, sub_217E38B24);
        v47 = sub_217E3A780(v41);
        if (v48)
        {
          v49 = v47;
          v50 = v2[1];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = v2[1];
          v87 = v52;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_217E591A8();
            v52 = v87;
          }

          sub_217E3477C(*(v52 + 48) + v49 * v39, type metadata accessor for ScopeGraphElement.ID);
          v53 = v77;
          sub_217E39C30(*(v52 + 56) + v49 * v78, v77, sub_217E38B24);
          sub_217E5A364(v49, v52);
          v54 = 0;
          v2[1] = v52;
        }

        else
        {
          v54 = 1;
          v53 = v77;
        }

        v78 = *v79;
        v55 = v85;
        v78(v53, v54, 1, v85);
        sub_217E3477C(v53, sub_217E38B58);
        sub_217E5276C(v83);
        v56 = v86;
        v78(v86, 0, 1, v55);
        v57 = v75;
        sub_217E39C30(v56, v75, sub_217E38B24);
        v58 = (v57 + *(type metadata accessor for ScopeGraphElement(0) + 24));
        v59 = v58[3];
        v60 = v58[4];
        sub_217E37F28(v58, v59);
        (*(v60 + 80))(v59, v60);
        sub_217E3477C(v83, type metadata accessor for ScopeGraphElement.ID);
        sub_217E3477C(v57, sub_217E38B24);
        v28 = i;
      }

LABEL_10:
      while (1)
      {
        v37 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v37 >= v34)
        {

          goto LABEL_24;
        }

        v33 = *(v30 + 8 * v37);
        ++v29;
        if (v33)
        {
          v29 = v37;
          goto LABEL_14;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      sub_217E59A0C();
      v61 = v87;
      goto LABEL_26;
    }
  }

  else
  {
    sub_217E56F70(0, v23);
  }

LABEL_24:
  v61 = v2[6];
  v62 = sub_217E33C18(v23);
  if ((v63 & 1) == 0)
  {
    goto LABEL_27;
  }

  v34 = v62;
  v64 = v2[6];
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v2[6];
  v87 = v61;
  if (!v65)
  {
    goto LABEL_40;
  }

LABEL_26:
  sub_217E5AA34(v34, v61);
  v2[6] = v61;
LABEL_27:
  sub_217E5704C(0, v23);
  sub_217E57078(0, v23);
  v66 = sub_217E52CF8(v61, v23);
  v23 = v66;
  v34 = 0;
  v67 = v66 + 64;
  v68 = 1 << *(v66 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v66 + 64);
  v71 = (v68 + 63) >> 6;
  if (v70)
  {
    while (1)
    {
      v72 = v34;
LABEL_35:
      v73 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      v87 = *(*(v23 + 48) + ((v72 << 9) | (8 * v73)));
      sub_217E507B8(&v87);
      if (!v70)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
LABEL_31:
    v72 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v72 >= v71)
    {
    }

    v70 = *(v67 + 8 * v72);
    ++v34;
    if (v70)
    {
      v34 = v72;
      goto LABEL_35;
    }
  }
}

uint64_t sub_217E50E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v13 = type metadata accessor for ExplicitCommandHandlerUpdate();
  (*(v7 + 16))(v10, a1, a3);
  v14 = sub_217E5E1E8(v10);
  v35[3] = v13;
  v35[4] = swift_getWitnessTable();
  v35[0] = v14;
  v15 = *(v4 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = *(v4 + 64);
  v17 = v34[0];
  v18 = sub_217E33C18(v12);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(v10) = v19;
  if (v17[3] < v23)
  {
    sub_217E36BF0(v23, isUniquelyReferenced_nonNull_native);
    v17 = v34[0];
    v18 = sub_217E33C18(v12);
    if ((v10 & 1) == (v24 & 1))
    {
      goto LABEL_6;
    }

    v18 = sub_217E70944();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_10:
    v33 = v18;
    sub_217E58EA4();
    v18 = v33;
    v17 = v34[0];
    *(v4 + 64) = v34[0];
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_6:
  *(v4 + 64) = v17;
  if ((v10 & 1) == 0)
  {
LABEL_7:
    v25 = v18;
    sub_217E362BC(v18, v12, MEMORY[0x277D84F98], v17);
    v18 = v25;
  }

LABEL_8:
  v26 = v17[7] + 8 * v18;
  swift_getAssociatedTypeWitness();
  v27 = sub_217E36EF4();
  v29 = v28;
  v31 = v30;
  sub_217E36F24(v35, v34);
  sub_217E36FB4(v34, v27, v29, v31);
  return sub_217E382C4(v35, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate);
}

uint64_t sub_217E510E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = a3;
  v7 = *(a3 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v13 = type metadata accessor for ExplicitEventHandlerUpdate();
  (*(v7 + 16))(v10, a1, v5);
  v14 = sub_217E5E1E8(v10);
  v15 = *(v4 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v4 + 72);
  v17 = v52;
  v19 = sub_217E33C18(v12);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = v18;
  if (v17[3] >= v22)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_28;
    }

    *(v4 + 72) = v17;
    if ((v18 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_217E489A4(v22, isUniquelyReferenced_nonNull_native);
    v17 = v52;
    v24 = sub_217E33C18(v12);
    if ((v23 & 1) != (v25 & 1))
    {
      sub_217E70944();
      __break(1u);
      goto LABEL_31;
    }

    v19 = v24;
    *(v4 + 72) = v17;
    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    isUniquelyReferenced_nonNull_native = v17[7];
    v26 = *(isUniquelyReferenced_nonNull_native + 8 * v19);
    swift_getAssociatedTypeWitness();
    sub_217E36EF4();
    if (*(v26 + 16) && (v28 = sub_217E3722C(v27), (v29 & 1) != 0))
    {
      v5 = *(*(v26 + 56) + 8 * v28);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v5;
    if ((v30 & 1) == 0)
    {
LABEL_26:
      v5 = sub_217E48C44(0, v5[2] + 1, 1, v5);
      v52 = v5;
    }

    v32 = v5[2];
    v31 = v5[3];
    if (v32 >= v31 >> 1)
    {
      v5 = sub_217E48C44((v31 > 1), v32 + 1, 1, v5);
      v52 = v5;
    }

    v51 = v14;
    WitnessTable = swift_getWitnessTable();
    sub_217E48E10(v32, &v51, &v52, v13, WitnessTable);
    v34 = sub_217E36EF4();
    v13 = v35;
    v14 = v36;
    v37 = *(isUniquelyReferenced_nonNull_native + 8 * v19);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(isUniquelyReferenced_nonNull_native + 8 * v19);
    v38 = v51;
    *(isUniquelyReferenced_nonNull_native + 8 * v19) = 0x8000000000000000;
    v4 = sub_217E3722C(v14);
    v40 = *(v38 + 16);
    v41 = (v39 & 1) == 0;
    v42 = v40 + v41;
    if (!__OFADD__(v40, v41))
    {
      break;
    }

    __break(1u);
LABEL_28:
    sub_217E59024();
    v17 = v52;
    *(v4 + 72) = v52;
    if ((v23 & 1) == 0)
    {
LABEL_8:
      sub_217E362BC(v19, v12, MEMORY[0x277D84F98], v17);
    }
  }

  v43 = v39;
  if (*(v38 + 24) >= v42)
  {
    if ((v23 & 1) == 0)
    {
      sub_217E59190();
    }

    goto LABEL_22;
  }

  sub_217E491E0(v42, v23);
  v44 = sub_217E3722C(v14);
  if ((v43 & 1) != (v45 & 1))
  {
LABEL_31:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v4 = v44;
LABEL_22:
  v46 = *(isUniquelyReferenced_nonNull_native + 8 * v19);
  *(isUniquelyReferenced_nonNull_native + 8 * v19) = v51;

  v47 = *(isUniquelyReferenced_nonNull_native + 8 * v19);
  if ((v43 & 1) == 0)
  {
    sub_217E4921C(v4, v34, v13, v14, MEMORY[0x277D84F90], v47);
  }

  v48 = *(v47 + 56);
  v49 = *(v48 + 8 * v4);
  *(v48 + 8 * v4) = v5;
}

uint64_t sub_217E514D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7)
{
  v85 = a4;
  v82 = a7;
  v83 = a1;
  v86 = a3;
  v10 = type metadata accessor for ScopeGraphElement.ID(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NonmutatingFunction();
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for VertexUpdate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v80 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v78 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v78 - v23;
  v25 = *v85;
  v26 = v83;
  v83 = a6;
  v27 = nullsub_1(v26, a2, a5, a6);
  v29 = v28;
  sub_217E35F40(v86, v13, type metadata accessor for ScopeGraphElement.ID);
  v88[0] = v27;
  v88[1] = v29;
  sub_217E36108(v13, v88, v14, v24);
  v85 = v15;
  v86 = v16;
  v30 = *(v16 + 16);
  WitnessTable = v24;
  v82 = v22;
  v31 = v24;
  v32 = v84;
  v30(v22, v31, v15);

  v33 = *(v32 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = *(v32 + 72);
  v35 = v88[0];
  v36 = v25;
  v38 = sub_217E33C18(v25);
  v39 = v35[2];
  v40 = (v37 & 1) == 0;
  v41 = v39 + v40;
  if (__OFADD__(v39, v40))
  {
    __break(1u);
    goto LABEL_25;
  }

  LOBYTE(v42) = v37;
  if (v35[3] >= v41)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    sub_217E489A4(v41, isUniquelyReferenced_nonNull_native);
    v35 = v88[0];
    v43 = sub_217E33C18(v25);
    if ((v42 & 1) != (v44 & 1))
    {
      sub_217E70944();
      __break(1u);
      goto LABEL_29;
    }

    v38 = v43;
  }

  while (1)
  {
    v83 = v29;
    *(v32 + 72) = v35;
    if ((v42 & 1) == 0)
    {
      sub_217E362BC(v38, v36, MEMORY[0x277D84F98], v35);
    }

    v29 = v35[7];
    v45 = *(v29 + 8 * v38);
    sub_217E36EF4();
    v47 = *(v45 + 16);
    v79 = v30;
    if (v47 && (v48 = sub_217E3722C(v46), (v49 & 1) != 0))
    {
      v30 = *(*(v45 + 56) + 8 * v48);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v88[0] = v30;
    if ((v50 & 1) == 0)
    {
LABEL_25:
      v30 = sub_217E48C44(0, *(v30 + 2) + 1, 1, v30);
      v88[0] = v30;
    }

    v51 = v86;
    v53 = *(v30 + 2);
    v52 = *(v30 + 3);
    if (v53 >= v52 >> 1)
    {
      v30 = sub_217E48C44((v52 > 1), v53 + 1, 1, v30);
      v88[0] = v30;
    }

    v54 = v80;
    v55 = v82;
    v56 = v85;
    v79(v80, v82, v85);
    v57 = swift_getWitnessTable();
    sub_217E48E10(v53, v54, v88, v56, v57);
    v58 = v56;
    v59 = *(v51 + 8);
    v86 = v51 + 8;
    v59(v55, v58);
    v84 = sub_217E36EF4();
    v36 = v60;
    v62 = v61;
    v63 = *(v29 + 8 * v38);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v29 + 8 * v38);
    v64 = v87;
    *(v29 + 8 * v38) = 0x8000000000000000;
    v42 = sub_217E3722C(v62);
    v66 = *(v64 + 16);
    v67 = (v65 & 1) == 0;
    v68 = v66 + v67;
    if (!__OFADD__(v66, v67))
    {
      break;
    }

    __break(1u);
LABEL_27:
    sub_217E59024();
    v35 = v88[0];
  }

  v69 = v65;
  if (*(v64 + 24) >= v68)
  {
    if ((v32 & 1) == 0)
    {
      sub_217E59190();
    }

    goto LABEL_21;
  }

  sub_217E491E0(v68, v32);
  v70 = sub_217E3722C(v62);
  if ((v69 & 1) != (v71 & 1))
  {
LABEL_29:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v42 = v70;
LABEL_21:
  v72 = WitnessTable;
  v73 = *(v29 + 8 * v38);
  *(v29 + 8 * v38) = v87;

  v74 = *(v29 + 8 * v38);
  if ((v69 & 1) == 0)
  {
    sub_217E4921C(v42, v84, v36, v62, MEMORY[0x277D84F90], *(v29 + 8 * v38));
  }

  v75 = *(v74 + 56);
  v76 = *(v75 + 8 * v42);
  *(v75 + 8 * v42) = v30;

  return (v59)(v72, v85);
}

uint64_t sub_217E51A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6)
{
  v11 = *a5;
  type metadata accessor for SourceVertex();
  v12 = sub_217E6D558(a1);
  v14 = v11;
  sub_217E38428(v12, a2, a3, a4, &v14, a6);
}

uint64_t sub_217E51AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v35 = a2;
  v36 = a3;
  v10 = type metadata accessor for ScopeGraphElement.ID(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E345F8(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = *a4;
  v23 = *(v6 + 40);
  if (*(v23 + 16) && (v24 = sub_217E33C18(v22), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);

    if (!*(v26 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v26 = MEMORY[0x277D84F98];
    if (!*(MEMORY[0x277D84F98] + 16))
    {
      goto LABEL_8;
    }
  }

  v27 = sub_217E3960C(a1, v35, v36);
  if (v28)
  {
    sub_217E35F40(*(v26 + 56) + *(v11 + 72) * v27, v21, type metadata accessor for ScopeGraphElement.ID);
    (*(v11 + 56))(v21, 0, 1, v10);
    goto LABEL_9;
  }

LABEL_8:
  (*(v11 + 56))(v21, 1, 1, v10);
LABEL_9:
  sub_217E39C30(v21, v19, sub_217E345F8);
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    sub_217E70364();
    sub_217E3477C(v19, sub_217E345F8);
  }

  else
  {
    sub_217E39C30(v19, a5, type metadata accessor for ScopeGraphElement.ID);
  }

  sub_217E35F40(a5, v14, type metadata accessor for ScopeGraphElement.ID);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v26;
  sub_217E39484(v14, a1, v35, v36, isUniquelyReferenced_nonNull_native);
  v30 = v37;

  v31 = *(v6 + 40);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v6 + 40);
  sub_217E5B858(v30, v22, v32);

  *(v6 + 40) = v37;
  return result;
}

uint64_t sub_217E51DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *a5;
  type metadata accessor for SourceVertex();
  v14 = sub_217E6D558(a1);
  v16 = v13;
  sub_217E51EA8(v14, a2, a3, a4, &v16, a6, a7);
}

uint64_t sub_217E51EA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v74 = a4;
  v75 = a6;
  v72 = a5;
  v68 = a2;
  v69 = a3;
  v10 = *a1;
  sub_217E38B58(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ScopeGraphElement.ID(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ScopeGraphElement(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v10 + 80);
  v73 = *(v23 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v64 - v25;
  sub_217E38B24(0);
  v66 = v27;
  v76 = *(v27 - 8);
  v28 = *(v76 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v65 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v64 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v64 - v34;
  v72 = *v72;
  v81[0] = v72;
  sub_217E51AF0(v68, v69, v74, v81, a7);
  v74 = v7;
  v36 = v7 + 8;
  v37 = *(v7 + 8);
  v69 = v36;
  v70 = v23;
  v38 = *(v37 + 16);
  v71 = v26;
  v77 = a7;
  if (!v38)
  {
    goto LABEL_6;
  }

  v39 = sub_217E3A780(a7);
  if ((v40 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_217E35F40(*(v37 + 56) + *(v76 + 72) * v39, v33, sub_217E38B24);
  sub_217E39C30(v33, v35, sub_217E38B24);
  sub_217E33AD0(&v35[*(v18 + 24)], v81);
  sub_217E3374C(0, &qword_2811B0B18);
  v41 = *(v75 + 8);
  type metadata accessor for RuleVertex();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_217E3477C(v35, sub_217E38B24);
LABEL_6:
    sub_217E35F40(a7, v17, type metadata accessor for ScopeGraphElement.ID);
    v46 = *(v75 + 8);
    v81[3] = type metadata accessor for RuleVertex();
    v81[4] = swift_getWitnessTable();
    v81[0] = a1;
    v47 = *(v18 + 20);
    sub_217E35F40(v17, v22 + v47, type metadata accessor for ScopeGraphElement.ID);
    sub_217E33AD0(v81, v22 + *(v18 + 24));
    v78 = 0;
    v79 = 0xE000000000000000;

    sub_217E70814();

    v78 = 4015177;
    v79 = 0xE300000000000000;
    v48 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
    MEMORY[0x21CEADE80](v48);

    MEMORY[0x21CEADE80](0x7B3D61746144202CLL, 0xE900000000000020);
    v50 = a1[2];
    v49 = a1[3];
    v45 = a1;

    MEMORY[0x21CEADE80](v50, v49);

    MEMORY[0x21CEADE80](32032, 0xE200000000000000);
    v51 = v78;
    v52 = v79;
    sub_217E3477C(v17, type metadata accessor for ScopeGraphElement.ID);
    *v22 = v51;
    v22[1] = v52;
    sub_217E364B4(v81);
    v53 = v65;
    sub_217E35F40(v22, v65, type metadata accessor for ScopeGraphElement);
    sub_217E35F40(v22 + v47, v17, type metadata accessor for ScopeGraphElement.ID);
    v54 = v67;
    sub_217E39C30(v53, v67, sub_217E38B24);
    (*(v76 + 56))(v54, 0, 1, v66);
    sub_217E39EA0(v54, v17);
    sub_217E3477C(v22, type metadata accessor for ScopeGraphElement);
    v43 = v73;
    goto LABEL_7;
  }

  v42 = *(*a1 + 104);
  swift_beginAccess();
  v43 = v73;
  (*(v73 + 16))(v26, a1 + v42, v23);
  sub_217E5C154(v26);

  v44 = v23;
  v45 = a1;
  (*(v43 + 8))(v26, v44);
  sub_217E3477C(v35, sub_217E38B24);
  v46 = v41;
LABEL_7:
  v55 = v45;
  v56 = *(*v45 + 104);
  swift_beginAccess();
  v76 = *(v43 + 16);
  v57 = v45 + v56;
  v58 = v70;
  v59 = v71;
  (v76)(v71, v57, v70);
  v60 = v72;
  v80 = v72;
  v61 = v74;
  sub_217E3B178(v59, &v80, v77, v74, v58, v46);
  v62 = *(v43 + 8);
  v62(v59, v58);
  (v76)(v59, v55 + v56, v58);
  v80 = v60;
  sub_217E3B688(v59, &v80, v77, v61, v58, v46);
  return (v62)(v59, v58);
}

uint64_t sub_217E525B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v15 = *a6;
  type metadata accessor for EquatableSourceVertex();
  v16 = sub_217E430CC(a1, a5);
  v18 = v15;
  sub_217E51EA8(v16, a2, a3, a4, &v18, a7, a8);
}

uint64_t sub_217E52684@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v11 = v5[3];
  v22 = v5[2];
  v23 = v11;
  v24 = v5[4];
  v12 = v5[1];
  v20 = *v5;
  v21 = v12;
  v13 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_217E65828(a3, a1, a3, a4);
  v19 = v10;
  sub_217E40624(v15, v16, v17, &v19, AssociatedTypeWitness, a5);
}

uint64_t sub_217E5276C(uint64_t a1)
{
  sub_217E52E64(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E3C8CC(0);
  v8 = v7;
  v44 = *(v7 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = type metadata accessor for ScopeGraphElement.ID(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  sub_217E35F40(a1, &v39 - v20, type metadata accessor for ScopeGraphElement.ID);
  result = sub_217E5717C(0, v21);
  v43 = v1;
  v23 = *(v1 + 8);
  if (*(v23 + 16))
  {
    result = sub_217E3A780(a1);
    if (v24)
    {
      v41 = v8;
      v25 = *(*(v23 + 56) + 8 * result);
      sub_217E35F40(a1, v21, type metadata accessor for ScopeGraphElement.ID);

      result = sub_217E5717C(0, v21);
      v26 = 0;
      v28 = v25 + 56;
      v27 = *(v25 + 56);
      v42 = v25;
      v29 = 1 << *(v25 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v31 = v30 & v27;
      v32 = (v29 + 63) >> 6;
      v40 = (v44 + 56);
      while (v31)
      {
        v35 = v26;
LABEL_13:
        v36 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        sub_217E35F40(*(v42 + 48) + *(v44 + 72) * (v36 | (v35 << 6)), v14, sub_217E3C8CC);
        sub_217E39C30(v14, v12, sub_217E3C8CC);
        sub_217E35F40(v12, v19, type metadata accessor for ScopeGraphElement.ID);
        v37 = sub_217E52BAC(v45, v19);
        if (*v38)
        {
          sub_217E534D4(v6);
          sub_217E3477C(v6, sub_217E52E64);
          (v37)(v45, 0);
          sub_217E3477C(v19, type metadata accessor for ScopeGraphElement.ID);
          v33 = sub_217E3C8CC;
          v34 = v12;
        }

        else
        {
          (v37)(v45, 0);
          sub_217E3477C(v19, type metadata accessor for ScopeGraphElement.ID);
          sub_217E3477C(v12, sub_217E3C8CC);
          (*v40)(v6, 1, 1, v41);
          v33 = sub_217E52E64;
          v34 = v6;
        }

        result = sub_217E3477C(v34, v33);
        v26 = v35;
      }

      while (1)
      {
        v35 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v35 >= v32)
        {
        }

        v31 = *(v28 + 8 * v35);
        ++v26;
        if (v31)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void (*sub_217E52BAC(uint64_t *a1, uint64_t a2))(void *a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for ScopeGraphElement.ID(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_217E35F40(a2, v8, type metadata accessor for ScopeGraphElement.ID);
  v6[5] = sub_217E53B34(v6, v9);
  return sub_217E52C88;
}

void sub_217E52C88(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_217E3477C(v2, type metadata accessor for ScopeGraphElement.ID);
  free(v2);

  free(v1);
}

uint64_t sub_217E52CF8(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_217E52E98(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_217E52F88(v11, v6, v4, a2);
  result = MEMORY[0x21CEAE800](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_217E52E98(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) == a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_217E53010(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_217E53010(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_217E52F88(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_217E52E98(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_217E53010(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_217E53FA8();
  result = sub_217E708D4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v28 = *(*(v4 + 56) + 8 * v16);
    v18 = *(v9 + 40);
    sub_217E709A4();
    MEMORY[0x21CEAE230](v17);
    result = sub_217E709D4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v28;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_217E532CC(uint64_t (*a1)(void), void (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v30 = a4;
  v7 = v4;
  v8 = a1(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v29 - v11;
  a2(0);
  v13 = *v4;
  v14 = sub_217E707D4();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v7;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v9 + 72) * (v25 | (v19 << 6));
        sub_217E35F40(*(v13 + 48) + v28, v12, a3);
        result = sub_217E39C30(v12, *(v15 + 48) + v28, v30);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v29;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v15;
  }

  return result;
}

uint64_t sub_217E534D4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  sub_217E3C8CC(0);
  v3 = v2;
  v27 = *(v2 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  v7 = *v1;
  v8 = *(*v1 + 40);
  sub_217E709A4();
  sub_217E70374();
  sub_217E447D0(&qword_2811B1818, MEMORY[0x277CC95F0]);
  sub_217E70594();
  v28 = v3;
  v9 = *(v3 + 28);
  sub_217E70594();
  v10 = sub_217E709D4();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return (*(v27 + 56))(v26, 1, 1, v28);
  }

  v13 = ~v11;
  v14 = *(v27 + 72);
  while (1)
  {
    sub_217E35F40(*(v7 + 48) + v14 * v12, v6, sub_217E3C8CC);
    if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
    {
      break;
    }

    sub_217E3477C(v6, sub_217E3C8CC);
LABEL_4:
    v12 = (v12 + 1) & v13;
    if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return (*(v27 + 56))(v26, 1, 1, v28);
    }
  }

  v15 = *(v28 + 28);
  v16 = _s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0();
  sub_217E3477C(v6, sub_217E3C8CC);
  if ((v16 & 1) == 0)
  {
    goto LABEL_4;
  }

  v17 = v25;
  v18 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v17;
  v29 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217E532CC(sub_217E3C8CC, sub_217E45448, sub_217E3C8CC, sub_217E3C8CC);
    v20 = v29;
  }

  v21 = *(v20 + 48) + v14 * v12;
  v22 = v26;
  sub_217E39C30(v21, v26, sub_217E3C8CC);
  sub_217E537F0(v12);
  *v17 = v29;
  return (*(v27 + 56))(v22, 0, 1, v28);
}

uint64_t sub_217E537F0(unint64_t a1)
{
  sub_217E3C8CC(0);
  v34 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = a1;
    v15 = sub_217E707C4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v16 = (v15 + 1) & v12;
      v17 = *(v4 + 72);
      v31 = v17;
      v32 = v9;
      v18 = v33;
      do
      {
        v19 = v17 * v11;
        sub_217E35F40(*(v8 + 48) + v17 * v11, v18, sub_217E3C8CC);
        v20 = v8;
        v21 = *(v8 + 40);
        sub_217E709A4();
        sub_217E70374();
        sub_217E447D0(&qword_2811B1818, MEMORY[0x277CC95F0]);
        v22 = v16;
        sub_217E70594();
        v23 = v18 + *(v34 + 28);
        sub_217E70594();
        v24 = sub_217E709D4();
        sub_217E3477C(v18, sub_217E3C8CC);
        v25 = v24 & v12;
        v16 = v22;
        if (v14 >= v22)
        {
          if (v25 < v22)
          {
            v8 = v20;
            v17 = v31;
            goto LABEL_5;
          }

          v8 = v20;
          v17 = v31;
          if (v14 < v25)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v8 = v20;
          v17 = v31;
          if (v25 < v16 && v14 < v25)
          {
            goto LABEL_5;
          }
        }

        v26 = v17 * v14;
        if (v17 * v14 < v19 || *(v8 + 48) + v17 * v14 >= (*(v8 + 48) + v19 + v17))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        v14 = v11;
        if (v26 != v19)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          v14 = v11;
        }

LABEL_5:
        v11 = (v11 + 1) & v12;
        v9 = v32;
      }

      while (((*(v32 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v14) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v27 = *(v8 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v29;
    ++*(v8 + 36);
  }

  return result;
}

void (*sub_217E53B34(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x58uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(*(type metadata accessor for ScopeGraphElement.ID(0) - 8) + 64);
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v7[8] = v9;
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_217E35F40(a2, v10, type metadata accessor for ScopeGraphElement.ID);
  v7[9] = sub_217E53F74(v7);
  v7[10] = sub_217E53CC0(v7 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_217E53C30;
}

void sub_217E53C30(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_217E3477C(v3, type metadata accessor for ScopeGraphElement.ID);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_217E53CC0(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = *(type metadata accessor for ScopeGraphElement.ID(0) - 8);
  *(v10 + 24) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 32) = v12;
  v13 = *v4;
  v14 = sub_217E3A780(a2);
  *(v10 + 48) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_217E459E0();
      v14 = v22;
      goto LABEL_14;
    }

    sub_217E44260(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_217E3A780(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 40) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_217E53E6C;
}

void sub_217E53E6C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 48);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[5];
    if ((*a1)[6])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[4];
      sub_217E35F40(v1[1], v8, type metadata accessor for ScopeGraphElement.ID);
      sub_217E44C38(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[6])
  {
    v6 = v1[5];
    v7 = *v1[2];
    sub_217E3477C(*(v7 + 48) + *(v1[3] + 72) * v6, type metadata accessor for ScopeGraphElement.ID);
    sub_217E5ABC8(v6, v7);
  }

  v9 = v1[4];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*sub_217E53F74(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_217E53F9C;
}

void sub_217E53FA8()
{
  if (!qword_2811B0908)
  {
    sub_217E34278();
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B0908);
    }
  }
}

unint64_t sub_217E5403C()
{
  result = qword_27CBF23B8;
  if (!qword_27CBF23B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CBF23B8);
  }

  return result;
}

void sub_217E54088()
{
  if (!qword_27CBF23C0)
  {
    v0 = sub_217E706B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF23C0);
    }
  }
}

unint64_t sub_217E540D8()
{
  result = qword_27CBF23D0;
  if (!qword_27CBF23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF23D0);
  }

  return result;
}

uint64_t sub_217E5419C(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_217E705D4();
}

uint64_t sub_217E54284(uint64_t a1)
{
  sub_217E709A4();
  v2 = *(a1 + 16);
  sub_217E70594();
  return sub_217E709D4();
}

uint64_t sub_217E542E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return sub_217E54254();
}

uint64_t sub_217E542FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_217E709A4();
  sub_217E5427C(v6, a2);
  return sub_217E709D4();
}

uint64_t DependencyEnvironment.dependencies.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DependencyEnvironment() + 20);

  return sub_217E54394(v3, a1);
}

uint64_t sub_217E54394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dependencies();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DependencyEnvironment.resolveDependency<A, B>(_:disambiguation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = v6[3];
  v12 = v6[4];
  sub_217E37F28(v6, v11);
  return (*(v12 + 16))(a3, a2, a3, a4, a5, v11, v12);
}

uint64_t sub_217E54648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_217E54754()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_217E5477C(uint64_t *a1, int a2)
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

uint64_t sub_217E547C4(uint64_t result, int a2, int a3)
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

uint64_t sub_217E54800(uint64_t a1)
{
  sub_217E70814();

  v2 = *(a1 + 16);
  v3 = sub_217E70A34();
  MEMORY[0x21CEADE80](v3);

  MEMORY[0x21CEADE80](0x786574726556202CLL, 0xE90000000000003DLL);
  v4 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
  MEMORY[0x21CEADE80](v4);

  return 0x3D646E616D6D6F43;
}

uint64_t sub_217E548CC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v9 = *a1;
  v11 = a1[1];
  sub_217E4A514(v3, v15);
  if (!v16)
  {
    return sub_217E54A0C(v15);
  }

  sub_217E38C20();
  v10 = *(a3 + 16);
  swift_getExtendedExistentialTypeMetadata();
  result = swift_dynamicCast();
  if (result)
  {
    if (v18)
    {
      sub_217E33C00(&v17, v19);
      v7 = v20;
      v8 = v21;
      sub_217E54AC0(v19, v20);
      (*(v8 + 24))(a2, v7, v8);
      return sub_217E364B4(v19);
    }
  }

  return result;
}

uint64_t sub_217E54A0C(uint64_t a1)
{
  sub_217E54A68();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217E54A68()
{
  if (!qword_27CBF23D8)
  {
    sub_217E38C20();
    v0 = sub_217E70794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF23D8);
    }
  }
}

uint64_t sub_217E54AC0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_217E54B38(uint64_t a1, uint64_t a2)
{
  sub_217E706D4();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_217E56AB0(v10);
    if (v2)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return isEscapingClosureAtFileLocation;
      }

      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = v10[0];
      v7 = swift_isEscapingClosureAtFileLocation();

      if ((v7 & 1) == 0)
      {
        return isEscapingClosureAtFileLocation;
      }
    }

    __break(1u);
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_217E70814();
  MEMORY[0x21CEADE80](0xD00000000000003FLL, 0x8000000217E73C20);
  v9 = sub_217E70A34();
  MEMORY[0x21CEADE80](v9);

  MEMORY[0x21CEADE80](46, 0xE100000000000000);
  result = sub_217E708A4();
  __break(1u);
  return result;
}

uint64_t sub_217E54CF8(uint64_t a1, uint64_t a2)
{
  sub_217E706D4();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_217E56AF4();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_217E70814();
    MEMORY[0x21CEADE80](0xD00000000000003FLL, 0x8000000217E73C20);
    v8 = sub_217E70A34();
    MEMORY[0x21CEADE80](v8);

    MEMORY[0x21CEADE80](46, 0xE100000000000000);
    result = sub_217E708A4();
    __break(1u);
  }

  return result;
}

uint64_t *sub_217E54E80()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_217E56874(v0[2]);
  v5 = v0[7];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_217E54EB0()
{
  v0 = sub_217E54E80();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

double sub_217E54EE0()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  return result;
}

uint64_t sub_217E54F10@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_217E703C4();
  *a1 = result;
  return result;
}

uint64_t sub_217E54F60@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_217E70474();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v9 = *(v1 + 8);
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v13 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v12;
    a1[3] = v11;
    a1[4] = v13;
  }

  else
  {
    v17 = v6;

    sub_217E70784();
    v15 = sub_217E704C4();
    sub_217E70384();

    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E4F180(v10, v9, v12, v11, v13, 0);
    return (*(v4 + 8))(v8, v17);
  }
}

uint64_t sub_217E5511C()
{
  type metadata accessor for Truth.Storage();
  swift_getWitnessTable();
  return sub_217E703D4();
}

uint64_t sub_217E55190(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Truth.Storage();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282130840](v2, v3, v4, v7, WitnessTable);
}

uint64_t Truth.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = *(v6 + *MEMORY[0x277D84DE8] + 8);
  *(v7 + 24) = a2;
  result = sub_217E5511C();
  *(a3 + 48) = result;
  *(a3 + 56) = v9;
  *(a3 + 64) = v10 & 1;
  *(a3 + 72) = a1;
  return result;
}

double sub_217E552E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for Truth.Storage();
  v3 = swift_allocObject();
  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  return result;
}

uint64_t Truth.wrappedValue.getter(uint64_t a1)
{
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v4 = *v1;
  v5 = v1[1];
  v2 = *(sub_217E55190(a1) + 56);
  swift_unknownObjectRetain();

  if (v2)
  {
    return v2;
  }

  result = sub_217E708A4();
  __break(1u);
  return result;
}

uint64_t Truth.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Truth.wrappedValue.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Truth.Wrapper.subscript.getter(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *v2;
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v8 = *(a2 + 24);
  v7[4] = v8;
  v7[5] = v6;
  v7[6] = a1;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = v6;
  v9[6] = a1;
  v10 = *(v5 + *MEMORY[0x277D84568] + 8);
  swift_unknownObjectRetain_n();
  swift_retain_n();

  return MEMORY[0x2821339D8](sub_217E55604, v7, sub_217E5576C, v9, v10);
}

uint64_t sub_217E5551C@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v8 = a1;
  swift_unknownObjectRetain();
  v5 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x277D84568] + 8) - 8) + 16))(a3);
  v5(v7, 0);
  return swift_unknownObjectRelease();
}

uint64_t sub_217E55604@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_217E5551C(*(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_217E55614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(*(*(*a5 + *MEMORY[0x277D84568] + 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(v10 - v7);
  v10[1] = a4;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_217E55724()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return swift_deallocObject();
}

Swift::Void __swiftcall Truth.update()()
{
  v2 = v0;
  sub_217E56B6C(0, qword_27CBF23E0, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20[-v5];
  v7 = v1[2];
  v8 = v1[4];
  v25 = v1[3];
  v26 = v8;
  v9 = *v1;
  v23 = v1[1];
  v24 = v7;
  v22 = v9;
  if ([objc_opt_self() isMainThread])
  {
    sub_217E706E4();
    v10 = v1[3];
    v21[2] = v1[2];
    v21[3] = v10;
    v21[4] = v1[4];
    v11 = v1[1];
    v21[0] = *v1;
    v21[1] = v11;
    v12 = sub_217E559B8(v21, *(v2 + 16), *(v2 + 24));
    v14 = v13;
    *&v20[-16] = MEMORY[0x28223BE20](v12);
    *&v20[-8] = v14;
    sub_217E54CF8(sub_217E5614C, &v20[-32]);
  }

  else
  {
    v15 = sub_217E70704();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v17 = v24;
    v18 = v22;
    *(v16 + 64) = v23;
    *(v16 + 80) = v17;
    v19 = v26;
    *(v16 + 96) = v25;
    *(v16 + 112) = v19;
    *(v16 + 32) = *(v2 + 16);
    *(v16 + 48) = v18;
    (*(*(v2 - 8) + 16))(v21, &v22, v2);
    sub_217E55E28(0, 0, v6, &unk_217E718E0, v16);
  }
}

uint64_t (*sub_217E559B8(_OWORD *a1, uint64_t a2, uint64_t a3))()
{
  v6 = a1[3];
  v14[2] = a1[2];
  v14[3] = v6;
  v14[4] = a1[4];
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = a1[3];
  *(v8 + 64) = a1[2];
  *(v8 + 80) = v9;
  *(v8 + 96) = a1[4];
  v10 = a1[1];
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  v11 = type metadata accessor for Truth();
  (*(*(v11 - 8) + 16))(&v13, v14, v11);
  return sub_217E56B1C;
}

uint64_t sub_217E55A98(uint64_t a1)
{
  v8 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  v4 = *v1;
  v6 = v1[1];
  result = sub_217E56174(a1);
  if (result)
  {
    v9 = v1[2];
    v11 = v1[3];
    v13 = v1[4];
    v5 = *v1;
    v7 = v1[1];
    return sub_217E562C8(a1);
  }

  return result;
}

uint64_t sub_217E55B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_217E55B38, 0, 0);
}

uint64_t sub_217E55B38()
{
  sub_217E706E4();
  *(v0 + 40) = sub_217E706D4();
  v2 = sub_217E706C4();

  return MEMORY[0x2822009F8](sub_217E55BCC, v2, v1);
}

uint64_t sub_217E55BCC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v8 = *v4;
  v9 = v4[1];
  v5 = type metadata accessor for Truth();
  sub_217E55A98(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_217E55C70(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_217E55D34;

  return sub_217E55B14(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_217E55D34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_217E55E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217E56B6C(0, qword_27CBF23E0, MEMORY[0x277D85720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_217E56C6C(a3, v27 - v11);
  v13 = sub_217E70704();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_217E337A8(v12, qword_27CBF23E0, MEMORY[0x277D85720]);
  }

  else
  {
    sub_217E706F4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_217E706C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_217E705E4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_217E337A8(a3, qword_27CBF23E0, MEMORY[0x277D85720]);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_217E337A8(a3, qword_27CBF23E0, MEMORY[0x277D85720]);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_217E5614C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_217E56174(uint64_t a1)
{
  v2 = v1[3];
  v20 = v1[2];
  v21 = v2;
  v22 = v1[4];
  v3 = v1[1];
  v18 = *v1;
  v19 = v3;
  v4 = sub_217E55190(a1);
  v5 = v4[2];
  v7 = v4[4];
  v6 = v4[5];
  v8 = v4[6];
  sub_217E56C1C(v5);

  if (v5)
  {
    v9 = v1[3];
    v20 = v1[2];
    v21 = v9;
    v22 = v1[4];
    v10 = v1[1];
    v18 = *v1;
    v19 = v10;
    sub_217E54F60(v17);
    v11 = v17[4];

    swift_beginAccess();
    v12 = *(v5 + 112);
    v13 = v8;
    while (*(v12 + 16))
    {
      v14 = sub_217E33C18(v13);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v13 = *(*(v12 + 56) + 8 * v14);
      if (v13 == v11)
      {
        sub_217E56874(v5);
        return 0;
      }
    }

    sub_217E56874(v5);
  }

  return 1;
}

uint64_t sub_217E562C8(uint64_t a1)
{
  v42 = type metadata accessor for Dependencies();
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v40 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v1[1];
  v6 = v1[3];
  v64 = v1[2];
  v65 = v6;
  v7 = v1[1];
  v62 = *v1;
  v63 = v7;
  v8 = v1[3];
  v53 = v64;
  v54 = v8;
  v9 = *(v1 + 9);
  v66 = *(v1 + 8);
  v10 = *(v1 + 8);
  v51 = v62;
  v52 = v5;
  v55 = v10;
  v56 = v9;
  v11 = v9;
  sub_217E54F60(v50);
  v12 = v50[0];
  v13 = v50[1];
  v14 = v50[2];
  v15 = v50[3];
  v16 = v50[4];
  v57 = 0;
  v58 = 0xE000000000000000;
  v17 = sub_217E70A34();
  MEMORY[0x21CEADE80](v17);

  MEMORY[0x21CEADE80](8250, 0xE200000000000000);
  v45 = v11;
  v38 = v11;
  v39 = a1;
  v18 = *(a1 + 16);
  sub_217E70A24();
  sub_217E70914();
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  Scope.subscope(dependencyContainer:tag:)(v43, v57, v58, &v57);

  sub_217E337A8(v43, &qword_2811B0F90, sub_217E42344);

  v19 = v57;
  v20 = v58;
  v37 = v59;
  v41 = v60;
  v21 = v61;
  v53 = v64;
  v54 = v65;
  v51 = v62;
  v52 = v63;
  v55 = v66;
  v56 = v11;
  v22 = sub_217E55190(a1);
  v24 = v22[2];
  v23 = v22[3];
  v25 = v22[4];
  v26 = v22[5];
  v27 = v22[6];
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v37;
  v22[5] = v41;
  v22[6] = v21;

  sub_217E56874(v24);

  v28 = v42;
  v29 = *(v42 + 24);
  v30 = type metadata accessor for ScopeGraphElement.ID(0);
  v31 = v40;
  (*(*(v30 - 8) + 56))(v40 + v29, 1, 1, v30);
  v32 = *(v28 + 28);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v33 = swift_allocObject();
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0u;
  *(v33 + 48) = 0;
  *(v31 + v32) = v33;
  *v31 = v19;
  v31[1] = v21;
  v53 = v64;
  v54 = v65;
  v51 = v62;
  v52 = v63;
  v55 = v66;
  v56 = v38;

  v34 = sub_217E55190(v39);
  swift_getAtKeyPath();

  sub_217E56BC0(v31);
  v35 = *(v34 + 56);
  *(v34 + 56) = v57;

  return swift_unknownObjectRelease();
}

uint64_t sub_217E56624()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E5666C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E566B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E56784()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Scope.Error(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Scope.Error(uint64_t result, int a2, int a3)
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

uint64_t sub_217E56874(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217E568C0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_217E569B8;

  return v7(a1);
}

uint64_t sub_217E569B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_217E56AB0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_217E56AF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_217E56B1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v7 = *(v0 + 64);
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  v3 = type metadata accessor for Truth();
  return sub_217E55A98(v3);
}

void sub_217E56B6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_217E56BC0(uint64_t a1)
{
  v2 = type metadata accessor for Dependencies();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E56C1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217E56C6C(uint64_t a1, uint64_t a2)
{
  sub_217E56B6C(0, qword_27CBF23E0, MEMORY[0x277D85720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E56CEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_217E56E5C;

  return sub_217E568C0(a1, v5);
}

uint64_t sub_217E56DA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_217E55D34;

  return sub_217E568C0(a1, v5);
}

uint64_t ClosureValueConverter.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ClosureValueConverter.convert(value:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_217E56EA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_217E56F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_217E5B858(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_217E33C18(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_217E59748(&qword_2811B0900, sub_217E39094);
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_217E5AA34(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_217E570A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  if (a1)
  {
    v9 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    result = a3(a1, a2, isUniquelyReferenced_nonNull_native);
    *v4 = v20;
  }

  else
  {
    v13 = *v4;
    result = sub_217E33C18(a2);
    if (v14)
    {
      v15 = result;
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v21 = *v5;
      if (!v17)
      {
        a4();
        v18 = v21;
      }

      v19 = *(*(v18 + 56) + 8 * v15);

      result = sub_217E5AA34(v15, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_217E5717C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_217E5B6B4(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_217E36500(a2, type metadata accessor for ScopeGraphElement.ID);
    *v2 = v19;
  }

  else
  {
    v9 = *v2;
    v10 = sub_217E3A780(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v20 = *v3;
      if (!v14)
      {
        sub_217E459E0();
        v15 = v20;
      }

      v16 = *(v15 + 48);
      v17 = type metadata accessor for ScopeGraphElement.ID(0);
      sub_217E36500(v16 + *(*(v17 - 8) + 72) * v12, type metadata accessor for ScopeGraphElement.ID);
      v18 = *(*(v15 + 56) + 8 * v12);

      sub_217E5ABC8(v12, v15);
      result = sub_217E36500(a2, type metadata accessor for ScopeGraphElement.ID);
      *v3 = v15;
    }

    else
    {
      return sub_217E36500(a2, type metadata accessor for ScopeGraphElement.ID);
    }
  }

  return result;
}

uint64_t sub_217E572CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 24))
  {
    sub_217E33C00(a1, v12);
    v8 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    sub_217E5B99C(v12, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v11;
  }

  else
  {
    sub_217E33804(a1, &qword_27CBF2610, &qword_27CBF2608, &protocol descriptor for RegisteredDependency);
    sub_217E6CECC(a4, v12);

    return sub_217E33804(v12, &qword_27CBF2610, &qword_27CBF2608, &protocol descriptor for RegisteredDependency);
  }

  return result;
}

uint64_t sub_217E573C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_217E33C00(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_217E5BB20(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_217E33804(a1, &qword_27CBF2610, &qword_27CBF2608, &protocol descriptor for RegisteredDependency);
    v8 = *v2;
    v9 = sub_217E58E60(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_217E5A040();
        v14 = v16;
      }

      sub_217E33C00((*(v14 + 56) + 40 * v11), v17);
      sub_217E5B234(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_217E33804(v17, &qword_27CBF2610, &qword_27CBF2608, &protocol descriptor for RegisteredDependency);
  }

  return result;
}

uint64_t Scope.subscope(tag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 4);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  v11 = v4;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  Scope.subscope(dependencyContainer:tag:)(v7, a1, a2, a3);
  return sub_217E33804(v7, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer);
}

uint64_t Scope.dependenciesContainer.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[4];
  v5 = type metadata accessor for Dependencies();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = *(v5 + 28);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *&a1[v8] = v9;
  *a1 = v3;
  *(a1 + 1) = v4;
}

uint64_t sub_217E57624(void *a1, uint64_t a2)
{
  v4 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v22 - v8;
  v11 = (*v10 - 8);
  v12 = (*(*v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v14 = &v22 - v13;
  v15 = *v2;
  v16 = v2[4];
  v17 = v11[8];
  v18 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
  v19 = v11[9];
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v20 = swift_allocObject();
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0;
  *&v14[v19] = v20;
  *v14 = v15;
  *(v14 + 1) = v16;
  (*(v5 + 16))(v9, a2, v4);

  swift_setAtWritableKeyPath();
  return sub_217E36500(v14, type metadata accessor for Dependencies);
}

uint64_t sub_217E57810(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*a1 + *MEMORY[0x277D84308]);
  v8 = *(v7 - 8);
  v7 -= 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - v10;
  v12 = *v3;
  v13 = v3[4];
  v14 = *(v7 + 32);
  v15 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v15 - 8) + 56))(&v11[v14], 1, 1, v15);
  v16 = *(v7 + 36);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *&v11[v16] = v17;
  *v11 = v12;
  *(v11 + 1) = v13;

  sub_217E659E8(a1, a2, a3);
  return sub_217E36500(v11, type metadata accessor for Dependencies);
}

uint64_t sub_217E57980(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*a1 + *MEMORY[0x277D84308]);
  v8 = *(v7 - 8);
  v7 -= 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - v10;
  v12 = *v3;
  v13 = v3[4];
  v14 = *(v7 + 32);
  v15 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v15 - 8) + 56))(&v11[v14], 1, 1, v15);
  v16 = *(v7 + 36);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *&v11[v16] = v17;
  *v11 = v12;
  *(v11 + 1) = v13;

  sub_217E65BC0(a1, a2, a3);
  return sub_217E36500(v11, type metadata accessor for Dependencies);
}

uint64_t Scope.register<A, B>(source:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  v9 = v7[4];
  v11[2] = a4;
  v11[4] = a6;
  v11[5] = a7;
  v11[6] = a1;
  v11[7] = a2;
  v12 = v9;
  return sub_217E6A4E8(sub_217E5C120, v11, a5, &v12, a4, a5, a6, a7);
}

uint64_t Scope.register<A, B>(source:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v10 = v8[4];
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a1;
  v18 = a2;
  v19 = v10;
  return sub_217E6A590(sub_217E5C124, v12, a5, &v19, a4, a5, a6, a7, a8);
}

uint64_t Scope.register<A, B>(source:for:disambiguation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v10 = v8[4];
  v13 = a5;
  v14 = a7;
  v15 = a8;
  v16 = a1;
  v17 = a2;
  v18 = v10;
  return sub_217E6A730(sub_217E5B3B0, v12, a6, a4, &v18, a5, a6, a7, a8);
}

uint64_t Scope.register<A, B>(source:for:disambiguation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *v9;
  v11 = v9[4];
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a1;
  v19 = a2;
  v20 = v11;
  return sub_217E6A7E0(sub_217E5B3D8, v13, a6, a4, &v20, a5, a6, a7, a8, a9);
}

uint64_t Scope.install(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v5 = v1[4];
  v6 = v2;
  return sub_217E6A984(&v6, &v5);
}

uint64_t Scope.updateSource(id:)(uint64_t a1)
{
  v2 = *v1;
  v4 = v1[4];
  return sub_217E3A464(a1, &v4, 0);
}

unint64_t Scope.Error.description.getter()
{
  v1 = *v0;
  sub_217E70814();

  v2 = sub_217E70A34();
  MEMORY[0x21CEADE80](v2);

  return 0xD000000000000021;
}

unint64_t sub_217E57E84()
{
  v1 = *v0;
  sub_217E70814();

  v2 = sub_217E70A34();
  MEMORY[0x21CEADE80](v2);

  return 0xD000000000000021;
}

uint64_t Scope.customMirror.getter()
{
  v1 = sub_217E70A04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E393BC(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = v0[1];
  v11 = v0[2];
  v16 = *v0;
  v17 = v10;
  v18 = v11;
  v14 = *(v0 + 3);
  v19 = v14;
  v15 = MEMORY[0x277D84F90];
  v12 = sub_217E709F4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  sub_217E393BC(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();

  return sub_217E70A14();
}

uint64_t sub_217E58148()
{
  v1 = sub_217E70A04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E393BC(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = v0[1];
  v11 = v0[2];
  v16 = *v0;
  v17 = v10;
  v18 = v11;
  v14 = *(v0 + 3);
  v19 = v14;
  v15 = MEMORY[0x277D84F90];
  v12 = sub_217E709F4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  sub_217E393BC(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();

  return sub_217E70A14();
}

uint64_t Scope.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  sub_217E706E4();
  v3[2] = v4;
  return sub_217E54B38(sub_217E5B400, v3);
}

uint64_t sub_217E58414@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[4];
  swift_beginAccess();
  v5 = v3[6];
  v6 = v3[8];
  v22 = v3[7];
  v23 = v6;
  v7 = v3[6];
  v8 = v3[4];
  v20 = v3[5];
  v21 = v7;
  v19 = v3[4];
  v16 = v5;
  v17 = v22;
  v18 = v3[8];
  v14 = v8;
  v15 = v20;
  v13 = v4;
  sub_217E3438C(&v19, v24);
  v9 = sub_217E504DC(&v13);
  v11 = v10;
  v24[2] = v16;
  v24[3] = v17;
  v24[4] = v18;
  v24[0] = v14;
  v24[1] = v15;
  result = sub_217E347DC(v24);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_217E584EC()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  sub_217E706E4();
  v3[2] = v4;
  return sub_217E54B38(sub_217E5C0FC, v3);
}

uint64_t Scope.description.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v7 = v0[4];
  sub_217E5B41C();
  result = sub_217E707A4();
  if (v1)
  {
    v8 = v2;
    v5 = result;
    v6 = v4;

    MEMORY[0x21CEADE80](2108704, 0xE300000000000000);
    MEMORY[0x21CEADE80](v5, v6);

    return v8;
  }

  return result;
}

uint64_t Scope.ID.description.getter()
{
  v2 = *v0;
  sub_217E5B41C();
  return sub_217E707A4();
}

uint64_t sub_217E5864C()
{
  v2 = v0[2];
  v1 = v0[3];
  v7 = v0[4];
  sub_217E5B41C();
  result = sub_217E707A4();
  if (v1)
  {
    v8 = v2;
    v5 = result;
    v6 = v4;

    MEMORY[0x21CEADE80](2108704, 0xE300000000000000);
    MEMORY[0x21CEADE80](v5, v6);

    return v8;
  }

  return result;
}

uint64_t sub_217E58718()
{
  v2 = *v0;
  sub_217E5B41C();
  return sub_217E707A4();
}

uint64_t Scope.ID.hashValue.getter()
{
  v1 = *v0;
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  return sub_217E709D4();
}

uint64_t sub_217E587D0()
{
  v1 = *v0;
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  return sub_217E709D4();
}

uint64_t sub_217E58844()
{
  v1 = *v0;
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  return sub_217E709D4();
}

uint64_t sub_217E58888(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_217E58954(v11, 0, 0, 1, a1, a2);
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
    sub_217E5BFEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_217E364B4(v11);
  return v7;
}

unint64_t sub_217E58954(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_217E58A60(a5, a6);
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
    result = sub_217E70844();
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

uint64_t sub_217E58A60(uint64_t a1, unint64_t a2)
{
  v4 = sub_217E58AAC(a1, a2);
  sub_217E58BDC(&unk_2829CB040);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_217E58AAC(uint64_t a1, unint64_t a2)
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

  v6 = sub_217E58CC8(v5, 0);
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

  result = sub_217E70844();
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
        v10 = sub_217E70614();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_217E58CC8(v10, 0);
        result = sub_217E70804();
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

uint64_t sub_217E58BDC(uint64_t result)
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

  result = sub_217E58D54(result, v12, 1, v3);
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

void *sub_217E58CC8(uint64_t a1, uint64_t a2)
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

  sub_217E5C048(0, &qword_27CBF2650, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_217E58D54(char *result, int64_t a2, char a3, char *a4)
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
    sub_217E5C048(0, &qword_27CBF2650, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

unint64_t sub_217E58E60(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_217E70994();

  return sub_217E33C84(a1, v4);
}

void *sub_217E58EA4()
{
  v1 = v0;
  sub_217E3620C();
  v2 = *v0;
  v3 = sub_217E708B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_217E59024()
{
  v1 = v0;
  sub_217E38FB4(0, &qword_2811B0918, sub_217E48920);
  v2 = *v0;
  v3 = sub_217E708B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_217E591A8()
{
  v1 = v0;
  sub_217E38B24(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ScopeGraphElement.ID(0);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E45C3C(0, &qword_2811B0930, sub_217E38B24);
  v8 = *v0;
  v9 = sub_217E708B4();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v35 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = v31;
        v25 = *(v32 + 72) * v23;
        sub_217E3AF88(*(v8 + 48) + v25, v31, type metadata accessor for ScopeGraphElement.ID);
        v26 = v33;
        v27 = *(v34 + 72) * v23;
        sub_217E3AF88(*(v8 + 56) + v27, v33, sub_217E38B24);
        v28 = v35;
        sub_217E35CBC(v24, *(v35 + 48) + v25, type metadata accessor for ScopeGraphElement.ID);
        result = sub_217E35CBC(v26, *(v28 + 56) + v27, sub_217E38B24);
        v18 = v36;
      }

      while (v36);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v29;
        v10 = v35;
        goto LABEL_18;
      }

      v22 = *(v30 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v36 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_217E594AC()
{
  v1 = v0;
  v2 = type metadata accessor for ScopeGraphElement.ID(0);
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E5BE8C();
  v5 = *v0;
  v6 = sub_217E708B4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v12 = 0;
    v13 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v13;
    v14 = 1 << *(v5 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v5 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v5;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = 24 * v21;
        v23 = *(v5 + 56);
        v24 = (*(v5 + 48) + 24 * v21);
        v26 = *v24;
        v25 = v24[1];
        v27 = v24[2];
        v28 = v34;
        v29 = *(v35 + 72) * v21;
        sub_217E3AF88(v23 + v29, v34, type metadata accessor for ScopeGraphElement.ID);
        v30 = v36;
        v31 = (*(v36 + 48) + v22);
        *v31 = v26;
        v31[1] = v25;
        v5 = v33;
        v31[2] = v27;
        sub_217E35CBC(v28, *(v30 + 56) + v29, type metadata accessor for ScopeGraphElement.ID);

        v16 = v37;
      }

      while (v37);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v7 = v36;
        goto LABEL_21;
      }

      v20 = *(v9 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

void *sub_217E59748(unint64_t *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  sub_217E38FB4(0, a1, a2);
  v4 = *v2;
  v5 = sub_217E708B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_217E598A0()
{
  v1 = v0;
  sub_217E5C098(0, &qword_2811B08F8);
  v2 = *v0;
  v3 = sub_217E708B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_217E59A0C()
{
  v1 = v0;
  sub_217E5C098(0, &qword_2811B0908);
  v2 = *v0;
  v3 = sub_217E708B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_217E59B5C()
{
  v1 = v0;
  sub_217E49808();
  v2 = *v0;
  v3 = sub_217E708B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_217E33AD0(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_217E33C00(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_217E59CD0()
{
  v1 = v0;
  sub_217E5C098(0, &qword_27CBF25F0);
  v2 = *v0;
  v3 = sub_217E708B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_217E59E78(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = v4;
  sub_217E3632C(0, a1, a2);
  v7 = *v4;
  v8 = sub_217E708B4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v28 = v6;
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = 24 * v22;
        v24 = *(v7 + 48) + 24 * v22;
        v25 = *v24;
        v29 = *(v24 + 8);
        v26 = 40 * v22;
        sub_217E33AD0(*(v7 + 56) + 40 * v22, v30);
        v27 = *(v9 + 48) + v23;
        *v27 = v25;
        *(v27 + 8) = v29;
        a4(v30, *(v9 + 56) + v26);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v9;
  }

  return result;
}

void *sub_217E5A040()
{
  v1 = v0;
  sub_217E5BCD8(0, &qword_27CBF2618, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_217E708B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_217E33AD0(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_217E33C00(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_217E5A1E8(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_217E708B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(v3 + 48) + 24 * v18;
        v20 = *(*(v3 + 56) + 8 * v18);
        v21 = *(v5 + 48) + 24 * v18;
        v22 = *(v19 + 8);
        *v21 = *v19;
        *(v21 + 8) = v22;
        *(*(v5 + 56) + 8 * v18) = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_217E5A364(int64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for ScopeGraphElement.ID(0);
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v29);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_217E707C4();
    v30 = v12;
    v31 = (v13 + 1) & v12;
    v14 = *(v4 + 72);
    do
    {
      v15 = v14 * v11;
      sub_217E3AF88(*(a2 + 48) + v14 * v11, v8, type metadata accessor for ScopeGraphElement.ID);
      v16 = *(a2 + 40);
      sub_217E709A4();
      sub_217E70374();
      sub_217E3A834(&qword_2811B1818, MEMORY[0x277CC95F0]);
      sub_217E70594();
      v17 = sub_217E709D4();
      result = sub_217E36500(v8, type metadata accessor for ScopeGraphElement.ID);
      v18 = v17 & v12;
      if (a1 >= v31)
      {
        if (v18 >= v31 && a1 >= v18)
        {
LABEL_11:
          if (v14 * a1 < v15 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v15 + v14))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 * a1 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19 = *(a2 + 56);
          sub_217E38B24(0);
          v21 = *(*(v20 - 8) + 72);
          v22 = v21 * a1;
          result = v19 + v21 * a1;
          v23 = v21 * v11;
          v24 = v19 + v21 * v11 + v21;
          if (v22 < v23 || result >= v24)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v12 = v30;
          }

          else
          {
            a1 = v11;
            v12 = v30;
            if (v22 != v23)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v11;
            }
          }
        }
      }

      else if (v18 >= v31 || a1 >= v18)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_217E5A690(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 24 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      sub_217E709A4();
      MEMORY[0x21CEAE230](v11);

      sub_217E705F4();
      v14 = sub_217E709D4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v15 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v16 = *(a2 + 48);
      v17 = v16 + 24 * v3;
      v18 = (v16 + 24 * v6);
      if (v3 != v6 || v17 >= v18 + 24)
      {
        v19 = *v18;
        *(v17 + 16) = *(v18 + 2);
        *v17 = v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(type metadata accessor for ScopeGraphElement.ID(0) - 8) + 72);
      v22 = v21 * v3;
      result = v20 + v21 * v3;
      v23 = v21 * v6;
      v24 = v20 + v21 * v6 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v15 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_217E5A8A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v10);
      result = sub_217E709D4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_217E5AA34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v10);
      result = sub_217E709D4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_217E5ABC8(int64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for ScopeGraphElement.ID(0);
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v28);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_217E707C4() + 1) & ~v9;
    v13 = *(v4 + 72);
    v29 = a2 + 64;
    v14 = v30;
    do
    {
      v15 = v13;
      v16 = v13 * v10;
      sub_217E3AF88(*(a2 + 48) + v13 * v10, v14, type metadata accessor for ScopeGraphElement.ID);
      v17 = *(a2 + 40);
      sub_217E709A4();
      sub_217E70374();
      sub_217E3A834(&qword_2811B1818, MEMORY[0x277CC95F0]);
      sub_217E70594();
      v18 = sub_217E709D4();
      result = sub_217E36500(v14, type metadata accessor for ScopeGraphElement.ID);
      v19 = v18 & v11;
      if (a1 >= v12)
      {
        if (v19 < v12)
        {
          v8 = v29;
          v13 = v15;
          goto LABEL_4;
        }

        v13 = v15;
        if (a1 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v15;
        if (v19 >= v12 || a1 >= v19)
        {
LABEL_11:
          v20 = *(a2 + 48);
          result = v20 + v13 * a1;
          if (v13 * a1 < v16 || result >= v20 + v16 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v29;
          }

          else
          {
            v21 = v13 * a1 == v16;
            v8 = v29;
            if (!v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v22 = *(a2 + 56);
          v23 = (v22 + 8 * a1);
          v24 = (v22 + 8 * v10);
          if (a1 != v10 || v23 >= v24 + 1)
          {
            *v23 = *v24;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v29;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_217E5AEE0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v12);
      result = sub_217E709D4();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v3;
        v19 = (v17 + 40 * v6);
        if (v3 != v6 || v18 >= v19 + 40)
        {
          v9 = *v19;
          v10 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v9;
          *(v18 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_217E5B080(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 24 * v6 + 16);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v12);
      result = sub_217E709D4();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = v14 + 24 * v3;
        v16 = (v14 + 24 * v6);
        if (v3 != v6 || v15 >= v16 + 24)
        {
          v17 = *v16;
          *(v15 + 16) = *(v16 + 2);
          *v15 = v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v9 = *v20;
          v10 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v9;
          *(v19 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_217E5B234(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v6);
      v14 = *v13;
      result = sub_217E70994();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 >= v8 && v3 >= v15)
        {
LABEL_15:
          v18 = (v12 + 8 * v3);
          if (v3 != v6 || v18 >= v13 + 1)
          {
            *v18 = *v13;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 40 * v3;
          v21 = (v19 + 40 * v6);
          if (v3 != v6 || v20 >= v21 + 40)
          {
            v9 = *v21;
            v10 = v21[1];
            *(v20 + 32) = *(v21 + 4);
            *v20 = v9;
            *(v20 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v15 >= v8 || v3 >= v15)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_217E5B3B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_217E5B3D8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

unint64_t sub_217E5B41C()
{
  result = qword_27CBF25E8;
  if (!qword_27CBF25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF25E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Scope.ID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Scope.ID(uint64_t result, int a2, int a3)
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

uint64_t sub_217E5B55C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_217E33C18(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v23 = *v9;
    v14 = sub_217E33C18(a2);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v9;
  if (v20)
  {
    v26 = *(v25 + 56);
    v27 = *(v26 + 8 * v14);
    *(v26 + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2, a1, v25);
  }
}

uint64_t sub_217E5B6B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ScopeGraphElement.ID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_217E3A780(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_217E459E0();
      goto LABEL_7;
    }

    sub_217E44260(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_217E3A780(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_217E3AF88(a2, v11, type metadata accessor for ScopeGraphElement.ID);
      return sub_217E44C38(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

unint64_t sub_217E5B858(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_217E33C18(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_217E59748(&qword_2811B0900, sub_217E39094);
      v9 = v17;
      goto LABEL_8;
    }

    sub_217E38D14(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_217E33C18(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_217E36EB0(v9, a2, a1, v20);
  }
}

uint64_t sub_217E5B99C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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
      sub_217E59E78(&qword_27CBF2620, &qword_27CBF2608, &protocol descriptor for RegisteredDependency, sub_217E375D4);
      v13 = v21;
      goto LABEL_8;
    }

    sub_217E5D8A0(v18, a5 & 1);
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

uint64_t sub_217E5BB20(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_217E58E60(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_217E5A040();
      v9 = v17;
      goto LABEL_8;
    }

    sub_217E5D8D0(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_217E58E60(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    sub_217E364B4(v21);

    return sub_217E33C00(a1, v21);
  }

  else
  {

    return sub_217E49B18(v9, a2, a1, v20);
  }
}

void sub_217E5BC50()
{
  if (!qword_27CBF25F8)
  {
    sub_217E5BCD8(255, &qword_27CBF2600, MEMORY[0x277D834F8]);
    sub_217E37580();
    v0 = sub_217E708E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF25F8);
    }
  }
}

void sub_217E5BCD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_217E3374C(255, &qword_27CBF2608);
    v7 = a3(a1, MEMORY[0x277D83B88], v6, MEMORY[0x277D83B98]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}