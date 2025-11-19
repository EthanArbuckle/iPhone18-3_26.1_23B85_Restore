uint64_t sub_1CAEC5ED0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CAEC5F1C(a1, a2);
  sub_1CAEC604C(&unk_1F4AC9238);
  return v3;
}

uint64_t sub_1CAEC5F1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1CAECF1F0(v5, 0);
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

  result = sub_1CAEFA8FC();
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
        v10 = sub_1CAEFA53C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CAECF1F0(v10, 0);
        result = sub_1CAEFA8BC();
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

uint64_t sub_1CAEC604C(uint64_t result)
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

  result = sub_1CAEC6138(result, v11, 1, v3);
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

char *sub_1CAEC6138(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481E10);
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

void sub_1CAEC6254(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1CAEC628C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1CAEFA81C();

    if (v9)
    {

      sub_1CAEB33A4(0, &qword_1EDE9D118);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1CAEFA80C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1CAEC6670(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1CAEC6860();
    }

    v18 = v8;
    sub_1CAEC6D04(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1CAEB33A4(0, &qword_1EDE9D118);
  v11 = sub_1CAEFA75C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1CAEC6D88(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1CAEFA76C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1CAEC64C4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1CAEFA4EC();
  sub_1CAEFAAAC();
  sub_1CAEFA51C();
  v7 = sub_1CAEFAACC();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1CAEFA4EC();
      v13 = v12;
      if (v11 == sub_1CAEFA4EC() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1CAEFA9FC();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1CAEC6EF8(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1CAEC6670(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481E30);
    v2 = sub_1CAEFA89C();
    v14 = v2;
    sub_1CAEFA7FC();
    if (sub_1CAEFA82C())
    {
      sub_1CAEB33A4(0, &qword_1EDE9D118);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1CAEC6860();
        }

        v2 = v14;
        result = sub_1CAEFA75C();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1CAEFA82C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CAEC6860()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481E30);
  result = sub_1CAEFA88C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1CAEFA75C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1CAEC6A88()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481DE8);
  result = sub_1CAEFA88C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1CAEFA4EC();
      sub_1CAEFAAAC();
      sub_1CAEFA51C();
      v17 = sub_1CAEFAACC();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1CAEC6D04(uint64_t a1, uint64_t a2)
{
  sub_1CAEFA75C();
  result = sub_1CAEFA7EC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1CAEC6D88(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CAEC6860();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1CAEC70E0();
      goto LABEL_12;
    }

    sub_1CAEC7380();
  }

  v8 = *v3;
  v9 = sub_1CAEFA75C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1CAEB33A4(0, &qword_1EDE9D118);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1CAEFA76C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1CAEFAA0C();
  __break(1u);
}

uint64_t sub_1CAEC6EF8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1CAEC6A88();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1CAEC7230();
      goto LABEL_16;
    }

    sub_1CAEC7594();
  }

  v9 = *v3;
  sub_1CAEFA4EC();
  sub_1CAEFAAAC();
  sub_1CAEFA51C();
  v10 = sub_1CAEFAACC();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = sub_1CAEFA4EC();
      v15 = v14;
      if (v13 == sub_1CAEFA4EC() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1CAEFA9FC();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1CAEFAA0C();
  __break(1u);
  return result;
}

id sub_1CAEC70E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481E30);
  v2 = *v0;
  v3 = sub_1CAEFA87C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1CAEC7230()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481DE8);
  v2 = *v0;
  v3 = sub_1CAEFA87C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1CAEC7380()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481E30);
  result = sub_1CAEFA88C();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1CAEFA75C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CAEC7594()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481DE8);
  result = sub_1CAEFA88C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1CAEFA4EC();
      sub_1CAEFAAAC();
      v17 = v16;
      sub_1CAEFA51C();
      v18 = sub_1CAEFAACC();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CAEC77E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CAEC81A0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1CAEFA9DC();
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
      v7 = sub_1CAEFA60C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1CAEC7920(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1CAEC7920(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1CAEEC428(v8);
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
        sub_1CAEC7E6C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
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
  v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1CAEE994C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1CAEE994C((v29 > 1), v5 + 1, 1, v8);
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
        sub_1CAEC7E6C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
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

uint64_t sub_1CAEC7E6C(char *__dst, char *__src, char *a3, char *a4)
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

size_t sub_1CAEC8060(size_t a1, int64_t a2, char a3)
{
  result = sub_1CAEEC540(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CAEC8080(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1CAEFA80C();
LABEL_9:
  result = sub_1CAEFA8EC();
  *v1 = result;
  return result;
}

void sub_1CAEC8138()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state);
  *(v1 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state) = v2;
  v4 = v2;
}

uint64_t sub_1CAEC81B4(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CAEFA80C())
  {
    v4 = sub_1CAEB33A4(0, &qword_1EDE9D118);
    v5 = sub_1CAEC82F4();
    result = MEMORY[0x1CCAAB2A0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCAAB4D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1CAEC628C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1CAEFA80C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1CAEC82F4()
{
  result = qword_1EDE9D110;
  if (!qword_1EDE9D110)
  {
    sub_1CAEB33A4(255, &qword_1EDE9D118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE9D110);
  }

  return result;
}

uint64_t sub_1CAEC83A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAEC83EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  v4 = v3;
  v5 = sub_1CAEC83A4(&qword_1EDE9D140, type metadata accessor for URLResourceKey);
  result = MEMORY[0x1CCAAB2A0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1CAEC64C4(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_1CAEC84A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481E20);
    v3 = sub_1CAEFA98C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CAEB33EC(v4, &v13, &qword_1EC481E28);
      v5 = v13;
      v6 = v14;
      result = sub_1CAEAE8E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1CAEAF5D0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1CAEC85D8(uint64_t a1, void *a2)
{
  v3 = sub_1CAEFA4BC();
  v4 = [a2 endPointByAppendingRelativePathComponents_];

  sub_1CAEFA9EC();
  v5 = sub_1CAEFA4BC();

  v6 = [v4 endPointByAppendingRelativePathComponents_];

  v7 = sub_1CAEFA4BC();
  v8 = [v6 endPointByAppendingRelativePathComponents_];

  return v8;
}

id sub_1CAEC8714(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1CAEF9E1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CAEFA4BC();
  v11 = [a1 endPointByAppendingRelativePathComponents_];

  v25[0] = a3;
  sub_1CAEFA9EC();
  v12 = sub_1CAEFA4BC();

  v13 = [v11 endPointByAppendingRelativePathComponents_];

  v14 = [a2 provider];
  if (!v14)
  {
    sub_1CAEFA4EC();
    v14 = sub_1CAEFA4BC();
  }

  v15 = [v13 endPointByAppendingRelativePathComponents_];

  v16 = sub_1CAEFA4BC();
  v17 = [v15 endPointByAppendingRelativePathComponents_];

  v18 = [a2 posterUUID];
  sub_1CAEF9DFC();

  v19 = sub_1CAEF9DCC();
  v21 = v20;
  (*(v7 + 8))(v9, v6);
  v25[0] = v19;
  v25[1] = v21;

  MEMORY[0x1CCAAB120](47, 0xE100000000000000);

  v22 = sub_1CAEFA4BC();

  v23 = [v17 endPointByAppendingRelativePathComponents_];

  return v23;
}

id sub_1CAEC89D0(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1CAEC8714(a1, a2, a3);
  v5 = sub_1CAEFA4BC();
  v6 = [v4 endPointByAppendingRelativePathComponents_];

  [a2 version];
  v11 = sub_1CAEFA9EC();
  v12 = v7;

  MEMORY[0x1CCAAB120](47, 0xE100000000000000);

  v8 = sub_1CAEFA4BC();

  v9 = [v6 endPointByAppendingRelativePathComponents_];

  return v9;
}

uint64_t sub_1CAEC8AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481DE8);
    v3 = sub_1CAEFA8AC();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1CAEFA4EC();
      sub_1CAEFAAAC();
      v27 = v7;
      sub_1CAEFA51C();
      v8 = sub_1CAEFAACC();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1CAEFA4EC();
        v18 = v17;
        if (v16 == sub_1CAEFA4EC() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1CAEFA9FC();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1CAEC8CDC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v242 = a5;
  v254 = a2;
  v255 = a3;
  v263 = a1;
  v264[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1CAEF9CFC();
  v256 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v241 = &v231[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  *&v240 = &v231[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v239 = &v231[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v237 = &v231[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v243 = &v231[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v244 = &v231[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v245 = &v231[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v251 = &v231[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v253 = &v231[-v24];
  v259 = sub_1CAEF9DBC();
  v25 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v257 = &v231[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_1CAEF9E1C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v231[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v249 = v28;
  v32 = *(v28 + 16);
  v261 = &v231[-v33];
  v32();
  v250 = v27;
  (v32)(v31, a4, v27);
  if (qword_1EDE9D148 != -1)
  {
    swift_once();
  }

  v34 = sub_1CAEF9EBC();
  v262 = __swift_project_value_buffer(v34, qword_1EDE9D4A0);
  v35 = sub_1CAEF9E9C();
  v36 = sub_1CAEFA70C();
  v37 = os_log_type_enabled(v35, v36);
  v252 = v31;
  *&v260 = v7;
  v238 = v5;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v258 = v25;
    v40 = v39;
    v264[0] = v39;
    *v38 = 136315138;
    v41 = sub_1CAEF9DDC();
    v42 = sub_1CAEFA4BC();
    v43 = sub_1CAEFA4BC();
    v44 = CHANNEL_LOG_PREFIX(v41, v42, v43, 0);

    v7 = v260;
    v45 = sub_1CAEFA4EC();
    v47 = v46;

    v48 = sub_1CAEC5CF8(v45, v47, v264);

    *(v38 + 4) = v48;
    _os_log_impl(&dword_1CAE63000, v35, v36, "%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v49 = v40;
    v25 = v258;
    MEMORY[0x1CCAAC620](v49, -1, -1);
    MEMORY[0x1CCAAC620](v38, -1, -1);
  }

  v50 = v256;
  v51 = v257;
  v52 = v253;
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v54 = v53;
  v55 = *(v25 + 8);
  v258 = v25 + 8;
  v248 = v55;
  v55(v51, v259);
  v56 = *(v50 + 16);
  v247 = v50 + 16;
  v246 = v56;
  v56(v52, v263, v7);
  v57 = sub_1CAEF9E9C();
  v58 = sub_1CAEFA70C();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v264[0] = v60;
    *v59 = 136315394;
    v61 = sub_1CAEF9DDC();
    v62 = sub_1CAEFA4BC();
    v63 = sub_1CAEFA4BC();
    v64 = CHANNEL_LOG_PREFIX(v61, v62, v63, 1uLL);

    v65 = sub_1CAEFA4EC();
    v67 = v66;

    v7 = v260;
    v68 = sub_1CAEC5CF8(v65, v67, v264);

    *(v59 + 4) = v68;
    *(v59 + 12) = 2080;
    sub_1CAEC83A4(&qword_1EDE9D238, MEMORY[0x1E6968FB0]);
    v69 = v253;
    v70 = sub_1CAEFA9EC();
    v72 = v71;
    (*(v50 + 8))(v69, v7);
    v73 = sub_1CAEC5CF8(v70, v72, v264);

    *(v59 + 14) = v73;
    _os_log_impl(&dword_1CAE63000, v57, v58, "%s creating %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCAAC620](v60, -1, -1);
    MEMORY[0x1CCAAC620](v59, -1, -1);
  }

  else
  {

    (*(v50 + 8))(v52, v7);
  }

  v74 = v252;
  v75 = [v255 fileManager];
  v76 = sub_1CAEF9C8C();
  v77 = [v254 attributes];
  if (v77)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1CAEC83A4(&qword_1EC481730, type metadata accessor for FileAttributeKey);
    sub_1CAEFA49C();

    v77 = sub_1CAEFA48C();
  }

  v264[0] = 0;
  v78 = [v75 createDirectoryAtURL:v76 withIntermediateDirectories:1 attributes:v77 error:v264];

  v79 = v264[0];
  if (v78)
  {
    if (!v242)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481DF0);
      v161 = (*(v256 + 80) + 32) & ~*(v256 + 80);
      v162 = swift_allocObject();
      v260 = xmmword_1CAF026A0;
      *(v162 + 16) = xmmword_1CAF026A0;
      v163 = v79;
      v164 = [v255 resolveEndpoint_];
      sub_1CAEF9CCC();

      v165 = swift_allocObject();
      *(v165 + 16) = v260;
      v246(v165 + v161, v263, v7);
      v166 = v257;
      sub_1CAEF9D9C();
      sub_1CAEF9D7C();
      v168 = v167;
      v248(v166, v259);
      v169 = sub_1CAEF9E9C();
      v170 = sub_1CAEFA70C();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v264[0] = v172;
        *v171 = 136315394;
        v173 = sub_1CAEC4DA4(2uLL);
        v175 = sub_1CAEC5CF8(v173, v174, v264);

        *(v171 + 4) = v175;
        *(v171 + 12) = 2048;
        *(v171 + 14) = v168 - v54;
        _os_log_impl(&dword_1CAE63000, v169, v170, "%s Elapsed time: %f seconds", v171, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v172);
        MEMORY[0x1CCAAC620](v172, -1, -1);
        MEMORY[0x1CCAAC620](v171, -1, -1);
      }

      goto LABEL_32;
    }

    v80 = v264[0];
    v81 = [v255 fileManager];
    v82 = objc_allocWithZone(MEMORY[0x1E69C5120]);
    v83 = sub_1CAEF9C8C();
    v253 = [v82 initWithBaseURL:v83 fileManager:v81];

    v84 = objc_allocWithZone(MEMORY[0x1E69C5118]);
    v85 = sub_1CAEFA4BC();
    v86 = [v84 initWithRelativePathComponents_];

    v87 = sub_1CAEFA4BC();
    v88 = v254;
    v89 = [v254 endPointByAppendingRelativePathComponents_];

    v234 = "posterConfigurationIdentity";
    v233 = 0xD000000000000015;
    v90 = sub_1CAEFA4BC();
    v91 = [v88 &selRef:v90 :? queue:? addObserver:? + 1];

    v92 = sub_1CAEFA4BC();
    v93 = [v86 &selRef:v92 :? queue:? addObserver:? + 1];

    v94 = sub_1CAEFA4BC();
    v95 = v86;
    v96 = [v86 &selRef:v94 :? queue:? addObserver:? + 1];

    v97 = v255;
    v254 = v89;
    v98 = [v255 resolveEndpoint_];
    sub_1CAEF9CCC();

    v242 = v91;
    v99 = [v97 resolveEndpoint_];
    v100 = v245;
    sub_1CAEF9CCC();

    v101 = v253;
    v236 = v93;
    v102 = [v253 resolveEndpoint_];
    sub_1CAEF9CCC();

    v235 = v96;
    v103 = [v101 resolveEndpoint_];
    sub_1CAEF9CCC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481D90);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1CAF03CB0;
    v105 = objc_opt_self();
    v106 = sub_1CAEF9C8C();
    v107 = sub_1CAEFA4BC();
    v108 = [v95 &selRef:v107 :? queue:? addObserver:? + 1];

    v109 = [v105 copyURL:v106 toEndpoint:v108];
    *(v104 + 32) = v109;
    v110 = sub_1CAEF9C8C();
    v111 = sub_1CAEFA4BC();
    v255 = v95;
    v112 = [v95 &selRef:v111 :? queue:? addObserver:? + 1];

    v113 = v260;
    v234 = v105;
    v114 = [v105 copyURL:v110 toEndpoint:v112];

    *(v104 + 40) = v114;
    v115 = v237;
    v116 = v251;
    v117 = v246;
    v246(v237, v251, v113);
    v118 = v239;
    v117(v239, v116, v113);
    v119 = v240;
    v117(v240, v100, v113);
    v120 = v241;
    v117(v241, v100, v113);
    v121 = sub_1CAEF9E9C();
    v122 = sub_1CAEFA70C();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v264[0] = v233;
      *v123 = 136316162;
      v232 = v122;
      v124 = sub_1CAEF9DDC();
      v125 = sub_1CAEFA4BC();
      v126 = sub_1CAEFA4BC();
      v127 = CHANNEL_LOG_PREFIX(v124, v125, v126, 1uLL);

      v128 = sub_1CAEFA4EC();
      v130 = v129;

      v131 = sub_1CAEC5CF8(v128, v130, v264);

      *(v123 + 4) = v131;
      *(v123 + 12) = 2080;
      v132 = sub_1CAEF9C7C();
      v134 = v133;
      v135 = *(v256 + 8);
      (v135)(v115, v260);
      v136 = sub_1CAEC5CF8(v132, v134, v264);

      *(v123 + 14) = v136;
      *(v123 + 22) = 2080;
      v137 = v239;
      v138 = sub_1CAEC4E64();
      v140 = v139;
      (v135)(v137, v260);
      v141 = sub_1CAEC5CF8(v138, v140, v264);

      *(v123 + 24) = v141;
      *(v123 + 32) = 2080;
      v142 = v240;
      v143 = sub_1CAEF9C7C();
      v145 = v144;
      (v135)(v142, v260);
      v146 = sub_1CAEC5CF8(v143, v145, v264);

      *(v123 + 34) = v146;
      *(v123 + 42) = 2080;
      v113 = v260;
      v147 = v241;
      v148 = sub_1CAEC4E64();
      v150 = v149;
      v241 = v135;
      (v135)(v147, v113);
      v151 = sub_1CAEC5CF8(v148, v150, v264);

      *(v123 + 44) = v151;
      _os_log_impl(&dword_1CAE63000, v121, v232, "%s copying [%s (%s), %s (%s)] to staging", v123, 0x34u);
      v152 = v233;
      swift_arrayDestroy();
      MEMORY[0x1CCAAC620](v152, -1, -1);
      MEMORY[0x1CCAAC620](v123, -1, -1);
    }

    else
    {

      v176 = *(v256 + 8);
      (v176)(v120, v113);
      (v176)(v119, v113);
      (v176)(v118, v113);
      v241 = v176;
      (v176)(v115, v113);
    }

    sub_1CAEB33A4(0, &qword_1EDE9D108);
    v177 = sub_1CAEFA5CC();

    v178 = sub_1CAEF9C8C();
    v264[0] = 0;
    v179 = [v234 commitStagedURLs:v177 destinationURL:v178 error:v264];

    v180 = v264[0];
    if (v179)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481DF0);
      v181 = *(v256 + 72);
      v182 = (*(v256 + 80) + 32) & ~*(v256 + 80);
      v183 = swift_allocObject();
      v240 = xmmword_1CAF03CC0;
      *(v183 + 16) = xmmword_1CAF03CC0;
      v263 = v183;
      v184 = v183 + v182;
      *&v260 = v180;
      v185 = v246;
      v246(v183 + v182, v251, v113);
      v186 = v184 + v181;
      v187 = v245;
      v185(v186, v245, v113);
      v188 = swift_allocObject();
      *(v188 + 16) = v240;
      v189 = v244;
      v185(v188 + v182, v244, v113);
      v190 = v243;
      v185(v188 + v182 + v181, v243, v113);
      v191 = v260;

      v192 = v241;
      (v241)(v190, v113);
      v192(v189, v113);
      v192(v187, v113);
      v192(v251, v113);
      v193 = v257;
      sub_1CAEF9D9C();
      sub_1CAEF9D7C();
      v195 = v194;
      v248(v193, v259);
      v196 = sub_1CAEF9E9C();
      v197 = sub_1CAEFA70C();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v264[0] = v199;
        *v198 = 136315394;
        v74 = v252;
        v200 = sub_1CAEC4DA4(2uLL);
        v202 = sub_1CAEC5CF8(v200, v201, v264);

        *(v198 + 4) = v202;
        *(v198 + 12) = 2048;
        *(v198 + 14) = v195 - v54;
        _os_log_impl(&dword_1CAE63000, v196, v197, "%s Elapsed time: %f seconds", v198, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v199);
        MEMORY[0x1CCAAC620](v199, -1, -1);
        MEMORY[0x1CCAAC620](v198, -1, -1);
      }

      else
      {

        v74 = v252;
      }

      v162 = v263;
LABEL_32:
      v228 = *(v249 + 8);
      v229 = v250;
      v228(v74, v250);
      v228(v261, v229);
      return v162;
    }

    v203 = v264[0];
    v204 = sub_1CAEF9BFC();

    swift_willThrow();
    v205 = v204;
    v206 = sub_1CAEF9E9C();
    v207 = sub_1CAEFA6EC();

    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v264[0] = v209;
      *v208 = 136315394;
      v210 = sub_1CAEF9DDC();
      v211 = sub_1CAEFA4BC();
      v212 = sub_1CAEFA4BC();
      v213 = CHANNEL_LOG_PREFIX(v210, v211, v212, 1uLL);

      v214 = sub_1CAEFA4EC();
      v216 = v215;

      v113 = v260;
      v217 = sub_1CAEC5CF8(v214, v216, v264);

      *(v208 + 4) = v217;
      *(v208 + 12) = 2080;
      swift_getErrorValue();
      v218 = sub_1CAEFAA5C();
      v220 = sub_1CAEC5CF8(v218, v219, v264);

      *(v208 + 14) = v220;
      _os_log_impl(&dword_1CAE63000, v206, v207, "%s error encountered while preparing staging: %s", v208, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCAAC620](v209, -1, -1);
      MEMORY[0x1CCAAC620](v208, -1, -1);
    }

    swift_willThrow();
    v221 = v241;
    (v241)(v243, v113);
    v221(v244, v113);
    v221(v245, v113);
    v221(v251, v113);
    v222 = v257;
    sub_1CAEF9D9C();
    sub_1CAEF9D7C();
    v156 = v223;
    v248(v222, v259);
    v157 = sub_1CAEF9E9C();
    v158 = sub_1CAEFA70C();
    if (!os_log_type_enabled(v157, v158))
    {

      v74 = v252;
      goto LABEL_29;
    }

    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v264[0] = v160;
    *v159 = 136315394;
    v74 = v252;
    goto LABEL_27;
  }

  v153 = v264[0];
  sub_1CAEF9BFC();

  swift_willThrow();
  v154 = v257;
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v156 = v155;
  v248(v154, v259);
  v157 = sub_1CAEF9E9C();
  v158 = sub_1CAEFA70C();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v264[0] = v160;
    *v159 = 136315394;
LABEL_27:
    v224 = sub_1CAEC4DA4(2uLL);
    v226 = sub_1CAEC5CF8(v224, v225, v264);

    *(v159 + 4) = v226;
    *(v159 + 12) = 2048;
    *(v159 + 14) = v156 - v54;
    _os_log_impl(&dword_1CAE63000, v157, v158, "%s Elapsed time: %f seconds", v159, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v160);
    MEMORY[0x1CCAAC620](v160, -1, -1);
    MEMORY[0x1CCAAC620](v159, -1, -1);
  }

LABEL_29:
  v162 = *(v249 + 8);
  v227 = v250;
  (v162)(v74, v250);
  (v162)(v261, v227);
  return v162;
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

uint64_t sub_1CAECA7F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1CAECA808(uint64_t a1, void *a2)
{
  v3 = sub_1CAEFA4BC();
  v4 = [a2 endPointByAppendingRelativePathComponents_];

  sub_1CAEFA9EC();
  v5 = sub_1CAEFA4BC();

  v6 = [v4 endPointByAppendingRelativePathComponents_];

  v7 = sub_1CAEFA4BC();
  v8 = [v6 endPointByAppendingRelativePathComponents_];

  return v8;
}

unint64_t sub_1CAECA920()
{
  result = qword_1EC482380;
  if (!qword_1EC482380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482380);
  }

  return result;
}

void sub_1CAECA974(double a1)
{
  v2 = sub_1CAEF9DBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  if (qword_1EDE9D148 != -1)
  {
    swift_once();
  }

  v8 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v8, qword_1EDE9D4A0);
  v9 = sub_1CAEF9E9C();
  v10 = sub_1CAEFA70C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    v13 = sub_1CAEBCB30(2uLL);
    v15 = sub_1CAEC5CF8(v13, v14, &v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7 - a1;
    _os_log_impl(&dword_1CAE63000, v9, v10, "%s Elapsed time: %f seconds.", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1CCAAC620](v12, -1, -1);
    MEMORY[0x1CCAAC620](v11, -1, -1);
  }
}

id sub_1CAECAB78(void *a1)
{
  v2 = sub_1CAEF9E1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 provider];
  if (!v6)
  {
    sub_1CAEFA4EC();
    v6 = sub_1CAEFA4BC();
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E69C5118]) initWithRelativePathComponents_];

  [a1 type];
  v8 = PFServerPosterTypeToDirectoryName();
  if (!v8)
  {
    sub_1CAEFA4EC();
    v8 = sub_1CAEFA4BC();
  }

  v9 = [v7 endPointByAppendingRelativePathComponents_];

  v10 = [a1 posterUUID];
  sub_1CAEF9DFC();

  sub_1CAEF9DCC();
  (*(v3 + 8))(v5, v2);
  v11 = sub_1CAEFA4BC();

  v12 = [v9 endPointByAppendingRelativePathComponents_];

  return v12;
}

uint64_t sub_1CAECAD78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1CAECAD88(void *a1, void *a2, void *a3)
{
  v106 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D30);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v108 = &v92 - v8;
  v101 = sub_1CAEF9DBC();
  v100 = *(v101 - 8);
  v9 = MEMORY[0x1EEE9AC00](v101);
  v97 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v92 - v11;
  v12 = sub_1CAEF9E1C();
  v13 = *(v12 - 8);
  v109 = v12;
  v110 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v112 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v92 - v16;
  v104 = a1;
  v17 = [a1 schemaManager];
  v18 = objc_allocWithZone(MEMORY[0x1E69C5118]);
  v19 = sub_1CAEFA4BC();
  v20 = [v18 initWithRelativePathComponents_];

  v21 = "posterConfigurationIdentity";
  v22 = sub_1CAEFA4BC();
  v23 = &unk_1E83A9000;
  v24 = [v20 endPointByAppendingRelativePathComponents_];

  v25 = sub_1CAEFA4BC();
  v105 = v20;
  v26 = [v20 endPointByAppendingRelativePathComponents_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAF03CB0;
  *(inited + 32) = v24;
  *(inited + 40) = v26;
  v116 = MEMORY[0x1E69E7CC0];
  v103 = v24;
  v28 = v26;
  sub_1CAEFA92C();
  v102 = v17;
  v99 = v28;
  if ((inited & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1CCAAB4D0](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_31:
      sub_1CAEFA5FC();
      goto LABEL_28;
    }

    v29 = *(inited + 32);
  }

  v30 = v29;
  v31 = &unk_1E83A9000;
  v111 = objc_opt_self();
  v32 = [v111 stageCreateEndpoint_];

  sub_1CAEFA90C();
  sub_1CAEFA93C();
  sub_1CAEFA94C();
  sub_1CAEFA91C();
  if ((inited & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1CCAAB4D0](1, inited);
    v34 = a3;
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_33;
    }

    v34 = a3;
    v33 = *(inited + 40);
  }

  v35 = [v111 stageCreateEndpoint_];

  sub_1CAEFA90C();
  sub_1CAEFA93C();
  sub_1CAEFA94C();
  sub_1CAEFA91C();
  if (v34)
  {
    v36 = [v34 posterConfiguration];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 _path];

      if (v38)
      {
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          inited = v39;
          v95 = v38;
          v23 = &selRef__screenWillTurnOff;
          v40 = [v39 identity];
          v31 = sub_1CAEC89D0(v103, v40, 0);

          v32 = [v111 copyPath:inited toEndpoint:v31];
          MEMORY[0x1CCAAB1B0]();
          if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_13:
            sub_1CAEFA61C();
            v41 = [inited v23[484]];
            v42 = [v41 provider];

            v43 = v109;
            v94 = v32;
            if (!v42)
            {
              sub_1CAEFA4EC();
              v42 = sub_1CAEFA4BC();
            }

            v44 = objc_opt_self();
            v45 = [inited v23[484]];
            v46 = [v45 role];

            v47 = [inited v23[484]];
            v48 = [v47 posterUUID];

            v49 = v96;
            sub_1CAEF9DFC();

            v50 = sub_1CAEF9DDC();
            (*(v110 + 8))(v49, v43);
            v51 = [v44 incomingConfigurationIdentityWithProvider:v42 role:v46 posterUUID:v50 version:0 supplement:0];

            v52 = v107;
            v34 = a3;
            goto LABEL_20;
          }

LABEL_33:
          sub_1CAEFA5FC();
          goto LABEL_13;
        }
      }
    }
  }

  v53 = sub_1CAEFA4BC();
  v54 = [v105 endPointByAppendingRelativePathComponents_];

  v115 = 0;
  sub_1CAEFA9EC();
  v55 = sub_1CAEFA4BC();

  v56 = [v54 endPointByAppendingRelativePathComponents_];

  v57 = [v111 stageCreateEndpoint_];
  MEMORY[0x1CCAAB1B0]();
  if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CAEFA5FC();
  }

  sub_1CAEFA61C();

  v51 = 0;
  v43 = v109;
  v52 = v107;
LABEL_20:
  v58 = (v110 + 16);
  v59 = *(v110 + 16);
  v59(v112, v106, v43);
  if (v34)
  {
    v106 = [v34 channelContext];
  }

  else
  {
    v60 = v59;
    v61 = [v104 role];
    sub_1CAEF0C9C(MEMORY[0x1E69E7CC0]);
    v62 = sub_1CAEFA48C();

    v106 = [objc_opt_self() contextWithRole:v61 userInfo:v62];

    v59 = v60;
  }

  v93 = v51;
  sub_1CAEF9D9C();
  v63 = v52;
  v64 = v100;
  v65 = v108;
  v66 = v101;
  (*(v100 + 56))(v108, 1, 1, v101);
  v94 = type metadata accessor for PRUISPosterChannelState();
  v67 = objc_allocWithZone(v94);
  sub_1CAEF9E6C();
  v96 = v58;
  v95 = v59;
  v59(&v67[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier], v112, v43);
  *&v67[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion] = 0;
  *&v67[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion] = 0;
  *&v67[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelContext] = v106;
  *&v67[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity] = v51;
  v68 = *(v64 + 16);
  (v68)(&v67[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_creationDate], v63, v66);
  v69 = v98;
  sub_1CAEB33EC(v65, v98, &unk_1EC481D30);
  v70 = *(v64 + 48);
  if (v70(v69, 1, v66) == 1)
  {
    v71 = v97;
    v68();
    v72 = v70(v69, 1, v66);
    v73 = v93;
    v74 = v93;
    v75 = v106;
    v76 = v106;
    v77 = v72 == 1;
    v78 = v73;
    if (!v77)
    {
      sub_1CAEB3344(v69, &unk_1EC481D30);
    }
  }

  else
  {
    v71 = v97;
    (*(v64 + 32))(v97, v69, v66);
    v78 = v93;
    v79 = v93;
    v75 = v106;
    v80 = v106;
  }

  (*(v64 + 32))(&v67[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_lastModifiedDate], v71, v66);
  v114.receiver = v67;
  v114.super_class = v94;
  v17 = objc_msgSendSuper2(&v114, sel_init);

  sub_1CAEB3344(v108, &unk_1EC481D30);
  (*(v64 + 8))(v107, v66);
  a3 = v109;
  (*(v110 + 8))(v112, v109);
  v21 = v105;
  inited = sub_1CAEC85D8(*&v17[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion], v105);
  v81 = [v111 archiveObjectUsingNSKeyedArchiver:v17 toEndpoint:inited];
  v28 = v78;
  MEMORY[0x1CCAAB1B0]();
  if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_31;
  }

LABEL_28:
  sub_1CAEFA61C();
  v82 = v116;
  v83 = type metadata accessor for PRUISPosterChannelStateCoordinatorTransition(0);
  v84 = objc_allocWithZone(v83);
  *&v84[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_initialState] = 0;
  *&v84[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_finalState] = v17;
  v95(&v84[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_channelIdentifier], &v17[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier], a3);
  v85 = v17;
  v84[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_configurationUpdated] = BSEqualObjects() ^ 1;
  v86 = BSEqualObjects();
  v84[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_contextUpdated] = v86 ^ 1;
  v84[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_descriptorsUpdated] = v86 ^ 1;
  v87 = v104;
  *&v84[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_modelCoordinator] = v104;
  *&v84[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_stagedFileSystemURLs] = v82;
  v88 = &v84[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_nonStagedUpdates];
  *v88 = 0;
  v88[1] = 0;
  v113.receiver = v84;
  v113.super_class = v83;
  v89 = v87;
  v90 = objc_msgSendSuper2(&v113, sel_init);

  return v90;
}

unint64_t sub_1CAECBB2C()
{
  result = qword_1EC481DB8;
  if (!qword_1EC481DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481DB8);
  }

  return result;
}

uint64_t sub_1CAECBBA8()
{
  result = sub_1CAEF9E1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CAECBCAC()
{
  result = sub_1CAEF9E1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransitionC0defgH5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CAECBDEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1CAECBE34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1CAECBE78(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1CAECBEF0()
{
  sub_1CAECBF78();
  if (v0 <= 0x3F)
  {
    sub_1CAECBFC0();
    if (v1 <= 0x3F)
    {
      sub_1CAECBFF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1CAECBF78()
{
  if (!qword_1EC481DD0)
  {
    v0 = sub_1CAEF9E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC481DD0);
    }
  }
}

uint64_t sub_1CAECBFC0()
{
  result = qword_1EC481DD8;
  if (!qword_1EC481DD8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EC481DD8);
  }

  return result;
}

uint64_t sub_1CAECBFF0()
{
  result = qword_1EC481DE0;
  if (!qword_1EC481DE0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EC481DE0);
  }

  return result;
}

uint64_t sub_1CAECC020(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1CAECC080@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1CAECC144()
{
  v1 = *v0;
  sub_1CAEFAAAC();
  MEMORY[0x1CCAAB6B0](v1);
  return sub_1CAEFAACC();
}

uint64_t sub_1CAECC1B8()
{
  v1 = *v0;
  sub_1CAEFAAAC();
  MEMORY[0x1CCAAB6B0](v1);
  return sub_1CAEFAACC();
}

uint64_t sub_1CAECC1FC()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id PRUISPosterChannelReaper.__allocating_init(modelCoordinator:currentState:currentPosterConfiguration:currentGallery:snapshotCache:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v5);
  v13 = [a1 schemaManager];
  *&v12[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_fileSystemSchemaManager] = v13;
  v14 = sub_1CAEF9DDC();
  v15 = [a1 fileSystemEndpointForChannelIdentifier_];

  *&v12[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_rootChannelURLEndpoint] = v15;
  *&v12[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentState] = a2;
  *&v12[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentPosterConfiguration] = a3;
  *&v12[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentGallery] = a4;
  *&v12[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_snapshotCache] = a5;
  v19.receiver = v12;
  v19.super_class = v6;
  v16 = a2;
  v17 = objc_msgSendSuper2(&v19, sel_init);

  return v17;
}

id PRUISPosterChannelReaper.init(modelCoordinator:currentState:currentPosterConfiguration:currentGallery:snapshotCache:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1CAED0D08(a1, a2, a3, a4, a5);

  return v7;
}

void __swiftcall PRUISPosterChannelReaper.reapStaleState(omittingLast:)(NSError_optional *__return_ptr retstr, Swift::UInt omittingLast)
{
  v4 = sub_1CAEF9CFC();
  v66 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v65 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v64 = (&v62 - v7);
  v8 = sub_1CAEF9DBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2;
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  if (qword_1EDE9D148 != -1)
  {
LABEL_25:
    swift_once();
  }

  v15 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v15, qword_1EDE9D4A0);
  v16 = sub_1CAEF9E9C();
  v17 = sub_1CAEFA70C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v70[0] = v19;
    *v18 = 136315138;
    v20 = sub_1CAECD850(0, v12);
    v22 = sub_1CAEC5CF8(v20, v21, v70);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1CAE63000, v16, v17, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1CCAAC620](v19, -1, -1);
    MEMORY[0x1CCAAC620](v18, -1, -1);
  }

  v71 = 0;
  if (omittingLast <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = omittingLast;
  }

  v24 = *&v12[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentState];
  v68 = OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion;
  v25 = *(v24 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion);
  if (((v25 | v23) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v26 = *(v24 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion);
  if (v26 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v63 = v4;
  v4 = v25 - v23;
  v27 = v25 - v23 + 1;
  if (__OFADD__(v25 - v23, 1))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v67 = v24;
  v28 = v26 - v23;
  v69 = OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_rootChannelURLEndpoint;
  omittingLast = &unk_1E83A9000;
  while (v27 < 1 || *(v67 + v68) >= v27)
  {
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    v29 = *&v12[v69];
    v30 = sub_1CAEFA4BC();
    v31 = [v29 endPointByAppendingRelativePathComponents_];

    v70[0] = v27;
    sub_1CAEFA9EC();
    v32 = sub_1CAEFA4BC();

    v33 = [v31 endPointByAppendingRelativePathComponents_];

    v34 = v12;
    sub_1CAED0E20(v33, v34, &v71, v34);

    if (__OFADD__(v27++, 1))
    {
      __break(1u);
      break;
    }
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v36 = *&v12[v69];
    do
    {
      v37 = sub_1CAEFA4BC();
      v38 = [v36 endPointByAppendingRelativePathComponents_];

      v70[0] = v4;
      sub_1CAEFA9EC();
      v39 = sub_1CAEFA4BC();

      v40 = [v38 endPointByAppendingRelativePathComponents_];

      v41 = v12;
      sub_1CAED19BC(v40, v41, &v71, v41);

      --v4;
    }

    while (v4 != -1);
  }

  if ((v28 & 0x8000000000000000) == 0)
  {
    v42 = *&v12[v69];
    do
    {
      v43 = sub_1CAEFA4BC();
      v44 = [v42 endPointByAppendingRelativePathComponents_];

      v70[0] = v28;
      sub_1CAEFA9EC();
      v45 = sub_1CAEFA4BC();

      v46 = [v44 endPointByAppendingRelativePathComponents_];

      v47 = v12;
      sub_1CAED19BC(v46, v47, &v71, v47);

      --v28;
    }

    while (v28 != -1);
  }

  v48 = *&v12[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_fileSystemSchemaManager];
  v49 = *&v12[v69];
  v50 = sub_1CAEFA4BC();
  v51 = [v49 endPointByAppendingRelativePathComponents_];

  v52 = [v48 resolveEndpoint_];
  v53 = v64;
  sub_1CAEF9CCC();

  v54 = sub_1CAEFA4BC();
  v55 = [v49 endPointByAppendingRelativePathComponents_];

  v56 = [v48 resolveEndpoint_];
  v57 = v65;
  sub_1CAEF9CCC();

  v58 = v12;
  sub_1CAED28F8(v53, v58, &v71, v58);
  sub_1CAED28F8(v57, v58, &v71, v58);

  v59 = *(v66 + 8);
  v60 = v57;
  v61 = v63;
  v59(v60, v63);
  v59(v53, v61);
  swift_beginAccess();
  sub_1CAED3600(v58, v14);
}

uint64_t PRUISPosterChannelReaper.reapStaleSnapshots()()
{
  v1 = sub_1CAEF9DBC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  v5[2] = v0;
  v6 = v0;
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  if (qword_1EDE9D148 != -1)
  {
LABEL_53:
    swift_once();
  }

  v9 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v9, qword_1EDE9D4A0);

  v10 = sub_1CAEF9E9C();
  v11 = sub_1CAEFA70C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = sub_1CAECD850(0, v6);
    v16 = sub_1CAEC5CF8(v14, v15, aBlock);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1CAE63000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1CCAAC620](v13, -1, -1);
    MEMORY[0x1CCAAC620](v12, -1, -1);
  }

  v17 = *&v6[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_snapshotCache];
  if (!v17 || (v18 = [v17 underlyingCache]) == 0)
  {
    sub_1CAED331C();
    v32 = swift_allocError();
    *v33 = 0;
    v34 = sub_1CAEF9BEC();
    v35 = [objc_opt_self() futureWithError_];

    v36 = v6;
    sub_1CAED3600(v36, v8);
    goto LABEL_59;
  }

  v80 = v18;
  v81 = v5;
  v19 = [objc_allocWithZone(MEMORY[0x1E69C55C8]) init];
  v20 = [objc_opt_self() waitingForLiveRenderingSceneDefinition];
  v21 = [v20 uniqueIdentifier];

  [v19 setSnapshotDefinitionIdentifier_];
  sub_1CAED3370(*&v6[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentPosterConfiguration]);
  v23 = v22;
  v5 = v24;
  v79 = *&v6[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentGallery];
  v25 = sub_1CAECD9DC(v79);
  aBlock[16] = v19;
  aBlock[17] = v23;
  aBlock[18] = v5;
  aBlock[19] = v25;
  v26 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v84 = v5;
  v83 = v25;
  v85 = v19;
  v82 = v23;
  v27 = 0;
  v28 = v26;
LABEL_7:
  if (v27 <= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v27;
  }

  while (v27 != 4)
  {
    if (v29 == v27)
    {
      __break(1u);
      goto LABEL_53;
    }

    v30 = aBlock[v27++ + 16];
    if (v30)
    {
      v31 = v30;
      MEMORY[0x1CCAAB1B0]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v78 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CAEFA5FC();
      }

      sub_1CAEFA61C();
      v28 = aBlock[0];
      goto LABEL_7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481E78);
  swift_arrayDestroy();
  if (v28 >> 62)
  {
    v37 = sub_1CAEFA80C();
  }

  else
  {
    v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v37)
  {
    v44 = v83;

    sub_1CAED331C();
    v45 = swift_allocError();
    *v46 = 1;
    v47 = sub_1CAEF9BEC();
    v35 = [objc_opt_self() futureWithError_];

    v36 = v6;
    sub_1CAED3600(v36, v8);
    goto LABEL_59;
  }

  v38 = swift_allocObject();
  v39 = [v85 SQLitePredicate];
  v40 = v39;
  *(v38 + 16) = v39;
  if (v5)
  {
    v41 = v84;
    v42 = v40;
    v43 = [v41 SQLitePredicate];
  }

  else
  {
    if (!v23)
    {
      v78 = v39;
      goto LABEL_26;
    }

    v41 = v82;
    v48 = v40;
    v49 = [v41 SQLitePredicate];
    v43 = [v49 notPredicate];
  }

  v50 = [v40 andPredicate_];

  *(v38 + 16) = v50;
  v78 = v50;
LABEL_26:
  v51 = &unk_1E83A9000;
  aBlock[10] = v23;
  aBlock[11] = v25;
  aBlock[0] = v26;
  v82 = v82;
  for (i = 0; i != 2; ++i)
  {
    v53 = aBlock[i + 10];
    if (v53)
    {
      v54 = v53;
      MEMORY[0x1CCAAB1B0]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CAEFA5FC();
      }

      sub_1CAEFA61C();
      v26 = aBlock[0];
    }
  }

  result = swift_arrayDestroy();
  if (!v79)
  {

    v62 = [v83 SQLitePredicate];
    goto LABEL_47;
  }

  if (v26 >> 62)
  {
    result = sub_1CAEFA80C();
    v56 = result;
    if (result)
    {
      goto LABEL_35;
    }

LABEL_56:

    v79 = 0;
    goto LABEL_57;
  }

  v56 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v56)
  {
    goto LABEL_56;
  }

LABEL_35:
  v77 = v38;
  if (v56 < 1)
  {
    __break(1u);
    return result;
  }

  v57 = 0;
  for (j = 0; j != v56; ++j)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x1CCAAB4D0](j, v26);
      if (!v57)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v59 = *(v26 + 8 * j + 32);
      if (!v57)
      {
LABEL_37:
        v57 = [v59 v51[357]];
        goto LABEL_38;
      }
    }

    v60 = [v59 v51[357]];
    v61 = [v57 orPredicate_];

    v59 = v57;
    v57 = v61;
    v51 = &unk_1E83A9000;
LABEL_38:
  }

  if (v57)
  {
    v62 = [v57 notPredicate];

    v38 = v77;
LABEL_47:
    v63 = v78;
    if (v62)
    {
      v79 = v62;
      *(v38 + 16) = [v78 orPredicate_];
    }

    else
    {
      v79 = 0;
    }

LABEL_57:
    v64 = v38;
  }

  else
  {
    v79 = 0;
    v64 = v77;
  }

  v65 = [objc_allocWithZone(MEMORY[0x1E69C5260]) init];
  v66 = swift_allocObject();
  v66[2] = v64;
  v66[3] = v6;
  v67 = v81;
  v66[4] = sub_1CAED32E8;
  v66[5] = v67;
  v68 = v80;
  v66[6] = v80;
  v66[7] = v65;
  v69 = v6;

  v70 = v68;
  v71 = v65;
  v72 = sub_1CAECD850(1uLL, v69);
  v74 = sub_1CAECE1C4(v72, v73);

  v75 = swift_allocObject();
  v75[2] = sub_1CAED32E8;
  v75[3] = v67;
  v75[4] = sub_1CAED381C;
  v75[5] = v66;
  aBlock[4] = sub_1CAED382C;
  aBlock[5] = v75;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CAECE938;
  aBlock[3] = &block_descriptor;
  v76 = _Block_copy(aBlock);

  [v74 addCompletionBlock_];
  _Block_release(v76);

  v35 = [v71 future];

  v36 = v69;
  sub_1CAED3600(v36, v8);
LABEL_59:

  return v35;
}

uint64_t sub_1CAECD850(unint64_t a1, uint64_t a2)
{
  v4 = sub_1CAEF9E1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, *(a2 + OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentState) + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier, v4);
  v8 = sub_1CAEF9DDC();
  (*(v5 + 8))(v7, v4);
  v9 = sub_1CAEFA4BC();
  v10 = sub_1CAEFA4BC();
  v11 = CHANNEL_LOG_PREFIX(v8, v9, v10, a1);

  v12 = sub_1CAEFA4EC();
  return v12;
}

id sub_1CAECD9DC(void *a1)
{
  v21 = a1;
  v2 = sub_1CAEF9DBC();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = sub_1CAEF9B3C();
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CAEF9E1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E69C55C8]) init];
  v12 = objc_opt_self();
  (*(v8 + 16))(v10, *(v1 + OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentState) + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier, v7);
  v13 = sub_1CAEF9DDC();
  (*(v8 + 8))(v10, v7);
  v14 = [v12 galleryDefinitionForChannelIdentifier_];

  v15 = [v14 uniqueIdentifier];
  [v11 setSnapshotDefinitionIdentifier_];

  if (v21)
  {
    v16 = v21;
    v17 = [v16 creationDate];
    sub_1CAEF9D8C();

    sub_1CAEF9D9C();
    sub_1CAEF9B2C();
    v18 = sub_1CAEF9B1C();
    (*(v4 + 8))(v6, v20);
    [v11 setDateInterval_];
  }

  return v11;
}

void sub_1CAECDCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void *a6, void *a7)
{
  if (a1)
  {
    swift_beginAccess();
    v9 = [*(a2 + 16) orPredicate_];
  }

  else
  {
    swift_beginAccess();
    v9 = *(a2 + 16);
  }

  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E69C55C8]) init];
  v12 = [objc_opt_self() galleryDefinition];
  v13 = [v12 uniqueIdentifier];

  [v11 setSnapshotDefinitionIdentifier_];
  v14 = [v11 SQLitePredicate];
  v42 = v10;
  v15 = [v10 orPredicate_];

  v16 = [objc_allocWithZone(MEMORY[0x1E69C55C8]) init];
  v17 = [v16 SQLitePredicate];

  v18 = [v17 notPredicate];
  v39 = v15;
  v19 = [v15 orPredicate_];
  if (qword_1EDE9D148 != -1)
  {
    swift_once();
  }

  v20 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v20, qword_1EDE9D4A0);

  v21 = v19;
  v22 = sub_1CAEF9E9C();
  v23 = sub_1CAEFA70C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v24 = 136315394;
    v27 = a4(1);
    v29 = sub_1CAEC5CF8(v27, v28, &aBlock);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v21;
    *v25 = v21;
    v30 = v21;
    _os_log_impl(&dword_1CAE63000, v22, v23, "%s reaping snapshots matching predicate: %@", v24, 0x16u);
    sub_1CAEB3344(v25, &qword_1EC481A00);
    MEMORY[0x1CCAAC620](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1CCAAC620](v26, -1, -1);
    MEMORY[0x1CCAAC620](v24, -1, -1);
  }

  v31 = [a6 discardSnapshotBundlesMatchingSQLPredicate_];
  v32 = swift_allocObject();
  *(v32 + 16) = a7;
  v47 = sub_1CAED3B7C;
  v48 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1CAED3C54;
  v46 = &block_descriptor_34;
  v33 = _Block_copy(&aBlock);
  v34 = a7;

  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v47 = sub_1CAED3B90;
  v48 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1CAECE1BC;
  v46 = &block_descriptor_40;
  v36 = _Block_copy(&aBlock);
  v37 = v34;

  [v31 addSuccessBlock:v33 andFailureBlock:v36];
  _Block_release(v36);
  _Block_release(v33);
}

id sub_1CAECE1C4(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v4 = sub_1CAEF9E1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v14 = *(v2 + OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentPosterConfiguration);
  if (v14)
  {
    v15 = [v14 _path];
    v16 = [v15 serverIdentity];

    if (v16)
    {
      v47 = a2;
      v17 = [v16 posterUUID];

      sub_1CAEF9DFC();
      v48 = v5;
      v18 = *(v5 + 32);
      v18(v13, v11, v4);
      v19 = *(v2 + OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_snapshotCache);
      if (v19)
      {
        v20 = [v19 underlyingCache];
        if (v20)
        {
          v21 = v20;
          v46 = v20;
          v22 = [objc_allocWithZone(MEMORY[0x1E69C55C8]) init];
          v23 = sub_1CAEF9DDC();
          [v22 setPosterUUID_];

          v24 = [objc_opt_self() waitingForLiveRenderingSceneDefinition];
          v25 = [v24 uniqueIdentifier];

          [v22 setSnapshotDefinitionIdentifier_];
          v26 = [objc_allocWithZone(MEMORY[0x1E69C5260]) init];
          v44 = v18;
          v27 = v26;
          v45 = [v21 snapshotBundlesMatchingPredicate_];
          v28 = v48;
          (*(v48 + 16))(v8, v13, v4);
          v29 = (*(v28 + 80) + 40) & ~*(v28 + 80);
          v30 = (v6 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
          v31 = swift_allocObject();
          v32 = v49;
          *(v31 + 2) = v27;
          *(v31 + 3) = v32;
          *(v31 + 4) = v47;
          v44(&v31[v29], v8, v4);
          *&v31[v30] = v22;
          v54 = sub_1CAED3A8C;
          v55 = v31;
          aBlock = MEMORY[0x1E69E9820];
          v51 = 1107296256;
          v52 = sub_1CAED3C54;
          v53 = &block_descriptor_22;
          v33 = _Block_copy(&aBlock);
          v34 = v27;

          v35 = v22;

          v36 = swift_allocObject();
          *(v36 + 16) = v34;
          v54 = sub_1CAED3C58;
          v55 = v36;
          aBlock = MEMORY[0x1E69E9820];
          v51 = 1107296256;
          v52 = sub_1CAECE1BC;
          v53 = &block_descriptor_28;
          v37 = _Block_copy(&aBlock);
          v38 = v34;

          v39 = v45;
          [v45 addSuccessBlock:v33 andFailureBlock:v37];
          _Block_release(v37);
          _Block_release(v33);

          v40 = [v38 future];
          (*(v48 + 8))(v13, v4);
          return v40;
        }
      }

      (*(v48 + 8))(v13, v4);
    }
  }

  type metadata accessor for PRUISPosterChannelReaper.OptionalSQLitePredicate();
  inited = swift_initStaticObject();
  v43 = [objc_opt_self() futureWithResult_];

  return v43;
}

void sub_1CAECE704(uint64_t a1, id a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v9 = a2;
    if (qword_1EDE9D148 != -1)
    {
      swift_once();
    }

    v10 = sub_1CAEF9EBC();
    __swift_project_value_buffer(v10, qword_1EDE9D4A0);
    v11 = a2;

    v12 = sub_1CAEF9E9C();
    v13 = sub_1CAEFA70C();

    if (!os_log_type_enabled(v12, v13))
    {

      if (a1)
      {
        goto LABEL_7;
      }

LABEL_9:
      v23 = 0;
      goto LABEL_10;
    }

    v25 = a5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315394;
    v16 = a3(1);
    v18 = sub_1CAEC5CF8(v16, v17, &v26);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v19 = sub_1CAEFAA4C();
    v21 = sub_1CAEC5CF8(v19, v20, &v26);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_1CAE63000, v12, v13, "%s failed to build duplicate 'waitingForLiveRendering' snapshots predicate: %s, continuing without it", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCAAC620](v15, -1, -1);
    v22 = v14;
    a5 = v25;
    MEMORY[0x1CCAAC620](v22, -1, -1);
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = *(a1 + 16);
  v24 = v23;
LABEL_10:
  a5(v23);
}

uint64_t sub_1CAECE938(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_1CAECE9FC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v54 = a5;
  v10 = sub_1CAEF9E1C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  v55 = 0;
  sub_1CAED3B30();
  sub_1CAEFA5DC();
  v17 = v55;
  if (!v55)
  {
    goto LABEL_18;
  }

  v53 = v11;
  if (v55 >> 62)
  {
    if (sub_1CAEFA80C() >= 2)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_17:

LABEL_18:
    type metadata accessor for PRUISPosterChannelReaper.OptionalSQLitePredicate();
    inited = swift_initStaticObject();

    return [a2 finishWithResult_];
  }

LABEL_4:
  v51 = a6;
  v52 = a2;
  if (qword_1EDE9D148 != -1)
  {
    swift_once();
  }

  v18 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v18, qword_1EDE9D4A0);
  v19 = v53;
  (*(v53 + 16))(v16, v54, v10);

  v20 = sub_1CAEF9E9C();
  v21 = sub_1CAEFA70C();

  v50 = v21;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55 = v49;
    *v22 = 136315650;
    *(v22 + 4) = sub_1CAEC5CF8(a3, a4, &v55);
    *(v22 + 12) = 2048;
    v23 = v20;
    if (v17 >> 62)
    {
      v24 = sub_1CAEFA80C();
    }

    else
    {
      v24 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v22 + 14) = v24;

    *(v22 + 22) = 2080;
    sub_1CAED3BEC(&unk_1EDE9D1F0, MEMORY[0x1E69695A8]);
    v26 = sub_1CAEFA9EC();
    v28 = v27;
    v25 = *(v53 + 8);
    v25(v16, v10);
    v29 = sub_1CAEC5CF8(v26, v28, &v55);

    *(v22 + 24) = v29;
    _os_log_impl(&dword_1CAE63000, v23, v50, "%s Found %ld 'waitingForLiveRenderingScene' snapshots for poster %s, keeping only the latest", v22, 0x20u);
    v30 = v49;
    swift_arrayDestroy();
    MEMORY[0x1CCAAC620](v30, -1, -1);
    MEMORY[0x1CCAAC620](v22, -1, -1);
  }

  else
  {

    v25 = *(v19 + 8);
    v25(v16, v10);
  }

  v31 = v52;

  v55 = sub_1CAEECE7C(v32);
  sub_1CAECF7E8(&v55);

  if ((v55 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1CCAAB4D0](0, v55);
    goto LABEL_15;
  }

  if (*(v55 + 16))
  {
    v33 = *(v55 + 32);
LABEL_15:
    v34 = v33;

    v35 = [objc_allocWithZone(MEMORY[0x1E69C55C8]) init];
    v36 = sub_1CAEF9DDC();
    [v35 setPosterUUID_];

    v37 = [objc_opt_self() waitingForLiveRenderingSceneDefinition];
    v38 = [v37 uniqueIdentifier];

    [v35 setSnapshotDefinitionIdentifier_];
    v39 = [v34 snapshotBundleUUID];
    sub_1CAEF9DFC();

    v40 = sub_1CAEF9DDC();
    v25(v14, v10);
    [v35 setSnapshotBundleUUID_];

    v41 = [v51 SQLitePredicate];
    v42 = [v35 SQLitePredicate];
    v43 = [v42 notPredicate];

    v44 = [v41 andPredicate_];
    type metadata accessor for PRUISPosterChannelReaper.OptionalSQLitePredicate();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    v46 = v44;
    [v31 finishWithResult_];
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1CAECF02C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id PRUISPosterChannelReaper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PRUISPosterChannelReaper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1CAECF1F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481E10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1CAECF264(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1CAEFA59C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1CAED0894();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1CAEFA8FC();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1CAECF7E8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1CAEF0580(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1CAECF864(v6);
  return sub_1CAEFA91C();
}

void sub_1CAECF864(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CAEFA9DC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1CAED3B30();
        v6 = sub_1CAEFA60C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1CAECFB88(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CAECF968(0, v2, 1, a1);
  }
}

void sub_1CAECF968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_1CAEF9DBC();
  v8 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 dateCreated];
      sub_1CAEF9D8C();

      v22 = [v20 dateCreated];
      v23 = v34;
      sub_1CAEF9D8C();

      LOBYTE(v22) = sub_1CAEF9D6C();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1CAECFB88(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_1CAEF9DBC();
  v9 = MEMORY[0x1EEE9AC00](v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_1CAEEC428(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_1CAED03F8((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1CAEEC428(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_1CAEEC39C(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 dateCreated];
      v24 = v123;
      sub_1CAEF9D8C();

      v25 = [v22 dateCreated];
      v26 = v124;
      sub_1CAEF9D8C();

      LODWORD(v121) = sub_1CAEF9D6C();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 dateCreated];
        v34 = v123;
        sub_1CAEF9D8C();

        v35 = [v32 dateCreated];
        v36 = v124;
        sub_1CAEF9D8C();

        LODWORD(v35) = sub_1CAEF9D6C() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_1CAEE994C(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_1CAEE994C((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_1CAED03F8((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1CAEEC428(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_1CAEEC39C(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 dateCreated];
    v53 = v123;
    sub_1CAEF9D8C();

    v54 = [v51 dateCreated];
    v55 = v124;
    sub_1CAEF9D8C();

    LOBYTE(v54) = sub_1CAEF9D6C();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1CAED03F8(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_1CAEF9DBC();
  v8 = *(v56 - 8);
  v9 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 dateCreated];
        v41 = v54;
        sub_1CAEF9D8C();

        v42 = [v39 dateCreated];
        v43 = v55;
        sub_1CAEF9D8C();

        LOBYTE(v42) = sub_1CAEF9D6C();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 dateCreated];
        v21 = v54;
        sub_1CAEF9D8C();

        v22 = [v19 dateCreated];
        v23 = v55;
        sub_1CAEF9D8C();

        LOBYTE(v22) = sub_1CAEF9D6C();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_1CAED0894()
{
  v0 = sub_1CAEFA5AC();
  v4 = sub_1CAED0914(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1CAED0914(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1CAEFA79C();
    if (!v9 || (v10 = v9, v11 = sub_1CAECF1F0(v9, 0), v12 = sub_1CAED0A6C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1CAEFA50C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1CAEFA50C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1CAEFA8FC();
LABEL_4:

  return sub_1CAEFA50C();
}

unint64_t sub_1CAED0A6C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1CAED0C8C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1CAEFA56C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1CAEFA8FC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1CAED0C8C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1CAEFA54C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1CAED0C8C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1CAEFA57C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1CCAAB150](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_1CAED0D08(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = [a1 schemaManager];
  *&v5[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_fileSystemSchemaManager] = v13;
  v14 = sub_1CAEF9DDC();
  v15 = [a1 fileSystemEndpointForChannelIdentifier_];

  *&v6[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_rootChannelURLEndpoint] = v15;
  *&v6[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentState] = a2;
  *&v6[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentPosterConfiguration] = a3;
  *&v6[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentGallery] = a4;
  *&v6[OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_snapshotCache] = a5;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  v16 = a2;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1CAED0E20(void *a1, uint64_t a2, id *a3, uint64_t a4)
{
  v106 = a4;
  v113 = a1;
  v115[7] = *MEMORY[0x1E69E9840];
  v101 = sub_1CAEF9E1C();
  v6 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CAEF9CFC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v108 = &v95 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v95 - v15;
  v17 = *(a2 + OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_fileSystemSchemaManager);
  v98 = OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_currentState;
  swift_beginAccess();
  v95 = a3;
  swift_beginAccess();
  v18 = 0;
  v19 = (v9 + 8);
  v107 = (v9 + 16);
  v97 = (v6 + 16);
  v96 = (v6 + 8);
  *&v20 = 136315394;
  v105 = v20;
  v99 = v8;
  v109 = v12;
  v110 = v17;
  v112 = (v9 + 8);
  do
  {
    v114 = v18;

    v21 = sub_1CAEFA4BC();

    v22 = [v113 endPointByAppendingRelativePathComponents_];

    v23 = [v17 resolveEndpoint_];
    sub_1CAEF9CCC();

    if (sub_1CAEF9CAC())
    {
      if (qword_1EDE9D148 != -1)
      {
        swift_once();
      }

      v24 = sub_1CAEF9EBC();
      __swift_project_value_buffer(v24, qword_1EDE9D4A0);
      v25 = v108;
      v26 = *v107;
      (*v107)(v108, v16, v8);
      v27 = sub_1CAEF9E9C();
      v28 = sub_1CAEFA70C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v115[0] = v104;
        *v29 = v105;
        v30 = v100;
        v31 = v101;
        (*v97)(v100, *(v106 + v98) + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier, v101);
        v103 = v27;
        v32 = sub_1CAEF9DDC();
        (*v96)(v30, v31);
        v33 = sub_1CAEFA4BC();
        LODWORD(v102) = v28;
        v34 = v33;
        v35 = sub_1CAEFA4BC();
        v36 = CHANNEL_LOG_PREFIX(v32, v34, v35, 1uLL);

        v37 = sub_1CAEFA4EC();
        v39 = v38;

        v40 = sub_1CAEC5CF8(v37, v39, v115);
        v8 = v99;

        *(v29 + 4) = v40;
        *(v29 + 12) = 2080;
        sub_1CAED3BEC(&qword_1EDE9D238, MEMORY[0x1E6968FB0]);
        v41 = v108;
        v42 = sub_1CAEFA9EC();
        v44 = v43;
        v111 = *v112;
        v111(v41, v8);
        v45 = sub_1CAEC5CF8(v42, v44, v115);

        *(v29 + 14) = v45;
        v46 = v103;
        _os_log_impl(&dword_1CAE63000, v103, v102, "%s trying to reap %s", v29, 0x16u);
        v47 = v104;
        swift_arrayDestroy();
        MEMORY[0x1CCAAC620](v47, -1, -1);
        v48 = v29;
        v12 = v109;
        MEMORY[0x1CCAAC620](v48, -1, -1);
      }

      else
      {

        v111 = *v112;
        v111(v25, v8);
      }

      v115[0] = 0;
      v17 = v110;
      v49 = [v110 deleteEndpoint:v22 error:v115];
      v50 = v115[0];
      if (v49)
      {
        v26(v12, v16, v8);
        v51 = v50;
        v52 = sub_1CAEF9E9C();
        v53 = sub_1CAEFA70C();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v115[0] = v104;
          *v54 = v105;
          v55 = *v97;
          v56 = *(v106 + v98) + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier;
          v57 = v100;
          LODWORD(v103) = v53;
          v58 = v101;
          v55(v100, v56, v101);
          v102 = v52;
          v59 = sub_1CAEF9DDC();
          (*v96)(v57, v58);
          v60 = sub_1CAEFA4BC();
          v61 = sub_1CAEFA4BC();
          v62 = CHANNEL_LOG_PREFIX(v59, v60, v61, 1uLL);

          v63 = sub_1CAEFA4EC();
          v65 = v64;

          v66 = sub_1CAEC5CF8(v63, v65, v115);
          v17 = v110;

          *(v54 + 4) = v66;
          *(v54 + 12) = 2080;
          sub_1CAED3BEC(&qword_1EDE9D238, MEMORY[0x1E6968FB0]);
          v67 = sub_1CAEFA9EC();
          v69 = v68;
          v70 = v111;
          v19 = v112;
          v111(v109, v8);
          v71 = sub_1CAEC5CF8(v67, v69, v115);

          *(v54 + 14) = v71;
          v72 = v102;
          _os_log_impl(&dword_1CAE63000, v102, v103, "%s reaped %s", v54, 0x16u);
          v73 = v104;
          swift_arrayDestroy();
          MEMORY[0x1CCAAC620](v73, -1, -1);
          v74 = v54;
          v12 = v109;
          MEMORY[0x1CCAAC620](v74, -1, -1);

          v70(v16, v8);
        }

        else
        {

          v91 = v111;
          v19 = v112;
          v111(v12, v8);
          v91(v16, v8);
        }
      }

      else
      {
        v75 = v115[0];
        v76 = sub_1CAEF9BFC();

        swift_willThrow();
        v77 = v76;
        v78 = sub_1CAEF9E9C();
        v79 = sub_1CAEFA6EC();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v115[0] = v81;
          *v80 = v105;
          v82 = sub_1CAECD850(1uLL, v106);
          v84 = sub_1CAEC5CF8(v82, v83, v115);

          *(v80 + 4) = v84;
          *(v80 + 12) = 2080;
          swift_getErrorValue();
          v85 = sub_1CAEFAA5C();
          v87 = sub_1CAEC5CF8(v85, v86, v115);

          *(v80 + 14) = v87;
          v8 = v99;
          _os_log_impl(&dword_1CAE63000, v78, v79, "%s error encountered while reaping: %s", v80, 0x16u);
          swift_arrayDestroy();
          v88 = v81;
          v12 = v109;
          MEMORY[0x1CCAAC620](v88, -1, -1);
          MEMORY[0x1CCAAC620](v80, -1, -1);
        }

        v89 = v95;
        v19 = v112;
        if (*v95)
        {
          v90 = *v95;

          v111(v16, v8);
        }

        else
        {
          v92 = sub_1CAEF9BEC();

          v111(v16, v8);
          v93 = *v89;
          *v89 = v92;
        }

        v17 = v110;
      }
    }

    else
    {

      (*v19)(v16, v8);
    }

    v18 = 1;
  }

  while ((v114 & 1) == 0);
  return swift_arrayDestroy();
}

void sub_1CAED19BC(void *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v93 = a4;
  v94[3] = *MEMORY[0x1E69E9840];
  v7 = sub_1CAEF9CFC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v85 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v85 - v15;
  v17 = *(a2 + OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_fileSystemSchemaManager);
  v18 = [v17 resolveEndpoint_];
  sub_1CAEF9CCC();

  if (sub_1CAEF9CAC())
  {
    if (qword_1EDE9D148 != -1)
    {
      swift_once();
    }

    v19 = sub_1CAEF9EBC();
    v20 = __swift_project_value_buffer(v19, qword_1EDE9D4A0);
    v88 = *(v8 + 16);
    v89 = v8 + 16;
    v88(v14, v16, v7);
    v91 = v20;
    v21 = sub_1CAEF9E9C();
    v87 = sub_1CAEFA70C();
    v22 = os_log_type_enabled(v21, v87);
    v90 = a3;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v94[0] = v86;
      *v23 = 136315394;
      v24 = sub_1CAECD850(1uLL, v93);
      v85 = v21;
      v26 = v7;
      v27 = sub_1CAEC5CF8(v24, v25, v94);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      sub_1CAED3BEC(&qword_1EDE9D238, MEMORY[0x1E6968FB0]);
      v28 = sub_1CAEFA9EC();
      v30 = v29;
      v92 = *(v8 + 8);
      v92(v14, v26);
      v31 = sub_1CAEC5CF8(v28, v30, v94);
      v7 = v26;

      *(v23 + 14) = v31;
      v32 = v85;
      _os_log_impl(&dword_1CAE63000, v85, v87, "%s trying to reap %s", v23, 0x16u);
      v33 = v86;
      swift_arrayDestroy();
      MEMORY[0x1CCAAC620](v33, -1, -1);
      MEMORY[0x1CCAAC620](v23, -1, -1);
    }

    else
    {

      v92 = *(v8 + 8);
      v92(v14, v7);
    }

    v94[0] = 0;
    v49 = [v17 deleteEndpoint:a1 error:v94];
    v50 = v94[0];
    if (v49)
    {
      v88(v11, v16, v7);
      v51 = v50;
      v52 = sub_1CAEF9E9C();
      v53 = v7;
      v54 = sub_1CAEFA70C();
      if (os_log_type_enabled(v52, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v94[0] = v56;
        *v55 = 136315394;
        v57 = sub_1CAECD850(1uLL, v93);
        v59 = sub_1CAEC5CF8(v57, v58, v94);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2080;
        sub_1CAED3BEC(&qword_1EDE9D238, MEMORY[0x1E6968FB0]);
        v60 = sub_1CAEFA9EC();
        v62 = v61;
        v63 = v11;
        v64 = v92;
        v92(v63, v53);
        v65 = sub_1CAEC5CF8(v60, v62, v94);

        *(v55 + 14) = v65;
        _os_log_impl(&dword_1CAE63000, v52, v54, "%s reaped %s", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCAAC620](v56, -1, -1);
        MEMORY[0x1CCAAC620](v55, -1, -1);

        v64(v16, v53);
      }

      else
      {

        v82 = v92;
        v92(v11, v53);
        v82(v16, v53);
      }
    }

    else
    {
      v66 = v94[0];
      v67 = sub_1CAEF9BFC();

      swift_willThrow();
      v68 = v67;
      v69 = sub_1CAEF9E9C();
      v70 = sub_1CAEFA6EC();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = v7;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v94[0] = v73;
        *v72 = 136315394;
        v74 = sub_1CAECD850(1uLL, v93);
        v76 = sub_1CAEC5CF8(v74, v75, v94);

        *(v72 + 4) = v76;
        *(v72 + 12) = 2080;
        swift_getErrorValue();
        v77 = sub_1CAEFAA5C();
        v79 = sub_1CAEC5CF8(v77, v78, v94);

        *(v72 + 14) = v79;
        _os_log_impl(&dword_1CAE63000, v69, v70, "%s error encountered while reaping: %s", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCAAC620](v73, -1, -1);
        v80 = v72;
        v7 = v71;
        MEMORY[0x1CCAAC620](v80, -1, -1);
      }

      v81 = v90;
      swift_beginAccess();
      if (*v81)
      {

        v92(v16, v7);
      }

      else
      {
        v83 = sub_1CAEF9BEC();

        v92(v16, v7);
        swift_beginAccess();
        v84 = *v81;
        *v81 = v83;
      }
    }
  }

  else
  {
    if (qword_1EDE9D148 != -1)
    {
      swift_once();
    }

    v34 = sub_1CAEF9EBC();
    __swift_project_value_buffer(v34, qword_1EDE9D4A0);
    v35 = a1;
    v36 = sub_1CAEF9E9C();
    v37 = sub_1CAEFA70C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v7;
      v40 = swift_slowAlloc();
      v94[0] = v40;
      *v38 = 136315394;
      v41 = sub_1CAECD850(1uLL, v93);
      v43 = sub_1CAEC5CF8(v41, v42, v94);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      v44 = [v35 pathComponents];
      v45 = sub_1CAEFA4EC();
      v47 = v46;

      v48 = sub_1CAEC5CF8(v45, v47, v94);

      *(v38 + 14) = v48;
      _os_log_impl(&dword_1CAE63000, v36, v37, "%s nothing to reap at %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCAAC620](v40, -1, -1);
      MEMORY[0x1CCAAC620](v38, -1, -1);

      (*(v8 + 8))(v16, v39);
    }

    else
    {

      (*(v8 + 8))(v16, v7);
    }
  }
}

void sub_1CAED2354(uint64_t a1, id a2, unint64_t a3, uint64_t a4, void **a5, uint64_t a6)
{
  v56 = a5;
  v54 = a2;
  v57[3] = *MEMORY[0x1E69E9840];
  v10 = sub_1CAEF9CFC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE9D148 != -1)
  {
    swift_once();
  }

  v14 = sub_1CAEF9EBC();
  v15 = __swift_project_value_buffer(v14, qword_1EDE9D4A0);
  (*(v11 + 16))(v13, a1, v10);

  v55 = v15;
  v16 = sub_1CAEF9E9C();
  v17 = sub_1CAEFA70C();

  v18 = os_log_type_enabled(v16, v17);
  v53 = a6;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v52[0] = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v52[1] = a1;
    v22 = v21;
    v57[0] = v21;
    *v20 = 136315650;
    v23 = sub_1CAECD850(1uLL, a6);
    v25 = sub_1CAEC5CF8(v23, v24, v57);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1CAEC5CF8(v54, a3, v57);
    *(v20 + 22) = 2080;
    sub_1CAED3BEC(&qword_1EDE9D238, MEMORY[0x1E6968FB0]);
    v26 = sub_1CAEFA9EC();
    v28 = v27;
    (*(v11 + 8))(v13, v10);
    v29 = sub_1CAEC5CF8(v26, v28, v57);

    *(v20 + 24) = v29;
    _os_log_impl(&dword_1CAE63000, v16, v17, "%s reaping unexpected url for reason '%s': %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCAAC620](v22, -1, -1);
    v30 = v20;
    a4 = v52[0];
    MEMORY[0x1CCAAC620](v30, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v31 = [*(a4 + OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_fileSystemSchemaManager) fileManager];
  v32 = sub_1CAEF9C8C();
  v57[0] = 0;
  v33 = [v31 removeItemAtURL:v32 error:v57];

  v34 = v57[0];
  if (v33)
  {

    v35 = v34;
  }

  else
  {
    v54 = v57[0];
    v36 = v57[0];
    v37 = sub_1CAEF9BFC();

    swift_willThrow();
    v38 = v37;
    v39 = sub_1CAEF9E9C();
    v40 = sub_1CAEFA70C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57[0] = v42;
      *v41 = 136315394;
      v43 = sub_1CAECD850(1uLL, v53);
      v45 = sub_1CAEC5CF8(v43, v44, v57);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      swift_getErrorValue();
      v46 = sub_1CAEFAA5C();
      v48 = sub_1CAEC5CF8(v46, v47, v57);

      *(v41 + 14) = v48;
      _os_log_impl(&dword_1CAE63000, v39, v40, "%s error encountered while reaping unexpected url: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCAAC620](v42, -1, -1);
      MEMORY[0x1CCAAC620](v41, -1, -1);
    }

    v49 = v56;
    swift_beginAccess();
    if (*v49)
    {
    }

    else
    {
      v50 = sub_1CAEF9BEC();

      swift_beginAccess();
      v51 = *v49;
      *v49 = v50;
    }
  }
}

uint64_t sub_1CAED28F8(void (**a1)(uint64_t, char *, uint64_t), uint64_t a2, void **a3, void *a4)
{
  v86 = a3;
  v84 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481E90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v91 = &v75 - v7;
  v87 = sub_1CAEF9B6C();
  v80 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482060);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v75 - v10;
  v12 = sub_1CAEF9CFC();
  v77 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1CAEF9C1C();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAF026A0;
  v17 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v89 = a4;
  v18 = v17;
  v19 = sub_1CAEC83EC(inited);
  swift_setDeallocating();
  sub_1CAECC020(inited + 32);
  v85 = a2;
  v20 = [*(a2 + OBJC_IVAR____TtC21PosterBoardUIServices24PRUISPosterChannelReaper_fileSystemSchemaManager) fileManager];
  v21 = *(v19 + 16);
  v88 = v15;
  v90 = v19;
  if (v21)
  {
    v22 = sub_1CAEE9B5C(v21, 0);
    v81 = sub_1CAEED554(&v94, v22 + 4, v21, v19);

    result = sub_1CAE66924();
    if (v81 != v21)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return result;
    }

    v15 = v88;
  }

  v24 = sub_1CAEFA6DC();

  v25 = v91;
  if (v24)
  {
    v76 = v24;
    sub_1CAEFA6CC();
    sub_1CAEF9C0C();
    v26 = v83;
    if (v95)
    {
      v27 = (v77 + 56);
      v84 = (v77 + 32);
      v28 = (v80 + 7);
      v81 = (v80 + 4);
      ++v80;
      v75 = v92 + 1;
      v29 = (v77 + 8);
      v77 = "8";
      do
      {
        v30 = swift_dynamicCast();
        v31 = *v27;
        if (v30)
        {
          v31(v11, 0, 1, v12);
          (*v84)(v26, v11, v12);
          sub_1CAEF9C5C();
          v32 = v87;
          (*v28)(v25, 0, 1, v87);
          v33 = v82;
          (*v81)(v82, v25, v32);
          v34 = sub_1CAEF9B4C();
          (*v80)(v33, v32);
          if (v34 == 2)
          {
            v26 = v83;
          }

          else
          {
            v26 = v83;
            if (v34)
            {
              result = sub_1CAEF9C7C();
              v36 = HIBYTE(v35) & 0xF;
              v37 = result & 0xFFFFFFFFFFFFLL;
              if ((v35 & 0x2000000000000000) != 0)
              {
                v38 = HIBYTE(v35) & 0xF;
              }

              else
              {
                v38 = result & 0xFFFFFFFFFFFFLL;
              }

              if (!v38)
              {

                v15 = v88;
                goto LABEL_79;
              }

              if ((v35 & 0x1000000000000000) == 0)
              {
                v15 = v88;
                if ((v35 & 0x2000000000000000) != 0)
                {
                  v92[0] = result;
                  v92[1] = v35 & 0xFFFFFFFFFFFFFFLL;
                  if (result == 43)
                  {
                    if (!v36)
                    {
                      goto LABEL_90;
                    }

                    v37 = v36 - 1;
                    if (v36 != 1)
                    {
                      v57 = 0;
                      v58 = v75;
                      while (1)
                      {
                        v59 = *v58 - 48;
                        if (v59 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v57, 0xAuLL))
                        {
                          break;
                        }

                        v60 = 10 * v57;
                        v46 = __CFADD__(v60, v59);
                        v57 = v60 + v59;
                        if (v46)
                        {
                          break;
                        }

                        ++v58;
                        if (!--v37)
                        {
                          goto LABEL_78;
                        }
                      }
                    }
                  }

                  else if (result == 45)
                  {
                    if (!v36)
                    {
                      goto LABEL_92;
                    }

                    v37 = v36 - 1;
                    if (v36 != 1)
                    {
                      v48 = 0;
                      v49 = v75;
                      while (1)
                      {
                        v50 = *v49 - 48;
                        if (v50 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v48, 0xAuLL))
                        {
                          break;
                        }

                        v51 = 10 * v48;
                        v46 = v51 >= v50;
                        v48 = v51 - v50;
                        if (!v46)
                        {
                          break;
                        }

                        ++v49;
                        if (!--v37)
                        {
                          goto LABEL_78;
                        }
                      }
                    }
                  }

                  else if (v36)
                  {
                    v64 = 0;
                    v65 = v92;
                    while (1)
                    {
                      v66 = *v65 - 48;
                      if (v66 > 9)
                      {
                        break;
                      }

                      if (!is_mul_ok(v64, 0xAuLL))
                      {
                        break;
                      }

                      v67 = 10 * v64;
                      v46 = __CFADD__(v67, v66);
                      v64 = v67 + v66;
                      if (v46)
                      {
                        break;
                      }

                      ++v65;
                      if (!--v36)
                      {
                        goto LABEL_76;
                      }
                    }
                  }
                }

                else
                {
                  if ((result & 0x1000000000000000) != 0)
                  {
                    result = (v35 & 0xFFFFFFFFFFFFFFFLL) + 32;
                  }

                  else
                  {
                    result = sub_1CAEFA8FC();
                    v37 = v72;
                  }

                  v39 = *result;
                  if (v39 == 43)
                  {
                    v52 = v37 == 1;
                    v41 = v37-- < 1;
                    if (v41)
                    {
                      goto LABEL_89;
                    }

                    if (!v52)
                    {
                      if (!result)
                      {
                        goto LABEL_76;
                      }

                      v53 = 0;
                      v54 = (result + 1);
                      while (1)
                      {
                        v55 = *v54 - 48;
                        if (v55 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v53, 0xAuLL))
                        {
                          break;
                        }

                        v56 = 10 * v53;
                        v46 = __CFADD__(v56, v55);
                        v53 = v56 + v55;
                        if (v46)
                        {
                          break;
                        }

                        ++v54;
                        if (!--v37)
                        {
                          goto LABEL_78;
                        }
                      }
                    }
                  }

                  else if (v39 == 45)
                  {
                    v40 = v37 == 1;
                    v41 = v37-- < 1;
                    if (v41)
                    {
                      goto LABEL_91;
                    }

                    if (!v40)
                    {
                      if (result)
                      {
                        v42 = 0;
                        v43 = (result + 1);
                        while (1)
                        {
                          v44 = *v43 - 48;
                          if (v44 > 9)
                          {
                            goto LABEL_77;
                          }

                          if (!is_mul_ok(v42, 0xAuLL))
                          {
                            goto LABEL_77;
                          }

                          v45 = 10 * v42;
                          v46 = v45 >= v44;
                          v42 = v45 - v44;
                          if (!v46)
                          {
                            goto LABEL_77;
                          }

                          ++v43;
                          if (!--v37)
                          {
                            goto LABEL_78;
                          }
                        }
                      }

LABEL_76:
                      LOBYTE(v37) = 0;
LABEL_78:
                      v93 = v37;
                      v68 = v37;

                      if (v68)
                      {
LABEL_79:
                        v69 = v89;
                        sub_1CAED2354(v26, 0xD00000000000001ALL, v77 | 0x8000000000000000, v85, v86, v69);
                      }

LABEL_80:
                      (*v29)(v26, v12);
                      v25 = v91;
                      goto LABEL_8;
                    }
                  }

                  else
                  {
                    if (!v37)
                    {
                      goto LABEL_77;
                    }

                    if (!result)
                    {
                      goto LABEL_76;
                    }

                    v61 = 0;
                    while (1)
                    {
                      v62 = *result - 48;
                      if (v62 > 9)
                      {
                        break;
                      }

                      if (!is_mul_ok(v61, 0xAuLL))
                      {
                        break;
                      }

                      v63 = 10 * v61;
                      v46 = __CFADD__(v63, v62);
                      v61 = v63 + v62;
                      if (v46)
                      {
                        break;
                      }

                      ++result;
                      if (!--v37)
                      {
                        goto LABEL_78;
                      }
                    }
                  }
                }

LABEL_77:
                LOBYTE(v37) = 1;
                goto LABEL_78;
              }

              v93 = 0;
              sub_1CAECF264(result, v35, 10);
              v71 = v70;

              v15 = v88;
              if (v71)
              {
                goto LABEL_79;
              }

              goto LABEL_80;
            }
          }

          v47 = v89;
          sub_1CAED2354(v26, 0x6964206120746F6ELL, 0xEF79726F74636572, v85, v86, v47);

          (*v29)(v26, v12);
          v25 = v91;
          v15 = v88;
        }

        else
        {
          v31(v11, 1, 1, v12);
          sub_1CAEB3344(v11, &qword_1EC482060);
        }

LABEL_8:
        sub_1CAEF9C0C();
      }

      while (v95);
    }

    (*(v78 + 8))(v15, v79);
    v73 = v89;
  }

  else
  {
    v74 = v89;
  }
}

unint64_t sub_1CAED331C()
{
  result = qword_1EC481E70;
  if (!qword_1EC481E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481E70);
  }

  return result;
}

void sub_1CAED3370(void *a1)
{
  v2 = sub_1CAEF9E1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  if (a1)
  {
    v9 = a1;
    v10 = [v9 _path];
    v11 = [v10 serverIdentity];

    if (v11)
    {
      v12 = [v11 posterUUID];

      sub_1CAEF9DFC();
      (*(v3 + 32))(v8, v6, v2);
      v13 = [objc_allocWithZone(MEMORY[0x1E69C55C8]) init];
      v14 = sub_1CAEF9DDC();
      [v13 setPosterUUID_];

      v15 = [v9 _path];
      v16 = [v15 serverIdentity];

      if (v16)
      {
        v17 = [v16 version];

        if ((v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v18 = sub_1CAEF9DDC();
          [objc_opt_self() predicateMatchingBundleWithPosterVersionLessThan:v17 posterUUID:v18];

          (*(v3 + 8))(v8, v2);
        }
      }

      else
      {
        (*(v3 + 8))(v8, v2);
      }
    }

    else
    {
    }
  }
}

void sub_1CAED3600(uint64_t a1, double a2)
{
  v4 = sub_1CAEF9DBC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  if (qword_1EDE9D148 != -1)
  {
    swift_once();
  }

  v10 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v10, qword_1EDE9D4A0);
  v11 = sub_1CAEF9E9C();
  v12 = sub_1CAEFA70C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315394;
    v15 = sub_1CAECD850(2uLL, a1);
    v17 = sub_1CAEC5CF8(v15, v16, &v19);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v9 - a2;
    _os_log_impl(&dword_1CAE63000, v11, v12, "%s Elapsed time: %f seconds", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1CCAAC620](v14, -1, -1);
    MEMORY[0x1CCAAC620](v13, -1, -1);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for PRUISPosterChannelReaper.SnapshotReapError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PRUISPosterChannelReaper.SnapshotReapError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CAED3A38()
{
  result = qword_1EC481E80;
  if (!qword_1EC481E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481E80);
  }

  return result;
}

id sub_1CAED3A8C(uint64_t a1)
{
  v3 = *(sub_1CAEF9E1C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CAECE9FC(a1, v5, v6, v7, v1 + v4, v8);
}

unint64_t sub_1CAED3B30()
{
  result = qword_1EC481E88;
  if (!qword_1EC481E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC481E88);
  }

  return result;
}

void sub_1CAED3B94()
{
  v1 = *(v0 + 16);
  v2 = sub_1CAEF9BEC();
  [v1 finishWithError_];
}

uint64_t sub_1CAED3BEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAED3C5C()
{
  v0 = sub_1CAEF9EBC();
  __swift_allocate_value_buffer(v0, qword_1EC481EA0);
  __swift_project_value_buffer(v0, qword_1EC481EA0);
  return sub_1CAEF9EAC();
}

uint64_t sub_1CAED3CF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657263736C6C7566;
  }

  else
  {
    v3 = 0x6C61646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E65;
  }

  if (*a2)
  {
    v5 = 0x657263736C6C7566;
  }

  else
  {
    v5 = 0x6C61646F6DLL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E65;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CAEFA9FC();
  }

  return v8 & 1;
}

uint64_t sub_1CAED3D98()
{
  sub_1CAEFAAAC();
  sub_1CAEFA51C();

  return sub_1CAEFAACC();
}

uint64_t sub_1CAED3E1C()
{
  sub_1CAEFA51C();
}

uint64_t sub_1CAED3E8C()
{
  sub_1CAEFAAAC();
  sub_1CAEFA51C();

  return sub_1CAEFAACC();
}

uint64_t sub_1CAED3F0C@<X0>(char *a1@<X8>)
{
  v2 = sub_1CAEFA9BC();

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

void sub_1CAED3F6C(uint64_t *a1@<X8>)
{
  v2 = 0x6C61646F6DLL;
  if (*v1)
  {
    v2 = 0x657263736C6C7566;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1CAED3FBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  PFCurrentDeviceClass();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v4 = v17[1];
  v5 = sub_1CAEFA4EC();
  v7 = v6;
  if (v5 == sub_1CAEFA4EC() && v7 == v8)
  {

    return sub_1CAEDB108();
  }

  else
  {
    v10 = sub_1CAEFA9FC();

    if (v10)
    {
      return sub_1CAEDB108();
    }

    else
    {
      v12 = sub_1CAEFA67C();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      sub_1CAEFA64C();
      v13 = v0;
      v14 = sub_1CAEFA63C();
      v15 = swift_allocObject();
      v16 = MEMORY[0x1E69E85E0];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v13;
      sub_1CAED4CC8(0, 0, v3, &unk_1CAF047B0, v15);
    }
  }
}

uint64_t sub_1CAED41C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  return v1;
}

uint64_t sub_1CAED4248(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  MEMORY[0x1EEE9AC00]();
  v6 = v14 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v14[0] = a1;
  v14[1] = a2;
  v7 = v2;
  sub_1CAEF9F1C();
  PFCurrentDeviceClass();
  v8 = sub_1CAEFA67C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1CAEFA64C();
  v9 = v7;
  v10 = sub_1CAEFA63C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_1CAED4CC8(0, 0, v6, &unk_1CAF049C8, v11);
}

void (*sub_1CAED43EC(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1CAEF9EFC();
  return sub_1CAED4490;
}

uint64_t sub_1CAED4494()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  return v1;
}

uint64_t sub_1CAED451C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  return v1;
}

void (*sub_1CAED4588(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1CAEF9EFC();
  return sub_1CAEF0584;
}

void sub_1CAED462C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1CAED46A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  return v1;
}

uint64_t sub_1CAED4714()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  return v1;
}

uint64_t sub_1CAED47C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  return v1;
}

uint64_t sub_1CAED4830()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  return v1;
}

uint64_t sub_1CAED48A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();
}

uint64_t sub_1CAED491C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  return v1;
}

uint64_t sub_1CAED4990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  v4[3] = swift_task_alloc();
  v4[4] = sub_1CAEFA64C();
  v4[5] = sub_1CAEFA63C();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_1CAED4A78;

  return sub_1CAED5BBC();
}

uint64_t sub_1CAED4A78()
{

  v1 = sub_1CAEFA62C();

  return MEMORY[0x1EEE6DFA0](sub_1CAED4BB4, v1, v0);
}

uint64_t sub_1CAED4BB4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_1CAEFA67C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_1CAEFA63C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_1CAED4CC8(0, 0, v1, &unk_1CAF04F48, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1CAED4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  MEMORY[0x1EEE9AC00]();
  v10 = v24 - v9;
  sub_1CAEB33EC(a3, v24 - v9, &qword_1EC4820C8);
  v11 = sub_1CAEFA67C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1CAEB3344(v10, &qword_1EC4820C8);
  }

  else
  {
    sub_1CAEFA66C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1CAEFA62C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1CAEFA4FC() + 32;
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

      sub_1CAEB3344(a3, &qword_1EC4820C8);

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

  sub_1CAEB3344(a3, &qword_1EC4820C8);
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

uint64_t sub_1CAED5110()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v45 - v3;
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = sub_1CAEFA4BC();
  v8 = [v6 stringForKey_];

  if (v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v8;
    v1;
    v9 = v8;
    sub_1CAEF9F1C();
    sub_1CAED3FBC();
  }

  v10 = [v5 standardUserDefaults];
  v11 = sub_1CAEFA4BC();
  v12 = [v10 stringForKey_];

  if (v12)
  {
    v13 = sub_1CAEFA4EC();
    v15 = v14;

    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v13;
    v46 = v15;
    v16 = v1;
    sub_1CAEF9F1C();
    PFCurrentDeviceClass();
    v17 = sub_1CAEFA67C();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    sub_1CAEFA64C();
    v18 = v16;
    v19 = sub_1CAEFA63C();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v18;
    sub_1CAED4CC8(0, 0, v4, &unk_1CAF048E8, v20);
  }

  v22 = [v5 standardUserDefaults];
  v23 = sub_1CAEFA4BC();
  v24 = [v22 stringForKey_];

  if (v24)
  {
    v25 = sub_1CAEFA4EC();
    v27 = v26;

    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v25;
    v46 = v27;
    v28 = v1;
    sub_1CAEF9F1C();
  }

  v29 = [v5 standardUserDefaults];
  v30 = sub_1CAEFA4BC();
  v31 = [v29 stringForKey_];

  if (v31)
  {
    v32 = sub_1CAEFA4EC();
    v34 = v33;

    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v32;
    v46 = v34;
    v35 = v1;
    sub_1CAEF9F1C();
  }

  v36 = [v5 standardUserDefaults];
  v37 = sub_1CAEFA4BC();
  v38 = [v36 integerForKey_];

  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v38;
  v39 = v1;
  sub_1CAEF9F1C();
  v40 = [v5 standardUserDefaults];
  v41 = sub_1CAEFA4BC();
  v42 = [v40 BOOLForKey_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  if (v42 != v45)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v45) = v42;
    v44 = v39;
    return sub_1CAEF9F1C();
  }

  return result;
}

uint64_t sub_1CAED56A8()
{
  v1[19] = v0;
  sub_1CAEFA64C();
  v1[20] = sub_1CAEFA63C();
  v3 = sub_1CAEFA62C();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CAED5740, v3, v2);
}

uint64_t sub_1CAED5740()
{
  v1 = *(v0[19] + OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_service);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CAED5868;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482108);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CAED5AE0;
  v0[13] = &block_descriptor_200;
  v0[14] = v2;
  [v1 fetchExtensionIdentifiersWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CAED5868()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_1CAED5A5C;
  }

  else
  {
    v5 = sub_1CAED5998;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CAED5998()
{
  v5 = v0;

  v4 = *(v0 + 144);

  sub_1CAEEAA6C(&v4);

  v1 = v4;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CAED5A5C()
{
  v1 = *(v0 + 184);

  swift_willThrow();

  v2 = *(v0 + 8);
  v3 = MEMORY[0x1E69E7CC0];

  return v2(v3);
}

uint64_t sub_1CAED5AE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1CAEFA5EC();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1CAED5BBC()
{
  v1[37] = v0;
  v1[38] = sub_1CAEFA64C();
  v1[39] = sub_1CAEFA63C();
  v1[34] = MEMORY[0x1E69E7CC0];
  v2 = swift_task_alloc();
  v1[40] = v2;
  *v2 = v1;
  v2[1] = sub_1CAED5C78;

  return sub_1CAED56A8();
}

uint64_t sub_1CAED5C78(uint64_t a1)
{
  v2 = *v1;
  v2[41] = a1;

  v4 = sub_1CAEFA62C();
  v2[42] = v4;
  v2[43] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CAED5DC4, v4, v3);
}

uint64_t sub_1CAED5DC4()
{
  v1 = v0[41];
  v2 = v1[2];
  v0[44] = v2;
  if (v2)
  {
    v3 = *(v0[37] + OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_service);
    v0[45] = v3;
    v0[46] = 0;
    v0[47] = v1[4];
    v0[48] = v1[5];

    v4 = sub_1CAEFA4BC();
    v0[49] = v4;
    v0[2] = v0;
    v0[7] = v0 + 35;
    v0[3] = sub_1CAED5FAC;
    v5 = swift_continuation_init();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482100);
    v0[50] = v6;
    v0[25] = v6;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1CAED6918;
    v0[21] = &block_descriptor_193;
    v0[22] = v5;
    [v3 fetchPosterDescriptorsForExtension:v4 completion:v0 + 18];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    *(v0[37] + OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_cachedDescriptorIdentifiers) = MEMORY[0x1E69E7CC0];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1CAED5FAC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);
  if (v2)
  {
    v5 = sub_1CAED6580;
  }

  else
  {
    v5 = sub_1CAED60DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CAED60DC()
{
  v1 = *(v0 + 280);

  *(v0 + 416) = v1;
  v2 = *(v0 + 400);
  v3 = *(v0 + 360);
  v4 = sub_1CAEFA4BC();
  *(v0 + 424) = v4;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 288;
  *(v0 + 88) = sub_1CAED622C;
  v5 = swift_continuation_init();
  *(v0 + 264) = v2;
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1CAED6918;
  *(v0 + 232) = &block_descriptor_196;
  *(v0 + 240) = v5;
  [v3 fetchStaticPosterDescriptorsForExtension:v4 completion:v0 + 208];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1CAED622C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);
  if (v2)
  {
    v5 = sub_1CAED66E0;
  }

  else
  {
    v5 = sub_1CAED635C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CAED635C()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 352);
  v3 = *(v0 + 368) + 1;
  v4 = MEMORY[0x1E69E7CC0];
  if (*(v0 + 416))
  {
    v5 = *(v0 + 416);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1CAEC4AA4(v5);
  if (v1)
  {
    v6 = v1;
  }

  else
  {
    v6 = v4;
  }

  sub_1CAEC4AA4(v6);
  if (v3 == v2)
  {

    *(*(v0 + 296) + OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_cachedDescriptorIdentifiers) = *(v0 + 272);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 360);
    v10 = *(v0 + 368) + 1;
    *(v0 + 368) = v10;
    v11 = *(v0 + 328) + 16 * v10;
    *(v0 + 376) = *(v11 + 32);
    *(v0 + 384) = *(v11 + 40);

    v12 = sub_1CAEFA4BC();
    *(v0 + 392) = v12;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 280;
    *(v0 + 24) = sub_1CAED5FAC;
    v13 = swift_continuation_init();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482100);
    *(v0 + 400) = v14;
    *(v0 + 200) = v14;
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1CAED6918;
    *(v0 + 168) = &block_descriptor_193;
    *(v0 + 176) = v13;
    [v9 fetchPosterDescriptorsForExtension:v12 completion:v0 + 144];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1CAED6580()
{
  v1 = v0[51];
  v2 = v0[49];
  swift_willThrow();

  v0[52] = 0;
  v3 = v0[50];
  v4 = v0[45];
  v5 = sub_1CAEFA4BC();
  v0[53] = v5;

  v0[10] = v0;
  v0[15] = v0 + 36;
  v0[11] = sub_1CAED622C;
  v6 = swift_continuation_init();
  v0[33] = v3;
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1CAED6918;
  v0[29] = &block_descriptor_196;
  v0[30] = v6;
  [v4 fetchStaticPosterDescriptorsForExtension:v5 completion:v0 + 26];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1CAED66E0()
{
  v1 = v0[53];
  v2 = v0[54];
  swift_willThrow();

  v3 = v0[44];
  v4 = v0[46] + 1;
  v5 = MEMORY[0x1E69E7CC0];
  if (v0[52])
  {
    v6 = v0[52];
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1CAEC4AA4(v6);
  sub_1CAEC4AA4(v5);
  if (v4 == v3)
  {

    *(v0[37] + OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_cachedDescriptorIdentifiers) = v0[34];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[45];
    v10 = v0[46] + 1;
    v0[46] = v10;
    v11 = v0[41] + 16 * v10;
    v0[47] = *(v11 + 32);
    v0[48] = *(v11 + 40);

    v12 = sub_1CAEFA4BC();
    v0[49] = v12;
    v0[2] = v0;
    v0[7] = v0 + 35;
    v0[3] = sub_1CAED5FAC;
    v13 = swift_continuation_init();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482100);
    v0[50] = v14;
    v0[25] = v14;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1CAED6918;
    v0[21] = &block_descriptor_193;
    v0[22] = v13;
    [v9 fetchPosterDescriptorsForExtension:v12 completion:v0 + 18];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1CAED692C()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  v1[20] = swift_task_alloc();
  v1[21] = sub_1CAEFA64C();
  v1[22] = sub_1CAEFA63C();
  v2 = swift_task_alloc();
  v1[23] = v2;
  *v2 = v1;
  v2[1] = sub_1CAED6A14;

  return sub_1CAED56A8();
}

uint64_t sub_1CAED6A14(uint64_t a1)
{
  v2 = *v1;
  v2[24] = a1;

  v4 = sub_1CAEFA62C();
  v2[25] = v4;
  v2[26] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CAED6B60, v4, v3);
}

uint64_t sub_1CAED6B60()
{
  v1 = *(v0[24] + 16);
  v0[27] = v1;
  if (v1)
  {
    v2 = *(v0[19] + OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_service);
    v0[28] = v2;
    v0[29] = 0;

    v3 = sub_1CAEFA4BC();
    v0[30] = v3;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1CAED6D4C;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482100);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CAED6918;
    v0[13] = &block_descriptor_183;
    v0[14] = v4;
    [v2 refreshPosterDescriptorsForExtension:v3 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v5 = swift_task_alloc();
    v0[32] = v5;
    *v5 = v0;
    v5[1] = sub_1CAED707C;

    return sub_1CAED5BBC();
  }
}

uint64_t sub_1CAED6D4C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_1CAED72B0;
  }

  else
  {
    v5 = sub_1CAED6E7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CAED6E7C()
{
  v1 = v0[30];

  v2 = v0[29] + 1;
  if (v2 == v0[27])
  {

    v3 = swift_task_alloc();
    v0[32] = v3;
    *v3 = v0;
    v3[1] = sub_1CAED707C;

    return sub_1CAED5BBC();
  }

  else
  {
    v0[29] = v2;
    v5 = v0[28];

    v6 = sub_1CAEFA4BC();
    v0[30] = v6;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1CAED6D4C;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482100);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CAED6918;
    v0[13] = &block_descriptor_183;
    v0[14] = v7;
    [v5 refreshPosterDescriptorsForExtension:v6 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1CAED707C()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1CAED719C, v3, v2);
}

uint64_t sub_1CAED719C()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = sub_1CAEFA67C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_1CAEFA63C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_1CAED4CC8(0, 0, v1, &unk_1CAF04848, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1CAED72B0()
{
  v1 = v0[30];
  v2 = v0[31];
  swift_willThrow();

  v3 = v0[29] + 1;
  if (v3 == v0[27])
  {

    v4 = swift_task_alloc();
    v0[32] = v4;
    *v4 = v0;
    v4[1] = sub_1CAED707C;

    return sub_1CAED5BBC();
  }

  else
  {
    v0[29] = v3;
    v6 = v0[28];

    v7 = sub_1CAEFA4BC();
    v0[30] = v7;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1CAED6D4C;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482100);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CAED6918;
    v0[13] = &block_descriptor_183;
    v0[14] = v8;
    [v6 refreshPosterDescriptorsForExtension:v7 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1CAED74C4()
{
  v1[19] = v0;
  sub_1CAEFA64C();
  v1[20] = sub_1CAEFA63C();
  v3 = sub_1CAEFA62C();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CAED755C, v3, v2);
}

uint64_t sub_1CAED755C()
{
  v1 = *(v0[19] + OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_service);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v2 = v0[10];
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CAED76E4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CAED791C;
  v0[13] = &block_descriptor_180;
  v0[14] = v3;
  [v1 fetchPosterConfigurationsForRole:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CAED76E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_1CAED789C;
  }

  else
  {
    v5 = sub_1CAED7814;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CAED7814()
{
  v1 = v0[23];
  v2 = v0[19];

  v3 = v0[18];

  *(v2 + OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_cachedConfigurations) = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CAED789C()
{
  v1 = v0[23];
  v2 = v0[24];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CAED7930(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    sub_1CAEB33A4(0, a4);
    **(*(v6 + 64) + 40) = sub_1CAEFA5EC();

    return MEMORY[0x1EEE6DEE0](v6);
  }
}

uint64_t sub_1CAED7A2C()
{
  v1[60] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482060);
  v1[61] = swift_task_alloc();
  v2 = sub_1CAEF9CFC();
  v1[62] = v2;
  v1[63] = *(v2 - 8);
  v1[64] = swift_task_alloc();
  sub_1CAEFA64C();
  v1[65] = sub_1CAEFA63C();
  v3 = sub_1CAEFA62C();
  v1[66] = v3;
  v1[67] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CAED7B90, v3, v4);
}

uint64_t sub_1CAED7B90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  if (*(v0 + 600))
  {
    if (*(v0 + 600) == 1)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CAEF9F0C();

      v1 = *(v0 + 408);
      v2 = sub_1CAEFA4EC();
      v4 = v3;
      if (v2 == sub_1CAEFA4EC() && v4 == v5)
      {

LABEL_15:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1CAEF9F0C();

        v17 = *(v0 + 416);
LABEL_71:

        v76 = *(v0 + 8);

        return v76(v17);
      }

      v16 = sub_1CAEFA9FC();

      if (v16)
      {
        goto LABEL_15;
      }

      if (qword_1EC481588 != -1)
      {
        swift_once();
      }

      v31 = sub_1CAEF9EBC();
      __swift_project_value_buffer(v31, qword_1EC481EA0);
      v32 = sub_1CAEF9E9C();
      v33 = sub_1CAEFA6EC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1CAE63000, v32, v33, "Existing configurations currently only supported for lock screen role", v34, 2u);
        MEMORY[0x1CCAAC620](v34, -1, -1);
      }

LABEL_47:

LABEL_70:
      v17 = 0;
      goto LABEL_71;
    }

    v13 = *(v0 + 496);
    v14 = *(v0 + 504);
    v15 = *(v0 + 488);

    sub_1CAED9364(v15);
    if ((*(v14 + 48))(v15, 1, v13) == 1)
    {
      sub_1CAEB3344(*(v0 + 488), &qword_1EC482060);
      goto LABEL_70;
    }

LABEL_33:
    (*(*(v0 + 504) + 32))(*(v0 + 512), *(v0 + 488), *(v0 + 496));
    v30 = sub_1CAEF9D0C();
    v40 = v39;
    (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
    v41 = objc_opt_self();
    v42 = sub_1CAEF9D1C();
    *(v0 + 400) = 0;
    v17 = [v41 unarchiveConfigurationFromData:v42 format:-1 error:v0 + 400];

    v43 = *(v0 + 400);
    if (v17)
    {
      sub_1CAEAF634(v30, v40);
      goto LABEL_71;
    }

    v66 = v43;
    v65 = sub_1CAEF9BFC();

    swift_willThrow();
    sub_1CAEAF634(v30, v40);
LABEL_56:

    goto LABEL_70;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v6 = *(v0 + 424);
  v7 = sub_1CAEFA4EC();
  v9 = v8;
  if (v7 == sub_1CAEFA4EC() && v9 == v10)
  {

    goto LABEL_17;
  }

  v12 = sub_1CAEFA9FC();

  if (v12)
  {
LABEL_17:

    v18 = sub_1CAEED82C();
    v19 = v18;
    if (v18 >> 62)
    {
LABEL_68:
      v20 = sub_1CAEFA80C();
      if (v20)
      {
LABEL_19:
        v21 = 0;
        v77 = v19 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1CCAAB4D0](v21, v19);
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            if (v21 >= *(v77 + 16))
            {
              __break(1u);
              goto LABEL_68;
            }

            v22 = *(v19 + 8 * v21 + 32);
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_32;
            }
          }

          v78 = v22;
          v24 = [v22 identifier];
          v25 = sub_1CAEFA4EC();
          v27 = v26;

          swift_getKeyPath();
          swift_getKeyPath();
          sub_1CAEF9F0C();

          if (v25 == *(v0 + 384) && v27 == *(v0 + 392))
          {
            break;
          }

          v29 = sub_1CAEFA9FC();

          if (v29)
          {
            goto LABEL_44;
          }

          ++v21;
          if (v23 == v20)
          {
            goto LABEL_69;
          }
        }

LABEL_44:
        v32 = v78;

        v44 = [v78 wallpaper];
        if (!v44)
        {
          goto LABEL_47;
        }

        v45 = v44;
        v46 = [v44 posterArchiveData];

        v47 = sub_1CAEF9D2C();
        v49 = v48;

        v50 = objc_opt_self();
        v51 = sub_1CAEF9D1C();
        *(v0 + 472) = 0;
        v17 = [v50 unarchiveConfigurationFromData:v51 format:-1 error:v0 + 472];

        v52 = *(v0 + 472);
        if (v17)
        {
          sub_1CAEAF634(v47, v49);

          goto LABEL_71;
        }

        v61 = v52;
        sub_1CAEF9BFC();

        swift_willThrow();
        sub_1CAEAF634(v47, v49);

        v62 = *(v0 + 8);

        return v62();
      }
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_19;
      }
    }

LABEL_69:

    goto LABEL_70;
  }

  v35 = sub_1CAEFA4EC();
  v37 = v36;
  if (v35 == sub_1CAEFA4EC() && v37 == v38)
  {

LABEL_49:

    v54 = [objc_opt_self() mutableConfigurationWithRole_];
    v55 = [v54 _path];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v56 = objc_allocWithZone(MEMORY[0x1E69C5008]);
    v57 = sub_1CAEFA4BC();

    v58 = [v56 initWithPath:v55 extensionIdentifier:v57];

    v59 = objc_opt_self();
    *(v0 + 464) = 0;
    v17 = [v59 finalizedConfigurationForAttributes:v58 withConfiguredProperties:0 error:v0 + 464];
    v60 = *(v0 + 464);
    if (v17)
    {

      goto LABEL_71;
    }

    v64 = v60;
    v65 = sub_1CAEF9BFC();

    swift_willThrow();
    goto LABEL_56;
  }

  v53 = sub_1CAEFA9FC();

  if (v53)
  {
    goto LABEL_49;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v67 = *(v0 + 272);
  v68 = *(v0 + 280);

  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v69)
  {
    goto LABEL_66;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v70 = *(v0 + 288);
  v71 = *(v0 + 296);

  v72 = HIBYTE(v71) & 0xF;
  if ((v71 & 0x2000000000000000) == 0)
  {
    v72 = v70 & 0xFFFFFFFFFFFFLL;
  }

  if (!v72)
  {
LABEL_66:

    goto LABEL_70;
  }

  v73 = *(*(v0 + 480) + OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_service);
  *(v0 + 544) = v73;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v74 = sub_1CAEFA4BC();
  *(v0 + 552) = v74;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 432;
  *(v0 + 24) = sub_1CAED87EC;
  v75 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820B0);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1CAED791C;
  *(v0 + 168) = &block_descriptor_0;
  *(v0 + 176) = v75;
  [v73 fetchPosterConfigurationsForExtension:v74 completion:v0 + 144];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1CAED87EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 560) = v2;
  v3 = *(v1 + 536);
  v4 = *(v1 + 528);
  if (v2)
  {
    v5 = sub_1CAED9104;
  }

  else
  {
    v5 = sub_1CAED8948;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CAED8948()
{
  v1 = *(v0 + 432);
  if (v1 >> 62)
  {
LABEL_29:
    v2 = sub_1CAEFA80C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_30:
    v24 = *(v0 + 552);
    v25 = *(v0 + 544);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v26 = sub_1CAEFA4BC();
    *(v0 + 568) = v26;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v27 = sub_1CAEFA4BC();
    *(v0 + 576) = v27;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v28 = *(v0 + 456);
    *(v0 + 584) = v28;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 448;
    *(v0 + 88) = sub_1CAED8ED4;
    v29 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820B8);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1CAED9294;
    *(v0 + 232) = &block_descriptor_152;
    *(v0 + 240) = v29;
    [v25 createPosterConfigurationForProviderIdentifier:v26 posterDescriptorIdentifier:v27 role:v28 completion:v0 + 208];

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_30;
  }

LABEL_3:
  v3 = 0;
  v31 = v1 & 0xFFFFFFFFFFFFFF8;
  v32 = v1 & 0xC000000000000001;
  v30 = v1;
  while (1)
  {
    if (v32)
    {
      v4 = MEMORY[0x1CCAAB4D0](v3, v1);
    }

    else
    {
      if (v3 >= *(v31 + 16))
      {
        goto LABEL_28;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v7 = [v4 role];
    v8 = sub_1CAEFA4EC();
    v10 = v9;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v11 = *(v0 + 440);
    v12 = sub_1CAEFA4EC();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
    }

    else
    {
      v15 = sub_1CAEFA9FC();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = [v5 descriptorIdentifier];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1CAEFA4EC();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    if (!v20)
    {

      goto LABEL_5;
    }

    if (v18 == *(v0 + 320) && v20 == *(v0 + 328))
    {
      break;
    }

    v21 = sub_1CAEFA9FC();

    if (v21)
    {
      goto LABEL_24;
    }

LABEL_5:

    ++v3;
    v1 = v30;
    if (v6 == v2)
    {
      goto LABEL_30;
    }
  }

LABEL_24:

  v22 = *(v0 + 8);

  return v22(v5);
}

uint64_t sub_1CAED8ED4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 592) = v2;
  v3 = *(v1 + 536);
  v4 = *(v1 + 528);
  if (v2)
  {
    v5 = sub_1CAED91C0;
  }

  else
  {
    v5 = sub_1CAED9030;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CAED9030()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];

  v4 = v0[56];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1CAED9104()
{
  v1 = *(v0 + 552);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CAED91C0()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CAED9294(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1CAED9364@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482060);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1CAEF9CFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CAEB3344(v4, &qword_1EC482060);
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = sub_1CAEFA4BC();
    v11 = [v9 stringForKey_];

    if (!v11)
    {
      v13 = 1;
      return (*(v6 + 56))(a1, v13, 1, v5);
    }

    sub_1CAEFA4EC();

    sub_1CAEF9C6C();
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v8, v4, v5);
    v12(a1, v8, v5);
  }

  v13 = 0;
  return (*(v6 + 56))(a1, v13, 1, v5);
}

uint64_t sub_1CAED95EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  v4[32] = swift_task_alloc();
  v4[33] = sub_1CAEFA64C();
  v4[34] = sub_1CAEFA63C();
  v6 = sub_1CAEFA62C();

  return MEMORY[0x1EEE6DFA0](sub_1CAED96C0, v6, v5);
}

uint64_t sub_1CAED96C0()
{
  v90 = v0;
  v1 = v0;
  v2 = v0[31];

  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1CAEF0FA8(MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v1[24] = v4;
  v5 = (v1 + 24);
  v6 = v2;
  sub_1CAEF9F1C();
  v7 = *&v6[OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_cachedDescriptorIdentifiers];
  v89 = v3;
  if (v7 >> 62)
  {
    goto LABEL_41;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v87 = v5;
  v88 = v1;
  if (v8)
  {
    v5 = 0;
    v85 = v7 & 0xFFFFFFFFFFFFFF8;
    v86 = v7 & 0xC000000000000001;
    v83 = v7;
    do
    {
      if (v86)
      {
        v9 = MEMORY[0x1CCAAB4D0](v5, v7);
      }

      else
      {
        if (v5 >= *(v85 + 16))
        {
          goto LABEL_40;
        }

        v9 = *(v7 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v8 = sub_1CAEFA80C();
        goto LABEL_3;
      }

      v12 = [v9 role];
      v13 = sub_1CAEFA4EC();
      v15 = v14;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CAEF9F0C();

      v16 = v1[25];
      v17 = sub_1CAEFA4EC();
      v19 = v18;

      if (v13 == v17 && v15 == v19)
      {
      }

      else
      {
        v20 = sub_1CAEFA9FC();

        if ((v20 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      sub_1CAEFA90C();
      sub_1CAEFA93C();
      sub_1CAEFA94C();
      sub_1CAEFA91C();
LABEL_7:
      v7 = v83;
      ++v5;
    }

    while (v11 != v8);
  }

  v89 = sub_1CAEECE94(v21, sub_1CAEED298);
  sub_1CAEEAAD8(&v89);

  v23 = v89;
  if (v89 < 0 || (v89 & 0x4000000000000000) != 0)
  {
    result = sub_1CAEFA80C();
    v24 = result;
    if (result)
    {
      goto LABEL_20;
    }

LABEL_43:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v52 = *(v1[26] + 16);

    if (!v52)
    {
LABEL_60:

      v79 = v1[1];

      return v79();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v53 = v1[27];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    if (*(v53 + 16))
    {
      sub_1CAEAE8E4(v1[14], v1[15]);
      v55 = v54;

      if ((v55 & 1) == 0)
      {
        goto LABEL_52;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CAEF9F0C();

      if (v1[22] || v1[23] != 0xE000000000000000)
      {
        v56 = sub_1CAEFA9FC();

        if ((v56 & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }
    }

    else
    {
    }

LABEL_52:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v57 = sub_1CAEDA360(v1[28]);
    v59 = v58;

    if (v59)
    {
      v60 = v1[32];
      v61 = v1[31];
      swift_getKeyPath();
      swift_getKeyPath();
      v88[20] = v57;
      v88[21] = v59;
      v62 = v61;
      v1 = v88;
      sub_1CAEF9F1C();
      PFCurrentDeviceClass();
      v63 = sub_1CAEFA67C();
      (*(*(v63 - 8) + 56))(v60, 1, 1, v63);
      v64 = v62;
      v65 = sub_1CAEFA63C();
      v66 = swift_allocObject();
      v67 = MEMORY[0x1E69E85E0];
      v66[2] = v65;
      v66[3] = v67;
      v66[4] = v64;
      sub_1CAED4CC8(0, 0, v60, &unk_1CAF04818, v66);
    }

LABEL_54:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v69 = v1[16];
    v68 = v1[17];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v70 = v1[29];
    if (*(v70 + 16))
    {
      v71 = sub_1CAEAE8E4(v69, v68);
      v73 = v72;

      if (v73)
      {
        v74 = *(*(v70 + 56) + 8 * v71);

        if (v74[2])
        {
          v75 = v1[31];
          v77 = v74[4];
          v76 = v74[5];

          swift_getKeyPath();
          swift_getKeyPath();
          v1[18] = v77;
          v1[19] = v76;
          v78 = v75;
          sub_1CAEF9F1C();
          goto LABEL_60;
        }
      }
    }

    else
    {
    }

    goto LABEL_60;
  }

  v24 = *(v89 + 16);
  if (!v24)
  {
    goto LABEL_43;
  }

LABEL_20:
  if (v24 >= 1)
  {
    v25 = 0;
    v80 = v23;
    v84 = v23 & 0xC000000000000001;
    v81 = v24;
    while (1)
    {
      v27 = v84 ? MEMORY[0x1CCAAB4D0](v25, v23) : *(v23 + 8 * v25 + 32);
      v28 = v27;
      v29 = [v27 _path];
      v30 = [v29 serverIdentity];

      if (v30)
      {
        break;
      }

LABEL_24:
      ++v25;

      if (v24 == v25)
      {
        goto LABEL_43;
      }
    }

    v31 = [v30 provider];

    v32 = sub_1CAEFA4EC();
    v34 = v33;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    if (*(v1[30] + 16))
    {
      sub_1CAEAE8E4(v32, v34);
      v36 = v35;

      if (v36)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();

    v37 = sub_1CAEF9EFC();
    v39 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *v39;
    *v39 = 0x8000000000000000;
    sub_1CAEEA54C(MEMORY[0x1E69E7CC0], v32, v34, isUniquelyReferenced_nonNull_native, &unk_1EC4820D8);

    *v39 = v89;
    v1 = v88;
    v37(v87 - 176, 0);

LABEL_34:
    v41 = sub_1CAED43EC((v87 - 144));
    v43 = sub_1CAEDA200((v87 - 112), v32, v34);
    if (*v42)
    {
      v44 = v42;
      v45 = [v28 identifier];
      v82 = sub_1CAEFA4EC();
      v47 = v46;

      v48 = *v44;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *v44 = v48;
      if ((v49 & 1) == 0)
      {
        v48 = sub_1CAEE9A50(0, *(v48 + 2) + 1, 1, v48);
        *v44 = v48;
      }

      v51 = *(v48 + 2);
      v50 = *(v48 + 3);
      if (v51 >= v50 >> 1)
      {
        v48 = sub_1CAEE9A50((v50 > 1), v51 + 1, 1, v48);
        *v44 = v48;
      }

      *(v48 + 2) = v51 + 1;
      v26 = &v48[16 * v51];
      *(v26 + 4) = v82;
      *(v26 + 5) = v47;
      v1 = v88;
      v23 = v80;
    }

    v43();

    v41();
    v24 = v81;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}