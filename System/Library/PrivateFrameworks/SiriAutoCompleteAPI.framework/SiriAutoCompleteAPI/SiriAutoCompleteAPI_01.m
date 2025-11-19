unint64_t sub_1DA3794A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DA3949D4();
  sub_1DA36AA48(v7);
  sub_1DA394A14();
  v5 = -1 << *(a2 + 32);
  result = sub_1DA394644();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1DA379548(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DA378B90(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DA37A0C0(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_1DA3949C4();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DA379B64();
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
    result = sub_1DA394954();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1DA37964C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DA378DB4(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DA37A2AC(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1DA3949D4();
      sub_1DA394354();
      result = sub_1DA394A14();
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
        if (v19 || (sub_1DA394934() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1DA379CA4();
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
    result = sub_1DA394954();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1DA3797B4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DA379010(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DA37A4E0(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_1DA3949D4();
      sub_1DA36AA48(v15);
      result = sub_1DA394A14();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for AutoCompletePhrase();
        if (static AutoCompletePhrase.== infix(_:_:)(*(*(v12 + 48) + 8 * a2), v5))
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DA379DFC();
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
    result = sub_1DA394954();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1DA379900(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v32 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_1DA3791F0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1DA379F4C();
      goto LABEL_22;
    }

    sub_1DA37A688(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1DA3949D4();
  v10 = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = *(v5 + 32);
  sub_1DA394354();
  v34 = v12;
  sub_1DA394354();
  v33 = v14;
  MEMORY[0x1DA74C080](v14 + 1);
  result = sub_1DA394A14();
  v15 = v8 + 56;
  v16 = -1 << *(v8 + 32);
  a2 = result & ~v16;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 48);
    do
    {
      v19 = v18 + 40 * a2;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *v19 == v10 && *(v19 + 8) == v11;
      if (v23 || (result = sub_1DA394934(), (result & 1) != 0))
      {
        v24 = v20 == v34 && v21 == v13;
        if (v24 || (result = sub_1DA394934(), (result & 1) != 0))
        {
          if (v22 == v33)
          {
            goto LABEL_25;
          }
        }
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_22:
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 40 * a2;
  v27 = *(v32 + 16);
  *v26 = *v32;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v32 + 32);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v25 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_25:
  result = sub_1DA394954();
  __break(1u);
  return result;
}

uint64_t sub_1DA379B00(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DA395620;
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

void *sub_1DA379B64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD450, &unk_1DA395DF0);
  v2 = *v0;
  v3 = sub_1DA394724();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DA379CA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD488, &qword_1DA395E28);
  v2 = *v0;
  v3 = sub_1DA394724();
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

void *sub_1DA379DFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D0, &unk_1DA395DD0);
  v2 = *v0;
  v3 = sub_1DA394724();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1DA379F4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD460, &qword_1DA395E00);
  v2 = *v0;
  v3 = sub_1DA394724();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + 8 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

uint64_t sub_1DA37A0C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD450, &unk_1DA395DF0);
  result = sub_1DA394734();
  v6 = result;
  if (*(v3 + 16))
  {
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
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_1DA3949C4();
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
        *(*(v6 + 48) + 8 * v21) = v16;
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
          goto LABEL_25;
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
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DA37A2AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD488, &qword_1DA395E28);
  result = sub_1DA394734();
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
        sub_1DA3949D4();

        sub_1DA394354();
        result = sub_1DA394A14();
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

unint64_t sub_1DA37A4E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D0, &unk_1DA395DD0);
  result = sub_1DA394734();
  v6 = result;
  if (*(v3 + 16))
  {
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
    for (i = result + 56; v10; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
      v17 = *(v6 + 40);
      sub_1DA3949D4();

      sub_1DA36AA48(v19);
      sub_1DA394A14();
      v18 = -1 << *(v6 + 32);
      result = sub_1DA394644();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v16;
    }

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
        goto LABEL_16;
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

  else
  {
LABEL_16:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DA37A688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD460, &qword_1DA395E00);
  result = sub_1DA394734();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v35 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v6 + 40);
        sub_1DA3949D4();

        sub_1DA394354();
        sub_1DA394354();
        MEMORY[0x1DA74C080](v22 + 1);
        result = sub_1DA394A14();
        v24 = -1 << *(v6 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v32 = *(v6 + 48) + 40 * v27;
        *v32 = v18;
        *(v32 + 8) = v19;
        *(v32 + 16) = v20;
        *(v32 + 24) = v21;
        *(v32 + 32) = v22;
        ++*(v6 + 16);
        v3 = v34;
        v11 = v35;
        if (!v35)
        {
          goto LABEL_9;
        }
      }

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
        v31 = *(v13 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v33;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v35 = (v16 - 1) & v16;
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

uint64_t (*sub_1DA37A918(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = sub_1DA3783F8(a3);
  sub_1DA373068(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = MEMORY[0x1DA74BE10](a2, a3);
  }

  *a1 = v8;
  return sub_1DA37A9A4;
}

unint64_t sub_1DA37A9AC()
{
  result = qword_1EDCC51A0;
  if (!qword_1EDCC51A0)
  {
    sub_1DA394144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC51A0);
  }

  return result;
}

uint64_t sub_1DA37AA34(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DA37AA74(uint64_t result, int a2, int a3)
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

void OUTLINED_FUNCTION_4_3(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return sub_1DA394934();
}

uint64_t sub_1DA37ACD8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DA3943D4();
    sub_1DA394454();
    OUTLINED_FUNCTION_20_0();
    return OUTLINED_FUNCTION_23_0();
  }

  return result;
}

uint64_t sub_1DA37AD78@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = sub_1DA37D7D0(a2);
    v7 = v6;
    v9 = v8;
    v10 = sub_1DA37D830(a2);
    v12 = v11;
    v14 = v13;
    v29 = sub_1DA37D9B0(v5, v7, v9 & 1, v4, v10, v11, v13 & 1, a2);
    v16 = v15;
    v18 = v17;
    LODWORD(v4) = ~v17;
    sub_1DA37E1BC(v10, v12, v14 & 1);
    sub_1DA37E1BC(v5, v7, v9 & 1);
    if (v4)
    {
      v19 = v29;
    }

    else
    {
      v19 = sub_1DA37D830(a2);
      v16 = v20;
      v18 = v21;
    }

    v22 = sub_1DA37D7D0(a2);
    v24 = v23;
    v26 = v25 & 1;
    v27 = v18 & 1;
    result = sub_1DA37D238(v22, v23, v25 & 1, v19, v16, v27);
    if (result)
    {
      v33[0] = v22;
      v33[1] = v24;
      v34 = v26;
      v35 = v19;
      v36 = v16;
      v37 = v27;
      sub_1DA37D884(v33, a2, v31);

      sub_1DA37E1BC(v22, v24, v26);
      result = sub_1DA37E1BC(v19, v16, v27);
      v28 = v31[1];
      *a3 = v31[0];
      *(a3 + 16) = v28;
      *(a3 + 32) = v31[2];
      *(a3 + 48) = v32;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA37AF0C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DA37D308(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1DA37D29C(0, v5, a2);
      OUTLINED_FUNCTION_20_0();
      return OUTLINED_FUNCTION_23_0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA37AF80()
{
  OUTLINED_FUNCTION_9_1();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v1[23] = v5;
  v1[24] = v6;
  v7 = sub_1DA393DE4();
  v1[29] = v7;
  v8 = *(v7 - 8);
  v1[30] = v8;
  v9 = *(v8 + 64) + 15;
  v1[31] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA37B03C()
{
  v1 = v0[23];
  v2 = v0[24];
  v0[21] = MEMORY[0x1E69E7CC0];

  v3 = sub_1DA3943C4();
  v6 = __OFSUB__(v3, 1);
  v7 = (v3 - 1);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[29];
    v11 = v0[26];
    v12 = v0[27];
    v13 = v0[23];
    v14 = v0[24];
    v15 = sub_1DA37ACD8(v7);
    v16 = MEMORY[0x1DA74BA20](v15);
    v18 = v17;

    v0[18] = v16;
    v0[19] = v18;
    sub_1DA393DD4();
    sub_1DA368C30();
    v0[32] = sub_1DA3945E4();
    v0[33] = v19;
    (*(v9 + 8))(v8, v10);

    v0[34] = swift_getObjectType();
    v20 = *(v12 + 24);
    v12 += 24;
    v0[35] = v20;
    v0[36] = v12 & 0xFFFFFFFFFFFFLL | 0xE423000000000000;
    v21 = *(v12 - 16);
    v22 = sub_1DA394534();
    v5 = v23;
    v0[37] = v22;
    v0[38] = v23;
    v7 = sub_1DA37B190;
    v4 = v22;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v5);
}

uint64_t sub_1DA37B190()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 288);
  v2 = *(v0 + 208);
  *(v0 + 312) = (*(v0 + 280))(*(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 216));
  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA37B1FC()
{
  v22 = v0;
  if (v0[39] && (v1 = sub_1DA377B88(v0[39]), , v1))
  {
    v2 = v0[33];

    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v3 = sub_1DA3942F4();
    __swift_project_value_buffer(v3, qword_1EDCC51C0);
    v4 = sub_1DA3942D4();
    v5 = sub_1DA394584();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DA365000, v4, v5, "Typo recovery using all matched results leading up to current query", v6, 2u);
      OUTLINED_FUNCTION_46();
    }

    v7 = v0[27];

    v0[40] = *(v7 + 80);
    v0[41] = (v7 + 80) & 0xFFFFFFFFFFFFLL | 0x490D000000000000;
    v8 = v0[37];
    v9 = v0[38];
    v10 = sub_1DA37B464;
  }

  else
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v11 = v0[33];
    v12 = sub_1DA3942F4();
    __swift_project_value_buffer(v12, qword_1EDCC51C0);

    v13 = sub_1DA3942D4();
    v14 = sub_1DA394584();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[32];
      v15 = v0[33];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1DA372AD8(v16, v15, &v21);
      _os_log_impl(&dword_1DA365000, v13, v14, "Typo recovery using previous query %s close matches", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_46();
    }

    v19 = v0[27];
    v0[43] = *(v19 + 40);
    v0[44] = (v19 + 40) & 0xFFFFFFFFFFFFLL | 0xF533000000000000;
    v8 = v0[37];
    v9 = v0[38];
    v10 = sub_1DA37B900;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1DA37B464()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 328);
  v2 = *(v0 + 208);
  *(v0 + 336) = (*(v0 + 320))(*(v0 + 184), *(v0 + 192), *(v0 + 272), *(v0 + 216));
  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA37B4D0()
{
  v41 = v0;
  sub_1DA37AD78(500, *(v0 + 336), v0 + 16);
  v1 = sub_1DA37D068(v0 + 16);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = *(v0 + 32);
  sub_1DA37DF18(v0 + 96, &qword_1ECBAD498, &qword_1DA395E88);
  *(v0 + 120) = *(v0 + 40);
  *(v0 + 136) = *(v0 + 56);
  sub_1DA37DF18(v0 + 120, &qword_1ECBAD498, &qword_1DA395E88);
  *(v0 + 160) = *(v0 + 64);
  v2 = v0 + 160;
  sub_1DA37DF18(v0 + 160, &qword_1ECBAD4A0, &qword_1DA395E90);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  sub_1DA3943C4();
  OUTLINED_FUNCTION_25_0();
  if (!v8)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  v5 = sub_1DA377B88(v1);
  if (v5)
  {
    v10 = v5;
    if (v5 < 1)
    {
      goto LABEL_29;
    }

    v11 = 0;
    v39 = v1 & 0xC000000000000001;
    v37 = 0x7FFFFFFFFFFFFFFFLL;
    v38 = &qword_1ECBAD498 / 100;
    v35 = v0;
    v36 = v9;
    v33 = v5;
    v34 = v0 + 160;
    while (1)
    {
      if (v39)
      {
        v12 = MEMORY[0x1DA74BE10](v11, v1);
      }

      else
      {
        v12 = *(v1 + 8 * v11 + 32);
      }

      v13 = *(v0 + 200);
      v14 = *(v12 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);

      v15 = sub_1DA37BDE8(v13, v14, v38);

      if (v38 >= v15)
      {
        if (qword_1EDCC52A0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v16 = sub_1DA3942F4();
        __swift_project_value_buffer(v16, qword_1EDCC51C0);

        v17 = sub_1DA3942D4();
        v18 = sub_1DA394584();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v40 = v20;
          *v19 = 136315394;
          swift_beginAccess();
          v21 = v1;
          v22 = *(v12 + 16);
          v23 = *(v12 + 24);

          v24 = sub_1DA372AD8(v22, v23, &v40);
          v1 = v21;
          v2 = v34;

          *(v19 + 4) = v24;
          *(v19 + 12) = 2048;
          *(v19 + 14) = v15;
          _os_log_impl(&dword_1DA365000, v17, v18, "Found phrase within fuzzyDistance threshold. Phrase: %s => EditDistance: %ld", v19, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v20);
          v10 = v33;
          OUTLINED_FUNCTION_46();
          v0 = v35;
          OUTLINED_FUNCTION_46();
        }

        MEMORY[0x1DA74BB40](v25);
        OUTLINED_FUNCTION_7_3(*(v2 + 8));
        if (v27)
        {
          OUTLINED_FUNCTION_5_3(v26);
          sub_1DA394504();
        }

        v28 = sub_1DA394524();
        v9 = *(v2 + 8);
        if (v15 < v37)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD490, &qword_1DA395E80);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1DA395E30;
          *(v29 + 32) = v12;
          v36 = v29;
          v37 = v15;
          *(v2 + 16) = v29;
          goto LABEL_23;
        }

        if (v15 == v37)
        {
          MEMORY[0x1DA74BB40](v28);
          OUTLINED_FUNCTION_7_3(*(v2 + 16));
          if (v27)
          {
            OUTLINED_FUNCTION_5_3(v30);
            sub_1DA394504();
          }

          sub_1DA394524();
          v36 = *(v2 + 16);
          goto LABEL_23;
        }
      }

LABEL_23:
      if (v10 == ++v11)
      {
        goto LABEL_26;
      }
    }
  }

  v36 = v9;
LABEL_26:
  *(v0 + 368) = v36;
  *(v0 + 376) = v9;
  v31 = *(v0 + 216);

  v5 = OUTLINED_FUNCTION_2_4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA37B900()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 352);
  v2 = *(v0 + 208);
  *(v0 + 360) = (*(v0 + 344))(*(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 216));

  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA37B978()
{
  v41 = v1;
  v2 = MEMORY[0x1E69E7CC0];
  if (v1[45])
  {
    v3 = v1[45];
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = v1[23];
  v5 = v1[24];
  sub_1DA3943C4();
  OUTLINED_FUNCTION_25_0();
  if (!v9)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  v1[22] = v2;
  v6 = sub_1DA377B88(v3);
  if (v6)
  {
    v10 = v6;
    if (v6 < 1)
    {
      goto LABEL_32;
    }

    v11 = 0;
    v12 = v3 & 0xC000000000000001;
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    v39 = v0 / 100;
    v36 = v3 & 0xC000000000000001;
    v37 = v2;
    v34 = v3;
    v35 = v1;
    while (1)
    {
      if (v12)
      {
        v13 = MEMORY[0x1DA74BE10](v11, v3);
      }

      else
      {
        v13 = *(v3 + 8 * v11 + 32);
      }

      v14 = v1[25];
      v15 = *(v13 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);

      v16 = sub_1DA37BDE8(v14, v15, v39);

      if (v39 >= v16)
      {
        if (qword_1EDCC52A0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v17 = sub_1DA3942F4();
        __swift_project_value_buffer(v17, qword_1EDCC51C0);

        v18 = sub_1DA3942D4();
        v19 = sub_1DA394584();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v40 = v21;
          *v20 = 136315394;
          swift_beginAccess();
          v22 = v10;
          v23 = *(v13 + 16);
          v24 = *(v13 + 24);

          v25 = sub_1DA372AD8(v23, v24, &v40);
          v10 = v22;

          *(v20 + 4) = v25;
          v3 = v34;
          v1 = v35;
          *(v20 + 12) = 2048;
          *(v20 + 14) = v16;
          _os_log_impl(&dword_1DA365000, v18, v19, "Found phrase within fuzzyDistance threshold. Phrase: %s => EditDistance: %ld", v20, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v21);
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_46();
        }

        MEMORY[0x1DA74BB40](v26);
        OUTLINED_FUNCTION_7_3(v1[21]);
        v12 = v36;
        if (v28)
        {
          OUTLINED_FUNCTION_5_3(v27);
          sub_1DA394504();
        }

        v29 = sub_1DA394524();
        v2 = v1[21];
        if (v16 < v38)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD490, &qword_1DA395E80);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1DA395E30;
          *(v30 + 32) = v13;
          v37 = v30;
          v38 = v16;
          v1[22] = v30;
          goto LABEL_26;
        }

        if (v16 == v38)
        {
          MEMORY[0x1DA74BB40](v29);
          OUTLINED_FUNCTION_7_3(v1[22]);
          if (v28)
          {
            OUTLINED_FUNCTION_5_3(v31);
            sub_1DA394504();
          }

          sub_1DA394524();
          v37 = v1[22];
          goto LABEL_26;
        }
      }

LABEL_26:
      if (v10 == ++v11)
      {
        goto LABEL_29;
      }
    }
  }

  v37 = v2;
LABEL_29:
  v1[46] = v37;
  v1[47] = v2;
  v32 = v1[27];

  v6 = OUTLINED_FUNCTION_2_4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA37BD10()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 392);
  v2 = *(v0 + 208);
  (*(v0 + 384))(*(v0 + 184), *(v0 + 192), *(v0 + 376), *(v0 + 272), *(v0 + 216));

  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA37BD88()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[31];

  v2 = v0[1];
  v3 = v0[46];

  return v2(v3);
}

unint64_t sub_1DA37BDE8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v5 = 0;
  isUniquelyReferenced_nonNull_native = *(a1 + 16);
  v7 = a1 + 40;
  v165 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v7 + 16 * v5);
  while (isUniquelyReferenced_nonNull_native != v5)
  {
    if (v5 >= isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_231;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_232;
    }

    v11 = *(v8 - 1);
    v10 = *v8;
    v12 = HIBYTE(*v8) & 0xF;
    if ((*v8 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    ++v5;
    v8 += 2;
    if (v12)
    {

      v13 = v165;
      v176[0] = v165;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v165 + 16);
        OUTLINED_FUNCTION_13_1();
        sub_1DA36CB08();
        v13 = v176[0];
      }

      v15 = *(v13 + 16);
      if (v15 >= *(v13 + 24) >> 1)
      {
        OUTLINED_FUNCTION_16_1();
        sub_1DA36CB08();
        v13 = v176[0];
      }

      *(v13 + 16) = v15 + 1;
      v165 = v13;
      v16 = v13 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v10;
      v5 = v9;
      goto LABEL_2;
    }
  }

  v17 = 0;
  v18 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = a2 + 40;
  v175 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v19 = (isUniquelyReferenced_nonNull_native + 16 * v17);
  while (v18 != v17)
  {
    if (v17 >= v18)
    {
      goto LABEL_233;
    }

    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_234;
    }

    v22 = *(v19 - 1);
    v21 = *v19;
    v23 = HIBYTE(*v19) & 0xF;
    if ((*v19 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    ++v17;
    v19 += 2;
    if (v23)
    {

      v24 = v175;
      v176[0] = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v175 + 16);
        OUTLINED_FUNCTION_13_1();
        sub_1DA36CB08();
        v24 = v176[0];
      }

      v26 = *(v24 + 16);
      if (v26 >= *(v24 + 24) >> 1)
      {
        OUTLINED_FUNCTION_16_1();
        sub_1DA36CB08();
        v24 = v176[0];
      }

      *(v24 + 16) = v26 + 1;
      v175 = v24;
      v27 = v24 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v21;
      v17 = v20;
      goto LABEL_15;
    }
  }

  v28 = MEMORY[0x1E69E7CD0];
  v177 = MEMORY[0x1E69E7CD0];
  v173 = sub_1DA394344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD300, &unk_1DA395610);
  v29 = sub_1DA394344();
  v30 = 0;
  v166 = *(v165 + 16);
  v161 = v29;
  v163 = v165 + 32;
  v31 = v175;
  v174 = v175 + 32;
LABEL_28:
  if (v30 == v166)
  {
    v35 = v165;
    isUniquelyReferenced_nonNull_native = a3;
    if (*(v165 + 16) - *(v173 + 16) > a3)
    {

      return a3 + 1;
    }

    v159 = *(v165 + 16);
    v34 = v161;
    if (!v166)
    {
      goto LABEL_94;
    }

    v51 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v51 >= *(v35 + 16))
      {
        goto LABEL_242;
      }

      OUTLINED_FUNCTION_21_0(v163);
      if (v34 && (v53 = OUTLINED_FUNCTION_26_0(), sub_1DA3753E0(v53, v54), (v55 & 1) != 0))
      {

        v34 = v28;
      }

      else
      {

        OUTLINED_FUNCTION_26_0();
        v56 = sub_1DA3943C4();
        v171 = v30;
        if (v56)
        {
          v57 = v56;
          if (v56 < 1)
          {
            v58 = v52;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4C8, &unk_1DA395EC0);
            v58 = swift_allocObject();
            _swift_stdlib_malloc_size(v58);
            OUTLINED_FUNCTION_5_2();
            *(v58 + 16) = v57;
            *(v58 + 24) = v59;
          }

          OUTLINED_FUNCTION_8_3();
          while (v34)
          {
            v60 = sub_1DA394404();
            if (!v61)
            {
              goto LABEL_257;
            }

            OUTLINED_FUNCTION_15_1(v60, v61);
            if (v43)
            {

              goto LABEL_74;
            }
          }

          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:

          if ((v155 & 1) == 0)
          {
            return isUniquelyReferenced_nonNull_native;
          }

          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        v58 = v52;
LABEL_74:

        if (*(v58 + 16))
        {
          v176[0] = v52;
          OUTLINED_FUNCTION_13_1();
          sub_1DA36CB08();
          v30 = v176[0];
          do
          {
            OUTLINED_FUNCTION_22_0();
            if (isUniquelyReferenced_nonNull_native >= v28 >> 1)
            {
              OUTLINED_FUNCTION_16_1();
              sub_1DA36CB08();
              v30 = v176[0];
            }

            OUTLINED_FUNCTION_18_0();
          }

          while (!v43);

          isUniquelyReferenced_nonNull_native = a3;
          v35 = v165;
          v52 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v30 = v52;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v176[0] = v28;
        sub_1DA3753E0(v171, v3);
        OUTLINED_FUNCTION_12_1();
        v34 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_246;
        }

        OUTLINED_FUNCTION_10_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4C0, &qword_1DA395EB8);
        OUTLINED_FUNCTION_14_1();
        if (sub_1DA394824())
        {
          v28 = v176[0];
          sub_1DA3753E0(v171, v3);
          OUTLINED_FUNCTION_3_4();
          if (!v43)
          {
            goto LABEL_260;
          }

          v58 = v64;
        }

        if (v51)
        {

          OUTLINED_FUNCTION_27_0();
        }

        else
        {
          v34 = v176[0];
          OUTLINED_FUNCTION_1_4(v176[0] + 8 * (v58 >> 6));
          OUTLINED_FUNCTION_17_0((*(v34 + 48) + 16 * v58));
          if (v49)
          {
            goto LABEL_249;
          }

          *(v34 + 16) = v65;
        }
      }

      if (++v51 == v166)
      {
        goto LABEL_95;
      }
    }
  }

  sub_1DA373048(v30, 1, v165);
  v32 = (v163 + 16 * v30);
  v3 = *v32;
  v33 = v32[1];
  v167 = v30 + 1;
  v170 = v30;
  v30 = *(v31 + 16);

  v34 = 0;
LABEL_30:
  v35 = v28 + 56;
  while (1)
  {
LABEL_31:
    if (v34 == v30)
    {

      v30 = v167;
      v31 = v175;
      goto LABEL_28;
    }

    v36 = v34;
    if (v34 >= *(v175 + 16))
    {
      break;
    }

    v37 = (v174 + 16 * v34);
    v38 = *v37;
    isUniquelyReferenced_nonNull_native = v37[1];
    ++v34;
    if (*(v28 + 16))
    {
      v39 = *(v28 + 40);
      v40 = sub_1DA3949C4();
      v41 = ~(-1 << *(v28 + 32));
      while (1)
      {
        v42 = v40 & v41;
        if (((*(v35 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {
          break;
        }

        v40 = v42 + 1;
        if (*(*(v28 + 48) + 8 * v42) == v36)
        {
          goto LABEL_31;
        }
      }
    }

    v43 = v38 == v3 && isUniquelyReferenced_nonNull_native == v33;
    if (v43 || (sub_1DA394934() & 1) != 0)
    {
      sub_1DA378404(v176, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176[0] = v173;
      sub_1DA375458(v170);
      OUTLINED_FUNCTION_12_1();
      if (__OFADD__(v44, v45))
      {
        goto LABEL_235;
      }

      OUTLINED_FUNCTION_10_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4B8, &qword_1DA395EB0);
      OUTLINED_FUNCTION_14_1();
      if (sub_1DA394824())
      {
        isUniquelyReferenced_nonNull_native = v170;
        sub_1DA375458(v170);
        OUTLINED_FUNCTION_3_4();
        if (!v43)
        {
          goto LABEL_260;
        }

        v36 = v46;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v170;
      }

      v173 = v176[0];
      if (v38)
      {
        *(*(v176[0] + 56) + 8 * v36) = 0;
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_1_4(v176[0] + 8 * (v36 >> 6));
      *(v47[6] + 8 * v36) = isUniquelyReferenced_nonNull_native;
      *(v47[7] + 8 * v36) = 0;
      v48 = v47[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_238;
      }

      v47[2] = v50;
LABEL_53:
      v28 = v177;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_94:
  v52 = MEMORY[0x1E69E7CC0];
LABEL_95:
  v172 = *(v175 + 16);
  if (v172)
  {
    v66 = 0;
    while (v66 < *(v175 + 16))
    {
      OUTLINED_FUNCTION_21_0(v174);
      if (v34 && (v67 = OUTLINED_FUNCTION_26_0(), sub_1DA3753E0(v67, v68), (v69 & 1) != 0))
      {

        v34 = v28;
      }

      else
      {

        OUTLINED_FUNCTION_26_0();
        v70 = sub_1DA3943C4();
        v168 = v30;
        if (v70)
        {
          v71 = v70;
          if (v70 < 1)
          {
            v72 = v52;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4C8, &unk_1DA395EC0);
            v72 = swift_allocObject();
            _swift_stdlib_malloc_size(v72);
            OUTLINED_FUNCTION_5_2();
            *(v72 + 16) = v71;
            *(v72 + 24) = v73;
          }

          OUTLINED_FUNCTION_8_3();
          do
          {
            if (!v34)
            {
              goto LABEL_230;
            }

            v74 = sub_1DA394404();
            if (!v75)
            {
              goto LABEL_258;
            }

            OUTLINED_FUNCTION_15_1(v74, v75);
          }

          while (!v43);
        }

        else
        {
          v72 = v52;
        }

        if (*(v72 + 16))
        {
          v176[0] = v52;
          OUTLINED_FUNCTION_13_1();
          sub_1DA36CB08();
          v30 = v176[0];
          do
          {
            OUTLINED_FUNCTION_22_0();
            if (isUniquelyReferenced_nonNull_native >= v28 >> 1)
            {
              OUTLINED_FUNCTION_16_1();
              sub_1DA36CB08();
              v30 = v176[0];
            }

            OUTLINED_FUNCTION_18_0();
          }

          while (!v43);

          isUniquelyReferenced_nonNull_native = a3;
          v35 = v165;
          v52 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v30 = v52;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v176[0] = v28;
        sub_1DA3753E0(v168, v3);
        OUTLINED_FUNCTION_12_1();
        v34 = v76 + v77;
        if (__OFADD__(v76, v77))
        {
          goto LABEL_247;
        }

        OUTLINED_FUNCTION_10_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4C0, &qword_1DA395EB8);
        OUTLINED_FUNCTION_14_1();
        if (sub_1DA394824())
        {
          v28 = v176[0];
          sub_1DA3753E0(v168, v3);
          OUTLINED_FUNCTION_3_4();
          if (!v43)
          {
            goto LABEL_260;
          }

          v72 = v78;
        }

        if (v66)
        {

          OUTLINED_FUNCTION_27_0();
        }

        else
        {
          v34 = v176[0];
          OUTLINED_FUNCTION_1_4(v176[0] + 8 * (v72 >> 6));
          OUTLINED_FUNCTION_17_0((*(v34 + 48) + 16 * v72));
          if (v49)
          {
            goto LABEL_250;
          }

          *(v34 + 16) = v79;
        }
      }

      if (++v66 == v172)
      {
        goto LABEL_130;
      }
    }

LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:

    __break(1u);
LABEL_258:

    __break(1u);
LABEL_259:

    __break(1u);
    while (1)
    {
LABEL_260:
      sub_1DA394964();
      __break(1u);
    }
  }

LABEL_130:
  v80 = 0;
  v81 = 0;
  v49 = __OFADD__(isUniquelyReferenced_nonNull_native, 1);
  v82 = isUniquelyReferenced_nonNull_native + 1;
  v83 = v49;
  v155 = v83;
  v150 = v159 - 1;
  v84 = v35 + 40;
  v85 = v175;
  v154 = v82;
  v149 = v84;
  do
  {
    v153 = v80;
    v162 = v34;
    v86 = (v84 + 16 * v81);
    do
    {
      if (v166 == v81)
      {

        return v80;
      }

      v87 = v81;
      if (v81 >= *(v165 + 16))
      {
        goto LABEL_240;
      }

      v88 = *(v86 - 1);
      v169 = *v86;
      if (!*(v173 + 16))
      {
        break;
      }

      sub_1DA375458(v81);
      v86 += 2;
      v81 = v87 + 1;
    }

    while ((v89 & 1) != 0);

    v158 = sub_1DA394434();
    v91 = v90;
    v92 = sub_1DA3943C4();
    if ((v92 * 51) >> 64 != (51 * v92) >> 63)
    {
      goto LABEL_251;
    }

    v160 = v88;
    v93 = 0;
    v151 = v87 + 1;
    v152 = 51 * v92 / 100;
    v157 = v91;
LABEL_141:
    v94 = v177;
LABEL_142:
    while (1)
    {
      v95 = v93;
      if (v93 == v172)
      {
        break;
      }

      if (v93 >= *(v85 + 16))
      {
        goto LABEL_239;
      }

      v96 = (v174 + 16 * v93);
      v97 = *v96;
      v98 = v96[1];
      ++v93;
      if (*(v94 + 16))
      {
        v99 = *(v94 + 40);
        v100 = sub_1DA3949C4();
        v101 = ~(-1 << *(v94 + 32));
        while (1)
        {
          v102 = v100 & v101;
          if (((*(v94 + 56 + (((v100 & v101) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v100 & v101)) & 1) == 0)
          {
            break;
          }

          v100 = v102 + 1;
          if (*(*(v94 + 48) + 8 * v102) == v95)
          {
            goto LABEL_142;
          }
        }
      }

      v103 = v173;
      if (*(v173 + 16) && (v104 = sub_1DA375458(v87), (v105 & 1) != 0))
      {
        v106 = *(*(v173 + 56) + 8 * v104);
      }

      else
      {
        v106 = v154;
        if (v155)
        {
          goto LABEL_244;
        }
      }

      v164 = v106;

      if (sub_1DA394434() == v158 && v107 == v91)
      {

LABEL_172:
        if (*(v162 + 16))
        {
          v116 = sub_1DA3753E0(v160, v169);
          v117 = MEMORY[0x1E69E7CC0];
          if (v118)
          {
            v119 = *(*(v162 + 56) + 8 * v116);

            goto LABEL_177;
          }
        }

        else
        {
          v117 = MEMORY[0x1E69E7CC0];
        }

        v119 = v117;
LABEL_177:
        if (v87 < v150)
        {
          if (*(v162 + 16))
          {
            sub_1DA3753E0(v97, v98);
            OUTLINED_FUNCTION_10_2();

            v120 = v117;
            if (v88)
            {
              v120 = *(*(v162 + 56) + 8 * v97);
            }
          }

          else
          {

            v120 = v117;
          }

          goto LABEL_206;
        }

        v121 = sub_1DA3943C4();
        if (v121)
        {
          v122 = v121;
          if (v121 < 1)
          {
            v88 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4C8, &unk_1DA395EC0);
            v88 = swift_allocObject();
            _swift_stdlib_malloc_size(v88);
            OUTLINED_FUNCTION_5_2();
            *(v88 + 16) = v122;
            *(v88 + 24) = v123;
          }

          v124 = HIBYTE(v98) & 0xF;
          if ((v98 & 0x2000000000000000) == 0)
          {
            v124 = v97 & 0xFFFFFFFFFFFFLL;
          }

          v176[0] = v97;
          v176[1] = v98;
          v176[2] = 0;
          v176[3] = v124;
          v125 = v122 & ~(v122 >> 63);

          v126 = 32;
          do
          {
            if (!v125)
            {
              goto LABEL_245;
            }

            v127 = sub_1DA394404();
            if (!v128)
            {
              goto LABEL_259;
            }

            v129 = (v88 + v126);
            *v129 = v127;
            v129[1] = v128;
            v126 += 16;
            --v125;
            --v122;
          }

          while (v122);

          v120 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v120 = MEMORY[0x1E69E7CC0];
          v88 = MEMORY[0x1E69E7CC0];
        }

        v130 = sub_1DA3943C4();
        if ((v130 & 0x8000000000000000) != 0)
        {
          goto LABEL_256;
        }

        if (*(v88 + 16) >= v130)
        {
          v131 = v130;
        }

        else
        {
          v131 = *(v88 + 16);
        }

        if (v130 && v131)
        {
          v148 = v119;
          v176[0] = v120;
          OUTLINED_FUNCTION_13_1();
          sub_1DA36CB08();
          v120 = v176[0];
          v132 = (v88 + 40);
          do
          {
            v133 = *(v132 - 1);
            v88 = *v132;
            v176[0] = v120;
            v134 = *(v120 + 16);
            v135 = *(v120 + 24);

            if (v134 >= v135 >> 1)
            {
              OUTLINED_FUNCTION_16_1();
              sub_1DA36CB08();
              v120 = v176[0];
            }

            *(v120 + 16) = v134 + 1;
            v136 = v120 + 16 * v134;
            *(v136 + 32) = v133;
            *(v136 + 40) = v88;
            v132 += 2;
            --v131;
          }

          while (v131);

          v103 = v173;
          v119 = v148;
        }

        else
        {
        }

LABEL_206:
        v137 = sub_1DA36F3BC(v119, v120);

        if (v137 >= v164)
        {
          v138 = v164;
        }

        else
        {
          v138 = v137;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v176[0] = v103;
        v139 = sub_1DA375458(v87);
        OUTLINED_FUNCTION_24_0(v139, v140);
        if (v49)
        {
          goto LABEL_252;
        }

        OUTLINED_FUNCTION_10_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4B8, &qword_1DA395EB0);
        OUTLINED_FUNCTION_14_1();
        if (sub_1DA394824())
        {
          sub_1DA375458(v87);
          OUTLINED_FUNCTION_3_4();
          v85 = v175;
          if (!v43)
          {
            goto LABEL_260;
          }

          v137 = v141;
        }

        else
        {
          v85 = v175;
        }

        v173 = v176[0];
        if (v88)
        {
          *(*(v176[0] + 56) + 8 * v137) = v138;
          v91 = v157;
        }

        else
        {
          OUTLINED_FUNCTION_1_4(v176[0] + 8 * (v137 >> 6));
          OUTLINED_FUNCTION_11_2();
          if (v49)
          {
            goto LABEL_255;
          }

          *(v143 + 16) = v142;
          v91 = v157;
        }

        goto LABEL_141;
      }

      LOBYTE(v88) = sub_1DA394934();

      if (v88)
      {
        goto LABEL_172;
      }

      v109 = sub_1DA3943C4();
      if (v109 >= v164)
      {
        v110 = v164;
      }

      else
      {
        v110 = v109;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v176[0] = v173;
      v111 = sub_1DA375458(v87);
      OUTLINED_FUNCTION_24_0(v111, v112);
      if (v49)
      {
        goto LABEL_241;
      }

      OUTLINED_FUNCTION_10_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4B8, &qword_1DA395EB0);
      OUTLINED_FUNCTION_14_1();
      if (sub_1DA394824())
      {
        sub_1DA375458(v87);
        OUTLINED_FUNCTION_3_4();
        v85 = v175;
        if (!v43)
        {
          goto LABEL_260;
        }

        v97 = v113;
      }

      else
      {
        v85 = v175;
      }

      v173 = v176[0];
      if (v88)
      {
        *(*(v176[0] + 56) + 8 * v97) = v110;
        v91 = v157;
      }

      else
      {
        OUTLINED_FUNCTION_1_4(v176[0] + 8 * (v97 >> 6));
        OUTLINED_FUNCTION_11_2();
        if (v49)
        {
          goto LABEL_248;
        }

        *(v115 + 16) = v114;
        v91 = v157;
      }
    }

    v144 = sub_1DA373CA0(v87, v173);
    isUniquelyReferenced_nonNull_native = v154;
    if (v145)
    {
      v146 = v154;
    }

    else
    {
      v146 = v144;
    }

    if ((v145 & 1 & v155) != 0)
    {
      goto LABEL_254;
    }

    v34 = v162;
    if (v152 < v146)
    {
      goto LABEL_236;
    }

    v80 = v153 + v146;
    if (__OFADD__(v153, v146))
    {
      goto LABEL_253;
    }

    v84 = v149;
    v81 = v151;
  }

  while (v80 <= a3);

  return v80;
}

void *sub_1DA37CEC4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD490, &qword_1DA395E80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_1DA37CF6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DA37D068(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = sub_1DA37DC50(*a1, v2, v3, v4, v5, v6, *(a1 + 48));
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = sub_1DA37CEC4(v7, 0);
  sub_1DA37DF0C(v1, v2, v3);
  sub_1DA37DF0C(v4, v5, v6);

  v10 = sub_1DA37D400(v12, v9 + 4, v8);
  sub_1DA37DF18(v12, &qword_1ECBAD4A8, &qword_1DA395E98);
  if (v10 != v8)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

void sub_1DA37D164(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD458, &unk_1DA396490);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1DA37D238(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (a3)
    {
      v6 = MEMORY[0x1DA74BD00](a4, a5, result, a2);
      return (v6 & 1) == 0;
    }
  }

  else if ((a3 & 1) == 0)
  {
    if (a5 == a2)
    {
      v6 = a4 < result;
      return (v6 & 1) == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DA37D29C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DA37D308(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1DA37D354(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      result = MEMORY[0x1DA74BD00](result, v5, v6, v7);
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(a2 + 16))
  {
    goto LABEL_19;
  }

  if (v5 != v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = result < v6;
LABEL_7:
  if (result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  result = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a1 + 40);
  if (*(a2 + 40))
  {
    if (*(a1 + 40))
    {
      result = MEMORY[0x1DA74BD00](result, v11, v9, v10);
      if ((result & 1) == 0)
      {
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  if (*(a1 + 40))
  {
    goto LABEL_20;
  }

  if (v11 != v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < v9)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1DA37D400(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  *(&__src[3] + 8) = *v3;
  v32 = *(&__src[3] + 8);
  v5 = *(v3 + 32);
  __src[0] = *(&__src[3] + 8);
  __src[1] = v4;
  BYTE8(__src[4]) = *(v3 + 16);
  v33 = BYTE8(__src[4]);
  __src[2] = v5;
  *&__src[3] = *(v3 + 48);
  if (!a2)
  {
    memcpy(result, __src, 0x49uLL);
    sub_1DA37DF78(&v32, v30);
    return 0;
  }

  v6 = a3;
  __dst = result;
  if (!a3)
  {
    sub_1DA37DF78(&v32, v30);
LABEL_43:
    memcpy(__dst, __src, 0x49uLL);
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = *(v3 + 48);
    v9 = *(v3 + 32);
    v29 = *(v3 + 24);
    v28 = *(v3 + 40);
    result = sub_1DA37DF78(&v32, v30);
    v10 = 0;
    v26 = v6;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v12 = *(&__src[3] + 8);
      v13 = BYTE8(__src[4]);
      if (BYTE8(__src[4]))
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_56;
        }

        result = MEMORY[0x1DA74BD10](*(&__src[3] + 1), *&__src[4], v29, v9);
        if (result)
        {
LABEL_44:
          memcpy(__dst, __src, 0x49uLL);
          return v10;
        }

        if ((v33 & 1) == 0)
        {
          goto LABEL_57;
        }

        result = MEMORY[0x1DA74BD00](v12, *(&v12 + 1), v32, *(&v32 + 1));
        if (result)
        {
          goto LABEL_49;
        }

        result = MEMORY[0x1DA74BD00](v12, *(&v12 + 1), v29, v9);
        if ((result & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v28)
        {
          goto LABEL_56;
        }

        if (LODWORD(__src[4]) != v9)
        {
          goto LABEL_48;
        }

        if (*(&__src[3] + 1) == v29)
        {
          goto LABEL_44;
        }

        if (v33)
        {
          goto LABEL_57;
        }

        if (DWORD2(v32) != v9)
        {
          goto LABEL_50;
        }

        if (*(&__src[3] + 1) < v32)
        {
          goto LABEL_51;
        }

        if (*(&__src[3] + 1) >= v29)
        {
          goto LABEL_47;
        }
      }

      result = sub_1DA37DFE8(v12, *(&v12 + 1), v13, v8);
      v14 = result;
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (!v13)
        {
          goto LABEL_58;
        }

        if (sub_1DA394674())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD498, &qword_1DA395E88);
        v19 = sub_1DA394564();
        sub_1DA394714();
        result = v19(v30, 0);
      }

      else
      {
        if (v13)
        {
          goto LABEL_59;
        }

        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v15 = 1 << *(v8 + 32);
        if (v12 >= v15)
        {
          goto LABEL_52;
        }

        v16 = v12 >> 6;
        v17 = *(v8 + 56 + 8 * (v12 >> 6));
        if (((v17 >> v12) & 1) == 0)
        {
          goto LABEL_53;
        }

        if (*(v8 + 36) != DWORD2(v12))
        {
          goto LABEL_54;
        }

        v18 = v17 & (-2 << (v12 & 0x3F));
        if (v18)
        {
          v15 = __clz(__rbit64(v18)) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v16 << 6;
          v21 = v16 + 1;
          v22 = (v8 + 64 + 8 * v16);
          while (v21 < (v15 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              result = sub_1DA37E1BC(v12, *(&v12 + 1), 0);
              v15 = __clz(__rbit64(v23)) + v20;
              goto LABEL_37;
            }
          }

          result = sub_1DA37E1BC(v12, *(&v12 + 1), 0);
LABEL_37:
          v6 = v26;
        }

        v25 = *(v8 + 36);
        *(&__src[3] + 1) = v15;
        *&__src[4] = v25;
        BYTE8(__src[4]) = 0;
      }

      *v7++ = v14;
      v10 = v11;
      if (v11 == v6)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

BOOL sub_1DA37D79C(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x1DA74BD10);
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

uint64_t sub_1DA37D7D0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1DA394654();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_1DA394634();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1DA37D830(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1DA394704();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

uint64_t sub_1DA37D884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DA37D7D0(a2);
  v8 = v7;
  v10 = v9;
  v11 = sub_1DA37D830(a2);
  v13 = v12;
  v14 = v10 & 1;
  v16 = v15 & 1;
  result = sub_1DA37D238(v6, v8, v14, v11, v12, v15 & 1);
  if (result)
  {
    v24[0] = v6;
    v24[1] = v8;
    v25 = v14;
    v26 = v11;
    v27 = v13;
    v28 = v16;
    sub_1DA37D354(a1, v24);
    sub_1DA37E1BC(v6, v8, v14);
    sub_1DA37E1BC(v11, v13, v16);
    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);

    sub_1DA37DF0C(v18, v19, v20);
    result = sub_1DA37DF0C(v21, v22, v23);
    *a3 = v18;
    *(a3 + 8) = v19;
    *(a3 + 16) = v20;
    *(a3 + 24) = v21;
    *(a3 + 32) = v22;
    *(a3 + 40) = v23;
    *(a3 + 48) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA37D9B0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 < 0)
  {
    goto LABEL_38;
  }

  v13 = result;
  v34 = result;
  v35 = a2;
  v36 = a3 & 1;
  result = sub_1DA37DF0C(result, a2, a3 & 1);
  if (!a4)
  {
    return v13;
  }

  v14 = 0;
  v15 = a8 & 0xC000000000000001;
  v32 = a6;
  while (1)
  {
    v17 = v34;
    v16 = v35;
    v18 = v36;
    if (v36)
    {
      if ((a7 & 1) == 0)
      {
        goto LABEL_39;
      }

      result = MEMORY[0x1DA74BD10](v34, v35, a5, a6);
      if (result)
      {
        a5 = v17;
LABEL_32:
        sub_1DA37E1BC(a5, v16, v18);
        return 0;
      }

      if (!v15)
      {
        goto LABEL_40;
      }

      if (sub_1DA394674())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD498, &qword_1DA395E88);
      v23 = sub_1DA394564();
      sub_1DA394714();
      result = v23(v33, 0);
      goto LABEL_28;
    }

    if (a7)
    {
      goto LABEL_39;
    }

    if (v35 != a6)
    {
      break;
    }

    if (v34 == a5)
    {
      goto LABEL_32;
    }

    if (v15)
    {
      goto LABEL_41;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    v19 = 1 << *(a8 + 32);
    if (v34 >= v19)
    {
      goto LABEL_35;
    }

    v20 = v34 >> 6;
    v21 = *(a8 + 56 + 8 * (v34 >> 6));
    if (((v21 >> v34) & 1) == 0)
    {
      goto LABEL_36;
    }

    if (*(a8 + 36) != v35)
    {
      goto LABEL_37;
    }

    v22 = v21 & (-2 << (v34 & 0x3F));
    if (v22)
    {
      v19 = __clz(__rbit64(v22)) | v34 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = a5;
      v25 = a7;
      v26 = v20 << 6;
      v27 = v20 + 1;
      v28 = (a8 + 64 + 8 * v20);
      while (v27 < (v19 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1DA37E1BC(v34, v35, 0);
          v19 = __clz(__rbit64(v29)) + v26;
          goto LABEL_26;
        }
      }

      result = sub_1DA37E1BC(v34, v35, 0);
LABEL_26:
      a7 = v25;
      a5 = v24;
      v15 = a8 & 0xC000000000000001;
      a6 = v32;
    }

    v31 = *(a8 + 36);
    v34 = v19;
    v35 = v31;
    v36 = 0;
LABEL_28:
    if (++v14 >= a4)
    {
      return v34;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1DA37DC50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = a6;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = a3 & 1;
  result = sub_1DA37D238(a1, a2, a3 & 1, a4, a5, a6 & 1);
  if ((result & 1) == 0)
  {
    goto LABEL_39;
  }

  v30 = v13;
  v31 = v12;
  v32 = v14;
  if (sub_1DA37D79C(v13, v12, v14, a4, a5, v8 & 1))
  {
    return 0;
  }

  result = sub_1DA37DF0C(v13, v12, v11 & 1);
  v16 = 0;
  v28 = v8;
  while (!__OFADD__(v16++, 1))
  {
    if ((a7 & 0xC000000000000001) != 0)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_41;
      }

      if (sub_1DA394674())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD498, &qword_1DA395E88);
      v22 = sub_1DA394564();
      sub_1DA394714();
      result = v22(v29, 0);
      v13 = v30;
      v12 = v31;
      if ((v32 & 1) == 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 1) == 0)
      {
        goto LABEL_40;
      }

      result = MEMORY[0x1DA74BD10](v30, v31, a4, a5);
      v11 = 1;
      if (result)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_42;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v18 = 1 << *(a7 + 32);
      if (v13 >= v18)
      {
        goto LABEL_36;
      }

      v19 = v13 >> 6;
      v20 = *(a7 + 56 + 8 * (v13 >> 6));
      if (((v20 >> v13) & 1) == 0)
      {
        goto LABEL_37;
      }

      if (*(a7 + 36) != v12)
      {
        goto LABEL_38;
      }

      v21 = v20 & (-2 << (v13 & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v19 << 6;
        v24 = v19 + 1;
        v25 = (a7 + 64 + 8 * v19);
        while (v24 < (v18 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1DA37E1BC(v13, v12, 0);
            v18 = __clz(__rbit64(v26)) + v23;
            goto LABEL_26;
          }
        }

        result = sub_1DA37E1BC(v13, v12, 0);
LABEL_26:
        v8 = v28;
      }

      v12 = *(a7 + 36);
      v30 = v18;
      v31 = v12;
      v32 = 0;
      v13 = v18;
LABEL_28:
      if (v8)
      {
        goto LABEL_40;
      }

      if (v12 != a5)
      {
        goto LABEL_35;
      }

      v11 = 0;
      if (v13 == a4)
      {
        v13 = a4;
LABEL_32:
        sub_1DA37E1BC(v13, v12, v11);
        return v16;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
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
  return result;
}

uint64_t sub_1DA37DF0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DA37DF18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DA37DF78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4B0, &unk_1DA395EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA37DFE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v6 = a4;
      }

      else
      {
        v6 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = MEMORY[0x1DA74BD60](result, a2, v6);
      type metadata accessor for AutoCompletePhrase();
      swift_dynamicCast();
      return v12;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (a3)
  {
    type metadata accessor for AutoCompletePhrase();
    if (sub_1DA3946A4() == *(a4 + 36))
    {
      v13 = sub_1DA3946B4();
      swift_dynamicCast();
      v7 = v12;
      v8 = *(a4 + 40);
      sub_1DA3949D4();
      sub_1DA36AA48(&v12);
      v9 = sub_1DA394A14();
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v5 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_24;
        }

        if (static AutoCompletePhrase.== infix(_:_:)(*(*(a4 + 48) + 8 * v5), v7))
        {
          goto LABEL_18;
        }

        v9 = v5 + 1;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v11 = *(*(a4 + 48) + 8 * v5);
}

uint64_t sub_1DA37E1BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t (*OUTLINED_FUNCTION_2_4())()
{
  v1[48] = *(v0 + 32);
  v1[49] = (v0 + 32) & 0xFFFFFFFFFFFFLL | 0x4B81000000000000;
  v2 = v1[37];
  v3 = v1[38];
  return sub_1DA37BD10;
}

void OUTLINED_FUNCTION_7_3(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_8_3()
{
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
  *(v2 - 112) = 0;
  *(v2 - 104) = v4;
}

void OUTLINED_FUNCTION_11_2()
{
  *(v0[6] + 8 * v2) = v1;
  *(v0[7] + 8 * v2) = v3;
  v4 = v0[2];
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t result, uint64_t a2)
{
  v4 = (v2 + v3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_17_0(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v5;
  *(*(v2 + 56) + 8 * v3) = v4;
  v6 = *(v2 + 16);
}

void OUTLINED_FUNCTION_18_0()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_20_0()
{
}

uint64_t OUTLINED_FUNCTION_21_0@<X0>(uint64_t a1@<X8>)
{
  v4 = (a1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  v5 = *(v1 - 1);
  v4 = *v1;
  *(v2 - 128) = v0;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_27_0()
{
  v4 = *(*(v2 - 128) + 56);
  v5 = *(v4 + 8 * v0);
  *(v4 + 8 * v0) = v1;
}

uint64_t sub_1DA37E410(unsigned __int8 a1)
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C080](a1 + 1);
  return sub_1DA394A14();
}

uint64_t sub_1DA37E474(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1DA3949D4();
  a2(v5, a1);
  return sub_1DA394A14();
}

uint64_t sub_1DA37E4C4(char a1)
{
  sub_1DA3949D4();
  sub_1DA38B130(a1);
  sub_1DA394354();

  return sub_1DA394A14();
}

uint64_t sub_1DA37E528(uint64_t a1, unsigned __int8 a2)
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C080](a2 + 1);
  return sub_1DA394A14();
}

uint64_t sub_1DA37E588(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1DA3949D4();
  a3(v6, a2);
  return sub_1DA394A14();
}

uint64_t sub_1DA37E5D4(uint64_t a1, char a2)
{
  sub_1DA3949D4();
  sub_1DA38B130(a2);
  sub_1DA394354();

  return sub_1DA394A14();
}

uint64_t sub_1DA37E634(uint64_t a1)
{
  result = MEMORY[0x1DA74BBD0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1DA3784D4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA37E6F4(uint64_t a1)
{
  v2 = MEMORY[0x1DA74BBD0](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1DA378404(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void static DefaultSiriAutoCompleteService.initializeVectorDBClient(readOnly:featureFlagsProvider:databaseDirectoryOverride:)()
{
  OUTLINED_FUNCTION_123();
  v142 = v0;
  v2 = v1;
  v4 = v3;
  v148 = v5;
  v6 = sub_1DA394114();
  v7 = OUTLINED_FUNCTION_0(v6);
  v137 = v8;
  v138 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7();
  v136 = v12 - v11;
  v13 = sub_1DA394154();
  v14 = OUTLINED_FUNCTION_0(v13);
  v134 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7();
  v20 = (v19 - v18);
  v21 = sub_1DA394104();
  v22 = OUTLINED_FUNCTION_0(v21);
  v133 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7();
  v143 = v27 - v26;
  v141 = sub_1DA3940D4();
  v28 = OUTLINED_FUNCTION_0(v141);
  v146 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v135 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v145 = v132 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v132 - v40;
  v42 = sub_1DA393EC4();
  v43 = OUTLINED_FUNCTION_0(v42);
  v144 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v139 = v47 - v48;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = v132 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v147 = v132 - v53;
  v54 = *(v2 + 24);
  v55 = *(v2 + 32);
  v56 = OUTLINED_FUNCTION_68();
  __swift_project_boxed_opaque_existential_1(v56, v57);
  v140 = v4;
  if (v4)
  {
    v58 = *(v55 + 16);
    v59 = OUTLINED_FUNCTION_28_0();
    if ((v60(v59) & 1) == 0)
    {
      if (qword_1EDCC5A30 != -1)
      {
        OUTLINED_FUNCTION_22();
      }

      v61 = sub_1DA3942F4();
      OUTLINED_FUNCTION_38_0(v61, qword_1EDCC5A38);
      v62 = sub_1DA3942D4();
      v63 = sub_1DA394584();
      if (!OUTLINED_FUNCTION_122(v63))
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_81();
      v64 = OUTLINED_FUNCTION_22_1();
      v149[0] = v64;
      *v55 = 136315138;
      OUTLINED_FUNCTION_55();
      *(v55 + 4) = sub_1DA372AD8(0xD000000000000052, v65, v66);
      v69 = "Function: %s > ftsQuery is not enabled. Not initializing ReadOnlyVectorDBClient";
LABEL_18:
      OUTLINED_FUNCTION_145(&dword_1DA365000, v67, v68, v69);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_16_2();
LABEL_19:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_91();

      __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
      return;
    }
  }

  else
  {
    v70 = *(v55 + 8);
    v71 = OUTLINED_FUNCTION_28_0();
    if ((v72(v71) & 1) == 0)
    {
      if (qword_1EDCC5A30 != -1)
      {
        OUTLINED_FUNCTION_22();
      }

      v86 = sub_1DA3942F4();
      OUTLINED_FUNCTION_38_0(v86, qword_1EDCC5A38);
      v62 = sub_1DA3942D4();
      v87 = sub_1DA394584();
      if (!OUTLINED_FUNCTION_122(v87))
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_81();
      v64 = OUTLINED_FUNCTION_22_1();
      v149[0] = v64;
      *v55 = 136315138;
      OUTLINED_FUNCTION_55();
      *(v55 + 4) = sub_1DA372AD8(0xD000000000000052, v88, v89);
      v69 = "Function: %s > indexBuilding is not enabled. Not initializing WritableVectorDBClient";
      goto LABEL_18;
    }
  }

  sub_1DA37F4EC();
  v73 = v42;
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
    sub_1DA36CB60(v41, &qword_1ECBAD400, &unk_1DA395B90);
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_22();
    }

    v74 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v74, qword_1EDCC5A38);
    v75 = sub_1DA3942D4();
    v76 = sub_1DA394594();
    if (OUTLINED_FUNCTION_122(v76))
    {
      OUTLINED_FUNCTION_81();
      v77 = OUTLINED_FUNCTION_22_1();
      v149[0] = v77;
      *v55 = 136315138;
      OUTLINED_FUNCTION_55();
      *(v55 + 4) = sub_1DA372AD8(0xD000000000000052, v78, v79);
      OUTLINED_FUNCTION_145(&dword_1DA365000, v80, v81, "Function: %s > Unable to create a directory for the search index");
      __swift_destroy_boxed_opaque_existential_1(v77);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_16_2();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
    v82 = OUTLINED_FUNCTION_135();
  }

  else
  {
    v95 = v144;
    v96 = v147;
    (*(v144 + 32))(v147, v41, v73);
    v97 = *(v95 + 16);
    v132[1] = v52;
    v142 = v97;
    v97(v52, v96, v73);
    (*(v133 + 104))(v143, *MEMORY[0x1E69DF518], v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4D8, &qword_1DA395FA0);
    v133 = v73;
    v98 = sub_1DA394144();
    OUTLINED_FUNCTION_6_2(v98);
    v100 = *(v99 + 72);
    OUTLINED_FUNCTION_130();
    v132[0] = swift_allocObject();
    *(v132[0] + 16) = xmmword_1DA395D10;
    *v20 = 0;
    v20[1] = 0;
    v101 = *MEMORY[0x1E69DF5B8];
    v102 = *(v134 + 104);
    v103 = OUTLINED_FUNCTION_37_0();
    v102(v103);
    sub_1DA394134();
    *v20 = 0;
    v20[1] = 0;
    v104 = OUTLINED_FUNCTION_37_0();
    v102(v104);
    OUTLINED_FUNCTION_127();
    sub_1DA394134();
    *v20 = 0;
    v20[1] = 0;
    v105 = OUTLINED_FUNCTION_37_0();
    v102(v105);
    sub_1DA394134();
    *v20 = 0;
    v20[1] = 0;
    v106 = OUTLINED_FUNCTION_37_0();
    v102(v106);
    sub_1DA394134();
    *v20 = 0;
    *(v20 + 8) = 1;
    (v102)(v20, *MEMORY[0x1E69DF5C0], v13);
    OUTLINED_FUNCTION_43_0();
    sub_1DA394134();
    *v20 = 0;
    *(v20 + 8) = 0;
    (v102)(v20, *MEMORY[0x1E69DF5B0], v13);
    OUTLINED_FUNCTION_70();
    sub_1DA394134();
    *v20 = xmmword_1DA395D20;
    v107 = OUTLINED_FUNCTION_37_0();
    v102(v107);
    sub_1DA394134();
    (*(v137 + 104))(v136, *MEMORY[0x1E69DF538], v138);
    v108 = v140;
    sub_1DA3940C4();
    v109 = *(v146 + 16);
    v110 = OUTLINED_FUNCTION_8_1();
    v111 = v141;
    v112(v110);
    v113 = sub_1DA3940A4();
    v114 = *(v113 + 48);
    v115 = *(v113 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_86();
    v116 = sub_1DA394054();
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_22();
    }

    v117 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v117, qword_1EDCC5A38);
    v118 = v139;
    v119 = v133;
    v142(v139, v147, v133);
    v120 = sub_1DA3942D4();
    v121 = sub_1DA394584();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = OUTLINED_FUNCTION_83();
      v123 = OUTLINED_FUNCTION_89();
      v143 = v116;
      v149[0] = v123;
      *v122 = 136315394;
      if (v108)
      {
        v124 = 0x796C6E4F64616572;
      }

      else
      {
        v124 = 0x656C626174697277;
      }

      *(v122 + 4) = sub_1DA372AD8(v124, 0xE800000000000000, v149);
      *(v122 + 12) = 2080;
      v125 = sub_1DA393E74();
      v127 = v126;
      OUTLINED_FUNCTION_139();
      (v108)();
      v128 = sub_1DA372AD8(v125, v127, v149);

      *(v122 + 14) = v128;
      _os_log_impl(&dword_1DA365000, v120, v121, "Initialized %s VectorDB client with DB directory: %s", v122, 0x16u);
      OUTLINED_FUNCTION_118();
      v116 = v143;
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_54();
    }

    else
    {

      OUTLINED_FUNCTION_139();
      (v108)(v118, v119);
    }

    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
    v130 = *(v129 + 48);
    *v148 = v116;
    v131 = v145;
    sub_1DA3940B4();
    (*(v146 + 8))(v131, v111);
    (v108)(v147, v119);
    OUTLINED_FUNCTION_46_0();
    v85 = v129;
  }

  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  OUTLINED_FUNCTION_91();
}

id sub_1DA37F2CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3768C8();
  *a1 = result & 1;
  return result;
}

void *sub_1DA37F2F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_1DA393EC4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  result = sub_1DA38E124(v3, 0);
  qword_1EDCC5638 = result;
  return result;
}

void *DefaultSiriAutoCompleteService.__allocating_init(featureFlagProvider:databaseDirectoryOverride:cacheEnabled:)(uint64_t *a1, uint64_t a2, int a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = sub_1DA38E6EC(v13, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

uint64_t static DefaultSiriAutoCompleteService.sharedCacheDisabledInstance.getter()
{
  if (qword_1EDCC5630 != -1)
  {
    swift_once();
  }
}

void sub_1DA37F4EC()
{
  OUTLINED_FUNCTION_123();
  v1 = v0;
  v61[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - v6;
  v8 = sub_1DA393EC4();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = OUTLINED_FUNCTION_26();
  sub_1DA390014(v20, v21, &qword_1ECBAD400, &unk_1DA395B90);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    if (qword_1EDCC5A20 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v8, qword_1EDCC5AA0);
    (*(v11 + 16))(v19, v22, v8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_1DA36CB60(v7, &qword_1ECBAD400, &unk_1DA395B90);
    }
  }

  else
  {
    (*(v11 + 32))(v19, v7, v8);
  }

  v23 = [objc_opt_self() defaultManager];
  v24 = sub_1DA393E94();
  v61[0] = 0;
  v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v61];

  v60 = v61[0];
  if (v25)
  {
    (*(v11 + 32))(v1, v19, v8);
    OUTLINED_FUNCTION_46_0();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v8);
    v29 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_91();

    v32 = v30;
  }

  else
  {
    v33 = v60;
    v34 = sub_1DA393E64();

    swift_willThrow();
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_22();
    }

    v35 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v35, qword_1EDCC5A38);
    v36 = *(v11 + 16);
    v37 = OUTLINED_FUNCTION_102();
    v38(v37);
    v39 = v34;
    v40 = sub_1DA3942D4();
    v41 = sub_1DA394594();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_74();
      v60 = v1;
      v43 = v42;
      v58 = OUTLINED_FUNCTION_100();
      v59 = OUTLINED_FUNCTION_89();
      v61[0] = v59;
      *v43 = 136315650;
      OUTLINED_FUNCTION_55();
      *(v43 + 4) = sub_1DA372AD8(0xD000000000000033, v44, v45);
      *(v43 + 12) = 2080;
      v46 = sub_1DA393E74();
      v48 = v47;
      v49 = *(v11 + 8);
      v49(v16, v8);
      v50 = sub_1DA372AD8(v46, v48, v61);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2112;
      v51 = v34;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 24) = v52;
      v53 = v58;
      *v58 = v52;
      _os_log_impl(&dword_1DA365000, v40, v41, "Function: %s > Unable to create directory at path %s with error: %@", v43, 0x20u);
      sub_1DA36CB60(v53, &qword_1ECBAD2F0, &qword_1DA395840);
      OUTLINED_FUNCTION_46();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_46();
      v1 = v60;
      OUTLINED_FUNCTION_46();

      v54 = OUTLINED_FUNCTION_103();
      (v49)(v54);
    }

    else
    {

      v55 = *(v11 + 8);
      v55(v16, v8);
      v56 = OUTLINED_FUNCTION_103();
      (v55)(v56);
    }

    __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
    v57 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_91();
  }
}

uint64_t sub_1DA37FA18()
{
  v0 = sub_1DA393EC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_1EDCC5AA0);
  __swift_project_value_buffer(v0, qword_1EDCC5AA0);
  sub_1DA393E84();
  sub_1DA393EA4();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1DA37FB58()
{
  v1 = *(*(v0 + 16) + 56);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_2_5(sub_1DA37FB78, v1);
}

uint64_t sub_1DA37FB78()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 24);
  sub_1DA375DAC();
  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_1DA37FC08()
{
  v1 = *(*(v0 + 16) + 56);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_2_5(sub_1DA37FC28, v1);
}

uint64_t sub_1DA37FC28()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 24);
  sub_1DA376194();
  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t DefaultSiriAutoCompleteService.deletePhrasesForSource(source:deactivateWriteClientAfter:)()
{
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  *(v1 + 16) = v0;
  *(v1 + 104) = v4;
  v5 = sub_1DA394154();
  *(v1 + 24) = v5;
  OUTLINED_FUNCTION_6_2(v5);
  *(v1 + 32) = v6;
  v8 = *(v7 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_76();
  v9 = sub_1DA394144();
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_76();
  v12 = sub_1DA3940F4();
  *(v1 + 56) = v12;
  OUTLINED_FUNCTION_6_2(v12);
  *(v1 + 64) = v13;
  v15 = *(v14 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_76();
  *(v1 + 105) = *v3;
  v16 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DA37FDA0()
{
  OUTLINED_FUNCTION_51();
  v5 = *(v1 + 105);
  OUTLINED_FUNCTION_112();
  *(v0 + 8) = 1;
  (*(v6 + 104))(v0, *MEMORY[0x1E69DF5C0]);
  OUTLINED_FUNCTION_43_0();
  sub_1DA394134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4E0, &qword_1DA395FC0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
  OUTLINED_FUNCTION_63(v7);
  v9 = *(v8 + 72);
  v10 = OUTLINED_FUNCTION_99();
  *(v10 + 16) = xmmword_1DA395AB0;
  v11 = v10 + v3;
  v12 = *(v2 + 56);
  v13 = *MEMORY[0x1E69DF560];
  v14 = sub_1DA394124();
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 104);
  v17 = OUTLINED_FUNCTION_102();
  v18(v17);
  *(v11 + v12) = v5 + 1;
  v19 = *MEMORY[0x1E69DF5E0];
  v20 = sub_1DA394164();
  OUTLINED_FUNCTION_10(v20);
  (*(v21 + 104))(v11 + v12, v19, v20);
  OUTLINED_FUNCTION_46_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
  OUTLINED_FUNCTION_28_0();
  sub_1DA3940E4();
  v25 = *(v4 + 56);
  *(v1 + 80) = v25;

  return MEMORY[0x1EEE6DFA0](sub_1DA37FF78, v25, 0);
}

uint64_t sub_1DA37FF78()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 104);
  *(v0 + 88) = sub_1DA375E30();
  *(v0 + 96) = 0;
  OUTLINED_FUNCTION_67();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA380000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47();
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v13 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v13, qword_1EDCC51C0);
  v14 = sub_1DA3942D4();
  v15 = sub_1DA394584();
  if (OUTLINED_FUNCTION_82(v15))
  {
    v16 = *(v12 + 88);
    v18 = *(v12 + 64);
    v17 = *(v12 + 72);
    v19 = *(v12 + 56);
    v20 = *(v12 + 105) + 1;
    v21 = OUTLINED_FUNCTION_74();
    a9 = OUTLINED_FUNCTION_74();
    *v21 = 136315650;
    OUTLINED_FUNCTION_12_2();
    v24 = sub_1DA372AD8(0xD00000000000003ALL, v22, v23);
    OUTLINED_FUNCTION_61(v24);
    *(v21 + 22) = v25;
    *(v21 + 24) = v20;
    OUTLINED_FUNCTION_60();
    _os_log_impl(v26, v27, v28, v29, v30, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(a9);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_30_0();

    v31 = *(v18 + 8);
  }

  else
  {
    v35 = *(v12 + 64);
    v34 = *(v12 + 72);
    v36 = *(v12 + 56);

    v37 = *(v35 + 8);
  }

  v32 = OUTLINED_FUNCTION_28_0();
  v33(v32);
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_58();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1DA38017C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47();
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v14 = v12[12];
  v15 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v15, qword_1EDCC51C0);
  v16 = v14;
  v17 = sub_1DA3942D4();
  sub_1DA394594();

  v18 = OUTLINED_FUNCTION_116();
  v19 = v12[12];
  v21 = v12[8];
  v20 = v12[9];
  v22 = v12[7];
  if (v18)
  {
    OUTLINED_FUNCTION_83();
    v23 = OUTLINED_FUNCTION_87();
    a9 = OUTLINED_FUNCTION_74();
    *v13 = 136315394;
    OUTLINED_FUNCTION_12_2();
    v26 = sub_1DA372AD8(0xD00000000000003ALL, v24, v25);
    OUTLINED_FUNCTION_85(v26);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v27;
    *v23 = v27;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
    sub_1DA36CB60(v23, &qword_1ECBAD2F0, &qword_1DA395840);
    OUTLINED_FUNCTION_56();
    __swift_destroy_boxed_opaque_existential_1(a9);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
  }

  v33 = *(v21 + 8);
  v34 = OUTLINED_FUNCTION_28_0();
  v35(v34);
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_58();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t DefaultSiriAutoCompleteService.deletePhrasesForApp(bundleIds:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
  v1[4] = v3;
  OUTLINED_FUNCTION_6_2(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_76();
  v7 = sub_1DA394154();
  v1[7] = v7;
  OUTLINED_FUNCTION_6_2(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_76();
  v11 = sub_1DA394144();
  OUTLINED_FUNCTION_23(v11);
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_76();
  v14 = sub_1DA3940F4();
  v1[11] = v14;
  OUTLINED_FUNCTION_6_2(v14);
  v1[12] = v15;
  v17 = *(v16 + 64);
  v1[13] = OUTLINED_FUNCTION_76();
  v18 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1DA380484()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[2];
  *v1 = 0;
  v1[1] = 0;
  (*(v4 + 104))(v1, *MEMORY[0x1E69DF5B8], v3);
  OUTLINED_FUNCTION_127();
  sub_1DA394134();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v0[5];
    v31 = v0[4];
    v32 = MEMORY[0x1E69E7CC0];
    v8 = v0[2];
    sub_1DA36CBD8();
    v30 = *MEMORY[0x1E69DF560];
    v29 = *MEMORY[0x1E69DF5D8];
    v28 = sub_1DA394124();
    OUTLINED_FUNCTION_10(v28);
    v27 = *(v9 + 104);
    v10 = (v8 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = (v0[6] + *(v31 + 48));
      v27();
      *v13 = v11;
      v13[1] = v12;
      v14 = sub_1DA394164();
      OUTLINED_FUNCTION_10(v14);
      (*(v15 + 104))(v13, v29, v14);
      OUTLINED_FUNCTION_46_0();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
      v20 = *(v32 + 16);
      v19 = *(v32 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_1DA36CBD8();
      }

      v21 = v0[6];
      *(v32 + 16) = v20 + 1;
      sub_1DA38EDE4(v21, v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, &qword_1ECBAD480, &qword_1DA395E20);
      v10 += 2;
      --v6;
    }

    while (v6);
  }

  v22 = v0[13];
  v23 = v0[10];
  v24 = v0[3];
  sub_1DA3940E4();
  v25 = *(v24 + 56);
  v0[14] = v25;

  return MEMORY[0x1EEE6DFA0](sub_1DA3806D0, v25, 0);
}

uint64_t sub_1DA3806D0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0[13];
  v2 = v0[14];
  v0[15] = sub_1DA375E30();
  v0[16] = 0;
  OUTLINED_FUNCTION_67();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA380758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_72();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_47();
  a18 = v20;
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v23 = v20[2];
  v24 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v24, qword_1EDCC51C0);

  v25 = sub_1DA3942D4();
  sub_1DA394584();
  OUTLINED_FUNCTION_138();

  if (OUTLINED_FUNCTION_124())
  {
    v26 = v20[15];
    v28 = v20[12];
    v27 = v20[13];
    v29 = v20[11];
    v30 = v20[2];
    v31 = OUTLINED_FUNCTION_74();
    a9 = OUTLINED_FUNCTION_89();
    *v31 = 136315650;
    OUTLINED_FUNCTION_12_2();
    v35 = OUTLINED_FUNCTION_151(v32, v33, v34);
    OUTLINED_FUNCTION_61(v35);
    *(v31 + 22) = 2080;
    v36 = MEMORY[0x1DA74BB60](v30, MEMORY[0x1E69E6158]);
    v38 = sub_1DA372AD8(v36, v37, &a9);

    *(v31 + 24) = v38;
    OUTLINED_FUNCTION_60();
    _os_log_impl(v39, v40, v41, v42, v43, 0x20u);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_30_0();

    v44 = *(v28 + 8);
  }

  else
  {
    v48 = v20[12];
    v47 = v20[13];
    v49 = v20[11];

    v50 = *(v48 + 8);
  }

  v45 = OUTLINED_FUNCTION_28_0();
  v46(v45);
  v51 = v20[13];
  v52 = v20[9];
  v53 = v20[10];
  v54 = v20[6];

  OUTLINED_FUNCTION_29_0();
  v55 = v20[16];
  OUTLINED_FUNCTION_58();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
}

uint64_t sub_1DA380928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47();
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v14 = v12[16];
  v15 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v15, qword_1EDCC51C0);
  v16 = v14;
  v17 = sub_1DA3942D4();
  sub_1DA394594();

  v18 = OUTLINED_FUNCTION_116();
  v19 = v12[16];
  v21 = v12[12];
  v20 = v12[13];
  v22 = v12[11];
  if (v18)
  {
    OUTLINED_FUNCTION_83();
    v23 = OUTLINED_FUNCTION_87();
    a9 = OUTLINED_FUNCTION_74();
    *v13 = 136315394;
    OUTLINED_FUNCTION_12_2();
    v27 = OUTLINED_FUNCTION_151(v24, v25, v26);
    OUTLINED_FUNCTION_85(v27);
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v28;
    *v23 = v28;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    sub_1DA36CB60(v23, &qword_1ECBAD2F0, &qword_1DA395840);
    OUTLINED_FUNCTION_56();
    __swift_destroy_boxed_opaque_existential_1(a9);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
  }

  v34 = *(v21 + 8);
  v35 = OUTLINED_FUNCTION_28_0();
  v36(v35);
  v37 = v12[13];
  v38 = v12[9];
  v39 = v12[10];
  v40 = v12[6];

  OUTLINED_FUNCTION_29_0();
  v41 = v12[16];
  OUTLINED_FUNCTION_58();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t DefaultSiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(uint64_t *a1, char a2)
{
  *(v3 + 72) = a2;
  v4 = *a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  return OUTLINED_FUNCTION_2_5(sub_1DA380B04, 0);
}

uint64_t sub_1DA380B04()
{
  OUTLINED_FUNCTION_44_0();
  v2 = *(v1 + 32);
  if (*(v2 + 16))
  {
    v3 = *(*(v1 + 24) + 56);
    *(v1 + 16) = v2;
    v4 = swift_task_alloc();
    *(v1 + 48) = v4;
    *v4 = v1;
    v4[1] = sub_1DA380D44;
    v5 = *(v1 + 72);
    OUTLINED_FUNCTION_153();

    return sub_1DA375C58(v6, v7);
  }

  else
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v10 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v10, qword_1EDCC51C0);
    v11 = sub_1DA3942D4();
    v12 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v12))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v0 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v0 + 4) = sub_1DA372AD8(0xD000000000000044, v13, v14);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    if (*(v1 + 72) != 1)
    {
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_153();

      __asm { BRAA            X2, X16 }
    }

    *(v1 + 40) = *(*(v1 + 24) + 56);
    OUTLINED_FUNCTION_153();

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }
}

uint64_t sub_1DA380CE8()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 40);
  sub_1DA376194();
  OUTLINED_FUNCTION_29_0();

  return v2(0);
}

uint64_t sub_1DA380D44()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_67();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DA380E44()
{
  OUTLINED_FUNCTION_44_0();
  if (qword_1EDCC5A30 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v2 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v2, qword_1EDCC5A38);
  v3 = sub_1DA3942D4();
  v4 = sub_1DA394574();
  if (OUTLINED_FUNCTION_27_1(v4))
  {
    v5 = *(v1 + 56);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_141();
    *v0 = 136315394;
    OUTLINED_FUNCTION_12_2();
    v8 = sub_1DA372AD8(0xD000000000000044, v6, v7);
    OUTLINED_FUNCTION_136(v8);
    OUTLINED_FUNCTION_11_3();
    _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_16_2();
  }

  v14 = *(v1 + 56);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_154();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1DA380F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_51();
  if (qword_1EDCC5A30 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v11 = *(v10 + 64);
  v12 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v12, qword_1EDCC5A38);
  v13 = v11;
  v14 = sub_1DA3942D4();
  sub_1DA394594();

  v15 = OUTLINED_FUNCTION_124();
  v16 = *(v10 + 64);
  if (v15)
  {
    v17 = OUTLINED_FUNCTION_83();
    v18 = OUTLINED_FUNCTION_100();
    a10 = OUTLINED_FUNCTION_74();
    *v17 = 136315394;
    OUTLINED_FUNCTION_9_2();
    v21 = sub_1DA372AD8(0xD000000000000044, v19, v20);
    OUTLINED_FUNCTION_148(v21);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v22;
    *v18 = v22;
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_117(v23, v24, v25, v26);
    sub_1DA36CB60(v18, &qword_1ECBAD2F0, &qword_1DA395840);
    OUTLINED_FUNCTION_52();
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_16_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_110();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t DefaultSiriAutoCompleteService.increaseTapCountForPhrase(phrase:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_76();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_76();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
  v1[8] = v10;
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_76();
  v13 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DA3811C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_47();
  v14 = v12[7];
  v13 = v12[8];
  v15 = v12[5];
  v16 = v12[6];
  v17 = *(v12[4] + 56);
  v18 = sub_1DA393EC4();
  OUTLINED_FUNCTION_10(v18);
  v20 = *(v19 + 16);
  v21 = OUTLINED_FUNCTION_96();
  v22(v21);
  OUTLINED_FUNCTION_36_0();
  sub_1DA36CB60(v16, &qword_1ECBAD400, &unk_1DA395B90);
  if (OUTLINED_FUNCTION_121() == 1)
  {
    sub_1DA36CB60(v12[7], &qword_1ECBAD408, &qword_1DA395FE0);
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v23 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v23, qword_1EDCC51C0);
    v24 = sub_1DA3942D4();
    v25 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v25))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v14 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v14 + 4) = OUTLINED_FUNCTION_152(v26, v27, v28);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    v34 = v12[9];
    v35 = v12[6];
    v36 = v12[7];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_45_0();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }

  else
  {
    v46 = v12[9];
    sub_1DA38EDE4(v12[7], v46, &qword_1ECBAD410, &unk_1DA395BA0);
    v47 = *v46;
    v48 = swift_task_alloc();
    v12[10] = v48;
    *v48 = v12;
    v48[1] = sub_1DA381404;
    v49 = v12[3];
    v50 = v12[4];
    v51 = v12[2];
    OUTLINED_FUNCTION_45_0();

    return DefaultSiriAutoCompleteService.increaseTapCountForPhrase(phrase:readOnlyClient:)();
  }
}

uint64_t sub_1DA381404()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3814E8()
{
  OUTLINED_FUNCTION_9_1();
  sub_1DA36CB60(v0[9], &qword_1ECBAD410, &unk_1DA395BA0);
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];

  OUTLINED_FUNCTION_24_1();

  return v4();
}

uint64_t DefaultSiriAutoCompleteService.increaseTapCountForPhrase(phrase:readOnlyClient:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  v1[25] = OUTLINED_FUNCTION_76();
  v8 = sub_1DA393F34();
  v1[26] = v8;
  OUTLINED_FUNCTION_6_2(v8);
  v1[27] = v9;
  v11 = *(v10 + 64);
  v1[28] = OUTLINED_FUNCTION_76();
  v12 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA381640()
{
  OUTLINED_FUNCTION_44_0();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD470, &qword_1DA395E10);
  v7 = swift_allocObject();
  v0[30] = v7;
  *(v7 + 16) = xmmword_1DA395AB0;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  v8 = *(v4 + 144);
  v0[31] = v8;

  sub_1DA393F24();
  v0[32] = sub_1DA393F14();
  v0[33] = v9;
  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_68();
  v12(v11);

  return MEMORY[0x1EEE6DFA0](sub_1DA381728, v8, 0);
}

uint64_t sub_1DA381728()
{
  OUTLINED_FUNCTION_44_0();
  v2 = v0[30];
  v1 = v0[31];
  v3 = sub_1DA374A20(v0[32], v0[33]);

  v0[34] = v3;
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1DA3817F4;
  v5 = v0[23];
  v6 = v0[24];
  OUTLINED_FUNCTION_154();

  return sub_1DA382224(v7, v8, v9, v10, v11);
}

uint64_t sub_1DA3817F4()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v2 = v1;
  v4 = v3[35];
  v5 = v3[34];
  v6 = v3[30];
  v7 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v10 + 288) = v9;

  swift_unknownObjectRelease();

  v11 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DA381910()
{
  OUTLINED_FUNCTION_44_0();
  if (sub_1DA377B88(v0[36]) != 1 || !sub_1DA377B88(v0[36]))
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v14 = v0[36];
    v15 = sub_1DA3942F4();
    v16 = __swift_project_value_buffer(v15, qword_1EDCC51C0);

    v17 = sub_1DA3942D4();
    v18 = sub_1DA394594();
    v19 = OUTLINED_FUNCTION_27_1(v18);
    v20 = v0[36];
    if (v19)
    {
      v21 = OUTLINED_FUNCTION_81();
      *v21 = 134217984;
      v22 = sub_1DA377B88(v20);

      *(v21 + 4) = v22;

      _os_log_impl(&dword_1DA365000, v17, v16, "Unexpected records retrieved count: %ld", v21, 0xCu);
      OUTLINED_FUNCTION_21_1();
    }

    else
    {
      v23 = v0[36];
      swift_bridgeObjectRelease_n();
    }

    v24 = v0[28];
    v25 = v0[25];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_154();

    __asm { BRAA            X1, X16 }
  }

  v1 = v0[36];
  v2 = v1 & 0xC000000000000001;
  sub_1DA373068(0, (v1 & 0xC000000000000001) == 0, v1);
  if (v2)
  {
    v4 = MEMORY[0x1DA74BE10](0, v0[36]);
    v28 = v0[36];
  }

  else
  {
    v3 = *(v0[36] + 32);
  }

  v0[37] = v4;
  v5 = v0[29];
  v6 = v0[24];
  v8 = v0[21];
  v7 = v0[22];

  v0[38] = *(v6 + 56);
  v9 = swift_allocObject();
  v0[39] = v9;
  *(v9 + 16) = xmmword_1DA395AB0;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;

  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA381B30()
{
  OUTLINED_FUNCTION_50();
  v2 = v0[38];
  v1 = v0[39];
  v0[40] = sub_1DA375FE4();
  v0[41] = 0;
  v3 = v0[39];

  OUTLINED_FUNCTION_67();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA381BC0()
{
  OUTLINED_FUNCTION_44_0();
  v38 = v2;
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v3 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v3, qword_1EDCC51C0);
  v4 = sub_1DA3942D4();
  v5 = sub_1DA394584();
  if (OUTLINED_FUNCTION_27_1(v5))
  {
    v6 = v2[40];
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_141();
    *v1 = 136315394;
    OUTLINED_FUNCTION_12_2();
    v9 = sub_1DA372AD8(0xD000000000000031, v7, v8);
    OUTLINED_FUNCTION_136(v9);
    OUTLINED_FUNCTION_11_3();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_16_2();
  }

  v15 = v2[37];
  v16 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
  result = OUTLINED_FUNCTION_147();
  v18 = *(v15 + v16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_146(v20);
    sub_1DA393F04();
    OUTLINED_FUNCTION_46_0();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    v25 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
    OUTLINED_FUNCTION_144();
    sub_1DA368730(v0, v4 + v25);
    swift_endAccess();
    type metadata accessor for VectorSearchAssets.Builder();
    inited = swift_initStackObject();
    v27 = MEMORY[0x1E69E7CD0];
    *(inited + 16) = MEMORY[0x1E69E7CC0];
    *(inited + 24) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD490, &qword_1DA395E80);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_1DA395E30;
    *(v28 + 32) = v4;

    v29 = sub_1DA377700(v28);

    swift_setDeallocating();
    sub_1DA38B2B8();
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    v30 = *(v29 + 16);

    VectorSearchAssets.init(phrases:)(v31, &v37);

    v32 = v37;
    v2[42] = v37;
    v2[20] = v32;
    v33 = swift_task_alloc();
    v2[43] = v33;
    *v33 = v2;
    OUTLINED_FUNCTION_34_0(v33);
    OUTLINED_FUNCTION_154();

    return DefaultSiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(v34, v35);
  }

  return result;
}

uint64_t sub_1DA381E08()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v2 = *(v1 + 344);
  v3 = *(v1 + 336);
  v4 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA381F08()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[37];

  v2 = v0[28];
  v3 = v0[25];

  OUTLINED_FUNCTION_24_1();

  return v4();
}

uint64_t sub_1DA381F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_150();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_51();
  a16 = v18;
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v21 = v18[41];
  v22 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v22, qword_1EDCC51C0);
  v23 = v21;
  v24 = sub_1DA3942D4();
  sub_1DA394594();

  v25 = OUTLINED_FUNCTION_124();
  v26 = v18[41];
  if (v25)
  {
    v27 = OUTLINED_FUNCTION_83();
    v28 = OUTLINED_FUNCTION_100();
    v29 = OUTLINED_FUNCTION_74();
    a10 = v29;
    *v27 = 136315394;
    OUTLINED_FUNCTION_9_2();
    v32 = sub_1DA372AD8(0xD000000000000031, v30, v31);
    OUTLINED_FUNCTION_148(v32);
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v33;
    *v28 = v33;
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_117(v34, v35, v36, v37);
    sub_1DA36CB60(v28, &qword_1ECBAD2F0, &qword_1DA395840);
    OUTLINED_FUNCTION_52();
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_16_2();
  }

  else
  {
  }

  v38 = v18[37];
  v39 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
  result = OUTLINED_FUNCTION_147();
  v41 = *(v38 + v39);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_146(v43);
    sub_1DA393F04();
    OUTLINED_FUNCTION_46_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    v48 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
    OUTLINED_FUNCTION_144();
    sub_1DA368730(v26, v24 + v48);
    swift_endAccess();
    type metadata accessor for VectorSearchAssets.Builder();
    inited = swift_initStackObject();
    v50 = MEMORY[0x1E69E7CD0];
    *(inited + 16) = MEMORY[0x1E69E7CC0];
    *(inited + 24) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD490, &qword_1DA395E80);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_1DA395E30;
    *(v51 + 32) = v24;

    v52 = sub_1DA377700(v51);

    swift_setDeallocating();
    sub_1DA38B2B8();
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    v53 = *(v52 + 16);

    VectorSearchAssets.init(phrases:)(v54, &a10);

    v55 = a10;
    v18[42] = a10;
    v18[20] = v55;
    v56 = swift_task_alloc();
    v18[43] = v56;
    *v56 = v18;
    OUTLINED_FUNCTION_34_0(v56);
    OUTLINED_FUNCTION_110();

    return DefaultSiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(v57, v58);
  }

  return result;
}

uint64_t sub_1DA382224(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 156) = a2;
  *(v6 + 24) = a1;
  v7 = sub_1DA3941A4();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3822F0, 0, 0);
}

uint64_t sub_1DA3822F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_51();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 32);
  v13 = *(v10 + 156);
  sub_1DA394084();
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  if (v13)
  {
    v16 = *(v10 + 24);
  }

  OUTLINED_FUNCTION_9();
  v17 = sub_1DA394034();
  *(v10 + 88) = v17;
  v18 = *(v17 + 16);
  *(v10 + 96) = v18;
  if (v18)
  {
    v19 = *(v10 + 64);
    v20 = *(v10 + 72);
    v21 = *(v20 + 16);
    v20 += 16;
    v22 = *(v20 + 64);
    *(v10 + 152) = v22;
    *(v10 + 104) = *(v20 + 56);
    *(v10 + 112) = v21;
    *(v10 + 120) = 0;
    *(v10 + 128) = v11;
    v21(*(v10 + 80), v17 + ((v22 + 32) & ~v22), v19);
    v23 = swift_task_alloc();
    *(v10 + 136) = v23;
    *v23 = v10;
    OUTLINED_FUNCTION_35_0(v23);
    OUTLINED_FUNCTION_110();

    return sub_1DA382E28(v24, v25, v26);
  }

  else
  {

    v29 = *(v10 + 80);
    v30 = *(v10 + 32);
    sub_1DA394094();

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_110();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }
}

uint64_t sub_1DA382590()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v2 = v1;
  v4 = v3[17];
  v5 = v3[10];
  v6 = v3[9];
  v7 = v3[8];
  v8 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  *(v11 + 144) = v10;

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_68();
  v14(v13);
  v15 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1DA3826CC()
{
  OUTLINED_FUNCTION_50();
  if (*(v0 + 144))
  {
    v1 = (v0 + 16);
    v2 = *(v0 + 144);

    MEMORY[0x1DA74BB40](v3);
    OUTLINED_FUNCTION_142();
    if (v5)
    {
      OUTLINED_FUNCTION_23_1(v4);
      sub_1DA394504();
    }

    OUTLINED_FUNCTION_8_1();
    sub_1DA394524();
  }

  else
  {
    v1 = (v0 + 128);
  }

  v6 = *v1;
  v7 = *(v0 + 120) + 1;
  if (v7 == *(v0 + 96))
  {
    v8 = *(v0 + 88);

    v9 = *(v0 + 80);
    v10 = *(v0 + 32);
    sub_1DA394094();

    OUTLINED_FUNCTION_29_0();

    return v11(v6);
  }

  else
  {
    *(v0 + 120) = v7;
    *(v0 + 128) = v6;
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v0 + 152);
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v18 = *(v0 + 64);
    v19 = *(v0 + 72);
    OUTLINED_FUNCTION_114();
    v20();
    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    *v21 = v0;
    v22 = OUTLINED_FUNCTION_35_0();

    return sub_1DA382E28(v22, v23, v24);
  }
}

uint64_t DefaultSiriAutoCompleteService.fetchPhrasesMatching(filters:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_1DA393F34();
  v1[5] = v3;
  OUTLINED_FUNCTION_6_2(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_76();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_76();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_76();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
  v1[10] = v13;
  OUTLINED_FUNCTION_23(v13);
  v15 = *(v14 + 64);
  v1[11] = OUTLINED_FUNCTION_76();
  v16 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DA38296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_47();
  v14 = v12[9];
  v13 = v12[10];
  v15 = v12[8];
  v16 = v12[4];
  v17 = *(v12[3] + 56);
  v18 = sub_1DA393EC4();
  OUTLINED_FUNCTION_10(v18);
  v20 = *(v19 + 16);
  v21 = OUTLINED_FUNCTION_96();
  v22(v21);
  OUTLINED_FUNCTION_36_0();
  sub_1DA36CB60(v15, &qword_1ECBAD400, &unk_1DA395B90);
  if (OUTLINED_FUNCTION_121() == 1)
  {
    sub_1DA36CB60(v12[9], &qword_1ECBAD408, &qword_1DA395FE0);
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v23 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v23, qword_1EDCC51C0);
    v24 = sub_1DA3942D4();
    v25 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v25))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v14 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v14 + 4) = sub_1DA372AD8(0xD00000000000001ELL, v26, v27);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    v33 = v12[11];
    v34 = v12[8];
    v35 = v12[9];
    v36 = v12[7];

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_45_0();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }

  else
  {
    v47 = v12[6];
    v46 = v12[7];
    v48 = v12[5];
    v49 = v12[3];
    sub_1DA38EDE4(v12[9], v12[11], &qword_1ECBAD410, &unk_1DA395BA0);
    v12[12] = *(v49 + 144);
    sub_1DA393F24();
    v12[13] = sub_1DA393F14();
    v12[14] = v50;
    v51 = *(v47 + 8);
    v52 = OUTLINED_FUNCTION_68();
    v53(v52);
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x1EEE6DFA0](v54, v55, v56);
  }
}

uint64_t sub_1DA382BB8()
{
  OUTLINED_FUNCTION_44_0();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[2];
  v4 = sub_1DA374A20(v0[13], v0[14]);
  v6 = v5;

  v0[15] = v4;
  v7 = *v2;
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1DA382C94;
  v9 = v0[3];

  return sub_1DA382224(v3, 0, v7, v4, v6);
}

uint64_t sub_1DA382C94()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA382D7C()
{
  OUTLINED_FUNCTION_50();
  v1 = v0[15];
  v2 = v0[11];
  swift_unknownObjectRelease();
  sub_1DA36CB60(v2, &qword_1ECBAD410, &unk_1DA395BA0);
  v3 = v0[17];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  OUTLINED_FUNCTION_29_0();

  return v8(v3);
}

uint64_t sub_1DA382E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_5(sub_1DA382E48, 0);
}

uint64_t sub_1DA382E48()
{
  OUTLINED_FUNCTION_50();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = swift_getObjectType();
  v0[6] = sub_1DA394184();
  v0[7] = v4;
  v5 = *(v2 + 72);
  v2 += 72;
  v0[8] = v5;
  v0[9] = v2 & 0xFFFFFFFFFFFFLL | 0x48D6000000000000;
  v6 = *(v2 - 64);
  v8 = sub_1DA394534();
  v0[10] = v8;
  v0[11] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1DA382EF4, v8, v7);
}

uint64_t sub_1DA382EF4()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  *(v0 + 96) = (*(v0 + 64))(*(v0 + 48), *(v0 + 56), *(v0 + 40), *(v0 + 32));

  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA382F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_51();
  if (v11[12])
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v12 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v12, qword_1EDCC51C0);
    v13 = sub_1DA3942D4();
    v14 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v14))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v10 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v10 + 4) = OUTLINED_FUNCTION_152(v15, v16, v17);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    v23 = v11[12];
    goto LABEL_22;
  }

  v24 = v11[2];
  v11[13] = sub_1DA394194();
  v11[14] = v25;
  if (v25 >> 60 == 15)
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v26 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v26, qword_1EDCC51C0);
    v27 = sub_1DA3942D4();
    v28 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v28))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v10 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v10 + 4) = OUTLINED_FUNCTION_152(v29, v30, v31);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

LABEL_21:

LABEL_22:
    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_110();

    return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10);
  }

  type metadata accessor for AutoCompletePhrase();
  OUTLINED_FUNCTION_8_1();
  v37 = static AutoCompletePhrase.decodeFromPlist(_:)();
  v11[15] = v37;
  if (!v37)
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v47 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v47, qword_1EDCC51C0);
    v27 = sub_1DA3942D4();
    v48 = sub_1DA394584();
    if (OUTLINED_FUNCTION_82(v48))
    {
      v49 = OUTLINED_FUNCTION_81();
      a10 = OUTLINED_FUNCTION_74();
      *v49 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v49 + 4) = OUTLINED_FUNCTION_152(v50, v51, v52);
      OUTLINED_FUNCTION_60();
      _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(a10);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_30_0();
    }

    v58 = OUTLINED_FUNCTION_8_1();
    sub_1DA390000(v58, v59);
    goto LABEL_21;
  }

  v38 = v11[4];
  v39 = v11[2];
  v11[16] = sub_1DA394184();
  v11[17] = v40;
  v11[18] = *(v38 + 64);
  v11[19] = (v38 + 64) & 0xFFFFFFFFFFFFLL | 0x1DE0000000000000;
  v41 = v11[10];
  v42 = v11[11];
  OUTLINED_FUNCTION_110();

  return MEMORY[0x1EEE6DFA0](v43, v44, v45);
}

uint64_t sub_1DA383264()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 152);
  v2 = *(v0 + 24);
  (*(v0 + 144))(*(v0 + 128), *(v0 + 136), *(v0 + 120), *(v0 + 40), *(v0 + 32));

  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA3832DC()
{
  OUTLINED_FUNCTION_9_1();
  sub_1DA390000(v0[13], v0[14]);
  v1 = v0[15];
  OUTLINED_FUNCTION_29_0();

  return v2();
}

uint64_t DefaultSiriAutoCompleteService.autoCompleteResults(for:using:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[10] = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_76();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_76();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
  v1[13] = v13;
  OUTLINED_FUNCTION_23(v13);
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_76();
  v16 = sub_1DA393DE4();
  v1[15] = v16;
  OUTLINED_FUNCTION_6_2(v16);
  v1[16] = v17;
  v19 = *(v18 + 64);
  v1[17] = OUTLINED_FUNCTION_76();
  v20 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1DA383494()
{
  v1 = *(*(v0 + 72) + 144);
  *(v0 + 144) = v1;
  return OUTLINED_FUNCTION_2_5(sub_1DA3834B4, v1);
}

uint64_t sub_1DA3834B4()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[18];
  v0[19] = sub_1DA374A20(v0[7], v0[8]);
  v0[20] = v2;
  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA383518()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[5];
  v7 = v0[6];
  v0[2] = sub_1DA394394();
  v0[3] = v8;
  sub_1DA393DD4();
  sub_1DA368C30();
  v0[21] = sub_1DA3945E4();
  v0[22] = v9;
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_113();
  v12(v11);

  v0[23] = swift_getObjectType();
  v13 = *(v2 + 56);
  v2 += 56;
  v0[24] = v13;
  v0[25] = v2 & 0xFFFFFFFFFFFFLL | 0x4D2F000000000000;
  v14 = *(v2 - 48);
  v16 = sub_1DA394534();
  v0[26] = v16;
  v0[27] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1DA383620, v16, v15);
}

uint64_t sub_1DA383620()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  *(v0 + 224) = (*(v0 + 192))(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 160));
  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA38368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_47();
  a18 = v20;
  v23 = v20[28];
  if (v23)
  {
    v24 = v20[22];

    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v25 = v20[6];
    v26 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v26, qword_1EDCC51C0);

    v27 = sub_1DA3942D4();
    v28 = sub_1DA394584();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v20[19];
    if (v29)
    {
      v32 = v20[5];
      v31 = v20[6];
      v33 = OUTLINED_FUNCTION_83();
      a10 = OUTLINED_FUNCTION_89();
      *v33 = 136315394;
      OUTLINED_FUNCTION_9_2();
      *(v33 + 4) = OUTLINED_FUNCTION_151(v34, v35, v36);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_1DA372AD8(v32, v31, &a10);
      _os_log_impl(&dword_1DA365000, v27, v28, "Cache hit: %s > Using cached response for: '%s'", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_21_1();
    }

    swift_unknownObjectRelease();

    v37 = v20[6];
    v38 = v20[4];
    *v38 = v20[5];
    v39 = 1;
LABEL_13:
    *(v38 + 8) = v37;
    *(v38 + 16) = v23;
    *(v38 + 24) = v39;

    v66 = v20[17];
    v67 = v20[14];
    v69 = v20[11];
    v68 = v20[12];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_45_0();

    return v71(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12);
  }

  v41 = v20[12];
  v40 = v20[13];
  v42 = v20[10];
  v43 = v20[11];
  v44 = *(v20[9] + 56);
  v45 = sub_1DA393EC4();
  OUTLINED_FUNCTION_10(v45);
  v47 = *(v46 + 16);
  v48 = OUTLINED_FUNCTION_96();
  v49(v48);
  OUTLINED_FUNCTION_36_0();
  sub_1DA36CB60(v43, &qword_1ECBAD400, &unk_1DA395B90);
  v50 = OUTLINED_FUNCTION_121();
  v51 = v20[12];
  if (v50 == 1)
  {
    v52 = v20[22];

    sub_1DA36CB60(v51, &qword_1ECBAD408, &qword_1DA395FE0);
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v53 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v53, qword_1EDCC51C0);
    v54 = sub_1DA3942D4();
    v55 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v55))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v41 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v41 + 4) = OUTLINED_FUNCTION_151(v56, v57, v58);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    v64 = v20[19];
    v65 = v20[5];
    v37 = v20[6];
    v38 = v20[4];
    swift_unknownObjectRelease();
    *v38 = v65;
    v39 = 2;
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v79 = v20[14];
  v80 = OUTLINED_FUNCTION_68();
  sub_1DA38EDE4(v80, v81, v82, v83);
  v84 = *v79;
  v85 = swift_task_alloc();
  v20[29] = v85;
  *v85 = v20;
  v85[1] = sub_1DA383A48;
  v87 = v20[21];
  v86 = v20[22];
  v88 = v20[8];
  v89 = v20[9];
  v90 = v20[7];
  OUTLINED_FUNCTION_45_0();

  return DefaultSiriAutoCompleteService.autoCompleteResults(for:using:readDatabaseClient:)();
}

uint64_t sub_1DA383A48()
{
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = v1[29];
  v5 = v1[20];
  v10 = *v0;
  v2[30] = v6;

  v2[31] = *(v5 + 48);
  v2[32] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x8734000000000000;
  v7 = v1[27];
  v8 = v1[26];

  return MEMORY[0x1EEE6DFA0](sub_1DA383B8C, v8, v7);
}

uint64_t sub_1DA383B8C()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 256);
  v2 = *(v0 + 152);
  (*(v0 + 248))(*(v0 + 168), *(v0 + 176), *(v0 + 240), *(v0 + 184), *(v0 + 160));

  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DA383C04()
{
  OUTLINED_FUNCTION_44_0();
  v1 = v0[30];
  v2 = v0[19];
  v3 = v0[14];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  swift_unknownObjectRelease();
  *v6 = v5;
  *(v6 + 8) = v4;
  *(v6 + 16) = v1;
  *(v6 + 24) = 0;

  sub_1DA36CB60(v3, &qword_1ECBAD410, &unk_1DA395BA0);
  v7 = v0[17];
  v8 = v0[14];
  v10 = v0[11];
  v9 = v0[12];

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_154();

  __asm { BRAA            X1, X16 }
}

uint64_t DefaultSiriAutoCompleteService.autoCompleteResults(for:using:readDatabaseClient:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_1DA3941A4();
  v1[13] = v7;
  OUTLINED_FUNCTION_6_2(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = OUTLINED_FUNCTION_76();
  v11 = sub_1DA394154();
  v1[16] = v11;
  OUTLINED_FUNCTION_6_2(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = OUTLINED_FUNCTION_76();
  v15 = sub_1DA393DE4();
  v1[19] = v15;
  OUTLINED_FUNCTION_6_2(v15);
  v1[20] = v16;
  v18 = *(v17 + 64);
  v1[21] = OUTLINED_FUNCTION_76();
  v19 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1DA383E24()
{
  v1 = *(*(v0 + 96) + 144);
  *(v0 + 176) = v1;
  return OUTLINED_FUNCTION_2_5(sub_1DA383E44, v1);
}

uint64_t sub_1DA383E44()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[22];
  v0[23] = sub_1DA374A20(v0[9], v0[10]);
  v0[24] = v2;
  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA383EA8()
{
  *(v0 + 200) = type metadata accessor for SignpostLogger();
  if (qword_1ECBAD2C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 88);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 208) = qword_1ECBAD358;
  OUTLINED_FUNCTION_20_1();
  static SignpostLogger.begin(log:name:telemetry:)(v7, v8, v9, v10, v11, v12, v13);
  sub_1DA394084();
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  sub_1DA368C30();
  OUTLINED_FUNCTION_134();
  v14 = sub_1DA3945D4();
  v16 = v15;
  *(v0 + 32) = v14;
  *(v0 + 40) = v15;
  sub_1DA393DD4();
  OUTLINED_FUNCTION_113();
  v17 = sub_1DA3945E4();
  v19 = v18;
  *(v0 + 216) = v17;
  *(v0 + 224) = v18;
  (*(v2 + 8))(v1, v3);

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_20;
  }

  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v21 = sub_1DA3942F4();
  *(v0 + 232) = __swift_project_value_buffer(v21, qword_1EDCC51C0);

  v22 = sub_1DA3942D4();
  sub_1DA394584();
  OUTLINED_FUNCTION_111();

  if (OUTLINED_FUNCTION_116())
  {
    v1 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_89();
    *v1 = 136315394;
    *(v1 + 4) = OUTLINED_FUNCTION_84("enableTelemetry=YES", v101, v102, v103, v105, v106);
    *(v1 + 12) = 2080;
    v23 = OUTLINED_FUNCTION_134();
    *(v1 + 14) = sub_1DA372AD8(v23, v24, v25);
    OUTLINED_FUNCTION_117(&dword_1DA365000, v22, v16, "Function: %s > Fetching autocomplete results for: '%s'");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_16_2();
  }

  v26 = *(v0 + 96);
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_134();
  sub_1DA384E58();
  if (!*(v27 + 16))
  {

    v42 = sub_1DA3942D4();
    v43 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v43))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      *v1 = 136315138;
      *(v1 + 4) = OUTLINED_FUNCTION_84("enableTelemetry=YES", v101, v102, v103, v105, v106);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

LABEL_20:
    v62 = *(v0 + 200);
    v61 = *(v0 + 208);
    v63 = *(v0 + 184);
    v64 = *(v0 + 168);
    v65 = *(v0 + 144);
    v66 = *(v0 + 120);
    v67 = *(v0 + 88);
    OUTLINED_FUNCTION_20_1();
    static SignpostLogger.end(log:name:telemetry:)(v68, v69, v70, v71, v72, v73, v74);
    sub_1DA394094();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_101();

    __asm { BRAA            X2, X16 }
  }

  v29 = *(v0 + 136);
  v28 = *(v0 + 144);
  v30 = *(v0 + 128);
  v107 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4E8, &qword_1DA396028);
  v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4F0, &qword_1DA396030) - 8);
  v32 = *(*v31 + 72);
  OUTLINED_FUNCTION_130();
  v35 = v34 & ~v33;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1DA395F10;
  v37 = v36 + v35;
  v104 = v31[14];
  *v28 = 0;
  *(v28 + 8) = 1;
  v38 = *(v29 + 104);
  v38(v28, *MEMORY[0x1E69DF5C0], v30);
  sub_1DA394134();
  *(v37 + v104) = 1;
  v39 = v37 + v32;
  v40 = v31[14];
  *v28 = 0;
  *(v28 + 8) = 0;
  v38(v28, *MEMORY[0x1E69DF5B0], v30);
  OUTLINED_FUNCTION_70();
  sub_1DA394134();
  *(v39 + v40) = 0;
  v41 = sub_1DA394034();
  *(v0 + 240) = v41;

  v49 = *(v41 + 16);
  *(v0 + 248) = v49;
  if (v49)
  {
    v50 = *(v0 + 104);
    v51 = *(v0 + 112);
    v52 = *(v51 + 16);
    v51 += 16;
    v53 = *(v51 + 64);
    *(v0 + 360) = v53;
    *(v0 + 256) = *(v51 + 56);
    *(v0 + 264) = v52;
    v54 = MEMORY[0x1E69E7CC0];
    *(v0 + 272) = 0;
    *(v0 + 280) = v54;
    v52(*(v0 + 120), *(v0 + 240) + ((v53 + 32) & ~v53), v50);
    v55 = swift_task_alloc();
    *(v0 + 288) = v55;
    *v55 = v0;
    OUTLINED_FUNCTION_32_0(v55);
    OUTLINED_FUNCTION_101();

    return sub_1DA382E28(v56, v57, v58);
  }

  else
  {

    v77 = *(v0 + 216);
    v78 = *(v0 + 224);
    v79 = *(v0 + 96);
    v80 = v79[23];
    __swift_project_boxed_opaque_existential_1(v79 + 19, v79[22]);
    v81 = *(v80 + 8);
    v82 = OUTLINED_FUNCTION_26();
    *(v0 + 304) = v83(v82);
    v84 = v79[28];
    __swift_project_boxed_opaque_existential_1(v79 + 24, v79[27]);
    v85 = *(v84 + 8);
    v86 = OUTLINED_FUNCTION_86();
    v87(v86, v84);
    v88 = OUTLINED_FUNCTION_119();

    if (v88)
    {
      v89 = *(v0 + 96);
      v90 = OUTLINED_FUNCTION_8_1();
      sub_1DA3852C8(v90, v91);
      OUTLINED_FUNCTION_86();
    }

    else
    {
      v89 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 312) = v89;
    if (sub_1DA377B88(v89))
    {
      v92 = *(v0 + 184);
      v93 = *(v0 + 192);
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_78(ObjectType);
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_113();
      sub_1DA394534();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_101();

      return MEMORY[0x1EEE6DFA0](v95, v96, v97);
    }

    else
    {

      type metadata accessor for TypoRecoveryManager();
      v99 = swift_task_alloc();
      *(v0 + 320) = v99;
      *v99 = v0;
      OUTLINED_FUNCTION_33_0(v99);
      OUTLINED_FUNCTION_101();

      return sub_1DA37AF80();
    }
  }
}

uint64_t sub_1DA3846EC()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v2 = v1;
  v4 = v3[36];
  v5 = v3[15];
  v6 = v3[14];
  v7 = v3[13];
  v8 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  *(v11 + 296) = v10;

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_68();
  v14(v13);
  v15 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1DA384828()
{
  OUTLINED_FUNCTION_44_0();
  if (*(v0 + 296))
  {
    v1 = (v0 + 48);
    v2 = *(v0 + 296);

    MEMORY[0x1DA74BB40](v3);
    OUTLINED_FUNCTION_142();
    if (v5)
    {
      OUTLINED_FUNCTION_23_1(v4);
      sub_1DA394504();
    }

    OUTLINED_FUNCTION_8_1();
    sub_1DA394524();
  }

  else
  {
    v1 = (v0 + 280);
  }

  v6 = *v1;
  v7 = *(v0 + 272) + 1;
  if (v7 == *(v0 + 248))
  {
    v8 = *(v0 + 240);

    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 96);
    v12 = v11[23];
    __swift_project_boxed_opaque_existential_1(v11 + 19, v11[22]);
    v13 = *(v12 + 8);
    OUTLINED_FUNCTION_137();
    *(v0 + 304) = v14();
    v15 = v11[27];
    v16 = v11[28];
    __swift_project_boxed_opaque_existential_1(v11 + 24, v15);
    (*(v16 + 8))(v15, v16);
    LOBYTE(v15) = OUTLINED_FUNCTION_119();

    if (v15)
    {
      v17 = *(v0 + 96);
      v18 = OUTLINED_FUNCTION_28_0();
      sub_1DA3852C8(v18, v19);
      OUTLINED_FUNCTION_39_0();

      v6 = v17;
    }

    *(v0 + 312) = v6;
    if (sub_1DA377B88(v6))
    {
      v20 = *(v0 + 184);
      v21 = *(v0 + 192);
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_78(ObjectType);
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_113();
      sub_1DA394534();
      v23 = OUTLINED_FUNCTION_42_0();

      return MEMORY[0x1EEE6DFA0](v23, v24, v25);
    }

    else
    {

      type metadata accessor for TypoRecoveryManager();
      v38 = swift_task_alloc();
      *(v0 + 320) = v38;
      *v38 = v0;
      OUTLINED_FUNCTION_33_0(v38);

      return sub_1DA37AF80();
    }
  }

  else
  {
    *(v0 + 272) = v7;
    *(v0 + 280) = v6;
    v27 = *(v0 + 256);
    v26 = *(v0 + 264);
    v28 = *(v0 + 360);
    v29 = *(v0 + 240);
    v31 = *(v0 + 112);
    v30 = *(v0 + 120);
    v32 = *(v0 + 104);
    OUTLINED_FUNCTION_114();
    v33();
    v34 = swift_task_alloc();
    *(v0 + 288) = v34;
    *v34 = v0;
    v35 = OUTLINED_FUNCTION_32_0();

    return sub_1DA382E28(v35, v36, v37);
  }
}

uint64_t sub_1DA384AA4()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v2 = v1;
  v4 = *(v3 + 320);
  *v2 = *v0;
  *(v1 + 328) = v5;

  v6 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA384B8C()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = OUTLINED_FUNCTION_104();
  v7 = sub_1DA385A18(v3, v4, v5, v6, 1);

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_20_1();
  static SignpostLogger.end(log:name:telemetry:)(v8, v9, v10, v11, v12, v13, v14);
  sub_1DA394094();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_29_0();

  return v15(v7);
}

uint64_t sub_1DA384C6C()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 352);
  v2 = *(v0 + 184);
  (*(v0 + 344))(*(v0 + 56), *(v0 + 64), *(v0 + 312), *(v0 + 336), *(v0 + 192));
  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA384CD8()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[39];
  v2 = v0[29];

  v3 = sub_1DA3942D4();
  v4 = sub_1DA394574();
  v5 = OUTLINED_FUNCTION_82(v4);
  v6 = v0[39];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_81();
    *v7 = 134217984;
    v8 = sub_1DA377B88(v6);

    *(v7 + 4) = v8;

    _os_log_impl(&dword_1DA365000, v3, v4, "Got %ld candidates from DB", v7, 0xCu);
    OUTLINED_FUNCTION_21_1();
  }

  else
  {
    v9 = v0[39];
    swift_bridgeObjectRelease_n();
  }

  v11 = v0[38];
  v10 = v0[39];
  v12 = OUTLINED_FUNCTION_104();
  v16 = sub_1DA385A18(v12, v13, v14, v15, 0);

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_20_1();
  static SignpostLogger.end(log:name:telemetry:)(v17, v18, v19, v20, v21, v22, v23);
  sub_1DA394094();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_29_0();

  return v24(v16);
}

void sub_1DA384E58()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v6 = sub_1DA394154();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7();
  v14 = (v13 - v12);
  v15 = sub_1DA394144();
  v16 = OUTLINED_FUNCTION_23(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7();
  v19 = sub_1DA3940F4();
  v20 = OUTLINED_FUNCTION_0(v19);
  v63 = v21;
  v64 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_7();
  v62 = v25 - v24;
  v26 = v0[22];
  v27 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v26);
  v28 = (*(v27 + 16))(v5, v3, v26, v27);
  v29 = *(v28 + 16);
  if (v29)
  {
    v61 = v9;
    v67 = MEMORY[0x1E69E7CC0];
    sub_1DA36CB08();
    v30 = v67;
    v31 = (v28 + 40);
    do
    {
      v65 = *(v31 - 1);
      v66 = *v31;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1DA74BA70](42, 0xE100000000000000);

      v1 = v65;
      v33 = *(v67 + 16);
      v32 = *(v67 + 24);
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_23_1(v32);
        sub_1DA36CB08();
      }

      *(v67 + 16) = v33 + 1;
      v34 = v67 + 16 * v33;
      *(v34 + 32) = v65;
      *(v34 + 40) = v66;
      v31 += 2;
      --v29;
    }

    while (v29);

    v9 = v61;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  if (*(v30 + 16))
  {
    *v14 = 0;
    v14[1] = 0;
    (*(v9 + 104))(v14, *MEMORY[0x1E69DF5B8], v6);
    sub_1DA394134();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4E0, &qword_1DA395FC0);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
    OUTLINED_FUNCTION_63(v35);
    v37 = *(v36 + 72);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1DA395AB0;
    v41 = v40 + v39;
    v42 = *(v1 + 56);
    v43 = *MEMORY[0x1E69DF558];
    v44 = sub_1DA394124();
    OUTLINED_FUNCTION_10(v44);
    v46 = *(v45 + 104);
    v47 = OUTLINED_FUNCTION_102();
    v48(v47);
    *(v41 + v42) = v30;
    v49 = *MEMORY[0x1E69DF5E8];
    v50 = sub_1DA394164();
    OUTLINED_FUNCTION_10(v50);
    (*(v51 + 104))(v41 + v42, v49, v50);
    OUTLINED_FUNCTION_46_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v50);
    sub_1DA3940E4();
    sub_1DA377E54(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v56 = v55;
    v58 = *(v55 + 16);
    v57 = *(v55 + 24);
    if (v58 >= v57 >> 1)
    {
      v59 = OUTLINED_FUNCTION_23_1(v57);
      sub_1DA377E54(v59, v58 + 1, 1, v56);
      v56 = v60;
    }

    *(v56 + 16) = v58 + 1;
    (*(v63 + 32))(v56 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v58, v62, v64);
  }

  else
  {
  }

  OUTLINED_FUNCTION_91();
}

uint64_t sub_1DA3852C8(unint64_t a1, unint64_t a2)
{
  v4 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_28_0();
  v84 = v7(v6);
  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 16);
  v87 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v11 = (a2 + 40 + 16 * v8);
  while (v10 != v8)
  {
    if (v8 >= v10)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_61;
    }

    v14 = *(v11 - 1);
    v13 = *v11;
    v15 = sub_1DA38856C(v14, *v11);
    ++v8;
    v11 += 2;
    if (v15)
    {

      v16 = v87;
      v92[0] = v87;
      v17 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v87 + 16);
        sub_1DA36CB08();
        v16 = v92[0];
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_23_1(v19);
        sub_1DA36CB08();
        v16 = v92[0];
      }

      *(v16 + 16) = v20 + 1;
      v87 = v16;
      v21 = v16 + 16 * v20;
      *(v21 + 32) = v14;
      *(v21 + 40) = v13;
      v8 = v12;
      v9 = v17;
      goto LABEL_2;
    }
  }

  if (qword_1EDCC52A0 == -1)
  {
    goto LABEL_13;
  }

LABEL_68:
  OUTLINED_FUNCTION_0_5();
  swift_once();
LABEL_13:
  v22 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v22, qword_1EDCC51C0);

  v23 = sub_1DA3942D4();
  v24 = sub_1DA394584();

  if (OUTLINED_FUNCTION_116())
  {
    v25 = swift_slowAlloc();
    v92[0] = OUTLINED_FUNCTION_89();
    *v25 = 67109634;
    *(v25 + 4) = v84 & 1;
    *(v25 + 8) = 2080;
    v26 = MEMORY[0x1DA74BB60](a2, MEMORY[0x1E69E6158]);
    v28 = sub_1DA372AD8(v26, v27, v92);

    *(v25 + 10) = v28;
    *(v25 + 18) = 2080;
    v29 = OUTLINED_FUNCTION_134();
    v30 = MEMORY[0x1DA74BB60](v29);
    v32 = sub_1DA372AD8(v30, v31, v92);

    *(v25 + 20) = v32;
    _os_log_impl(&dword_1DA365000, v23, v24, "filterZhPhrasesBasedOnQueryCharacter: Morphun ready: %{BOOL}d, queryTokens: %s, filteredZhCharacterTokens: %s", v25, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_48();
  }

  v33 = a1;
  v93 = MEMORY[0x1E69E7CC0];
  v34 = sub_1DA377B88(a1);
  if (v34)
  {
    v35 = v34;
    a2 = 0;
    v36 = v87;
    v81 = *(v87 + 16);
    v37 = a1 & 0xC000000000000001;
    v79 = MEMORY[0x1E69E7CC0];
    v88 = v87 + 32;
    v38 = MEMORY[0x1E69E6158];
    v80 = v34;
    while (1)
    {
      if (v37)
      {
        v39 = MEMORY[0x1DA74BE10](a2, v33);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v39 = *(a1 + 32 + 8 * a2);
      }

      if (__OFADD__(a2++, 1))
      {
        goto LABEL_66;
      }

      v41 = *(v36 + 16);
      v91 = v39;
      v90 = v41;
      if (v84)
      {
        break;
      }

      if (!v41)
      {
        goto LABEL_50;
      }

      v82 = a2;
      v89 = 0;
      v53 = 0;
      v86 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens;
      while (2)
      {
        if (v53 >= *(v36 + 16))
        {
          goto LABEL_63;
        }

        v54 = (v88 + 16 * v53);
        a2 = *v54;
        v55 = v54[1];
        ++v53;
        v56 = *(v39 + v86);
        v57 = *(v56 + 16);

        v58 = (v56 + 40);
        v59 = -1;
        do
        {
          if (v59 - v57 == -1)
          {

            goto LABEL_45;
          }

          if (++v59 >= *(v56 + 16))
          {
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v60 = v58 + 2;
          v61 = *v58;
          v92[0] = *(v58 - 1);
          v92[1] = v61;
          sub_1DA368C30();
          v62 = sub_1DA394604();
          v58 = v60;
        }

        while ((v62 & 1) == 0);

        if (__OFADD__(v89, 1))
        {
          goto LABEL_65;
        }

        ++v89;
LABEL_45:
        v39 = v91;
        if (v53 != v90)
        {
          continue;
        }

        break;
      }

LABEL_46:
      a2 = v82;
      v33 = a1;
      v35 = v80;
      v37 = a1 & 0xC000000000000001;
      if (v89 != v81)
      {
LABEL_51:

        v64 = sub_1DA3942D4();
        v65 = sub_1DA394584();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = OUTLINED_FUNCTION_83();
          v92[0] = OUTLINED_FUNCTION_89();
          *v66 = 136315394;
          v67 = MEMORY[0x1DA74BB60](v36, v38);
          v69 = v65;
          v70 = sub_1DA372AD8(v67, v68, v92);

          *(v66 + 4) = v70;
          *(v66 + 12) = 2080;
          v71 = *(v39 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);

          v73 = MEMORY[0x1DA74BB60](v72, v38);
          v75 = v74;

          v76 = v73;
          v36 = v87;
          v77 = sub_1DA372AD8(v76, v75, v92);

          *(v66 + 14) = v77;
          _os_log_impl(&dword_1DA365000, v64, v69, "filterZhPhrasesBasedOnQueryCharacter: %s is not (a prefix) in %s, skip candidate", v66, 0x16u);
          swift_arrayDestroy();
          v33 = a1;
          OUTLINED_FUNCTION_46();
          v37 = a1 & 0xC000000000000001;
          OUTLINED_FUNCTION_46();
        }

        goto LABEL_54;
      }

LABEL_47:
      MEMORY[0x1DA74BB40]();
      v63 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v63 >> 1)
      {
        OUTLINED_FUNCTION_23_1(v63);
        sub_1DA394504();
      }

      sub_1DA394524();
      v79 = v93;
LABEL_54:
      if (a2 == v35)
      {
LABEL_59:

        return v79;
      }
    }

    if (v41)
    {
      v82 = a2;
      v89 = 0;
      v42 = 0;
      v85 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens;
      while (v42 < *(v36 + 16))
      {
        v43 = (v88 + 16 * v42);
        v45 = *v43;
        v44 = v43[1];
        ++v42;
        v46 = *(v39 + v85);
        v47 = *(v46 + 16);

        v48 = (v46 + 40);
        a2 = -v47;
        v49 = -1;
        do
        {
          if (a2 + v49 == -1)
          {

            goto LABEL_33;
          }

          if (++v49 >= *(v46 + 16))
          {
            goto LABEL_58;
          }

          v50 = v48 + 2;
          v52 = *(v48 - 1);
          v51 = *v48;

          OUTLINED_FUNCTION_68();
          LOBYTE(v52) = sub_1DA394424();

          v48 = v50;
        }

        while ((v52 & 1) == 0);

        if (__OFADD__(v89, 1))
        {
          goto LABEL_64;
        }

        ++v89;
LABEL_33:
        v36 = v87;
        v39 = v91;
        if (v42 == v90)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_62;
    }

LABEL_50:
    if (v81)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA385A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v114) = a5;
  v112 = sub_1DA393F04();
  v7 = OUTLINED_FUNCTION_0(v112);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7();
  v10 = sub_1DA377B88(a1);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v10;
    *&v120 = MEMORY[0x1E69E7CC0];
    v13 = &v120;
    sub_1DA36CC18();
    if (v12 < 0)
    {
      goto LABEL_87;
    }

    v14 = 0;
    v11 = v120;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA74BE10](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      *&v120 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_23_1(v16);
        sub_1DA36CC18();
        v11 = v120;
      }

      ++v14;
      *(v11 + 16) = v17 + 1;
      v18 = (v11 + 40 * v17);
      v18[4] = v15;
      v18[5] = 0;
      v18[6] = 0;
      v18[7] = 0;
      *(v18 + 62) = 0;
    }

    while (v12 != v14);
  }

  v5 = &v120;

  sub_1DA393EF4();
  v19 = *(v11 + 16);

  if (v19)
  {
    v21 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_133();
      if (v22)
      {
        break;
      }

      v23 = 0;
      v24 = v21 + 1;
      a1 = 40 * v21;
      do
      {
        v25 = v23;
        if (v23 == 3)
        {
          break;
        }

        ++v23;
      }

      while (byte_1F55E4C48[v25 + 32] != *(*(v11 + 40 * v21 + 32) + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA36FAE8(v11);
        v11 = v33;
      }

      OUTLINED_FUNCTION_133();
      if (v22)
      {
        goto LABEL_79;
      }

      v26 = v11 + a1 + 32;
      *(v11 + a1 + 65) = v25 != 3;
      *(v11 + a1 + 40) = sub_1DA36A238();
      v27 = *(v11 + a1 + 62);
      v28 = *(v11 + a1 + 48);
      v118 = *v26;
      v119[0] = v28;
      *(v119 + 14) = v27;
      a1 = v118;
      sub_1DA38FE94(&v118, &v120);
      v29 = sub_1DA387094(a1);
      sub_1DA38FECC(&v118);
      OUTLINED_FUNCTION_133();
      if (v22)
      {
        goto LABEL_80;
      }

      *(v26 + 16) = v29;
      v31 = *v26;
      v30 = *(v26 + 16);
      *&v121[14] = *(v26 + 30);
      v120 = v31;
      *v121 = v30;
      v32 = v31;
      sub_1DA38FE94(&v120, v117);
      a1 = sub_1DA387284(v32, a4);
      sub_1DA38FECC(&v120);
      OUTLINED_FUNCTION_133();
      if (v22)
      {
        goto LABEL_81;
      }

      *(v26 + 34) = a1 & 1;
      *(v26 + 35) = a1 > 0xFFu;
      ++v21;
      if (v24 == v19)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

LABEL_22:
  a1 = sub_1DA386584(v11, v20, v114 & 1);
  v114 = v34;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_23:
  v35 = *(a1 + 16);
  *&v120 = a1 + 32;
  *(&v120 + 1) = v35;
  sub_1DA38B9E4(&v120, &unk_1F55E57E8, sub_1DA38D050, sub_1DA38BD04);
  v122[0] = a1;
  sub_1DA38756C(v122, 7, 20);
  v13 = v122[0];
  a1 = *(v122[0] + 16);
  v11 = v114;
  if (a1 >= 0x15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_25;
  }

  while (1)
  {

    a1 = sub_1DA37E1C8(20, v13);
    v47 = v46;
    v49 = v48;
    v51 = v50;
    if ((v50 & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_1DA394944();
    swift_unknownObjectRetain_n();
    v54 = swift_dynamicCastClass();
    if (!v54)
    {
      swift_unknownObjectRelease();
      v54 = MEMORY[0x1E69E7CC0];
    }

    v55 = *(v54 + 16);

    if (__OFSUB__(v51 >> 1, v49))
    {
      __break(1u);
LABEL_91:
      swift_unknownObjectRelease();
LABEL_33:
      sub_1DA37D164(a1, v47, v49, v51);
      v53 = v52;
      goto LABEL_40;
    }

    if (v55 != (v51 >> 1) - v49)
    {
      goto LABEL_91;
    }

    v53 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v53)
    {
      goto LABEL_41;
    }

    v53 = MEMORY[0x1E69E7CC0];
LABEL_40:
    swift_unknownObjectRelease();
LABEL_41:

    v56 = *(v53 + 16);

    if (v56)
    {
      v57 = 0;
      v58 = 0;
      v59 = *(v53 + 16);
      v5 = a4;
      while (v58 < v59)
      {
        v60 = *(*(v53 + v57 + 32) + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);

        v61 = sub_1DA36DEF8(a4, v60);
        a1 = sub_1DA36F3BC(v61, v60);

        v62 = sub_1DA36F3BC(a4, v60);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA36FAE8(v53);
          v53 = v63;
        }

        v59 = *(v53 + 16);
        if (v58 >= v59)
        {
          goto LABEL_83;
        }

        ++v58;
        *(v53 + v57 + 56) = (a1 + v62) * 0.5;
        v57 += 40;
        if (v56 == v58)
        {
          goto LABEL_48;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_48:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DA36FAE8(v53);
      v53 = v107;
    }

    v64 = *(v53 + 16);
    *&v120 = v53 + 32;
    *(&v120 + 1) = v64;
    sub_1DA38B9E4(&v120, &unk_1F55E57E8, sub_1DA38C840, sub_1DA38BBDC);
    v122[0] = v53;
    sub_1DA38756C(v122, 1, 3);
    v65 = v122[0];
    v66 = OUTLINED_FUNCTION_103();
    v113 = sub_1DA387B50(v66, v67, v65, v68);

    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v69 = sub_1DA3942F4();
    v70 = __swift_project_value_buffer(v69, qword_1EDCC51C0);
    *&v120 = 0;
    *(&v120 + 1) = 0xE000000000000000;
    sub_1DA394784();

    *&v120 = 0xD00000000000001CLL;
    *(&v120 + 1) = 0x80000001DA397870;
    v71 = OUTLINED_FUNCTION_103();
    MEMORY[0x1DA74BA70](v71);
    MEMORY[0x1DA74BA70](39, 0xE100000000000000);
    *&v120 = v113;

    v11 = v114;

    sub_1DA3733C4(v72);
    OUTLINED_FUNCTION_28_0();
    v13 = v70;
    sub_1DA3942C4();

    result = sub_1DA37E1C8(3, v113);
    v5 = v75;
    v76 = v74;
    v78 = v77 >> 1;
    a4 = v77 >> 1;
    if (v74 != v77 >> 1)
    {
      break;
    }

LABEL_61:
    a1 = v78 - v76;
    if (__OFSUB__(v78, v76))
    {
      __break(1u);
LABEL_87:
      __break(1u);
    }

    else
    {
      if (!a1)
      {
        swift_unknownObjectRelease();
        v104 = OUTLINED_FUNCTION_77();
        v105(v104);

        return MEMORY[0x1E69E7CC0];
      }

      v116 = MEMORY[0x1E69E7CC0];
      v13 = &v116;
      sub_1DA3947E4();
      if ((a1 & 0x8000000000000000) == 0)
      {
        v89 = v78 - 1;
        v5 = (v5 + 40 * v76);
        while (v76 < v78)
        {
          v91 = *v5;
          v90 = v5[1];
          *&v121[14] = *(v5 + 30);
          v120 = v91;
          *v121 = v90;
          a1 = v91;
          swift_beginAccess();
          v93 = *(a1 + 16);
          v92 = *(a1 + 24);
          OUTLINED_FUNCTION_126();

          sub_1DA3882D8();
          v96 = v95;
          if (v94 == v93 && v95 == v92)
          {
          }

          else
          {
            v98 = v94;
            v99 = sub_1DA394934();

            if ((v99 & 1) == 0)
            {
              v100 = *(a1 + 24);
              *(a1 + 16) = v98;
              *(a1 + 24) = v96;
            }
          }

          v78 = a4;

          sub_1DA3947C4();
          v101 = *(v116 + 16);
          sub_1DA3947F4();
          OUTLINED_FUNCTION_8_1();
          sub_1DA394804();
          sub_1DA3947D4();
          if (v89 == v76)
          {
            swift_unknownObjectRelease();
            v102 = OUTLINED_FUNCTION_77();
            v103(v102);

            return v116;
          }

          ++v76;
          v5 = (v5 + 40);
        }

LABEL_84:
        __break(1u);
LABEL_85:
        sub_1DA36FAE8(a1);
        a1 = v106;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_89:
    sub_1DA36FAE8(v13);
    v13 = v108;
LABEL_25:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = *(v11 + 16);
      OUTLINED_FUNCTION_10_3();
      sub_1DA377F88();
      v11 = v110;
    }

    v36 = a1 - 20;
    v37 = v13 + 108;
    do
    {
      *v37 = 5;
      v38 = *(v37 - 2);
      v39 = *(v37 - 1);
      *(v5 + 30) = *(v37 - 2);
      v120 = v38;
      *v121 = v39;
      OUTLINED_FUNCTION_126();
      v41 = *(v11 + 16);
      v40 = *(v11 + 24);
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_23_1(v40);
        sub_1DA377F88();
        v11 = v45;
      }

      *(v11 + 16) = v41 + 1;
      v42 = v11 + 40 * v41;
      v43 = v120;
      v44 = *v121;
      *(v42 + 62) = *(v5 + 30);
      *(v42 + 32) = v43;
      *(v42 + 48) = v44;
      v37 += 40;
      --v36;
    }

    while (v36);
    v114 = v11;
  }

  if (v74 < v78)
  {
    swift_unknownObjectRetain();
    v79 = ~v76 + v78;
    v111 = v5;
    for (i = v5 + 40 * v76; ; i += 40)
    {
      v81 = *i;
      v82 = *(i + 1);
      *&v121[14] = *(i + 30);
      v120 = v81;
      *v121 = v82;
      OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_126();
      v13 = v70;
      v83 = sub_1DA3942D4();
      v84 = sub_1DA394584();
      sub_1DA38FECC(&v120);
      if (os_log_type_enabled(v83, v84))
      {
        v85 = OUTLINED_FUNCTION_81();
        v117[0] = OUTLINED_FUNCTION_74();
        *v85 = 136315138;
        OUTLINED_FUNCTION_126();
        v13 = sub_1DA369C7C();
        sub_1DA38FECC(&v120);
        v86 = OUTLINED_FUNCTION_68();
        sub_1DA372AD8(v86, v87, v88);
        OUTLINED_FUNCTION_39_0();

        *(v85 + 4) = v13;
        _os_log_impl(&dword_1DA365000, v83, v84, "%s", v85, 0xCu);
        OUTLINED_FUNCTION_8_4();
        OUTLINED_FUNCTION_54();
        sub_1DA38FECC(&v120);
      }

      else
      {

        sub_1DA38FECC(&v120);
      }

      v11 = v114;
      if (!v79)
      {
        break;
      }

      --v79;
    }

    swift_unknownObjectRelease();
    v78 = a4;
    v5 = v111;
    goto LABEL_61;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA386584(uint64_t a1, uint64_t a2, char a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v69 = MEMORY[0x1E69E7CC0];
  v6 = __swift_project_boxed_opaque_existential_1((v3 + 104), *(v3 + 128));
  v62 = *(a1 + 16);
  if (!v62)
  {
LABEL_51:
    sub_1DA386A08();
    v56 = v55;
    v58 = v57;

    sub_1DA3733C4(v58);
    return v56;
  }

  v7 = &v66;
  v8 = *(*v6 + 16);
  v61 = a1 + 32;
  v9 = v8 + 56;

  v10 = 0;
  v11 = v5;
  while (1)
  {
    v12 = (v61 + 40 * v10);
    *(v7 + 30) = *(v12 + 30);
    v13 = v12[1];
    v66 = *v12;
    v67 = v13;
    v14 = v66;
    v63 = v11;
    if (*(v8 + 16))
    {
      break;
    }

    v9 = v5;
    sub_1DA38FE94(&v66, v65);
    sub_1DA38FE94(&v66, v65);
LABEL_19:
    v29 = *(v14 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale);
    v28 = *(v14 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale + 8);
    v31 = v60[27];
    v30 = v60[28];
    __swift_project_boxed_opaque_existential_1(v60 + 24, v31);
    v10 = v30 + 8;
    v7 = *(v30 + 8);

    v32 = (v7)(v31, v30);
    v19 = v33;
    if (!v28)
    {

      v5 = v9;
      OUTLINED_FUNCTION_92();
LABEL_27:
      if (*(v14 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) != 5)
      {
        v11 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = *(v63 + 16);
          OUTLINED_FUNCTION_10_3();
          sub_1DA377F88();
          v11 = v50;
        }

        OUTLINED_FUNCTION_98();
        if (v25)
        {
          OUTLINED_FUNCTION_4_5(v36);
          sub_1DA377F88();
          v11 = v51;
        }

        result = OUTLINED_FUNCTION_31_0();
        if (v14 >= *(v11 + 16))
        {
          goto LABEL_53;
        }

        v27 = 4;
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    v34 = v29 == v32 && v28 == v33;
    v5 = v9;
    if (v34)
    {

      OUTLINED_FUNCTION_92();
      goto LABEL_35;
    }

    v35 = sub_1DA394934();

    OUTLINED_FUNCTION_92();
    if ((v35 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_35:
    if ((a3 & 1) != 0 || v68 != 1)
    {
      v11 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = *(v5 + 16);
        OUTLINED_FUNCTION_10_3();
        sub_1DA377F88();
        v5 = v47;
      }

      v39 = *(v5 + 16);
      v38 = *(v5 + 24);
      if (v39 >= v38 >> 1)
      {
        OUTLINED_FUNCTION_4_5(v38);
        sub_1DA377F88();
        v5 = v48;
      }

      sub_1DA38FECC(&v66);
      *(v5 + 16) = v39 + 1;
      v40 = v5 + 40 * v39;
      v41 = *(v7 + 30);
      v42 = v67;
      *(v40 + 32) = v66;
      *(v40 + 48) = v42;
      *(v40 + 62) = v41;
      goto LABEL_49;
    }

    v11 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = *(v63 + 16);
      OUTLINED_FUNCTION_10_3();
      sub_1DA377F88();
      v11 = v53;
    }

    OUTLINED_FUNCTION_98();
    if (v25)
    {
      OUTLINED_FUNCTION_4_5(v37);
      sub_1DA377F88();
      v11 = v54;
    }

    result = OUTLINED_FUNCTION_31_0();
    if (v14 >= *(v11 + 16))
    {
      goto LABEL_54;
    }

    v27 = 2;
LABEL_43:
    *(v19 + 64) = v27;
    v69 = v11;
LABEL_49:
    if (++v10 == v62)
    {

      goto LABEL_51;
    }
  }

  v16 = *(v66 + 48);
  v15 = *(v66 + 56);
  v17 = *(v8 + 40);
  sub_1DA3949D4();
  sub_1DA38FE94(&v66, v64);
  sub_1DA38FE94(&v66, v64);

  sub_1DA394354();
  v18 = sub_1DA394A14();
  v19 = ~(-1 << *(v8 + 32));
  do
  {
    v20 = v18 & v19;
    if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
    {
      v9 = v5;

      goto LABEL_19;
    }

    v21 = (*(v8 + 48) + 16 * v20);
    if (*v21 == v16 && v21[1] == v15)
    {
      break;
    }

    v23 = sub_1DA394934();
    v18 = v20 + 1;
  }

  while ((v23 & 1) == 0);

  v11 = v63;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = *(v63 + 16);
    OUTLINED_FUNCTION_10_3();
    sub_1DA377F88();
    v11 = v44;
  }

  OUTLINED_FUNCTION_98();
  if (v25)
  {
    OUTLINED_FUNCTION_4_5(v24);
    sub_1DA377F88();
    v11 = v45;
  }

  result = OUTLINED_FUNCTION_31_0();
  if (v14 < *(v11 + 16))
  {
    v27 = 1;
    goto LABEL_43;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void sub_1DA386A08()
{
  OUTLINED_FUNCTION_123();
  v1 = v0;
  v2 = 0;
  v82 = sub_1DA394344();
  v4 = *(v1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v80 = 0;
  v81 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = v1 + 32 + 40 * v2; ; i += 40)
  {
    if (v4 == v2)
    {
      v20 = *(v5 + 16);
      v21 = MEMORY[0x1E69E7CC0];
      if (v20)
      {
        v83 = MEMORY[0x1E69E7CC0];

        sub_1DA36CB08();
        v21 = v83;
        v22 = v20 - 1;
        for (j = 32; ; j += 40)
        {
          OUTLINED_FUNCTION_132((v5 + j));
          v24 = (v85 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
          v25 = *(v85 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
          v26 = *(v85 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
          OUTLINED_FUNCTION_90();
          v27 = 0x4874736567677573;
          v28 = 0xEB00000000706C65;
          if ((sub_1DA394424() & 1) == 0)
          {
            v27 = *v24;
            v28 = v24[1];
          }

          sub_1DA38FECC(&v85);
          v83 = v21;
          v30 = *(v21 + 16);
          v29 = *(v21 + 24);
          if (v30 >= v29 >> 1)
          {
            OUTLINED_FUNCTION_23_1(v29);
            sub_1DA36CB08();
            v21 = v83;
          }

          *(v21 + 16) = v30 + 1;
          v31 = v21 + 16 * v30;
          *(v31 + 32) = v27;
          *(v31 + 40) = v28;
          if (!v22)
          {
            break;
          }

          --v22;
        }
      }

      v33 = v81;
      v32 = v82;
      v34 = *(v81 + 16);
      if (!v34)
      {

LABEL_52:

        OUTLINED_FUNCTION_91();
        return;
      }

      v77 = "filterProfanity(phrase:)";
      v35 = v34 - 1;
      v79 = MEMORY[0x1E69E7CC0];
      v36 = 32;
      v3.n128_u64[0] = 136315650;
      v76 = v3;
      while (1)
      {
        OUTLINED_FUNCTION_132((v33 + v36));
        if (!*(v32 + 16))
        {
          break;
        }

        v37 = v85;
        v38 = (v85 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
        v39 = *(v85 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
        v40 = *(v85 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
        OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_90();

        v41 = sub_1DA3753E0(v39, v40);
        v43 = v42;

        if ((v43 & 1) == 0)
        {
          goto LABEL_41;
        }

        v45 = (*(v32 + 56) + 16 * v41);
        v46 = v45[1];
        v84[0] = *v45;
        v84[1] = v46;
        MEMORY[0x1EEE9AC00](v44);
        v75[2] = v84;

        v47 = v80;
        v48 = sub_1DA393130(sub_1DA38FFE0, v75, v21);
        v80 = v47;

        if (!v48)
        {
LABEL_41:
          v33 = v81;
LABEL_43:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = *(v5 + 16);
            OUTLINED_FUNCTION_10_3();
            sub_1DA377F88();
            v5 = v70;
          }

          v68 = *(v5 + 16);
          v67 = *(v5 + 24);
          if (v68 >= v67 >> 1)
          {
            OUTLINED_FUNCTION_4_5(v67);
            sub_1DA377F88();
            v5 = v71;
          }

          sub_1DA38FECC(&v85);
          *(v5 + 16) = v68 + 1;
          OUTLINED_FUNCTION_62(v5 + 40 * v68);
          goto LABEL_48;
        }

        if (qword_1EDCC52A0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v49 = sub_1DA3942F4();
        OUTLINED_FUNCTION_38_0(v49, qword_1EDCC51C0);
        OUTLINED_FUNCTION_90();
        v50 = sub_1DA3942D4();
        v51 = sub_1DA394584();
        sub_1DA38FECC(&v85);
        if (os_log_type_enabled(v50, v51))
        {
          v52 = OUTLINED_FUNCTION_74();
          v78 = swift_slowAlloc();
          v84[0] = v78;
          *v52 = v76.n128_u32[0];
          *(v52 + 4) = sub_1DA372AD8(0xD000000000000031, v77 | 0x8000000000000000, v84);
          *(v52 + 12) = 2080;
          OUTLINED_FUNCTION_9();
          swift_beginAccess();
          v53 = *(v37 + 16);
          v54 = *(v37 + 24);

          v55 = sub_1DA372AD8(v53, v54, v84);

          *(v52 + 14) = v55;
          *(v52 + 22) = 2080;
          v56 = *v38;
          v57 = v38[1];

          v58 = sub_1DA372AD8(v56, v57, v84);

          *(v52 + 24) = v58;
          _os_log_impl(&dword_1DA365000, v50, v51, "Function: %s > Deduped '%s', with actionId %s", v52, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_56();
        }

        v59 = v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = *(v59 + 16);
          OUTLINED_FUNCTION_10_3();
          sub_1DA377F88();
          v59 = v73;
        }

        v62 = *(v59 + 16);
        v61 = *(v59 + 24);
        v79 = v59;
        if (v62 >= v61 >> 1)
        {
          OUTLINED_FUNCTION_4_5(v61);
          sub_1DA377F88();
          v79 = v74;
        }

        v63 = v79;
        *(v79 + 16) = v62 + 1;
        v64 = v63 + 40 * v62;
        v65 = v85;
        v66 = *v86;
        *(v64 + 62) = *&v86[14];
        *(v64 + 32) = v65;
        *(v64 + 48) = v66;
        sub_1DA38FECC(&v85);
        if (v62 >= *(v63 + 16))
        {
          goto LABEL_55;
        }

        *(v64 + 64) = 3;
LABEL_48:
        v32 = v82;
        if (!v35)
        {

          goto LABEL_52;
        }

        --v35;
        v36 += 40;
      }

      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_90();
      goto LABEL_43;
    }

    if (v2 >= v4)
    {
      break;
    }

    v7 = *(i + 16);
    v85 = *i;
    *v86 = v7;
    *&v86[14] = *(i + 30);
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_54;
    }

    if (*(v85 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source))
    {
      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_90();
      v14 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v81 + 16);
        OUTLINED_FUNCTION_10_3();
        sub_1DA377F88();
        v14 = v18;
      }

      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_4_5(v15);
        sub_1DA377F88();
        v14 = v19;
      }

      sub_1DA38FECC(&v85);
      *(v14 + 16) = v16 + 1;
      v81 = v14;
      v3 = OUTLINED_FUNCTION_62(v14 + 40 * v16);
      v2 = v8;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_90();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = *(v5 + 16);
      OUTLINED_FUNCTION_10_3();
      sub_1DA377F88();
      v5 = v12;
    }

    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    if (v10 >= v9 >> 1)
    {
      OUTLINED_FUNCTION_4_5(v9);
      sub_1DA377F88();
      v5 = v13;
    }

    sub_1DA38FECC(&v85);
    *(v5 + 16) = v10 + 1;
    v3 = OUTLINED_FUNCTION_62(v5 + 40 * v10);
    ++v2;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

long double sub_1DA387094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27[-v6];
  v8 = sub_1DA393F04();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  OUTLINED_FUNCTION_137();
  sub_1DA390014(v17, v18, v19, v20);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1DA36CB60(v7, &qword_1ECBAD2D0, &unk_1DA395FF0);
    v21 = 1.0;
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    sub_1DA393EE4();
    v23 = v22;
    (*(v11 + 8))(v16, v8);
    v21 = v23 / 3600.0;
  }

  v24 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v25 = *(a1 + v24);
  return pow(0.99, v21) * v25;
}

uint64_t sub_1DA387284(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(result + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);
    v24 = a2 + 32;
    v25 = *(v5 + 16);
    v22 = 0x100000001;
    v23 = *(a2 + 16);
    do
    {
      while (1)
      {
LABEL_3:
        if (v4 == v2)
        {
LABEL_34:
          __break(1u);
          return result;
        }

        v6 = v4 + 1;
        if (!v25)
        {
          break;
        }

        v7 = (v24 + 16 * v4);
        v9 = *v7;
        v8 = v7[1];

        v10 = 0;
        while (2)
        {
          while (2)
          {
            while (2)
            {
              v11 = (v5 + 40 + 16 * v10++);
              while (1)
              {
                if ((v10 - 1) >= *(v5 + 16))
                {
                  __break(1u);
                  goto LABEL_34;
                }

                v13 = *(v11 - 1);
                v12 = *v11;

                if (sub_1DA394424())
                {
                  break;
                }

                ++v10;
                v11 += 2;
                if (v10 - v25 == 1)
                {

                  v2 = v23;
                  goto LABEL_21;
                }
              }

              if (qword_1EDCC5010 != -1)
              {
                swift_once();
              }

              v14 = OUTLINED_FUNCTION_102();
              if (sub_1DA36EDB0(v14, v15, 0))
              {

                v3 = 1;
                if (v10 != v25)
                {
                  continue;
                }

                goto LABEL_23;
              }

              break;
            }

            v16 = OUTLINED_FUNCTION_102();
            v18 = sub_1DA36EDB0(v16, v17, 1);

            v19 = v10 - v25;
            if (v18)
            {
              BYTE4(v22) = 0;
              v3 = 1;
              if (v19)
              {
                continue;
              }

              BYTE4(v22) = 0;
LABEL_23:
              v4 = v6;
              v2 = v23;
              if (v6 != v23)
              {
                goto LABEL_3;
              }

              goto LABEL_28;
            }

            break;
          }

          v22 = 0;
          v3 = 1;
          if (v19)
          {
            continue;
          }

          break;
        }

        v22 = 0;
        v4 = v6;
        v2 = v23;
        if (v6 == v23)
        {
          goto LABEL_31;
        }
      }

LABEL_21:
      v4 = v6;
    }

    while (v6 != v2);
    if ((v3 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_28:
    v20 = BYTE4(v22);
    if (v22)
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
LABEL_31:
    v20 = 0;
    v21 = 0;
  }

  return v21 | v20 & 1u;
}

uint64_t sub_1DA3874D0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DA38FFCC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DA38B9E4(v6, MEMORY[0x1E69E6530], sub_1DA38BDE4, sub_1DA38BAF0);
  *a1 = v2;
  return result;
}

uint64_t sub_1DA38756C(uint64_t result, __int128 *a2, uint64_t a3)
{
  v65 = result;
  v3 = *result;
  v4 = *(*result + 16);
  if (v4 > a3)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
LABEL_3:
    for (i = 40 * v6 + 32; ; i += 40)
    {
      if (v4 == v6)
      {
        v22 = *(v8 + 16);
        if (v22)
        {
          if (v22 < a2)
          {
            a2 = *(v8 + 16);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_18;
        }
      }

      if (v6 >= *(v3 + 16))
      {
        break;
      }

      v10 = *(v3 + i);
      v11 = *(v3 + i + 16);
      *&v73[14] = *(v3 + i + 30);
      v72 = v10;
      *v73 = v11;
      v12 = *(v3 + i + 32);
      v13 = *(v3 + i);
      v14 = *(v3 + i + 16);
      *&v75[20] = *(v3 + i + 36);
      *&v75[16] = v12;
      v74 = v13;
      *v75 = v14;
      v15 = v14;
      if (*&v14 > 0.0 && (v75[19] & 1) == 0)
      {
        sub_1DA38FE94(&v72, &v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = *(v8 + 16);
          OUTLINED_FUNCTION_10_3();
          sub_1DA378140();
          v8 = v20;
        }

        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_23_1(v16);
          sub_1DA378140();
          v8 = v21;
        }

        sub_1DA38FECC(&v74);
        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v6++;
        goto LABEL_3;
      }

      sub_1DA38FE94(&v72, &v70);
      sub_1DA38FECC(&v74);
      ++v6;
    }

    __break(1u);
LABEL_62:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      sub_1DA36FAFC(v8);
      v8 = v64;
LABEL_18:
      v23 = *(v8 + 16);
      *&v74 = v8 + 32;
      *(&v74 + 1) = v23;
      v24 = 0;
      sub_1DA38B8E0(&v74);

      sub_1DA37E1C8(a2, v8);
      v28 = v27 >> 1;
      v29 = (v27 >> 1) - v26;
      if (__OFSUB__(v27 >> 1, v26))
      {
        break;
      }

      if (v29)
      {
        v30 = v25;
        v31 = v26;
        *&v74 = v7;
        a2 = &v74;
        sub_1DA36CBF8();
        if (v29 < 0)
        {
          goto LABEL_75;
        }

        v7 = v74;
        v32 = (v30 + 16 * v31 + 8);
        while (v31 < v28)
        {
          v33 = *v32;
          *&v74 = v7;
          v24 = *(v7 + 16);
          v34 = *(v7 + 24);
          if (v24 >= v34 >> 1)
          {
            OUTLINED_FUNCTION_23_1(v34);
            a2 = &v74;
            sub_1DA36CBF8();
            v7 = v74;
          }

          *(v7 + 16) = v24 + 1;
          *(v7 + 8 * v24 + 32) = v33;
          ++v31;
          v32 += 2;
          if (v28 == v31)
          {
            swift_unknownObjectRelease();
            goto LABEL_29;
          }
        }

        goto LABEL_62;
      }

      swift_unknownObjectRelease();
      v7 = MEMORY[0x1E69E7CC0];
LABEL_29:

      v36 = sub_1DA37E6F4(v35);
      v37 = a3 - 1;
      if (__OFSUB__(a3, 1))
      {
        goto LABEL_74;
      }

      a2 = v36;
      *&v74 = v7;

      sub_1DA3874D0(&v74);

      v8 = v74;
      v38 = *(v74 + 16);
      if (!v38)
      {
LABEL_59:
      }

      v39 = 0;
      v66 = v74 + 32;
      while (v39 < *(v8 + 16))
      {
        v40 = *(v66 + 8 * v39);
        if (v40 >= a3)
        {
          if (*(a2 + 2))
          {
            v7 = *(a2 + 5);
            v41 = ~(-1 << *(a2 + 32));
LABEL_36:
            v42 = sub_1DA3949C4();
            while (1)
            {
              v43 = v42 & v41;
              if (((*(a2 + (((v42 & v41) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v42 & v41)) & 1) == 0)
              {
                break;
              }

              v42 = v43 + 1;
              if (*(*(a2 + 6) + 8 * v43) == v37)
              {
                if (__OFSUB__(v37--, 1))
                {
                  goto LABEL_66;
                }

                goto LABEL_36;
              }
            }
          }

          if (v40 != v37)
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_67;
            }

            v45 = *(v3 + 16);
            if (v40 >= v45)
            {
              goto LABEL_68;
            }

            v46 = v3 + 32 + 40 * v40;
            v47 = *v46;
            v48 = *(v46 + 16);
            *&v73[14] = *(v46 + 30);
            v72 = v47;
            *v73 = v48;
            if (v37 >= v45)
            {
              goto LABEL_69;
            }

            v7 = 5 * v37;
            v49 = v3 + 32 + 40 * v37;
            v50 = *v49;
            v51 = *(v49 + 16);
            *&v75[14] = *(v49 + 30);
            v74 = v50;
            *v75 = v51;
            sub_1DA38FE94(&v72, &v70);
            sub_1DA38FE94(&v74, &v70);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DA36FAE8(v3);
              v3 = v63;
            }

            if (v40 >= *(v3 + 16))
            {
              goto LABEL_70;
            }

            v52 = v3 + 32 + 40 * v40;
            v53 = *v52;
            v54 = *(v52 + 16);
            *&v69[14] = *(v52 + 30);
            v68 = v53;
            *v69 = v54;
            v55 = v74;
            v56 = *v75;
            *(v52 + 30) = *&v75[14];
            *v52 = v55;
            *(v52 + 16) = v56;
            sub_1DA38FECC(&v68);
            if (v37 >= *(v3 + 16))
            {
              goto LABEL_71;
            }

            v57 = v3 + 32 + 40 * v37;
            v58 = *v57;
            v59 = *(v57 + 16);
            *&v71[14] = *(v57 + 30);
            v70 = v58;
            *v71 = v59;
            v60 = v72;
            v61 = *v73;
            *(v57 + 30) = *&v73[14];
            *v57 = v60;
            *(v57 + 16) = v61;
            sub_1DA38FECC(&v70);
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }
          }

          else
          {
            sub_1DA36FAE8(v3);
            v3 = v62;
            if ((v37 & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }
          }

          if (v37 >= *(v3 + 16))
          {
            goto LABEL_65;
          }

          *(v3 + 40 * v37 + 68) = 1;
          *v65 = v3;
          --v37;
        }

        if (++v39 == v38)
        {
          goto LABEL_59;
        }
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1DA387AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 35);
  v3 = *(a2 + 35);
  if (v2 != v3)
  {
    return v3 & (v2 ^ 1u);
  }

  v5 = *(a1 + 33);
  v6 = *(a2 + 33);
  if (v5 != v6)
  {
    return v5 & (v6 ^ 1u);
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7 != v8)
  {
    return v7 < v8;
  }

  v9 = *(*a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
  v10 = *(*a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
  if (v9 != v10)
  {
    return v9 < v10;
  }

  v11 = *(a1 + 8);
  v12 = *(a2 + 8);
  if (v11 == v12)
  {
    return *(a2 + 16) < *(a1 + 16);
  }

  else
  {
    return v12 < v11;
  }
}

uint64_t sub_1DA387B50(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = MEMORY[0x1E69E7CC0];
  v127 = MEMORY[0x1E69E7CC0];
  v126 = MEMORY[0x1E69E7CD0];
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = a2;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = (a3 + 32);
    a4.n128_u64[0] = 136315138;
    v120 = a4;
    v121 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v9[1];
      v124 = *v9;
      v125[0] = v10;
      *(v125 + 14) = *(v9 + 30);
      v11 = v124;
      v12 = *(v124 + 56);
      v13 = *(v124 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
      v14 = *(v124 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
      v15 = *(v124 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
      v128[0] = *(v124 + 48);
      v128[1] = v12;
      v128[2] = v14;
      v128[3] = v15;
      v129 = v13;
      OUTLINED_FUNCTION_9();
      swift_beginAccess();
      v16 = *(v11 + 16);
      v17 = *(v11 + 24);
      v18 = sub_1DA394394();
      if (v18 == a1 && v19 == v7)
      {
        break;
      }

      v23 = sub_1DA394934();
      v24 = v23;
      v28 = OUTLINED_FUNCTION_115(v23, v25, v26, v27);
      OUTLINED_FUNCTION_115(v28, v29, v30, v31);

      if (v24)
      {
        goto LABEL_15;
      }

      v36 = sub_1DA376AD0(v128, v126);
      if (v36)
      {
        sub_1DA37AB7C(v128);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = *(v121 + 16);
          OUTLINED_FUNCTION_10_3();
          sub_1DA377F88();
          v121 = v72;
        }

        v41 = *(v121 + 16);
        v40 = *(v121 + 24);
        if (v41 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_4_5(v40);
          sub_1DA377F88();
          v121 = v73;
        }

        sub_1DA38FECC(&v124);
        *(v121 + 16) = v41 + 1;
        v42 = v121 + 40 * v41;
        v43 = *(v125 + 14);
        v44 = v125[0];
        *(v42 + 32) = v124;
        *(v42 + 48) = v44;
        *(v42 + 62) = v43;
      }

      else
      {
        OUTLINED_FUNCTION_115(v36, v37, v38, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = *(v8 + 16);
          OUTLINED_FUNCTION_10_3();
          sub_1DA377F88();
          v8 = v75;
        }

        v67 = *(v8 + 16);
        v66 = *(v8 + 24);
        if (v67 >= v66 >> 1)
        {
          OUTLINED_FUNCTION_4_5(v66);
          sub_1DA377F88();
          v8 = v76;
        }

        *(v8 + 16) = v67 + 1;
        v68 = v8 + 40 * v67;
        v69 = v124;
        v70 = v125[0];
        *(v68 + 62) = *(v125 + 14);
        *(v68 + 32) = v69;
        *(v68 + 48) = v70;
        v127 = v8;
        sub_1DA378824(&v123, v128);
        sub_1DA38FECC(&v124);
        sub_1DA38FECC(&v124);
      }

      v7 = a2;
LABEL_29:
      v9 = (v9 + 40);
      if (!--v6)
      {
        v5 = v121;
        goto LABEL_31;
      }
    }

    v45 = OUTLINED_FUNCTION_115(v18, v19, v20, v21);
    OUTLINED_FUNCTION_115(v45, v46, v47, v48);

LABEL_15:
    v49 = *(v8 + 16);
    OUTLINED_FUNCTION_115(v32, v33, v34, v35, *&v120);
    if (!swift_isUniquelyReferenced_nonNull_native() || v49 >= *(v8 + 24) >> 1)
    {
      sub_1DA377F88();
      v8 = v50;
    }

    swift_arrayDestroy();
    v51 = *(v8 + 16);
    memmove((v8 + 72), (v8 + 32), 40 * v51);
    *(v8 + 16) = v51 + 1;
    v52 = *(v125 + 14);
    v53 = v125[0];
    *(v8 + 32) = v124;
    *(v8 + 48) = v53;
    *(v8 + 62) = v52;
    v127 = v8;
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v54 = sub_1DA3942F4();
    v55 = OUTLINED_FUNCTION_38_0(v54, qword_1EDCC51C0);
    OUTLINED_FUNCTION_115(v55, v56, v57, v58);
    v59 = sub_1DA3942D4();
    v60 = sub_1DA394584();
    sub_1DA38FECC(&v124);
    if (OUTLINED_FUNCTION_116())
    {
      v61 = OUTLINED_FUNCTION_81();
      v62 = OUTLINED_FUNCTION_74();
      v123 = v62;
      *v61 = v120.n128_u32[0];
      v63 = *(v11 + 16);
      v64 = *(v11 + 24);

      v65 = sub_1DA372AD8(v63, v64, &v123);

      *(v61 + 4) = v65;
      v7 = a2;
      _os_log_impl(&dword_1DA365000, v59, v60, "Found exact match suggestion: %s. It will be ranked first.", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_48();
    }

    sub_1DA378824(&v123, v128);
    sub_1DA38FECC(&v124);
    sub_1DA38FECC(&v124);

    goto LABEL_29;
  }

LABEL_31:

  if (*(v5 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DA36FAE8(v5);
      v5 = v119;
    }

    do
    {
      OUTLINED_FUNCTION_129();
      if (vuzp1_s8(v81, v79).u8[0])
      {
        *(v78 + 69) = v77;
      }

      if (vuzp1_s8(vuzp1_s16(v80, v79), *&v79).i8[1])
      {
        *(v78 + 109) = v77;
      }

      OUTLINED_FUNCTION_128();
      if (vuzp1_s8(v86, *&v84).i8[2])
      {
        *(v83 + 149) = v82;
      }

      if (vuzp1_s8(vuzp1_s16(v84, v85), *&v84).i8[3])
      {
        *(v83 + 189) = v82;
      }

      OUTLINED_FUNCTION_129();
      if (vuzp1_s8(*&v89, v91).i32[1])
      {
        *(v88 + 229) = v87;
      }

      if (vuzp1_s8(*&v89, vuzp1_s16(v90, v89)).i8[5])
      {
        *(v88 + 269) = v87;
      }

      OUTLINED_FUNCTION_128();
      if (vuzp1_s8(*&v94, v96).i8[6])
      {
        *(v93 + 309) = v92;
      }

      if (vuzp1_s8(*&v94, vuzp1_s16(v94, v95)).i8[7])
      {
        *(v93 + 349) = v92;
      }

      OUTLINED_FUNCTION_129();
      if (vuzp1_s8(v101, v99).u8[0])
      {
        *(v98 + 389) = v97;
      }

      if (vuzp1_s8(vuzp1_s16(v100, v99), *&v99).i8[1])
      {
        *(v98 + 429) = v97;
      }

      OUTLINED_FUNCTION_128();
      if (vuzp1_s8(v106, *&v104).i8[2])
      {
        *(v103 + 469) = v102;
      }

      if (vuzp1_s8(vuzp1_s16(v104, v105), *&v104).i8[3])
      {
        *(v103 + 509) = v102;
      }

      OUTLINED_FUNCTION_129();
      if (vuzp1_s8(*&v109, v111).i32[1])
      {
        *(v108 + 549) = v107;
      }

      if (vuzp1_s8(*&v109, vuzp1_s16(v110, v109)).i8[5])
      {
        *(v108 + 589) = v107;
      }

      OUTLINED_FUNCTION_128();
      if (vuzp1_s8(*&v115, v117).i8[6])
      {
        *(v114 + 629) = v113;
      }

      if (vuzp1_s8(*&v115, vuzp1_s16(v115, v116)).i8[7])
      {
        *(v114 + 669) = v113;
      }
    }

    while (v112 != 16);
  }

  sub_1DA3733C4(v5);
  return v127;
}

uint64_t sub_1DA3881A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v7 = *(a1 + 34);
  v8 = *(a1 + 35);
  v9 = *(a1 + 36);
  v10 = *(a1 + 37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD558, &qword_1DA396488);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DA395F90;
  swift_beginAccess();
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 32) = v13;
  *(v11 + 40) = v12;
  v14 = MEMORY[0x1E69E63B0];
  *(v11 + 88) = MEMORY[0x1E69E63B0];
  *(v11 + 64) = v2;
  *(v11 + 120) = v14;
  *(v11 + 96) = v3;
  *(v11 + 152) = v14;
  *(v11 + 128) = v4;
  *(v11 + 184) = &unk_1F55E5770;
  *(v11 + 160) = v5;
  v15 = MEMORY[0x1E69E6370];
  *(v11 + 216) = MEMORY[0x1E69E6370];
  *(v11 + 192) = v6;
  *(v11 + 248) = v15;
  *(v11 + 224) = v7;
  *(v11 + 280) = v15;
  *(v11 + 256) = v8;
  *(v11 + 312) = v15;
  *(v11 + 288) = v9;
  *(v11 + 344) = v15;
  *(v11 + 320) = v10;

  return v11;
}

void sub_1DA3882D8()
{
  OUTLINED_FUNCTION_123();
  v1 = v0;
  v2 = sub_1DA394244();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7();
  v8 = *__swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  if (sub_1DA376884())
  {
  }

  else
  {
    v9 = objc_opt_self();
    OUTLINED_FUNCTION_8_1();
    v10 = sub_1DA394374();
    v11 = v1[28];
    __swift_project_boxed_opaque_existential_1(v1 + 24, v1[27]);
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_86();
    v14(v13, v11);
    v15 = sub_1DA394374();

    v16 = [v9 filterProfanity:v10 locale:v15];

    sub_1DA394384();
    OUTLINED_FUNCTION_28_0();
    sub_1DA394224();
    sub_1DA394234();
    v17 = *(v5 + 8);
    v18 = OUTLINED_FUNCTION_103();
    v19(v18);
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v20 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v20, qword_1EDCC51C0);

    v21 = sub_1DA3942D4();
    sub_1DA394584();
    OUTLINED_FUNCTION_138();

    if (OUTLINED_FUNCTION_124())
    {
      v22 = OUTLINED_FUNCTION_83();
      v30 = OUTLINED_FUNCTION_89();
      *v22 = 136315394;
      *(v22 + 4) = sub_1DA372AD8(0xD000000000000018, 0x80000001DA397890, &v30);
      *(v22 + 12) = 2080;
      v23 = OUTLINED_FUNCTION_8_1();
      *(v22 + 14) = sub_1DA372AD8(v23, v24, v25);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v26, v27, v28, v29, v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_54();
    }
  }

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_91();
}

BOOL sub_1DA38856C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v11 = sub_1DA394774();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v6;
          v9 = v15 + v5;
          v11 = *(v15 + v5);
          if (*(v15 + v5) < 0)
          {
            switch(__clz(v11 ^ 0xFF))
            {
              case 0x1Au:
LABEL_22:
                v11 = v9[1] & 0x3F | ((v11 & 0x1F) << 6);
                v12 = 2;
                break;
              case 0x1Bu:
LABEL_23:
                v11 = ((v11 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
                v12 = 3;
                break;
              case 0x1Cu:
LABEL_24:
                v11 = ((v11 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
                v12 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v8 = v7;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = sub_1DA3947B4();
          }

          v9 = (v8 + v5);
          v10 = *(v8 + v5);
          v11 = *(v8 + v5);
          if (v10 < 0)
          {
            switch(__clz(v11 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_22;
              case 0x1Bu:
                goto LABEL_23;
              case 0x1Cu:
                goto LABEL_24;
              default:
                break;
            }
          }
        }

LABEL_14:
        v12 = 1;
      }

LABEL_15:
      v14 = v11 > 0x7F;
      result = v11 > 0x7F;
      v5 += v12;
      v14 = !v14 && v5 < v2;
      if (!v14)
      {
        return result;
      }
    }
  }

  return 0;
}