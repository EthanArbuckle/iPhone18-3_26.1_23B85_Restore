uint64_t sub_100013174(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100001F58(&qword_100020148, &qword_100018B20);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_100013260(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_10000F178(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, &qword_100020150, &qword_100018B28, &type metadata accessor for AnyColumn, &type metadata accessor for AnyColumn);
    *v2 = v8;
  }
}

uint64_t sub_100013300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100017E68() & 1;
  }
}

BOOL sub_100013344(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_1000133F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100017EA8();
  sub_100017C38();
  v6 = sub_100017EC8();

  return sub_100013650(a1, a2, v6);
}

unint64_t sub_10001346C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100017858();
  sub_100016160(&qword_100020138, &type metadata accessor for UseCaseIdentifier);
  v5 = sub_100017BB8();

  return sub_100013704(a1, v5);
}

BOOL sub_100013504(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100017EA8();
  sub_100017C38();
  v9 = sub_100017EC8();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_100017E68() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_100013B1C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

unint64_t sub_100013650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100017E68() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100013704(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_100017858();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_100016160(&qword_1000201C0, &type metadata accessor for UseCaseIdentifier);
    v10 = sub_100017BC8();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000138C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001F58(&qword_1000201A8, &qword_100018B78);
  result = sub_100017DC8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_100013C84(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_100017EA8();
    sub_100017C38();
    result = sub_100017EC8();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_100013B1C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000138C0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_100013E40(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_100017EA8();
      sub_100017C38();
      result = sub_100017EC8();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_100017E68() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_100013CE8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_100017E78();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_100013C84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100018A60;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_100013CE8()
{
  v1 = v0;
  sub_100001F58(&qword_1000201A8, &qword_100018B78);
  v2 = *v0;
  v3 = sub_100017DB8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_100013E40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001F58(&qword_1000201A8, &qword_100018B78);
  result = sub_100017DC8();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_100017EA8();

        sub_100017C38();
        result = sub_100017EC8();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_100014074()
{
  v1 = *v0;
  sub_1000142C4();
  *v0 = v2;
}

char *sub_1000140CC(char *a1, int64_t a2, char a3)
{
  result = sub_1000141BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000140EC()
{
  v1 = *v0;
  sub_1000142C4();
  *v0 = v2;
}

void sub_100014144()
{
  v1 = *v0;
  sub_1000142C4();
  *v0 = v2;
}

void *sub_10001419C(void *a1, int64_t a2, char a3)
{
  result = sub_100014874(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000141BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F58(&qword_1000201A0, &qword_100018B70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000142C4()
{
  sub_100016D0C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_100016D64();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100016D54();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100001F58(v1, v2);
  v17 = v6(0);
  sub_1000165D4(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(*(v6(0) - 8) + 80);
  sub_100016828();
  if (v10)
  {
    sub_10000F918(v8 + v26, v15, v22 + v26, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_100016C58();
}

size_t sub_100014460(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001F58(&qword_1000201B8, &qword_100018B88);
  v10 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10000F82C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10001462C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001F58(&qword_100020298, &qword_100018C78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001F58(&qword_1000200C8, &qword_100018AB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100014764()
{
  sub_100017394();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_100016D64();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100016D54();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = v8[2];
  if (v12 <= v15)
  {
    v16 = v8[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_100001F58(v1, v2);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 32);
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

  if (v10)
  {
    if (v17 != v8 || &v8[4 * v15 + 4] <= v17 + 4)
    {
      v20 = sub_1000169F4();
      memmove(v20, v21, v22);
    }

    v8[2] = 0;
  }

  else
  {
    sub_100001F58(v6, v4);
    sub_1000169F4();
    swift_arrayInitWithCopy();
  }

  sub_100017380();
}

void *sub_100014874(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001F58(&qword_100020250, &qword_100018C38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100001F58(&qword_100020258, &qword_100018C40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000149A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000133F4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100001F58(&qword_100020190, &qword_100018B60);
  if (!sub_100017DF8(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_1000133F4(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_100017E88();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_100014AE4(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_100014AE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
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

void *sub_100014B2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), void *a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_100014E2C(v12, v8, v6, a2);

      return a3;
    }
  }

  __chkstk_darwin(a1);
  v9 = &v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100013C84(0, v8, v9);
  v10 = sub_100014CB0(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_100014CB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];

    LOBYTE(v19) = a4(v15, v16, v19, v18);

    if (v19)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_100014EBC(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100014EBC(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100014E2C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100014CB0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100014EBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100001F58(&qword_100020248, &qword_100018C30);
  result = sub_100017E18();
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
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v36 = *v21;
    v23 = *(v9 + 40);
    sub_100017EA8();

    sub_100017C38();
    result = sub_100017EC8();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + 16 * v27);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100015104(void *a1)
{
  v1 = [a1 _deviceLanguage];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100017BE8();

  return v3;
}

uint64_t sub_10001518C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F58(&qword_100020188, &qword_100018B58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000152CC(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

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

uint64_t sub_100015428(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = sub_100001F58(&qword_100020148, &qword_100018B20);
  v37 = *(v40 - 8);
  v8 = *(v37 + 64);
  v9 = __chkstk_darwin(v40);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v38 = &v34 - v12;
  v41 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
    v20 = 0;
    a3 = 0;
LABEL_21:
    *a1 = v41;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v20;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v14 - 32);
    v35 = a1;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v16) >> 6;
    v36 = a3;
    while (1)
    {
      if (v19 >= a3)
      {
        goto LABEL_24;
      }

      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_25;
      }

      if (!v18)
      {
        while (1)
        {
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v23 >= v21)
          {
            v18 = 0;
            a3 = v19;
            goto LABEL_19;
          }

          v18 = *(v14 + 8 * v23);
          ++v20;
          if (v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v23 = v20;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v23 << 6);
      v26 = v41;
      v27 = *(v41 + 48);
      v28 = sub_100017858();
      v29 = *(v28 - 8);
      v30 = v27 + *(v29 + 72) * v25;
      v31 = v39;
      (*(v29 + 16))(v39, v30, v28);
      *&v31[*(v40 + 48)] = *(*(v26 + 56) + 8 * v25);
      v32 = v31;
      v33 = v38;
      sub_1000158C0(v32, v38, &qword_100020148, &qword_100018B20);
      sub_1000158C0(v33, a2, &qword_100020148, &qword_100018B20);
      a3 = v36;
      if (v22 == v36)
      {
        break;
      }

      a2 += *(v37 + 72);

      v19 = v22;
      v20 = v23;
    }

    v20 = v23;
LABEL_19:
    v16 = v34;
    a1 = v35;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000156E4(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000158C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100017360(a1, a2, a3, a4);
  sub_100016710(v5);
  v7 = *(v6 + 32);
  v8 = sub_100017110();
  v9(v8);
  return v4;
}

uint64_t sub_10001590C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017394();
  v13 = type metadata accessor for Status();
  sub_100016D74();
  v16 = (*(v15 + 64) + ((*(v14 + 80) + 40) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v12 + 16);
  swift_unknownObjectRelease();
  v18 = *(v12 + 32);

  v19 = sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100016710(v19);
  v21 = *(v20 + 8);
  v22 = sub_100017130();
  v21(v22);
  v23 = sub_1000170B8(*(v13 + 28));
  v21(v23);
  v24 = sub_1000170B8(*(v13 + 32));
  v21(v24);

  sub_100017380();

  return _swift_deallocObject(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_100015A30(uint64_t a1)
{
  v4 = type metadata accessor for Status();
  sub_1000165D4(v4);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  sub_100016904();
  *(v2 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_100001724;

  return sub_10000DC10(a1, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_100015B54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100017360(a1, a2, a3, a4);
  sub_100016710(v5);
  v7 = *(v6 + 16);
  v8 = sub_100017110();
  v9(v8);
  return v4;
}

uint64_t sub_100015BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 24);

  return _swift_deallocObject(v12, 32, 7, v14, v15, v16, v17, v18, a9, a10, a11, a12);
}

uint64_t sub_100015BD8()
{
  sub_100016CE0();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_100016904();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_100016BE0(v4);

  return v7(v6);
}

uint64_t sub_100015C70()
{
  sub_100016CE0();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_100016904();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_100016BE0(v4);

  return v7(v6);
}

uint64_t sub_100015D08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100015D7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100015DFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001F58(a2, a3);
  sub_100016710(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void *sub_100015E74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100015EB8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100015F0C()
{
  sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  v0 = sub_100016C00();

  return sub_10000567C(v0, v1, v2);
}

uint64_t sub_100015F70(uint64_t a1, uint64_t a2)
{
  sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  v3 = sub_100016C00();

  return sub_100002004(v3, v4, a2, v5);
}

void sub_100015FC4()
{
  sub_100016038();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100016038()
{
  if (!qword_100020308)
  {
    v0 = sub_100017B28();
    if (!v1)
    {
      atomic_store(v0, &qword_100020308);
    }
  }
}

uint64_t sub_100016160(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000161A8()
{
  result = qword_100020360;
  if (!qword_100020360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020360);
  }

  return result;
}

uint64_t sub_1000161FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005634(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Status.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Status.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x1000163A8);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000163F4()
{
  result = qword_100020370;
  if (!qword_100020370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020370);
  }

  return result;
}

unint64_t sub_10001644C()
{
  result = qword_100020378;
  if (!qword_100020378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020378);
  }

  return result;
}

unint64_t sub_1000164A4()
{
  result = qword_100020380;
  if (!qword_100020380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020380);
  }

  return result;
}

void sub_100016500()
{
  v3 = v0[53];
  v4 = v0[52];
  v5 = v0[49];
  v6 = v0[45];
  v1 = v0[42];
  v7 = v0[39];
  v2 = v0[36];
}

uint64_t sub_10001653C()
{
  result = v0[75];
  v2 = v0[74];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[59];
  v11 = v0[60];
  v12 = v0[56];
  return result;
}

uint64_t sub_100016568()
{
  result = v0[85];
  v2 = v0[82];
  v3 = v0[79];
  v4 = v0[76];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[66];
  v11 = v0[65];
  v12 = v0[64];
  return result;
}

uint64_t sub_1000165E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;
  *(a1 + 56) = v10;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;

  return print(_:separator:terminator:)();
}

uint64_t sub_100016614(uint64_t a1)
{

  return print(_:separator:terminator:)(a1, 32, 0xE100000000000000, 10, 0xE100000000000000);
}

void sub_100016644()
{
  v4 = *(v3 - 240);
  *(v4 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v5 = (*(v4 + 48) + 16 * v0);
  *v5 = v2;
  v5[1] = v1;
  v6 = *(v4 + 56) + 16 * v0;
}

__n128 sub_1000166C8(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[3].n128_u64[1] = v9;
  return result;
}

__n128 sub_1000166EC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

void sub_100016730()
{
  v1 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
}

uint64_t sub_100016750()
{

  return swift_allocObject();
}

uint64_t sub_10001676C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  return v0 + 248;
}

__n128 sub_100016798(__n128 *a1)
{
  result = *(v1 - 448);
  a1[1] = result;
  return result;
}

__n128 sub_1000167A8(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  return result;
}

uint64_t sub_1000167C8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100016800()
{

  return swift_allocObject();
}

uint64_t sub_100016840(uint64_t a1)
{
  *(a1 + 8) = sub_100002D0C;
  v2 = *(v1 + 608);
  return *(v1 + 424);
}

__n128 sub_100016890(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

void sub_100016910()
{
  v1._countAndFlagsBits = 0x73646E6F63657320;
  v1._object = 0xE800000000000000;

  sub_100017C58(v1);
}

void *sub_100016958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = a2;

  return sub_100014B2C(v3, sub_100015DF4, v2);
}

uint64_t sub_100016988()
{
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v9 = v0[47];
  v10 = v0[48];
  v6 = v0[44];
  v15 = v0[43];
  v11 = v0[45];
  v12 = v0[42];
  v13 = v0[41];
  v14 = v0[40];
  v16 = v0[39];
  v8 = v0[33];

  return sub_100017B48();
}

uint64_t sub_100016A18()
{

  return swift_allocObject();
}

uint64_t sub_100016A34()
{
  v4 = v0[53];
  v5 = v0[52];
  v6 = v0[49];
  v7 = v0[45];
  v2 = v0[42];
  v8 = v0[39];
  v9 = v0[36];
}

void sub_100016A84()
{
  v1 = v0[89];
  v2 = v0[76];
  v3 = v0[71];
  v4 = v0[70];
}

uint64_t sub_100016A98@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_100016AA8()
{
  v2 = v0[76];
  v3 = v0[71];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
}

__n128 *sub_100016ACC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[3].n128_u64[1] = v2;
  return result;
}

uint64_t sub_100016AE8()
{
  v1 = v0[66];
  v2 = v0[57];
  v3 = v0[46];
  v4 = v0[33];
  v5 = *(v0[58] + 32);
  return v0[60];
}

unint64_t sub_100016B10()
{
  *(v3 - 240) = v0;

  return sub_1000133F4(v2, v1);
}

uint64_t sub_100016B34()
{

  return swift_allocObject();
}

void sub_100016B64()
{
  v1 = *(v0 - 600);
  v2 = *(v0 - 648);
  v3 = *(v0 - 592);
  v4 = *(v0 - 672);
}

void sub_100016B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  *(v13 + 16) = v14;
  v16 = (v13 + 32 + 16 * v12);
  *v16 = v15;
  v16[1] = a12;
  v17 = *a11;
}

uint64_t sub_100016BC8()
{

  return swift_task_alloc();
}

uint64_t sub_100016BE0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

BOOL sub_100016C38()
{

  return sub_100017DF8(v1, v0);
}

__n128 sub_100016CAC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  return result;
}

__n128 sub_100016D34(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25)
{
  result = a25;
  a1[1] = a25;
  return result;
}

uint64_t sub_100016D84()
{
  v2 = v0[61];
  v4 = v0[58];
  v5 = v0[55];
}

uint64_t sub_100016DAC(char a1)
{
  *(v5 - 240) = v1;

  return sub_1000149A8(v4, v2, v3, a1);
}

uint64_t sub_100016DD4()
{
  v2 = v0[34];
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v0[20];
}

uint64_t sub_100016DFC()
{

  return swift_task_alloc();
}

void sub_100016F30(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD00000000000001ALL;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_100017C58(v2);
}

uint64_t sub_100016F54()
{
  v3 = v0[69];
  v4 = v0[68];
  *(v1 - 120) = v0[67];

  return sub_1000173D8();
}

uint64_t sub_100016F78()
{
  v2 = *(v0 + 720);
  v3 = *(v0 + 780);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 264);
}

uint64_t sub_100016F9C(uint64_t *a1)
{
  v2 = *a1;

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_100016FC0()
{

  return memmove(v2, (v2 + 16), 16 * (v1 - 1 - v0));
}

uint64_t sub_100016FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)(a1, a2, a3, a4, v4);
}

void sub_100017000()
{
  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;

  sub_100017C58(v1);
}

void sub_1000170E8()
{
  v3 = *(v0 + 16 * v2);
  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
}

uint64_t sub_10001713C()
{
  result = *(v0 - 560);
  v2 = *(v0 - 352);
  return result;
}

uint64_t sub_100017164()
{
  result = *(v0 - 432);
  v2 = *(v0 - 576);
  return result;
}

uint64_t sub_100017178()
{
  result = *(v0 - 568);
  v2 = *(v0 - 664);
  return result;
}

uint64_t sub_1000171AC()
{
  result = *(v0 - 544);
  v2 = *(v0 - 488);
  return result;
}

void sub_1000171C0()
{
  v3 = *(v2 + 16 * v0);
  v4 = (v2 + 16 * v1);
  v5 = *v4;
  v6 = v4[1];
}

uint64_t sub_1000171D4()
{
  v2 = (*(v1 + 48) + 16 * v0);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1000172A0()
{
  v2 = *(v0 - 368);

  return sub_100017558();
}

uint64_t sub_1000172C0(uint64_t a1)
{

  return StringProtocol.contains<A>(_:)(a1, v1, v1, v2, v2);
}

uint64_t sub_1000172E0()
{
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
}

void *sub_100017300@<X0>(uint64_t a1@<X8>)
{

  return memmove(v1, (v1 + 16), 16 * a1);
}

void sub_100017320(Swift::String a1)
{
  *(v3 - 240) = v2;
  *(v3 - 232) = 0xE100000000000000;
  a1._object = v1;

  sub_100017C58(a1);
}

Swift::Int sub_100017340(uint64_t a1)
{
  v2 = *(a1 + 8);

  return sub_100017E38(v2);
}

uint64_t sub_100017360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100001F58(a3, a4);
}