uint64_t sub_10005FF04()
{
  result = sub_1001D0E60();
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

char *sub_10005FFA0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_1002294F8, &qword_1001D6778);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10005FFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000130E0;

  return sub_10005F04C(a1, a2, a3, a4);
}

uint64_t sub_1000600A4(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_1002292B0, &unk_1001D6420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006010C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1001D08A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_100061AAC(&qword_100229500, &type metadata accessor for Workload);
  v37 = a2;
  v14 = sub_1001D1730();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_100061AAC(&qword_100229508, &type metadata accessor for Workload);
      v24 = sub_1001D1790();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_100060AF8(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1000603EC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1001D2580();
  sub_1001D1880();
  v9 = sub_1001D25C0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1001D2470() & 1) != 0)
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

    sub_100060D9C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10006053C(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1001D08A0();
  v4 = *(v42 - 8);
  v5 = v4[8];
  __chkstk_darwin(v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100229510, &qword_1001D67D0);
  result = sub_1001D1FF0();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_100061AAC(&qword_100229500, &type metadata accessor for Workload);
      result = sub_1001D1730();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_100060898(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100011AC0(&qword_100229518, &qword_1001D67D8);
  result = sub_1001D1FF0();
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
      sub_1001D2580();
      sub_1001D1880();
      result = sub_1001D25C0();
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

uint64_t sub_100060AF8(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1001D08A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10006053C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100060F1C();
      goto LABEL_12;
    }

    sub_1000612B0(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_100061AAC(&qword_100229500, &type metadata accessor for Workload);
  v16 = sub_1001D1730();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_100061AAC(&qword_100229508, &type metadata accessor for Workload);
      v24 = sub_1001D1790();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1001D24E0();
  __break(1u);
  return result;
}

Swift::Int sub_100060D9C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100060898(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100061154();
      goto LABEL_16;
    }

    sub_1000615CC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1001D2580();
  sub_1001D1880();
  result = sub_1001D25C0();
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

      result = sub_1001D2470();
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
  result = sub_1001D24E0();
  __break(1u);
  return result;
}

void *sub_100060F1C()
{
  v1 = v0;
  v2 = sub_1001D08A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100229510, &qword_1001D67D0);
  v8 = *v0;
  v9 = sub_1001D1FE0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
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

void *sub_100061154()
{
  v1 = v0;
  sub_100011AC0(&qword_100229518, &qword_1001D67D8);
  v2 = *v0;
  v3 = sub_1001D1FE0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

uint64_t sub_1000612B0(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1001D08A0();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100229510, &qword_1001D67D0);
  v11 = sub_1001D1FF0();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_100061AAC(&qword_100229500, &type metadata accessor for Workload);
      result = sub_1001D1730();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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

uint64_t sub_1000615CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100011AC0(&qword_100229518, &qword_1001D67D8);
  result = sub_1001D1FF0();
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
      sub_1001D2580();

      sub_1001D1880();
      result = sub_1001D25C0();
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

uint64_t sub_100061804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1001D08A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_100061AAC(&qword_100229500, &type metadata accessor for Workload);
  v36 = a1;
  v14 = sub_1001D1730();
  v15 = v12 + 56;
  v34 = v12 + 56;
  v35 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v31 = v3;
    v32 = v7;
    v33 = a2;
    v18 = ~v16;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    while (1)
    {
      v19(v11, *(v35 + 48) + v22 * v17, v6);
      sub_100061AAC(&qword_100229508, &type metadata accessor for Workload);
      v23 = sub_1001D1790();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v34 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v24 = 1;
        v7 = v32;
        a2 = v33;
        return (*(v7 + 56))(a2, v24, 1, v6);
      }
    }

    v25 = v31;
    v26 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v25;
    v37 = *v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100060F1C();
      v28 = v37;
    }

    v7 = v32;
    a2 = v33;
    (*(v32 + 32))(v33, *(v28 + 48) + v22 * v17, v6);
    sub_100061AF4(v17);
    v24 = 0;
    *v25 = v37;
  }

  else
  {
    v24 = 1;
  }

  return (*(v7 + 56))(a2, v24, 1, v6);
}

uint64_t sub_100061AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100061AF4(int64_t a1)
{
  v3 = sub_1001D08A0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;
    v15 = *v1;

    v16 = sub_1001D1FC0();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v17 = v14;
      v18 = (v16 + 1) & v14;
      v39 = v4[2];
      v40 = v4 + 2;
      v19 = v4[9];
      v37 = (v4 + 1);
      v38 = v11;
      v20 = v19;
      do
      {
        v21 = v20;
        v22 = v20 * v13;
        v39(v9, *(v10 + 48) + v20 * v13, v3);
        v23 = v10;
        v24 = v18;
        v25 = v17;
        v26 = v23;
        v27 = *(v23 + 40);
        sub_100061AAC(&qword_100229500, &type metadata accessor for Workload);
        v28 = sub_1001D1730();
        (*v37)(v9, v3);
        v29 = v28 & v25;
        v17 = v25;
        v18 = v24;
        if (a1 >= v24)
        {
          if (v29 >= v24 && a1 >= v29)
          {
LABEL_16:
            v10 = v26;
            v32 = *(v26 + 48);
            v20 = v21;
            v33 = v21 * a1;
            if (v21 * a1 < v22 || v32 + v21 * a1 >= (v32 + v22 + v21))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v13;
            }

            else
            {
              a1 = v13;
              if (v33 != v22)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v13;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v29 >= v24 || a1 >= v29)
        {
          goto LABEL_16;
        }

        v10 = v26;
        v20 = v21;
LABEL_5:
        v13 = (v13 + 1) & v17;
        v11 = v38;
      }

      while (((*(v38 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v10 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v36;
    ++*(v10 + 36);
  }

  return result;
}

uint64_t sub_100061E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v46;
  *(v8 + 192) = v44;
  *(v8 + 208) = v45;
  *(v8 + 160) = v42;
  *(v8 + 176) = v43;
  *(v8 + 144) = v41;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a2;
  v10 = sub_1001D1380();
  *(v8 + 232) = v10;
  v11 = *(v10 - 8);
  *(v8 + 240) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v13 = sub_1001D13D0();
  *(v8 + 264) = v13;
  v14 = *(v13 - 8);
  *(v8 + 272) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v16 = type metadata accessor for ThimbledEvent();
  *(v8 + 288) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v18 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  *(v8 + 304) = v18;
  v19 = *(v18 - 8);
  *(v8 + 312) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  v21 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  *(v8 + 328) = v21;
  v22 = *(v21 - 8);
  *(v8 + 336) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v24 = sub_1001D08A0();
  *(v8 + 352) = v24;
  v25 = *(v24 - 8);
  *(v8 + 360) = v25;
  *(v8 + 368) = *(v25 + 64);
  *(v8 + 376) = swift_task_alloc();
  v26 = *(*(sub_100011AC0(&qword_100229548, &qword_1001D6878) - 8) + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  v27 = sub_1001D0ED0();
  *(v8 + 392) = v27;
  v28 = *(v27 - 8);
  *(v8 + 400) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v30 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  *(v8 + 424) = v30;
  v31 = *(v30 - 8);
  *(v8 + 432) = v31;
  v32 = *(v31 + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  v33 = *(*(sub_1001D0F60() - 8) + 64) + 15;
  *(v8 + 448) = swift_task_alloc();
  v34 = sub_1001D0F80();
  *(v8 + 456) = v34;
  v35 = *(v34 - 8);
  *(v8 + 464) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v37 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  *(v8 + 496) = v37;
  v38 = *(*(v37 - 8) + 64) + 15;
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 64) = a3;

  return _swift_task_switch(sub_1000622D8, 0, 0);
}

uint64_t sub_1000622D8()
{
  v131 = v0;
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[14];
  v0[64] = qword_100229210;

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[17];
    v6 = v0[18];
    v9 = v0[15];
    v8 = v0[16];
    v10 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1000954E0(v9, v8, &v129);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1000954E0(v7, v6, &v129);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s sending request with parameters: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[62];
  v11 = v0[63];
  v13 = v0[19];
  *(swift_task_alloc() + 16) = v13;
  sub_10008A830(&qword_100229330, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);
  sub_1001D0B50();

  v14 = sub_1001D0B00();
  v0[65] = v14;
  v0[66] = v15;
  v103 = v14;
  v104 = v15;
  v16 = v0[58];
  v122 = v0[57];
  v125 = v0[60];
  v17 = v0[55];
  v18 = v0[56];
  v19 = v0[54];
  bufa = v0[53];
  v20 = v0[50];
  v112 = v0[49];
  v115 = v0[61];
  v21 = v0[20];
  v109 = v0[21];
  v111 = v0[52];
  v118 = v0[16];
  v120 = v0[18];
  v22 = v0[14];
  sub_1001D0F50();
  sub_1001D0290();
  v23 = (v22 + *(*v22 + 240));
  v24 = v23[4];
  sub_100024DC8(v23, v23[3]);
  sub_1001D03B0();
  v25 = v20;
  sub_1001D0210();
  (*(v19 + 8))(v17, bufa);
  v26 = v0[6];
  v27 = v0[7];
  v28 = *(v25 + 16);
  v28(v111, v109, v112);
  sub_1001D0F70();
  v29 = *(v16 + 16);
  v29(v125, v115, v122);

  v30 = sub_1001D0E50();
  v31 = sub_1001D1E00();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[60];
  v110 = v29;
  if (v32)
  {
    v34 = v0[58];
    v35 = v0[59];
    v121 = v31;
    v36 = v29;
    v37 = v0[57];
    v113 = v0[17];
    v116 = v0[18];
    v123 = v28;
    v39 = v0[15];
    v38 = v0[16];
    v40 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *v40 = 136315650;
    *(v40 + 4) = sub_1000954E0(v39, v38, &v129);
    *(v40 + 12) = 2080;
    v36(v35, v33, v37);
    v41 = sub_1001D1830();
    v43 = v42;
    v44 = *(v34 + 8);
    v44(v33, v37);
    v45 = sub_1000954E0(v41, v43, &v129);
    v28 = v123;

    *(v40 + 14) = v45;
    *(v40 + 22) = 2080;
    *(v40 + 24) = sub_1000954E0(v113, v116, &v129);
    _os_log_impl(&_mh_execute_header, v30, v121, "%s sending request: %s with parameters: %s", v40, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v46 = v0[57];
    v47 = v0[58];

    v44 = *(v47 + 8);
    v44(v33, v46);
  }

  v0[67] = v44;
  v48 = v0[16];
  v28(v0[51], v0[21], v0[49]);

  v49 = sub_1001D0E50();
  v50 = sub_1001D1E00();

  v51 = os_log_type_enabled(v49, v50);
  v52 = v0[51];
  if (!v51)
  {
    v89 = v0[49];
    v90 = v0[50];

    (*(v90 + 8))(v52, v89);
LABEL_20:
    v98 = v0[61];
    v99 = v0[59];
    v100 = v0[57];
    sub_1001D1090();
    v110(v99, v98, v100);
    sub_100012038(v103, v104);
    v101 = sub_1001D1080();
    v0[68] = v101;
    v102 = swift_task_alloc();
    v0[69] = v102;
    *v102 = v0;
    v102[1] = sub_10006302C;

    return (sub_100138CDC)(v103, v104, v101, 1, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
  }

  v107 = v50;
  log = v49;
  v53 = v0[49];
  v55 = v0[15];
  v54 = v0[16];
  v56 = swift_slowAlloc();
  v127 = swift_slowAlloc();
  *v56 = 136315394;
  *(v56 + 4) = sub_1000954E0(v55, v54, &v127);
  buf = v56;
  *(v56 + 12) = 2080;
  sub_10008A830(&qword_100229338, &type metadata accessor for HTTPFields);
  v57 = sub_1001D1D00();
  v58 = &_swiftEmptyArrayStorage;
  if (!v57)
  {
LABEL_19:
    v129 = v58;

    sub_100152064(&v129);
    v92 = v0[50];
    v91 = v0[51];
    v93 = v0[49];

    v0[12] = v129;
    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_100024B78(&qword_1002281F0, &unk_100230200, &qword_1001D4F80);
    v94 = sub_1001D1750();
    v96 = v95;

    (*(v92 + 8))(v91, v93);
    v97 = sub_1000954E0(v94, v96, &v127);

    *(buf + 14) = v97;
    _os_log_impl(&_mh_execute_header, log, v107, "%s sending headers\n%s", buf, 0x16u);
    swift_arrayDestroy();

    goto LABEL_20;
  }

  v59 = v57;
  v60 = v0[51];
  v61 = v0[49];
  v128 = &_swiftEmptyArrayStorage;
  sub_1001514F8(0, v57 & ~(v57 >> 63), 0);
  v58 = v128;
  result = sub_1001D1CF0();
  if ((v59 & 0x8000000000000000) == 0)
  {
    v63 = 0;
    v64 = v0[34];
    v119 = (v64 + 16);
    v114 = (v64 + 8);
    v117 = (v0[30] + 8);
    v124 = v59;
    while (!__OFADD__(v63, 1))
    {
      v126 = v63 + 1;
      v65 = v0[51];
      v66 = v0[49];
      v67 = v0[35];
      v69 = v0[32];
      v68 = v0[33];
      v70 = v0[31];
      v71 = v0[29];
      v72 = sub_1001D1D40();
      (*v119)(v67);
      (v72)(v0 + 2, 0);
      sub_1001D13B0();
      sub_1001D1340();
      LOBYTE(v72) = sub_1001D1350();
      v73 = *v117;
      (*v117)(v70, v71);
      v73(v69, v71);
      v74 = v0[35];
      v75 = v0[32];
      v76 = v0[29];
      if (v72)
      {
        v77 = v0[35];
        sub_1001D13B0();
        sub_10008A830(&qword_100229340, &type metadata accessor for HTTPField.Name);
        v129 = sub_1001D23A0();
        v130 = v78;
        v73(v75, v76);
        v79._countAndFlagsBits = 0x544341444552203ALL;
        v79._object = 0xEB000000000A4445;
      }

      else
      {
        v80 = v0[35];
        sub_1001D13B0();
        sub_10008A830(&qword_100229340, &type metadata accessor for HTTPField.Name);
        v129 = sub_1001D23A0();
        v130 = v81;
        v73(v75, v76);
        v133._countAndFlagsBits = 8250;
        v133._object = 0xE200000000000000;
        sub_1001D18B0(v133);
        v134._countAndFlagsBits = sub_1001D13C0();
        sub_1001D18B0(v134);

        v79._countAndFlagsBits = 10;
        v79._object = 0xE100000000000000;
      }

      sub_1001D18B0(v79);
      v82 = v129;
      v83 = v130;
      (*v114)(v0[35], v0[33]);
      v128 = v58;
      v85 = *(v58 + 2);
      v84 = *(v58 + 3);
      if (v85 >= v84 >> 1)
      {
        sub_1001514F8((v84 > 1), v85 + 1, 1);
        v58 = v128;
      }

      v86 = v0[51];
      v87 = v0[49];
      *(v58 + 2) = v85 + 1;
      v88 = &v58[16 * v85];
      *(v88 + 4) = v82;
      *(v88 + 5) = v83;
      result = sub_1001D1D20();
      ++v63;
      if (v126 == v124)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006302C()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  v5 = v2[68];
  v6 = v2[66];
  v7 = v2[65];

  sub_100011E48(v7, v6);
  if (v0)
  {
    v8 = sub_100063528;
  }

  else
  {
    v8 = sub_100063194;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100063194()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000954E0(v7, v6, &v38);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s waiting for response", v8, 0xCu);
    sub_100011CF0(v9);
  }

  v30 = *(v0 + 384);
  v28 = *(v0 + 376);
  v10 = *(v0 + 360);
  v11 = *(v0 + 368);
  v12 = *(v0 + 352);
  v36 = *(v0 + 224);
  v34 = *(v0 + 192);
  v35 = *(v0 + 200);
  v13 = *(v0 + 184);
  v31 = *(v0 + 176);
  v33 = *(v0 + 152);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);
  v29 = *(v0 + 104);
  v32 = *(v0 + 208);
  (*(v10 + 16))();
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = v14;
  *(v19 + 4) = v15;
  (*(v10 + 32))(&v19[v17], v28, v12);
  *&v19[v18] = v13;
  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = v14;
  v20[4] = v15;
  sub_100089B7C(v29, v30, type metadata accessor for NWAsyncConnection.Inbound);
  v21 = sub_100011AC0(&qword_100229550, &qword_1001D68A0);
  v22 = (v30 + *(v21 + 36));
  *v22 = &unk_1001D6888;
  v22[1] = v19;
  v23 = (v30 + *(v21 + 40));
  *v23 = &unk_1001D6898;
  v23[1] = v20;
  *(v0 + 72) = 0;
  *(v0 + 80) = &_swiftEmptyArrayStorage;
  sub_1001D0840();
  v24 = swift_task_alloc();
  *(v0 + 568) = v24;
  *(v24 + 16) = v30;
  *(v24 + 24) = v16;
  *(v24 + 32) = v14;
  *(v24 + 40) = v15;
  *(v24 + 48) = v0 + 72;
  *(v24 + 56) = v34;
  *(v24 + 64) = v0 + 80;
  *(v24 + 72) = v35;
  *(v24 + 80) = v33;
  *(v24 + 88) = v31;
  *(v24 + 96) = v32;
  *(v24 + 112) = v13;
  *(v24 + 120) = v36;
  v25 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v26 = swift_task_alloc();
  *(v0 + 576) = v26;
  *v26 = v0;
  v26[1] = sub_1000636B0;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100063528()
{
  v1 = v0[67];
  v2 = v0[63];
  v3 = v0[61];
  v4 = v0[57];
  v5 = v0[58];
  sub_100011E48(v0[65], v0[66]);
  v1(v3, v4);
  sub_100089B1C(v2, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);
  v24 = v0[70];
  v6 = v0[63];
  v8 = v0[60];
  v7 = v0[61];
  v9 = v0[59];
  v11 = v0[55];
  v10 = v0[56];
  v12 = v0[51];
  v13 = v0[52];
  v15 = v0[47];
  v14 = v0[48];
  v18 = v0[43];
  v19 = v0[40];
  v20 = v0[37];
  v21 = v0[35];
  v22 = v0[32];
  v23 = v0[31];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000636B0()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 568);
  v4 = *v0;

  return _swift_task_switch(sub_1000637C8, 0, 0);
}

uint64_t sub_1000637C8()
{
  v2 = v0[65];
  v1 = v0[66];
  v3 = v0[63];
  v4 = v0[61];
  if (v0[9])
  {
    v38 = v0[60];
    v39 = v0[59];
    v36 = v0[63];
    v5 = v0[58];
    v34 = v0[61];
    v35 = v0[57];
    v40 = v0[56];
    v41 = v0[55];
    v43 = v0[52];
    v45 = v0[51];
    v37 = v0[48];
    v47 = v0[47];
    v6 = v0[42];
    v31 = v0[43];
    v32 = v0[66];
    v7 = v0[40];
    v33 = v0[41];
    v8 = v0[38];
    v9 = v0[39];
    v11 = v0[36];
    v10 = v0[37];
    v49 = v0[35];
    v51 = v0[32];
    v53 = v0[31];
    v30 = v0[65];
    v12 = v0[14];
    (*(v9 + 16))(v7, v12 + *(*v12 + 280), v8);
    v13 = *(v12 + *(*v12 + 288));
    *v10 = v0[10];
    *(v10 + 8) = v13;
    swift_storeEnumTagMultiPayload();

    sub_1001D1BC0();
    sub_100011E48(v30, v32);
    (*(v9 + 8))(v7, v8);
    (*(v6 + 8))(v31, v33);
    (*(v5 + 8))(v34, v35);
    sub_100089B1C(v36, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);

    sub_100011F00(v37, &qword_100229548, &qword_1001D6878);
  }

  else
  {
    v16 = v0[57];
    v15 = v0[58];
    v17 = v0[48];
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v2, v1);
    (*(v15 + 8))(v4, v16);
    sub_100089B1C(v3, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest);
    v18 = v0[10];

    sub_100011F00(v17, &qword_100229548, &qword_1001D6878);
    v19 = v0[63];
    v21 = v0[60];
    v20 = v0[61];
    v22 = v0[59];
    v24 = v0[55];
    v23 = v0[56];
    v25 = v0[51];
    v26 = v0[52];
    v28 = v0[47];
    v27 = v0[48];
    v42 = v0[43];
    v44 = v0[40];
    v46 = v0[37];
    v48 = v0[35];
    v50 = v0[32];
    v52 = v0[31];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100063C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1001D0FD0();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v10 = sub_1001D0ED0();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v13 = sub_1001D0FF0();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_100063DC0, 0, 0);
}

uint64_t sub_100063DC0()
{
  v63 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v59 = *(v0[16] + 16);
  v59(v0[19], v0[2], v0[15]);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  if (v5)
  {
    v7 = v0[18];
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[4];
    v57 = v0[5];
    v11 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_1000954E0(v10, v57, v62);
    *(v11 + 12) = 2080;
    v59(v7, v6, v9);
    v12 = sub_1001D1820();
    v14 = v13;
    v58 = *(v8 + 8);
    v58(v6, v9);
    v15 = sub_1000954E0(v12, v14, v62);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s response head received: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v0[15];
    v17 = v0[16];

    v58 = *(v17 + 8);
    v58(v6, v16);
  }

  v18 = v0[5];
  v59(v0[17], v0[2], v0[15]);

  v19 = sub_1001D0E50();
  v20 = sub_1001D1DC0();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[16];
  v23 = v0[17];
  v24 = v0[15];
  if (v21)
  {
    v25 = v0[13];
    v26 = v0[14];
    v56 = v0[12];
    v60 = v20;
    v28 = v0[4];
    v27 = v0[5];
    v29 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_1000954E0(v28, v27, v62);
    *(v29 + 12) = 2080;
    sub_1001D0F90();
    v30 = HTTPFields.loggingDescription.getter();
    v32 = v31;
    (*(v25 + 8))(v26, v56);
    v58(v23, v24);
    v33 = sub_1000954E0(v30, v32, v62);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v19, v60, "%s received headers\n%s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v58(v23, v24);
  }

  v35 = v0[10];
  v34 = v0[11];
  v36 = v0[8];
  v37 = v0[9];
  v38 = v0[2];
  sub_1001D0FE0();
  sub_1001D0FB0();
  LOBYTE(v38) = sub_1001D0FA0();
  v39 = *(v37 + 8);
  v39(v35, v36);
  v39(v34, v36);
  if (v38)
  {
    v0[20] = *(v0[3] + *(*v0[3] + 216));
    type metadata accessor for AttestationStore();
    sub_10008A830(&qword_1002287B8, type metadata accessor for AttestationStore);
    v41 = sub_1001D1A70();

    return _swift_task_switch(sub_1000643C8, v41, v40);
  }

  else
  {
    v42 = v0[18];
    v43 = v0[19];
    v44 = v0[17];
    v45 = v0[14];
    v46 = v0[11];
    v61 = v0[10];
    v47 = v0[8];
    v48 = v0[2];
    sub_1001D0FE0();
    v49 = sub_1001D0FC0();
    v39(v46, v47);
    sub_10005B2F8();
    v50 = swift_allocError();
    *v51 = v49;
    sub_100011AC0(&qword_100227B70, &qword_1001D3718);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1001D39F0;
    *(v52 + 32) = v50;
    sub_10005B34C();
    swift_allocError();
    *v53 = v52;
    swift_willThrow();

    v54 = v0[1];

    return v54();
  }
}

uint64_t sub_1000643C8()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  sub_100030670(v0[6], v0[7]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100064484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100011AC0(&unk_100230110, &unk_1001D6520) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_1001D0ED0();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10006458C, 0, 0);
}

uint64_t sub_10006458C()
{
  v33 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_10001208C(v0[2], v3, &unk_100230110, &unk_1001D6520);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100011F00(v0[6], &unk_100230110, &unk_1001D6520);
  }

  else
  {
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[3];
    (*(v7 + 32))(v5, v0[6], v6);
    (*(v7 + 16))(v4, v5, v6);

    v10 = sub_1001D0E50();
    v11 = sub_1001D1DC0();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[9];
    v14 = v0[10];
    v16 = v0[7];
    v15 = v0[8];
    if (v12)
    {
      v18 = v0[4];
      v17 = v0[5];
      v31 = v0[10];
      v19 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_1000954E0(v18, v17, &v32);
      *(v19 + 12) = 2080;
      v20 = HTTPFields.loggingDescription.getter();
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v16);
      v24 = sub_1000954E0(v20, v22, &v32);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s received trailers\n%s", v19, 0x16u);
      swift_arrayDestroy();

      v23(v31, v16);
    }

    else
    {

      v25 = *(v15 + 8);
      v25(v13, v16);
      v25(v14, v16);
    }
  }

  v27 = v0[9];
  v26 = v0[10];
  v28 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100064854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = v41;
  *(v8 + 400) = v42;
  *(v8 + 376) = v40;
  *(v8 + 360) = v39;
  *(v8 + 344) = v38;
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 312) = a5;
  *(v8 + 320) = a6;
  *(v8 + 296) = a3;
  *(v8 + 304) = a4;
  *(v8 + 288) = a2;
  v9 = *(*(sub_100011AC0(&qword_100227DF8, &qword_1001DD020) - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v10 = *(*(sub_100011AC0(&qword_100229348, &unk_1001D64C0) - 8) + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v11 = type metadata accessor for RateLimitConfiguration(0);
  *(v8 + 424) = v11;
  v12 = *(v11 - 8);
  *(v8 + 432) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  v14 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  *(v8 + 464) = v14;
  v15 = *(v14 - 8);
  *(v8 + 472) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  v17 = sub_1001CFD60();
  *(v8 + 504) = v17;
  v18 = *(v17 - 8);
  *(v8 + 512) = v18;
  *(v8 + 520) = *(v18 + 64);
  *(v8 + 528) = swift_task_alloc();
  v19 = sub_1001CFDA0();
  *(v8 + 536) = v19;
  v20 = *(v19 - 8);
  *(v8 + 544) = v20;
  *(v8 + 552) = *(v20 + 64);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  v21 = sub_1001D08A0();
  *(v8 + 576) = v21;
  v22 = *(v21 - 8);
  *(v8 + 584) = v22;
  *(v8 + 592) = *(v22 + 64);
  *(v8 + 600) = swift_task_alloc();
  v23 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  v24 = *(*(sub_100011AC0(&qword_100229358, &qword_1001D64D0) - 8) + 64) + 15;
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  v25 = sub_1001D0840();
  *(v8 + 640) = v25;
  v26 = *(v25 - 8);
  *(v8 + 648) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  v28 = *(*(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0) - 8) + 64) + 15;
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  v29 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) - 8);
  *(v8 + 704) = v29;
  *(v8 + 712) = *(v29 + 64);
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  v30 = *(*(sub_100011AC0(&qword_100229360, &qword_1001D64D8) - 8) + 64) + 15;
  *(v8 + 736) = swift_task_alloc();
  v31 = *(*(sub_100011AC0(&qword_100229368, &qword_1001D64E0) - 8) + 64) + 15;
  *(v8 + 744) = swift_task_alloc();
  v32 = type metadata accessor for NWAsyncConnection.Inbound(0);
  *(v8 + 752) = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  *(v8 + 760) = swift_task_alloc();
  v34 = sub_100011AC0(&qword_100229558, &qword_1001D68B8);
  *(v8 + 768) = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  *(v8 + 776) = swift_task_alloc();

  return _swift_task_switch(sub_100064E08, 0, 0);
}

uint64_t sub_100064E08()
{
  v1 = v0[95];
  v2 = v0[94];
  sub_100089B7C(v0[37], v1, type metadata accessor for NWAsyncConnection.Inbound);
  v3 = *(v1 + *(v2 + 24));
  os_unfair_lock_lock((v3 + 20));
  if (*(v3 + 16) == 1)
  {
    return sub_1001D2180();
  }

  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[95];
  v8 = v0[94];
  v10 = v0[37];
  v9 = v0[38];
  *(v3 + 16) = 1;
  os_unfair_lock_unlock((v3 + 20));
  v11 = *v7;
  v12 = *(v8 + 20);
  v13 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
  v14 = v13[5];
  v15 = sub_1001D0E60();
  (*(*(v15 - 8) + 16))(&v5[v14], &v7[v12], v15);
  *&v5[v13[6]] = 0;
  v5[v13[7]] = 0;
  *v5 = v11;

  sub_100089B1C(v7, type metadata accessor for NWAsyncConnection.Inbound);
  v16 = sub_100011AC0(&qword_100229550, &qword_1001D68A0);
  v17 = *(v16 + 40);
  v18 = (v10 + *(v16 + 36));
  v20 = *v18;
  v19 = v18[1];
  v22 = *(v10 + v17);
  v21 = *(v10 + v17 + 8);
  v23 = sub_100011AC0(&qword_100229560, &qword_1001D68C0);
  v5[v23[9]] = 1;
  v5[v23[10]] = 0;
  v24 = &v5[v23[11]];
  *v24 = v20;
  *(v24 + 1) = v19;
  v25 = &v5[v23[12]];
  *v25 = v22;
  *(v25 + 1) = v21;
  v26 = &v5[*(v6 + 80)];
  *v26 = 0;
  v26[8] = 2;
  *&v5[*(v6 + 76)] = xmmword_1001D3A00;
  v0[98] = qword_100229210;
  v27 = *v9;
  v0[99] = *(*v9 + 240);
  v0[100] = *(v27 + 224);
  v0[101] = 0;

  v28 = swift_task_alloc();
  v0[102] = v28;
  *v28 = v0;
  v28[1] = sub_100065114;
  v29 = v0[97];
  v30 = v0[93];

  return sub_10007CF08(v30);
}

uint64_t sub_100065114()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_100066130;
  }

  else
  {
    v3 = sub_100065228;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100065228()
{
  v156 = v0;
  v1 = *(v0 + 744);
  v2 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 784);
    v4 = *(v0 + 320);
    v5 = *(v0 + 304);
    sub_100011F00(*(v0 + 776), &qword_100229558, &qword_1001D68B8);

    v6 = sub_1001D0E50();
    v7 = sub_1001D1DC0();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 312);
      v8 = *(v0 + 320);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v155[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000954E0(v9, v8, v155);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s response complete", v10, 0xCu);
      sub_100011CF0(v11);
    }

    v12 = async function pointer to TaskGroup.next(isolation:)[1];
    v13 = swift_task_alloc();
    *(v0 + 888) = v13;
    v14 = sub_100011AC0(&qword_100229370, &qword_1001D64E8);
    *v13 = v0;
    v13[1] = sub_1000676F4;
    v15 = *(v0 + 624);
    goto LABEL_5;
  }

  v19 = *(v0 + 736);
  sub_10001208C(v1, v19, &qword_100229360, &qword_1001D64D8);
  sub_100089B1C(v1, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);
  v20 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_45;
  }

  v21 = *(v0 + 736);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v37 = *(v0 + 784);
    v38 = *(v0 + 320);
    v39 = *(v0 + 304);
    sub_100089478(v21, *(v0 + 728), type metadata accessor for Proto_Ropes_Common_Attestation);

    v40 = sub_1001D0E50();
    v41 = sub_1001D1DD0();

    if (os_log_type_enabled(v40, v41))
    {
      v43 = *(v0 + 312);
      v42 = *(v0 + 320);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v155[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_1000954E0(v43, v42, v155);
      _os_log_impl(&_mh_execute_header, v40, v41, "%s attestation received", v44, 0xCu);
      sub_100011CF0(v45);
    }

    v46 = *(v0 + 328);
    if (__OFADD__(*v46, 1))
    {
      __break(1u);
    }

    else
    {
      v47 = *(v0 + 808);
      ++*v46;
      if (v47 == 10)
      {
        v48 = async function pointer to TaskGroup.next(isolation:)[1];
        v49 = swift_task_alloc();
        *(v0 + 832) = v49;
        v14 = sub_100011AC0(&qword_100229370, &qword_1001D64E8);
        *v49 = v0;
        v49[1] = sub_100066598;
        v15 = *(v0 + 632);
LABEL_5:
        v16 = *(v0 + 288);
        v17 = 0;
        v18 = 0;

        return TaskGroup.next(isolation:)(v15, v17, v18, v14);
      }

      v87 = *(v0 + 808);
      v89 = *(v0 + 352);
      v88 = *(v0 + 360);
      os_unfair_lock_lock(v89);
      v90 = *(*(v89 + 8) + 16);
      os_unfair_lock_unlock(v89);
      if (v90 >= v88)
      {
        goto LABEL_44;
      }

      v149 = v87 + 1;
      if (!__OFADD__(v87, 1))
      {
        v129 = *(v0 + 728);
        v91 = *(v0 + 720);
        v132 = v91;
        v141 = *(v0 + 712);
        v138 = *(v0 + 704);
        v92 = *(v0 + 616);
        v146 = v92;
        v148 = *(v0 + 608);
        v93 = *(v0 + 600);
        v94 = *(v0 + 584);
        v95 = *(v0 + 576);
        v133 = v95;
        v134 = v93;
        v96 = *(v0 + 568);
        v97 = *(v0 + 560);
        v135 = v96;
        v136 = v97;
        v139 = *(v0 + 552);
        v140 = *(v0 + 592);
        v98 = *(v0 + 544);
        v151 = *(v0 + 536);
        v152 = *(v0 + 528);
        v144 = *(v0 + 520);
        v99 = *(v0 + 504);
        v150 = *(v0 + 512);
        v137 = v99;
        v147 = *(v0 + 392);
        v130 = *(v0 + 384);
        v131 = *(v0 + 400);
        v127 = *(v0 + 368);
        v128 = *(v0 + 376);
        v154 = *(v0 + 304);
        v100 = sub_1001D1BA0();
        v142 = *(v100 - 8);
        v143 = v100;
        (*(v142 + 56))(v92, 1, 1, v100);
        sub_100089B7C(v129, v91, type metadata accessor for Proto_Ropes_Common_Attestation);
        (*(v94 + 16))(v93, v127, v95);
        v101 = *(v98 + 16);
        v101(v96, v128, v151);
        v101(v97, v130, v151);
        (*(v150 + 16))(v152, v131, v99);
        v102 = (*(v138 + 80) + 40) & ~*(v138 + 80);
        v103 = (v141 + *(v94 + 80) + v102) & ~*(v94 + 80);
        v104 = *(v98 + 80);
        v105 = (v140 + v104 + v103) & ~v104;
        v106 = (v139 + v104 + v105) & ~v104;
        v107 = (v139 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
        v108 = (*(v150 + 80) + v107 + 8) & ~*(v150 + 80);
        v109 = swift_allocObject();
        v109[2] = 0;
        v145 = v109 + 2;
        v109[3] = 0;
        v109[4] = v154;
        sub_100089478(v132, v109 + v102, type metadata accessor for Proto_Ropes_Common_Attestation);
        (*(v94 + 32))(v109 + v103, v134, v133);
        v110 = *(v98 + 32);
        v110(v109 + v105, v135, v151);
        v110(v109 + v106, v136, v151);
        *(v109 + v107) = v147;
        (*(v150 + 32))(v109 + v108, v152, v137);
        sub_10001208C(v146, v148, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v103) = (*(v142 + 48))(v148, 1, v143);

        v111 = *(v0 + 608);
        if (v103 == 1)
        {
          sub_100011F00(*(v0 + 608), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v142 + 8))(v111, v143);
        }

        if (*v145)
        {
          v114 = v109[3];
          v115 = *v145;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v116 = sub_1001D1A70();
          v118 = v117;
          swift_unknownObjectRelease();
        }

        else
        {
          v116 = 0;
          v118 = 0;
        }

        v119 = **(v0 + 288);
        v120 = swift_allocObject();
        *(v120 + 16) = &unk_1001D68D8;
        *(v120 + 24) = v109;
        v121 = v118 | v116;
        if (v118 | v116)
        {
          v121 = v0 + 168;
          *(v0 + 168) = 0;
          *(v0 + 176) = 0;
          *(v0 + 184) = v116;
          *(v0 + 192) = v118;
        }

        v87 = v149;
        v122 = *(v0 + 640);
        v123 = *(v0 + 616);
        *(v0 + 248) = 1;
        *(v0 + 256) = v121;
        *(v0 + 264) = v119;
        swift_task_create();

        sub_100011F00(v123, &qword_100229350, &unk_1001D6BA0);
LABEL_44:
        sub_100089B1C(*(v0 + 728), type metadata accessor for Proto_Ropes_Common_Attestation);
        *(v0 + 808) = v87;
        goto LABEL_45;
      }
    }

    __break(1u);
    return TaskGroup.next(isolation:)(v15, v17, v18, v14);
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100089B1C(v21, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
LABEL_45:
    v124 = swift_task_alloc();
    *(v0 + 816) = v124;
    *v124 = v0;
    v124[1] = sub_100065114;
    v125 = *(v0 + 776);
    v126 = *(v0 + 744);

    return sub_10007CF08(v126);
  }

  v23 = *(v0 + 784);
  v24 = *(v0 + 696);
  v25 = *(v0 + 688);
  v26 = *(v0 + 320);
  v27 = *(v0 + 304);
  sub_100089478(v21, v24, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_100089B7C(v24, v25, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);

  v28 = sub_1001D0E50();
  v29 = sub_1001D1E00();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 688);
  if (v30)
  {
    v33 = *(v0 + 312);
    v32 = *(v0 + 320);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v155[0] = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_1000954E0(v33, v32, v155);
    *(v34 + 12) = 2048;
    v36 = *(*v31 + 16);
    sub_100089B1C(v31, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    *(v34 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s received rate limit configuration count %ld", v34, 0x16u);
    sub_100011CF0(v35);
  }

  else
  {
    sub_100089B1C(*(v0 + 688), type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  v50 = **(v0 + 696);
  *(v0 + 840) = v50;
  v51 = *(v50 + 16);
  *(v0 + 848) = v51;
  if (v51)
  {
    v52 = 0;
    v53 = *(v0 + 472);
    *(v0 + 896) = *(v53 + 80);
    *(v0 + 856) = *(v53 + 72);
    while (1)
    {
      *(v0 + 872) = v52;
      v56 = *(v0 + 792);
      v57 = *(v0 + 528);
      v59 = *(v0 + 488);
      v58 = *(v0 + 496);
      v61 = *(v0 + 424);
      v60 = *(v0 + 432);
      v62 = *(v0 + 416);
      v63 = *(v0 + 304);
      sub_100089B7C(*(v0 + 840) + ((*(v0 + 896) + 32) & ~*(v0 + 896)) + *(v0 + 856) * v52, v58, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      sub_100089B7C(v58, v59, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      sub_100044698(v63 + v56, v0 + 128);
      sub_1000E5BA4(v57, v59, (v0 + 128), v62);
      v64 = (*(v60 + 48))(v62, 1, v61);
      v65 = *(v0 + 304);
      if (v64 != 1)
      {
        break;
      }

      v66 = *(v0 + 784);
      v67 = *(v0 + 496);
      v68 = *(v0 + 480);
      v69 = *(v0 + 320);
      sub_100011F00(*(v0 + 416), &qword_100229348, &unk_1001D64C0);
      sub_100089B7C(v67, v68, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

      v70 = sub_1001D0E50();
      v71 = sub_1001D1DE0();

      v72 = os_log_type_enabled(v70, v71);
      v73 = *(v0 + 496);
      if (v72)
      {
        v75 = *(v0 + 480);
        v74 = *(v0 + 488);
        v153 = *(v0 + 496);
        v76 = *(v0 + 464);
        v78 = *(v0 + 312);
        v77 = *(v0 + 320);
        v79 = swift_slowAlloc();
        v155[0] = swift_slowAlloc();
        *v79 = 136315394;
        *(v79 + 4) = sub_1000954E0(v78, v77, v155);
        *(v79 + 12) = 2080;
        sub_100089B7C(v75, v74, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v80 = sub_1001D1820();
        v82 = v81;
        sub_100089B1C(v75, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v83 = sub_1000954E0(v80, v82, v155);

        *(v79 + 14) = v83;
        _os_log_impl(&_mh_execute_header, v70, v71, "%s unable to process rate limit configuration %s", v79, 0x16u);
        swift_arrayDestroy();

        v55 = v153;
      }

      else
      {
        v54 = *(v0 + 480);

        sub_100089B1C(v54, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v55 = v73;
      }

      sub_100089B1C(v55, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v52 = *(v0 + 872) + 1;
      if (v52 == *(v0 + 848))
      {
        goto LABEL_27;
      }
    }

    v112 = *(v0 + 800);
    sub_100089478(*(v0 + 416), *(v0 + 456), type metadata accessor for RateLimitConfiguration);
    v113 = *(v65 + v112);
    *(v0 + 880) = v113;

    return _swift_task_switch(sub_100067010, v113, 0);
  }

  else
  {
LABEL_27:
    v84 = *(*(v0 + 304) + *(v0 + 800));
    v85 = swift_task_alloc();
    *(v0 + 864) = v85;
    *v85 = v0;
    v85[1] = sub_100066E4C;

    return sub_1000ED278();
  }
}

uint64_t sub_100066130()
{
  *(v0 + 272) = *(v0 + 824);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1000661C0, 0, 0);
}

uint64_t sub_1000661C0()
{
  v50 = v0;
  v1 = v0[103];
  v2 = v0[98];
  v3 = v0[40];
  v4 = v0[38];
  sub_100011F00(v0[97], &qword_100229558, &qword_1001D68B8);

  swift_errorRetain();
  v5 = sub_1001D0E50();
  v6 = sub_1001D1DE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[103];
    v9 = v0[39];
    v8 = v0[40];
    v10 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1000954E0(v9, v8, &v49);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v11 = v0[25];
    v12 = *(v0[26] - 8);
    v13 = *(v12 + 64) + 15;
    swift_task_alloc();
    (*(v12 + 16))();
    v14 = sub_1001D1820();
    v16 = v15;

    v17 = sub_1000954E0(v14, v16, &v49);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s response failed: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[103];
  }

  v19 = v0[97];
  v20 = v0[95];
  v21 = v0[93];
  v22 = v0[92];
  v23 = v0[91];
  v24 = v0[90];
  v25 = v0[87];
  v26 = v0[86];
  v27 = v0[85];
  v28 = v0[84];
  v31 = v0[83];
  v32 = v0[82];
  v33 = v0[79];
  v34 = v0[78];
  v35 = v0[77];
  v36 = v0[76];
  v37 = v0[75];
  v38 = v0[71];
  v39 = v0[70];
  v40 = v0[66];
  v41 = v0[62];
  v42 = v0[61];
  v43 = v0[60];
  v44 = v0[57];
  v45 = v0[56];
  v46 = v0[55];
  v47 = v0[52];
  v48 = v0[51];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100066598()
{
  v1 = *(*v0 + 832);
  v3 = *v0;

  return _swift_task_switch(sub_100066694, 0, 0);
}

void sub_100066694()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    goto LABEL_30;
  }

  v4 = *(v1 + 32);
  v4(*(v0 + 680), v3, v2);
  if (sub_1001D0810())
  {
    v5 = *(v0 + 336);
    os_unfair_lock_lock(v5);
    v6 = *(v5 + 8);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (!v7)
    {
      v9 = *(v0 + 336);
      *(v9 + 8) = v8;
      os_unfair_lock_unlock(v9);
      goto LABEL_5;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

LABEL_5:
  v10 = *(v0 + 680);
  v11 = sub_1001D0830();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = *(v0 + 344);
    v16 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v75 = *(v0 + 344);
      v16 = sub_100008F3C(0, *(v16 + 2) + 1, 1, v16);
      *v75 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v76 = *(v0 + 344);
      v16 = sub_100008F3C((v18 > 1), v19 + 1, 1, v16);
      *v76 = v16;
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[16 * v19];
    *(v20 + 4) = v13;
    *(v20 + 5) = v14;
  }

  v21 = *(v0 + 680);
  v22 = *(v0 + 672);
  v23 = *(v0 + 648);
  v24 = *(v0 + 640);
  v25 = *(v0 + 352);
  os_unfair_lock_lock(v25);
  (*(v23 + 16))(v22, v21, v24);
  v26 = *(v25 + 8);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + 8) = v26;
  if ((v27 & 1) == 0)
  {
    v73 = *(v0 + 352);
    v26 = sub_100009494(0, *(v26 + 2) + 1, 1, v26);
    *(v73 + 8) = v26;
  }

  v29 = *(v26 + 2);
  v28 = *(v26 + 3);
  if (v29 >= v28 >> 1)
  {
    v74 = *(v0 + 352);
    v26 = sub_100009494(v28 > 1, v29 + 1, 1, v26);
    *(v74 + 8) = v26;
  }

  v30 = *(v0 + 680);
  v31 = *(v0 + 672);
  v32 = *(v0 + 648);
  v33 = *(v0 + 640);
  v34 = *(v0 + 352);
  *(v26 + 2) = v29 + 1;
  v4(&v26[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29], v31, v33);
  os_unfair_lock_unlock(v34);
  (*(v32 + 8))(v30, v33);
  v36 = *(v0 + 352);
  v35 = *(v0 + 360);
  os_unfair_lock_lock(v36);
  v37 = *(*(v36 + 8) + 16);
  os_unfair_lock_unlock(v36);
  if (v37 >= v35)
  {
    v59 = 9;
  }

  else
  {
    v79 = *(v0 + 728);
    v38 = *(v0 + 720);
    v82 = v38;
    v91 = *(v0 + 712);
    v88 = *(v0 + 704);
    v39 = *(v0 + 616);
    v96 = v39;
    v98 = *(v0 + 608);
    v40 = *(v0 + 600);
    v41 = *(v0 + 584);
    v42 = *(v0 + 576);
    v83 = v42;
    v84 = v40;
    v43 = *(v0 + 568);
    v44 = *(v0 + 560);
    v85 = v43;
    v86 = v44;
    v89 = *(v0 + 552);
    v90 = *(v0 + 592);
    v45 = *(v0 + 544);
    v100 = *(v0 + 536);
    v101 = *(v0 + 528);
    v94 = *(v0 + 520);
    v46 = *(v0 + 504);
    v99 = *(v0 + 512);
    v87 = v46;
    v81 = *(v0 + 400);
    v97 = *(v0 + 392);
    v80 = *(v0 + 384);
    v77 = *(v0 + 368);
    v78 = *(v0 + 376);
    v102 = *(v0 + 304);
    v47 = sub_1001D1BA0();
    v92 = *(v47 - 8);
    v93 = v47;
    (*(v92 + 56))(v39, 1, 1, v47);
    sub_100089B7C(v79, v38, type metadata accessor for Proto_Ropes_Common_Attestation);
    (*(v41 + 16))(v40, v77, v42);
    v48 = *(v45 + 16);
    v48(v43, v78, v100);
    v48(v44, v80, v100);
    (*(v99 + 16))(v101, v81, v46);
    v49 = (*(v88 + 80) + 40) & ~*(v88 + 80);
    v50 = (v91 + *(v41 + 80) + v49) & ~*(v41 + 80);
    v51 = *(v45 + 80);
    v52 = (v90 + v51 + v50) & ~v51;
    v53 = (v89 + v51 + v52) & ~v51;
    v54 = (v89 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v99 + 80) + v54 + 8) & ~*(v99 + 80);
    v56 = swift_allocObject();
    v56[2] = 0;
    v95 = v56 + 2;
    v56[3] = 0;
    v56[4] = v102;
    sub_100089478(v82, v56 + v49, type metadata accessor for Proto_Ropes_Common_Attestation);
    (*(v41 + 32))(v56 + v50, v84, v83);
    v57 = *(v45 + 32);
    v57(v56 + v52, v85, v100);
    v57(v56 + v53, v86, v100);
    *(v56 + v54) = v97;
    (*(v99 + 32))(v56 + v55, v101, v87);
    sub_10001208C(v96, v98, &qword_100229350, &unk_1001D6BA0);
    LODWORD(v50) = (*(v92 + 48))(v98, 1, v93);

    v58 = *(v0 + 608);
    if (v50 == 1)
    {
      sub_100011F00(*(v0 + 608), &qword_100229350, &unk_1001D6BA0);
    }

    else
    {
      sub_1001D1B90();
      (*(v92 + 8))(v58, v93);
    }

    if (*v95)
    {
      v60 = v56[3];
      v61 = *v95;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v62 = sub_1001D1A70();
      v64 = v63;
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    v65 = **(v0 + 288);
    v66 = swift_allocObject();
    *(v66 + 16) = &unk_1001D68D8;
    *(v66 + 24) = v56;
    v67 = v64 | v62;
    if (v64 | v62)
    {
      v67 = v0 + 168;
      *(v0 + 168) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = v62;
      *(v0 + 192) = v64;
    }

    v68 = *(v0 + 640);
    v69 = *(v0 + 616);
    *(v0 + 248) = 1;
    *(v0 + 256) = v67;
    *(v0 + 264) = v65;
    swift_task_create();

    sub_100011F00(v69, &qword_100229350, &unk_1001D6BA0);
    v59 = 10;
  }

  sub_100089B1C(*(v0 + 728), type metadata accessor for Proto_Ropes_Common_Attestation);
  *(v0 + 808) = v59;
  v70 = swift_task_alloc();
  *(v0 + 816) = v70;
  *v70 = v0;
  v70[1] = sub_100065114;
  v71 = *(v0 + 776);
  v72 = *(v0 + 744);

  (sub_10007CF08)(v72);
}

uint64_t sub_100066E4C()
{
  v1 = *(*v0 + 864);
  v3 = *v0;

  return _swift_task_switch(sub_100066F48, 0, 0);
}

uint64_t sub_100066F48()
{
  sub_100089B1C(v0[87], type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v1 = swift_task_alloc();
  v0[102] = v1;
  *v1 = v0;
  v1[1] = sub_100065114;
  v2 = v0[97];
  v3 = v0[93];

  return sub_10007CF08(v3);
}

uint64_t sub_100067010()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 456);
  v3 = *(v0 + 440);
  sub_100089B7C(v2, *(v0 + 448), type metadata accessor for RateLimitConfiguration);
  sub_100089B7C(v2, v3, type metadata accessor for RateLimitConfiguration);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 440);
  v8 = *(v0 + 448);
  if (v6)
  {
    v9 = *(v0 + 424);
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    v11 = *(v8 + *(v9 + 20));
    sub_100089B1C(v8, type metadata accessor for RateLimitConfiguration);
    *(v10 + 4) = v11;
    *(v10 + 12) = 2048;
    v12 = *(v7 + *(v9 + 20) + 8);
    sub_100089B1C(v7, type metadata accessor for RateLimitConfiguration);
    *(v10 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "rate limit discovered for rate with count=%lu, duration=%f", v10, 0x16u);
  }

  else
  {
    sub_100089B1C(*(v0 + 448), type metadata accessor for RateLimitConfiguration);

    sub_100089B1C(v7, type metadata accessor for RateLimitConfiguration);
  }

  v13 = *(v0 + 456);
  v14 = *(v0 + 424);
  v15 = *(v0 + 408);
  v16 = *(v0 + 880) + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
  swift_beginAccess();
  v17 = *v13;
  v18 = v13[1];
  v19 = v13[2];
  *(v0 + 64) = *(v13 + 6);
  *(v0 + 32) = v18;
  *(v0 + 48) = v19;
  *(v0 + 16) = v17;
  sub_100089B7C(v13 + *(v14 + 20), v15, type metadata accessor for RateLimitTimingDetails);
  v20 = type metadata accessor for RateLimitTimingDetails(0);
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  sub_10001B9AC(v0 + 16, v0 + 72);
  sub_100017758(v15, (v0 + 16));
  sub_1000E3E7C(v13);
  swift_endAccess();

  return _swift_task_switch(sub_1000672B0, 0, 0);
}

uint64_t sub_1000672B0()
{
  v42 = v0;
  v1 = *(v0 + 496);
  sub_100089B1C(*(v0 + 456), type metadata accessor for RateLimitConfiguration);
  sub_100089B1C(v1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
  v2 = *(v0 + 872) + 1;
  if (v2 == *(v0 + 848))
  {
LABEL_2:
    v3 = *(*(v0 + 304) + *(v0 + 800));
    v4 = swift_task_alloc();
    *(v0 + 864) = v4;
    *v4 = v0;
    v4[1] = sub_100066E4C;

    return sub_1000ED278();
  }

  else
  {
    while (1)
    {
      *(v0 + 872) = v2;
      v8 = *(v0 + 792);
      v9 = *(v0 + 528);
      v11 = *(v0 + 488);
      v10 = *(v0 + 496);
      v13 = *(v0 + 424);
      v12 = *(v0 + 432);
      v14 = *(v0 + 416);
      v15 = *(v0 + 304);
      sub_100089B7C(*(v0 + 840) + ((*(v0 + 896) + 32) & ~*(v0 + 896)) + *(v0 + 856) * v2, v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      sub_100089B7C(v10, v11, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      sub_100044698(v15 + v8, v0 + 128);
      sub_1000E5BA4(v9, v11, (v0 + 128), v14);
      v16 = (*(v12 + 48))(v14, 1, v13);
      v17 = *(v0 + 416);
      if (v16 != 1)
      {
        break;
      }

      v18 = *(v0 + 784);
      v19 = *(v0 + 496);
      v20 = *(v0 + 480);
      v21 = *(v0 + 320);
      v22 = *(v0 + 304);
      sub_100011F00(v17, &qword_100229348, &unk_1001D64C0);
      sub_100089B7C(v19, v20, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

      v23 = sub_1001D0E50();
      v24 = sub_1001D1DE0();

      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 496);
      if (v25)
      {
        v28 = *(v0 + 480);
        v27 = *(v0 + 488);
        v40 = *(v0 + 496);
        v29 = *(v0 + 464);
        v31 = *(v0 + 312);
        v30 = *(v0 + 320);
        v32 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v32 = 136315394;
        *(v32 + 4) = sub_1000954E0(v31, v30, &v41);
        *(v32 + 12) = 2080;
        sub_100089B7C(v28, v27, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v33 = sub_1001D1820();
        v35 = v34;
        sub_100089B1C(v28, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v36 = sub_1000954E0(v33, v35, &v41);

        *(v32 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v23, v24, "%s unable to process rate limit configuration %s", v32, 0x16u);
        swift_arrayDestroy();

        v7 = v40;
      }

      else
      {
        v6 = *(v0 + 480);

        sub_100089B1C(v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v7 = v26;
      }

      sub_100089B1C(v7, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v2 = *(v0 + 872) + 1;
      if (v2 == *(v0 + 848))
      {
        goto LABEL_2;
      }
    }

    v37 = *(v0 + 800);
    v38 = *(v0 + 304);
    sub_100089478(v17, *(v0 + 456), type metadata accessor for RateLimitConfiguration);
    v39 = *(v38 + v37);
    *(v0 + 880) = v39;

    return _swift_task_switch(sub_100067010, v39, 0);
  }
}

uint64_t sub_1000676F4()
{
  v1 = *(*v0 + 888);
  v3 = *v0;

  return _swift_task_switch(sub_1000677F0, 0, 0);
}

uint64_t sub_1000677F0()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[78];
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v16 = *(v1 + 32);
    v16(v0[83], v3, v2);
    if (sub_1001D0810())
    {
      v17 = v0[42];
      os_unfair_lock_lock(v17);
      v22 = *(v17 + 8);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return TaskGroup.next(isolation:)(v18, v19, v20, v21);
      }

      v25 = v0[42];
      *(v25 + 8) = v24;
      os_unfair_lock_unlock(v25);
    }

    v26 = v0[83];
    v27 = sub_1001D0830();
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      v31 = v0[43];
      v32 = *v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v31 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v56 = v0[43];
        v32 = sub_100008F3C(0, *(v32 + 2) + 1, 1, v32);
        *v56 = v32;
      }

      v35 = *(v32 + 2);
      v34 = *(v32 + 3);
      if (v35 >= v34 >> 1)
      {
        v57 = v0[43];
        v32 = sub_100008F3C((v34 > 1), v35 + 1, 1, v32);
        *v57 = v32;
      }

      *(v32 + 2) = v35 + 1;
      v36 = &v32[16 * v35];
      *(v36 + 4) = v29;
      *(v36 + 5) = v30;
    }

    v37 = v0[83];
    v38 = v0[82];
    v39 = v0[81];
    v40 = v0[80];
    v41 = v0[44];
    os_unfair_lock_lock(v41);
    (*(v39 + 16))(v38, v37, v40);
    v42 = *(v41 + 8);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *(v41 + 8) = v42;
    if ((v43 & 1) == 0)
    {
      v54 = v0[44];
      v42 = sub_100009494(0, *(v42 + 2) + 1, 1, v42);
      *(v54 + 8) = v42;
    }

    v45 = *(v42 + 2);
    v44 = *(v42 + 3);
    if (v45 >= v44 >> 1)
    {
      v55 = v0[44];
      v42 = sub_100009494(v44 > 1, v45 + 1, 1, v42);
      *(v55 + 8) = v42;
    }

    v46 = v0[83];
    v47 = v0[82];
    v48 = v0[81];
    v49 = v0[80];
    v50 = v0[44];
    *(v42 + 2) = v45 + 1;
    v16(&v42[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v45], v47, v49);
    os_unfair_lock_unlock(v50);
    (*(v48 + 8))(v46, v49);
    v51 = async function pointer to TaskGroup.next(isolation:)[1];
    v52 = swift_task_alloc();
    v0[111] = v52;
    v21 = sub_100011AC0(&qword_100229370, &qword_1001D64E8);
    *v52 = v0;
    v52[1] = sub_1000676F4;
    v18 = v0[78];
    v53 = v0[36];
    v19 = 0;
    v20 = 0;

    return TaskGroup.next(isolation:)(v18, v19, v20, v21);
  }

  sub_100011F00(v3, &qword_100229358, &qword_1001D64D0);
  v4 = v0[97];
  v5 = v0[95];
  v6 = v0[93];
  v7 = v0[92];
  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];
  v13 = v0[84];
  v58 = v0[83];
  v59 = v0[82];
  v60 = v0[79];
  v61 = v0[78];
  v62 = v0[77];
  v63 = v0[76];
  v64 = v0[75];
  v65 = v0[71];
  v66 = v0[70];
  v67 = v0[66];
  v68 = v0[62];
  v69 = v0[61];
  v70 = v0[60];
  v71 = v0[57];
  v72 = v0[56];
  v73 = v0[55];
  v74 = v0[52];
  v75 = v0[51];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100067CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_100067CE8, 0, 0);
}

uint64_t sub_100067CE8()
{
  v1 = *(v0[3] + *(*v0[3] + 288));
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10004FCAC;
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return sub_100067DA8(v9, v7, v8, v1, v5, v6, v3, v4);
}

uint64_t sub_100067DA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1376) = v8;
  *(v9 + 1368) = a8;
  *(v9 + 1360) = a7;
  *(v9 + 1352) = a6;
  *(v9 + 1344) = a5;
  *(v9 + 1820) = a4;
  *(v9 + 1336) = a3;
  *(v9 + 1328) = a2;
  *(v9 + 1320) = a1;
  v10 = type metadata accessor for ThimbledEvent();
  *(v9 + 1384) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 1392) = swift_task_alloc();
  v12 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  *(v9 + 1400) = v12;
  v13 = *(v12 - 8);
  *(v9 + 1408) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 1416) = swift_task_alloc();
  v15 = *(*(sub_1001CFDD0() - 8) + 64) + 15;
  *(v9 + 1424) = swift_task_alloc();
  v16 = sub_1001D02E0();
  *(v9 + 1432) = v16;
  v17 = *(v16 - 8);
  *(v9 + 1440) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 1448) = swift_task_alloc();
  v19 = sub_1001CFDA0();
  *(v9 + 1456) = v19;
  v20 = *(v19 - 8);
  *(v9 + 1464) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 1472) = swift_task_alloc();
  v22 = type metadata accessor for ValidatedAttestation();
  *(v9 + 1480) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v9 + 1488) = swift_task_alloc();
  *(v9 + 1496) = swift_task_alloc();
  v24 = sub_1001D0820();
  *(v9 + 1504) = v24;
  v25 = *(v24 - 8);
  *(v9 + 1512) = v25;
  v26 = *(v25 + 64) + 15;
  *(v9 + 1520) = swift_task_alloc();
  v27 = sub_1001CFD60();
  *(v9 + 1528) = v27;
  v28 = *(v27 - 8);
  *(v9 + 1536) = v28;
  v29 = *(v28 + 64) + 15;
  *(v9 + 1544) = swift_task_alloc();
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  v30 = sub_1001D08A0();
  *(v9 + 1568) = v30;
  v31 = *(v30 - 8);
  *(v9 + 1576) = v31;
  v32 = *(v31 + 64) + 15;
  *(v9 + 1584) = swift_task_alloc();
  v33 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  *(v9 + 1592) = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  *(v9 + 1600) = swift_task_alloc();
  *(v9 + 1608) = swift_task_alloc();
  *(v9 + 1616) = swift_task_alloc();
  v35 = sub_1001D1470();
  *(v9 + 1624) = v35;
  v36 = *(v35 - 8);
  *(v9 + 1632) = v36;
  v37 = *(v36 + 64) + 15;
  *(v9 + 1640) = swift_task_alloc();
  v38 = sub_1001D1460();
  *(v9 + 1648) = v38;
  v39 = *(v38 - 8);
  *(v9 + 1656) = v39;
  v40 = *(v39 + 64) + 15;
  *(v9 + 1664) = swift_task_alloc();

  return _swift_task_switch(sub_100068210, 0, 0);
}

uint64_t sub_100068210()
{
  v19 = v0[208];
  v20 = v0[207];
  v1 = v0[206];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[203];
  v23 = v0[202];
  v24 = v0[197];
  v26 = v0[198];
  v27 = v0[196];
  v5 = v0[182];
  v22 = v0[172];
  v6 = v0[168];
  v25 = v0[167];
  v7 = v0[166];
  sub_10008A830(&qword_100228AF8, &type metadata accessor for UUID);
  v28 = sub_1001D23A0();
  v29 = v8;
  v31._countAndFlagsBits = 58;
  v31._object = 0xE100000000000000;
  sub_1001D18B0(v31);
  v0[209] = v28;
  v0[210] = v29;
  v9 = v7;
  v21 = v7;
  v10 = *v7;
  v11 = v9[1];
  sub_10008A830(&qword_100229378, &type metadata accessor for SHA256);
  sub_1001D1440();
  sub_100012038(v10, v11);
  sub_100158DE0(v10, v11);
  sub_100011E48(v10, v11);
  sub_1001D1430();
  (*(v3 + 8))(v2, v4);
  v0[144] = v1;
  v0[145] = sub_10008A830(&qword_100229380, &type metadata accessor for SHA256Digest);
  v12 = sub_10003B47C(v0 + 141);
  (*(v20 + 16))(v12, v19, v1);
  sub_100024DC8(v0 + 141, v0[144]);
  sub_1001CF8E0();
  v13 = v0[160];
  v14 = v0[161];
  sub_100011CF0(v0 + 141);
  v0[211] = sub_1001CFBF0(0);
  v0[212] = v15;
  sub_100011E48(v13, v14);
  (*(v20 + 8))(v19, v1);
  v0[213] = *(*v22 + 232);
  sub_100089B7C(v21, v23, type metadata accessor for Proto_Ropes_Common_Attestation);
  v16 = *(v24 + 16);
  v0[214] = v16;
  v0[215] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v26, v25, v27);
  sub_10008AC80(v23, v26, v0 + 124);
  v17 = swift_task_alloc();
  v0[216] = v17;
  *v17 = v0;
  v17[1] = sub_1000685B4;

  return sub_100079B54((v0 + 124));
}

uint64_t sub_1000685B4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1728);
  v8 = *v3;
  v4[217] = a1;
  v4[218] = a2;
  v4[219] = v2;

  sub_10005AF88((v4 + 124));
  if (v2)
  {
    v6 = sub_100068EA0;
  }

  else
  {
    v6 = sub_1000686D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000686D8()
{
  v48 = v0;
  if (v0[218])
  {
    v0[220] = *(v0[172] + *(*v0[172] + 216));
    type metadata accessor for AttestationStore();
    sub_10008A830(&qword_1002287B8, type metadata accessor for AttestationStore);
    v2 = sub_1001D1A70();
    v0[221] = v2;
    v0[222] = v1;

    return _swift_task_switch(sub_100068AE8, v2, v1);
  }

  else
  {
    v3 = v0[212];
    v4 = v0[210];
    v5 = v0[172];

    v6 = sub_1001D0E50();
    v7 = sub_1001D1DE0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[212];
      v9 = v0[211];
      v10 = v0[210];
      v11 = v0[209];
      v12 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_1000954E0(v11, v10, &v47);

      *(v12 + 4) = v13;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1000954E0(v9, v8, &v47);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s unique identifier for attestation %s missing", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v14 = v0[210];
    }

    v45 = v0[212];
    v15 = v0[211];
    v16 = v0[199];
    v17 = v0[190];
    v18 = v0[166];
    v19 = v0[165];
    v21 = *(v16 + 36);
    v20 = *(v16 + 40);
    v22 = (v18 + v21);
    if (v22[1])
    {
      v23 = *v22;
    }

    v24 = (v18 + v20);
    if (v24[1])
    {
      v25 = *v24;
      v26 = v24[1];
    }

    (*(v0[189] + 104))(v0[190], enum case for Prefetch.Response.Node.ValidationResult.noUniqueIdentifier(_:), v0[188]);

    sub_1001D07F0();
    v27 = v0[208];
    v28 = v0[205];
    v29 = v0[202];
    v30 = v0[201];
    v31 = v0[200];
    v32 = v0[198];
    v33 = v0[195];
    v34 = v0[194];
    v35 = v0[193];
    v36 = v0[190];
    v39 = v0[187];
    v40 = v0[186];
    v41 = v0[184];
    v42 = v0[181];
    v43 = v0[178];
    v44 = v0[177];
    v46 = v0[174];

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_100068AE8()
{
  v1 = *(v0 + 1760);
  *(v0 + 1821) = sub_100031CB4(*(v0 + 1736), *(v0 + 1744));

  return _swift_task_switch(sub_100068B60, 0, 0);
}

uint64_t sub_100068B60()
{
  v34 = v0;
  if (*(v0 + 1821) == 1)
  {
    v1 = *(v0 + 1744);
    v2 = *(v0 + 1696);
    v3 = *(v0 + 1680);
    v4 = *(v0 + 1376);

    v5 = sub_1001D0E50();
    v6 = sub_1001D1E00();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 1744);
      v8 = *(v0 + 1736);
      v31 = *(v0 + 1696);
      v9 = *(v0 + 1688);
      v10 = *(v0 + 1680);
      v11 = *(v0 + 1672);
      v12 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v12 = 136315650;
      v13 = sub_1000954E0(v11, v10, &v33);

      *(v12 + 4) = v13;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1000954E0(v8, v7, &v33);
      *(v12 + 22) = 2080;
      *(v12 + 24) = sub_1000954E0(v9, v31, &v33);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s node exists in store for attestation %s %s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v28 = *(v0 + 1680);
    }

    v29 = *(v0 + 1776);
    v30 = *(v0 + 1768);

    return _swift_task_switch(sub_1000693BC, v30, v29);
  }

  else
  {
    v14 = *(v0 + 1744);
    v15 = *(v0 + 1720);
    v16 = *(v0 + 1712);
    v32 = *(v0 + 1704);
    v17 = *(v0 + 1616);
    v18 = *(v0 + 1584);
    v19 = *(v0 + 1568);
    v20 = *(v0 + 1560);
    v21 = *(v0 + 1376);
    v22 = *(v0 + 1336);
    v23 = *(v0 + 1328);

    sub_1001CFD50();
    v24 = *(v21 + *(*v21 + 328));
    *(v0 + 1822) = v24;
    sub_100089B7C(v23, v17, type metadata accessor for Proto_Ropes_Common_Attestation);
    v16(v18, v22, v19);
    sub_10008AC80(v17, v18, (v0 + 896));
    v25 = swift_task_alloc();
    *(v0 + 1784) = v25;
    *v25 = v0;
    v25[1] = sub_1000692A0;
    v26 = *(v0 + 1496);

    return (sub_100076C40)(v26, v0 + 896, v24);
  }
}

uint64_t sub_100068EA0()
{
  v54 = v0;
  v1 = v0[212];
  v2 = v0[210];
  v3 = v0[172];

  v4 = sub_1001D0E50();
  v5 = sub_1001D1DE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[212];
    v7 = v0[211];
    v8 = v0[210];
    v9 = v0[209];
    v10 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_1000954E0(v9, v8, &v53);

    *(v10 + 4) = v11;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1000954E0(v7, v6, &v53);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s unable to check the unique id of the attestation and hence skipping validation: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v12 = v0[210];
  }

  v13 = v0[219];
  v49 = v0[211];
  v51 = v0[212];
  v14 = v0[199];
  v15 = v0[190];
  v16 = v0[189];
  v17 = v0[166];
  v45 = v0[188];
  v47 = v0[165];
  v19 = *(v14 + 36);
  v18 = *(v14 + 40);
  v20 = (v17 + v19);
  if (v20[1])
  {
    v21 = *v20;
  }

  v22 = (v17 + v18);
  if (v22[1])
  {
    v23 = *v22;
  }

  swift_getErrorValue();
  v24 = v0[151];
  v25 = *(v0[152] - 8);
  v26 = *(v25 + 64) + 15;
  swift_task_alloc();
  (*(v25 + 16))();

  v27 = sub_1001D1820();
  v29 = v28;

  *v15 = v27;
  v15[1] = v29;
  (*(v16 + 104))(v15, enum case for Prefetch.Response.Node.ValidationResult.invalid(_:), v45);
  sub_1001D07F0();

  v30 = v0[208];
  v31 = v0[205];
  v32 = v0[202];
  v33 = v0[201];
  v34 = v0[200];
  v35 = v0[198];
  v36 = v0[195];
  v37 = v0[194];
  v38 = v0[193];
  v39 = v0[190];
  v42 = v0[187];
  v43 = v0[186];
  v44 = v0[184];
  v46 = v0[181];
  v48 = v0[178];
  v50 = v0[177];
  v52 = v0[174];

  v40 = v0[1];

  return v40();
}

uint64_t sub_1000692A0()
{
  v2 = *v1;
  v3 = *(*v1 + 1784);
  v6 = *v1;
  *(v2 + 1792) = v0;

  sub_10005AF88(v2 + 896);
  if (v0)
  {
    v4 = sub_100069F6C;
  }

  else
  {
    v4 = sub_100069668;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000693BC()
{
  v1 = *(v0 + 1760);
  *(v0 + 1823) = sub_100032BFC(*(v0 + 1336), *(v0 + 1736), *(v0 + 1744), (*(v0 + 1820) & 1) == 0, *(v0 + 1360), *(v0 + 1368)) & 1;

  return _swift_task_switch(sub_10006944C, 0, 0);
}

uint64_t sub_10006944C()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1328);
  v4 = *(v1 + 36);
  v3 = *(v1 + 40);
  v5 = (v2 + v4);
  if (v5[1])
  {
    v6 = *v5;
  }

  v7 = (v2 + v3);
  if (v7[1])
  {
    v8 = *v7;
  }

  v9 = *(v0 + 1744);
  v10 = *(v0 + 1736);
  v11 = *(v0 + 1696);
  v12 = *(v0 + 1688);
  v13 = *(v0 + 1520);
  v14 = &enum case for Prefetch.Response.Node.ValidationResult.nodeAlreadyExistsInBatch(_:);
  v15 = *(v0 + 1320);
  if (!*(v0 + 1823))
  {
    v14 = &enum case for Prefetch.Response.Node.ValidationResult.validationNotNeeded(_:);
  }

  (*(*(v0 + 1512) + 104))(*(v0 + 1520), *v14, *(v0 + 1504));

  sub_1001D07F0();
  v16 = *(v0 + 1664);
  v17 = *(v0 + 1640);
  v18 = *(v0 + 1616);
  v19 = *(v0 + 1608);
  v20 = *(v0 + 1600);
  v21 = *(v0 + 1584);
  v22 = *(v0 + 1560);
  v23 = *(v0 + 1552);
  v24 = *(v0 + 1544);
  v25 = *(v0 + 1520);
  v28 = *(v0 + 1496);
  v29 = *(v0 + 1488);
  v30 = *(v0 + 1472);
  v31 = *(v0 + 1448);
  v32 = *(v0 + 1424);
  v33 = *(v0 + 1416);
  v34 = *(v0 + 1392);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100069668()
{
  v110 = v0;
  v1 = *(v0 + 1328);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = v2 == *(v0 + 1688) && v3 == *(v0 + 1696);
    if (!v5 && (sub_1001D2470() & 1) == 0)
    {
      v6 = *(v0 + 1696);
      v7 = *(v0 + 1680);
      v8 = *(v0 + 1600);
      v9 = *(v0 + 1376);
      v10 = *(v0 + 1328);
      sub_100089B7C(v10, *(v0 + 1608), type metadata accessor for Proto_Ropes_Common_Attestation);
      sub_100089B7C(v10, v8, type metadata accessor for Proto_Ropes_Common_Attestation);

      v11 = sub_1001D0E50();
      v12 = sub_1001D1DE0();

      if (!os_log_type_enabled(v11, v12))
      {
        v30 = *(v0 + 1608);
        sub_100089B1C(*(v0 + 1600), type metadata accessor for Proto_Ropes_Common_Attestation);

        sub_100089B1C(v30, type metadata accessor for Proto_Ropes_Common_Attestation);
        goto LABEL_22;
      }

      v13 = *(v0 + 1696);
      v14 = *(v0 + 1688);
      v15 = *(v0 + 1680);
      v16 = *(v0 + 1672);
      v17 = *(v0 + 1608);
      v18 = *(v0 + 1600);
      v19 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v19 = 136315906;
      *(v19 + 4) = sub_1000954E0(v16, v15, &v109);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1000954E0(v14, v13, &v109);
      *(v19 + 22) = 2080;
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);

      sub_100089B1C(v17, type metadata accessor for Proto_Ropes_Common_Attestation);
      v22 = sub_1000954E0(v20, v21, &v109);

      *(v19 + 24) = v22;
      *(v19 + 32) = 2048;
      v26 = *v18;
      v27 = v18[1];
      v28 = v27 >> 62;
      if ((v27 >> 62) > 1)
      {
        if (v28 != 2)
        {
          v29 = 0;
          goto LABEL_21;
        }

        v32 = v26 + 16;
        v26 = *(v26 + 16);
        v31 = *(v32 + 8);
        v29 = v31 - v26;
        if (!__OFSUB__(v31, v26))
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      else if (!v28)
      {
        v29 = BYTE6(v27);
LABEL_21:
        sub_100089B1C(*(v0 + 1600), type metadata accessor for Proto_Ropes_Common_Attestation);
        *(v19 + 34) = v29;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s node id does not match attestation bundle calculated=%s fromServer=%s bundleSize=%ld bytes", v19, 0x2Au);
        swift_arrayDestroy();

        goto LABEL_22;
      }

      v33 = __OFSUB__(HIDWORD(v26), v26);
      v34 = HIDWORD(v26) - v26;
      if (v33)
      {
        __break(1u);
        return _swift_task_switch(v23, v24, v25);
      }

      v29 = v34;
      goto LABEL_21;
    }
  }

LABEL_22:
  v35 = *(v0 + 1480);
  v36 = (*(v0 + 1496) + *(v35 + 32));
  *(v0 + 1800) = *v36;
  v37 = v36[1];
  *(v0 + 1808) = v37;
  if (!v37)
  {
    v57 = *(v0 + 1696);
    v58 = *(v0 + 1680);
    v59 = *(v0 + 1376);

    v60 = sub_1001D0E50();
    v61 = sub_1001D1DE0();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = *(v0 + 1696);
      v63 = *(v0 + 1688);
      v64 = *(v0 + 1680);
      v65 = *(v0 + 1672);
      v66 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v66 = 136315394;
      v67 = sub_1000954E0(v65, v64, &v109);

      *(v66 + 4) = v67;
      *(v66 + 12) = 2080;
      *(v66 + 14) = sub_1000954E0(v63, v62, &v109);
      _os_log_impl(&_mh_execute_header, v60, v61, "%s attestation validation did not return a unique device id for attestation: %s", v66, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v68 = *(v0 + 1680);
    }

    v69 = &enum case for Prefetch.Response.Node.ValidationResult.noUniqueIdentifier(_:);
    goto LABEL_35;
  }

  *(v0 + 1816) = *(v35 + 28);

  sub_1001CFD00();
  if (v38 <= 172800.0)
  {
    v25 = *(v0 + 1776);
    v24 = *(v0 + 1768);
    v23 = sub_10006A8B0;

    return _swift_task_switch(v23, v24, v25);
  }

  v39 = *(v0 + 1696);
  v40 = *(v0 + 1680);
  v41 = *(v0 + 1496);
  v42 = *(v0 + 1488);
  v43 = *(v0 + 1376);

  sub_100089B7C(v41, v42, type metadata accessor for ValidatedAttestation);

  v44 = sub_1001D0E50();
  v45 = sub_1001D1DE0();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v0 + 1688);
    v47 = *(v0 + 1680);
    v48 = *(v0 + 1672);
    v103 = *(v0 + 1696);
    v106 = *(v0 + 1528);
    v49 = *(v0 + 1488);
    v50 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v50 = 136315650;
    v51 = sub_1000954E0(v48, v47, &v109);

    *(v50 + 4) = v51;
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_1000954E0(v46, v103, &v109);
    *(v50 + 22) = 2080;
    v52 = *(v35 + 28);
    sub_10008A830(&qword_100227A40, &type metadata accessor for Date);
    v53 = sub_1001D23A0();
    v55 = v54;
    sub_100089B1C(v49, type metadata accessor for ValidatedAttestation);
    v56 = sub_1000954E0(v53, v55, &v109);

    *(v50 + 24) = v56;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s attestation validation returned too long expiration for attestation: %s; expiry: %s", v50, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v70 = *(v0 + 1680);
    v71 = *(v0 + 1488);

    sub_100089B1C(v71, type metadata accessor for ValidatedAttestation);
  }

  v69 = &enum case for Prefetch.Response.Node.ValidationResult.validatedExpiryTooLarge(_:);
LABEL_35:
  v97 = *(v0 + 1688);
  v99 = *(v0 + 1696);
  v72 = *(v0 + 1592);
  v73 = *(v0 + 1536);
  v104 = *(v0 + 1528);
  v107 = *(v0 + 1560);
  v101 = *(v0 + 1496);
  v74 = *(v0 + 1328);
  v75 = *(v0 + 1320);
  v77 = *(v72 + 36);
  v76 = *(v72 + 40);
  v78 = (v74 + v77);
  if (v78[1])
  {
    v79 = *v78;
  }

  v80 = (v74 + v76);
  if (v80[1])
  {
    v81 = *v80;
    v82 = v80[1];
  }

  (*(*(v0 + 1512) + 104))(*(v0 + 1520), *v69, *(v0 + 1504));

  sub_1001D07F0();
  sub_100089B1C(v101, type metadata accessor for ValidatedAttestation);
  (*(v73 + 8))(v107, v104);
  v83 = *(v0 + 1664);
  v84 = *(v0 + 1640);
  v85 = *(v0 + 1616);
  v86 = *(v0 + 1608);
  v87 = *(v0 + 1600);
  v88 = *(v0 + 1584);
  v89 = *(v0 + 1560);
  v90 = *(v0 + 1552);
  v91 = *(v0 + 1544);
  v92 = *(v0 + 1520);
  v95 = *(v0 + 1496);
  v96 = *(v0 + 1488);
  v98 = *(v0 + 1472);
  v100 = *(v0 + 1448);
  v102 = *(v0 + 1424);
  v105 = *(v0 + 1416);
  v108 = *(v0 + 1392);

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_100069F6C()
{
  v138 = v0;
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1680);
  v4 = *(v0 + 1376);

  swift_errorRetain();
  v5 = sub_1001D0E50();
  v6 = sub_1001D1DE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1792);
    v134 = *(v0 + 1696);
    v8 = *(v0 + 1688);
    v9 = *(v0 + 1680);
    v10 = *(v0 + 1672);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v137[0] = swift_slowAlloc();
    *v11 = 136315650;
    v13 = sub_1000954E0(v10, v9, v137);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1000954E0(v8, v134, v137);
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s attestation validation failed for node: %s with error: %@", v11, 0x20u);
    sub_100011F00(v12, &unk_1002301D0, &qword_1001D4F50);

    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 1680);
  }

  v118 = *(v0 + 1792);
  v112 = *(v0 + 1822);
  v126 = *(v0 + 1696);
  v128 = *(v0 + 1688);
  v119 = *(v0 + 1592);
  v132 = *(v0 + 1560);
  v111 = *(v0 + 1552);
  v108 = *(v0 + 1544);
  v135 = *(v0 + 1536);
  v130 = *(v0 + 1528);
  v121 = *(v0 + 1520);
  v122 = *(v0 + 1512);
  v124 = *(v0 + 1504);
  v16 = *(v0 + 1472);
  v17 = *(v0 + 1464);
  v18 = *(v0 + 1456);
  v19 = *(v0 + 1448);
  v20 = *(v0 + 1440);
  v100 = *(v0 + 1432);
  v105 = *(v0 + 1424);
  v114 = *(v0 + 1416);
  v115 = *(v0 + 1408);
  v116 = *(v0 + 1400);
  v21 = *(v0 + 1392);
  v113 = *(v0 + 1384);
  v22 = *(v0 + 1376);
  v23 = *(v0 + 1352);
  v117 = *(v0 + 1328);
  v120 = *(v0 + 1320);
  swift_getErrorValue();
  v106 = *(v0 + 1232);
  v104 = *(v0 + 1240);
  v109 = *(v0 + 1248);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  (*(v17 + 16))(v16, v23, v18);
  v24 = (v22 + *(*v22 + 296));
  v110 = *v24;
  v103 = v24[1];
  v25 = (v22 + *(*v22 + 240));
  v26 = v25[3];
  v27 = v25[4];
  sub_100024DC8(v25, v26);
  v28 = (v22 + *(*v22 + 256));
  *(v0 + 1192) = &type metadata for SystemInfo;
  *(v0 + 1200) = &protocol witness table for SystemInfo;
  v29 = swift_allocObject();
  *(v0 + 1168) = v29;
  v31 = v28[1];
  v30 = v28[2];
  *(v0 + 192) = *v28;
  *(v0 + 208) = v31;
  *(v0 + 224) = v30;
  v32 = v28[6];
  v34 = v28[3];
  v33 = v28[4];
  *(v0 + 272) = v28[5];
  *(v0 + 288) = v32;
  *(v0 + 240) = v34;
  *(v0 + 256) = v33;
  v35 = v28[10];
  v37 = v28[7];
  v36 = v28[8];
  *(v0 + 336) = v28[9];
  *(v0 + 352) = v35;
  *(v0 + 304) = v37;
  *(v0 + 320) = v36;
  v38 = *v28;
  v39 = v28[2];
  v29[2] = v28[1];
  v29[3] = v39;
  v29[1] = v38;
  v40 = v28[3];
  v41 = v28[4];
  v42 = v28[6];
  v29[6] = v28[5];
  v29[7] = v42;
  v29[4] = v40;
  v29[5] = v41;
  v43 = v28[7];
  v44 = v28[8];
  v45 = v28[10];
  v29[10] = v28[9];
  v29[11] = v45;
  v29[8] = v43;
  v29[9] = v44;

  sub_1000884D8(v0 + 192, v0 + 368);
  Configuration.environment(systemInfo:)((v0 + 1168), v26, v27, v19);
  sub_100011CF0((v0 + 1168));
  v46 = sub_1001D02B0();
  v101 = v47;
  v102 = v46;
  (*(v20 + 8))(v19, v100);
  v48 = *v28;
  v49 = v28[2];
  *(v0 + 32) = v28[1];
  *(v0 + 48) = v49;
  *(v0 + 16) = v48;
  v50 = v28[3];
  v51 = v28[4];
  v52 = v28[6];
  *(v0 + 96) = v28[5];
  *(v0 + 112) = v52;
  *(v0 + 64) = v50;
  *(v0 + 80) = v51;
  v53 = v28[7];
  v54 = v28[8];
  v55 = v28[10];
  *(v0 + 160) = v28[9];
  *(v0 + 176) = v55;
  *(v0 + 128) = v53;
  *(v0 + 144) = v54;
  v56 = *v28;
  v57 = v28[2];
  *(v0 + 560) = v28[1];
  *(v0 + 576) = v57;
  *(v0 + 544) = v56;
  v58 = v28[3];
  v59 = v28[4];
  v60 = v28[6];
  *(v0 + 624) = v28[5];
  *(v0 + 640) = v60;
  *(v0 + 592) = v58;
  *(v0 + 608) = v59;
  v61 = v28[7];
  v62 = v28[8];
  v63 = v28[10];
  *(v0 + 688) = v28[9];
  *(v0 + 704) = v63;
  *(v0 + 656) = v61;
  *(v0 + 672) = v62;
  sub_1000884D8(v0 + 16, v0 + 720);
  sub_1001CFDC0();
  v64 = *(v104 - 8);
  v65 = *(v64 + 64) + 15;
  v66 = swift_task_alloc();
  (*(v64 + 16))(v66, v106, v104);

  sub_1001CFD50();
  sub_1001CFC90();
  v107 = *(v135 + 8);
  v107(v108, v130);
  v67 = sub_1001D2630();
  v69 = v68;
  v70 = (v22 + *(*v22 + 304));
  v72 = *v70;
  v71 = v70[1];

  sub_10001C2C8(v111, v16, v110, v103, v102, v101, v0 + 544, v105, (v0 + 1088), 1u, v128, v126, v66, v67, v69, v72, v73, v112, &type metadata for SystemInfo, v104, &protocol witness table for SystemInfo, v109);

  v74 = *(*v22 + 280);
  v21[3] = &type metadata for AttestationVerificationErrorMetric;
  v21[4] = sub_10005AFDC();
  v75 = swift_allocObject();
  *v21 = v75;
  *(v75 + 48) = *(v0 + 1120);
  v76 = *(v0 + 1104);
  *(v75 + 16) = *(v0 + 1088);
  *(v75 + 32) = v76;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v115 + 8))(v114, v116);
  v77 = (v117 + *(v119 + 36));
  if (v77[1])
  {
    v78 = *v77;
  }

  v79 = (v117 + *(v119 + 40));
  if (v79[1])
  {
    v80 = *v79;
    v81 = v79[1];
  }

  swift_getErrorValue();
  v82 = *(v0 + 1256);
  v83 = *(*(v0 + 1264) - 8);
  v84 = *(v83 + 64) + 15;
  swift_task_alloc();
  (*(v83 + 16))();

  v85 = sub_1001D1820();
  v87 = v86;

  *v121 = v85;
  v121[1] = v87;
  (*(v122 + 104))(v121, enum case for Prefetch.Response.Node.ValidationResult.invalid(_:), v124);
  sub_1001D07F0();

  v107(v132, v130);
  v88 = *(v0 + 1664);
  v89 = *(v0 + 1640);
  v90 = *(v0 + 1616);
  v91 = *(v0 + 1608);
  v92 = *(v0 + 1600);
  v93 = *(v0 + 1584);
  v94 = *(v0 + 1560);
  v95 = *(v0 + 1552);
  v96 = *(v0 + 1544);
  v97 = *(v0 + 1520);
  v123 = *(v0 + 1496);
  v125 = *(v0 + 1488);
  v127 = *(v0 + 1472);
  v129 = *(v0 + 1448);
  v131 = *(v0 + 1424);
  v133 = *(v0 + 1416);
  v136 = *(v0 + 1392);

  v98 = *(v0 + 8);

  return v98();
}

uint64_t sub_10006A8B0()
{
  v1 = *(v0 + 1760);
  *(v0 + 1824) = sub_1000278B4(*(v0 + 1496), *(v0 + 1336), (*(v0 + 1820) & 1) == 0, *(v0 + 1360), *(v0 + 1368)) & 1;

  return _swift_task_switch(sub_10006A93C, 0, 0);
}

uint64_t sub_10006A93C()
{
  v67 = v0;
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1680);
  v4 = *(v0 + 1376);

  v5 = sub_1001D0E50();
  v6 = sub_1001D1E00();

  v7 = os_log_type_enabled(v5, v6);
  if (v1 == 1)
  {
    if (v7)
    {
      v8 = *(v0 + 1696);
      v9 = *(v0 + 1688);
      v10 = *(v0 + 1680);
      v11 = *(v0 + 1672);
      v12 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_1000954E0(v11, v10, &v66);

      *(v12 + 4) = v13;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1000954E0(v9, v8, &v66);
      v14 = "%s successfully saved attestation for node: %s";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, v6, v14, v12, 0x16u);
      swift_arrayDestroy();

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v15 = *(v0 + 1696);
    v16 = *(v0 + 1688);
    v17 = *(v0 + 1680);
    v18 = *(v0 + 1672);
    v12 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v12 = 136315394;
    v19 = sub_1000954E0(v18, v17, &v66);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1000954E0(v16, v15, &v66);
    v14 = "%s failed to save attestation for node: %s";
    goto LABEL_6;
  }

  v20 = *(v0 + 1680);

LABEL_8:
  v62 = *(v0 + 1824);
  v51 = *(v0 + 1816);
  v56 = *(v0 + 1800);
  v58 = *(v0 + 1808);
  v60 = *(v0 + 1696);
  v54 = *(v0 + 1688);
  v21 = *(v0 + 1592);
  v64 = *(v0 + 1560);
  v22 = *(v0 + 1536);
  v23 = *(v0 + 1528);
  v24 = *(v0 + 1520);
  v25 = *(v0 + 1512);
  v50 = *(v0 + 1504);
  v26 = *(v0 + 1496);
  v27 = *(v0 + 1328);
  v52 = *(v0 + 1320);
  v29 = *(v21 + 36);
  v28 = *(v21 + 40);
  v30 = (v27 + v29);
  if (v30[1])
  {
    v31 = *v30;
  }

  v32 = (v27 + v28);
  if (v32[1])
  {
    v33 = *v32;
    v34 = v32[1];
  }

  v35 = *(sub_100011AC0(&qword_100229390, &qword_1001D6518) + 48);
  v37 = *(v26 + 104);
  v36 = *(v26 + 112);
  *v24 = v37;
  v24[1] = v36;
  (*(v22 + 16))(v24 + v35, v26 + v51, v23);
  (*(v25 + 104))(v24, enum case for Prefetch.Response.Node.ValidationResult.valid(_:), v50);

  sub_100012038(v37, v36);
  sub_1001D07F0();
  sub_100089B1C(v26, type metadata accessor for ValidatedAttestation);
  (*(v22 + 8))(v64, v23);
  v38 = *(v0 + 1664);
  v39 = *(v0 + 1640);
  v40 = *(v0 + 1616);
  v41 = *(v0 + 1608);
  v42 = *(v0 + 1600);
  v43 = *(v0 + 1584);
  v44 = *(v0 + 1560);
  v45 = *(v0 + 1552);
  v46 = *(v0 + 1544);
  v47 = *(v0 + 1520);
  v53 = *(v0 + 1496);
  v55 = *(v0 + 1488);
  v57 = *(v0 + 1472);
  v59 = *(v0 + 1448);
  v61 = *(v0 + 1424);
  v63 = *(v0 + 1416);
  v65 = *(v0 + 1392);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_10006ADEC()
{
  v1[156] = v0;
  v2 = sub_1001D0F00();
  v1[157] = v2;
  v3 = *(v2 - 8);
  v1[158] = v3;
  v4 = *(v3 + 64) + 15;
  v1[159] = swift_task_alloc();
  v5 = sub_1001D0F40();
  v1[160] = v5;
  v6 = *(v5 - 8);
  v1[161] = v6;
  v7 = *(v6 + 64) + 15;
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v8 = sub_100011AC0(&qword_1002292F8, &unk_1001E1C80);
  v1[164] = v8;
  v9 = *(v8 - 8);
  v1[165] = v9;
  v10 = *(v9 + 64) + 15;
  v1[166] = swift_task_alloc();
  v11 = sub_1001D0860();
  v1[167] = v11;
  v12 = *(v11 - 8);
  v1[168] = v12;
  v13 = *(v12 + 64) + 15;
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v14 = sub_1001CFDA0();
  v1[171] = v14;
  v15 = *(v14 - 8);
  v1[172] = v15;
  v16 = *(v15 + 64) + 15;
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();
  v1[176] = swift_task_alloc();
  v1[177] = swift_task_alloc();
  v17 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v1[178] = v17;
  v18 = *(v17 - 8);
  v1[179] = v18;
  v19 = *(v18 + 64) + 15;
  v1[180] = swift_task_alloc();
  v1[181] = swift_task_alloc();
  v1[182] = swift_task_alloc();
  v1[183] = swift_task_alloc();
  v20 = sub_1001D1380();
  v1[184] = v20;
  v21 = *(v20 - 8);
  v1[185] = v21;
  v22 = *(v21 + 64) + 15;
  v1[186] = swift_task_alloc();
  v1[187] = swift_task_alloc();
  v23 = sub_1001D0ED0();
  v1[188] = v23;
  v24 = *(v23 - 8);
  v1[189] = v24;
  v25 = *(v24 + 64) + 15;
  v1[190] = swift_task_alloc();
  v26 = type metadata accessor for ThimbledEvent();
  v1[191] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v1[192] = swift_task_alloc();
  v28 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v1[193] = v28;
  v29 = *(v28 - 8);
  v1[194] = v29;
  v30 = *(v29 + 64) + 15;
  v1[195] = swift_task_alloc();
  v31 = sub_1001D02E0();
  v1[196] = v31;
  v32 = *(v31 - 8);
  v1[197] = v32;
  v33 = *(v32 + 64) + 15;
  v1[198] = swift_task_alloc();
  v1[199] = swift_task_alloc();
  v1[200] = swift_task_alloc();
  v34 = sub_1001CFD60();
  v1[201] = v34;
  v35 = *(v34 - 8);
  v1[202] = v35;
  v36 = *(v35 + 64) + 15;
  v1[203] = swift_task_alloc();
  v1[204] = swift_task_alloc();
  v1[205] = swift_task_alloc();
  v1[206] = swift_task_alloc();
  v37 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v1[207] = v37;
  v38 = *(v37 - 8);
  v1[208] = v38;
  v39 = *(v38 + 64) + 15;
  v1[209] = swift_task_alloc();
  v40 = sub_100011AC0(&qword_1002292A8, &qword_1001D6418);
  v1[210] = v40;
  v41 = *(v40 - 8);
  v1[211] = v41;
  v42 = *(v41 + 64) + 15;
  v1[212] = swift_task_alloc();
  v43 = *(*(sub_1001D1810() - 8) + 64) + 15;
  v1[213] = swift_task_alloc();
  v44 = *(*(sub_100011AC0(&qword_1002292B0, &unk_1001D6420) - 8) + 64) + 15;
  v1[214] = swift_task_alloc();
  v45 = sub_1001D08A0();
  v1[215] = v45;
  v46 = *(v45 - 8);
  v1[216] = v46;
  v47 = *(v46 + 64) + 15;
  v1[217] = swift_task_alloc();

  return _swift_task_switch(sub_10006B4DC, 0, 0);
}

uint64_t sub_10006B4DC()
{
  v516 = v0;
  v1 = *(v0 + 1368);
  *(v0 + 1744) = *(**(v0 + 1248) + 320);
  *(v0 + 1752) = sub_10008A830(&qword_100228AF8, &type metadata accessor for UUID);
  v514 = sub_1001D23A0();
  v515 = v2;
  v518._countAndFlagsBits = 58;
  v518._object = 0xE100000000000000;
  sub_1001D18B0(v518);
  v4 = v514;
  v3 = v515;
  *(v0 + 1760) = v514;
  *(v0 + 1768) = v3;
  *(v0 + 1776) = qword_100229210;

  v5 = sub_1001D0E50();
  v6 = sub_1001D1E00();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1248);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v514 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1000954E0(v4, v3, &v514);
    *(v9 + 12) = 1024;
    *(v9 + 14) = *(v8 + *(*v8 + 288));

    _os_log_impl(&_mh_execute_header, v5, v6, "%s executing batch of prefetch requests, prewarm=%{BOOL}d", v9, 0x12u);
    sub_100011CF0(v10);
  }

  else
  {
    v11 = *(v0 + 1248);
  }

  v12 = *(v0 + 1728);
  v13 = *(v0 + 1720);
  v14 = *(v0 + 1712);
  v15 = *(v0 + 1248) + *(**(v0 + 1248) + 272);
  sub_100096A60(v14);
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    sub_100011F00(*(v0 + 1712), &qword_1002292B0, &unk_1001D6420);

    v16 = sub_1001D0E50();
    v17 = sub_1001D1DE0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v514 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000954E0(v4, v3, &v514);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s invalid set of parameters for prefetching", v18, 0xCu);
      sub_100011CF0(v19);
    }

    v20 = sub_1001D0E50();
    v21 = sub_1001D1E00();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v514 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000954E0(v4, v3, &v514);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s finished batch of prefetch requests", v22, 0xCu);
      sub_100011CF0(v23);
    }

    v24 = *(v0 + 1736);
    v25 = *(v0 + 1712);
    v26 = *(v0 + 1704);
    v27 = *(v0 + 1696);
    v28 = *(v0 + 1672);
    v29 = *(v0 + 1648);
    v30 = *(v0 + 1640);
    v31 = *(v0 + 1632);
    v32 = *(v0 + 1624);
    v33 = *(v0 + 1600);
    v422 = *(v0 + 1592);
    v424 = *(v0 + 1584);
    v426 = *(v0 + 1560);
    v429 = *(v0 + 1536);
    v432 = *(v0 + 1520);
    v435 = *(v0 + 1496);
    v438 = *(v0 + 1488);
    v441 = *(v0 + 1464);
    v444 = *(v0 + 1456);
    v447 = *(v0 + 1448);
    v450 = *(v0 + 1440);
    v453 = *(v0 + 1416);
    v456 = *(v0 + 1408);
    v459 = *(v0 + 1400);
    v462 = *(v0 + 1392);
    v466 = *(v0 + 1384);
    v471 = *(v0 + 1360);
    v479 = *(v0 + 1352);
    v488 = *(v0 + 1328);
    v496 = *(v0 + 1304);
    v500 = *(v0 + 1296);
    v507 = *(v0 + 1272);

    v34 = *(v0 + 8);

    return v34(&_swiftEmptyArrayStorage);
  }

  v501 = v4;
  v36 = *(v0 + 1248);
  (*(*(v0 + 1728) + 32))(*(v0 + 1736), *(v0 + 1712), *(v0 + 1720));
  v37 = *(*v36 + 248);
  v38 = *v36;
  v39 = *(*v36 + 240);
  *(v0 + 1784) = v39;
  v40 = (v36 + v39);
  v41 = *(v38 + 256);
  *(v0 + 1792) = v41;
  v42 = (v36 + v41);
  v43 = v42[2];
  v44 = *v42;
  *(v0 + 736) = v42[1];
  *(v0 + 752) = v43;
  *(v0 + 720) = v44;
  v45 = v42[6];
  v47 = v42[3];
  v46 = v42[4];
  *(v0 + 800) = v42[5];
  *(v0 + 816) = v45;
  *(v0 + 768) = v47;
  *(v0 + 784) = v46;
  v49 = v42[9];
  v48 = v42[10];
  v50 = v42[8];
  *(v0 + 832) = v42[7];
  *(v0 + 848) = v50;
  *(v0 + 864) = v49;
  *(v0 + 880) = v48;
  v51 = *(v36 + v37);
  v52 = *(v36 + v39 + 24);
  v53 = *(v36 + v39 + 32);
  v54 = sub_100024DC8((v36 + v39), v52);
  LOBYTE(v53) = sub_100106E64(v54, v0 + 720, v51, v52, v53);
  v55 = v36[2];
  *(v0 + 1216) = sub_1001D0870();
  sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
  sub_1000594F0();
  *(v0 + 1800) = sub_1001CF800();
  *(v0 + 1808) = v56;
  v497 = v51;
  v68 = *(v0 + 1704);
  v69 = *(v0 + 1688);
  v70 = v53;

  sub_1001D1800();
  v71 = sub_1001D17F0();
  *(v0 + 1816) = v72;
  *(v0 + 1824) = v71;
  v481 = v40[4];
  v490 = v40;
  sub_100024DC8(v40, v40[3]);
  v73 = (v69 + 8);
  v74 = *(v0 + 1696);
  v75 = *(v0 + 1680);
  if (v70)
  {
    v76 = *(v0 + 1696);
    sub_1001D0540();
    sub_1001D0210();
    v77 = *v73;
    v77(v74, v75);
    v78 = *(v0 + 1232);
    v79 = sub_100105F8C();
    if (v80)
    {
      v81 = v78;
    }

    else
    {
      v81 = v79;
    }

    if (v78 < v81)
    {
      v81 = v78;
    }

    if (v81 <= 1)
    {
      v82 = 1;
    }

    else
    {
      v82 = v81;
    }

    v83 = sub_100105CDC();
    if (v84)
    {
      v85 = *(v0 + 1696);
      v482 = *(v0 + 1680);
      v473 = v40[4];
      sub_100024DC8(v40, v40[3]);
      sub_1001D04B0();
      sub_1001D0210();
      v77(v85, v482);
      v83 = *(v0 + 1240);
    }
  }

  else
  {
    v86 = *(v0 + 1696);
    sub_1001D0410();
    sub_1001D0210();
    v87 = *v73;
    v87(v74, v75);
    v88 = *(v0 + 1208);
    v89 = sub_100105200();
    if (v90)
    {
      v91 = v88;
    }

    else
    {
      v91 = v89;
    }

    if (v88 < v91)
    {
      v91 = v88;
    }

    if (v91 <= 1)
    {
      v82 = 1;
    }

    else
    {
      v82 = v91;
    }

    v83 = sub_100105608();
    if (v92)
    {
      v93 = *(v0 + 1696);
      v483 = *(v0 + 1680);
      v474 = v40[4];
      sub_100024DC8(v40, v40[3]);
      sub_1001D0390();
      sub_1001D0210();
      v87(v93, v483);
      v83 = *(v0 + 1200);
    }
  }

  if (v83 <= 1)
  {
    v94 = 1;
  }

  else
  {
    v94 = v83;
  }

  *(v0 + 1840) = v82;
  *(v0 + 1832) = v94;
  v95 = (*(v0 + 1248) + *(**(v0 + 1248) + 312));
  v96 = *v95;
  *(v0 + 1848) = *v95;
  v97 = *(v95 + 8);
  *(v0 + 2093) = v97;
  if (v97)
  {
    v98 = 0;
  }

  else
  {
    v98 = v96;
  }

  v509 = v98;
  if (v97)
  {
    v99 = v94 - 1;
  }

  else
  {
    v99 = v96;
  }

  v484 = v99;
  *(v0 + 1856) = 3 * v82;
  if ((v82 * 3) >> 64 != (3 * v82) >> 63)
  {
    __break(1u);
    goto LABEL_153;
  }

  v100 = sub_1001D0E50();
  v101 = sub_1001D1E00();

  if (!os_log_type_enabled(v100, v101))
  {
    goto LABEL_60;
  }

  v475 = v101;
  v102 = swift_slowAlloc();
  v468 = swift_slowAlloc();
  v514 = v468;
  *v102 = 136316418;
  *(v102 + 4) = sub_1000954E0(v501, v3, &v514);
  *(v102 + 12) = 2048;
  *(v102 + 14) = v82;
  *(v102 + 22) = 2048;
  v103 = &v509[-v484];
  if (v509 <= v484)
  {
    if (v97)
    {
      v106 = v94;
    }

    else
    {
      v106 = 1;
    }

    if ((v82 * v106) >> 64 == (v82 * v106) >> 63)
    {
      *(v102 + 24) = v82 * v106;
      *(v102 + 32) = 2048;
      if (v97)
      {
        v105 = v94 - 1;
      }

      else
      {
        v105 = 0;
      }

      goto LABEL_59;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    swift_once();
    goto LABEL_64;
  }

  if (&v509[-v484] < 0)
  {
    goto LABEL_159;
  }

  v104 = v82 * (1 - v103);
  if ((v82 * (1 - v103)) >> 64 != v104 >> 63)
  {
    goto LABEL_153;
  }

  *(v102 + 24) = v104;
  *(v102 + 32) = 2048;
  v105 = v484 - v509;
LABEL_59:
  *(v102 + 34) = v105 + 1;
  *(v102 + 42) = 2048;
  *(v102 + 44) = v94;
  *(v102 + 52) = 2048;
  *(v102 + 54) = 3 * v82;
  _os_log_impl(&_mh_execute_header, v100, v475, "%s configuration: maxPrefetchedAttestations: %ld, clientCacheSize: %ld, maxPrefetchRequests: %ld, maxPrefetchBatches: %ld, prewarmAttestationsAvailability: %ld", v102, 0x3Eu);
  sub_100011CF0(v468);

LABEL_60:

  if (v97)
  {
    sub_1001054B0();
    if (v107)
    {
      v108 = *(v0 + 1672);
      v109 = *(v0 + 1664);
      v110 = *(v0 + 1656);
      v111 = v490[4];
      sub_100024DC8(v490, v490[3]);
      sub_1001D0520();
      sub_1001D0210();
      (*(v109 + 8))(v108, v110);
      v112 = *(v0 + 1224);
    }

    v177 = *(v0 + 1648);
    v178 = *(v0 + 1640);
    v179 = *(v0 + 1616);
    v180 = *(v0 + 1608);
    v181 = *(v0 + 1248);
    sub_1001CFD50();
    sub_1001CFCF0();
    v182 = *(v179 + 8);
    *(v0 + 1864) = v182;
    *(v0 + 1872) = (v179 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v182(v178, v180);
    *(v0 + 1880) = *(v181 + *(*v181 + 216));
    type metadata accessor for AttestationStore();
    sub_10008A830(&qword_1002287B8, type metadata accessor for AttestationStore);
    v184 = sub_1001D1A70();

    return _swift_task_switch(sub_10006E4FC, v184, v183);
  }

  v476 = *(v0 + 1744);
  v113 = *(v0 + 1600);
  v114 = *(v0 + 1552);
  v491 = *(v0 + 1560);
  v498 = *(v0 + 1544);
  v115 = *(v0 + 1536);
  v485 = *(v0 + 1528);
  v116 = *(v0 + 1376);
  v117 = *(v0 + 1248);
  v118 = (v117 + *(v0 + 1784));
  v119 = (v117 + *(v0 + 1792));
  v120 = v118[3];
  v464 = v118[4];
  v469 = *(v0 + 1368);
  sub_100024DC8(v118, v120);
  *(v0 + 968) = &type metadata for SystemInfo;
  *(v0 + 976) = &protocol witness table for SystemInfo;
  v121 = swift_allocObject();
  *(v0 + 944) = v121;
  v123 = v119[1];
  v122 = v119[2];
  *(v0 + 368) = *v119;
  *(v0 + 384) = v123;
  *(v0 + 400) = v122;
  v124 = v119[6];
  v126 = v119[3];
  v125 = v119[4];
  *(v0 + 448) = v119[5];
  *(v0 + 464) = v124;
  *(v0 + 416) = v126;
  *(v0 + 432) = v125;
  v127 = v119[10];
  v129 = v119[7];
  v128 = v119[8];
  *(v0 + 512) = v119[9];
  *(v0 + 528) = v127;
  *(v0 + 480) = v129;
  *(v0 + 496) = v128;
  v510 = *(v0 + 512);
  v130 = *(v0 + 520);
  v132 = v119[1];
  v131 = v119[2];
  v121[1] = *v119;
  v121[2] = v132;
  v121[3] = v131;
  v133 = v119[6];
  v135 = v119[3];
  v134 = v119[4];
  v121[6] = v119[5];
  v121[7] = v133;
  v121[4] = v135;
  v121[5] = v134;
  v136 = v119[10];
  v138 = v119[7];
  v137 = v119[8];
  v121[10] = v119[9];
  v121[11] = v136;
  v121[8] = v138;
  v121[9] = v137;
  sub_1000884D8(v0 + 368, v0 + 544);

  Configuration.environment(systemInfo:)((v0 + 944), v120, v464, v113);
  sub_100011CF0((v0 + 944));
  v139 = *(*v117 + 280);
  v140 = (v115 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
  v141 = *(v116 + 16);
  *(v0 + 1888) = v141;
  *(v0 + 1896) = (v116 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v141(v115, v117 + v476, v469);
  *v140 = sub_1001D02B0();
  v140[1] = v142;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v114 + 8))(v491, v498);
  sub_100011AC0(&qword_1002292D0, &qword_1001D6440);
  v143 = *(sub_1001D13D0() - 8);
  v144 = *(v143 + 72);
  v145 = (*(v143 + 80) + 32) & ~*(v143 + 80);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_1001D62F0;
  v497 = v146;
  if (qword_1002276B0 != -1)
  {
    goto LABEL_154;
  }

LABEL_64:
  v147 = *(v0 + 1496);
  v148 = *(v0 + 1480);
  v149 = *(v0 + 1472);
  v150 = sub_10003A37C(v149, qword_100242D90);
  v151 = *(v148 + 16);
  *(v0 + 1904) = v151;
  *(v0 + 1912) = (v148 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v151(v147, v150, v149);
  sub_1001D13A0();
  if (qword_1002276B8 != -1)
  {
    swift_once();
  }

  v152 = *(v0 + 1736);
  v153 = *(v0 + 1496);
  v154 = *(v0 + 1472);
  v155 = sub_10003A37C(v154, qword_100242DA8);
  v151(v153, v155, v154);
  sub_1001D0890();
  sub_1001D13A0();
  if (qword_1002276C0 != -1)
  {
    swift_once();
  }

  v156 = *(v0 + 1824);
  v157 = *(v0 + 1816);
  v492 = *(v0 + 1520);
  v158 = *(v0 + 1504);
  v159 = *(v0 + 1496);
  v160 = *(v0 + 1472);
  v503 = *(v0 + 1248);
  v161 = sub_10003A37C(v160, qword_100242DC0);
  v509 = v151;
  v151(v159, v161, v160);

  sub_1001D13A0();
  sub_1001D1330();
  sub_1001D13A0();
  sub_1001D1370();
  sub_1001D13A0();
  *(v0 + 1192) = v497;
  sub_10008A830(&qword_1002292D8, &type metadata accessor for HTTPFields);
  sub_1001D1D80();
  sub_100011AC0(&qword_1002292E0, &unk_1001D6448);
  sub_100024B78(&qword_1002292E8, &qword_1002292E0, &unk_1001D6448);
  sub_1001D1D50();
  if (*(v503 + *(*v503 + 288)) != 1)
  {
    if (qword_1002276D8 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_160;
  }

  v162 = *(v0 + 1248);
  v163 = (v162 + *(*v503 + 296));
  if (!v163[1])
  {
    v190 = *(v0 + 1776);
    v191 = *(v0 + 1768);
    if (*(v0 + 1816))
    {
      v192 = *(v0 + 1816);
    }

    v193 = sub_1001D0E50();
    v194 = sub_1001D1DE0();

    if (os_log_type_enabled(v193, v194))
    {
      v195 = *(v0 + 1768);
      v196 = *(v0 + 1760);
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v514 = v198;
      *v197 = 136315138;
      *(v197 + 4) = sub_1000954E0(v196, v195, &v514);
      _os_log_impl(&_mh_execute_header, v193, v194, "%s not prefetching, missing bundleIdentifier", v197, 0xCu);
      sub_100011CF0(v198);
    }

    goto LABEL_149;
  }

  v164 = (v162 + *(*v503 + 304));
  if (!v164[1])
  {
    v398 = *(v0 + 1776);
    v399 = *(v0 + 1768);
    if (*(v0 + 1816))
    {
      v400 = *(v0 + 1816);
    }

    v193 = sub_1001D0E50();
    v401 = sub_1001D1DE0();

    if (os_log_type_enabled(v193, v401))
    {
      v402 = *(v0 + 1768);
      v403 = *(v0 + 1760);
      v404 = swift_slowAlloc();
      v405 = swift_slowAlloc();
      v514 = v405;
      *v404 = 136315138;
      *(v404 + 4) = sub_1000954E0(v403, v402, &v514);
      _os_log_impl(&_mh_execute_header, v193, v401, "%s not prefetching, missing featureIdentifier", v404, 0xCu);
      sub_100011CF0(v405);
    }

LABEL_149:

    v465 = *(v0 + 1808);
    v406 = *(v0 + 1800);
    v407 = *(v0 + 1768);
    v506 = *(v0 + 1736);
    v513 = *(v0 + 1776);
    v408 = *(v0 + 1728);
    v495 = *(v0 + 1720);
    v409 = *(v0 + 1600);
    v410 = *(v0 + 1576);
    v411 = *(v0 + 1568);
    v412 = *(v0 + 1512);
    v470 = *(v0 + 1504);
    v478 = *(v0 + 1520);
    v487 = *(v0 + 1248);
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v406, v465);
    (*(v410 + 8))(v409, v411);
    (*(v412 + 8))(v478, v470);
    (*(v408 + 8))(v506, v495);

    v413 = sub_1001D0E50();
    v414 = sub_1001D1E00();

    v415 = os_log_type_enabled(v413, v414);
    v416 = *(v0 + 1768);
    if (v415)
    {
      v417 = *(v0 + 1760);
      v418 = swift_slowAlloc();
      v419 = swift_slowAlloc();
      v514 = v419;
      *v418 = 136315138;
      *(v418 + 4) = sub_1000954E0(v417, v416, &v514);
      _os_log_impl(&_mh_execute_header, v413, v414, "%s finished batch of prefetch requests", v418, 0xCu);
      sub_100011CF0(v419);
    }

    v57 = *(v0 + 1736);
    v58 = *(v0 + 1712);
    v59 = *(v0 + 1704);
    v60 = *(v0 + 1696);
    v61 = *(v0 + 1672);
    v62 = *(v0 + 1648);
    v63 = *(v0 + 1640);
    v64 = *(v0 + 1632);
    v65 = *(v0 + 1624);
    v66 = *(v0 + 1600);
    v421 = *(v0 + 1592);
    v423 = *(v0 + 1584);
    v425 = *(v0 + 1560);
    v427 = *(v0 + 1536);
    v430 = *(v0 + 1520);
    v433 = *(v0 + 1496);
    v436 = *(v0 + 1488);
    v439 = *(v0 + 1464);
    v442 = *(v0 + 1456);
    v445 = *(v0 + 1448);
    v448 = *(v0 + 1440);
    v451 = *(v0 + 1416);
    v454 = *(v0 + 1408);
    v457 = *(v0 + 1400);
    v460 = *(v0 + 1392);
    v463 = *(v0 + 1384);
    v467 = *(v0 + 1360);
    v472 = *(v0 + 1352);
    v480 = *(v0 + 1328);
    v489 = *(v0 + 1304);
    v502 = *(v0 + 1296);
    v508 = *(v0 + 1272);

    v67 = *(v0 + 8);

    return v67();
  }

  v165 = *v163;
  v166 = *v164;
  v167 = qword_1002276D8;

  if (v167 != -1)
  {
    swift_once();
  }

  v168 = *(v0 + 1520);
  v169 = *(v0 + 1496);
  v170 = *(v0 + 1472);
  v171 = sub_10003A37C(v170, qword_100242E08);
  v172 = v509;
  (v509)(v169, v171, v170);
  sub_1001D0EF0();
  if (qword_1002276D0 != -1)
  {
    swift_once();
  }

  v173 = *(v0 + 1520);
  v174 = *(v0 + 1496);
  v175 = *(v0 + 1472);
  v176 = sub_10003A37C(v175, qword_100242DF0);
  (v509)(v174, v176, v175);
  while (1)
  {
    sub_1001D0EF0();
    v205 = [objc_opt_self() automatedDeviceGroup];
    if (v205)
    {
      v206 = v205;
      sub_1001D17D0();

      if (qword_1002276E8 != -1)
      {
        swift_once();
      }

      v207 = *(v0 + 1520);
      v208 = *(v0 + 1496);
      v209 = *(v0 + 1472);
      v210 = sub_10003A37C(v209, qword_100242E38);
      v172(v208, v210, v209);
      sub_1001D0EF0();
    }

    v211 = *(v0 + 1464);
    v212 = *(v0 + 1432);
    v213 = *(v0 + 1424);
    v214 = (*(v0 + 1248) + *(v0 + 1784));
    v215 = v214[4];
    sub_100024DC8(v214, v214[3]);
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0320();
    sub_10005956C();
    sub_1001D0210();
    v216 = *(v212 + 8);
    v216(v211, v213);
    if (*(v0 + 1128))
    {
      v217 = *(v0 + 1120);
      if (qword_1002276F8 != -1)
      {
        swift_once();
      }

      v218 = *(v0 + 1520);
      v219 = *(v0 + 1496);
      v220 = *(v0 + 1472);
      v221 = sub_10003A37C(v220, qword_100242E68);
      (v509)(v219, v221, v220);
      sub_1001D0EF0();
    }

    v222 = *(v0 + 1456);
    v223 = *(v0 + 1424);
    v224 = (*(v0 + 1248) + *(v0 + 1784));
    v225 = v224[4];
    sub_100024DC8(v224, v224[3]);
    sub_1001D0380();
    sub_1001D0210();
    v216(v222, v223);
    if (*(v0 + 1112))
    {
      v226 = *(v0 + 1104);
      if (qword_100227718 != -1)
      {
        swift_once();
      }

      v227 = *(v0 + 1520);
      v228 = *(v0 + 1496);
      v229 = *(v0 + 1472);
      v230 = sub_10003A37C(v229, qword_100242EC8);
      (v509)(v228, v230, v229);
      sub_1001D0EF0();
    }

    v231 = *(v0 + 1448);
    v232 = *(v0 + 1424);
    v233 = (*(v0 + 1248) + *(v0 + 1784));
    v234 = v233[4];
    sub_100024DC8(v233, v233[3]);
    sub_1001D0470();
    sub_1001D0210();
    v216(v231, v232);
    if (*(v0 + 1080))
    {
      v235 = *(v0 + 1072);
      if (qword_100227730 != -1)
      {
        swift_once();
      }

      v236 = *(v0 + 1520);
      v237 = *(v0 + 1496);
      v238 = *(v0 + 1472);
      v239 = sub_10003A37C(v238, qword_100242F10);
      (v509)(v237, v239, v238);
      sub_1001D0EF0();
    }

    v240 = *(v0 + 1248);
    if (*(v240 + *(*v240 + 328)) == 1)
    {
      if (qword_100227720 != -1)
      {
        swift_once();
      }

      v241 = *(v0 + 1520);
      v242 = *(v0 + 1496);
      v243 = *(v0 + 1472);
      v244 = sub_10003A37C(v243, qword_100242EE0);
      (v509)(v242, v244, v243);
      sub_1001D0EF0();
      v240 = *(v0 + 1248);
    }

    v245 = *(v0 + 1440);
    v246 = *(v0 + 1424);
    v247 = (v240 + *(v0 + 1784));
    v248 = v247[4];
    sub_100024DC8(v247, v247[3]);
    sub_1001D0340();
    sub_1001D0210();
    v216(v245, v246);
    if (*(v0 + 1096))
    {
      v249 = *(v0 + 1088);
      if (qword_100227700 != -1)
      {
        swift_once();
      }

      v250 = *(v0 + 1520);
      v251 = *(v0 + 1496);
      v252 = *(v0 + 1472);
      v253 = sub_10003A37C(v252, qword_100242E80);
      (v509)(v251, v253, v252);
      sub_1001D0EF0();
      if (qword_100227708 != -1)
      {
        swift_once();
      }

      v254 = *(v0 + 1520);
      v255 = *(v0 + 1496);
      v256 = *(v0 + 1472);
      v257 = sub_10003A37C(v256, qword_100242E98);
      (v509)(v255, v257, v256);
      sub_1001D0EF0();
    }

    v258 = *(v0 + 1776);
    v259 = *(v0 + 1768);
    v260 = *(v0 + 1632);
    v261 = *(v0 + 1624);
    v262 = *(v0 + 1616);
    v263 = *(v0 + 1608);
    v264 = *(v0 + 1248);
    sub_1001CFD50();
    (*(v262 + 16))(v261, v260, v263);

    v265 = sub_1001D0E50();
    v266 = sub_1001D1E00();

    if (os_log_type_enabled(v265, v266))
    {
      v267 = *(v0 + 1768);
      v268 = *(v0 + 1760);
      v269 = *(v0 + 1624);
      v270 = *(v0 + 1616);
      v271 = *(v0 + 1608);
      v272 = swift_slowAlloc();
      v514 = swift_slowAlloc();
      *v272 = 136315394;
      *(v272 + 4) = sub_1000954E0(v268, v267, &v514);
      *(v272 + 12) = 2080;
      sub_10008A830(&qword_100227A40, &type metadata accessor for Date);
      v273 = sub_1001D23A0();
      v275 = v274;
      (*(v270 + 8))(v269, v271);
      v276 = sub_1000954E0(v273, v275, &v514);

      *(v272 + 14) = v276;
      _os_log_impl(&_mh_execute_header, v265, v266, "%s fetchTime: %s", v272, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v277 = *(v0 + 1624);
      v278 = *(v0 + 1616);
      v279 = *(v0 + 1608);

      (*(v278 + 8))(v277, v279);
    }

    v280 = *(v0 + 1576);
    v281 = *(v0 + 1248);
    v282 = (v281 + *(v0 + 1792));
    *(v0 + 1920) = sub_1001D1210();
    *(v0 + 1928) = sub_1001D1270();
    *(v0 + 1936) = sub_1001D12D0();
    *(v0 + 1944) = sub_1001D0F30();
    *(v0 + 1952) = sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    v284 = v282[1];
    v283 = v282[2];
    *(v0 + 16) = *v282;
    *(v0 + 32) = v284;
    *(v0 + 48) = v283;
    v285 = v282[6];
    v287 = v282[3];
    v286 = v282[4];
    *(v0 + 96) = v282[5];
    *(v0 + 112) = v285;
    *(v0 + 64) = v287;
    *(v0 + 80) = v286;
    v288 = v282[10];
    v290 = v282[7];
    v289 = v282[8];
    *(v0 + 160) = v282[9];
    *(v0 + 176) = v288;
    *(v0 + 128) = v290;
    *(v0 + 144) = v289;
    v291 = (v281 + *(*v281 + 296));
    *(v0 + 1960) = *v291;
    *(v0 + 1968) = v291[1];
    v292 = enum case for TC2Environment.production(_:);
    *(v0 + 2080) = enum case for TC2Environment.production(_:);
    *(v0 + 2084) = enum case for NWEndpoint.url(_:);
    *(v0 + 2088) = enum case for NWActivity.CompletionReason.success(_:);
    if (*(v0 + 2093))
    {
      v293 = 0;
    }

    else
    {
      v293 = *(v0 + 1848);
    }

    *(v0 + 1984) = &_swiftEmptyArrayStorage;
    *(v0 + 1976) = v293;
    v294 = *(v0 + 1752);
    v295 = *(v0 + 1600);
    v296 = *(v0 + 1592);
    v297 = *(v0 + 1568);
    v298 = *(v0 + 1416);
    v299 = *(v0 + 1368);
    v300 = v281 + *(v0 + 1744);
    *(v0 + 1056) = sub_1001D23A0();
    *(v0 + 1064) = v301;
    v519._countAndFlagsBits = 35;
    v519._object = 0xE100000000000000;
    sub_1001D18B0(v519);
    v499 = v293;
    *(v0 + 1184) = v293;
    v520._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v520);

    v521._countAndFlagsBits = 58;
    v521._object = 0xE100000000000000;
    sub_1001D18B0(v521);
    v302 = *(v0 + 1056);
    *(v0 + 1992) = v302;
    v303 = *(v0 + 1064);
    *(v0 + 2000) = v303;
    sub_1001CFD90();
    (*(v280 + 16))(v296, v295, v297);
    v304 = (*(v280 + 88))(v296, v297);
    v305 = *(v0 + 1896);
    v306 = *(v0 + 1888);
    if (v304 == v292)
    {
      v504 = v302;
      v511 = *(v0 + 1776);
      v307 = *(v0 + 1416);
      v308 = *(v0 + 1408);
      v309 = *(v0 + 1400);
      v310 = *(v0 + 1392);
      v311 = *(v0 + 1368);
      v312 = *(v0 + 1248);
      sub_1001CFD90();
      v306(v309, v307, v311);
      v306(v310, v308, v311);

      v313 = sub_1001D0E50();
      v314 = sub_1001D1E00();

      if (os_log_type_enabled(v313, v314))
      {
        v315 = *(v0 + 1752);
        v493 = v314;
        v316 = *(v0 + 1400);
        v486 = *(v0 + 1392);
        v317 = *(v0 + 1376);
        v318 = *(v0 + 1368);
        v319 = swift_slowAlloc();
        v514 = swift_slowAlloc();
        *v319 = 136315650;
        *(v319 + 4) = sub_1000954E0(v504, v303, &v514);
        *(v319 + 12) = 2080;
        v320 = sub_1001D23A0();
        v322 = v321;
        v323 = *(v317 + 8);
        v323(v316, v318);
        v324 = sub_1000954E0(v320, v322, &v514);

        *(v319 + 14) = v324;
        *(v319 + 22) = 2080;
        v325 = sub_1001D23A0();
        v327 = v326;
        v323(v486, v318);
        v328 = sub_1000954E0(v325, v327, &v514);

        *(v319 + 24) = v328;
        _os_log_impl(&_mh_execute_header, v313, v493, "%s Request: %s RequestIDForReporting: %s", v319, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v332 = *(v0 + 1400);
        v333 = *(v0 + 1392);
        v334 = *(v0 + 1376);
        v335 = *(v0 + 1368);

        v336 = *(v334 + 8);
        v336(v333, v335);
        v336(v332, v335);
      }
    }

    else
    {
      v329 = *(v0 + 1592);
      v330 = *(v0 + 1576);
      v331 = *(v0 + 1568);
      v306(*(v0 + 1408), *(v0 + 1416), *(v0 + 1368));
      (*(v330 + 8))(v329, v331);
    }

    if (qword_1002276A8 != -1)
    {
      swift_once();
    }

    v337 = *(v0 + 1912);
    v338 = *(v0 + 1904);
    v512 = *(v0 + 1776);
    v339 = *(v0 + 1752);
    v340 = *(v0 + 1520);
    v341 = *(v0 + 1496);
    v342 = *(v0 + 1472);
    v343 = *(v0 + 1416);
    v344 = *(v0 + 1368);
    v345 = *(v0 + 1248);
    v346 = sub_10003A37C(v342, qword_100242D78);
    v338(v341, v346, v342);
    sub_1001CFD70();
    sub_1001D0EF0();
    *(v0 + 1136) = 0;
    *(v0 + 1144) = 0;
    *(v0 + 1152) = 0;
    *(v0 + 1160) = &_swiftEmptyArrayStorage;
    *(v0 + 1168) = sub_1001D23A0();
    *(v0 + 1176) = v347;
    v522._countAndFlagsBits = 58;
    v522._object = 0xE100000000000000;
    sub_1001D18B0(v522);
    v348 = *(v0 + 1168);
    *(v0 + 2008) = v348;
    v349 = *(v0 + 1176);
    *(v0 + 2016) = v349;

    v350 = sub_1001D0E50();
    v351 = sub_1001D1E00();
    v509 = v349;

    v494 = v348;
    if (os_log_type_enabled(v350, v351))
    {
      v352 = swift_slowAlloc();
      v353 = swift_slowAlloc();
      v514 = v353;
      *v352 = 136315138;
      *(v352 + 4) = sub_1000954E0(v348, v509, &v514);
      _os_log_impl(&_mh_execute_header, v350, v351, "%s executing prefetch request", v352, 0xCu);
      sub_100011CF0(v353);
    }

    v505 = *(v0 + 1928);
    v354 = *(v0 + 1920);
    v355 = *(v0 + 1584);
    v356 = *(v0 + 1328);
    v357 = *(v0 + 1320);
    v358 = *(v0 + 1312);
    v359 = (*(v0 + 1248) + *(v0 + 1784));
    v360 = v359[3];
    v361 = v359[4];
    sub_100024DC8(v359, v360);
    *(v0 + 1008) = &type metadata for SystemInfo;
    *(v0 + 1016) = &protocol witness table for SystemInfo;
    v362 = swift_allocObject();
    *(v0 + 984) = v362;
    v363 = *(v0 + 160);
    v362[9] = *(v0 + 144);
    v362[10] = v363;
    v362[11] = *(v0 + 176);
    v364 = *(v0 + 96);
    v362[5] = *(v0 + 80);
    v362[6] = v364;
    v365 = *(v0 + 128);
    v362[7] = *(v0 + 112);
    v362[8] = v365;
    v366 = *(v0 + 32);
    v362[1] = *(v0 + 16);
    v362[2] = v366;
    v367 = *(v0 + 64);
    v362[3] = *(v0 + 48);
    v362[4] = v367;
    sub_1000884D8(v0 + 16, v0 + 192);
    Configuration.environment(systemInfo:)((v0 + 984), v360, v361, v355);
    sub_100011CF0((v0 + 984));
    v368 = v359[4];
    sub_100024DC8(v359, v359[3]);
    sub_1001D0400();
    sub_1001D0210();
    (*(v357 + 8))(v356, v358);
    v369 = *(v0 + 2092);
    LOBYTE(v359) = sub_1001D0280();
    *(v0 + 2024) = sub_1001D1200();
    v370 = sub_1001D1240();
    v371 = *(v370 + 48);
    v372 = *(v370 + 52);
    swift_allocObject();
    v373 = sub_1001D1230();
    v374 = sub_1001D1260();
    if (v359)
    {
      sub_1001D11F0();
      nw_parameters_set_privacy_proxy_fail_closed();
      swift_unknownObjectRelease();
    }

    if (*(v0 + 1968))
    {
      v375 = *(v0 + 1960);
      v376 = *(v0 + 1968);

      sub_1001D11E0();
    }

    if (v369)
    {
      v377 = *(v0 + 1952);
      v378 = sub_1001D1220();
      *(v0 + 928) = sub_100096568;
      *(v0 + 936) = 0;
      *(v0 + 896) = _NSConcreteStackBlock;
      *(v0 + 904) = 1107296256;
      *(v0 + 912) = sub_100059234;
      *(v0 + 920) = &unk_10021E990;
      v379 = _Block_copy((v0 + 896));
      v380 = sub_1001D1E40();
      sec_protocol_options_set_verify_block(v378, v379, v380);

      _Block_release(v379);
      swift_unknownObjectRelease();
    }

    v381 = *(v0 + 1936);
    sub_1001D11D0();
    sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
    v382 = swift_allocObject();
    *(v382 + 16) = xmmword_1001D54B0;
    *(v382 + 32) = v374;
    *(v382 + 40) = v373;

    sub_1001D11C0();

    v383 = sub_1001D12C0();
    sub_1001D11D0();

    v477 = sub_1001D11B0();
    if (!(*v384 >> 62))
    {
      break;
    }

    if (*v384 < 0)
    {
      v420 = *v384;
    }

    if ((sub_1001D2190() & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    swift_once();
LABEL_80:
    v185 = *(v0 + 1488);
    v186 = *(v0 + 1472);
    v187 = sub_10003A37C(v186, qword_100242E08);
    v172 = v509;
    (v509)(v185, v187, v186);
    v188 = [objc_opt_self() mainBundle];
    v189 = [v188 bundleIdentifier];

    if (v189)
    {
      sub_1001D17D0();
    }

    v199 = *(v0 + 1520);
    v200 = *(v0 + 1488);
    sub_1001D0EF0();
    if (qword_1002276D0 != -1)
    {
      swift_once();
    }

    v201 = *(v0 + 1520);
    v202 = *(v0 + 1496);
    v203 = *(v0 + 1472);
    v204 = sub_10003A37C(v203, qword_100242DF0);
    (v509)(v202, v204, v203);
  }

  v428 = *(v0 + 2084);
  v443 = *(v0 + 1952);
  v431 = *(v0 + 1944);
  v385 = *(v0 + 1824);
  v386 = *(v0 + 1816);
  v452 = *(v0 + 1736);
  v455 = *(v0 + 1840);
  v387 = *(v0 + 1584);
  v449 = *(v0 + 1520);
  v388 = *(v0 + 1304);
  v458 = *(v0 + 1296);
  v461 = *(v0 + 1632);
  v389 = *(v0 + 1288);
  v390 = *(v0 + 1280);
  v391 = v386 == 0;
  if (!v386)
  {
    v386 = 0xE000000000000000;
  }

  v437 = *(v0 + 1248);
  v440 = v386;
  if (v391)
  {
    v385 = 0;
  }

  v434 = v385;
  v446 = *(v0 + 1408);
  sub_10005A0B8(0, 0, v383);

  v477(v0 + 1024, 0);

  sub_1001D02C0();
  (*(v389 + 104))(v388, v428, v390);
  *(v0 + 2032) = sub_1001D0F10();
  *(v0 + 2040) = sub_1001D1E40();
  v392 = swift_task_alloc();
  *(v0 + 2048) = v392;
  v392[1].i64[0] = v437;
  v392[1].i64[1] = v494;
  v392[2].i64[0] = v509;
  v392[2].i64[1] = v434;
  v392[3].i64[0] = v440;
  v392[3].i64[1] = v455;
  v392[4].i64[0] = v387;
  v392[4].i64[1] = v449;
  v392[5].i64[0] = v452;
  v392[5].i64[1] = v499;
  v392[6].i64[0] = v0 + 1136;
  v392[6].i64[1] = v0 + 1152;
  v392[7] = vextq_s8(v446, v446, 8uLL);
  v392[8].i64[0] = v461;
  (*(v389 + 16))(v458, v388, v390);
  v393 = sub_1001D11A0();
  v394 = *(v393 + 48);
  v395 = *(v393 + 52);
  swift_allocObject();

  *(v0 + 2056) = sub_1001D1140();

  sub_1001D1030();
  v396 = swift_task_alloc();
  *(v0 + 2064) = v396;
  *v396 = v0;
  v396[1] = sub_100070A34;
  v397 = *(v0 + 1416);

  return sub_100135C64();
}

uint64_t sub_10006E4FC()
{
  v1 = *(v0 + 1880);
  *(v0 + 2094) = sub_1000343D0(*(v0 + 1736), *(v0 + 1856), *(v0 + 1648));

  return _swift_task_switch(sub_10006E578, 0, 0);
}

uint64_t sub_10006E578()
{
  v398 = v0;
  if (*(v0 + 2094) == 1)
  {
    v1 = *(v0 + 1776);
    v2 = *(v0 + 1768);
    v3 = *(v0 + 1248);
    if (*(v0 + 1816))
    {
      v4 = *(v0 + 1816);
    }

    v5 = sub_1001D0E50();
    v6 = sub_1001D1DE0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 1768);
      v8 = *(v0 + 1760);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v397[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000954E0(v8, v7, v397);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s not prefetching, attestations exist for workload", v9, 0xCu);
      sub_100011CF0(v10);
    }

    v11 = *(v0 + 1808);
    v12 = *(v0 + 1800);
    v382 = *(v0 + 1872);
    v389 = *(v0 + 1776);
    v13 = *(v0 + 1768);
    v364 = *(v0 + 1736);
    v369 = *(v0 + 1864);
    v14 = *(v0 + 1728);
    v15 = *(v0 + 1720);
    v16 = *(v0 + 1648);
    v17 = *(v0 + 1608);
    v375 = *(v0 + 1248);
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v12, v11);
    v369(v16, v17);
    (*(v14 + 8))(v364, v15);

    v18 = sub_1001D0E50();
    v19 = sub_1001D1E00();
    goto LABEL_92;
  }

  v20 = *(v0 + 1872);
  (*(v0 + 1864))(*(v0 + 1648), *(v0 + 1608));
  v21 = *(v0 + 1600);
  v376 = *(v0 + 1560);
  v22 = *(v0 + 1552);
  v383 = *(v0 + 1544);
  v23 = *(v0 + 1536);
  v365 = *(v0 + 1744);
  v370 = *(v0 + 1528);
  v24 = *(v0 + 1376);
  v25 = *(v0 + 1248);
  v26 = (v25 + *(v0 + 1784));
  v27 = (v25 + *(v0 + 1792));
  v28 = v26[3];
  v358 = v26[4];
  v361 = *(v0 + 1368);
  sub_100024DC8(v26, v28);
  *(v0 + 968) = &type metadata for SystemInfo;
  *(v0 + 976) = &protocol witness table for SystemInfo;
  v29 = swift_allocObject();
  *(v0 + 944) = v29;
  v31 = v27[1];
  v30 = v27[2];
  *(v0 + 368) = *v27;
  *(v0 + 384) = v31;
  *(v0 + 400) = v30;
  v32 = v27[6];
  v34 = v27[3];
  v33 = v27[4];
  *(v0 + 448) = v27[5];
  *(v0 + 464) = v32;
  *(v0 + 416) = v34;
  *(v0 + 432) = v33;
  v35 = v27[10];
  v37 = v27[7];
  v36 = v27[8];
  *(v0 + 512) = v27[9];
  *(v0 + 528) = v35;
  *(v0 + 480) = v37;
  *(v0 + 496) = v36;
  v393 = *(v0 + 512);
  v38 = *(v0 + 520);
  v40 = v27[1];
  v39 = v27[2];
  v29[1] = *v27;
  v29[2] = v40;
  v29[3] = v39;
  v41 = v27[6];
  v43 = v27[3];
  v42 = v27[4];
  v29[6] = v27[5];
  v29[7] = v41;
  v29[4] = v43;
  v29[5] = v42;
  v44 = v27[10];
  v46 = v27[7];
  v45 = v27[8];
  v29[10] = v27[9];
  v29[11] = v44;
  v29[8] = v46;
  v29[9] = v45;
  sub_1000884D8(v0 + 368, v0 + 544);

  Configuration.environment(systemInfo:)((v0 + 944), v28, v358, v21);
  sub_100011CF0((v0 + 944));
  v47 = *(*v25 + 280);
  v48 = (v23 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
  v49 = *(v24 + 16);
  *(v0 + 1888) = v49;
  *(v0 + 1896) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49(v23, v25 + v365, v361);
  *v48 = sub_1001D02B0();
  v48[1] = v50;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v22 + 8))(v376, v383);
  sub_100011AC0(&qword_1002292D0, &qword_1001D6440);
  v51 = *(sub_1001D13D0() - 8);
  v52 = *(v51 + 72);
  v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1001D62F0;
  v384 = v54;
  if (qword_1002276B0 != -1)
  {
    swift_once();
  }

  v55 = *(v0 + 1496);
  v56 = *(v0 + 1480);
  v57 = *(v0 + 1472);
  v58 = sub_10003A37C(v57, qword_100242D90);
  v59 = *(v56 + 16);
  *(v0 + 1904) = v59;
  *(v0 + 1912) = (v56 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59(v55, v58, v57);
  sub_1001D13A0();
  if (qword_1002276B8 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 1736);
  v61 = *(v0 + 1496);
  v62 = *(v0 + 1472);
  v63 = sub_10003A37C(v62, qword_100242DA8);
  v59(v61, v63, v62);
  sub_1001D0890();
  sub_1001D13A0();
  if (qword_1002276C0 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 1824);
  v65 = *(v0 + 1816);
  v66 = *(v0 + 1504);
  v67 = *(v0 + 1496);
  v68 = *(v0 + 1472);
  v371 = *(v0 + 1520);
  v377 = *(v0 + 1248);
  v69 = sub_10003A37C(v68, qword_100242DC0);
  v390 = v59;
  v59(v67, v69, v68);

  sub_1001D13A0();
  sub_1001D1330();
  sub_1001D13A0();
  sub_1001D1370();
  sub_1001D13A0();
  *(v0 + 1192) = v384;
  sub_10008A830(&qword_1002292D8, &type metadata accessor for HTTPFields);
  sub_1001D1D80();
  sub_100011AC0(&qword_1002292E0, &unk_1001D6448);
  sub_100024B78(&qword_1002292E8, &qword_1002292E0, &unk_1001D6448);
  sub_1001D1D50();
  if (*(v377 + *(*v377 + 288)) != 1)
  {
    if (qword_1002276D8 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_102;
  }

  v70 = *(v0 + 1248);
  v71 = (v70 + *(*v377 + 296));
  if (!v71[1])
  {
    v90 = *(v0 + 1776);
    v91 = *(v0 + 1768);
    if (*(v0 + 1816))
    {
      v92 = *(v0 + 1816);
    }

    v93 = sub_1001D0E50();
    v94 = sub_1001D1DE0();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = *(v0 + 1768);
      v96 = *(v0 + 1760);
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v397[0] = v98;
      *v97 = 136315138;
      *(v97 + 4) = sub_1000954E0(v96, v95, v397);
      _os_log_impl(&_mh_execute_header, v93, v94, "%s not prefetching, missing bundleIdentifier", v97, 0xCu);
      sub_100011CF0(v98);
    }

    goto LABEL_91;
  }

  v72 = (v70 + *(*v377 + 304));
  if (!v72[1])
  {
    v299 = *(v0 + 1776);
    v300 = *(v0 + 1768);
    if (*(v0 + 1816))
    {
      v301 = *(v0 + 1816);
    }

    v93 = sub_1001D0E50();
    v302 = sub_1001D1DE0();

    if (os_log_type_enabled(v93, v302))
    {
      v303 = *(v0 + 1768);
      v304 = *(v0 + 1760);
      v305 = swift_slowAlloc();
      v306 = swift_slowAlloc();
      v397[0] = v306;
      *v305 = 136315138;
      *(v305 + 4) = sub_1000954E0(v304, v303, v397);
      _os_log_impl(&_mh_execute_header, v93, v302, "%s not prefetching, missing featureIdentifier", v305, 0xCu);
      sub_100011CF0(v306);
    }

LABEL_91:

    v359 = *(v0 + 1808);
    v307 = *(v0 + 1800);
    v308 = *(v0 + 1768);
    v387 = *(v0 + 1736);
    v391 = *(v0 + 1776);
    v309 = *(v0 + 1728);
    v380 = *(v0 + 1720);
    v310 = *(v0 + 1600);
    v311 = *(v0 + 1576);
    v312 = *(v0 + 1568);
    v367 = *(v0 + 1520);
    v313 = *(v0 + 1512);
    v362 = *(v0 + 1504);
    v373 = *(v0 + 1248);
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v307, v359);
    (*(v311 + 8))(v310, v312);
    (*(v313 + 8))(v367, v362);
    (*(v309 + 8))(v387, v380);

    v18 = sub_1001D0E50();
    v19 = sub_1001D1E00();
LABEL_92:

    if (os_log_type_enabled(v18, v19))
    {
      v314 = *(v0 + 1768);
      v315 = *(v0 + 1760);
      v316 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      v397[0] = v317;
      *v316 = 136315138;
      *(v316 + 4) = sub_1000954E0(v315, v314, v397);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s finished batch of prefetch requests", v316, 0xCu);
      sub_100011CF0(v317);
    }

    else
    {
      v318 = *(v0 + 1768);
    }

    v319 = *(v0 + 1736);
    v320 = *(v0 + 1712);
    v321 = *(v0 + 1704);
    v322 = *(v0 + 1696);
    v323 = *(v0 + 1672);
    v324 = *(v0 + 1648);
    v325 = *(v0 + 1640);
    v326 = *(v0 + 1632);
    v327 = *(v0 + 1624);
    v328 = *(v0 + 1600);
    v331 = *(v0 + 1592);
    v332 = *(v0 + 1584);
    v333 = *(v0 + 1560);
    v335 = *(v0 + 1536);
    v337 = *(v0 + 1520);
    v339 = *(v0 + 1496);
    v341 = *(v0 + 1488);
    v343 = *(v0 + 1464);
    v345 = *(v0 + 1456);
    v347 = *(v0 + 1448);
    v349 = *(v0 + 1440);
    v351 = *(v0 + 1416);
    v353 = *(v0 + 1408);
    v355 = *(v0 + 1400);
    v357 = *(v0 + 1392);
    v360 = *(v0 + 1384);
    v363 = *(v0 + 1360);
    v368 = *(v0 + 1352);
    v374 = *(v0 + 1328);
    v381 = *(v0 + 1304);
    v388 = *(v0 + 1296);
    v392 = *(v0 + 1272);

    v329 = *(v0 + 8);

    return v329();
  }

  v73 = *v71;
  v74 = *v72;
  v75 = qword_1002276D8;

  if (v75 != -1)
  {
    swift_once();
  }

  v76 = *(v0 + 1520);
  v77 = *(v0 + 1496);
  v78 = *(v0 + 1472);
  v79 = sub_10003A37C(v78, qword_100242E08);
  v80 = v59;
  v59(v77, v79, v78);
  sub_1001D0EF0();
  if (qword_1002276D0 != -1)
  {
    swift_once();
  }

  v81 = *(v0 + 1520);
  v82 = *(v0 + 1496);
  v83 = *(v0 + 1472);
  v84 = sub_10003A37C(v83, qword_100242DF0);
  v59(v82, v84, v83);
  while (1)
  {
    sub_1001D0EF0();
    v105 = [objc_opt_self() automatedDeviceGroup];
    if (v105)
    {
      v106 = v105;
      sub_1001D17D0();

      if (qword_1002276E8 != -1)
      {
        swift_once();
      }

      v107 = *(v0 + 1520);
      v108 = *(v0 + 1496);
      v109 = *(v0 + 1472);
      v110 = sub_10003A37C(v109, qword_100242E38);
      v80(v108, v110, v109);
      sub_1001D0EF0();
    }

    v111 = *(v0 + 1464);
    v112 = *(v0 + 1432);
    v113 = *(v0 + 1424);
    v114 = (*(v0 + 1248) + *(v0 + 1784));
    v115 = v114[4];
    sub_100024DC8(v114, v114[3]);
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0320();
    sub_10005956C();
    sub_1001D0210();
    v116 = *(v112 + 8);
    v116(v111, v113);
    if (*(v0 + 1128))
    {
      v117 = *(v0 + 1120);
      if (qword_1002276F8 != -1)
      {
        swift_once();
      }

      v118 = *(v0 + 1520);
      v119 = *(v0 + 1496);
      v120 = *(v0 + 1472);
      v121 = sub_10003A37C(v120, qword_100242E68);
      v390(v119, v121, v120);
      sub_1001D0EF0();
    }

    v122 = *(v0 + 1456);
    v123 = *(v0 + 1424);
    v124 = (*(v0 + 1248) + *(v0 + 1784));
    v125 = v124[4];
    sub_100024DC8(v124, v124[3]);
    sub_1001D0380();
    sub_1001D0210();
    v116(v122, v123);
    if (*(v0 + 1112))
    {
      v126 = *(v0 + 1104);
      if (qword_100227718 != -1)
      {
        swift_once();
      }

      v127 = *(v0 + 1520);
      v128 = *(v0 + 1496);
      v129 = *(v0 + 1472);
      v130 = sub_10003A37C(v129, qword_100242EC8);
      v390(v128, v130, v129);
      sub_1001D0EF0();
    }

    v131 = *(v0 + 1448);
    v132 = *(v0 + 1424);
    v133 = (*(v0 + 1248) + *(v0 + 1784));
    v134 = v133[4];
    sub_100024DC8(v133, v133[3]);
    sub_1001D0470();
    sub_1001D0210();
    v116(v131, v132);
    if (*(v0 + 1080))
    {
      v135 = *(v0 + 1072);
      if (qword_100227730 != -1)
      {
        swift_once();
      }

      v136 = *(v0 + 1520);
      v137 = *(v0 + 1496);
      v138 = *(v0 + 1472);
      v139 = sub_10003A37C(v138, qword_100242F10);
      v390(v137, v139, v138);
      sub_1001D0EF0();
    }

    v140 = *(v0 + 1248);
    if (*(v140 + *(*v140 + 328)) == 1)
    {
      if (qword_100227720 != -1)
      {
        swift_once();
      }

      v141 = *(v0 + 1520);
      v142 = *(v0 + 1496);
      v143 = *(v0 + 1472);
      v144 = sub_10003A37C(v143, qword_100242EE0);
      v390(v142, v144, v143);
      sub_1001D0EF0();
      v140 = *(v0 + 1248);
    }

    v145 = *(v0 + 1440);
    v146 = *(v0 + 1424);
    v147 = (v140 + *(v0 + 1784));
    v148 = v147[4];
    sub_100024DC8(v147, v147[3]);
    sub_1001D0340();
    sub_1001D0210();
    v116(v145, v146);
    if (*(v0 + 1096))
    {
      v149 = *(v0 + 1088);
      if (qword_100227700 != -1)
      {
        swift_once();
      }

      v150 = *(v0 + 1520);
      v151 = *(v0 + 1496);
      v152 = *(v0 + 1472);
      v153 = sub_10003A37C(v152, qword_100242E80);
      v390(v151, v153, v152);
      sub_1001D0EF0();
      if (qword_100227708 != -1)
      {
        swift_once();
      }

      v154 = *(v0 + 1520);
      v155 = *(v0 + 1496);
      v156 = *(v0 + 1472);
      v157 = sub_10003A37C(v156, qword_100242E98);
      v390(v155, v157, v156);
      sub_1001D0EF0();
    }

    v158 = *(v0 + 1776);
    v159 = *(v0 + 1768);
    v160 = *(v0 + 1632);
    v161 = *(v0 + 1624);
    v162 = *(v0 + 1616);
    v163 = *(v0 + 1608);
    v164 = *(v0 + 1248);
    sub_1001CFD50();
    (*(v162 + 16))(v161, v160, v163);

    v165 = sub_1001D0E50();
    v166 = sub_1001D1E00();

    if (os_log_type_enabled(v165, v166))
    {
      v167 = *(v0 + 1768);
      v168 = *(v0 + 1760);
      v169 = *(v0 + 1624);
      v170 = *(v0 + 1616);
      v171 = *(v0 + 1608);
      v172 = swift_slowAlloc();
      v397[0] = swift_slowAlloc();
      *v172 = 136315394;
      *(v172 + 4) = sub_1000954E0(v168, v167, v397);
      *(v172 + 12) = 2080;
      sub_10008A830(&qword_100227A40, &type metadata accessor for Date);
      v173 = sub_1001D23A0();
      v175 = v174;
      (*(v170 + 8))(v169, v171);
      v176 = sub_1000954E0(v173, v175, v397);

      *(v172 + 14) = v176;
      _os_log_impl(&_mh_execute_header, v165, v166, "%s fetchTime: %s", v172, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v177 = *(v0 + 1624);
      v178 = *(v0 + 1616);
      v179 = *(v0 + 1608);

      (*(v178 + 8))(v177, v179);
    }

    v180 = *(v0 + 1576);
    v181 = *(v0 + 1248);
    v182 = (v181 + *(v0 + 1792));
    *(v0 + 1920) = sub_1001D1210();
    *(v0 + 1928) = sub_1001D1270();
    *(v0 + 1936) = sub_1001D12D0();
    *(v0 + 1944) = sub_1001D0F30();
    *(v0 + 1952) = sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    v184 = v182[1];
    v183 = v182[2];
    *(v0 + 16) = *v182;
    *(v0 + 32) = v184;
    *(v0 + 48) = v183;
    v185 = v182[6];
    v187 = v182[3];
    v186 = v182[4];
    *(v0 + 96) = v182[5];
    *(v0 + 112) = v185;
    *(v0 + 64) = v187;
    *(v0 + 80) = v186;
    v188 = v182[10];
    v190 = v182[7];
    v189 = v182[8];
    *(v0 + 160) = v182[9];
    *(v0 + 176) = v188;
    *(v0 + 128) = v190;
    *(v0 + 144) = v189;
    v191 = (v181 + *(*v181 + 296));
    *(v0 + 1960) = *v191;
    *(v0 + 1968) = v191[1];
    v192 = enum case for TC2Environment.production(_:);
    *(v0 + 2080) = enum case for TC2Environment.production(_:);
    *(v0 + 2084) = enum case for NWEndpoint.url(_:);
    *(v0 + 2088) = enum case for NWActivity.CompletionReason.success(_:);
    if (*(v0 + 2093))
    {
      v193 = 0;
    }

    else
    {
      v193 = *(v0 + 1848);
    }

    *(v0 + 1984) = &_swiftEmptyArrayStorage;
    *(v0 + 1976) = v193;
    v194 = *(v0 + 1752);
    v195 = *(v0 + 1600);
    v196 = *(v0 + 1592);
    v197 = *(v0 + 1568);
    v198 = *(v0 + 1416);
    v199 = *(v0 + 1368);
    v200 = v181 + *(v0 + 1744);
    *(v0 + 1056) = sub_1001D23A0();
    *(v0 + 1064) = v201;
    v400._countAndFlagsBits = 35;
    v400._object = 0xE100000000000000;
    sub_1001D18B0(v400);
    v390 = v193;
    *(v0 + 1184) = v193;
    v401._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v401);

    v402._countAndFlagsBits = 58;
    v402._object = 0xE100000000000000;
    sub_1001D18B0(v402);
    v202 = *(v0 + 1056);
    *(v0 + 1992) = v202;
    v203 = *(v0 + 1064);
    *(v0 + 2000) = v203;
    sub_1001CFD90();
    (*(v180 + 16))(v196, v195, v197);
    v204 = (*(v180 + 88))(v196, v197);
    v205 = *(v0 + 1896);
    v206 = *(v0 + 1888);
    if (v204 == v192)
    {
      v385 = v202;
      v394 = *(v0 + 1776);
      v207 = *(v0 + 1416);
      v208 = *(v0 + 1408);
      v209 = *(v0 + 1400);
      v210 = *(v0 + 1392);
      v211 = *(v0 + 1368);
      v212 = *(v0 + 1248);
      sub_1001CFD90();
      v206(v209, v207, v211);
      v206(v210, v208, v211);

      v213 = sub_1001D0E50();
      v214 = sub_1001D1E00();

      if (os_log_type_enabled(v213, v214))
      {
        v215 = *(v0 + 1752);
        v378 = v214;
        v216 = *(v0 + 1400);
        v372 = *(v0 + 1392);
        v217 = *(v0 + 1376);
        v218 = *(v0 + 1368);
        v219 = swift_slowAlloc();
        v397[0] = swift_slowAlloc();
        *v219 = 136315650;
        *(v219 + 4) = sub_1000954E0(v385, v203, v397);
        *(v219 + 12) = 2080;
        v220 = sub_1001D23A0();
        v222 = v221;
        v223 = *(v217 + 8);
        v223(v216, v218);
        v224 = sub_1000954E0(v220, v222, v397);

        *(v219 + 14) = v224;
        *(v219 + 22) = 2080;
        v225 = sub_1001D23A0();
        v227 = v226;
        v223(v372, v218);
        v228 = sub_1000954E0(v225, v227, v397);

        *(v219 + 24) = v228;
        _os_log_impl(&_mh_execute_header, v213, v378, "%s Request: %s RequestIDForReporting: %s", v219, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v232 = *(v0 + 1400);
        v233 = *(v0 + 1392);
        v234 = *(v0 + 1376);
        v235 = *(v0 + 1368);

        v236 = *(v234 + 8);
        v236(v233, v235);
        v236(v232, v235);
      }
    }

    else
    {
      v229 = *(v0 + 1592);
      v230 = *(v0 + 1576);
      v231 = *(v0 + 1568);
      v206(*(v0 + 1408), *(v0 + 1416), *(v0 + 1368));
      (*(v230 + 8))(v229, v231);
    }

    if (qword_1002276A8 != -1)
    {
      swift_once();
    }

    v237 = *(v0 + 1912);
    v238 = *(v0 + 1904);
    v395 = *(v0 + 1776);
    v239 = *(v0 + 1752);
    v240 = *(v0 + 1520);
    v241 = *(v0 + 1496);
    v242 = *(v0 + 1472);
    v243 = *(v0 + 1416);
    v244 = *(v0 + 1368);
    v245 = *(v0 + 1248);
    v246 = sub_10003A37C(v242, qword_100242D78);
    v238(v241, v246, v242);
    sub_1001CFD70();
    sub_1001D0EF0();
    *(v0 + 1136) = 0;
    *(v0 + 1144) = 0;
    *(v0 + 1152) = 0;
    *(v0 + 1160) = &_swiftEmptyArrayStorage;
    *(v0 + 1168) = sub_1001D23A0();
    *(v0 + 1176) = v247;
    v403._countAndFlagsBits = 58;
    v403._object = 0xE100000000000000;
    sub_1001D18B0(v403);
    v248 = *(v0 + 1168);
    *(v0 + 2008) = v248;
    v249 = *(v0 + 1176);
    *(v0 + 2016) = v249;

    v250 = sub_1001D0E50();
    v251 = sub_1001D1E00();

    v379 = v249;
    v386 = v248;
    if (os_log_type_enabled(v250, v251))
    {
      v252 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v397[0] = v253;
      *v252 = 136315138;
      *(v252 + 4) = sub_1000954E0(v248, v249, v397);
      _os_log_impl(&_mh_execute_header, v250, v251, "%s executing prefetch request", v252, 0xCu);
      sub_100011CF0(v253);
    }

    v396 = *(v0 + 1928);
    v254 = *(v0 + 1920);
    v255 = *(v0 + 1584);
    v256 = *(v0 + 1328);
    v257 = *(v0 + 1320);
    v258 = *(v0 + 1312);
    v259 = (*(v0 + 1248) + *(v0 + 1784));
    v260 = v259[3];
    v261 = v259[4];
    sub_100024DC8(v259, v260);
    *(v0 + 1008) = &type metadata for SystemInfo;
    *(v0 + 1016) = &protocol witness table for SystemInfo;
    v262 = swift_allocObject();
    *(v0 + 984) = v262;
    v263 = *(v0 + 160);
    v262[9] = *(v0 + 144);
    v262[10] = v263;
    v262[11] = *(v0 + 176);
    v264 = *(v0 + 96);
    v262[5] = *(v0 + 80);
    v262[6] = v264;
    v265 = *(v0 + 128);
    v262[7] = *(v0 + 112);
    v262[8] = v265;
    v266 = *(v0 + 32);
    v262[1] = *(v0 + 16);
    v262[2] = v266;
    v267 = *(v0 + 64);
    v262[3] = *(v0 + 48);
    v262[4] = v267;
    sub_1000884D8(v0 + 16, v0 + 192);
    Configuration.environment(systemInfo:)((v0 + 984), v260, v261, v255);
    sub_100011CF0((v0 + 984));
    v268 = v259[4];
    sub_100024DC8(v259, v259[3]);
    sub_1001D0400();
    sub_1001D0210();
    (*(v257 + 8))(v256, v258);
    v269 = *(v0 + 2092);
    LOBYTE(v259) = sub_1001D0280();
    *(v0 + 2024) = sub_1001D1200();
    v270 = sub_1001D1240();
    v271 = *(v270 + 48);
    v272 = *(v270 + 52);
    swift_allocObject();
    v273 = sub_1001D1230();
    v274 = sub_1001D1260();
    if (v259)
    {
      sub_1001D11F0();
      nw_parameters_set_privacy_proxy_fail_closed();
      swift_unknownObjectRelease();
    }

    if (*(v0 + 1968))
    {
      v275 = *(v0 + 1960);
      v276 = *(v0 + 1968);

      sub_1001D11E0();
    }

    if (v269)
    {
      v277 = *(v0 + 1952);
      v278 = sub_1001D1220();
      *(v0 + 928) = sub_100096568;
      *(v0 + 936) = 0;
      *(v0 + 896) = _NSConcreteStackBlock;
      *(v0 + 904) = 1107296256;
      *(v0 + 912) = sub_100059234;
      *(v0 + 920) = &unk_10021E990;
      v279 = _Block_copy((v0 + 896));
      v280 = sub_1001D1E40();
      sec_protocol_options_set_verify_block(v278, v279, v280);

      _Block_release(v279);
      swift_unknownObjectRelease();
    }

    v281 = *(v0 + 1936);
    sub_1001D11D0();
    sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
    v282 = swift_allocObject();
    *(v282 + 16) = xmmword_1001D54B0;
    *(v282 + 32) = v274;
    *(v282 + 40) = v273;

    sub_1001D11C0();

    v283 = sub_1001D12C0();
    sub_1001D11D0();

    v366 = sub_1001D11B0();
    if (!(*v284 >> 62))
    {
      break;
    }

    if (*v284 < 0)
    {
      v330 = *v284;
    }

    if ((sub_1001D2190() & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_102:
    swift_once();
LABEL_22:
    v85 = *(v0 + 1488);
    v86 = *(v0 + 1472);
    v87 = sub_10003A37C(v86, qword_100242E08);
    v80 = v390;
    v390(v85, v87, v86);
    v88 = [objc_opt_self() mainBundle];
    v89 = [v88 bundleIdentifier];

    if (v89)
    {
      sub_1001D17D0();
    }

    v99 = *(v0 + 1520);
    v100 = *(v0 + 1488);
    sub_1001D0EF0();
    if (qword_1002276D0 != -1)
    {
      swift_once();
    }

    v101 = *(v0 + 1520);
    v102 = *(v0 + 1496);
    v103 = *(v0 + 1472);
    v104 = sub_10003A37C(v103, qword_100242DF0);
    v390(v102, v104, v103);
  }

  v334 = *(v0 + 2084);
  v344 = *(v0 + 1952);
  v336 = *(v0 + 1944);
  v285 = *(v0 + 1824);
  v286 = *(v0 + 1816);
  v350 = *(v0 + 1736);
  v352 = *(v0 + 1840);
  v287 = *(v0 + 1584);
  v348 = *(v0 + 1520);
  v288 = *(v0 + 1304);
  v354 = *(v0 + 1296);
  v356 = *(v0 + 1632);
  v289 = *(v0 + 1288);
  v290 = *(v0 + 1280);
  v291 = v286 == 0;
  if (!v286)
  {
    v286 = 0xE000000000000000;
  }

  v340 = *(v0 + 1248);
  v342 = v286;
  if (v291)
  {
    v285 = 0;
  }

  v338 = v285;
  v346 = *(v0 + 1408);
  sub_10005A0B8(0, 0, v283);

  v366(v0 + 1024, 0);

  sub_1001D02C0();
  (*(v289 + 104))(v288, v334, v290);
  *(v0 + 2032) = sub_1001D0F10();
  *(v0 + 2040) = sub_1001D1E40();
  v292 = swift_task_alloc();
  *(v0 + 2048) = v292;
  v292[1].i64[0] = v340;
  v292[1].i64[1] = v386;
  v292[2].i64[0] = v379;
  v292[2].i64[1] = v338;
  v292[3].i64[0] = v342;
  v292[3].i64[1] = v352;
  v292[4].i64[0] = v287;
  v292[4].i64[1] = v348;
  v292[5].i64[0] = v350;
  v292[5].i64[1] = v390;
  v292[6].i64[0] = v0 + 1136;
  v292[6].i64[1] = v0 + 1152;
  v292[7] = vextq_s8(v346, v346, 8uLL);
  v292[8].i64[0] = v356;
  (*(v289 + 16))(v354, v288, v290);
  v293 = sub_1001D11A0();
  v294 = *(v293 + 48);
  v295 = *(v293 + 52);
  swift_allocObject();

  *(v0 + 2056) = sub_1001D1140();

  sub_1001D1030();
  v296 = swift_task_alloc();
  *(v0 + 2064) = v296;
  *v296 = v0;
  v296[1] = sub_100070A34;
  v297 = *(v0 + 1416);

  return sub_100135C64();
}

uint64_t sub_100070A34()
{
  v2 = *(*v1 + 2064);
  v5 = *v1;
  *(*v1 + 2072) = v0;

  if (v0)
  {
    v3 = sub_100071F74;
  }

  else
  {
    v3 = sub_100070B48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100070B48()
{
  v266 = v0;
  v211 = *(v0 + 2056);
  v228 = *(v0 + 2048);
  v1 = *(v0 + 2032);
  v214 = *(v0 + 2040);
  v217 = *(v0 + 2024);
  v258 = *(v0 + 2016);
  v233 = *(v0 + 1888);
  v237 = *(v0 + 1896);
  v260 = *(v0 + 1776);
  v2 = *(v0 + 1576);
  v248 = *(v0 + 1568);
  v254 = *(v0 + 1584);
  v3 = *(v0 + 1384);
  v220 = *(v0 + 1368);
  v224 = *(v0 + 1416);
  v240 = *(v0 + 1360);
  v4 = *(v0 + 1288);
  v205 = *(v0 + 1280);
  v208 = *(v0 + 1304);
  v5 = *(v0 + 1272);
  v6 = *(v0 + 1264);
  v7 = *(v0 + 1256);
  v243 = *(v0 + 1248);
  (*(v6 + 104))(v5, *(v0 + 2088), v7);
  sub_1001D0F20();
  (*(v6 + 8))(v5, v7);

  (*(v4 + 8))(v208, v205);
  v233(v3, v224, v220);
  os_unfair_lock_lock((v0 + 1152));
  v8 = *(v0 + 1160);

  os_unfair_lock_unlock((v0 + 1152));
  sub_1001D07E0();
  os_unfair_lock_lock((v0 + 1136));
  v9 = *(v0 + 1144);
  os_unfair_lock_unlock((v0 + 1136));
  v10 = *(v2 + 8);
  v10(v254, v248);

  v11 = sub_1001D0E50();
  v12 = sub_1001D1E00();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 2016);
  if (v13)
  {
    v15 = *(v0 + 2008);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v265[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1000954E0(v15, v14, v265);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s finished prefetch request", v16, 0xCu);
    sub_100011CF0(v17);
  }

  v18 = *(v0 + 1984);
  v19 = *(v0 + 1360);
  v20 = *(v0 + 1352);
  v21 = *(v0 + 1344);
  v22 = *(v0 + 1336);
  sub_100011F00(v0 + 1160, &qword_100229308, &qword_1001D6478);
  (*(v21 + 16))(v20, v19, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v0 + 1984);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1000095C8(0, v24[2] + 1, 1, *(v0 + 1984));
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1000095C8(v25 > 1, v26 + 1, 1, v24);
  }

  v27 = *(v0 + 1360);
  v28 = *(v0 + 1352);
  v29 = *(v0 + 1344);
  v30 = *(v0 + 1336);
  v24[2] = v26 + 1;
  (*(v29 + 32))(v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, v28, v30);
  v31 = *(sub_1001D0850() + 16);

  v32 = v31 - v9;
  if (__OFSUB__(v31, v9))
  {
    __break(1u);
  }

  else
  {
    v249 = v9;
    v258 = v10;
    v261 = v24;
    v33 = *(v0 + 2000);
    v34 = *(v0 + 1776);
    v35 = *(v0 + 1248);

    v36 = sub_1001D0E50();
    v37 = sub_1001D1E00();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 2000);
    if (v38)
    {
      v40 = *(v0 + 1992);
      v244 = *(v0 + 1416);
      v41 = *(v0 + 1376);
      v229 = *(v0 + 1368);
      v234 = *(v0 + 1408);
      v42 = *(v0 + 1344);
      v221 = *(v0 + 1336);
      v225 = *(v0 + 1360);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v265[0] = v44;
      *v43 = 136315650;
      v45 = sub_1000954E0(v40, v39, v265);

      *(v43 + 4) = v45;
      *(v43 + 12) = 2048;
      *(v43 + 14) = v249;
      *(v43 + 22) = 2048;
      *(v43 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s attestations saved: %ld duplicates: %ld", v43, 0x20u);
      sub_100011CF0(v44);

      (*(v42 + 8))(v225, v221);
      v46 = *(v41 + 8);
      v46(v234, v229);
      v47 = v244;
      v48 = v229;
    }

    else
    {
      v49 = *(v0 + 1416);
      v50 = *(v0 + 1408);
      v51 = *(v0 + 1376);
      v52 = *(v0 + 1368);
      v53 = *(v0 + 1360);
      v54 = *(v0 + 1344);
      v55 = *(v0 + 1336);
      v56 = *(v0 + 2000);

      (*(v54 + 8))(v53, v55);
      v46 = *(v51 + 8);
      v46(v50, v52);
      v47 = v49;
      v48 = v52;
    }

    v46(v47, v48);
    v57 = *(v0 + 1976);
    if (*(v0 + 2093))
    {
      v58 = *(v0 + 1832) - 1;
    }

    else
    {
      v58 = *(v0 + 1848);
    }

    if (v57 == v58)
    {
      v59 = *(v0 + 1808);
      v60 = *(v0 + 1800);
      v245 = *(v0 + 1768);
      v250 = *(v0 + 1776);
      v241 = *(v0 + 1736);
      v61 = *(v0 + 1728);
      v62 = *(v0 + 1632);
      v63 = *(v0 + 1616);
      v64 = *(v0 + 1608);
      v230 = *(v0 + 1520);
      v65 = *(v0 + 1512);
      v66 = *(v0 + 1504);
      *(v0 + 1816);
      v235 = *(v0 + 1248);
      v238 = *(v0 + 1720);
      v258(*(v0 + 1600), *(v0 + 1568));
      sub_100011E48(v60, v59);

      (*(v63 + 8))(v62, v64);
      (*(v65 + 8))(v230, v66);
      (*(v61 + 8))(v241, v238);

      v67 = sub_1001D0E50();
      v68 = sub_1001D1E00();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = *(v0 + 1768);
        v70 = *(v0 + 1760);
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v265[0] = v72;
        *v71 = 136315138;
        *(v71 + 4) = sub_1000954E0(v70, v69, v265);
        _os_log_impl(&_mh_execute_header, v67, v68, "%s finished batch of prefetch requests", v71, 0xCu);
        sub_100011CF0(v72);
      }

      else
      {
        v111 = *(v0 + 1768);
      }

      v112 = *(v0 + 1736);
      v113 = *(v0 + 1712);
      v114 = *(v0 + 1704);
      v115 = *(v0 + 1696);
      v116 = *(v0 + 1672);
      v117 = *(v0 + 1648);
      v118 = *(v0 + 1640);
      v119 = *(v0 + 1632);
      v120 = *(v0 + 1624);
      v121 = *(v0 + 1600);
      v194 = *(v0 + 1592);
      v195 = *(v0 + 1584);
      v196 = *(v0 + 1560);
      v197 = *(v0 + 1536);
      v199 = *(v0 + 1520);
      v201 = *(v0 + 1496);
      v203 = *(v0 + 1488);
      v206 = *(v0 + 1464);
      v209 = *(v0 + 1456);
      v212 = *(v0 + 1448);
      v215 = *(v0 + 1440);
      v218 = *(v0 + 1416);
      v222 = *(v0 + 1408);
      v226 = *(v0 + 1400);
      v231 = *(v0 + 1392);
      v236 = *(v0 + 1384);
      v239 = *(v0 + 1360);
      v242 = *(v0 + 1352);
      v247 = *(v0 + 1328);
      v252 = *(v0 + 1304);
      v256 = *(v0 + 1296);
      v259 = *(v0 + 1272);

      v122 = *(v0 + 8);

      return v122(v261);
    }

    v73 = (v57 + 1);
    if (v57 != -1)
    {
      *(v0 + 1984) = v261;
      *(v0 + 1976) = v73;
      v74 = *(v0 + 2080);
      v75 = *(v0 + 1752);
      v76 = *(v0 + 1600);
      v77 = *(v0 + 1592);
      v78 = *(v0 + 1576);
      v79 = *(v0 + 1568);
      v80 = *(v0 + 1416);
      v81 = *(v0 + 1368);
      v82 = *(v0 + 1248) + *(v0 + 1744);
      *(v0 + 1056) = sub_1001D23A0();
      *(v0 + 1064) = v83;
      v268._countAndFlagsBits = 35;
      v268._object = 0xE100000000000000;
      sub_1001D18B0(v268);
      v258 = v73;
      *(v0 + 1184) = v73;
      v269._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v269);

      v270._countAndFlagsBits = 58;
      v270._object = 0xE100000000000000;
      sub_1001D18B0(v270);
      v84 = *(v0 + 1056);
      *(v0 + 1992) = v84;
      v85 = *(v0 + 1064);
      *(v0 + 2000) = v85;
      sub_1001CFD90();
      (*(v78 + 16))(v77, v76, v79);
      v86 = (*(v78 + 88))(v77, v79);
      v87 = *(v0 + 1896);
      v88 = *(v0 + 1888);
      if (v86 == v74)
      {
        v255 = v84;
        v262 = *(v0 + 1776);
        v89 = *(v0 + 1416);
        v90 = *(v0 + 1408);
        v91 = *(v0 + 1400);
        v92 = *(v0 + 1392);
        v93 = *(v0 + 1368);
        v94 = *(v0 + 1248);
        sub_1001CFD90();
        v88(v91, v89, v93);
        v88(v92, v90, v93);

        v95 = sub_1001D0E50();
        v96 = sub_1001D1E00();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = *(v0 + 1752);
          v251 = v96;
          v98 = *(v0 + 1400);
          v246 = *(v0 + 1392);
          v99 = *(v0 + 1376);
          v100 = *(v0 + 1368);
          v101 = swift_slowAlloc();
          v265[0] = swift_slowAlloc();
          *v101 = 136315650;
          *(v101 + 4) = sub_1000954E0(v255, v85, v265);
          *(v101 + 12) = 2080;
          v102 = sub_1001D23A0();
          v104 = v103;
          v105 = *(v99 + 8);
          v105(v98, v100);
          v106 = sub_1000954E0(v102, v104, v265);

          *(v101 + 14) = v106;
          *(v101 + 22) = 2080;
          v107 = sub_1001D23A0();
          v109 = v108;
          v105(v246, v100);
          v110 = sub_1000954E0(v107, v109, v265);

          *(v101 + 24) = v110;
          _os_log_impl(&_mh_execute_header, v95, v251, "%s Request: %s RequestIDForReporting: %s", v101, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v127 = *(v0 + 1400);
          v128 = *(v0 + 1392);
          v129 = *(v0 + 1376);
          v130 = *(v0 + 1368);

          v131 = *(v129 + 8);
          v131(v128, v130);
          v131(v127, v130);
        }
      }

      else
      {
        v124 = *(v0 + 1592);
        v125 = *(v0 + 1576);
        v126 = *(v0 + 1568);
        v88(*(v0 + 1408), *(v0 + 1416), *(v0 + 1368));
        (*(v125 + 8))(v124, v126);
      }

      if (qword_1002276A8 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_28:
  v132 = *(v0 + 1912);
  v133 = *(v0 + 1904);
  v263 = *(v0 + 1776);
  v134 = *(v0 + 1752);
  v135 = *(v0 + 1520);
  v136 = *(v0 + 1496);
  v137 = *(v0 + 1472);
  v138 = *(v0 + 1416);
  v139 = *(v0 + 1368);
  v140 = *(v0 + 1248);
  v141 = sub_10003A37C(v137, qword_100242D78);
  v133(v136, v141, v137);
  sub_1001CFD70();
  sub_1001D0EF0();
  *(v0 + 1136) = 0;
  *(v0 + 1144) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1160) = &_swiftEmptyArrayStorage;
  *(v0 + 1168) = sub_1001D23A0();
  *(v0 + 1176) = v142;
  v271._countAndFlagsBits = 58;
  v271._object = 0xE100000000000000;
  sub_1001D18B0(v271);
  v143 = *(v0 + 1168);
  *(v0 + 2008) = v143;
  v144 = *(v0 + 1176);
  *(v0 + 2016) = v144;

  v145 = sub_1001D0E50();
  v146 = sub_1001D1E00();

  v253 = v144;
  v257 = v143;
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v265[0] = v148;
    *v147 = 136315138;
    *(v147 + 4) = sub_1000954E0(v143, v144, v265);
    _os_log_impl(&_mh_execute_header, v145, v146, "%s executing prefetch request", v147, 0xCu);
    sub_100011CF0(v148);
  }

  v264 = *(v0 + 1928);
  v149 = *(v0 + 1920);
  v150 = *(v0 + 1584);
  v151 = *(v0 + 1328);
  v152 = *(v0 + 1320);
  v153 = *(v0 + 1312);
  v154 = (*(v0 + 1248) + *(v0 + 1784));
  v155 = v154[3];
  v156 = v154[4];
  sub_100024DC8(v154, v155);
  *(v0 + 1008) = &type metadata for SystemInfo;
  *(v0 + 1016) = &protocol witness table for SystemInfo;
  v157 = swift_allocObject();
  *(v0 + 984) = v157;
  v158 = *(v0 + 160);
  v157[9] = *(v0 + 144);
  v157[10] = v158;
  v157[11] = *(v0 + 176);
  v159 = *(v0 + 96);
  v157[5] = *(v0 + 80);
  v157[6] = v159;
  v160 = *(v0 + 128);
  v157[7] = *(v0 + 112);
  v157[8] = v160;
  v161 = *(v0 + 32);
  v157[1] = *(v0 + 16);
  v157[2] = v161;
  v162 = *(v0 + 64);
  v157[3] = *(v0 + 48);
  v157[4] = v162;
  sub_1000884D8(v0 + 16, v0 + 192);
  Configuration.environment(systemInfo:)((v0 + 984), v155, v156, v150);
  sub_100011CF0((v0 + 984));
  v163 = v154[4];
  sub_100024DC8(v154, v154[3]);
  sub_1001D0400();
  sub_1001D0210();
  (*(v152 + 8))(v151, v153);
  v164 = *(v0 + 2092);
  LOBYTE(v154) = sub_1001D0280();
  *(v0 + 2024) = sub_1001D1200();
  v165 = sub_1001D1240();
  v166 = *(v165 + 48);
  v167 = *(v165 + 52);
  swift_allocObject();
  v168 = sub_1001D1230();
  v169 = sub_1001D1260();
  if (v154)
  {
    sub_1001D11F0();
    nw_parameters_set_privacy_proxy_fail_closed();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 1968))
  {
    v170 = *(v0 + 1960);
    v171 = *(v0 + 1968);

    sub_1001D11E0();
  }

  if (v164)
  {
    v172 = *(v0 + 1952);
    v173 = sub_1001D1220();
    *(v0 + 928) = sub_100096568;
    *(v0 + 936) = 0;
    *(v0 + 896) = _NSConcreteStackBlock;
    *(v0 + 904) = 1107296256;
    *(v0 + 912) = sub_100059234;
    *(v0 + 920) = &unk_10021E990;
    v174 = _Block_copy((v0 + 896));
    v175 = sub_1001D1E40();
    sec_protocol_options_set_verify_block(v173, v174, v175);

    _Block_release(v174);
    swift_unknownObjectRelease();
  }

  v176 = *(v0 + 1936);
  sub_1001D11D0();
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_1001D54B0;
  *(v177 + 32) = v169;
  *(v177 + 40) = v168;

  sub_1001D11C0();

  v178 = sub_1001D12C0();
  sub_1001D11D0();

  v179 = sub_1001D11B0();
  if (*v180 >> 62 && (result = sub_1001D2190(), result < 0))
  {
    __break(1u);
  }

  else
  {
    v198 = *(v0 + 2084);
    v210 = *(v0 + 1952);
    v200 = *(v0 + 1944);
    v181 = *(v0 + 1824);
    v182 = *(v0 + 1816);
    v219 = *(v0 + 1736);
    v223 = *(v0 + 1840);
    v183 = *(v0 + 1584);
    v216 = *(v0 + 1520);
    v184 = *(v0 + 1304);
    v227 = *(v0 + 1296);
    v232 = *(v0 + 1632);
    v185 = *(v0 + 1288);
    v186 = *(v0 + 1280);
    v187 = v182 == 0;
    if (!v182)
    {
      v182 = 0xE000000000000000;
    }

    v204 = *(v0 + 1248);
    v207 = v182;
    if (v187)
    {
      v181 = 0;
    }

    v202 = v181;
    v213 = *(v0 + 1408);
    sub_10005A0B8(0, 0, v178);

    v179(v0 + 1024, 0);

    sub_1001D02C0();
    (*(v185 + 104))(v184, v198, v186);
    *(v0 + 2032) = sub_1001D0F10();
    *(v0 + 2040) = sub_1001D1E40();
    v188 = swift_task_alloc();
    *(v0 + 2048) = v188;
    v188[1].i64[0] = v204;
    v188[1].i64[1] = v257;
    v188[2].i64[0] = v253;
    v188[2].i64[1] = v202;
    v188[3].i64[0] = v207;
    v188[3].i64[1] = v223;
    v188[4].i64[0] = v183;
    v188[4].i64[1] = v216;
    v188[5].i64[0] = v219;
    v188[5].i64[1] = v258;
    v188[6].i64[0] = v0 + 1136;
    v188[6].i64[1] = v0 + 1152;
    v188[7] = vextq_s8(v213, v213, 8uLL);
    v188[8].i64[0] = v232;
    (*(v185 + 16))(v227, v184, v186);
    v189 = sub_1001D11A0();
    v190 = *(v189 + 48);
    v191 = *(v189 + 52);
    swift_allocObject();

    *(v0 + 2056) = sub_1001D1140();

    sub_1001D1030();
    v192 = swift_task_alloc();
    *(v0 + 2064) = v192;
    *v192 = v0;
    v192[1] = sub_100070A34;
    v193 = *(v0 + 1416);

    return sub_100135C64();
  }

  return result;
}

uint64_t sub_100071F74()
{
  v109 = v0;
  v1 = v0[259];
  v2 = v0[257];
  v91 = v0[256];
  v3 = v0[254];
  v79 = v0[255];
  v82 = v0[253];
  v97 = v0[252];
  v100 = v0[222];
  v4 = v0[197];
  v103 = v0[196];
  v106 = v0[198];
  v5 = v0[161];
  v85 = v0[160];
  v88 = v0[163];
  v6 = v0[159];
  v7 = v0[158];
  v8 = v0[157];
  v94 = v0[156];
  v0[227];
  (*(v7 + 104))(v6, enum case for NWActivity.CompletionReason.failure(_:), v8);
  sub_1001D0F20();
  (*(v7 + 8))(v6, v8);
  swift_willThrow();

  (*(v5 + 8))(v88, v85);
  v9 = v103;
  v104 = *(v4 + 8);
  v104(v106, v9);

  v10 = sub_1001D0E50();
  v11 = sub_1001D1E00();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[252];
    v13 = v0[251];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v108[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000954E0(v13, v12, v108);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s finished prefetch request", v14, 0xCu);
    sub_100011CF0(v15);
  }

  else
  {
    v16 = v0[252];
  }

  v17 = v0[259];
  v18 = v0[250];
  v19 = v0[248];
  v20 = v0[222];
  v21 = v0[156];
  sub_100011F00((v0 + 145), &qword_100229308, &qword_1001D6478);

  swift_errorRetain();
  v22 = sub_1001D0E50();
  v23 = sub_1001D1DE0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v0[259];
    v25 = v0[250];
    v26 = v0[249];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v108[0] = v29;
    *v27 = 136315394;
    v30 = sub_1000954E0(v26, v25, v108);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2112;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v31;
    *v28 = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s failed to fetch batch error: %@", v27, 0x16u);
    sub_100011F00(v28, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v29);
  }

  else
  {
    v32 = v0[250];
  }

  v33 = v0[259];
  v71 = v0[225];
  v73 = v0[226];
  v98 = v0[221];
  v101 = v0[222];
  v95 = v0[217];
  v34 = v0[216];
  v35 = v0[202];
  v77 = v0[201];
  v80 = v0[204];
  v36 = v0[200];
  v37 = v0[196];
  v38 = v0[189];
  v83 = v0[188];
  v86 = v0[190];
  v75 = v0[177];
  v39 = v0[176];
  v40 = v0[172];
  v41 = v0[171];
  v89 = v0[156];
  v92 = v0[215];
  swift_willThrow();
  sub_100011E48(v71, v73);
  v104(v36, v37);
  v42 = *(v40 + 8);
  v42(v39, v41);
  v42(v75, v41);
  (*(v35 + 8))(v80, v77);
  (*(v38 + 8))(v86, v83);
  (*(v34 + 8))(v95, v92);

  v43 = sub_1001D0E50();
  v44 = sub_1001D1E00();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = v0[221];
    v46 = v0[220];
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v108[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_1000954E0(v46, v45, v108);
    _os_log_impl(&_mh_execute_header, v43, v44, "%s finished batch of prefetch requests", v47, 0xCu);
    sub_100011CF0(v48);
  }

  else
  {
    v49 = v0[221];
  }

  v107 = v0[259];
  v50 = v0[217];
  v51 = v0[214];
  v52 = v0[213];
  v53 = v0[212];
  v54 = v0[209];
  v55 = v0[206];
  v56 = v0[205];
  v57 = v0[204];
  v58 = v0[203];
  v59 = v0[200];
  v62 = v0[199];
  v63 = v0[198];
  v64 = v0[195];
  v65 = v0[192];
  v66 = v0[190];
  v67 = v0[187];
  v68 = v0[186];
  v69 = v0[183];
  v70 = v0[182];
  v72 = v0[181];
  v74 = v0[180];
  v76 = v0[177];
  v78 = v0[176];
  v81 = v0[175];
  v84 = v0[174];
  v87 = v0[173];
  v90 = v0[170];
  v93 = v0[169];
  v96 = v0[166];
  v99 = v0[163];
  v102 = v0[162];
  v105 = v0[159];

  v60 = v0[1];

  return v60();
}

uint64_t sub_100072724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_100011AC0(&qword_1002292B0, &unk_1001D6420) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = sub_1001D08A0();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100072860, 0, 0);
}

uint64_t sub_100072860()
{
  v74 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  sub_100096A60(v3);
  v5 = (*(v2 + 48))(v3, 1, v1);
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[6];
  if (v5 == 1)
  {
    v10 = v0[14];
    v11 = v0[3];
    sub_100011F00(v0[8], &qword_1002292B0, &unk_1001D6420);
    v12 = *(v7 + 16);
    v12(v10, v11, v6);
    v13 = sub_1001D0E50();
    v14 = sub_1001D1DE0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[14];
    if (v15)
    {
      v17 = v0[13];
      v19 = v0[9];
      v18 = v0[10];
      v20 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1000954E0(0xD000000000000025, 0x80000001001E3C00, v73);
      *(v20 + 12) = 2080;
      v12(v17, v16, v19);
      v21 = sub_1001D1820();
      v23 = v22;
      (*(v18 + 8))(v16, v19);
      v24 = sub_1000954E0(v21, v23, v73);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s parameters=%s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v45 = v0[9];
      v46 = v0[10];

      (*(v46 + 8))(v16, v45);
    }

    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
LABEL_14:
    v64 = v0[14];
    v63 = v0[15];
    v66 = v0[12];
    v65 = v0[13];
    v67 = v0[11];
    v69 = v0[7];
    v68 = v0[8];

    v70 = v0[1];

    return v70();
  }

  v25 = v0[15];
  (*(v7 + 32))(v25, v0[8], v0[9]);
  os_unfair_lock_lock((v9 + 16));
  if (sub_10005FBF4(v25, *(v9 + 24)))
  {
    v26 = v0[15];
    v28 = v0[10];
    v27 = v0[11];
    v29 = v0[9];
    v30 = v0[6];
    os_unfair_lock_unlock((v9 + 16));
    v31 = *(v28 + 16);
    v31(v27, v26, v29);
    v32 = sub_1001D0E50();
    v33 = sub_1001D1E00();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[13];
      v36 = v0[10];
      v35 = v0[11];
      v37 = v0[9];
      v71 = v33;
      v38 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_1000954E0(0xD00000000000003CLL, 0x80000001001E3C60, v73);
      *(v38 + 12) = 2080;
      v31(v34, v35, v37);
      v39 = sub_1001D1820();
      v41 = v40;
      v42 = *(v36 + 8);
      v42(v35, v37);
      v43 = sub_1000954E0(v39, v41, v73);

      *(v38 + 14) = v43;
      v44 = v42;
      _os_log_impl(&_mh_execute_header, v32, v71, "%s parameters=%s", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v59 = v0[10];
      v58 = v0[11];
      v60 = v0[9];

      v44 = *(v59 + 8);
      v44(v58, v60);
    }

    v61 = v0[15];
    v62 = v0[9];
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    v44(v61, v62);
    goto LABEL_14;
  }

  v48 = v0[12];
  v47 = v0[13];
  v49 = v0[9];
  v50 = v0[10];
  v51 = v0[4];
  (*(v50 + 16))(v48, v0[15], v49);
  sub_10006010C(v47, v48);
  v52 = *(v50 + 8);
  v0[16] = v52;
  v52(v47, v49);
  os_unfair_lock_unlock((v9 + 16));
  v72 = (v51 + *v51);
  v53 = v51[1];
  v54 = swift_task_alloc();
  v0[17] = v54;
  *v54 = v0;
  v54[1] = sub_100072FB0;
  v55 = v0[5];
  v56 = v0[2];

  return v72(v56);
}

uint64_t sub_100072FB0()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1000731E8;
  }

  else
  {
    v3 = sub_1000730C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000730C4()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v11 = v0[12];
  v12 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  v13 = v0[8];
  v7 = v0[6];
  v8 = v0[10] + 8;
  os_unfair_lock_lock(v7 + 4);
  sub_100061804(v1, v6);
  sub_100011F00(v6, &qword_1002292B0, &unk_1001D6420);
  os_unfair_lock_unlock(v7 + 4);
  v2(v1, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000731E8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[10] + 8;
  os_unfair_lock_lock(v5 + 4);
  sub_100061804(v1, v4);
  sub_100011F00(v4, &qword_1002292B0, &unk_1001D6420);
  os_unfair_lock_unlock(v5 + 4);
  v2(v1, v3);
  v7 = v0[18];
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  v14 = v0[7];
  v13 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000732FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_100011AC0(&qword_1002292B0, &unk_1001D6420) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = sub_1001D08A0();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100073438, 0, 0);
}

uint64_t sub_100073438()
{
  v74 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  sub_100096A60(v3);
  v5 = (*(v2 + 48))(v3, 1, v1);
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[6];
  if (v5 == 1)
  {
    v10 = v0[14];
    v11 = v0[3];
    sub_100011F00(v0[8], &qword_1002292B0, &unk_1001D6420);
    v12 = *(v7 + 16);
    v12(v10, v11, v6);
    v13 = sub_1001D0E50();
    v14 = sub_1001D1DE0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[14];
    if (v15)
    {
      v17 = v0[13];
      v19 = v0[9];
      v18 = v0[10];
      v20 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1000954E0(0xD000000000000025, 0x80000001001E3C00, v73);
      *(v20 + 12) = 2080;
      v12(v17, v16, v19);
      v21 = sub_1001D1820();
      v23 = v22;
      (*(v18 + 8))(v16, v19);
      v24 = sub_1000954E0(v21, v23, v73);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s parameters=%s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v45 = v0[9];
      v46 = v0[10];

      (*(v46 + 8))(v16, v45);
    }

    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
LABEL_14:
    v64 = v0[14];
    v63 = v0[15];
    v66 = v0[12];
    v65 = v0[13];
    v67 = v0[11];
    v69 = v0[7];
    v68 = v0[8];

    v70 = v0[1];

    return v70();
  }

  v25 = v0[15];
  (*(v7 + 32))(v25, v0[8], v0[9]);
  os_unfair_lock_lock((v9 + 16));
  if (sub_10005FBF4(v25, *(v9 + 24)))
  {
    v26 = v0[15];
    v28 = v0[10];
    v27 = v0[11];
    v29 = v0[9];
    v30 = v0[6];
    os_unfair_lock_unlock((v9 + 16));
    v31 = *(v28 + 16);
    v31(v27, v26, v29);
    v32 = sub_1001D0E50();
    v33 = sub_1001D1E00();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[13];
      v36 = v0[10];
      v35 = v0[11];
      v37 = v0[9];
      v71 = v33;
      v38 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_1000954E0(0xD00000000000003CLL, 0x80000001001E3C60, v73);
      *(v38 + 12) = 2080;
      v31(v34, v35, v37);
      v39 = sub_1001D1820();
      v41 = v40;
      v42 = *(v36 + 8);
      v42(v35, v37);
      v43 = sub_1000954E0(v39, v41, v73);

      *(v38 + 14) = v43;
      v44 = v42;
      _os_log_impl(&_mh_execute_header, v32, v71, "%s parameters=%s", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v59 = v0[10];
      v58 = v0[11];
      v60 = v0[9];

      v44 = *(v59 + 8);
      v44(v58, v60);
    }

    v61 = v0[15];
    v62 = v0[9];
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    v44(v61, v62);
    goto LABEL_14;
  }

  v48 = v0[12];
  v47 = v0[13];
  v49 = v0[9];
  v50 = v0[10];
  v51 = v0[4];
  (*(v50 + 16))(v48, v0[15], v49);
  sub_10006010C(v47, v48);
  v52 = *(v50 + 8);
  v0[16] = v52;
  v52(v47, v49);
  os_unfair_lock_unlock((v9 + 16));
  v72 = (v51 + *v51);
  v53 = v51[1];
  v54 = swift_task_alloc();
  v0[17] = v54;
  *v54 = v0;
  v54[1] = sub_100073B88;
  v55 = v0[5];
  v56 = v0[2];

  return v72(v56);
}

uint64_t sub_100073B88()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10008A890;
  }

  else
  {
    v3 = sub_10008A878;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100073C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[101] = v7;
  v8[100] = a7;
  v8[99] = a6;
  v8[98] = a5;
  v8[97] = a4;
  v8[96] = a3;
  v8[95] = a2;
  v8[89] = a1;
  v9 = sub_1001D08A0();
  v8[102] = v9;
  v10 = *(v9 - 8);
  v8[103] = v10;
  v11 = *(v10 + 64) + 15;
  v8[104] = swift_task_alloc();
  v12 = *(*(sub_1001CF7E0() - 8) + 64) + 15;
  v8[105] = swift_task_alloc();

  return _swift_task_switch(sub_100073DA4, 0, 0);
}

uint64_t sub_100073DA4()
{
  v40 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  *(v0 + 848) = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 768);
    v7 = *(v0 + 760);
    v8 = *(v0 + 712);
    v9 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000954E0(v8, v7, &v39);
    *(v9 + 12) = 2080;
    v10 = sub_1001D1710();
    v12 = sub_1000954E0(v10, v11, &v39);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "prewarm workloadType=%s workloadParameters=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 840);
  v14 = *(v0 + 808);
  v15 = swift_allocObject();
  *(v0 + 856) = v15;
  *(v15 + 16) = v14;
  v16 = swift_task_alloc();
  *(v0 + 864) = v16;
  *(v16 + 16) = &unk_1001D6820;
  *(v16 + 24) = v15;
  v17 = v14;
  swift_asyncLet_begin();
  v18 = sub_1001CF820();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1001CF810();
  *(v0 + 872) = v21;
  sub_1001CF7C0();
  sub_1001CF7F0();
  v22 = *&v17[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore];
  *(v0 + 880) = v22;
  if (v22)
  {
    v23 = *(v0 + 832);
    v24 = *(v0 + 808);
    v25 = *(v0 + 800);
    v26 = *(v0 + 792);
    v38 = *(v0 + 776);
    v27 = *(v0 + 768);
    v28 = *(v0 + 760);
    v29 = *(v0 + 712);

    sub_1001D0880();
    v30 = *(v24 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchTracker);
    v31 = swift_task_alloc();
    *(v0 + 888) = v31;
    *(v31 + 16) = v22;
    *(v31 + 24) = v24;
    *(v31 + 32) = v23;
    *(v31 + 40) = 1;
    *(v31 + 48) = 0;
    *(v31 + 56) = 1;
    *(v31 + 64) = v38;
    *(v31 + 80) = v26;
    *(v31 + 88) = v25;
    *(v31 + 96) = v21;
    v32 = swift_task_alloc();
    *(v0 + 896) = v32;
    *v32 = v0;
    v32[1] = sub_100074218;
    v33 = *(v0 + 832);

    return sub_100072724(v0 + 696, v33, &unk_1001D6840, v31);
  }

  else
  {
    v35 = sub_1001D0E50();
    v36 = sub_1001D1E00();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "store unavailable", v37, 2u);
    }

    *(v0 + 912) = xmmword_1001D6800;

    return _swift_asyncLet_get_throwing(v0 + 16);
  }
}

uint64_t sub_100074218()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v7 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v4 = sub_1000743EC;
  }

  else
  {
    v5 = *(v2 + 888);

    v4 = sub_100074334;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100074334()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];

  v6 = v0[87];
  v7 = v0[88];
  (*(v4 + 8))(v3, v5);
  v0[115] = v7;
  v0[114] = v6;

  return _swift_asyncLet_get_throwing(v0 + 2);
}

uint64_t sub_1000743EC()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 888);
  v3 = *(v0 + 848);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  v7 = *(v0 + 808);

  (*(v5 + 8))(v4, v6);
  swift_errorRetain();
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 904);
  v12 = *(v0 + 880);
  v13 = *(v0 + 872);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "failed prefetch attestations: %@", v14, 0xCu);
    sub_100011F00(v15, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
    v17 = *(v0 + 872);
  }

  *(v0 + 912) = xmmword_1001D6800;

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_1000745C4()
{
  *(v1 + 928) = v0;
  if (v0)
  {
    return _swift_task_switch(sub_1000746B4, 0, 0);
  }

  else
  {
    return _swift_asyncLet_finish(v1 + 16);
  }
}

uint64_t sub_100074620()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[105];
  v4 = v0[104];

  v5 = v0[1];
  v6 = v0[115];
  v7 = v0[114];

  return v5(v7, v6);
}

uint64_t sub_1000746B4()
{
  v1 = v0[116];
  v2 = v0[106];
  v3 = v0[101];
  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[116];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "token fetch prewarm failed, error=%@", v8, 0xCu);
    sub_100011F00(v9, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  return _swift_asyncLet_finish(v0 + 2);
}

uint64_t sub_100074824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005B61C;

  return sub_100074984(a1);
}

uint64_t sub_1000748B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000748F0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005B61C;

  return sub_100074824(v2);
}

uint64_t sub_100074984(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1001D02F0();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_1001D05B0();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = sub_1001D0180();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100074AFC, 0, 0);
}

uint64_t sub_100074AFC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for PrivateCloudComputeFeatureFlags.fetchAuthTokenOnPrewarm(_:), v3);
  v0[5] = v3;
  v0[6] = sub_10008A830(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags);
  v4 = sub_10003B47C(v0 + 2);
  (*(v2 + 16))(v4, v1, v3);
  v5 = sub_1001CFEC0();
  (*(v2 + 8))(v1, v3);
  sub_100011CF0(v0 + 2);
  if (v5)
  {
    v6 = v0[7] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
    v7 = sub_1001D0E50();
    v8 = sub_1001D1DD0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "running token fetch during prewarm", v9, 2u);
    }

    v11 = v0[12];
    v10 = v0[13];
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[8];
    v15 = v0[9];
    v16 = v0[7];

    (*(v11 + 16))(v10, v16 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config, v12);
    v17 = sub_100011AC0(&qword_100230160, &qword_1001E1F30);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v0[17] = v20;
    (*(v15 + 104))(v13, enum case for TC2LogCategory.tokenProvider(_:), v14);
    sub_1001D08B0();
    (*(v15 + 8))(v13, v14);
    (*(v11 + 32))(v20 + *(*v20 + 120), v10, v12);
    v21 = sub_10007A850();
    v0[18] = v21;
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_100074E3C;

    return sub_10007BAF0(v21);
  }

  else
  {
    v24 = v0[16];
    v25 = v0[13];
    v26 = v0[10];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_100074E3C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_100074FDC;
  }

  else
  {
    v3 = sub_100074F50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100074F50()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100074FDC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);

  sub_100089D84(v1);
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000750A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005B61C;

  return v6();
}

uint64_t sub_10007518C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_1000750A4(a1, v5);
}

uint64_t sub_100075244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1001D08A0();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(*(sub_1001CF7E0() - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100075334, 0, 0);
}

uint64_t sub_100075334()
{
  v37 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v0[12] = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000954E0(v8, v7, &v36);
    *(v9 + 12) = 2080;
    v10 = sub_1001D1710();
    v12 = sub_1000954E0(v10, v11, &v36);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "prefetch workloadType=%s workloadParameters=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[11];
  v14 = v0[7];
  v15 = sub_1001CF820();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1001CF810();
  v0[13] = v18;
  sub_1001CF7C0();
  sub_1001CF7F0();
  v19 = *(v14 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v0[14] = v19;
  if (v19)
  {
    v20 = v0[10];
    v21 = v0[6];
    v22 = v0[7];
    v24 = v0[4];
    v23 = v0[5];

    sub_1001D0880();
    v25 = *(v22 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchTracker);
    v26 = swift_task_alloc();
    v0[15] = v26;
    *(v26 + 16) = v19;
    *(v26 + 24) = v22;
    *(v26 + 32) = v20;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 1;
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
    *(v26 + 96) = v18;
    v27 = swift_task_alloc();
    v0[16] = v27;
    *v27 = v0;
    v27[1] = sub_100075704;
    v28 = v0[10];

    return sub_100072724((v0 + 2), v28, &unk_1001D69A8, v26);
  }

  else
  {
    v30 = sub_1001D0E50();
    v31 = sub_1001D1E00();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "store unavailable", v32, 2u);
    }

    v34 = v0[10];
    v33 = v0[11];

    v35 = v0[1];

    return v35(0, 0xF000000000000000);
  }
}

uint64_t sub_100075704()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1000758D4;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_100075820;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100075820()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[2];
  v7 = v0[3];
  (*(v4 + 8))(v3, v5);
  v9 = v0[10];
  v8 = v0[11];

  v10 = v0[1];

  return v10(v6, v7);
}

uint64_t sub_1000758D4()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  (*(v5 + 8))(v4, v6);
  swift_errorRetain();
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[17];
  v13 = v0[13];
  v12 = v0[14];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "failed prefetch attestations: %@", v14, 0xCu);
    sub_100011F00(v15, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
    v17 = v0[13];
  }

  v19 = v0[10];
  v18 = v0[11];

  v20 = v0[1];

  return v20(0, 0xF000000000000000);
}

uint64_t sub_100075AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 664) = v33;
  *(v8 + 656) = v32;
  *(v8 + 640) = v31;
  *(v8 + 632) = a8;
  *(v8 + 881) = a7;
  *(v8 + 624) = a6;
  *(v8 + 880) = a5;
  *(v8 + 616) = a4;
  *(v8 + 608) = a3;
  *(v8 + 600) = a2;
  *(v8 + 592) = a1;
  v9 = sub_1001CFDA0();
  *(v8 + 672) = v9;
  v10 = *(v9 - 8);
  *(v8 + 680) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 688) = swift_task_alloc();
  v12 = sub_1001D0840();
  *(v8 + 696) = v12;
  v13 = *(v12 - 8);
  *(v8 + 704) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  v15 = sub_1001D0860();
  *(v8 + 728) = v15;
  v16 = *(v15 - 8);
  *(v8 + 736) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  v18 = sub_1001D02F0();
  *(v8 + 760) = v18;
  v19 = *(v18 - 8);
  *(v8 + 768) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 776) = swift_task_alloc();
  v21 = *(*(sub_1001CF7E0() - 8) + 64) + 15;
  *(v8 + 784) = swift_task_alloc();
  v22 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  *(v8 + 792) = v22;
  v23 = *(v22 - 8);
  *(v8 + 800) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 808) = swift_task_alloc();
  v25 = sub_1001D08A0();
  *(v8 + 816) = v25;
  v26 = *(v25 - 8);
  *(v8 + 824) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 832) = swift_task_alloc();
  v28 = *(*(sub_100011AC0(&qword_100229520, &unk_1001DEF70) - 8) + 64) + 15;
  *(v8 + 840) = swift_task_alloc();

  return _swift_task_switch(sub_100075DEC, 0, 0);
}

uint64_t sub_100075DEC()
{
  v58 = *(v0 + 840);
  v1 = *(v0 + 832);
  v46 = v1;
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v57 = *(v0 + 808);
  v4 = *(v0 + 800);
  v56 = *(v0 + 792);
  v40 = *(v0 + 784);
  v5 = *(v0 + 768);
  v43 = *(v0 + 760);
  v44 = *(v0 + 776);
  v51 = *(v0 + 648);
  v52 = *(v0 + 656);
  v49 = *(v0 + 632);
  v50 = *(v0 + 640);
  v54 = *(v0 + 881);
  v53 = *(v0 + 624);
  v47 = *(v0 + 880);
  v41 = *(v0 + 616);
  v6 = *(v0 + 608);
  v55 = *(v0 + 600);
  v7 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
  sub_10001208C(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationVerifier, v58, &qword_100229520, &unk_1001DEF70);
  v8 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config;
  v9 = sub_1001D05B0();
  *(v0 + 568) = v9;
  *(v0 + 576) = &protocol witness table for DefaultConfiguration;
  v48 = sub_10003B47C((v0 + 544));
  (*(*(v9 - 8) + 16))(v48, v6 + v8, v9);
  v10 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig);
  v11 = (v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  v13 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16);
  v12 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32);
  *(v0 + 16) = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  *(v0 + 32) = v13;
  *(v0 + 48) = v12;
  v14 = v11[6];
  v16 = v11[3];
  v15 = v11[4];
  *(v0 + 96) = v11[5];
  *(v0 + 112) = v14;
  *(v0 + 64) = v16;
  *(v0 + 80) = v15;
  v17 = v11[10];
  v19 = v11[7];
  v18 = v11[8];
  *(v0 + 160) = v11[9];
  *(v0 + 176) = v17;
  *(v0 + 128) = v19;
  *(v0 + 144) = v18;
  v45 = *(v2 + 16);
  v45(v1, v41, v3);
  v42 = *(v4 + 16);
  v42(v57, v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_thimbledEventContinuation, v56);
  v20 = sub_100011AC0(&qword_100229528, &qword_1001E2100);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  *(v0 + 848) = v23;
  v24 = sub_1001CF820();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  sub_1000884D8(v0 + 16, v0 + 192);
  v27 = sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  v23[2] = v27;
  (*(v5 + 104))(v44, enum case for TC2LogCategory.prefetchRequest(_:), v43);
  sub_1001D08B0();
  (*(v5 + 8))(v44, v43);
  v28 = v23 + *(*v23 + 320);
  sub_1001CFD90();
  *(v23 + *(*v23 + 216)) = v55;
  *(v23 + *(*v23 + 224)) = v7;
  sub_10001208C(v58, v23 + *(*v23 + 232), &qword_100229520, &unk_1001DEF70);
  sub_100044698(v0 + 544, v23 + *(*v23 + 240));
  *(v23 + *(*v23 + 248)) = v10;
  v29 = (v23 + *(*v23 + 256));
  v30 = *(v0 + 32);
  *v29 = *(v0 + 16);
  v29[1] = v30;
  v31 = *(v0 + 96);
  v29[4] = *(v0 + 80);
  v29[5] = v31;
  v32 = *(v0 + 64);
  v29[2] = *(v0 + 48);
  v29[3] = v32;
  v33 = *(v0 + 176);
  v29[9] = *(v0 + 160);
  v29[10] = v33;
  v34 = *(v0 + 144);
  v29[7] = *(v0 + 128);
  v29[8] = v34;
  v29[6] = *(v0 + 112);
  v45(v23 + *(*v23 + 272), v46, v3);
  v42(v23 + *(*v23 + 280), v57, v56);
  *(v23 + *(*v23 + 288)) = v47;
  v35 = (v23 + *(*v23 + 296));
  *v35 = v49;
  v35[1] = v50;
  v36 = (v23 + *(*v23 + 304));
  *v36 = v51;
  v36[1] = v52;
  v37 = v23 + *(*v23 + 312);
  *v37 = v53;
  v37[8] = v54 & 1;
  sub_1000884D8(v0 + 16, v0 + 368);

  LOBYTE(v27) = sub_100088818(v48, v0 + 16, v10);
  sub_100088D84(v0 + 16);
  (*(v4 + 8))(v57, v56);
  (*(v2 + 8))(v46, v3);
  sub_100011F00(v58, &qword_100229520, &unk_1001DEF70);
  sub_100011CF0((v0 + 544));
  *(v23 + *(*v23 + 328)) = v27 & 1;
  v38 = swift_task_alloc();
  *(v0 + 856) = v38;
  *v38 = v0;
  v38[1] = sub_1000763F0;

  return sub_10006ADEC();
}

uint64_t sub_1000763F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 856);
  v7 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v5 = sub_100076B40;
  }

  else
  {
    v5 = sub_100076508;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100076508()
{
  v84 = v0;
  v1 = v0[108];
  v62 = *(v1 + 16);
  if (v62)
  {
    v2 = 0;
    v3 = v0[92];
    v4 = v0[88];
    v60 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v71 = (v4 + 16);
    v58 = v4;
    v70 = (v4 + 8);
    v61 = v3;
    v5 = (v3 + 8);
    v64 = (v0[85] + 8);
    v59 = v0[108];
    v65 = v0[76];
    v74 = (v3 + 8);
    while (v2 < *(v1 + 16))
    {
      v76 = *(v61 + 16);
      v76(v0[94], v60 + *(v61 + 72) * v2, v0[91]);
      v6 = sub_1001D0850();
      v7 = *(v6 + 16);
      if (v7)
      {
        v63 = v2;
        v8 = v6 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
        v72 = *(v58 + 72);
        do
        {
          v11 = v0[90];
          v12 = v0[89];
          v13 = v0[87];
          v76(v0[93], v0[94], v0[91]);
          v14 = *v71;
          (*v71)(v11, v8, v13);
          v14(v12, v8, v13);
          v15 = sub_1001D0E50();
          v16 = sub_1001D1E00();
          v17 = os_log_type_enabled(v15, v16);
          v18 = v0[93];
          v78 = v0[91];
          v80 = v0[90];
          v19 = v0[89];
          v20 = v0[87];
          if (v17)
          {
            v21 = v0[86];
            v22 = v0[84];
            v68 = v0[89];
            v23 = swift_slowAlloc();
            v83[0] = swift_slowAlloc();
            *v23 = 136315650;
            v69 = v16;
            sub_1001D07D0();
            sub_10008A830(&qword_100228AF8, &type metadata accessor for UUID);
            v24 = sub_1001D23A0();
            v66 = v20;
            v26 = v25;
            (*v64)(v21, v22);
            v67 = *v74;
            (*v74)(v18, v78);
            v27 = sub_1000954E0(v24, v26, v83);

            *(v23 + 4) = v27;
            *(v23 + 12) = 2080;
            v28 = sub_1001D0800();
            v30 = v29;
            v31 = *v70;
            (*v70)(v80, v66);
            v32 = sub_1000954E0(v28, v30, v83);

            *(v23 + 14) = v32;
            *(v23 + 22) = 1024;
            LODWORD(v32) = sub_1001D0810() & 1;
            v31(v68, v66);
            *(v23 + 24) = v32;
            _os_log_impl(&_mh_execute_header, v15, v69, "%s %s saved: %{BOOL}d", v23, 0x1Cu);
            swift_arrayDestroy();
            v10 = v67;
          }

          else
          {
            v9 = *v70;
            (*v70)(v0[89], v0[87]);

            v9(v80, v20);
            v10 = *v74;
            (*v74)(v18, v78);
          }

          v8 += v72;
          --v7;
        }

        while (v7);

        v1 = v59;
        v2 = v63;
        v5 = v74;
      }

      else
      {

        v10 = *v5;
      }

      ++v2;
      v10(v0[94], v0[91]);
      if (v2 == v62)
      {
        v1 = v0[108];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v33 = v0[109];
    v34 = v0[83];
    v0[73] = v1;
    sub_100011AC0(&qword_100229530, &qword_1001D6858);
    sub_100088DD8();
    v35 = sub_1001CF800();
    v37 = v0[108];
    v38 = v0[106];
    if (v33)
    {
      v39 = v0[106];

      v40 = v0[105];
      v41 = v0[104];
      v42 = v0[101];
      v43 = v0[98];
      v44 = v0[97];
      v45 = v0[94];
      v46 = v0[93];
      v47 = v0[90];
      v48 = v0[89];
      v81 = v0[86];
    }

    else
    {
      v50 = v0[105];
      v51 = v0[104];
      v52 = v0[101];
      v53 = v0[98];
      v54 = v0[97];
      v73 = v0[94];
      v75 = v0[93];
      v77 = v0[90];
      v79 = v0[89];
      v82 = v0[86];
      v55 = v0[74];
      v56 = v35;
      v57 = v36;

      *v55 = v56;
      v55[1] = v57;
    }

    v49 = v0[1];

    v49();
  }
}

uint64_t sub_100076B40()
{
  v1 = v0[106];

  v14 = v0[109];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[101];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[94];
  v8 = v0[93];
  v9 = v0[90];
  v10 = v0[89];
  v11 = v0[86];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100076C40(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 1000) = v3;
  *(v4 + 1376) = a3;
  *(v4 + 992) = a2;
  *(v4 + 984) = a1;
  v5 = sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  *(v4 + 1008) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 1016) = swift_task_alloc();
  *(v4 + 1024) = swift_task_alloc();
  v7 = sub_1001D0180();
  *(v4 + 1032) = v7;
  v8 = *(v7 - 8);
  *(v4 + 1040) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 1048) = swift_task_alloc();
  v10 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  *(v4 + 1056) = swift_task_alloc();
  v11 = sub_1001D20D0();
  *(v4 + 1064) = v11;
  v12 = *(v11 - 8);
  *(v4 + 1072) = v12;
  *(v4 + 1080) = *(v12 + 64);
  *(v4 + 1088) = swift_task_alloc();
  *(v4 + 1096) = swift_task_alloc();
  v13 = sub_1001D20F0();
  *(v4 + 1104) = v13;
  v14 = *(v13 - 8);
  *(v4 + 1112) = v14;
  *(v4 + 1120) = *(v14 + 64);
  *(v4 + 1128) = swift_task_alloc();
  *(v4 + 1136) = swift_task_alloc();
  v15 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  *(v4 + 1144) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v4 + 1152) = swift_task_alloc();
  v17 = sub_1001D00F0();
  *(v4 + 1160) = v17;
  v18 = *(v17 - 8);
  *(v4 + 1168) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 1176) = swift_task_alloc();
  *(v4 + 1184) = swift_task_alloc();
  v20 = sub_1001CFD60();
  *(v4 + 1192) = v20;
  v21 = *(v20 - 8);
  *(v4 + 1200) = v21;
  v22 = *(v21 + 64) + 15;
  *(v4 + 1208) = swift_task_alloc();
  *(v4 + 1216) = swift_task_alloc();
  *(v4 + 1224) = swift_task_alloc();
  v23 = sub_1001D0040();
  *(v4 + 1232) = v23;
  v24 = *(v23 - 8);
  *(v4 + 1240) = v24;
  v25 = *(v24 + 64) + 15;
  *(v4 + 1248) = swift_task_alloc();
  *(v4 + 1256) = swift_task_alloc();
  *(v4 + 1264) = swift_task_alloc();
  v26 = sub_1001CFFB0();
  *(v4 + 1272) = v26;
  v27 = *(v26 - 8);
  *(v4 + 1280) = v27;
  v28 = *(v27 + 64) + 15;
  *(v4 + 1288) = swift_task_alloc();
  *(v4 + 1296) = swift_task_alloc();

  return _swift_task_switch(sub_100077060, 0, 0);
}

uint64_t sub_100077060()
{
  v1 = v0[124];
  v2 = *(v1 + 16);
  v0[163] = v2;
  v3 = *(v1 + 24);
  v0[164] = v3;
  if (v3 >> 60 == 15)
  {
    sub_100089BE4();
    swift_allocError();
    *v4 = 5913;
    *(v4 + 8) = &_swiftEmptyArrayStorage;
    swift_willThrow();
    v6 = v0[162];
    v7 = v0[161];
    v8 = v0[158];
    v9 = v0[157];
    v10 = v0[156];
    v11 = v0[153];
    v12 = v0[152];
    v13 = v0[151];
    v14 = v0[148];
    v15 = v0[147];
    v21 = v0[144];
    v22 = v0[142];
    v23 = v0[141];
    v24 = v0[137];
    v25 = v0[136];
    v26 = v0[132];
    v27 = v0[131];
    v28 = v0[128];
    v29 = v0[127];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v5 = v0[161];
    sub_100089C38(v2, v3);
    sub_100012038(v2, v3);
    sub_1001CFFA0();
    v18 = v0[142];
    v19 = v0[125];
    (*(v0[160] + 32))(v0[162], v0[161], v0[159]);
    v20 = swift_task_alloc();
    v0[165] = v20;
    *(v20 + 16) = v19;
    sub_1001D20E0();

    return _swift_task_switch(sub_100077340, 0, 0);
  }
}

uint64_t sub_100077340()
{
  v1 = v0[142];
  v22 = v0[141];
  v23 = v0[140];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[136];
  v24 = v0[135];
  v25 = v0[165];
  v6 = v0[134];
  v7 = v0[133];
  v8 = v0[132];
  sub_10008A830(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  v0[121] = 0x158E460913D00000;
  v0[122] = 1;
  sub_10008A830(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2100();
  v9 = *(v6 + 8);
  v0[166] = v9;
  v0[167] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 16))(v22, v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = (v23 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v2 + 32))(v13 + v11, v22, v3);
  (*(v6 + 32))(v13 + v12, v5, v7);
  v14 = sub_10008F210(0, 0, v8, &unk_1001D6BC0, v13);
  v0[168] = v14;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_100089C4C;
  v15[4] = v25;
  v16 = swift_allocObject();
  v0[169] = v16;
  *(v16 + 16) = &unk_1001DEF90;
  *(v16 + 24) = v15;

  swift_asyncLet_begin();
  v17 = swift_task_alloc();
  v0[170] = v17;
  *v17 = v0;
  v17[1] = sub_1000776DC;
  v18 = v0[162];
  v19 = v0[144];
  v20 = v0[125];

  return sub_100078A9C(v19, v20, v18);
}

uint64_t sub_1000776DC()
{
  v2 = *(*v1 + 1360);
  v5 = *v1;
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v3 = sub_1000785AC;
  }

  else
  {
    v3 = sub_1000777F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000777F0()
{
  v1 = *(v0 + 1344);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_1000778A4()
{
  v1 = v0[169];
  v2 = v0[168];
  v3 = v0[167];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[142];
  v7 = v0[139];
  v8 = v0[138];
  v9 = v0[137];
  v10 = v0[133];

  v4(v9, v10);
  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_100077984, 0, 0);
}

uint64_t sub_100077984()
{
  v190 = v0;
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1168);
  v174 = *(v0 + 1160);
  v180 = *(v0 + 1184);
  v5 = *(v0 + 1152);
  v6 = *(v0 + 1144);
  v186 = *(v0 + 1048);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1032);
  v9 = *(v6 + 48);
  v10 = *(v6 + 64);
  (*(*(v0 + 1240) + 32))(*(v0 + 1264), v5, *(v0 + 1232));
  (*(v2 + 32))(v1, v5 + v9, v3);
  (*(v4 + 32))(v180, v5 + v10, v174);
  (*(v7 + 104))(v186, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v8);
  *(v0 + 912) = v8;
  *(v0 + 920) = sub_10008A830(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags);
  v11 = sub_10003B47C((v0 + 888));
  (*(v7 + 16))(v11, v186, v8);
  LOBYTE(v1) = sub_1001CFEC0();
  (*(v7 + 8))(v186, v8);
  sub_100011CF0((v0 + 888));
  if ((v1 & 1) == 0 || (v12 = *(v0 + 1368), v13 = *(v0 + 1000), sub_10007974C(*(v0 + 1184), *(v0 + 1376) & 1), !v12))
  {
    v34 = *(v0 + 1184);
    v35 = sub_1001D00C0();
    if (v36)
    {
      v37 = *(v0 + 992);
      v38 = *(v37 + 72);
      if (!v38 || v35 == *(v37 + 64) && v36 == v38)
      {
      }

      else
      {
        v109 = sub_1001D2470();

        if ((v109 & 1) == 0)
        {
          v110 = *(v0 + 1000);
          v111 = *(v0 + 992);
          sub_100089C90(v111, v0 + 792);
          v112 = sub_1001D0E50();
          v113 = sub_1001D1DE0();
          sub_10005AF88(v111);
          if (os_log_type_enabled(v112, v113))
          {
            v114 = *(v0 + 992);
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v189[0] = v116;
            *v115 = 136315138;
            *(v115 + 4) = sub_1000954E0(*v114, *(v114 + 8), v189);
            _os_log_impl(&_mh_execute_header, v112, v113, "RoutingHint mismatch detected for attestation=%s", v115, 0xCu);
            sub_100011CF0(v116);
          }

          v117 = *(v0 + 1312);
          v118 = *(v0 + 1304);
          v14 = *(v0 + 1280);
          v175 = *(v0 + 1272);
          v181 = *(v0 + 1296);
          v119 = *(v0 + 1240);
          v169 = *(v0 + 1232);
          v173 = *(v0 + 1264);
          v120 = *(v0 + 1200);
          v161 = *(v0 + 1192);
          v165 = *(v0 + 1224);
          v121 = *(v0 + 1184);
          v122 = *(v0 + 1168);
          v123 = *(v0 + 1160);
          sub_100089BE4();
          swift_allocError();
          *v124 = 5915;
          *(v124 + 8) = &_swiftEmptyArrayStorage;
          swift_willThrow();
          sub_10002683C(v118, v117);
          (*(v122 + 8))(v121, v123);
          (*(v120 + 8))(v165, v161);
          (*(v119 + 8))(v173, v169);
          goto LABEL_4;
        }
      }
    }

    v39 = *(v0 + 1256);
    v40 = *(v0 + 1240);
    v41 = *(v0 + 1232);
    v183 = *(v0 + 1216);
    v187 = *(v0 + 1224);
    v42 = *(v0 + 1200);
    v172 = *(v0 + 1264);
    v177 = *(v0 + 1192);
    v43 = *(v0 + 1184);
    v44 = *(v0 + 1176);
    v45 = *(v0 + 1168);
    v46 = *(v0 + 1160);
    sub_10001208C(*(v0 + 1000), *(v0 + 1016), &qword_100229520, &unk_1001DEF70);
    v163 = *(v40 + 16);
    v163(v39, v172, v41);
    (*(v45 + 16))(v44, v43, v46);
    v47 = v183;
    v184 = *(v42 + 16);
    v184(v47, v187, v177);
    v48 = sub_1001D0E50();
    v49 = sub_1001D1E00();
    v167 = v48;
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 1256);
    if (v50)
    {
      v52 = *(v0 + 1248);
      v53 = *(v0 + 1240);
      v54 = *(v0 + 1232);
      v151 = *(v0 + 1216);
      v55 = *(v0 + 1200);
      v145 = *(v0 + 1208);
      v147 = *(v0 + 1192);
      v143 = *(v0 + 1176);
      v156 = *(v0 + 1168);
      v158 = *(v0 + 1160);
      v56 = *(v0 + 1016);
      v57 = *(v0 + 1008);
      v58 = swift_slowAlloc();
      v189[0] = swift_slowAlloc();
      *v58 = 136446978;
      v59 = v56 + *(v57 + 36);
      v60 = sub_1001D02B0();
      v149 = v49;
      v62 = v61;
      sub_100011F00(v56, &qword_100229520, &unk_1001DEF70);
      v63 = sub_1000954E0(v60, v62, v189);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2080;
      v163(v52, v51, v54);
      v64 = sub_1001D1820();
      v66 = v65;
      v178 = *(v53 + 8);
      v178(v51, v54);
      v67 = sub_1000954E0(v64, v66, v189);

      *(v58 + 14) = v67;
      *(v58 + 22) = 2080;
      sub_1001D00D0();
      sub_10008A830(&qword_100227A40, &type metadata accessor for Date);
      v68 = sub_1001D23A0();
      v70 = v69;
      v71 = *(v55 + 8);
      v71(v145, v147);
      v72 = v158;
      v159 = *(v156 + 8);
      v159(v143, v72);
      v73 = sub_1000954E0(v68, v70, v189);

      *(v58 + 24) = v73;
      *(v58 + 32) = 2080;
      v74 = sub_1001D23A0();
      v76 = v75;
      v164 = v71;
      v71(v151, v147);
      v77 = sub_1000954E0(v74, v76, v189);

      *(v58 + 34) = v77;
      _os_log_impl(&_mh_execute_header, v167, v149, "verified attestation bundle environment=%{public}s publicKey=%s keyExpiration=%s attestationExpiry=%s", v58, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v78 = *(v0 + 1240);
      v179 = *(v0 + 1232);
      v79 = *(v0 + 1216);
      v80 = *(v0 + 1200);
      v81 = *(v0 + 1192);
      v82 = *(v0 + 1176);
      v83 = *(v0 + 1168);
      v84 = *(v0 + 1160);
      v85 = *(v0 + 1016);

      v164 = *(v80 + 8);
      v164(v79, v81);
      v159 = *(v83 + 8);
      v159(v82, v84);
      v86 = v179;
      v178 = *(v78 + 8);
      v178(v51, v86);
      sub_100011F00(v85, &qword_100229520, &unk_1001DEF70);
    }

    v128 = *(v0 + 1304);
    v129 = *(v0 + 1312);
    v134 = *(v0 + 1296);
    v135 = *(v0 + 1288);
    v132 = *(v0 + 1280);
    v133 = *(v0 + 1272);
    v87 = *(v0 + 1264);
    v136 = *(v0 + 1256);
    v137 = *(v0 + 1248);
    v131 = *(v0 + 1232);
    v88 = *(v0 + 1224);
    v138 = *(v0 + 1216);
    v139 = *(v0 + 1208);
    v89 = *(v0 + 1192);
    v90 = *(v0 + 1184);
    v125 = *(v0 + 1160);
    v140 = *(v0 + 1176);
    v141 = *(v0 + 1152);
    v142 = *(v0 + 1136);
    v144 = *(v0 + 1128);
    v146 = *(v0 + 1096);
    v148 = *(v0 + 1088);
    v150 = *(v0 + 1056);
    v152 = *(v0 + 1048);
    v154 = *(v0 + 1024);
    v168 = *(v0 + 1016);
    v91 = *(v0 + 1000);
    v130 = *(v0 + 1376);
    v92 = *(v0 + 992);
    v93 = *(v0 + 984);
    v94 = sub_100079920();
    v126 = v95;
    v127 = v94;
    v96 = type metadata accessor for ValidatedAttestation();
    v184(v93 + v96[7], v88, v89);
    v97 = sub_1001D00E0();
    v185 = v98;
    v188 = v97;
    v99 = sub_1001D00C0();
    v101 = v100;
    sub_10002683C(v128, v129);
    v159(v90, v125);
    v164(v88, v89);
    v178(v87, v131);
    v102 = v92[1];
    *v93 = *v92;
    *(v93 + 16) = v102;
    v103 = v92[2];
    v104 = v92[3];
    v105 = v92[5];
    *(v93 + 64) = v92[4];
    *(v93 + 80) = v105;
    *(v93 + 32) = v103;
    *(v93 + 48) = v104;
    *(v93 + 96) = v130 & 1;
    *(v93 + 104) = v127;
    *(v93 + 112) = v126;
    v106 = (v93 + v96[8]);
    *v106 = v188;
    v106[1] = v185;
    v107 = (v93 + v96[9]);
    *v107 = v99;
    v107[1] = v101;
    sub_100089C90(v92, v0 + 696);
    (*(v132 + 8))(v134, v133);

    v33 = *(v0 + 8);
    goto LABEL_14;
  }

  v181 = *(v0 + 1296);
  v14 = *(v0 + 1280);
  v170 = *(v0 + 1264);
  v175 = *(v0 + 1272);
  v15 = *(v0 + 1240);
  v16 = *(v0 + 1232);
  v17 = *(v0 + 1224);
  v18 = *(v0 + 1200);
  v19 = *(v0 + 1192);
  v20 = *(v0 + 1184);
  v21 = *(v0 + 1168);
  v22 = *(v0 + 1160);
  sub_10002683C(*(v0 + 1304), *(v0 + 1312));
  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v170, v16);
LABEL_4:
  (*(v14 + 8))(v181, v175);
  v23 = *(v0 + 1296);
  v24 = *(v0 + 1288);
  v25 = *(v0 + 1264);
  v26 = *(v0 + 1256);
  v27 = *(v0 + 1248);
  v28 = *(v0 + 1224);
  v29 = *(v0 + 1216);
  v30 = *(v0 + 1208);
  v31 = *(v0 + 1184);
  v32 = *(v0 + 1176);
  v153 = *(v0 + 1152);
  v155 = *(v0 + 1136);
  v157 = *(v0 + 1128);
  v160 = *(v0 + 1096);
  v162 = *(v0 + 1088);
  v166 = *(v0 + 1056);
  v171 = *(v0 + 1048);
  v176 = *(v0 + 1024);
  v182 = *(v0 + 1016);

  v33 = *(v0 + 8);
LABEL_14:

  return v33();
}

uint64_t sub_1000785AC()
{
  v1 = *(v0 + 1344);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_100078660()
{
  v1 = v0[169];
  v2 = v0[168];
  v3 = v0[167];
  v4 = v0[166];
  v5 = v0[142];
  v6 = v0[139];
  v7 = v0[138];
  v8 = v0[137];
  v9 = v0[133];

  v4(v8, v9);
  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10007872C, 0, 0);
}

uint64_t sub_10007872C()
{
  v49 = v0;
  v1 = v0[171];
  v2 = v0[165];
  v3 = v0[128];
  v4 = v0[125];

  sub_10001208C(v4, v3, &qword_100229520, &unk_1001DEF70);
  swift_errorRetain();
  v5 = sub_1001D0E50();
  v6 = sub_1001D1DE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[171];
    v8 = v0[128];
    v9 = v0[126];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v10 = 136446466;
    v13 = v8 + *(v9 + 36);
    v14 = sub_1001D02B0();
    v16 = v15;
    sub_100011F00(v8, &qword_100229520, &unk_1001DEF70);
    v17 = sub_1000954E0(v14, v16, &v48);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "unable to verify attestation, environment=%{public}s error=%@", v10, 0x16u);
    sub_100011F00(v11, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v12);
  }

  else
  {
    v19 = v0[128];

    sub_100011F00(v19, &qword_100229520, &unk_1001DEF70);
  }

  v20 = v0[171];
  v21 = v0[164];
  v22 = v0[163];
  v23 = v0[162];
  v24 = v0[160];
  v25 = v0[159];
  swift_willThrow();
  sub_10002683C(v22, v21);
  (*(v24 + 8))(v23, v25);
  v47 = v0[171];
  v26 = v0[162];
  v27 = v0[161];
  v28 = v0[158];
  v29 = v0[157];
  v30 = v0[156];
  v31 = v0[153];
  v32 = v0[152];
  v33 = v0[151];
  v34 = v0[148];
  v35 = v0[147];
  v38 = v0[144];
  v39 = v0[142];
  v40 = v0[141];
  v41 = v0[137];
  v42 = v0[136];
  v43 = v0[132];
  v44 = v0[131];
  v45 = v0[128];
  v46 = v0[127];

  v36 = v0[1];

  return v36();
}