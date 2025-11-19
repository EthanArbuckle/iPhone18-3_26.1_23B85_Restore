void sub_26D167ECC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_26D167F34(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_26D1682B4();
      result = sub_26D1742D4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26D167F90(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26D1777C0;
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

void *sub_26D167FF4(uint64_t a1, uint64_t a2)
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

  sub_26D164FC0();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_26D168068(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_26D174584();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_26D167FF4(v2, 0);

    v1 = sub_26D16A56C(&v5, v3 + 4, v2, v1);
    sub_26D168350();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_26D168118(uint64_t a1)
{
  if ((sub_26D14CE24)())
  {
    sub_26D16A4FC();
    v2 = sub_26D174614();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v19 = sub_26D14CE24(a1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_26D1601E0(v3, v18 == 0, a1);
      result = v18 ? MEMORY[0x26D6B38E0](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      result = sub_26D174494();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        sub_26D1682B4();
        v14 = *(*(v2 + 48) + 8 * v10);
        v15 = sub_26D1744A4();

        if (v15)
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v16 = *(v2 + 16);
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_26D1682B4()
{
  result = qword_2812B75A8;
  if (!qword_2812B75A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812B75A8);
  }

  return result;
}

unint64_t sub_26D1682F8()
{
  result = qword_2812B75A0;
  if (!qword_2812B75A0)
  {
    sub_26D1682B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B75A0);
  }

  return result;
}

uint64_t sub_26D168358(void *a1, void *a2)
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

    v9 = sub_26D174594();

    if (v9)
    {

      sub_26D1682B4();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_26D174584();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_26D16855C(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_26D16870C(v18 + 1);
        }

        v19 = v8;
        sub_26D168924(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_26D1682B4();
    v11 = *(v6 + 40);
    v12 = sub_26D174494();
    v13 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v14 = v12 & v13;
      if (((*(v6 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
      {
        v20 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v3;
        v19 = a2;
        sub_26D1689A8(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v25;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_26D1744A4();

      if (v16)
      {
        break;
      }

      v12 = v14 + 1;
    }

    v22 = *(*(v6 + 48) + 8 * v14);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  return result;
}

uint64_t sub_26D16855C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_26D16A4FC();
    v2 = sub_26D174604();
    v16 = v2;
    sub_26D174544();
    while (1)
    {
      if (!sub_26D1745B4())
      {

        return v2;
      }

      sub_26D1682B4();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_26D16870C(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_26D174494();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_26D16870C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_26D16A4FC();
  result = sub_26D1745F4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_26D167F90(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_26D174494();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_26D168924(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_26D174494();
  v5 = -1 << *(a2 + 32);
  result = sub_26D174524();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26D1689A8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26D16870C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_26D168C34(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_26D174494();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_26D1682B4();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = sub_26D1744A4();

        if (v16)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26D168AF0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_26D1747F4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

id sub_26D168AF0()
{
  v1 = v0;
  sub_26D16A4FC();
  v2 = *v0;
  v3 = sub_26D1745E4();
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

uint64_t sub_26D168C34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_26D16A4FC();
  result = sub_26D1745F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_26D174494();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

          v2 = v26;
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

void sub_26D168E38(uint64_t *a1, void *a2, char a3)
{
  v5 = *a1;
  v6 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_26D16A744(v5);
    *a1 = v5;
  }

  v8 = *(v5 + 16);
  v10[0] = v5 + 32;
  v10[1] = v8;
  v9 = v6;
  sub_26D168EE8(v10, v9, a3 & 1);
  sub_26D174664();
}

void sub_26D168EE8(uint64_t a1, void *a2, char a3)
{
  v6 = *(a1 + 8);
  v7 = a2;
  v8 = sub_26D1747B4();
  if (v8 < v6)
  {
    v9 = v8;
    v10 = sub_26D167F34(v6 / 2);
    v12[0] = v11;
    v12[1] = (v6 / 2);
    v7 = v7;
    sub_26D1691AC(v12, v13, a1, v9, v7, a3 & 1);
    if (v3)
    {
      if (v6 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v6 < -1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6)
  {
    sub_26D169014(0, v6, 1, a1, v7, a3 & 1);
  }

  else
  {
  }
}

void sub_26D169014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _BYTE *a5, char a6)
{
  if (a3 != a2)
  {
    v32 = *a4;
    v31 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_orientation;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
    while (2)
    {
      v29 = a3;
      v9 = *(v32 + 8 * a3);
      v27 = v8;
      v28 = v7;
      do
      {
        v10 = *v7;
        v11 = a5[v31];
        v12 = v9;
        v13 = v10;
        v14 = [a5 view];
        [v12 locationInView_];
        v16 = v15;
        v18 = v17;

        v19 = [a5 view];
        [v13 locationInView_];
        v21 = v20;
        v23 = v22;

        if (v11)
        {
          if (v18 >= v23)
          {
            break;
          }
        }

        else if (a6)
        {
          if (v21 >= v16)
          {
            break;
          }
        }

        else if (v16 >= v21)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        v24 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v24;
        v7 -= 8;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v29 + 1;
      v7 = v28 + 8;
      v8 = v27 - 1;
      if (v29 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_26D1691AC(char **a1, uint64_t a2, void ***a3, uint64_t a4, void *a5, char a6)
{
  v6 = a5;
  if (a3[1] < 1)
  {
    v113 = a5;
    v11 = MEMORY[0x277D84F90];
LABEL_103:
    v133 = *a1;
    if (!*a1)
    {
      goto LABEL_148;
    }

    v136 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_105;
    }

    goto LABEL_142;
  }

  v137 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_orientation;
  v7 = a3[1];
  v8 = a5;
  v9 = v7;
  v140 = v8;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      v18 = (v10 + 1);
    }

    else
    {
      v133 = v9;
      v13 = *a3;
      v142 = (*a3)[v12];
      v141 = v13[v10];
      v14 = v141;
      v15 = v142;
      v16 = v14;
      LODWORD(v136) = sub_26D167C94(&v142, &v141, v140, a6 & 1);
      if (v134)
      {

LABEL_116:

        return;
      }

      v126 = v11;

      v17 = &v13[v10 + 2];
      v18 = v133;
      while (v12 + 1 < v18)
      {
        v19 = *(v17 - 1);
        v20 = *(v6 + v137);
        v21 = *v17;
        v22 = v19;
        if (v20)
        {
          v23 = [v140 view];
          v11 = &off_279D93000;
          [v21 locationInView_];
          v25 = v24;

          v26 = [v140 view];
          [v22 locationInView_];
          v28 = v27;

          v6 = a5;
          v18 = v133;
          if (((v136 ^ (v25 >= v28)) & 1) == 0)
          {
            v18 = (v12 + 1);
            break;
          }
        }

        else
        {
          v29 = [v140 view];
          [v21 locationInView_];
          v31 = v30;

          v32 = [v140 view];
          [v22 locationInView_];
          v34 = v33;

          if (a6)
          {
            v6 = a5;
            v18 = v133;
            if ((v136 & 1) == v34 >= v31)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v6 = a5;
            v18 = v133;
            if (((v136 ^ (v31 >= v34)) & 1) == 0)
            {
LABEL_16:
              v18 = (v12 + 1);
              break;
            }
          }
        }

        ++v17;
        ++v12;
      }

      v35 = v10;
      if ((v136 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v18 < v10)
      {
        goto LABEL_141;
      }

      if (v10 < v18)
      {
        v36 = 8 * v18 - 8;
        v37 = v18;
        v38 = v10;
        do
        {
          if (v38 != --v18)
          {
            v39 = *a3;
            if (!*a3)
            {
              goto LABEL_146;
            }

            v40 = v39[v35];
            v39[v35] = *(v39 + v36);
            *(v39 + v36) = v40;
          }

          ++v38;
          v36 -= 8;
          ++v35;
        }

        while (v38 < v18);
        v11 = v126;
        v18 = v37;
      }

      else
      {
LABEL_26:
        v11 = v126;
      }
    }

    v41 = a3[1];
    if (v18 >= v41)
    {
      goto LABEL_50;
    }

    v42 = v18;
    v83 = __OFSUB__(v18, v10);
    v43 = &v18[-v10];
    if (v83)
    {
      goto LABEL_138;
    }

    if (v43 < a4)
    {
      break;
    }

    v18 = v42;
LABEL_50:
    if (v18 < v10)
    {
      goto LABEL_137;
    }

    v129 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26D153668(0, *(v11 + 2) + 1, 1, v11);
      v11 = v111;
    }

    v65 = *(v11 + 2);
    v64 = *(v11 + 3);
    v66 = v65 + 1;
    v67 = v129;
    if (v65 >= v64 >> 1)
    {
      sub_26D153668(v64 > 1, v65 + 1, 1, v11);
      v67 = v129;
      v11 = v112;
    }

    *(v11 + 2) = v66;
    v68 = v11 + 32;
    v69 = &v11[16 * v65 + 32];
    *v69 = v10;
    *(v69 + 1) = v67;
    v133 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (v65)
    {
      while (1)
      {
        v70 = v66 - 1;
        v71 = &v68[16 * v66 - 16];
        v72 = &v11[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v73 = *(v11 + 4);
          v74 = *(v11 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_70:
          if (v76)
          {
            goto LABEL_124;
          }

          v88 = *v72;
          v87 = *(v72 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_127;
          }

          v92 = *(v71 + 1);
          v93 = v92 - *v71;
          if (__OFSUB__(v92, *v71))
          {
            goto LABEL_130;
          }

          if (__OFADD__(v90, v93))
          {
            goto LABEL_132;
          }

          if (v90 + v93 >= v75)
          {
            if (v75 < v93)
            {
              v70 = v66 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v66 < 2)
        {
          goto LABEL_126;
        }

        v95 = *v72;
        v94 = *(v72 + 1);
        v83 = __OFSUB__(v94, v95);
        v90 = v94 - v95;
        v91 = v83;
LABEL_85:
        if (v91)
        {
          goto LABEL_129;
        }

        v97 = *v71;
        v96 = *(v71 + 1);
        v83 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v83)
        {
          goto LABEL_131;
        }

        if (v98 < v90)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v70 - 1 >= v66)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v102 = *a3;
        if (!*a3)
        {
          goto LABEL_144;
        }

        v103 = &v68[16 * v70 - 16];
        v104 = *v103;
        v105 = v70;
        v106 = &v68[16 * v70];
        v6 = *(v106 + 1);
        v107 = &v102[*v103];
        v108 = &v102[*v106];
        v136 = &v102[v6];
        v109 = v140;
        sub_26D169B0C(v107, v108, v136, v133, v109, a6 & 1);
        if (v134)
        {

          goto LABEL_115;
        }

        if (v6 < v104)
        {
          goto LABEL_119;
        }

        v110 = *(v11 + 2);
        if (v105 > v110)
        {
          goto LABEL_120;
        }

        *v103 = v104;
        v103[1] = v6;
        if (v105 >= v110)
        {
          goto LABEL_121;
        }

        v66 = v110 - 1;
        memmove(v106, v106 + 16, 16 * (v110 - 1 - v105));
        *(v11 + 2) = v110 - 1;
        v6 = a5;
        v68 = v11 + 32;
        if (v110 <= 2)
        {
          goto LABEL_99;
        }
      }

      v77 = &v68[16 * v66];
      v78 = *(v77 - 8);
      v79 = *(v77 - 7);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_122;
      }

      v82 = *(v77 - 6);
      v81 = *(v77 - 5);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_123;
      }

      v84 = *(v72 + 1);
      v85 = v84 - *v72;
      if (__OFSUB__(v84, *v72))
      {
        goto LABEL_125;
      }

      v83 = __OFADD__(v75, v85);
      v86 = v75 + v85;
      if (v83)
      {
        goto LABEL_128;
      }

      if (v86 >= v80)
      {
        v100 = *v71;
        v99 = *(v71 + 1);
        v83 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v83)
        {
          goto LABEL_136;
        }

        if (v75 < v101)
        {
          v70 = v66 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v9 = a3[1];
    v10 = v129;
    if (v129 >= v9)
    {
      goto LABEL_103;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_139;
  }

  if (v10 + a4 < v41)
  {
    v41 = (v10 + a4);
  }

  if (v41 < v10)
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    v11 = sub_26D169E80(v11);
LABEL_105:
    v115 = v11 + 16;
    v114 = *(v11 + 2);
    for (i = v11; ; v11 = i)
    {
      if (v114 < 2)
      {

        return;
      }

      v116 = *a3;
      if (!*a3)
      {
        goto LABEL_145;
      }

      v117 = &v11[16 * v114];
      v118 = *v117;
      v6 = v115;
      v119 = &v115[16 * v114];
      v120 = *(v119 + 1);
      v140 = &v116[*v117];
      v138 = &v116[*v119];
      v121 = &v116[v120];
      v11 = v136;
      sub_26D169B0C(v140, v138, v121, v133, v11, a6 & 1);
      if (v134)
      {
        break;
      }

      if (v120 < v118)
      {
        goto LABEL_133;
      }

      if (v114 - 2 >= *v6)
      {
        goto LABEL_134;
      }

      v115 = v6;
      *v117 = v118;
      *(v117 + 1) = v120;
      v122 = *v6 - v114;
      if (*v6 < v114)
      {
        goto LABEL_135;
      }

      v114 = *v6 - 1;
      memmove(v119, v119 + 16, 16 * v122);
      *v6 = v114;
    }

LABEL_115:
    v6 = a5;
    goto LABEL_116;
  }

  v18 = v42;
  v128 = v41;
  if (v42 == v41)
  {
    goto LABEL_50;
  }

  v136 = *a3;
  v124 = v10;
  v44 = v10 - v42;
  v45 = &(*a3)[v42 - 1];
LABEL_36:
  v133 = v18;
  v46 = v136[v18];
  v130 = v44;
  v131 = v45;
  while (1)
  {
    v47 = *v45;
    v48 = *(v6 + v137);
    v49 = v46;
    v50 = v47;
    v51 = [v140 view];
    [v49 locationInView_];
    v53 = v52;
    v55 = v54;

    v56 = [v140 view];
    [v50 locationInView_];
    v58 = v57;
    v60 = v59;

    if (v48)
    {
      v61 = v55 < v60;
    }

    else if (a6)
    {
      v61 = v58 < v53;
    }

    else
    {
      v61 = v53 < v58;
    }

    v6 = a5;
    if (!v61)
    {
LABEL_47:
      v18 = v133 + 1;
      v45 = v131 + 8;
      v44 = v130 - 1;
      if (v133 + 1 == v128)
      {
        v18 = v128;
        v10 = v124;
        goto LABEL_50;
      }

      goto LABEL_36;
    }

    if (!v136)
    {
      break;
    }

    v62 = *v45;
    v46 = *(v45 + 8);
    *v45 = v46;
    *(v45 + 8) = v62;
    v45 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:

  __break(1u);
LABEL_145:

  __break(1u);
LABEL_146:

  __break(1u);
LABEL_147:

  __break(1u);
LABEL_148:

  __break(1u);
}

uint64_t sub_26D169B0C(char *a1, char *a2, void **a3, char *a4, _BYTE *a5, char a6)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 8;
  v11 = (a3 - a2) / 8;
  if (v10 >= v11)
  {
    sub_26D14E10C(a2, (a3 - a2) / 8, a4);
    v12 = &v6[v11];
    v56 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_orientation;
    v57 = v6;
    v65 = v9;
LABEL_19:
    v32 = v8;
    v62 = v8 - 1;
    v33 = v7 - 1;
    v59 = v8;
    while (v12 > v6 && v32 > v9)
    {
      v35 = v33;
      v67 = v12;
      v36 = v12 - 1;
      v37 = *v62;
      v38 = a5[v56];
      v39 = *(v12 - 1);
      v40 = v37;
      v41 = [a5 view];
      [v39 locationInView_];
      v43 = v42;
      v45 = v44;

      v46 = [a5 view];
      [v40 locationInView_];
      v48 = v47;
      v50 = v49;

      if (v38)
      {
        v51 = v45 < v50;
        v9 = v65;
        v7 = v35;
      }

      else
      {
        v7 = v35;
        if (a6)
        {
          v51 = v48 < v43;
        }

        else
        {
          v51 = v43 < v48;
        }

        v9 = v65;
      }

      v8 = v62;
      v32 = v59;
      v12 = v67;
      v52 = v7 + 1;
      if (v51)
      {
        v6 = v57;
        if (v52 != v59)
        {
          *v7 = *v62;
        }

        goto LABEL_19;
      }

      if (v67 != v52)
      {
        *v7 = *v36;
      }

      v33 = v7 - 1;
      v12 = v36;
      v6 = v57;
    }
  }

  else
  {
    sub_26D14E10C(a1, (a2 - a1) / 8, a4);
    v12 = &v6[v10];
    v58 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_orientation;
    v61 = v7;
    v66 = v12;
    while (v6 < v12 && v8 < v7)
    {
      v64 = v9;
      v14 = v6;
      v15 = *v6;
      v16 = a5[v58];
      v17 = *v8;
      v18 = v15;
      v19 = [a5 view];
      [v17 locationInView_];
      v21 = v20;
      v23 = v22;

      v24 = [a5 view];
      [v18 locationInView_];
      v26 = v25;
      v28 = v27;

      if (v16)
      {
        v29 = v23 < v28;
      }

      else if (a6)
      {
        v29 = v26 < v21;
      }

      else
      {
        v29 = v21 < v26;
      }

      v6 = v14;
      v12 = v66;
      if (v29)
      {
        v30 = v8;
        v31 = v64 == v8++;
      }

      else
      {
        v30 = v14;
        v31 = v64 == v14;
        v6 = v14 + 1;
      }

      v7 = v61;
      if (!v31)
      {
        *v64 = *v30;
      }

      v9 = (v64 + 1);
    }

    v32 = v9;
  }

  v53 = v12 - v6;
  if (v32 != v6 || v32 >= &v6[v53])
  {
    memmove(v32, v6, 8 * v53);
  }

  return 1;
}

char *sub_26D169E94(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D16AA38();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_26D169F88(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_26D1682B4();
    v9 = *(v4 + 40);
    v10 = sub_26D174494();
    v11 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = sub_26D1744A4();

      if (v14)
      {
        v15 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v2;
        v19 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26D168AF0();
          v17 = v19;
        }

        v8 = *(*(v17 + 48) + 8 * v12);
        sub_26D16A368(v12);
        *v2 = v19;
        return v8;
      }

      v10 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  v6 = a1;
  v7 = sub_26D1745C4();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_26D16A224();

  return v8;
}

uint64_t initializeBufferWithCopyOfBuffer for TapDragGestureRecognizer.LocationType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
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

uint64_t getEnumTagSinglePayload for TapDragGestureRecognizer.LocationType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TapDragGestureRecognizer.LocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_26D16A224()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_26D174584();
  v4 = swift_unknownObjectRetain();
  v5 = sub_26D16855C(v4, v3);
  v14 = v5;
  v6 = *(v5 + 40);

  v7 = sub_26D174494();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    sub_26D1682B4();
    v10 = *(*(v5 + 48) + 8 * v9);
    v11 = sub_26D1744A4();

    if (v11)
    {

      v12 = *(*(v5 + 48) + 8 * v9);
      sub_26D16A368(v9);
      if (sub_26D1744A4())
      {
        *v1 = v14;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_26D16A368(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_26D174514();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_26D174494();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

void sub_26D16A4FC()
{
  if (!qword_2812B7590)
  {
    sub_26D1682B4();
    sub_26D1682F8();
    v0 = sub_26D174624();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7590);
    }
  }
}

void *sub_26D16A56C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_26D174544();
    sub_26D1682B4();
    sub_26D1682F8();
    result = sub_26D174364();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v17 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v11 = v19 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v21 = v7;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_26D1745B4())
        {
          goto LABEL_25;
        }

        sub_26D1682B4();
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v20;
        v7 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D16A758(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_26D174534();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_26D174504();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_26D16A7B8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_26D1745D4();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_26D16A80C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D6B3840](a1, a2, v7);
      sub_26D1682B4();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_26D1682B4();
    if (sub_26D174564() == *(a4 + 36))
    {
      sub_26D174574();
      swift_dynamicCast();
      v4 = v15;
      v8 = *(a4 + 40);
      v9 = sub_26D174494();
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_26D1744A4();

        if (v12)
        {
          goto LABEL_18;
        }

        v9 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

BOOL sub_26D16A9F8(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x26D6B37F0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_26D16AA2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_26D16AA38()
{
  if (!qword_2804DD8C8)
  {
    sub_26D16AA90();
    v0 = sub_26D1747C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2804DD8C8);
    }
  }
}

void sub_26D16AA90()
{
  if (!qword_2812B75E8)
  {
    v0 = sub_26D1743C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B75E8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_beginAccess();
}

void *Stroke.init(style:width:color:lineCap:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *a3;
  *a4 = *result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a2;
  *(a4 + 24) = v5;
  return result;
}

id sub_26D16AB68()
{
  result = [objc_opt_self() blackColor];
  qword_2804DD9E0 = 0;
  qword_2804DD9E8 = 0x3FF0000000000000;
  qword_2804DD9F0 = result;
  byte_2804DD9F8 = 0;
  return result;
}

id static Stroke.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2804DD7F0 != -1)
  {
    swift_once();
  }

  v2 = qword_2804DD9E8;
  v3 = qword_2804DD9F0;
  v6 = qword_2804DD9F0;
  v4 = byte_2804DD9F8;
  *a1 = qword_2804DD9E0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return v6;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26D16AC8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D16ACCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26D16AD3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D16AD78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26D16AE24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_26D16AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_26D16AEA0(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_26D16AEDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_26D16AF04()
{
  sub_26D16AEDC();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void GridPathGenerator.path(for:options:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  v12 = v5;
  v13 = v11;
  v14 = v4 - v7 - v9;
  v15 = v5 - v6 - v8;
  v30 = v6;
  v16 = v6;
  v17 = v7;
  v18 = v7;
  v19 = v14;
  v20 = v15;
  if ((v10 & 1) == 0)
  {
    v16 = *MEMORY[0x277D768C8];
    v18 = *(MEMORY[0x277D768C8] + 8);
    v19 = v4;
    v20 = v12;
  }

  v21 = 0;
  v22 = *(v3 + 16);
  v23 = (v3 + 40);
  while (v22 != v21)
  {
    if (v21 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v24 = *(v23 - 1);
    v25 = *v23;
    if (v2)
    {
      v26 = v17 + v14 * v24;
      v27 = v25;
      [v13 moveToPoint_];
      [v13 addLineToPoint_];
    }

    else
    {
      v28 = v30 + v15 * v24;
      v29 = v25;
      [v13 moveToPoint_];
      [v13 addLineToPoint_];
    }

    v23 += 2;
    ++v21;
  }
}

id sub_26D16B188(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC9TeaChartsP33_9EE3010B3705A23DEDCE010A1E35708921LineSeriesDataElement_cachedLabel];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC9TeaChartsP33_9EE3010B3705A23DEDCE010A1E35708921LineSeriesDataElement_cachedValue];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithAccessibilityContainer_, a1);

  return v6;
}

double sub_26D16B240()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v2 = Strong;
  v3 = sub_26D16D054(v0);

  return v3;
}

uint64_t sub_26D16B304()
{
  v1 = (v0 + OBJC_IVAR____TtC9TeaChartsP33_9EE3010B3705A23DEDCE010A1E35708921LineSeriesDataElement_cachedLabel);
  if (!*(v0 + OBJC_IVAR____TtC9TeaChartsP33_9EE3010B3705A23DEDCE010A1E35708921LineSeriesDataElement_cachedLabel + 8))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_26D16D26C(v0);
      v5 = v4;
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = v1[1];
    *v1 = v5;
    v1[1] = v7;

    v9 = v1[1];
  }

  v10 = *v1;

  return v10;
}

id sub_26D16B3E0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_26D174204();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_26D16B460()
{
  v1 = (v0 + OBJC_IVAR____TtC9TeaChartsP33_9EE3010B3705A23DEDCE010A1E35708921LineSeriesDataElement_cachedValue);
  if (!*(v0 + OBJC_IVAR____TtC9TeaChartsP33_9EE3010B3705A23DEDCE010A1E35708921LineSeriesDataElement_cachedValue + 8))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_26D16D26C(v0);
      v5 = v4;
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = v1[1];
    *v1 = v5;
    v1[1] = v7;

    v9 = v1[1];
  }

  v10 = *v1;

  return v10;
}

void sub_26D16B524(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_26D174234();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_26D16B680()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26D16B71C(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  swift_weakInit();
  *&v3[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_dataElements] = 0;
  v8 = &v3[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_series];
  *v8 = v7;
  *(v8 + 8) = *(a2 + 1);
  swift_weakAssign();
  sub_26D14F5B8(a3, &v3[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_chartModel]);
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *&v3[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_xAxisDateFormatter] = v9;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for LineSeriesAccessibilityElement();
  v10 = objc_msgSendSuper2(&v19, sel_initWithAccessibilityContainer_, a1);
  v11 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  v12 = v10;
  v13 = [v11 init];
  v14 = [v13 UUIDString];

  v15 = sub_26D174234();
  v17 = v16;

  sub_26D16DBE8(v15, v17, v12);
  sub_26D16B8A0();
  sub_26D16CDC0();

  sub_26D16DB3C(a3);
  return v12;
}

id sub_26D16B8A0()
{
  v1 = v0;
  sub_26D149038();
  v2 = sub_26D173FE4();
  if (!v2[2])
  {
    goto LABEL_4;
  }

  v4 = v2[4];
  v3 = v2[5];
  v5 = sub_26D16BA4C(v2);
  v7 = v6;

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = OUTLINED_FUNCTION_4_4();
  v10 = sub_26D16BA94(v8, v9);
  if ((v11 & 1) == 0)
  {
    v13 = *&v10;
    *&result = COERCE_DOUBLE(sub_26D16BA94(v5, v7));
    if ((v14 & 1) == 0)
    {
      v15 = v13;
      v16 = *&result;
      v17 = OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_xAxisDateFormatter;
      v18 = *(v0 + OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_xAxisDateFormatter);
      v19 = *(type metadata accessor for LineChartModel() + 32);
      v20 = v18;
      v21 = sub_26D173E14();
      [v20 setTimeZone_];

      v22 = vabdd_f64(v16, v15);
      if (v22 >= 86400.0)
      {
        v23 = 3;
      }

      else
      {
        v23 = 0;
      }

      [*(v1 + v17) setDateStyle_];
      v24 = *(v1 + v17);

      *&result = COERCE_DOUBLE([v24 setTimeStyle_]);
    }
  }

  else
  {
LABEL_4:

    *&result = COERCE_DOUBLE();
  }

  return result;
}

uint64_t sub_26D16BA4C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_26D16BA94(uint64_t a1, uint64_t a2)
{
  sub_26D16DC4C(a1, a2);

  return 0;
}

void sub_26D16BB0C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  OUTLINED_FUNCTION_5_3();

  OUTLINED_FUNCTION_2_5();
}

void sub_26D16BB58()
{
  v1 = [v0 accessibilityContainer];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      [v2 accessibilityFrame];
      OUTLINED_FUNCTION_5_3();
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_2_5();
}

id sub_26D16BBF8()
{
  result = sub_26D16BC18();
  qword_2804DF260 = result;
  return result;
}

id sub_26D16BC18()
{
  v0 = sub_26D173D44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D173D34();
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_26D173D24();
  if (v7)
  {
    v8 = sub_26D174204();
  }

  else
  {
    v8 = 0;
  }

  [v6 setGroupingSeparator_];

  sub_26D173D14();
  if (v9)
  {
    v10 = sub_26D174204();
  }

  else
  {
    v10 = 0;
  }

  [v6 setDecimalSeparator_];

  [v6 setMinimumFractionDigits_];
  [v6 setMaximumFractionDigits_];

  (*(v1 + 8))(v5, v0);
  return v6;
}

void sub_26D16BDF0()
{
  v1 = v0;
  v71 = sub_26D173CD4();
  v2 = OUTLINED_FUNCTION_1(v71);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  OUTLINED_FUNCTION_1_1();
  v70 = (v9 - v8);
  v10 = v0 + OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_chartModel;
  sub_26D149038();
  v11 = sub_26D173FE4();
  v12 = *(v11 + 16);
  if (v12)
  {
    v65 = 0;
    v69 = v10;
    v72 = v0;
    v77 = MEMORY[0x277D84F90];
    v13 = sub_26D14D420(0, v12, 0);
    v15 = v77;
    v67 = (v4 + 8);
    v68 = OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_xAxisDateFormatter;
    v16 = (v11 + 40);
    while (1)
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v76 = 0;
      MEMORY[0x28223BE20](v13, v14);
      *(&v65 - 2) = &v76;
      if ((v18 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v18 & 0x2000000000000000) != 0)
      {
        v73 = v17;
        v74 = v18 & 0xFFFFFFFFFFFFFFLL;

        if (v17 <= 0x20u && ((1 << v17) & 0x100003E01) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if ((v17 & 0x1000000000000000) == 0)
        {
          break;
        }

        v19 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        if (v19 <= 0x20 && ((1 << v19) & 0x100003E01) != 0)
        {
          goto LABEL_16;
        }
      }

      v27 = _swift_stdlib_strtod_clocale();
      if (v27 && !*v27)
      {
LABEL_23:
        v66 = v11;
        v28 = v70;
        sub_26D173CC4();
        v29 = *(v72 + v68);
        v30 = sub_26D173CB4();
        v31 = [v29 stringFromDate_];

        v22 = sub_26D174234();
        v23 = v32;

        v33 = v28;
        v11 = v66;
        v13 = (*v67)(v33, v71);
        goto LABEL_17;
      }

LABEL_16:

      v22 = 0;
      v23 = 0xE000000000000000;
LABEL_17:
      v77 = v15;
      v25 = v15[2];
      v24 = v15[3];
      if (v25 >= v24 >> 1)
      {
        v13 = sub_26D14D420((v24 > 1), v25 + 1, 1);
        v15 = v77;
      }

      v15[2] = v25 + 1;
      v26 = &v15[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      v16 += 2;
      if (!--v12)
      {

        v1 = v72;
        v10 = v69;
        goto LABEL_27;
      }
    }

    v34 = v11;
    v35 = v65;
    sub_26D174634();
    v65 = v35;
    v11 = v34;
    if (v75)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_27:
  v36 = type metadata accessor for LineChartModel();
  v37 = (v10 + *(v36 + 24));
  if (v37[1])
  {
    v38 = *v37;
    v39 = v37[1];
  }

  objc_allocWithZone(MEMORY[0x277CB88C0]);

  v40 = sub_26D16D6E0();
  sub_26D142914();
  if (*(v10 + *(v41 + 52)) > *(v10 + *(v41 + 52) + 8))
  {
    goto LABEL_44;
  }

  v42 = (v10 + *(v36 + 28));
  if (v42[1])
  {
    v43 = *v42;
    v44 = v42[1];
  }

  sub_26D1468AC(0, &qword_2804DDA08, 0x277CB88F0);

  v45 = MEMORY[0x277D84F90];
  v46 = sub_26D174484();
  v48 = *(v1 + OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_series);
  v47 = *(v1 + OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_series + 8);
  v49 = *(v1 + OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_series + 16);
  v50 = *(v49 + 16);
  if (v50)
  {
    v67 = v48;
    v68 = v47;
    v69 = v46;
    v70 = v40;
    v73 = v45;

    v71 = v50;
    sub_26D174674();
    v72 = *(v49 + 16);
    sub_26D1468AC(0, &qword_2804DDA18, 0x277CB88D8);
    v51 = 0;
    v52 = v15 + 5;
    v53 = (v49 + 48);
    while (v72 != v51)
    {
      if (v51 >= *(v49 + 16))
      {
        goto LABEL_42;
      }

      if (v51 >= v15[2])
      {
        goto LABEL_43;
      }

      ++v51;
      v54 = v49;
      v56 = *(v53 - 1);
      v55 = *v53;
      v57 = *(v52 - 1);
      v58 = *v52;

      sub_26D1743D4();
      v49 = v54;

      sub_26D174654();
      v59 = *(v73 + 16);
      sub_26D174684();
      sub_26D174694();
      sub_26D174664();
      v52 += 2;
      v53 += 3;
      if (v71 == v51)
      {

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

LABEL_40:
  v60 = objc_allocWithZone(MEMORY[0x277CB88E0]);
  v61 = OUTLINED_FUNCTION_4_4();
  v63 = sub_26D16D760(v61, v62, 1);
  sub_26D1468AC(0, &qword_2804DDA20, 0x277CB88C8);
  sub_26D164FC0();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_26D177440;
  *(v64 + 32) = v63;
  sub_26D174424();
}

void sub_26D16C4B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
}

uint64_t sub_26D16C4E0(double a1)
{
  if (qword_2804DD7F8 != -1)
  {
    swift_once();
  }

  v2 = qword_2804DF260;
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v4 = [v2 stringFromNumber_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_26D174234();

  return v5;
}

void (*sub_26D16C5B8(void *a1))(id *a1)
{
  sub_26D16BDF0();
  *a1 = v2;
  return sub_26D16C5FC;
}

uint64_t sub_26D16C604(uint64_t a1, double a2)
{
  v64 = sub_26D173D44();
  v5 = OUTLINED_FUNCTION_1(v64);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_1_1();
  v13 = v12 - v11;
  sub_26D16D88C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  OUTLINED_FUNCTION_1_1();
  v19 = v18 - v17;
  v20 = sub_26D173CD4();
  v21 = OUTLINED_FUNCTION_1(v20);
  v62 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21, v25);
  OUTLINED_FUNCTION_1_1();
  v26 = sub_26D16CB70(1.0);
  if (v27)
  {
    v28 = *(v2 + OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_series + 16);
    v29 = *(v28 + 16);
    if (v29 >= 2)
    {
      v30 = v28 + 24 * v29;
      v31 = *(v30 + 8);
      v32 = *(v30 + 16);

      v26 = sub_26D16BA94(v31, v32);
      v34 = v33;
      if (!a1)
      {
        goto LABEL_9;
      }

LABEL_6:
      v35 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      sub_26D173D34();
      sub_26D173D24();
      if (v36)
      {
        v37 = sub_26D174204();
      }

      else
      {
        v37 = 0;
      }

      [v35 setGroupingSeparator_];

      sub_26D173D14();
      if (v55)
      {
        v56 = sub_26D174204();
      }

      else
      {
        v56 = 0;
      }

      [v35 setDecimalSeparator_];

      [v35 setMinimumFractionDigits_];
      [v35 setMaximumFractionDigits_];
      v57 = sub_26D16CCF8(a2);
      if ((v58 & 1) == 0)
      {
        v59 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v60 = [v35 stringFromNumber_];

        if (v60)
        {
          v51 = sub_26D174234();

          (*(v7 + 8))(v13, v64);
          return v51;
        }
      }

      (*(v7 + 8))(v13, v64);

      return 0;
    }

    v34 = 1;
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v34 = 0;
    if (a1)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  v38 = sub_26D16CB70(0.0);
  if (v39)
  {
    return 0;
  }

  if (v34)
  {
    return 0;
  }

  v40 = *&v38;
  sub_26D16CB70(a2);
  if (v41)
  {
    return 0;
  }

  v42 = v40;
  sub_26D173CC4();
  v43 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_26D173E04();
  v44 = sub_26D173E24();
  v45 = 0;
  if (__swift_getEnumTagSinglePayload(v19, 1, v44) != 1)
  {
    v45 = sub_26D173E14();
    (*(*(v44 - 8) + 8))(v19, v44);
  }

  [v43 setTimeZone_];

  v46 = vabdd_f64(*&v26, v42);
  v47 = v46 < 86400.0;
  if (v46 >= 86400.0)
  {
    v48 = 3;
  }

  else
  {
    v48 = 0;
  }

  [v43 setDateStyle_];
  [v43 setTimeStyle_];
  v49 = sub_26D173CB4();
  v50 = [v43 stringFromDate_];

  v51 = sub_26D174234();
  v52 = *(v63 + 8);
  v53 = OUTLINED_FUNCTION_4_4();
  v54(v53);
  return v51;
}

uint64_t sub_26D16CB70(double a1)
{
  v3 = a1 >= 0.0 && a1 <= 1.0;
  if (!v3 || !swift_weakLoadStrong())
  {
    return 0;
  }

  [v1 accessibilityFrame];
  LineChartInteractor.dataPoint(for:model:size:)(v1 + OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_chartModel, &v12, v4 * a1, v5 * 0.5, v4, v5);
  v6 = *(&v12 + 1);
  if (!*(&v12 + 1))
  {

    return v6;
  }

  v7 = v12;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];

  v9 = sub_26D174204();
  sub_26D16DB98(v7, v6);

  v10 = [v8 numberFromString_];

  if (!v10)
  {

    return 0;
  }

  v6 = sub_26D174334();

  return v6;
}

uint64_t sub_26D16CCF8(double a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return Strong;
    }

    [v1 accessibilityFrame];
    LineChartInteractor.dataPoint(for:model:size:)(v1 + OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_chartModel, &v8, v5 * a1, v6 * 0.5, v5, v6);

    if (*(&v8 + 1))
    {
      Strong = v9;
      sub_26D16DB98(v8, *(&v8 + 1));
      return Strong;
    }
  }

  return 0;
}

void sub_26D16CDC0()
{
  [v0 setAccessibilityElements_];
  v1 = *(*&v0[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_series + 16] + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    if (v1 >= 0xA)
    {
      v2 = 10;
    }

    else
    {
      v2 = *(*&v0[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_series + 16] + 16);
    }

    v3 = type metadata accessor for LineSeriesDataElement();
    do
    {
      v4 = objc_allocWithZone(v3);
      v5 = v0;
      v6 = sub_26D16B188(v5);
      MEMORY[0x26D6B3530]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26D1742B4();
      }

      OUTLINED_FUNCTION_4_4();
      sub_26D1742E4();

      --v2;
    }

    while (v2);
    v7 = *&v5[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_dataElements];
    *&v5[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_dataElements] = v9;

    v8 = sub_26D16CF0C(v9);

    sub_26D16DACC(v8, v5);
  }
}

char *sub_26D16CF0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26D174584();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_26D14D5E8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D6B38E0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      type metadata accessor for LineSeriesDataElement();
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26D14D5E8((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_26D1615EC(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

double sub_26D16D054(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_dataElements];
  v3 = 0.0;
  if (v2)
  {
    v5 = *&v1[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_dataElements];

    sub_26D16D190(a1, v2);
    if ((v7 & 1) != 0 || (v8 = v6, [v1 accessibilityFrame], CGRectIsEmpty(v12)) || !sub_26D14CE24(v2))
    {
    }

    else
    {
      [v1 accessibilityFrame];
      CGRectGetWidth(v13);
      v9 = sub_26D14CE24(v2);

      v14.origin.x = OUTLINED_FUNCTION_0_22();
      MinX = CGRectGetMinX(v14);
      v15.origin.x = OUTLINED_FUNCTION_0_22();
      v3 = MinX + v8 / v9 * CGRectGetWidth(v15);
      v16.origin.x = OUTLINED_FUNCTION_0_22();
      CGRectGetMinY(v16);
      v17.origin.x = OUTLINED_FUNCTION_0_22();
      CGRectGetHeight(v17);
    }
  }

  return v3;
}

void sub_26D16D190(uint64_t a1, uint64_t a2)
{
  v3 = sub_26D14CE24(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6B38E0](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    type metadata accessor for LineSeriesDataElement();
    v7 = sub_26D1744A4();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_26D16D26C(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_series + 16];
  v3 = *(v2 + 16);
  if (!v3)
  {
    return;
  }

  v4 = *&v1[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_dataElements];
  if (!v4)
  {
    return;
  }

  v6 = *&v1[OBJC_IVAR____TtC9TeaCharts30LineSeriesAccessibilityElement_dataElements];

  sub_26D16D190(a1, v4);
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    return;
  }

  v27 = v8;
  v11 = *(v2 + 16);
  if (v11 >= 0xA)
  {
    v12 = 10;
  }

  else
  {
    v12 = *(v2 + 16);
  }

  if (!v11)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v15 = v11 / v12;
  do
  {
    v16 = v13 * v15;
    if ((v13 * v15) >> 64 != (v13 * v15) >> 63)
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v16 <= 0)
    {
      if (v3 == 1 && v16)
      {
        goto LABEL_22;
      }
    }

    else if (v3 <= v16)
    {
      goto LABEL_22;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = *(v14 + 16);
      sub_26D153784();
      v14 = v19;
    }

    v17 = *(v14 + 16);
    if (v17 >= *(v14 + 24) >> 1)
    {
      sub_26D153784();
      v14 = v20;
    }

    *(v14 + 16) = v17 + 1;
    *(v14 + 8 * v17 + 32) = v16;
LABEL_22:
    ++v13;
  }

  while (v12 != v13);
  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  if (v27 >= *(v14 + 16))
  {
LABEL_33:
    __break(1u);
    return;
  }

  v21 = *(v14 + 8 * v27 + 32);

  v22 = v21 / *(v2 + 16);
  v23 = [v1 tc:0 accessibilityDataSeriesValueDescriptionForPosition:v22 axis:?];
  if (v23)
  {
    v24 = v23;
    sub_26D174234();
  }

  v25 = [v1 tc:1 accessibilityDataSeriesValueDescriptionForPosition:v22 axis:?];
  if (v25)
  {
    v26 = v25;
    sub_26D174234();
  }
}

id LineSeriesAccessibilityElement.__allocating_init(accessibilityContainer:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithAccessibilityContainer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id LineSeriesAccessibilityElement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LineSeriesAccessibilityElement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LineSeriesAccessibilityElement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26D16D6E0()
{
  v1 = sub_26D174204();

  v2 = sub_26D1742A4();

  v3 = [v0 initWithTitle:v1 categoryOrder:v2];

  return v3;
}

id sub_26D16D760(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_26D174204();

  sub_26D1468AC(0, &qword_2804DDA18, 0x277CB88D8);
  v6 = sub_26D1742A4();

  v7 = [v3 initWithName:v5 isContinuous:a3 & 1 dataPoints:v6];

  return v7;
}

_BYTE *sub_26D16D804@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

void sub_26D16D88C()
{
  if (!qword_2812B7BB0)
  {
    sub_26D173E24();
    v0 = sub_26D1744C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7BB0);
    }
  }
}

uint64_t type metadata accessor for LineSeriesAccessibilityElement()
{
  result = qword_2812B77E0;
  if (!qword_2812B77E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D16D95C()
{
  result = type metadata accessor for LineChartModel();
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

void sub_26D16DACC(uint64_t a1, void *a2)
{
  v3 = sub_26D1742A4();

  [a2 setAccessibilityElements_];
}

uint64_t sub_26D16DB3C(uint64_t a1)
{
  v2 = type metadata accessor for LineChartModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D16DB98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_26D16DBE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26D174204();

  [a3 setAccessibilityIdentifier_];
}

BOOL sub_26D16DC4C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_26D174634();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

double ValueAxis.range.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_26D16DD94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D16DDD4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

id GridView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GridView.init(coder:)()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9TeaCharts8GridView_gridLayers) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9TeaCharts8GridView_labels) = v1;
  sub_26D1746F4();
  __break(1u);
}

void GridView.init(numberOfGrids:numberOfLabels:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC9TeaCharts8GridView_gridLayers) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC9TeaCharts8GridView_labels) = v5;
  v6 = OUTLINED_FUNCTION_0_7();
  v9 = objc_msgSendSuper2(v7, v8, v6);
  if (a1 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v10 = v9;
  if (a1)
  {
    v11 = OBJC_IVAR____TtC9TeaCharts8GridView_gridLayers;
    do
    {
      v12 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
      swift_beginAccess();
      v13 = v12;
      MEMORY[0x26D6B3530]();
      if (*((*(v10 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26D1742B4();
      }

      sub_26D1742E4();
      swift_endAccess();
      v14 = [v10 layer];
      [v14 addSublayer_];

      --a1;
    }

    while (a1);
  }

  if (a2 < 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    v15 = OBJC_IVAR____TtC9TeaCharts8GridView_labels;
    do
    {
      v16 = objc_allocWithZone(MEMORY[0x277D756B8]);
      v17 = OUTLINED_FUNCTION_0_7();
      v20 = [v18 v19];
      [v20 setIsAccessibilityElement_];
      swift_beginAccess();
      v21 = v20;
      MEMORY[0x26D6B3530]();
      if (*((*(v10 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + v15) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26D1742B4();
      }

      sub_26D1742E4();
      swift_endAccess();
      [v10 addSubview_];

      --a2;
    }

    while (a2);
  }
}

Swift::Void __swiftcall GridView.layoutSubviews()()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC9TeaCharts8GridView_gridLayers;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = sub_26D14CE24(v2);

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6B38E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v0 layer];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame_];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id GridView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GridView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26D16E4C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D16E508(uint64_t result, int a2, int a3)
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

uint64_t LinePathGenerator.__allocating_init(coordinateProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t LinePathGenerator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LineStyle.__allocating_init(stroke:fill:zoneStyles:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  LineStyle.init(stroke:fill:zoneStyles:)(a1, a2, a3);
  return v6;
}

uint64_t sub_26D16E638()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v0 clearColor];
  type metadata accessor for LineStyle();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0x3FF0000000000000;
  *(result + 32) = v1;
  *(result + 40) = 0;
  *(result + 48) = v2;
  *(result + 56) = 0;
  *(result + 64) = MEMORY[0x277D84F90];
  qword_2804DDB10 = result;
  return result;
}

uint64_t static LineStyle.default.getter()
{
  if (qword_2804DD800 != -1)
  {
    swift_once();
  }
}

uint64_t LineStyle.init(stroke:fill:zoneStyles:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 8);
  *(v3 + 16) = *a1;
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = v7;
  *(v3 + 56) = v8;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t LineStyle.deinit()
{
  v1 = *(v0 + 16);

  sub_26D14ABA0(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 64);

  return v0;
}

uint64_t LineStyle.__deallocating_deinit()
{
  LineStyle.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t SparklineCoordinateProvider.location(for:in:model:size:)(double *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = a1[2];
  v13 = v6[10];
  v14 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v13);
  v24 = 0;
  v15 = (*(v14 + 8))(COERCE_DOUBLE(*&v10), v11, a5, &v24, v13, v14, a2);
  if (v16)
  {
    return 0;
  }

  v17 = v15;
  v18 = v6[5];
  v19 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v18);
  sub_26D142914();
  v21 = *(v20 + 52);
  v23 = 1;
  (*(v19 + 8))(a5 + v21, &v23, v18, v19, v12, a3);
  return v17;
}

uint64_t SparklineCoordinateProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t SparklineCoordinateProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t StyleManager.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_26D1744C4();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t StyleManager.register(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_26D1744C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  (*(*(v3 - 8) + 16))(&v13 - v9, a1, v3, v8);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v3);
  v11 = *(*v1 + 88);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v11, v10, v4);
  return swift_endAccess();
}

uint64_t StyleManager.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_26D1744C4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t StyleManager.__deallocating_deinit()
{
  StyleManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D16EDEC()
{
  v1 = *v0;
  swift_beginAccess();
  v5 = v0[2];
  v4 = *(v1 + 80);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_0_23(v2, MEMORY[0x277D84F78]);
  OUTLINED_FUNCTION_9();
  sub_26D174304();

  swift_getWitnessTable();
  sub_26D174284();
}

uint64_t sub_26D16EEC8()
{
  OUTLINED_FUNCTION_1_14();
  v0 = swift_allocObject();
  sub_26D16F288();
  return v0;
}

uint64_t sub_26D16EEF8()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v0[3];
  v4 = *(v3 + 16);

  v6 = 0;
  for (i = (v3 + 40); ; i += 2)
  {
    if (v4 == v6)
    {

      v11 = *(v2 + 80);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_0_23(v12, MEMORY[0x277D84F78]);
      OUTLINED_FUNCTION_9();
      v13 = sub_26D1742C4();
      swift_beginAccess();
      v14 = v1[2];
      v1[2] = v13;

      v15 = v1[3];
      v1[3] = MEMORY[0x277D84F90];
    }

    if (v6 >= *(v3 + 16))
    {
      break;
    }

    ++v6;
    v9 = *(i - 1);
    v8 = *i;

    v9(v10);
  }

  __break(1u);
  return result;
}

uint64_t HighlightInteraction.onChange(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a1;
  v6[4] = a2;
  swift_beginAccess();
  v7 = type metadata accessor for HighlightInteraction.InteractionType();
  OUTLINED_FUNCTION_0_23(v7, MEMORY[0x277D84F78]);
  OUTLINED_FUNCTION_9();
  sub_26D174304();

  sub_26D1742F4();
  return swift_endAccess();
}

uint64_t sub_26D16F110()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t HighlightInteraction.onEnd(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();

  sub_26D16F318();
  v7 = *(*(v3 + 24) + 16);
  sub_26D16F2D8(v7);
  v8 = *(v3 + 24);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_26D16F20C;
  *(v9 + 40) = v6;
  *(v3 + 24) = v8;
  return swift_endAccess();
}

uint64_t sub_26D16F20C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t HighlightInteraction.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t HighlightInteraction.__deallocating_deinit()
{
  HighlightInteraction.deinit();
  v0 = OUTLINED_FUNCTION_1_14();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_26D16F288()
{
  v1 = *(*v0 + 80);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_0_23(v2, MEMORY[0x277D84F78]);
  OUTLINED_FUNCTION_9();
  v3 = sub_26D1742C4();
  v4 = MEMORY[0x277D84F90];
  v0[2] = v3;
  v0[3] = v4;
  return v0;
}

void sub_26D16F2D8(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_26D153850();
    *v1 = v2;
  }
}

void sub_26D16F318()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_26D153850();
    *v0 = v4;
  }
}

uint64_t sub_26D16F3E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_26D16F474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_22:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 255;
}

void sub_26D16F5D0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v6 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_26D16F7CC(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

uint64_t ZoneManager.zones.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = sub_26D174034();
  return (*(*(v9 - 8) + 16))(a1, v1 + v4, v9);
}

uint64_t ZoneManager.add(zone:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[10];
  v4 = v2[11];
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = sub_26D174034();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15[-v11];
  v13 = v2[12];
  swift_beginAccess();
  (*(v8 + 16))(v12, &v1[v13], v7);
  OUTLINED_FUNCTION_0_24();
  sub_26D173EB4();
  LOBYTE(v2) = sub_26D174014();

  (*(v8 + 8))(v12, v7);
  if (v2)
  {
    OUTLINED_FUNCTION_0_24();
    sub_26D173EB4();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_0_24();
    sub_26D174004();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_2_10();
  sub_26D173FF4();
  return swift_endAccess();
}

uint64_t ZoneManager.remove(zone:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_15();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_1_15();
  v5 = *(v4 + 88);
  v6 = *(v5 + 16);
  sub_26D173EB4();
  v7 = *(*v0 + 96);
  swift_beginAccess();
  v8 = *(v5 + 8);
  sub_26D174034();
  OUTLINED_FUNCTION_0_24();
  sub_26D174004();
  swift_endAccess();
}

Swift::Void __swiftcall ZoneManager.removeZone(for:)(Swift::String a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  sub_26D174034();
  sub_26D174004();
  swift_endAccess();
}

char *ZoneManager.deinit()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_15();
  v3 = *(v2 + 96);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_1_15();
  v7 = *(v6 + 88);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = sub_26D174034();
  (*(*(v10 - 8) + 8))(&v0[v3], v10);
  return v0;
}

uint64_t ZoneManager.__deallocating_deinit()
{
  ZoneManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D16FD8C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26D16FE64()
{
  sub_26D14340C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = *(*v3 + 96);
  v5 = sub_26D1434EC();
  v6 = sub_26D143558();
  MEMORY[0x26D6B3260](MEMORY[0x277D84F90], &type metadata for CategoryZone, v5, v6);
  return v3;
}

uint64_t sub_26D16FEE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B8C70);
  result = sub_26D173EF4();
  v5 = v23;
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = *(*(v5 - 8) + 64);
    MEMORY[0x28223BE20](v6, v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for GridLayoutAttributesFactory();
    v21[3] = v12;
    v21[4] = &off_287E8A920;
    v21[0] = v11;
    v13 = type metadata accessor for ChartLayoutAttributesFactory();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v16 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v15, v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v14[5] = v12;
    v14[6] = &off_287E8A920;
    v14[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a2[3] = v13;
    a2[4] = &off_287E8C7A8;
    *a2 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D17010C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26D173F14();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_26D173F04();
  v6 = MEMORY[0x277D6CB10];
  a1[3] = v2;
  a1[4] = v6;
  *a1 = result;
  return result;
}

double sub_26D170178@<D0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v26[0] = v6;
  v26[1] = v7;
  v9 = *v8;
  sub_26D14F7A0(a1, v26, v19);
  v11 = v19[0];
  v10 = v19[1];
  v12 = v20;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v25 = v24;
  v16 = v6 - v21 - v23;
  v17 = v7 - v20 - v22;
  *a3 = v21;
  *(a3 + 8) = v12;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 32) = v11;
  *(a3 + 48) = v10;
  *(a3 + 64) = v12;
  *(a3 + 72) = v13;
  *(a3 + 80) = v14;
  *(a3 + 88) = v15;
  result = *&v25;
  *(a3 + 96) = v25;
  return result;
}

uint64_t sub_26D170268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26D147140();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_26D1702C0(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = sub_26D160A3C(a1);
  if (v6)
  {
    return *(*(a4 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

uint64_t ColumnChartCoordinateProvider.location(for:in:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(v2 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_lock);
  sub_26D173E44();
  v9 = *(v2 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_seriesDictionary);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = *(v2 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_seriesDictionary);

  v11 = sub_26D170268(v6, v7, v9);
  v13 = v12;

  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = sub_26D1702C0(v5, v3, v4, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    v19[0] = v3;
    v19[1] = v4;
    *&v19[2] = v5;
    v17 = sub_26D170DB4(v14, v11, v19);
  }

  else
  {
LABEL_4:
    v17 = 0;
  }

  sub_26D173E54();
  return v17;
}

__n128 ColumnChartCoordinateProvider.options.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_options;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_26D170488(__int128 *a1)
{
  v3 = sub_26D173E74();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_coordinateSpace;
  sub_26D142914();
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_size;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v1 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_options;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_seriesDictionary) = 0;
  v10 = OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_lock;
  sub_26D173E64();
  v11 = sub_26D173E94();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v1 + v10) = sub_26D173E84();
  sub_26D15166C(a1, v1 + 16);
  return v1;
}

uint64_t ColumnChartCoordinateProvider.horizontalLocation(for:in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_lock);
  sub_26D173E44();
  sub_26D170620(a1, a2);
  v7 = v6;
  sub_26D173E54();
  return v7;
}

double sub_26D170620(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_options;
  swift_beginAccess();
  if ((*(v5 + 32) & 1) == 0)
  {
    return *(v5 + 24) * a1 + *(v5 + 16) * a1 + *(v5 + 8) * a2 + *v5 * a2;
  }

  return result;
}

uint64_t ColumnChartCoordinateProvider.verticalLocation(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(v1 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_lock);
  sub_26D173E44();
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v6 = sub_26D170738(v8);
  sub_26D173E54();
  return v6;
}

uint64_t sub_26D170738(uint64_t a1)
{
  sub_26D144260();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26D142914();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_size + 16))
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(v1 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_size + 8);
  v16 = OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_coordinateSpace;
  swift_beginAccess();
  sub_26D148EB8(v1 + v16, v7, sub_26D144260);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    sub_26D14A8C8(v7, sub_26D144260);
    return 0;
  }

  sub_26D14770C(v7, v13);
  v18 = v1[5];
  v19 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v18);
  v20 = *(v9 + 52);
  v23 = 1;
  v21 = (*(v19 + 8))(&v13[v20], &v23, v18, v19, v14, v15);
  sub_26D14A8C8(v13, sub_26D142914);
  return *&v21;
}

uint64_t ColumnChartCoordinateProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26D14A8C8(v0 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_coordinateSpace, sub_26D144260);
  v1 = *(v0 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_seriesDictionary);

  v2 = *(v0 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_lock);

  return v0;
}

uint64_t ColumnChartCoordinateProvider.__deallocating_deinit()
{
  ColumnChartCoordinateProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ColumnChartCoordinateProvider.register(model:size:)(uint64_t a1, double a2, double a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_lock);
  sub_26D173E44();
  v8 = type metadata accessor for ColumnChartModel();
  v9 = *(a1 + *(v8 + 20));
  v10 = a1 + *(v8 + 24);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  v15 = *(v10 + 41);
  v17 = *v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  sub_26D170A98(a1, v9, &v17, a2, a3);
  return sub_26D173E54();
}

uint64_t sub_26D170A98(uint64_t a1, uint64_t a2, double *a3, double a4, double a5)
{
  v6 = v5;
  sub_26D144260();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v41[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  v17 = a3[1];
  v19 = a3[2];
  result = sub_26D14CCF0();
  if ((result & 1) == 0 && a4 > 0.0)
  {
    v21 = *(a2 + 16);
    if (v21)
    {
      v22 = v6 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_size;
      *v22 = a4;
      *(v22 + 8) = a5;
      *(v22 + 16) = 0;
      sub_26D148EB8(a1, v16, sub_26D142914);
      sub_26D142914();
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v23);
      v24 = OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_coordinateSpace;
      swift_beginAccess();
      sub_26D14A4C4(v16, v6 + v24);
      swift_endAccess();
      sub_26D149038();
      sub_26D1450FC(&qword_2812B9DC8, sub_26D149038);
      sub_26D174374();
      sub_26D174394();
      v25 = sub_26D174384();
      sub_26D174374();
      sub_26D174394();
      result = sub_26D174384();
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = v21 * v25;
        v27 = v17 * (v21 + -1.0);
        v28 = v27 * v25;
        v29 = (a4 - v28 - v19 * (v25 + -1.0)) / v26;
        if (v18 < v29)
        {
          v29 = v18;
        }

        if (v29 > 1.0)
        {
          v30 = v29;
        }

        else
        {
          v30 = 1.0;
        }

        v31 = (a4 - v26 * v30 - v28) / (result - 1);
        v32 = v27 + v30 * v21;
        v33 = v6 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_options;
        swift_beginAccess();
        v34 = 0;
        *v33 = v30;
        *(v33 + 8) = v17;
        *(v33 + 16) = v31;
        *(v33 + 24) = v32;
        *(v33 + 32) = 0;
        v42 = MEMORY[0x277D84F98];
        v35 = (a2 + 48);
        while (v21 != v34)
        {
          v36 = *(v35 - 1);
          v37 = *v35;
          v38 = *(v35 - 2);
          v40 = v34;
          v41[0] = v38;
          v41[1] = v36;
          v41[2] = v37;

          sub_26D170EF8(v34, v41, &v42);

          v35 += 3;
          ++v34;
        }

        v39 = *(v6 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_seriesDictionary);
        *(v6 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_seriesDictionary) = v42;
      }
    }
  }

  return result;
}

uint64_t sub_26D170DB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  sub_26D170620(a1, a2);
  if (v7)
  {
    return 0;
  }

  v9 = v6;
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v5;
  sub_26D170738(v11);
  if (v10)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_26D170EF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0;
  v24 = *a2;
  v22 = a2[1];
  v4 = a2[2];
  v26 = *(v4 + 16);
  v5 = (v4 + 48);
  v6 = MEMORY[0x277D84F98];
  while (v26 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_26D174804();
      __break(1u);
      return result;
    }

    v8 = *(v5 - 2);
    v7 = *(v5 - 1);
    v9 = *v5;

    swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_26D160A3C(v9);
    if (__OFADD__(v6[2], (v11 & 1) == 0))
    {
      goto LABEL_17;
    }

    v12 = v10;
    v13 = v11;
    sub_26D1710F8();
    if (sub_26D1746C4())
    {
      v14 = sub_26D160A3C(v9);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

      v12 = v14;
    }

    if (v13)
    {
      *(v6[7] + 8 * v12) = v3;
    }

    else
    {
      v6[(v12 >> 6) + 8] |= 1 << v12;
      v16 = (v6[6] + 24 * v12);
      *v16 = v8;
      *(v16 + 1) = v7;
      v16[2] = v9;
      *(v6[7] + 8 * v12) = v3;
      v17 = v6[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_18;
      }

      v6[2] = v19;
    }

    v5 += 3;
    ++v3;
  }

  v20 = *a3;
  swift_isUniquelyReferenced_nonNull_native();
  v27 = *a3;
  sub_26D165C10(a1, v6, v24, v22);
  *a3 = v27;
}

void sub_26D1710F8()
{
  if (!qword_2812B7578)
  {
    sub_26D142EBC();
    v0 = sub_26D1746E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7578);
    }
  }
}

double LinearAxisCalculationModel.value(for:in:)(double a1, double a2, double a3)
{
  result = (a3 - a2) * a1 + a2;
  if (a2 == a3)
  {
    return 0.0;
  }

  return result;
}

uint64_t CategoryDataPoint.category.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

TeaCharts::CategoryDataPoint __swiftcall CategoryDataPoint.init(category:value:)(Swift::String category, Swift::Double value)
{
  *v2 = category;
  *(v2 + 16) = value;
  result.category = category;
  result.value = value;
  return result;
}

uint64_t CategoryDataPoint.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_26D174244();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  return MEMORY[0x26D6B3B20](*&v4);
}

uint64_t sub_26D171290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_26D1747E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26D1747E4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26D171354(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_26D171390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D171290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D1713D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D15728C();
  *a1 = result;
  return result;
}

uint64_t sub_26D171400(uint64_t a1)
{
  v2 = sub_26D1715F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D17143C(uint64_t a1)
{
  v2 = sub_26D1715F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CategoryDataPoint.encode(to:)(void *a1)
{
  sub_26D1718F0(0, &qword_2804DDC18, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_1(v3);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = &v19 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1715F8();
  sub_26D1748B4();
  v21 = 0;
  v17 = v19;
  sub_26D174764();
  if (!v17)
  {
    v20 = 1;
    sub_26D174774();
  }

  return (*(v7 + 8))(v12, v4);
}

unint64_t sub_26D1715F8()
{
  result = qword_2804DDC20;
  if (!qword_2804DDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DDC20);
  }

  return result;
}

uint64_t CategoryDataPoint.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_26D174864();
  sub_26D174244();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x26D6B3B20](*&v4);
  return sub_26D174894();
}

uint64_t CategoryDataPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26D1718F0(0, &qword_2804DDC28, MEMORY[0x277D844C8]);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1715F8();
  sub_26D1748A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_26D174724();
  v13 = v12;
  sub_26D174734();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_0_25();
  v17(v16);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1718A0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_26D174864();
  CategoryDataPoint.hash(into:)();
  return sub_26D174894();
}

void sub_26D1718F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26D1715F8();
    v7 = a3(a1, &type metadata for CategoryDataPoint.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CategoryDataPoint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26D171A64()
{
  result = qword_2804DDC30;
  if (!qword_2804DDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DDC30);
  }

  return result;
}

unint64_t sub_26D171ABC()
{
  result = qword_2804DDC38;
  if (!qword_2804DDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DDC38);
  }

  return result;
}

unint64_t sub_26D171B14()
{
  result = qword_2804DDC40;
  if (!qword_2804DDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DDC40);
  }

  return result;
}

uint64_t sub_26D171B7C(uint64_t result, _BYTE *a2, double a3, double a4)
{
  v5 = *result;
  v4 = *(result + 8);
  if (v4 > *result && a4 > 0.0)
  {
    v6 = a3 / a4;
    if (*a2)
    {
      v7 = 1.0 - v6;
    }

    else
    {
      v7 = v6;
    }

    v8 = *(result + 40);
    v9 = *(result + 48);
    __swift_project_boxed_opaque_existential_1((result + 16), v8);
    return (*(v9 + 16))(v8, v9, v7, v5, v4);
  }

  return result;
}

uint64_t SparklineStyle.init(identifier:lineStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t SparklineStyle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26D174244();
}

uint64_t static SparklineStyle.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D1747E4();
  }
}

uint64_t SparklineStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26D174864();
  sub_26D174244();
  return sub_26D174894();
}

uint64_t sub_26D171CD0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26D174864();
  sub_26D174244();
  return sub_26D174894();
}

unint64_t sub_26D171D1C()
{
  result = qword_2804DDC48;
  if (!qword_2804DDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DDC48);
  }

  return result;
}

void sub_26D171D84(void *a1)
{
  v2 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];
}

void sub_26D171DF8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  [a1 setFillColor_];
  v7 = [v5 CGColor];
  [a1 setStrokeColor_];

  [a1 setLineWidth_];
  [a1 setLineCap_];
  if (v3)
  {
    v8 = *(v3 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v16 = MEMORY[0x277D84F90];
      sub_26D174674();
      v10 = (v3 + 32);
      do
      {
        v11 = *v10++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_26D174654();
        v12 = *(v16 + 16);
        sub_26D174684();
        sub_26D174694();
        sub_26D174664();
        --v8;
      }

      while (v8);
      v9 = v16;
    }

    sub_26D171FCC(v9, a1);
  }

  if (v6)
  {
    if (v6 == 1)
    {
      goto LABEL_12;
    }

    v13 = MEMORY[0x277CDA788];
  }

  else
  {
    v13 = MEMORY[0x277CDA778];
  }

  v14 = *v13;
LABEL_12:
  sub_26D174234();
  v15 = sub_26D174204();

  [a1 setLineCap_];
}

void sub_26D171FCC(uint64_t a1, void *a2)
{
  sub_26D172040();
  v3 = sub_26D1742A4();

  [a2 setLineDashPattern_];
}

unint64_t sub_26D172040()
{
  result = qword_2812B7598;
  if (!qword_2812B7598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812B7598);
  }

  return result;
}

id ColumnChartOptions.init(preferredWidthPerBar:spacingBetweenSeries:minimumSpacingBetweenCategories:cornerRadius:renderSynchronous:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v11 = *a1;
  v12 = a1[1];
  result = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = a2;
  *(a3 + 41) = result == 1;
  return result;
}

uint64_t *ColumnChartOptions.init(preferredWidthPerBar:spacingBetweenSeries:minimumSpacingBetweenCategories:cornerRadius:renderSynchronous:isRTL:)@<X0>(uint64_t *result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v7 = *result;
  v8 = result[1];
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  *(a4 + 40) = a2;
  *(a4 + 41) = a3;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D172148(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 42))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D172194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26D1721F4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = (result + 40);
  if (v1)
  {
    while (1)
    {
      result = *(v2 - 1);
      if (*v2 < result)
      {
        break;
      }

      result = sub_26D173DA4();
      v2 += 2;
      if (!--v1)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26D172250(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v79 = sub_26D173DF4();
  v8 = OUTLINED_FUNCTION_1(v79);
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v8, v13);
  v74 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v80 = &v73 - v17;
  sub_26D14D440();
  v19 = v18;
  v20 = OUTLINED_FUNCTION_1(v18);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20, v25);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a2;
  v29 = a2[1];
  v86 = a2[2];
  v30 = *a3;
  v31 = *(a3 + 8);
  v81 = *(a3 + 16);
  sub_26D165FF8();
  v32 = MEMORY[0x277D84F90];
  v82 = sub_26D1741B4();
  (*(v22 + 16))(v27, a1, v19);
  v33 = sub_26D1727D8();
  v34 = *(v33 + 16);
  v78 = v4;
  v75 = v10;
  v76 = v33;
  if (v34)
  {
    v84 = v29;
    v85 = v28;
    v35 = *(v4 + 16);
    v77 = (v10 + 8);
    v36 = (v33 + 72);
    v83 = MEMORY[0x277D84F90];
    while (1)
    {
      v37 = *(v36 - 4);
      v87 = *(v36 - 5);
      v88 = v34;
      v39 = *(v36 - 3);
      v38 = *(v36 - 2);
      v41 = *(v36 - 1);
      v40 = *v36;
      v42 = v84;
      v43 = v85;
      v89 = *&v85;
      v90 = v84;
      v44 = v86;
      v91 = v86;

      *&v45 = COERCE_DOUBLE(LineChartCoordinateProvider.horizontalLocation(for:in:)(v39, v38, &v89));
      if (v46)
      {
        goto LABEL_25;
      }

      v47 = *&v45;
      v89 = *&v43;
      v90 = v42;
      v91 = v44;
      v48 = v35;
      *&result = COERCE_DOUBLE(LineChartCoordinateProvider.horizontalLocation(for:in:)(v41, v40, &v89));
      if (v50)
      {
        goto LABEL_25;
      }

      v51 = v47;
      v52 = v47 < *&result;
      if (v81)
      {
        v52 = *&result < v47;
      }

      v53 = v37;
      if (!v52)
      {
LABEL_25:

        v63 = v88;
      }

      else
      {
        if (v81)
        {
          v54 = v47;
        }

        else
        {
          v54 = *&result;
        }

        if (v81)
        {
          v51 = *&result;
        }

        if (v51 <= -9.22337204e18)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v51 >= 9.22337204e18)
        {
          goto LABEL_38;
        }

        if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_39;
        }

        if (v54 <= -9.22337204e18)
        {
          goto LABEL_40;
        }

        if (v54 >= 9.22337204e18)
        {
          goto LABEL_41;
        }

        v55 = v51;
        v56 = v54;
        if (v54 < v51)
        {
          goto LABEL_42;
        }

        v57 = v80;
        v58 = v81;
        sub_26D173D54();
        v89 = v30;
        v90 = v31;
        LOBYTE(v91) = v58;
        v59 = sub_26D172A8C(v57, v83, &v89);
        v60 = v82;
        swift_isUniquelyReferenced_nonNull_native();
        v89 = *&v60;
        sub_26D16599C(v59, v87, v53);

        v61 = *&v89;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26D153154(0, *(v83 + 16) + 1, 1, v83);
          v83 = v68;
        }

        v63 = v88;
        v65 = *(v83 + 16);
        v64 = *(v83 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_26D153154(v64 > 1, v65 + 1, 1, v83);
          v83 = v69;
        }

        (*v77)(v80, v79);
        v66 = v83;
        *(v83 + 16) = v65 + 1;
        v67 = v66 + 16 * v65;
        *(v67 + 32) = v55;
        *(v67 + 40) = v56;
        v35 = v48;
      }

      v36 += 6;
      v34 = v63 - 1;
      if (!v34)
      {
        goto LABEL_29;
      }
    }
  }

  v83 = v32;
LABEL_29:
  *&result = COERCE_DOUBLE();
  v70 = v83;
  if (!*(v83 + 16))
  {

    *&v72 = 0.0;
    return v72;
  }

  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_43;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((v30 & 0x8000000000000000) == 0)
  {
    v71 = v74;
    sub_26D173D54();
    v89 = v30;
    v90 = v31;
    LOBYTE(v91) = v81;
    *&v72 = COERCE_DOUBLE(sub_26D172A8C(v71, v70, &v89));

    (*(v75 + 8))(v71, v79);
    return v72;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_26D1727D8()
{
  sub_26D14D440();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1, v5);
  (*(v3 + 16))(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v2);
  sub_26D172EEC(&qword_2812B7BA0, sub_26D14D440);
  v7 = sub_26D174274();
  v8 = *(v7 + 16);
  result = (*(v3 + 8))(v0, v2);
  if (v8 < 2)
  {
    return v7;
  }

  v10 = 0;
  v11 = v8 >> 1;
  v12 = v8 - 1;
  v13 = 48 * v8 + 24;
  v14 = 72;
  v38 = v8 >> 1;
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_11;
    }

    v15 = *(v7 + 16);
    if (v10 >= v15)
    {
      break;
    }

    if (v12 >= v15)
    {
      goto LABEL_14;
    }

    v17 = *(v7 + v14 - 40);
    v16 = *(v7 + v14 - 32);
    v18 = *(v7 + v14 - 16);
    v42 = *(v7 + v14 - 24);
    v43 = v16;
    v19 = *(v7 + v14);
    v40 = *(v7 + v14 - 8);
    v20 = *(v7 + v13 - 40);
    v21 = *(v7 + v13 - 32);
    v22 = *(v7 + v13 - 16);
    v46 = *(v7 + v13 - 24);
    v47 = v20;
    v23 = *(v7 + v13 - 8);
    v24 = *(v7 + v13);
    v44 = v17;
    v45 = v23;

    v41 = v18;

    v39 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26D172F34(v7);
      v7 = v37;
    }

    v25 = (v7 + v14);
    v26 = *(v7 + v14 - 32);
    v27 = *(v7 + v14 - 16);
    v28 = *(v7 + v14);
    v29 = v46;
    *(v25 - 5) = v47;
    *(v25 - 4) = v21;
    *(v25 - 3) = v29;
    *(v25 - 2) = v22;
    *(v25 - 1) = v45;
    *v25 = v24;

    if (v12 >= *(v7 + 16))
    {
      goto LABEL_15;
    }

    v30 = (v7 + v13);
    v31 = *(v7 + v13 - 32);
    v32 = *(v7 + v13 - 16);
    v33 = *(v7 + v13);
    v34 = v43;
    *(v30 - 5) = v44;
    *(v30 - 4) = v34;
    v35 = v41;
    *(v30 - 3) = v42;
    *(v30 - 2) = v35;
    v36 = v39;
    *(v30 - 1) = v40;
    *v30 = v36;

    v11 = v38;
LABEL_11:
    ++v10;
    --v12;
    v13 -= 48;
    v14 += 48;
    if (v11 == v10)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26D172A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D173DC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D172DFC();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26D173DF4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 8);
  v35 = v25;
  v36 = v24;
  (*(v25 + 16))(v22, a1);
  sub_26D1721F4(a2);
  v26 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  v34 = v22;
  sub_26D173DD4();
  sub_26D173DB4();
  (*(v7 + 8))(v11, v6);
  v27 = *(v13 + 44);
  sub_26D172EEC(&qword_2812B7BB8, MEMORY[0x277CC9A18]);
  while (1)
  {
    sub_26D174394();
    if (*&v17[v27] == v37[0])
    {
      sub_26D172E90(v17);
      (*(v35 + 8))(v34, v36);
      return v26;
    }

    v28 = sub_26D1743B4();
    v31 = *v29;
    v30 = v29[1];
    v28(v37, 0);
    result = sub_26D1743A4();
    if (__OFSUB__(v30, v31))
    {
      break;
    }

    v33 = [objc_opt_self() bezierPathWithRect_];
    [v26 appendPath_];
  }

  __break(1u);
  return result;
}

void sub_26D172DFC()
{
  if (!qword_2812B7588)
  {
    sub_26D173DC4();
    sub_26D172EEC(&qword_2812B7BB8, MEMORY[0x277CC9A18]);
    v0 = sub_26D1746B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7588);
    }
  }
}

uint64_t sub_26D172E90(uint64_t a1)
{
  sub_26D172DFC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D172EEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CornerRadius.init(corners:radius:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

void sub_26D172FAC(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  v8 = a1 + *(type metadata accessor for ColumnChartModel() + 24);
  v9 = *(v8 + 40);
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];

  v12 = *v8;
  v11 = *(v8 + 8);
  v13 = *(v8 + 16);
  v14 = *(v8 + 24);
  v15 = *(v8 + 32);
  v16 = *(v8 + 40);
  v17 = *(v8 + 41);
  if (v9 == 1)
  {
    v18 = OUTLINED_FUNCTION_0_26(v17, v15, v13, v11, v12);
    v20 = sub_26D16200C(v18, v19);
    if (v20)
    {
      v30 = v20;
      [*&a2[OBJC_IVAR____TtC9TeaCharts15ColumnChartView_imageView] setImage_];
      [a2 setAlpha_];
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_0_26(v17, v15, v13, v11, v12);
    sub_26D162128(v21, v22);
    [a2 setAlpha_];
    v23 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
    sub_26D1468AC(0, &qword_2812B89D8, 0x277D85C78);
    v24 = sub_26D174454();
    MEMORY[0x28223BE20](v24, v25);
    sub_26D173FB4();

    v26 = sub_26D173EA4();
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_26D1734C0;
    *(v28 + 24) = v27;
    v29 = a2;
    sub_26D1740B4();
  }
}

uint64_t sub_26D173268(uint64_t a1, void *a2)
{
  sub_26D148D4C();
  sub_26D174104();
  v3 = sub_26D173EA4();
  *(swift_allocObject() + 16) = a2;
  v4 = a2;
  v5 = sub_26D1740B4();

  return v5;
}

void sub_26D17333C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_26D156AD8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_26D149F38;
  v6[3] = &block_descriptor_3;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:v4 animations:0.15];
  _Block_release(v4);
}

uint64_t *sub_26D17342C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  return v0;
}

uint64_t sub_26D17345C()
{
  sub_26D17342C();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_26D1734C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26D1734F8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + 96);
  return sub_26D174054();
}

id sub_26D173574()
{
  result = [objc_opt_self() blackColor];
  qword_2804DDC50 = result;
  byte_2804DDC58 = 0;
  return result;
}

uint64_t ColumnStyle.init(backgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

id static ColumnStyle.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2804DD808 != -1)
  {
    swift_once();
  }

  v2 = qword_2804DDC50;
  v3 = byte_2804DDC58;
  *a1 = qword_2804DDC50;
  *(a1 + 8) = v3;

  return sub_26D14E2C4(v2, v3);
}

uint64_t ColumnStyle.init(fill:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_26D173660()
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

uint64_t sub_26D173770(uint64_t a1, double a2, double a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC9TeaCharts27LineChartCoordinateProvider_lock);
  sub_26D173E44();
  sub_26D14A398(a1, a2, a3);
  return sub_26D173E54();
}

id ColumnChartViewProvider.view(for:style:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ColumnChartView());

  return [v0 init];
}

void ColumnChartViewProvider.present(_:on:attributes:)(uint64_t a1, char *a2, CGFloat *a3)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v15.origin.x = *a3;
  v15.origin.y = v8;
  v15.size.width = v9;
  v15.size.height = v10;
  if (!CGRectIsEmpty(v15))
  {
    v11 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    *v13 = v7;
    *&v13[1] = v8;
    *&v13[2] = v9;
    *&v13[3] = v10;
    memcpy(v14, a3 + 4, sizeof(v14));
    v12 = *v11;
    sub_26D172FAC(a1, a2, v13);
  }
}

uint64_t ColumnChartViewProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t ColumnChartViewProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t Grid.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_26D173A24(v2, v3);
}

uint64_t sub_26D173A24(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t Grid.style.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v4 = v1[4];
  v8 = v1[3];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_26D1529D0(v7, &v6);
}

__n128 Grid.init(_:style:label:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *a3;
  *a4 = *a1;
  *(a4 + 8) = v4;
  v6 = *(a2 + 16);
  *(a4 + 16) = *a2;
  *(a4 + 32) = v6;
  result = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a4 + 48) = result;
  *(a4 + 64) = v8;
  *(a4 + 80) = v5;
  return result;
}

uint64_t sub_26D173AB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D173AF0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

double ChartLayoutAttributes.chartFrame.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return result;
}

uint64_t ChartLayoutAttributes.gridSetLayoutAttributes.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), sizeof(__dst));
  memcpy(a1, (v1 + 32), 0x50uLL);
  return sub_26D173BA4(__dst, &v4);
}

uint64_t sub_26D173C08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D173C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}